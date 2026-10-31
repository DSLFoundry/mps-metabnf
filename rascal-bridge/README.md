# Rascal bridge prototype

This directory contains the bridge implementation and tests for the
Rascal/MetaBNF integration. The existing MetaBNF language's Tools actions supply native file
dialogs for grammar and mapped source-model import/export; XML interchange is
temporary, and users do not need to open or maintain it.

## Use in the existing MetaBNF project

Build the MPS module library from the repository root:

```sh
./gradlew assemble --no-daemon --console=plain
```

The ZIP in `build/distributions` contains the MetaBNF module library under
`metabnf/`, including the parser bridge resources in the language module.
Add the complete module library to your MPS project. There is no IDE plugin
to install. In a source checkout, run `prepareParserBridge`, open the existing
project, and rebuild `metabnf`. See [setup](../docs/metabnf-base.md#setup).

For grammar import, choose **Tools → Import Rascal Grammar into MetaBNF...**
(or the combined **Import Grammar into MetaBNF...** action and select Rascal),
then a `.rsc` file, an existing editable target model and generated
language name. MetaBNF bundles Rascal 0.43.0 and ANTLR 4.13.2, invokes them
using MPS's Java runtime, and saves native MPS nodes: **no Python or separately
downloaded JAR is required**. See the
[complete grammar import instructions](../docs/importing-grammars.md).

Optional **Tools → Parser Bridge Utilities (legacy Python)…** retains the
older source/export operations. Grammar export writes Rascal source from a
MetaBNF model. Source-model
import parses a source file with a Rascal or MetaBNF grammar and creates an
MPS model; source-model export serializes a mapped MPS model back to text.
Save generated `.mps` models under the corresponding MPS model root so MPS can
discover them; imported MetaBNF grammars use the `mbnf.sandbox` package.

Only these legacy utilities ask for a Rascal distribution JAR when an operation
needs the runtime. Source-model import/export also asks for a target model template
and an AST mapping configuration: the target MPS language must already be
generated, and its rule-to-concept mapping must be defined. Python 3 must be
available as `python` on Windows or `python3` elsewhere; override the
executable with the `metabnf.python` system property if needed. The bridge
uses MPS's Java runtime for Rascal commands. Source grammar, source text, MPS
models, and Rascal source are selected through file dialogs; the bridge's XML
interchange is kept in a temporary directory.

## Run the tests

`.\gradlew.bat verifyBundledGrammarTools` builds the ZIP and executes both
bundled tools from it with Java only, including legal/source resource checks.
The native smoke regression also checks node creation, references, persistence,
reload and unsupported-input rejection.

Requirements for the legacy portable tests below are Python 3, Java, the Rascal 0.43.0 distribution JAR, and MPS
2026.1 for the MPS smoke test. Set `JAVA_HOME` to the JDK used by MPS, or make
Java available on `PATH`. Set `MPS_HOME` to the MPS installation directory for
the smoke test.

Run the portable bridge tests from the repository root:

```sh
python rascal-bridge/test.py --rascal-jar build/rascal/rascal-0.43.0.jar
```

This runs the Python unit tests and exercises Rascal grammar export, import into
MetaBNF, grammar re-export, generated Rascal parsing, and source-to-MPS model
mapping in both directions. The source fixtures cover empty, single-statement,
multi-statement, and rejected programs; accepted examples are serialized back
to source, reparsed, and checked against the original MPS model structure.
Test source files have their editor-added final newline removed before parsing
because the sample grammar does not declare whitespace layout.

Run the MPS smoke test from the repository root with the Gradle wrapper:

```sh
./gradlew smokeTest --no-daemon --console=plain
```

On Windows use `gradlew.bat smokeTest --no-daemon --console=plain`.

## Prioritized support matrix

| Priority | Grammar conversion and generated parsing | Remaining limitation |
| --- | --- | --- |
| 1. Core | One self-contained module and start sort; sort/lexical rules, plain alternatives, keywords, sort/lexical references, and optional/repeated sort references. Sort alternatives map to explicit choice/alternative rules. | External-module dependencies and multiple start symbols are rejected. |
| 2. Layout and lexical expressions | Layout declarations become explicit layout references in imported productions. Literal/empty regexes, BMP character classes, nested sequences/choices, and `?`, `+`, `*` are mapped to native regexp nodes and generated Rascal expressions. | Separated repetitions and cardinality on lexical references are unsupported. |
| 3. Precedence and AST mapping | Unsupported grammar constructs fail rather than being dropped. Source parse trees can be mapped to an existing MPS language using explicit rules. | Priority and associativity are rejected because MetaBNF has no equivalent precedence model. Ambiguity resolution, AST references and non-tree mappings are unsupported. |

Interchange retains Rascal layout references for native MetaBNF import, while
generated Rascal parsers restore the layout declaration and omit duplicate
references. The native MetaBNF model stores them as ordinary terminal references,
so export loses the layout classification: whitespace is guaranteed for parsing
the imported interchange, but not after MetaBNF re-export. Compound lexical operators are represented recursively;
they are not flattened to a single literal or character class. The parser
round-trip fixture checks valid and invalid inputs, and the native MPS smoke
test checks imported nodes, references, persistence and constraints.

Importing a grammar creates a MetaBNF grammar model; it does not automatically
generate/configure an MPS AST language or infer a mapping. Source-model
operations therefore require an existing target language and an explicit AST
mapping configuration. The bridges do not execute user grammar code. See the
[prioritized cross-bridge matrix](../docs/importing-grammars.md#prioritized-supportedunsupported-matrix)
for ANTLR limitations and the shared import policy.

## Licensing scope

The upstream [Rascal license page](https://www.rascal-mpl.org/docs/GettingStarted/License/)
states that the project is BSD-2-Clause, with some older files under EPL-1.0,
and directs users to review the runtime and compile-time dependency licenses.
Inspection of the tested Rascal 0.43.0 artifact confirmed that its embedded
Maven POM declares BSD-2-Clause and notes the older EPL-1.0 files. The
`Grammar`, `Modules`, and Rascal syntax modules loaded by this bridge have
EPL-1.0 headers in that artifact.

The language module distributes the unmodified Rascal release as an isolated Java
tool, together with ANTLR. MetaBNF's own code remains Apache-2.0; the tools and
their dependencies retain their own terms. Every module distribution includes a
component inventory, upstream license/copyright notices, supplementary full
license texts and corresponding source artifacts, including EPL-covered
sources. See [third-party/README.md](../third-party/README.md) and retain that
entire directory when redistributing. User grammar licenses are independent.
