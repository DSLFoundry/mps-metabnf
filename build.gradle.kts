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
    maven("https://releases.usethesource.io/maven")
}

val antlrTool = configurations.create("antlrTool") {
    isTransitive = false
}

val parserLegalArtifacts = configurations.create("parserLegalArtifacts") {
    isTransitive = false
}
val parserComponents = file("third-party/parser-components.tsv").readLines()
    .filter { it.isNotBlank() && !it.startsWith("#") }.map { it.substringBefore('|') }

dependencies {
    mps(libs.mps)
    jbr(libs.jbr)
    add(antlrTool.name, "org.antlr:antlr4:${libs.versions.antlr.get()}:complete")
    parserComponents.forEach {
        add(parserLegalArtifacts.name, "$it@jar")
        if (!it.startsWith("org.rascalmpl:typepal:")) add(parserLegalArtifacts.name, "$it:sources@jar")
    }
}

val prepareRascal = tasks.register("prepareRascal") {
    val directory = layout.buildDirectory.dir("rascal")
    val artifacts = mapOf(
        "rascal-0.43.0.jar" to "810a01fa9bac9eab81cfd8f4a077bba0285e5ce1c2b860817229b3c78ebea24d",
        "rascal-0.43.0-sources.jar" to "dc1e058093d8247bd2704af73cf967b8e1ba20f654837d7a8d17a25dde8461b6"
    )
    outputs.files(artifacts.keys.map { directory.map { dir -> dir.file(it) } })
    doLast {
        artifacts.forEach { (name, expected) ->
            val destination = directory.get().file(name).asFile
            destination.parentFile.mkdirs()
            if (!destination.exists()) {
                val temporary = java.io.File(destination.parentFile, "$name.download")
                try {
                    java.net.URI("https://github.com/usethesource/rascal/releases/download/v0.43.0/$name")
                        .toURL().openStream().use { input -> temporary.outputStream().use { input.copyTo(it) } }
                    temporary.copyTo(destination, overwrite = true)
                } finally { temporary.delete() }
            }
            val actual = java.security.MessageDigest.getInstance("SHA-256")
                .digest(destination.readBytes()).joinToString("") { "%02x".format(it) }
            check(actual == expected) { "Checksum mismatch for $name; remove the invalid cached artifact and retry" }
        }
    }
}

