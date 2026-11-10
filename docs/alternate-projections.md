# Alternate editor projections

MPS editor hints select a presentation for the same AST node. They do not select a generation profile, transform the AST,
or change its TextGen output. The bounded state/event example in `DemoUsability` keeps the event/state/transition data
in one native `StateMachine` tree and offers a textual editor plus a matrix-oriented editor hint.

## Shared AST and mappings

Open `DemoUsability.matrix` and its `Door` root. `StateMachine.events` and `StateMachine.states` contain the shared
`Event` and `State` nodes; each `State.transitions` list contains its `Transition` nodes. The default textual editor
and the `StateEventMatrix` editor bind directly to those containment links and properties:

| AST role/property | Textual presentation | Matrix-oriented presentation |
| --- | --- | --- |
| `StateMachine.identifier` | Machine heading | Machine heading above the event and state rows |
| `StateMachine.events` | Comma-separated event declarations | Event headings |
| `StateMachine.states` | State declarations | State rows |
| `State.identifier` | State name | Row label |
| `State.matrixNote` | — | Matrix-only state annotation |
| `State.transitions` | Ordered transitions | Transition cells in the state row |
| `Transition.event`, `Transition.target` | `on event -> target` | Event-labeled target cell |

Both editors edit the same semantic nodes. The state-machine concept implements `INamedConcept` so a root can retain a
stable MPS name; the `identifier` property remains the visible language value. Its native TextGen declaration serializes
the shared semantic tree, independent of the selected editor hint.

`State.matrixNote` is an explicit, nonsemantic presentation annotation exposed only in the matrix editor. It is persisted
in the shared `State` node, omitted from the default textual editor and from TextGen, and is not part of the state-machine
grammar. It demonstrates a projection-local choice without changing the other view's explicit state/transition choices or
exported syntax.

The `StateEventMatrixContext` root declares the hint and its presentation. `StateMachine_StateEventMatrix_Editor` and
`State_StateEventMatrix_Editor` provide the hinted editors; `Event` and `Transition` reuse their default child editors.
The ordinary editors remain the fallback. In MPS, use **Push Editor Hints** to select **State/event matrix** for the
current language. Disabling that hint returns to the textual editor without changing the model.

The example is intentionally matrix-oriented rather than a validated transition table: `Transition.event` and
`Transition.target` are strings, not references to `Event` and `State` nodes. The editor labels each transition with its
event but does not enforce one cell per declared event, validate duplicate events, or resolve targets. It demonstrates
an alternate projection and mapping seam, not a complete state-machine language or consistency checker.

## Interaction coverage

`StateMachineMatrixHint` edits a state name in the matrix, switches to the textual editor and asserts the edited name is
visible in that other projection, then verifies Undo restores the serialized value.

`StateMachineProjectionSwitchNoChange` switches from text to matrix and back without editing, comparing a recursive AST
fingerprint, reference-target fingerprint, and exact TextGen before, during, and after the switch. Event and transition
targets in this demonstrator are strings, so its current reference snapshot is empty; if links are added, their target
identities are part of the fingerprint. `StateMachineMatrixLocalChoice` edits `State.matrixNote` in the matrix editor,
asserts that the choice is visible there but absent from the textual editor, and checks that the textual choices and exact
TextGen remain unchanged.

The fixtures use native MPS hint settings and refresh the real editor on the event-dispatch thread. They do not automate the
chooser dialog or claim pixel-level/desktop appearance coverage. Their exact names are registered in `build.gradle.kts`.

## Backend compatibility and dependencies

This demonstrator is built and tested against the project-pinned MPS 2026.1.1 and JBR 25.0.3-b329.124, with the Gradle
MPS plugin 2.1.1 (`gradle/libs.versions.toml`). It uses the standard MPS Editor/editor-hint runtime and TextGen;
`DemoUsability.mpl` declares `MPS.Editor`, while its aspect models use JetBrains MPS structure, editor, editor.forms,
and textGen languages. No third-party table/diagram backend or extra runtime library is required. Compatibility is verified
for the pinned MPS build only; older/newer MPS versions must be checked with their matching project toolchain because editor
hint APIs and persisted language models are versioned.

## Extension points

To add another projection without creating another AST:

1. Keep semantic values and containment/reference roles in the structure model; keep source serialization in TextGen.
2. Declare a `ConceptEditorContextHints` root and a stable `ConceptEditorHintDeclaration` ID with a user-facing
   presentation.
3. Add a hinted `ConceptEditorDeclaration` for each concept whose layout differs. Bind property and child cells to the
   existing structure declarations rather than copied or shadow properties. Leave concepts without a specialized
   layout on their default editor.
4. Add an `EditorTestCase` with independent before/result trees. Switch the context hint, edit a view-specific cell,
   assert the active hint and exact export, and cover Undo and switching back. Register every fixture in the exact
   Gradle test inventory.
5. Keep unsupported layout semantics explicit. A visual table needs actual cell/column mapping and interaction tests;
   a list of event-labeled transitions alone does not establish those policies.