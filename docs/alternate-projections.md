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
| `State.transitions` | Ordered transitions | Transition cells in the state row |
| `Transition.event`, `Transition.target` | `on event -> target` | Event-labeled target cell |

Both editors edit these very same nodes. The state-machine concept implements `INamedConcept` so a root can retain a
stable MPS name; the `identifier` property remains the visible language value. Its native TextGen declaration serializes
the shared tree, independent of the selected editor hint.

The `StateEventMatrixContext` root declares the hint and its presentation. `StateMachine_StateEventMatrix_Editor` and
`State_StateEventMatrix_Editor` provide the hinted editors; `Event` and `Transition` reuse their default child editors.
The ordinary editors remain the fallback. In MPS, use **Push Editor Hints** to select **State/event matrix** for the
current language. Disabling that hint returns to the textual editor without changing the model.

The example is intentionally matrix-oriented rather than a validated transition table: `Transition.event` and
`Transition.target` are strings, not references to `Event` and `State` nodes. The editor labels each transition with its
event but does not enforce one cell per declared event, validate duplicate events, or resolve targets. It demonstrates
an alternate projection and mapping seam, not a complete state-machine language or consistency checker.

## Interaction coverage

`StateMachineMatrixHint` in `metabnf.editor.tests.interactions@tests` exercises the native editor context-hint settings,
checks that the matrix hint becomes active, edits a state name, and verifies the shared TextGen serialization. It then
invokes Undo, checks the restored serialization, disables the hint, and verifies the default editor is active again.
The fixture refreshes the real editor on the event-dispatch thread. It does not automate the chooser dialog or claim
pixel-level/desktop appearance coverage. Its exact test name is registered in `build.gradle.kts` alongside the other
editor fixtures.

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