val compileAntlrTool = tasks.register<JavaCompile>("compileAntlrTool") {
    source("antlr-bridge/src/AntlrBridge.java")
    classpath = antlrTool
    options.release.set(21)
    sourceCompatibility = "21"
    targetCompatibility = "21"
    destinationDirectory.set(layout.buildDirectory.dir("parser-tools/antlr-classes"))
}
val antlrToolJar = tasks.register<Jar>("antlrToolJar") {
    from(compileAntlrTool)
    archiveFileName.set("antlr-bridge.jar")
    destinationDirectory.set(layout.buildDirectory.dir("parser-tools"))
}
val stageParserTools = tasks.register<Sync>("stageParserTools") {
    dependsOn(prepareRascal, antlrToolJar)
    doFirst {
        val actual = java.security.MessageDigest.getInstance("SHA-256").digest(antlrTool.singleFile.readBytes())
            .joinToString("") { "%02x".format(it) }
        check(actual == "eae2dfa119a64327444672aff63e9ec35a20180dc5b8090b7a6ab85125df4d76") {
            "ANTLR complete JAR checksum changed; review the tool and its third-party materials"
        }
    }
    into(layout.buildDirectory.dir("parser-tools/plugin"))
    into("tools/antlr") {
        from(antlrTool)
        from(antlrToolJar)
    }
    into("tools/rascal") {
        from(layout.buildDirectory.file("rascal/rascal-0.43.0.jar"))
        from("rascal-bridge") { include("src/**/*.rsc", "META-INF/RASCAL.MF") }
    }
}
val downloadParserLicenses = tasks.register("downloadParserLicenses") {
    inputs.file("third-party/license-resources.tsv")
    inputs.dir("third-party/licenses")
    outputs.dir(layout.buildDirectory.dir("parser-tools/upstream-licenses"))
    doLast {
        file("third-party/license-resources.tsv").readLines()
            .filter { it.isNotBlank() && !it.startsWith("#") }.forEach { line ->
                val (name, expected, url) = line.split('|')
                val destination = layout.buildDirectory.file("parser-tools/upstream-licenses/$name").get().asFile
                destination.parentFile.mkdirs()
                val retained = file("third-party/licenses/$name")
                if (retained.exists()) {
                    retained.copyTo(destination, overwrite = true)
                } else if (!destination.exists()) {
                    java.net.URI(url).toURL().openStream().use { input ->
                        destination.outputStream().use { input.copyTo(it) }
                    }
                }
                val actual = java.security.MessageDigest.getInstance("SHA-256")
                    .digest(destination.readBytes()).joinToString("") { "%02x".format(it) }
                check(actual == expected) { "License content changed: $name; review upstream before redistributing" }
            }
    }
}
val prepareParserLegal = tasks.register<Sync>("prepareParserLegal") {
    dependsOn(prepareRascal, downloadParserLicenses)
    into(layout.buildDirectory.dir("parser-tools/legal"))
    from("third-party") { exclude("licenses/**") }
    from("LICENSE") { rename { "MetaBNF-LICENSE" } }
    from(downloadParserLicenses) { into("licenses") }
    from(parserLegalArtifacts) { into("reference-artifacts") }
    from(layout.buildDirectory.file("rascal/rascal-0.43.0-sources.jar")) { into("sources") }
    // Preserve notices with their original paths and component identity, not a lossy merged license.
    parserLegalArtifacts.forEach { artifact ->
        from(zipTree(artifact)) {
            include("**/*LICENSE*", "**/*license*", "**/*NOTICE*", "**/*notice*", "**/*COPYING*", "**/*copyright*",
                "**/pom.xml", "**/pom.properties")
            into("notices/${artifact.name}")
        }
    }
    from(zipTree(layout.buildDirectory.file("rascal/rascal-0.43.0.jar"))) {
        include("**/*LICENSE*", "**/*license*", "**/*NOTICE*", "**/*notice*")
        into("notices/rascal-0.43.0.jar")
    }
    doLast {
        // Some upstream JARs omit separate licenses but retain complete source headers.
        parserLegalArtifacts.filter { it.name.endsWith("-sources.jar") }.forEach { artifact ->
            val headers = linkedSetOf<String>()
            java.util.zip.ZipFile(artifact).use { zip ->
                zip.entries().asSequence().filter { it.name.endsWith(".java") }.forEach { entry ->
                    val source = zip.getInputStream(entry).bufferedReader().use { it.readText() }.trimStart()
                    val end = source.indexOf("*/")
                    if (source.startsWith("/*") && end >= 0) {
                        val header = source.substring(0, end + 2)
                        if (header.contains("copyright", ignoreCase = true)) headers.add(header)
                    }
                }
            }
            if (headers.isNotEmpty()) {
                val output = destinationDir.resolve("source-headers/${artifact.name}.txt")
                output.parentFile.mkdirs()
                output.writeText(headers.joinToString("\n\n"))
            }
        }
    }
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
    description = "Compiles the Java adapter used by MetaBNF's native parser actions."
    source(fileTree("mps-plugin/src/main/java") { include("**/*.java") })
    classpath = files(mpsDefaults.mpsHome.map { home ->
        // Embedded compiler distributions contain IntelliJ classes that must not shadow the platform API.
        files(
            home.dir("lib").asFileTree.matching { include("*.jar") },
            home.dir("plugins").asFileTree.matching { include("*/lib/*.jar") }
        )
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

val prepareParserBridge = tasks.register<Sync>("prepareParserBridge") {
    dependsOn(rascalBridgePluginJar, stageParserTools, prepareParserLegal)
    group = "build setup"
    description = "Prepares Java parser dependencies inside the existing MetaBNF language module; no IDE plugin installation."
    into("languages/mbnf/parser-bridge")
    from(rascalBridgePluginJar) { into("lib") }
    from(stageParserTools)
    from(prepareParserLegal) { into("third-party") }
    from("LICENSE", "mps-plugin/README.md")
    into("docs") { from("docs") }
    into("rascal-bridge") {
        from("rascal-bridge") {
            include("*.py", "src/**/*.rsc", "README.md")
            exclude("test.py", "test_*.py")
        }
    }
    into("antlr-bridge") {
        from("antlr-bridge") { include("bridge.py", "src/AntlrBridge.java", "README.md") }
    }
    into("templates") {
        from("languages/mbnf/sandbox/models/Demo.mps")
        from("languages/mbnf/sandbox/models/mbnf/python.mps") { rename { "python.mps" } }
    }
}
buildLanguages.configure { dependsOn(prepareParserBridge) }

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
    dependsOn(prepareAntlr, prepareParserBridge)
    timeout.set(java.time.Duration.ofMinutes(15))
    pathProperties.put("antlr.jar", layout.buildDirectory.file(
        "antlr/antlr4-${libs.versions.antlr.get()}-complete.jar"
    ).map { it.asFile })
    doLast {
        val reports = layout.buildDirectory.dir("mps-smoke/editor-reports").get().asFile
        val factory = javax.xml.parsers.DocumentBuilderFactory.newInstance()
        factory.setFeature("http://apache.org/xml/features/disallow-doctype-decl", true)
        val cases = fileTree(reports).matching { include("TEST-*.xml") }.files.flatMap { report ->
            val document = factory.newDocumentBuilder().parse(report)
            val nodes = document.getElementsByTagName("testcase")
            (0 until nodes.length).map { index ->
                val element = nodes.item(index) as org.w3c.dom.Element
                check(element.getElementsByTagName("failure").length == 0 &&
                    element.getElementsByTagName("error").length == 0 &&
                    element.getElementsByTagName("skipped").length == 0) {
                    "Editor test failed or skipped: ${element.getAttribute("classname")} (${report.name})"
                }
                element.getAttribute("classname") + "." + element.getAttribute("name")
            }
        }
        val expected = setOf(
            "NumberTyping", "NumberDeletion", "NumberUndo",
            "BlockEmptyListTyping", "BlockSeparatorInsertion", "BlockNestedEmptyListTyping",
            "BlockLastStatementRemoval", "BlockLastStatementRemovalUndo", "BlockEndBoundaryInsertion",
            "FlagTyping", "FlagDeletion", "FlagUndo", "FlagFormToggle",
            "FlagCompletion", "FlagContextRemoval",
            "GroupTrigger", "GroupTriggerUndo", "GroupEmptyRemoval",
            "GroupPopulatedRemovalRequiresApproval", "GroupPopulatedRemoval",
            "GroupPopulatedRemovalUndo",
            "ExpressionOperandInsertion", "ExpressionLeftOperandInsertion", "ExpressionInsertionGrouping",
            "ExpressionOperatorReplacementGrouping", "ExpressionOperatorReplacementUndo",
            "ExpressionGroupRemoval", "ExpressionGroupRemovalRefused", "ExpressionGroupRemovalUndo"
        ).map {
            "metabnf.editor.tests.interactions.${it}_Test.test_$it()"
        }.toSet() + setOf(
            "reviewedAdoptionPreservesIdentity", "stalePreviewRejectsBeforeMutation",
            "conflictingOwnedEditIsProtected", "extensionSurvivesUpdate", "freshCreationIsStable",
            "ambiguousAdoptionIsBlocked", "legacyConflictIsBlocked", "unavailableProfileIsRejected",
            "nonGrammarSourceIsRejected"
        ).map { "metabnf.editor.tests.regeneration.RegenerationOwnership_Test.test_$it()" } + setOf(
            "mapOrderIndependent", "scalarTypesAreDistinct", "invalidMapKeysAreRejected"
        ).map { "metabnf.editor.tests.regeneration.GenerationFingerprints_Test.test_$it()" } + setOf(
            "implicitFlagRoutes", "autoReleasesExplicitOverride", "copiedOccurrenceUsesSourceTrace",
            "unavailableBackendIsRejected", "unimplementedProjectionIsRejected",
            "existingOptionalChildIsAccepted", "flatRangeNeedsExplicitLowering",
            "mandatoryChildIsNotOptionalStorage", "unapprovedIntentDoesNotLower",
            "actualGeneratedProfileControls", "nativePersistenceRetainsFlagAndEmptyClause",
            "ruleOverridesRemainProjectionLocal", "suppressionCannotHideInvalidAuthoredMetadata",
            "actualGenerationRejectsUnsupportedBackendAndFlatRange"
        ).map { "metabnf.editor.tests.usability.InteractiveGeneration_Test.test_$it()" }
        check(cases.size == expected.size && cases.toSet() == expected) {
            "Unexpected native editor-test inventory: expected $expected, got $cases; see $reports"
        }
        logger.lifecycle("NATIVE: ${cases.size} editor interaction and regeneration tests passed; inventory verified.")
    }
}

tasks.register("editorInteractionTest") {
    group = "verification"
    description = "Runs native editor conformance on generated Demo, then the fresh-generation smoke pipeline."
    dependsOn(smokeTest)
}

tasks.register("regenerationTest") {
    group = "verification"
    description = "Runs native generated-ownership regressions and the fresh-generation smoke pipeline."
    dependsOn(smokeTest)
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
    dependsOn(prepareRascal)
    group = "verification"
    description = "Tests Rascal grammar conversion, source parsing, and the pinned compatibility corpus."
    workingDir(projectDir)
    commandLine(
        providers.gradleProperty("pythonExecutable").getOrElse(
            if (System.getProperty("os.name").startsWith("Windows")) "python" else "python3"
        ),
        "-m", "unittest", "discover", "-s", "rascal-bridge", "-p", "test_*.py", "-v"
    )
    environment("RASCAL_JAR", layout.buildDirectory.file("rascal/rascal-0.43.0.jar").get().asFile.absolutePath)
    environment("JAVA_HOME", System.getProperty("java.home"))
}

val packageLanguages = tasks.register<Zip>("packageLanguages") {
    dependsOn(buildLanguages, rascalBridgePluginJar, stageParserTools, prepareParserLegal)
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
        into("docs") { from("docs") }
        into("antlr-bridge") { from("antlr-bridge/README.md") }
        into("rascal-bridge") { from("rascal-bridge/README.md") }
        into("third-party") { from("third-party/README.md") }
    }
    into("metabnf/languages/mbnf/parser-bridge") { from(prepareParserBridge) }
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

val compilePackagedGrammarToolsTest = tasks.register<JavaCompile>("compilePackagedGrammarToolsTest") {
    source("tests/parser-tools/PackagedGrammarToolsTest.java")
    classpath = files()
    sourceCompatibility = "21"
    targetCompatibility = "21"
    options.release.set(21)
    destinationDirectory.set(layout.buildDirectory.dir("parser-tools/test-classes"))
}
val verifyBundledGrammarTools = tasks.register<JavaExec>("verifyBundledGrammarTools") {
    dependsOn(packageLanguages, compilePackagedGrammarToolsTest)
    group = "verification"
    description = "Runs both bundled grammar tools from the ZIP using Java only and checks license/source materials."
    classpath = files(compilePackagedGrammarToolsTest)
    mainClass.set("PackagedGrammarToolsTest")
    args(packageLanguages.get().archiveFile.get().asFile.absolutePath, file("tests").absolutePath)
}

tasks.assemble {
    dependsOn(packageLanguages)
}

tasks.check {
    dependsOn(smokeTest, compileRascalBridgePlugin, antlrBridgeTest, rascalBridgeTest,
        verifyParserBridgeDistribution, verifyBundledGrammarTools)
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
                description = "Compiled MetaBNF MPS languages and generation plan for MPS ${libs.versions.mps.get()}. " +
                    "MetaBNF code is Apache-2.0; bundled parser tools retain their own licenses, notices and " +
                    "corresponding sources supplied in the language module's parser-bridge/third-party directory."
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
