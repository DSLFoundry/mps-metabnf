# Import ANTLR or Rascal grammar files in MPS

MetaBNF bundles **ANTLR 4.13.2** and **Rascal 0.43.0** inside its language module.
Grammar import uses MPS's Java runtime: **no Python, separate tool download,
external JAR selection, or network access is needed at import time**.
This imports a supported subset, not arbitrary ANTLR/Rascal grammars.

## Install

Use the MPS version pinned in the [build version catalog](../gradle/libs.versions.toml).
Build the distribution with `.\gradlew.bat assemble` on Windows
(`./gradlew assemble` elsewhere), or obtain a published distribution ZIP.
The build downloads the pinned tools and legal/source materials.

For a source checkout, run `.\gradlew.bat prepareParserBridge`, open the
existing MPS project, and rebuild `metabnf`. For a distribution, extract the
ZIP and add its complete `metabnf` directory as an MPS project library.
The actions are native declarations in `metabnf.plugin`: **no separately
installed IDE plugin or second MPS project is needed**.

Keep `languages\mbnf\parser-bridge` with the language module. It contains
`lib`, `tools`, and `third-party`; copying just the adapter JAR is insufficient.
The separate Java subprocesses isolate parser dependencies from the IDE.
See [setup and missing-menu troubleshooting](metabnf-base.md#setup).

## Import

1. In Logical View, create an editable model inside a project solution
   (**New > Model**). The target must not already contain a MetaBNF grammar.
2. Choose **Tools > Import Grammar into MetaBNF...**.
3. Select **ANTLR** (`.g4`) or **Rascal** (`.rsc`), then choose the grammar file.
   For ANTLR, enter its parser start rule, for example `program`. Rascal uses
   the module's declared start sort.
   Alternatively choose **Tools > Import ANTLR Grammar into MetaBNF...** or
   **Tools > Import Rascal Grammar into MetaBNF...** to skip the format chooser.
4. Select the target model and a simple generated-language name, for example
   `Mini`. The importer creates and saves native MPS nodes in that model,
   using native language imports and references; it does not write `.mps` XML.
5. Review the optional [enrichment preview](profiles-and-enrichment.md). **OK**
   attaches inferred decorations and reviewable suggestions; **Cancel** keeps
   the imported grammar without enrichment. The same operation is available
   later through **Tools > Analyze and Enrich Grammar...**.
6. Open the target in Logical View and review/check the grammar. Import does
   **not** generate a language or infer
   source-to-AST mappings. For generation, follow the core guide's
   [language generation instructions](metabnf-base.md#generate-an-mps-language).

Other target roots are preserved. An existing grammar is never replaced.
For reimport, use a fresh model and the conservative
[metadata-transfer workflow](profiles-and-enrichment.md#reimport-without-guessing-correspondence).
Parsing/validation happen before the target is mutated; unsupported constructs
produce an error instead of an approximation. Native creation/save failures
can leave partial changes: inspect the target before retrying, as indicated
by the error dialog. Cancel the background task to stop parsing; tools also
have a five-minute execution limit.

For a first ANTLR example use `tests\antlr-bridge\Mini.g4`, start rule `program`.
For Rascal use `tests\rascal-bridge\hello-grammar.rsc`. Fixture paths are relative
to a source checkout, not required runtime resources.

## Supported subset

Both formats support a single start rule, plain alternatives, literal
keywords, sort/nonterminal and lexical/token references, and optional/repeated
sort references. Lexical rules must be a single literal or BMP character class.
Priorities, associativity, separated repetitions, compound lexical expressions,
and cardinalities on lexical references are not supported.

ANTLR additionally requires a single self-contained combined grammar. Imports,
split grammars, options, actions/predicates, fragments, and left-recursive
parser rules are rejected. A trailing start-rule EOF is omitted. A sole
`-> skip` lexer rule is omitted as layout; lexer priority/layout semantics are
not reproduced. See the [ANTLR guide](../antlr-bridge/README.md) for details.
Rascal is limited to one self-contained grammar module; layout declarations
and external-module grammar dependencies are not supported. See the
[Rascal guide](../rascal-bridge/README.md).

## Legacy utilities and licensing

**Tools > Parser Bridge Utilities (legacy Python)...** provides source-model
import/export and Rascal grammar export. Source-model import requires Python,
an explicit AST mapping, and the parser runtime for the selected grammar. It
maps parsed roots into native nodes in a selected editable target model.
Reference mappings are separate from child mappings and use the loaded MPS
reference link's scope, target concept, and identifier-property metadata. The
importer supports forward references, rejects missing or ambiguous targets,
and removes the imported roots when resolution fails. The portable Python
serializer accepts explicit model scope but does not execute MPS scope providers
or semantic checks. See the [Rascal bridge guide](../rascal-bridge/README.md#current-capabilities-and-limits)
for the mapping shape and validation limits.

MetaBNF remains Apache-2.0. Bundled tools and their dependencies retain their
own licenses. Every module distribution includes upstream notices, supplementary
license texts, component inventory, and corresponding source artifacts in
`third-party`. See [the redistribution guide](../third-party/README.md).
User-supplied grammars have their own licenses.
