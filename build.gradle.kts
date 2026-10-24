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

val antlrTool = configurations.create("antlrTool") {
    isTransitive = false
}

dependencies {
    mps(libs.mps)
    jbr(libs.jbr)
    add(antlrTool.name, "org.antlr:antlr4:${libs.versions.antlr.get()}:complete")
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

val compileRascalBridgePlugin = tasks.register<JavaCompile>("compileRascalBridgePlugin") {
    group = "build"
    description = "Compiles the MPS Tools-menu plugin for the Rascal and ANTLR bridges."
    source(fileTree("mps-plugin/src/main/java") { include("**/*.java") })
    classpath = files(mpsDefaults.mpsHome.map { home ->
        fileTree(home.asFile) { include("lib/*.jar", "plugins/**/*.jar") }
    })
    destinationDirectory.set(layout.buildDirectory.dir("rascal-bridge-plugin/classes"))
    sourceCompatibility = "21"
    targetCompatibility = "21"
    options.release.set(21)
    options.encoding = "UTF-8"
}

val rascalBridgePluginJar = tasks.register<Jar>("rascalBridgePluginJar") {
    dependsOn(compileRascalBridgePlugin)
    archiveFileName.set("metabnf-rascal-bridge.jar")
    destinationDirectory.set(layout.buildDirectory.dir("rascal-bridge-plugin"))
    from(compileRascalBridgePlugin)
}

val smokeTest = registerMpsAnt("smokeTest", "smoke", "mps-smoke")
smokeTest.configure {
    group = "verification"
    description = "Regenerates Demo using the README actions and checks imports, references, and compilation."
    mustRunAfter(buildLanguages)
}

val prepareAntlr = tasks.register<Sync>("prepareAntlr") {
    from(antlrTool)
    into(layout.buildDirectory.dir("antlr"))
}

smokeTest.configure {
    dependsOn(prepareAntlr)
    pathProperties.put("antlr.jar", layout.buildDirectory.file(
        "antlr/antlr4-${libs.versions.antlr.get()}-complete.jar"
    ).map { it.asFile })
}

val antlrBridgeTest = tasks.register<Exec>("antlrBridgeTest") {
    dependsOn(prepareAntlr)
    group = "verification"
    description = "Tests ANTLR grammar import and interpreted source-to-MPS mapping."
    workingDir(projectDir)
    commandLine(
        providers.gradleProperty("pythonExecutable").getOrElse(
            if (System.getProperty("os.name").startsWith("Windows")) "python" else "python3"
        ),
        "-m", "unittest", "discover", "-s", "antlr-bridge", "-p", "test_*.py", "-v"
    )
    environment("ANTLR_JAR", layout.buildDirectory.file(
        "antlr/antlr4-${libs.versions.antlr.get()}-complete.jar"
    ).get().asFile.absolutePath)
    environment("JAVA_HOME", System.getProperty("java.home"))
}

val rascalBridgeTest = tasks.register<Exec>("rascalBridgeTest") {
    group = "verification"
    description = "Tests the shared grammar and AST-to-MPS bridge converters."
    workingDir(projectDir)
    commandLine(
        providers.gradleProperty("pythonExecutable").getOrElse(
            if (System.getProperty("os.name").startsWith("Windows")) "python" else "python3"
        ),
        "-m", "unittest", "discover", "-s", "rascal-bridge", "-p", "test_*.py", "-v"
    )
}

val packageLanguages = tasks.register<Zip>("packageLanguages") {
    dependsOn(buildLanguages, rascalBridgePluginJar)
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
    into("plugins/metabnf-rascal-bridge") {
        from("mps-plugin/src/main/resources")
        from(rascalBridgePluginJar) {
            into("lib")
        }
        from("LICENSE")
        from("rascal-bridge/README.md")
        into("rascal-bridge") {
            from("rascal-bridge") {
                include("*.py", "src/**/*.rsc", "README.md")
                exclude("test.py", "test_*.py")
            }
        }
        into("antlr-bridge") {
            from("antlr-bridge") {
                include("bridge.py", "src/AntlrBridge.java", "README.md")
            }
        }
        from("languages/mbnf/sandbox/models/Demo.mps") {
            into("templates")
        }
        from("languages/mbnf/sandbox/models/mbnf/python.mps") {
            into("templates")
            rename { "python.mps" }
        }
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

val verifyParserBridgeDistribution = tasks.register<Exec>("verifyParserBridgeDistribution") {
    dependsOn(packageLanguages, prepareAntlr)
    group = "verification"
    description = "Exercises ANTLR imports using only the packaged bridge resources."
    workingDir(projectDir)
    commandLine(
        providers.gradleProperty("pythonExecutable").getOrElse(
            if (System.getProperty("os.name").startsWith("Windows")) "python" else "python3"
        ),
        "tests/antlr-bridge/check_distribution.py",
        packageLanguages.get().archiveFile.get().asFile.absolutePath,
        layout.buildDirectory.file(
            "antlr/antlr4-${libs.versions.antlr.get()}-complete.jar"
        ).get().asFile.absolutePath
    )
    environment("JAVA_HOME", System.getProperty("java.home"))
}

tasks.assemble {
    dependsOn(packageLanguages)
}

tasks.check {
    dependsOn(smokeTest, compileRascalBridgePlugin, antlrBridgeTest, rascalBridgeTest,
        verifyParserBridgeDistribution)
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
