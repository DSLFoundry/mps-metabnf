# MetaBNF for JetBrains MPS
Grammar-based MPS-language specification and generation
This version of MetaBNF works on MPS 2026.1

# Rationale
This language tries to achieve similar results as [Ingrid](https://github.com/premun/ingrid) (see also [Ingrid-CS](https://github.com/vaclav/MPS_CSharp) for a DSL that has been accelerated using ingrid). The design principle of MetaBNF is different. Where ingrid translates a BNF grammar straightforward to an MPS DSL, MetaBNF has the goal to adorn/decorate (a possibly imported) BNF grammar with hints that will increase usability of a resulting MPS DSL that is generated based on the grammar.

In the meantime, another MPS project named MetaBNF appeared: [MetaBNF by Porsche](https://github.com/porscheofficial/MetaBNF). The approach of Porsche's project is similar to this project, but with a smaller scope, focused on editors, not on parsing. The developer was contacted on the MPS Slack to discuss opportunities to work together or to merge, but no response so far.

# Current status
The current status of MetaBNF is: it works for basic cases, but is not yet feature-complete w.r.t. editor usability. There are no industrial or large-scale applications yet that have battle tested it.

An initial, tested Rascal/ANTLR bridge milestone is implemented, with command-line workflows and an optional MPS Tools-menu plugin. The [Rascal bridge](rascal-bridge/README.md) imports a supported subset of Rascal grammars into MetaBNF, generates Rascal parsers from MetaBNF grammars, and supports mapped source/model round trips. The [ANTLR bridge](antlr-bridge/README.md) uses ANTLR's native Tool API to import a supported subset of combined ANTLR 4 grammars, and its interpreters to parse source text. Both can map parsed text into an existing MPS language using an explicit AST mapping. These are prototype, subset-based bridges, not general-purpose importers for arbitrary grammars; automatic mapping inference and AST cross-reference resolution remain open.

The [typed usability-annotation foundation](docs/usability-annotations.md) provides native flag, list, and optional-group intent with provenance, suppression, structured diagnostics, and shared inspection/editing services. These annotations are metadata only: automatic recognition, profiles, editor backends, and structural lowering are later roadmap steps.

# Where this could go
The initial Rascal and ANTLR bridges provide a working foundation, but the broader usability and interoperability goals remain open. Here are some research/extension ideas:
- Extend the [Rascal bridge](rascal-bridge/README.md) beyond its current grammar subset and improve its integration with MPS (building on work such as [rascal-mps](https://github.com/cwi-swat/rascal-mps))
- PX/MX/UX improvements to find good ways to improve usability of text-based languages. Some research was done in this direction, and there is a body of [MPS Extensions](github.com/jetbrains/mps-extensions) (e.g. grammar cells, widgets, etc.) that can be used to improve the programming/modeling/usage experience for text-based languages bridged to/from MPS.
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
The MetaBNF languages have no third-party plugin dependencies, so they can be used with [vanilla MPS](https://www.jetbrains.com/mps/download/?section=linux) (see the top of this README for the version to install). The optional parser bridge plugin uses Python and a separately supplied Rascal or ANTLR complete JAR; see the [Rascal](rascal-bridge/README.md) and [ANTLR](antlr-bridge/README.md) guides.

Open the MPS project in the MPS IDE and rebuild the `metabnf` and `metabnf.aspectgen` languages and the `GenPlan` solution.

When upgrading an existing checkout, save your work before switching to MPS 2026.1. If MPS reports pending migrations, run **Run Migration Assistant** via **Find Action** (Ctrl+Shift+A), then rebuild the languages.

In case you encounter problems, see the *Troubleshooting* section further below.

## Gradle build and automated smoke test

Install a JDK 25 to run the Gradle wrapper. Gradle resolves MPS 2026.1.1 and its matching JetBrains Runtime automatically; you do not need a separately installed MPS or Ant for command-line builds. Versions are pinned in `gradle/libs.versions.toml`, dependency locks, and the checksum-verified Gradle wrapper.

On Windows:

```powershell
.\gradlew.bat build
```

On Linux, use `./gradlew build` (or `xvfb-run --auto-servernum ./gradlew build` on a machine without a display). `build` compiles all languages and solutions, compiles and packages the optional parser bridge plugin, runs the ANTLR integration tests and clean Demo generation/import smoke test, and checks a freshly imported ANTLR grammar with native MPS constraints. Python 3.10+ is required; `-PpythonExecutable=...` overrides the bridge-test interpreter. To run just the native workflow, use `smokeTest`; to compile and package without the smoke test, use `assemble`.

The build and test use separate source copies under `build/mps-build` and `build/mps-smoke`, with isolated MPS settings, caches, and logs. They do not change your source models, open projects, or IDE settings. Each task starts afresh; its artifacts remain available until the next run or `clean`. The smoke test builds the core languages, checks the source grammar with MPS's native constraint checker, empties Demo's structure/editor/textGen in the copy, rebuilds the grammar twice, and executes **Import Generated Language** followed by **Import Remaining Language Aspects** on the final transient model.

It requires the 14 expected structure declarations, eight editors, eight text generators, and resolved references that survive removal of all transient models, then compiles the regenerated Demo language. It also rejects transient model imports, module dependencies, and dependency-version entries. The test injects stale transient entries into the temporary target to verify their detection and cleanup by the import actions. A failed assertion or build returns a nonzero exit code.

For local development, `-PmpsHomeDir=C:\path\to\MPS` selects an existing MPS installation instead of downloading MPS; the matching pinned JBR is still resolved by Gradle. To update dependencies deliberately, edit the version catalog and run `build --write-locks`.

### CI and published artifacts

GitHub Actions builds and smoketests on Linux and Windows for pull requests and development branches, uploading the compiled module ZIP and diagnostics. Pushes to `main` run the same build and smoke test on Linux, publish `com.dslfoundry:metabnf:<version>@zip` to GitHub Packages, and attach the ZIP to a GitHub prerelease. CI versions include the run ID and attempt so retries do not overwrite existing packages. Publishing uses the repository's built-in `GITHUB_TOKEN`; no personal token, reviewer assignment, or approval environment is required.

The ZIP under `build/distributions` contains the compiled MPS module library under `metabnf/` and the optional IDE plugin under `plugins/metabnf-rascal-bridge/` (the stable plugin ID is unchanged). Add the module library as a project library in MPS 2026.1; install the plugin separately as described in the [Rascal bridge guide](rascal-bridge/README.md). The plugin does not bundle Rascal or ANTLR runtimes. Locally, `publishToMavenLocal` installs the ZIP and POM into your Maven repository; remote `publish` requires `GITHUB_ACTOR` and `GITHUB_TOKEN`. Use `-PreleaseVersion=...` to set a deliberate publication version.

# How to use
- First specify a MetaBNF model (using the MetaBNF language) in a model (see mbnf.sandbox/mbnf/sandbox/Demo model for an example)
- To generate a language from the MetaBNF model:
    - Create a new language in Logical View that has the same name as the `language` field in the MetaBNF model
    - Turn on transient models
    - Build the model containing the MetaBNF specification
    - Put the cursor on the last transient model
    - Tools -> Import Generated Language
    - There are more actions, like:
        - Tools -> Import Remaining Language Aspects
        - Tools -> Import to Module
        - Tools -> Fix Language Aspect Structure

# Troubleshooting
## Workaround in case of MetaBNF language not building
Since newer MPS versions, sometimes the build of a MetaBNF model, when building against a new MPS language to be populated by the MetaBNF model does not work. Then, simply delete all the contents in the structure, editor, and textgen aspects and then try to rebuild the MetaBNF model. It will fail and rebuild again and it will succeed.

An example with Demo for a clean build procedure that is fully reproducible:
 - delete Demo/structure, Demo/editor, and Demo/textgen
 - rebuild mbnf.sandbox/mbnf/sandbox/Demo model --> it fails on "package Demo.structure does not exist"
 - rebuild mbnf.sandbox/mbnf/sandbox/Demo again --> it succeeds
 - select the last transient model (at the bottom of the logical view) mbnf.sandbox@transient.../mbnf.sandbox.Demo@XXX (where XXX is the highest number, something like mbnf.sandbox.Demo@3_3)
 - Tools -> Import Generated Language; now the Demo/structure aspect is populated
 - Tools -> Import Remaining Language Aspects
 - ... etc. (like in the section above on how to use the tool)

# History
MetaBNF started as an idea on 30 October 2013 in the evening when @klemensschindler, @RemiBosman, and @eugenschindler were thinking about a way to interface projectional languages like the ones built in JetBrains MPS with textual languages that typically have a grammer describing them. On the same date and the evening after (1 November), @klemensschindler created a mockup language for writing BNF grammars in MPS, which we called mps-compiler-toolkit.

On 26 August 2015, @eugenschindler created the project in which to develop MetaBNF here on DSLFoundry and on 2 September 2015, @RemiBosman implemented a first working - albeit very basic - version of MetaBNF. In the following two and a half months, @RemiBosman gave much more body to MetaBNF and in the years after, until mid 2018, he kept it migrated and used a few real-world testcases on the prototypical tool, most notably the languages Python (shipped with this repository) and Ada (not yet opensourced). Unfortunately, he died in 2018.

In September 2025, @eugenschindler has started modernizing the plugin and it is now again a somewhat usable - if not yet very well stabilized - base for further development, research, and (for now) prototypical use.
