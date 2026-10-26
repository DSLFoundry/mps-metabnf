# Interactive flags and optional groups

`mbnf.sandbox.InteractiveFixture` generates the native `DemoUsability` language.
It is separate from the annotation CRUD fixture and the unannotated Demo.
Use [protected regeneration](protected-regeneration.md) to update managed
structure, editor, and textGen aspects together.

## Flags and projections

An existing grammar `Flag` generates one native boolean property. The default
textual editor offers its keyword; the Inspector offers a checkbox. Both edit
that same property. A [generation profile](profiles-and-enrichment.md) can select
`vanilla.keyword` or `vanilla.checkbox` independently for either projection.
Occurrence, rule, and pattern overrides apply in order; `auto` releases its
level rather than overriding the next applicable decision.

Typing the complete keyword or accepting keyword completion sets the boolean.
An incomplete keyword remains invalid editor text, not a new semantic value.
Deleting the keyword or accepting the `<keyword> (remove)` completion clears
only the boolean. Completion selects the flag cell at the keyword's end;
removal selects its empty cell at caret zero. Native Undo restores the previous
state and selection. Toggling the Inspector checkbox changes the same exported
syntax without creating another representation.

## Optional keyword-led clauses

Approved optional-group intent must cover an entire keyword-led rule reached
through an existing optional child reference. The keyword and payload live in
that child. Typing its alias creates it and focuses its editable payload hole;
no placeholder value is stored as a semantic default.

The fixture's `else` trigger creates `ElseClause` and selects its empty
`statements` list. Absence, a present empty child, and a populated child remain
different persisted AST states. This route introduces no wrapper/lowering AST.
Flat or partial ranges and rules without optional-child storage fail with
`MBNF_GROUP_REQUIRES_LOWERING`.

Removal follows native smart deletion: the first Backspace retains the child
and selects its keyword; a second deliberate Backspace removes it, including
its payload. This applies to empty and populated clauses. Surrounding flags and
identifiers are preserved; Undo restores the removed subtree. Undoing trigger
completion restores the typed prefix (`els` in the fixture), not a fabricated
pristine editing state.

Metadata is validated before suppressed or suggested intent is ignored.
Suppression cannot conceal invalid authored provenance or malformed attachments.
Only same-model annotation sets and profiles are consumed during generation;
the metadata services separately support explicit cross-model operations.

## Supported surface

| Surface | Support |
| --- | --- |
| Vanilla Textual/Form flags | Keyword or checkbox, shared boolean, completion/removal, native Undo |
| Existing optional child | Keyword-led activation, payload focus, deliberate smart deletion |
| Persistence/export | Native model reload, stable node identities, absent/empty/populated distinction, conditional flag output |
| Grammar Cells | Blocked until a compatible backend is verified; explicit diagnostics, no fallback |
| Table, optional Form groups | Descriptors only; no generated policy claimed |
| Flat-range lowering, clause reordering, expression precedence | Not provided by this feature |

TextGen preserves the current concatenative grammar contract. For example the
fixture exports `item`, `publicitem`, `publicitemelse`, or
`publicitemelseskipskip`. It does not invent spaces, pretty-printing, a tokenizer,
or a parser/mapping round trip for the new fixture. Existing explicit
separator/indent/newline behavior remains authoritative.

Native editor interactions and node-based profile/storage/reload regressions
run through [the editor conformance suite](editor-interaction-tests.md). Actual
generation is checked for default, explicit opposite, and `auto` renderer shapes;
descriptor resolution alone is not evidence that a control was generated.
