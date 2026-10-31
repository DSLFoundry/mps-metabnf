# ANTLR bridge

Import an ANTLR 4 grammar into MetaBNF, or parse text with ANTLR and map the
result into an existing MPS language. ANTLR's own Tool API reads and validates
the grammar; its lexer and parser interpreters parse the input without
generating or executing user Java code.

## Requirements and licensing

For **MPS grammar import**, use the native actions in the existing MetaBNF
language with its bundled **ANTLR 4.13.2 complete JAR** and Java bridge.
No Python, separate JAR download or IDE-plugin installation is needed; see
[Import grammar files in MPS](../docs/importing-grammars.md) and the
[core user guide](../docs/metabnf-base.md).

The optional legacy source-model/portable CLI workflows still use Python 3.10+,
a Java runtime supporting source-file launching with its compiler module
(the build's MPS 2026.1 runtime works), and a complete JAR. A runtime-only JAR
is insufficient. For development,
`.\gradlew.bat prepareAntlr` downloads the pinned artifact into
`build\antlr\antlr4-4.13.2-complete.jar`.

ANTLR 4.13.2 uses the permissive [BSD-3-Clause license][license]. It can be used
alongside this project's Apache-2.0 code without changing MetaBNF's license or
requiring disclosure of application code. If redistributing ANTLR source,
retain its copyright notice, conditions, and disclaimer; if redistributing
binaries, reproduce them in the accompanying documentation/materials. Do not
use the copyright holders' or contributors' names to endorse derived products
without permission. Third-party grammars and dependencies have their own
licenses: check those independently. The distribution includes component
notices, license texts and source artifacts; retain its complete `third-party`
directory when redistributing. See [redistribution details](../third-party/README.md).

[license]: https://github.com/antlr/antlr4/blob/4.13.2/LICENSE.txt

## Usage

In MPS, choose **Tools > Import ANTLR Grammar into MetaBNF...** (or the combined
**Import Grammar into MetaBNF...** action and select ANTLR), then the
`.g4` file, parser start rule, existing editable target model, and generated
language name. Native nodes are saved in that model; existing grammars are
never overwritten. See the [step-by-step guide](../docs/importing-grammars.md).

For optional source-model import use **Tools > Parser Bridge Utilities
(legacy Python)... > Import ANTLR source model into MPS**. That workflow
additionally selects the complete JAR, output file, template and explicit
mapping. Reload its resulting model in a solution that uses the target languages.

Legacy portable PowerShell commands from this checkout:

```powershell
python antlr-bridge\bridge.py grammar `
  --antlr-jar build\antlr\antlr4-4.13.2-complete.jar `
  --grammar tests\antlr-bridge\Mini.g4 --start program `
  --output C:\work\AntlrGrammar.mps --model-name AntlrGrammar

python antlr-bridge\bridge.py text `
  --antlr-jar build\antlr\antlr4-4.13.2-complete.jar `
  --grammar tests\antlr-bridge\DemoText.g4 --start program `
  --input-text C:\work\program.txt `
  --template languages\mbnf\sandbox\models\langtest.mps `
  --mapping tests\antlr-bridge\demo-mapping.json `
  --output C:\work\AntlrProgram.mps --model-name AntlrProgram
```

For the second command, an example input is `program P { X=123; Y=2; }`.
The explicit JSON mapping associates parser-rule names with MPS concepts,
named tokens with properties, and child rules/tokens with containment roles.
It uses the [same mapping format as the Rascal bridge](../rascal-bridge/README.md);
see `tests\antlr-bridge\demo-mapping.json`. Literal keyword tokens and EOF do
not become AST children. Rebuild the target language before using its models;
the template must contain the target concepts and role registry entries.
This is a tree mapper, not a symbol/reference resolver.

## Mapping suggestions

The opt-in [AST mapping advisor](../docs/ast-mapping-suggestions.md) combines
shared grammar interchange with a Code Mode export of the target metamodel.
It suggests structurally compatible configuration, preserves explicit keys,
and reports ambiguity and mapping drift. Review its output and pass the
reviewed mapping to the existing source-model import command; neither importer
uses suggestions implicitly. Constrained datatype choices and reference
resolution require explicit decisions.

## Supported scope

Both operations currently require one self-contained **combined ANTLR 4
grammar**. Imports, split lexer/parser grammars, options, embedded actions,
semantic predicates, custom token/channel declarations, and exception handlers
are rejected explicitly. This avoids silently ignoring target-language
semantics or executing grammar actions.

Grammar-to-MetaBNF conversion supports parser alternatives, literal keywords,
rule/token references, optional/repeated parser-rule references, and lexer
rules consisting of one literal or BMP character set. Labels are not MPS
concept names. A trailing EOF in the start rule is omitted. Only a sole lexer
alternative with `-> skip` is omitted as layout; other lexer commands are
unsupported. Lexer priority and ANTLR layout behavior are not reproduced by
MetaBNF conversion. Left recursion is rejected here because conversion would
lose precedence semantics. Unsupported groups, token cardinalities, lexer
fragments, and more complex lexical expressions fail rather than approximate.
The generated grammar is a starting point for MetaBNF decoration, not a
claim of equivalent language generation.

Source parsing instead interprets the original validated ANTLR grammar and
lexer. It supports multi-character tokens, parser repetition, skip rules, and
ANTLR's left-recursive expression rules. A nonrecursive entry rule around
such expressions is recommended (for example, `program : expr EOF;`).
Lexer/parser errors and unconsumed trailing input are failures, even when the
entry rule does not explicitly contain EOF. XML-invalid token values fail
explicitly. The mapping rejects unmapped nodes/tokens instead of guessing.

Inputs are never overwritten, and invalid grammar/input/mapping failures do
not replace an existing output model. No native MPS checker is run by the
portable CLI: reload, check, and build imported models with their target
languages in MPS.

## Regression checks

`.\gradlew.bat antlrBridgeTest` runs the native ANTLR integration tests with
the pinned complete JAR. `build` includes these checks, the existing bridge
tests, and a fresh ANTLR grammar import checked with native MPS constraints
inside the isolated smoke project.
`verifyParserBridgeDistribution` checks the installed archive layout and
executes both legacy ANTLR imports from an extracted bundle outside the checkout.
`verifyBundledGrammarTools` runs the packaged ANTLR and Rascal tools using
Java only and checks license/source resources. `smokeTest` exercises native
node creation, persistence/reload, references, and rejection without replacement.
Parsed source models are reopened in a fresh MPS process with the regenerated
Demo registry and checked structurally. That check does not establish that
Demo's compiled concept descriptors loaded or that all semantic constraints
of an arbitrary target language hold.
