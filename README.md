# MetaBNF for JetBrains MPS
Grammar-based MPS-language specification and generation
This version of MetaBNF works on MPS 2026.1

# Rationale
This language tries to achieve similar results as [Ingrid](https://github.com/premun/ingrid) (see also [Ingrid-CS](https://github.com/vaclav/MPS_CSharp) for a DSL that has been accelerated using ingrid). The design principle of MetaBNF is different. Where ingrid translates a BNF grammar straightforward to an MPS DSL, MetaBNF has the goal to adorn/decorate (a possibly imported) BNF grammar with hints that will increase usability of a resulting MPS DSL that is generated based on the grammar.

In the meantime, another MPS project named MetaBNF appeared: [MetaBNF by Porsche](https://github.com/porscheofficial/MetaBNF). The approach of Porsche's project is similar to this project, but with a smaller scope, focused on editors, not on parsing. The developer was contacted on the MPS Slack to discuss opportunities to work together or to merge, but no response so far.

# Current status
The current status of MetaBNF is: it works for basic cases, but is not yet feature-complete w.r.t. editor usability. There are no industrial or large-scale applications yet that have battle tested it.

An initial, tested Rascal/ANTLR bridge milestone is implemented, with command-line workflows and native Tools actions in the existing MetaBNF language. The Rascal bridge imports a supported subset of Rascal grammars into MetaBNF, generates Rascal parsers from MetaBNF grammars, and supports mapped source/model round trips. The ANTLR bridge uses ANTLR's native Tool API to import a supported subset of combined ANTLR 4 grammars, and its interpreters to parse source text. Both can map parsed text into an existing MPS language using an explicit AST mapping. These are prototype, subset-based bridges, not general-purpose importers for arbitrary grammars; automatic mapping inference and AST cross-reference resolution remain open.

[Import grammar files directly in MPS](docs/importing-grammars.md) with **Tools > Import Grammar into MetaBNF...**, or the dedicated ANTLR/Rascal entries. MetaBNF bundles the tools, runs them with Java, and creates native MPS nodes: no Python, separately supplied parser JAR, or IDE-plugin installation is required for grammar import. Optional legacy source-model/export workflows still use Python.

The [typed usability annotations](docs/usability-annotations.md) provide native intent with provenance, suppression and structured diagnostics. [Profiles and enrichment](docs/profiles-and-enrichment.md) add previewable pattern recognition, conservative reimport metadata transfer, projection-scoped capability selection and native Inspector explanations. These remain metadata-only: interactive backend generation and AST lowering are later steps; Grammar Cells is explicitly blocked pending MPS 2026.1 compatibility verification.

# User documentation

Start at the [user documentation index](docs/README.md).

| Guide | Contents |
| --- | --- |
| [MetaBNF basics and all actions](docs/metabnf-base.md) | Setup, grammar authoring, decoration, language generation, every Tools action, legacy limitations and troubleshooting |
| [ANTLR and Rascal grammar import](docs/importing-grammars.md) | Java-only import, bundled tools, target models and supported subsets |
| [Usability annotations](docs/usability-annotations.md) | Projectional authoring, provenance, suppression and native inspection APIs |
| [Profiles and enrichment](docs/profiles-and-enrichment.md) | Pattern previews, reimport decisions, projection choices and backend requirements |

# Where this could go
The initial Rascal and ANTLR bridges provide a working foundation, but the broader usability and interoperability goals remain open. Here are some research/extension ideas:
- Extend the [Rascal bridge](rascal-bridge/README.md) beyond its current grammar subset and improve its integration with MPS (building on work such as [rascal-mps](https://github.com/cwi-swat/rascal-mps))
- PX/MX/UX improvements to find good ways to improve usability of text-based languages. Some research was done in this direction, and there is a body of [MPS Extensions](https://github.com/jetbrains/mps-extensions) (e.g. grammar cells, widgets, etc.) that can be used to improve the programming/modeling/usage experience for text-based languages bridged to/from MPS.
- Extend the [ANTLR bridge](antlr-bridge/README.md) beyond its current combined-grammar subset, evaluate representative grammars from [ANTLR grammars-v4](https://github.com/antlr/grammars-v4), and investigate how much mapping and synchronization can be automated. Relate these findings to the Ingrid research mentioned above; broad compatibility with existing ANTLR grammars is not yet established.
- Use MetBNF in combination with textual language workbenches (Rascal, MontiCore, Spoofax, etc.) to investigate/research a formal relation between object grammars (which would be the closest formalism to describe what MPS does) with grammars.
- Develop the Rascal and ANTLR prototypes into a library of maintainable connectors between projectional and textual languages, with broader grammar coverage, AST cross-reference handling, and real-world compatibility examples. Investigate integration with [LionWeb](https://github.com/LionWeb-io/); this is not implemented by the current bridges. Related research includes [Projecting Textual Languages](https://ir.cwi.nl/pub/32463), [Structured Editing for All](https://dl.acm.org/doi/full/10.1145/3544548.3580785#bibliography), and [Rascal-MPS experiments with AI-assisted textual projections](https://github.com/cwi-swat/rascal-mps/tree/AI).

# How to contribute
Any kind of contribution or improvement would be helpful. To give a few ideas:
- Bug report
- Documentation
- Add more to this README on existing work that could connect to this in a useful fashion
- Write an issue if you are someone from academia, industry (or otherwise) and think you can contribute somehow. Research on this topic exists and more is very interesting, but a practical consolidation of this research has not happened too much yet, while it is a very enabling technology for bridging text and projectional/UI based modeling languages.
- Make a pull request if you want to contribute fixes, features, or other types of ideas.

# How to build
The MetaBNF languages have no third-party plugin dependencies, so they can be used with [vanilla MPS](https://www.jetbrains.com/mps/download/?section=linux) (see the top of this README for the version to install). Parser actions belong to the existing `metabnf` language, not a separately installed IDE plugin. MetaBNF code remains Apache-2.0; bundled dependencies retain their own licenses, notices and corresponding sources as described in [third-party/README.md](third-party/README.md).

For IDE development, run `.\gradlew.bat prepareParserBridge` first to prepare the Java adapter and bundled tools inside `languages\mbnf\parser-bridge`. Then open the existing MPS project and rebuild `metabnf`, `metabnf.aspectgen`, and `GenPlan`. No copy into MPS's plugins directory is necessary. Setup, migration and troubleshooting details are in the [core user guide](docs/metabnf-base.md).

## Gradle build and automated smoke test

Install a JDK 25 to run the Gradle wrapper. Gradle resolves MPS 2026.1.1 and its matching JetBrains Runtime automatically; you do not need a separately installed MPS or Ant for command-line builds. Versions are pinned in `gradle/libs.versions.toml`, dependency locks, and the checksum-verified Gradle wrapper.

On Windows:

```powershell
.\gradlew.bat build
```

On Linux, use `./gradlew build` (or `xvfb-run --auto-servernum ./gradlew build` on a machine without a display). `build` compiles all languages and solutions, packages the parser tools and legal/source material, runs legacy bridge tests and clean Demo generation/import smoke tests, checks native ANTLR/Rascal grammar imports, and runs both bundled tools from the extracted ZIP. Python 3.10+ is required for the legacy bridge regressions; `-PpythonExecutable=...` overrides their interpreter. `assemble` and `verifyBundledGrammarTools` build/package and exercise the new grammar tools using Java only. `smokeTest` also covers the existing Python-based source-model workflows.

The build and test use separate source copies under `build/mps-build` and `build/mps-smoke`, with isolated MPS settings, caches, and logs. They do not change your source models or IDE settings; dependency preparation populates the ignored `languages/mbnf/parser-bridge` runtime directory. Each task starts afresh; its artifacts remain available until the next run or `clean`. The smoke test verifies native Tools registration without an installed IDE plugin, builds the core languages, checks the source grammar with MPS's native constraint checker, empties Demo's structure/editor/textGen in the copy, rebuilds the grammar twice, and executes **Import Generated Language** followed by **Import Remaining Language Aspects** on the final transient model.

It requires the 14 expected structure declarations, eight editors, eight text generators, and resolved references that survive removal of all transient models, then compiles the regenerated Demo language. It also rejects transient model imports, module dependencies, and dependency-version entries. The test injects stale transient entries into the temporary target to verify their detection and cleanup by the import actions. A failed assertion or build returns a nonzero exit code.

For local development, `-PmpsHomeDir=C:\path\to\MPS` selects an existing MPS installation instead of downloading MPS; the matching pinned JBR is still resolved by Gradle. To update dependencies deliberately, edit the version catalog and run `build --write-locks`.

### CI and published artifacts

GitHub Actions builds and smoketests on Linux and Windows for pull requests and development branches, uploading the compiled module ZIP and diagnostics. Pushes to `main` run the same build and smoke test on Linux, publish `com.dslfoundry:metabnf:<version>@zip` to GitHub Packages, and attach the ZIP to a GitHub prerelease. CI versions include the run ID and attempt so retries do not overwrite existing packages. Publishing uses the repository's built-in `GITHUB_TOKEN`; no personal token, reviewer assignment, or approval environment is required.

The ZIP under `build/distributions` contains one compiled MPS module library under `metabnf/`. The existing language's `languages/mbnf/parser-bridge/` directory carries the Java adapter, ANTLR/Rascal tools and offline legal/source materials. Add the complete library to MPS 2026.1; there is no IDE plugin to install. The bundled materials deliberately increase archive size. Locally, `publishToMavenLocal` installs the ZIP and POM into your Maven repository; remote `publish` requires `GITHUB_ACTOR` and `GITHUB_TOKEN`. Use `-PreleaseVersion=...` to set a deliberate publication version.

# History
MetaBNF started as an idea on 30 October 2013 in the evening when @klemensschindler, @RemiBosman, and @eugenschindler were thinking about a way to interface projectional languages like the ones built in JetBrains MPS with textual languages that typically have a grammer describing them. On the same date and the evening after (1 November), @klemensschindler created a mockup language for writing BNF grammars in MPS, which we called mps-compiler-toolkit.

On 26 August 2015, @eugenschindler created the project in which to develop MetaBNF here on DSLFoundry and on 2 September 2015, @RemiBosman implemented a first working - albeit very basic - version of MetaBNF. In the following two and a half months, @RemiBosman gave much more body to MetaBNF and in the years after, until mid 2018, he kept it migrated and used a few real-world testcases on the prototypical tool, most notably the languages Python (shipped with this repository) and Ada (not yet opensourced). Unfortunately, he died in 2018.

In September 2025, @eugenschindler has started modernizing the plugin and it is now again a somewhat usable - if not yet very well stabilized - base for further development, research, and (for now) prototypical use.
