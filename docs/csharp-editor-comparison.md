# C# editor comparison

## Scope and pinned sources

The executable native subset is **an independently authored C#-like fragment
language**, not an import of the upstream C# grammar and not a head-to-head
comparison with mps-dflat. It validates numeric editing, undo, fragment text
export, and native persistence. No full C# compatibility or comparative
usability superiority is established.

| Source | Revision, license and availability | Outcome |
| --- | --- | --- |
| ANTLR grammars-v4 `csharp/v7/CSharpParser.g4` | `7bb150f62f54e587f18e323b71fa0309bdec5056`; SHA-256 `61172fff2fc97c57de9522e4219517ad0f1fc614cb356221717ff33d979a8395`. The header contains MIT and EPL-1.0 notices; applicable terms need review. | Not vendored or redistributed. The bundled native importer rejects it with `Only self-contained combined ANTLR 4 grammars are supported`. Split parser/lexer grammar, `tokenVocab=CSharpLexer`, and `superClass=CSharpParserBase` are outside the importer contract. |
| [DSLFoundry/mps-dflat](https://github.com/DSLFoundry/mps-dflat/tree/98a92f2ece2d5eb6cec01a4e12d1e615f744808a) | `98a92f2ece2d5eb6cec01a4e12d1e615f744808a`; Apache-2.0. Native expression and statement test sources are available. | Native build/check/tests are **not executed**. The build requests floating MPS `2025.1.+` and mbeddr `2025.1.+`; there is no resolved, pinned reference runtime or independent executable adapter here. Compatibility with MPS 2026.1.1 is unverified, not disproved. |
| `tests/comparative-editor/CSharpComparison.g4` | Authored in this repository under Apache-2.0; contains no upstream grammar text. | Native import creates nine rules including deterministic synthetic alternatives/groups. The generated `CSharpComparison` language builds and its structure/editor/textGen models have no check errors. |

`tests/comparative-editor/source-lock.json` pins upstream files, including the
reference license, build and native test models. `comparativeEditorSourceAudit`
fetches them into ignored build storage and verifies five SHA-256 digests and
the relevant source markers. This proves source availability, not reference
editor behavior. See the [corpus matrix](grammar-corpus-compatibility.md) and
[importer contract](importing-grammars.md) for shared compatibility details.

## Supported fragment and normalization

The authored grammar supports ordered/nested blocks, `return` with an optional
numeric payload, decimal integers and flat addition normalized left-associatively.
Syntax is compact braces/semicolons and exactly one space before a return
payload. Names, types, declarations, resolution, comments, other operators,
precedence families, and contextual return-type validity are excluded.

| Fact | Generated native adapter | Reference source mapping, not executed |
| --- | --- | --- |
| Block | `program.block` or an editor-test `block` fragment; ordered `statement` children. Grammar wrappers and punctuation are discarded. | `com.dslfoundry.dflat.statement.structure.BlockStatement`, ordered `IStatementList.statements`. |
| Return | `statement__ANTLRAlternative2`; absent `_AntlrGroup1` means absent payload. Otherwise follow its `expression` child. | `ReturnStatement` with `IExpressed` expression; optionality/editor availability require runtime verification. |
| Number | String property `NUMBER` on `expression` or `_AntlrGroup2`; preserve spelling without inferred type. | `com.dslfoundry.dflat.expression.structure.NumberLiteral`; inherited literal representation needs a runtime adapter. |
| Addition | Fold the first `NUMBER` and ordered `_AntlrGroup2` suffixes left. | `AdditionExpression` with inherited `lhs` and `rhs`. |

Native before/after trees and export goldens are authored in
`metabnf.editor.tests.comparison@tests`, not generated from observed outcomes.
`CSharpComparisonFacts` extracts ordered/path-based facts without consulting
expectations. The independently authored reference expectations remain separate
in `reference-expectations.json`; agreement with them is not a native reference
pass. There is no cross-language comparison of serialized models, node IDs or
cell IDs.

The native grammar uses inferred enrichment metadata and the default supported
vanilla generator. No custom editor cells or unsupported backend are applied.
Fresh target aspects require the native structure/textGen aspect devkits; the
constrained numeric datatype has its member ID initialized through native model
APIs. That metadata repair does not demonstrate that the generator emits it.

## Execute and inspect

Use MPS **2026.1.1**, JBR **25.0.3+1-b329.124**, and mops
**0.4.0-SNAPSHOT**. Generate the wrapper in the selected checkout, not another
worktree. Build the project languages before native Code Mode inspection.

```powershell
$env:JAVA_HOME = "$PWD\build\mps-platform-cache\jbr_jcef\25.0.3-b329.124-windows-x64"
mops wrapper
.\gradlew.bat prepareParserBridge comparativeEditorFixtureTest comparativeEditorSourceAudit
.\build\mopsw.cmd make module metabnf metabnf.aspectgen GenPlan Demo DemoUsability Python TestLanguage CSharpComparison metabnf.editor.tests mbnf.sandbox
.\build\mopsw.cmd diagnose project
.\build\mopsw.cmd code run tests\comparative-editor\verify-native-import.groovy
.\build\mopsw.cmd check model CSharpComparison.structure
.\build\mopsw.cmd check model CSharpComparison.editor
.\build\mopsw.cmd check model CSharpComparison.textGen
.\build\mopsw.cmd check model metabnf.editor.tests.comparison@tests
.\build\mopsw.cmd test --json 'metabnf.editor.tests.comparison@tests'
.\build\mopsw.cmd daemon stop
.\gradlew.bat smokeTest
```

The native import verification uses the bundled Tools-action implementation to
reject the pinned upstream parser and import the authored grammar into a fresh
registered temporary native model. It validates the start, nine named native
rules and resolved references, disposes that model, and writes only tool
interchange/logs under `build/comparative-editor/native-verification`.
The checked-in grammar fixture and generated aspects are persistent MPS models.

`comparativeEditorFixtureTest` is still a five-test parser/interchange control,
not an editor test: it checks all nine authored states, independent semantic
contracts, eight rejected inputs, scenario inventory and left association.
The four native tests are registered in the exact `build.gradle.kts` smoke
inventory; the integrated native run has 51 passing cases and no skipped cases. Native reports distinguish worker/build/discovery failures from
behavioral assertions. Retain the mops JSON report/worker logs and the Gradle
`build/mps-smoke/editor-reports` inventory.

## Outcomes by topic

| Topic / scenario | Generated native observations | Hand-built native observations |
| --- | --- | --- |
| Expression caret | `CSharpExpressionCaret`: select only RHS `2` in `{return 1+2;}`, type `3`; retain LHS `1` and ordered tree. RHS caret and collapsed selection are at offset 1. Fragment text is exactly `{return 1+3;}`. | Blocked: no runtime adapter executed. |
| Expression undo | `CSharpExpressionUndo`: the same replacement followed by the native `$Undo` action restores `{return 1+2;}` and its complete AST. Undo focus/selection is not asserted and remains unverified. | Blocked. |
| Export and reload | `CSharpExportSyntax` asserts the independently authored nested block fragment and exact text `{{return 1+2;}return;}`. `CSharpPersistence.exportAndReload` saves/loads a complete native `program` using the MPS model factory, then checks ordered semantic facts and the same fragment text. Focus across reload is not required. | Blocked. |
| Empty block creation | Parser/interchange expectations exist; native completion is not exercised by this subset. | Blocked. |
| Append in populated block | Parser/interchange expectations exist; native insertion, focus and undo are not exercised. | Blocked. |
| Nested boundary insertion | Nested syntax is exercised by export/reload, **not** by boundary key actions. Those editor observations remain unverified. | Blocked. |
| Optional return payload | Present/absent syntax and mapping exist; native optional-payload creation/removal actions are not exercised. | Blocked pending optionality and adapter verification. |
| List removal and undo | Parser/interchange expectations exist; native list deletion/restoration is not exercised. Expression undo is not a substitute for this scenario. | Blocked. |

Native fragment export is the `TextGeneratorEngine` text result, with LF
normalization that leaves these newline-free ASCII goldens unchanged. Whole
program file emission/encoding is not validated. Exporting an **unnamed
program root** fails because the generated file-unit name is null; passing
fragment tests do not hide that failure. Native persistence is separate from
export and does not imply a functioning file-export action.

The imported grammar's full model check reports a generation-plan integration
error: its regexp language generator is not engaged by the sandbox's custom
plan. Explicit aspect generation succeeds; this is not parser/import rejection.
Target structure/textGen checks have no findings; the generated editor has
three nullability warnings and two informational findings, and the native test
helper has two nullability warnings. None is reported as an error-free full
project check. Windows Ant workers emit JNA/native-library startup/shutdown
diagnostics; the harness, 51-case native inventory and combined Gradle tasks
complete successfully. Retained platform diagnostics are not classified as
language usability differences.

`tests/comparative-editor/native-outcomes.json` records the fixture commit,
canonical grammar digest, runtimes, initial/result facts, actions, caret and
selection, undo, export text/UTF-8 projection and reload statuses. Unobserved
columns stay blocked. The fixture inventory control also checks that this
record cannot turn a missing reference run or a program-file export failure
into a pass. These record-consistency checks do not execute either editor.

## Follow-up decisions

| Topic | Classification and annotation/generation follow-up |
| --- | --- |
| Split grammar dependencies | Importer capability: preserve split grammar dependencies/options/base-class semantics or continue explicit rejection. Route through grammar-import and corpus-compatibility work, not an editor annotation. |
| Grammar licensing | Human review: establish applicable terms before extracting or redistributing an upstream slice. The authored fallback does not resolve that decision. |
| Reference runtime and adapter | Pin exact MPS/mbeddr artifacts, build/check the pinned reference and author independent native expectations/actions before enabling head-to-head result columns. Source test names alone are not coverage. |
| Unnamed root export | Generation gap: supply an explicit filename policy or a safe fallback for start concepts without `INamedConcept`. Do not add a textual identifier merely to make export pass. |
| Datatype identity | Generation gap: emit stable native datatype member metadata so fresh generated aspects check without a corrective ID initialization. |
| Lexical generation plan | Integration gap: validate the grammar's regexp usage against the selected aspect-generation plan without claiming conversion failed. |
| List and optional interactions | Coverage gap: enable list/boundary/removal and optional-clause scenarios only with supported intent/backend mappings and independently verified caret/undo assertions. No comparative usability defect is inferred from absent observations. |

CI has no normalization/dirty-files gate. A scoped native import/dependency
refresh is repeatable without further changes; full serialized-metadata
migration cleanliness remains unverified. No serialized MPS XML is edited by
hand. All native fixture changes use mops/Code Mode.
