# C# editor comparison

## Selected pair and source availability

The selected first target is C# expressions/blocks versus
[DSLFoundry/mps-dflat](https://github.com/DSLFoundry/mps-dflat/tree/98a92f2ece2d5eb6cec01a4e12d1e615f744808a).
This is a selected benchmark target, **not a completed end-to-end comparison**.
The executable fallback is an independently authored, Apache-2.0 C#-like slice;
it is not an import of the upstream C# grammar and does not establish full C#
compatibility. No second pair is selected.

| Source | Verified availability and licensing | Decision |
| --- | --- | --- |
| ANTLR grammars-v4 `csharp/v7/CSharpParser.g4`, revision `7bb150f62f54e587f18e323b71fa0309bdec5056` | Immutable source exists. Parser SHA-256 `61172fff2fc97c57de9522e4219517ad0f1fc614cb356221717ff33d979a8395`. Header contains both MIT and EPL-1.0 notices. `parser grammar`, `tokenVocab=CSharpLexer`, and `superClass=CSharpParserBase` are present. | Do not vendor or redistribute. Applicable licensing needs review. The documented combined-grammar importer cannot accept this split grammar; no parser-bridge extension is part of this benchmark. |
| mps-dflat revision `98a92f2ece2d5eb6cec01a4e12d1e615f744808a` | Repository license is Apache-2.0. `build.gradle` requests MPS `2025.1.+` and mbeddr `2025.1.+`; the revision therefore does not pin an exact runtime/dependency set. Native expression and statement editor test models are present. | Source/reference availability verified, execution on MetaBNF's MPS 2026.1.1 is not verified. Do not silently upgrade or assume binary compatibility. |
| `tests/comparative-editor/CSharpComparison.g4` | Independently authored here under the repository Apache-2.0 license; no upstream grammar text is included. | Bounded parser/interchange control, not a generated native C# editor. |

See the [corpus matrix](grammar-corpus-compatibility.md) for importer evidence and
[importer contract](importing-grammars.md) for the supported subset. This page
adds comparison-specific decisions rather than duplicating compatibility work.

## Overlap and normalization

The authored slice contains ordered blocks, nested blocks, `return` with an
optional numeric payload, decimal integers, and left-associated addition.
Layout is exactly compact braces/semicolons and one space before a return
payload; there is no general whitespace lexer. It excludes names, resolution,
types, declarations, comments, other operators, and precedence families.
A return fragment is not a typechecked compilation unit; no contextual return
type validity is claimed.

| Semantic fact | Generated-side normalization contract | Hand-built reference contract |
| --- | --- | --- |
| Block | Normalize ordered `statement` children, discard grammar wrappers/punctuation. | `com.dslfoundry.dflat.statement.structure.BlockStatement`, ordered `statements` from `IStatementList`. |
| Return | Normalize payload absent as null; otherwise normalize expression. | `ReturnStatement`, expression supplied through `IExpressed`; confirm optionality and editor availability before enabling the scenario. |
| Number | Preserve decimal spelling as a string, without inferred numeric type. | `com.dslfoundry.dflat.expression.structure.NumberLiteral`; inspect its inherited literal representation in the running reference adapter. |
| Addition | Fold the flat operand sequence left; preserve operand order. | `AdditionExpression`, inherited `lhs` and `rhs`. |

The reference names above are source-inspected concept mappings, not executable
adapters. Cell IDs and node identities are never cross-language expectations.
The reference has native tests including `PlusToMinus`, `SplitNumber`,
`PostfixDecrement`, `NamedVariableReference`, and `Block`; their existence is not
a passing result here. Name resolution, postfix operations and comments are
unmatched capabilities, not generated-editor failures in this slice.

## Repeatable scenario protocol

The [shared protocol](comparative-editor-validation.md) applies. Scenario data
and independent, immutable semantic expectations are in
`tests/comparative-editor/`. Run the fixture control with:

```powershell
$env:JAVA_HOME = "$PWD\build\mps-platform-cache\jbr_jcef\25.0.3-b329.124-windows-x64"
.\gradlew.bat comparativeEditorFixtureTest
```

This task must not be reported as a native editor comparison. It checks authored
syntax, grammar interchange conversion, normalized AST facts, invalid inputs,
and the scenario/expectation inventory. It creates no MPS models. Expectations
are checked-in data, never snapshots regenerated from observed results.

Before executing either editor, write a separate native adapter that constructs
its initial model from that side's expectations, maps semantic paths to that
editor's actual focusable cells, executes the declared actions, and extracts
actual facts without consulting expected results. Keep each side's before/after
fixture independent; never derive one side's goldens from the other or from the
implementation under test. Native tests must be registered in the exact
`build.gradle.kts` inventory. No native test is added by the fixture control.

Every result record must include scenario ID, fixture commit, actual grammar and
reference commits, exact MPS/JBR/mbeddr versions, adapter/test name, initial and
result semantic facts, actual keys/actions, focus role and offset, undo state,
export bytes, and saved/reloaded facts. Use separate statuses for importer,
model mapping, editor behavior, focus, undo, export, and reload: `pass`, `fail`,
`blocked`, or `unsupported`, with a reason and retained test report. Missing
observations remain blocked, never pass. An unavailable optional payload must
be recorded as unmatched rather than replacing it with a different construct.

## Outcome matrix

| Scenario | Declared semantic outcome | Import/parser control | Generated native editor | Hand-built native editor | Focus / undo / export / reload |
| --- | --- | --- | --- | --- | --- |
| Empty block creation | `{}` becomes `{return;}`; exactly one return, absent payload. | Authored syntax and AST control only. | Blocked: no generated C# editor. | Blocked: reference runtime/adapter unavailable. | All native observations blocked. |
| Append in populated block | Append a second return without changing the first. | Authored syntax and AST control only. | Blocked. | Blocked. | All native observations blocked. |
| Nested boundary | At the nested closing brace, append inside that block, not outside it. | Authored syntax and AST control only. | Blocked. | Blocked. | All native observations blocked. |
| Optional return payload | Add `1` to an absent return payload; retain the return. | Authored syntax and AST control only. | Blocked. | Blocked pending optionality verification. | All native observations blocked. |
| Removal and undo | Delete the second return; one undo restores it and its semantic focus. | Authored syntax and AST control only. | Blocked. | Blocked. | All native observations blocked. |
| Expression caret | Replace right operand `2` with `3`, retaining left operand `1`. | Authored syntax and AST control only. | Blocked. | Blocked. | All native observations blocked. |
| Export and reload | Preserve ordered nested blocks and return payload facts. | Authored syntax and AST control only. | Blocked. | Blocked. | No native export or reload observed. |

The runnable control is bounded evidence about fixture/parser consistency, not
about keys, caret behavior, undo, native persistence, or exported syntax. The
full upstream pair remains blocked by importer support, licensing review, and a
compatible reference runtime. No comparative usability superiority or new
annotation/generator requirement is inferred from blocked scenarios. Once both
native adapters run, classify observed discrepancies as importer loss, mapping
mismatch, usability gap, or unmatched reference capability before proposing
annotation changes. CI has no normalization/dirty-files gate; serialized
metadata normalization is unverified and no serialized models are changed.
