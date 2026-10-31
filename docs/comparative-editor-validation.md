# Comparative MPS editor validation

This protocol compares observable editing behavior between a MetaBNF-generated
language and an independently implemented MPS language. It does not compare
serialized models, generated node IDs, or editor cell IDs. Each side needs
independently authored before/after expectations; matching behavior is judged
after normalizing each language's AST into the scenario's semantic outcomes.

## Scenarios and observations

Use the same user action sequence on both implementations wherever the
construct exists on both sides. Record the initial model, focused construct,
key/action sequence, resulting AST facts, selected semantic role or caret
position, undo result, exported syntax, and persistence/reload result.

| Scenario | Observable behavior |
| --- | --- |
| Empty collection | The first appropriate semantic element is created; absence, empty, and populated states remain distinct. |
| Separated insertion | A separator and Enter create an element at the intended list position and leave focus in the intended element. |
| Block boundary | Enter at a closing/nested boundary has the declared behavior and does not create an unintended sibling clause. |
| Optional clause | Trigger, payload focus, populated-content protection, removal, and undo are recorded where both languages support the clause. |
| Removal and undo | Deleting a list item preserves cardinality rules; one undo restores the expected semantic element and focus. |
| Reload and export | Saved/reloaded semantic outcomes and exact supported syntax are checked independently of editor-cell identity. |

Unsupported or non-overlapping constructs are reported as such, not counted as
failures or silently omitted. Parser/import limitations, editor behavior,
semantic reference resolution, and serialization are separate result columns.
Do not infer semantic equivalence from similar printed text alone.

## Candidate-pair matrix

| Pair | Pinned source/reference | Overlap to evaluate | Known limitations and status |
| --- | --- | --- | --- |
| C# / mps-dflat (first candidate) | ANTLR grammars-v4 `csharp/v7` at `7bb150f62f54e587f18e323b71fa0309bdec5056`; hand-built reference [DSLFoundry/mps-dflat](https://github.com/DSLFoundry/mps-dflat) at `98a92f2ece2d5eb6cec01a4e12d1e615f744808a` | Start with simple expression and statement construction, then list/block insertion and editing only where both models expose equivalent semantics. mps-dflat has native expression editor tests. | The C# parser and lexer are separate grammars; the parser uses `tokenVocab` and a custom base class. The current importer requires one self-contained combined grammar and rejects this input shape. The grammar header contains both “MIT License” and “Eclipse Public License - v 1.0” notices; the applicable terms for the file have not been independently established, so do not check it in or redistribute it until reviewed. mps-dflat's pinned revision updates to MPS 2025.1; compatibility with this project’s pinned MPS must be verified. No end-to-end comparison has run. |
| C/C++ / mbeddr (second-pair candidate) | Candidate MPS references: [mbeddr/mbeddr.core](https://github.com/mbeddr/mbeddr.core) (EPL-2.0) and [DSLFoundry/mbeddr.cpp](https://github.com/DSLFoundry/mbeddr.cpp) (EPL-1.0). | Potential statement, block, and expression interactions if a compatible textual grammar and overlapping native model slice are verified. | The inspected repository trees did not contain `.g4` or `.rsc` grammar sources. This pair is not selected until a suitable grammar, revision, license, importer overlap, and compatible MPS build are verified. A Kotlin MPS counterpart was not established by the repository search. |

This matrix records only the comparison candidates and their relevance to this
protocol; the grammar corpus with revisions and licenses is maintained
separately. The C# pair is the first comparison target, but its upstream
grammar is not currently importable or cleared for redistribution. See
[grammar import](importing-grammars.md) for the importer subset. Candidate
selection is not a completed comparison.

## Result reporting

For each completed scenario, record:

- exact grammar and hand-built-language revisions, licenses, and MPS versions;
- importer outcome and unsupported source constructs;
- the independent expected semantic facts and observed results on both sides;
- focus/selection, undo, exact export, and reload outcomes, each reported separately;
- resulting reusable annotation/generator work and any parser or mapping issue.

Keep the bounded fixtures reproducible and independent of mutable upstream
branches. A successful build or matching exported text does not establish
editor usability or source-semantic preservation.
