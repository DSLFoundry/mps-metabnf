# List, block, and trivia editing

List cardinality remains authoritative: a mandatory list must retain an element,
while a zero-or-more list may be empty. An empty list, an absent optional child,
and a populated list are distinct model states. Repetition alone does not choose
what Enter does at a list boundary; insertion inside the list and insertion of
a sibling clause are separate policies.

## Trivia policy

Comments and blank lines are non-semantic trivia, never entries in a semantic
statement collection. The selected anchor policy is leading trivia: a trivia
chunk belongs immediately before the next semantic element. Trailing trivia is
anchored to a dedicated end-of-list position. Anchors use element references,
not list indexes, so inserting or reordering statements does not silently move
comments. Trivia is stored in an ordered collection separate from semantic
children, and export emits each chunk at its anchor.

This is the design contract, not a claim that target-language trivia is
implemented. MetaBNF grammar comments and blank lines are distinct from comments
in a generated language.

## Current fixture and coverage

`mbnf.sandbox.InteractiveFixture` contains a `Block` rule with explicit `begin`
and `end` terms, a zero-or-more `statements` list using `;`, and an optional
recursive child block. The list retains its declared indentation and newline
layout. This fixture is intended to exercise native empty-list insertion,
separator behavior, and nested boundaries without changing the existing flag
and optional-clause fixtures.

The `BlockEmptyListTyping` native fixture targets the generated
`empty_statements` placeholder, invokes MPS completion, then presses Enter. It
checks that the first `Statement` is inserted and that exact TextGen output is
`begin\n    skipend` after line-ending normalization.
`BlockSeparatorInsertion` starts from the same empty list, creates its first
statement, types the declared `;` separator, then completes and enters a second
statement. It checks the resulting two-element AST and exact TextGen
`begin\n    skip;skipend`. It also asserts that focus is on the second
`Statement`'s constant cell at offset 4, after `skip`. This fixture-specific
cell assertion does not establish generic per-list policies or navigation
across nested boundaries. `BlockEmptyListTyping` still does not assert its
post-insertion selection.

`BlockNestedEmptyListTyping` focuses the nested Block's empty `statements`
placeholder and presses Enter. It verifies that the new `Statement` belongs to
that nested Block, not a further optional child, checks the nested TextGen
`begin\n    endbegin\n      skipend`, and confirms selection on the new
statement's constant cell at offset 4.

Generated editors include a Delete action for a selected child only when its
containment link is both optional and repeated. `BlockLastStatementRemoval`
checks that deleting the final Demo block statement restores the empty-list
placeholder, and `BlockLastStatementRemovalUndo` checks that one Undo restores
the statement and selection. Protected regeneration also verifies that the
generated action map retains its source trace and identity. This scoped action
does not define a general per-list removal policy.

Generated editors also give each element of an optional repeated list an
INSERT action that is enabled only for the last element. It inserts a sibling
after the selected node and selects its first editable cell, so Enter at the
end of a populated list appends a statement without creating the optional child
Block. `BlockEndBoundaryInsertion` covers this through the native
`Insert_Action` and an exact TextGen assertion. Selection ids use the
`selector_first_editable|selector_first` fallback list.

Outside the tested Demo path, the generated editor still relies on native MPS
list behavior. Per-list Enter policies outside the tested Demo patterns, block
folding summaries and closing-boundary navigation, and target-language trivia
editing/export/reload remain unsupported until their generated behavior and
native interaction tests are in place. Do not infer support from the fixture's
grammar shape alone.
