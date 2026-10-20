import com.specificlanguages.mps.RunAnt

plugins {
    alias(libs.plugins.mps)
    `maven-publish`
}

group = "com.dslfoundry"
version = providers.gradleProperty("releaseVersion").orElse(
    providers.environmentVariable("GITHUB_RUN_ID").map {
        "${libs.versions.mps.get()}-build.$it.${providers.environmentVariable("GITHUB_RUN_ATTEMPT").getOrElse("1")}"
    }
).getOrElse("${libs.versions.mps.get()}-SNAPSHOT")

repositories {
    maven("https://artifacts.itemis.cloud/repository/maven-mps")
    mavenCentral()
}

dependencies {
    mps(libs.mps)
    jbr(libs.jbr)
}

dependencyLocking {
    lockAllConfigurations()
}

providers.gradleProperty("mpsHomeDir").orNull?.let {
    mpsDefaults.mpsHome = layout.projectDirectory.dir(it)
}

fun registerMpsAnt(name: String, target: String, directory: String) =
    tasks.register<RunAnt>(name) {
        buildFile = layout.projectDirectory.file("tests/smoke/build.xml")
        targets = listOf(target)
        classpath.setFrom(mpsDefaults.mpsHome.map { home ->
            files(
                home.dir("lib").asFileTree.matching { include("*.jar") },
                home.dir("lib/ant/lib").asFileTree.matching { include("*.jar") }
            )
        })
        workingDirectory = layout.buildDirectory.dir(directory)
        preserveWorkingDirectory = false
        pathProperties.put("smoke.dir", workingDirectory.asFile)
    }

val buildLanguages = registerMpsAnt("buildLanguages", "build-project", "mps-build")
buildLanguages.configure {
    group = "build"
    description = "Builds all checked-in languages and solutions in an isolated source copy."
}

val smokeTest = registerMpsAnt("smokeTest", "smoke", "mps-smoke")
smokeTest.configure {
    group = "verification"
    description = "Regenerates Demo using the README actions and checks imports, references, and compilation."
    mustRunAfter(buildLanguages)
}

val packageLanguages = tasks.register<Zip>("packageLanguages") {
    dependsOn(buildLanguages)
    group = "distribution"
    description = "Packages the compiled MetaBNF languages and generation plan as an MPS module library."
    archiveBaseName = "metabnf"
    destinationDirectory = layout.buildDirectory.dir("distributions")
    isPreserveFileTimestamps = false
    isReproducibleFileOrder = true
    into("metabnf") {
        from(layout.buildDirectory.dir("mps-build/project")) {
            include("languages/mbnf/mbnf.mpl", "languages/mbnf/languageModels/**")
            include("languages/mbnf/classes_gen/**", "languages/mbnf/generator/**")
            include("languages/metabnf.aspectgen/**", "solutions/GenPlan/**")
            exclude("**/source_gen/**", "**/source_gen.caches/**")
        }
        from("README.md", "LICENSE")
    }
    doFirst {
        check(layout.buildDirectory.file(
            "mps-build/project/languages/mbnf/classes_gen/metabnf/structure/StructureAspectDescriptor.class"
        ).get().asFile.isFile) { "The compiled MetaBNF structure descriptor is missing" }
    }
}

tasks.named("zip") {
    enabled = false
}

tasks.assemble {
    dependsOn(packageLanguages)
}

tasks.check {
    dependsOn(smokeTest)
}

tasks.wrapper {
    gradleVersion = "9.7.1"
    distributionType = Wrapper.DistributionType.BIN
    distributionSha256Sum = "acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a"
}

publishing {
    publications {
        create<MavenPublication>("metabnf") {
            artifactId = "metabnf"
            artifact(packageLanguages)
            pom {
                name = "MetaBNF"
                description = "Compiled MetaBNF MPS languages and generation plan for MPS ${libs.versions.mps.get()}"
                url = "https://github.com/DSLFoundry/mps-metabnf"
                licenses {
                    license {
                        name = "Apache-2.0"
                        url = "https://www.apache.org/licenses/LICENSE-2.0"
                    }
                }
            }
        }
    }
    repositories {
        maven {
            name = "GitHubPackages"
            url = uri("https://maven.pkg.github.com/${providers.environmentVariable("GITHUB_REPOSITORY").getOrElse("DSLFoundry/mps-metabnf")}")
            credentials {
                username = providers.environmentVariable("GITHUB_ACTOR").orNull
                password = providers.environmentVariable("GITHUB_TOKEN").orNull
            }
        }
    }
}

tasks.withType<PublishToMavenRepository>().configureEach {
    dependsOn(tasks.check)
}
