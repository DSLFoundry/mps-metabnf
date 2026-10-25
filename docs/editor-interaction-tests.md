# Native editor interaction tests

The editor tests in `metabnf.editor.tests` use MPS `EditorTestCase` fixtures, not
model-mutating helper calls. The solution also contains separate native
[regeneration ownership tests](protected-regeneration.md).
Use the MPS and Java runtime selected by the
[build catalog](../gradle/libs.versions.toml).

```powershell
.\gradlew.bat editorInteractionTest --console=plain
```

On Linux use `./gradlew editorInteractionTest --console=plain` (the CI workflow
uses `xvfb-run`). This bounded suite is also part of `smokeTest`, `check`, and
`build`, including the publishing gate. In an isolated project it first compiles
the checked-in generated Demo aspects and executes the editor fixtures. It then
runs the existing fresh import/generation, compilation, and parsed-AST smoke
pipeline. It does not alter your open project.

The baseline interaction contract covers:

| Fixture | Input/action | Independent result |
| --- | --- | --- |
| NumberTyping | Type `2` after `1` | Number value `12`, caret at end |
| NumberDeletion | Invoke the registered MPS Backspace action after `12` | Number value `1`, caret at end |
| NumberUndo | Type `2` after `1`, invoke the registered IDE Undo action | Number value `1`, caret restored |

Typing uses MPS's real key-event dispatcher. Backspace and Undo use native
`InvokeActionStatement` nodes because the low-level dispatcher does not route
those global shortcuts through the IDE action system in this headless runner.
The tests open a real MPS node editor, compare before/result nodes using the
native matcher, assert cell identity and caret/selection, and dispose the editor.
They do not substitute direct property setters for the interaction.

For a quicker local iteration after preparing the project wrapper:

```powershell
.\build\mopsw.cmd check model 'metabnf.editor.tests.interactions@tests' --limit 0
.\build\mopsw.cmd test 'metabnf.editor.tests.interactions@tests' --json
```

This command tests the currently generated Demo. The Gradle command additionally
proves clean compilation, CI registration, and the separate fresh-generation
smoke contract. Set the invoking process's `JAVA_HOME` to the runtime reported by
`mops wrapper` if the wrapper launcher needs it.

Editor fixtures deliberately run before the smoke pipeline replaces Demo's
aspects. The legacy importer and deliberate fresh creation allocate different
concept/property identities, whereas protected adoption retains existing ones.
The three editor fixtures prove interaction with compiled generated editors;
separate ownership fixtures and the protected smoke path check regeneration.
The tests do not hide identity changes by rewriting fixture registries at runtime.

## Adding a pattern fixture

Use separate native before/result `TestNode` trees. Put
`AnonymousCellAnnotation` on the intended node/cell with explicit caret and
selection bounds; do not derive the expected tree from the generator.
Cover create, populate, navigate, modify and remove through keyboard input or
registered editor actions; include undo. Where a feature supports persistence
or export, add independent reload and syntax assertions to its smoke coverage.
Do not claim those capabilities from caret/AST assertions alone.

The Number fixtures establish the baseline editing/undo contract, not coverage
of future flags, optional groups, lists, blocks, expressions or serialization.
Each new interaction needs its own applicable contract cases and an explicit
supported/unsupported matrix. Update the exact inventory in `build.gradle.kts`
when registering fixtures; empty, skipped, missing or duplicate cases fail.

## Reading failures

Native checking, generation, Java compilation, test discovery, editor assertions
and round-trip checks are separate stages. A startup/make failure is not an
editor assertion failure and is never a pass. Gradle retains artifacts under
`build/mps-smoke`, including `editor-reports/TEST-*.xml` and `editor-log`.
It verifies the exact nonempty test inventory after the native runner succeeds
and bounds the smoke pipeline to 15 minutes. CI uploads those diagnostics.

A negative control is to change only NumberTyping's expected Number value from
`12` to `99` using native MPS editing, run the mops command, require nonzero exit
and `TEST_FAILED` with three discovered tests, then restore `12` natively and
rerun. Do not hand-edit model persistence or leave the negative control enabled.
