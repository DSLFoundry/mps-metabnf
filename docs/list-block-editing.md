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

An approved `ListAnnotation.triviaPrefix` opts a generated list into native
trivia storage and TextGen (the fixture uses `// `). The generator-free
`metabnf.trivia` language supplies `TargetListTrivia`, a node attribute on the
list owner with its `listRole`, and ordered `TargetTriviaChunk` children. Each
chunk has editable `text`, `blankLine`, and an optional `anchor` reference to
the next semantic element; no anchor means end-of-list. Empty comments and
blank lines are different chunks. Neither is a semantic statement.

The attribute editor shows the owner's normal editor followed by an explicit
editable trivia table. This is metadata-table editing, not inline textual
comment recognition. Use native completion to add chunks and edit their text,
blank-line flag and anchor. The `metabnf.usability.TargetTrivia` runtime also
provides `attach`, `addComment`, `addBlankLine`, `chunks`, and `validate`, under
the caller's native model access/command. Only attach stores to lists explicitly
selected for trivia export. The runtime rejects duplicate stores, unresolved or
foreign-list anchors, multiline comment chunks, and nonempty blank-line text.
Invalid intermediate metadata must be corrected before export.

Generated optional-list deletion reanchors a removed element's leading trivia
to the next sibling, or to end-of-list, in the same command; one Undo restores
both the statement and its anchors. Native reorder retains element references,
so leading trivia follows its referenced element rather than its old index.
Trivia anchored at the same element retains storage order. Direct external
removal must call `reanchorBeforeRemoval` in the same command, or explicitly
repair anchors. Deleting the owner also deletes its trivia.

TextGen emits the selected prefix and one line per comment/blank-line chunk,
using native indentation/newline operations. With no chunks, existing separator,
indent and newline output is unchanged. Parser import does not capture comments
or promise source-text trivia round trips; supported reload is native MPS
persistence. MetaBNF grammar-specification comments remain a separate feature.

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
`BlockEmptyListEnter` invokes native `Insert_Action` directly at the empty
placeholder and independently checks the first semantic element and exact
export; it does not assert the resulting caret position.
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

## Explicit block and clause policies

For vanilla list/block generation, keep the active `UsabilityAnnotations` set
beside its grammar in the same native model. This adapter does not merge
cross-model metadata sets. Legacy template reuse outside the vanilla
`GenerationModel` plan does not activate the new policies.

Approved list annotations may select `openingBoundary` and `closingBoundary`
keyword terms enclosing that list in the same rule, plus `foldSummary`. The
vanilla generated editor assigns the pair a native matching label, stable
`opening_<role>` / `closing_<role>` cell ids, and a foldable owner collection
`block_<role>` with `folded_<role>` summary. An empty summary defaults to
`opening ... closing`. One paired list per rule is supported; each boundary's
text must identify one generated constant cell. Indentation remains the grammar's
existing list layout. Folding covers the whole semantic owner, including its
optional children, not just the text between the selected keywords.

Native right-arrow navigation leaves the last statement for the closing keyword,
including a nested block. There is no custom matching-boundary jump command or
new physical-key binding. Native Collapse/Expand use the authored summary.

`ListAnnotation.clauseSiblings` explicitly distinguishes a catch/elseif-like
sibling collection from an ordinary statement body. Its wrapper and element
INSERT actions deliberately consume boundary Enter without appending a clause.
A try body's closing boundary therefore cannot implicitly create its first or
next catch; Enter inside a catch's statement list still appends a statement.
Clause creation remains an explicit native completion/insertion operation, not
an inferred consequence of repetition. Suppressed/suggested annotations do not
activate these policies. Lists without the new fields keep their existing
separator, indentation, newline and native list behavior.

The fixture's `TryStatement` and `CatchClause` exercise this distinction. Native
fixtures cover comment typing/Undo, deletion/reanchoring/Undo, reorder and exact
export; closing-boundary selection in outer/nested blocks; Collapse/Expand; and
empty/populated clause boundaries separately from body insertion. These scoped
policies do not establish arbitrary grammar-shape or parser-import support.

## Persistence

`BlockPersistence` saves disposable native MPS models under `build/list-block`
and loads them through the selected MPS persistence factory. Its empty,
two-statement and nested fixtures assert retained node identity, independent
semantic child counts, absent versus present nested children, and exact TextGen
after reload. Reload does not run parser import and does not promise source-text
round trips for syntax that the grammar does not store.

`BlockTriviaPersistence` additionally reloads comments and explicit blank lines,
checks that they remain outside semantic `statements`, and verifies exact export
with element-reference anchors after reorder.

`BlockTriviaValidation` rejects foreign-list anchors, multiline comments and
nonempty blank-line chunks before export. Closing-boundary navigation fixtures
also assert the actual native matching-label styles on both delimiter cells.
