# Grammar corpus compatibility

This corpus records observed outcomes for the current ANTLR and Rascal import
bridges. Grammar conversion and parsing with the original grammar are separate
capabilities: ANTLR conversion may reject a grammar that the original ANTLR
interpreter still parses. Rascal source input is parsed with a generated parser
only after the source grammar has been exported and converted. ANTLR export is
not supported or tested here.

## Compatibility matrix

| Bridge and pinned grammar | License and provenance | Grammar-to-MetaBNF conversion | Original-grammar source parsing and shape |
| --- | --- | --- | --- |
| ANTLR `muddb/muddb.g4`, start `db` | BSD-3-Clause; Tom Everett, 2018. Vendored unchanged at `tests/corpus/antlr/muddb.g4` with the full notice and disclaimer. Repository commit `b96e04db9d54bb313e542cc3e6ee913900a21520`; file SHA-256 `649c8d22cff7f46f22fd674779208e576ccc80ab02e397343fe6e552de809609`. | Accepted by the converter. The emitted MetaBNF model has `db`, `room`, and `roomno` rules. Native MPS import, reload, and reference resolution succeed, but native constraints report one `text` property violation; the smoke test pins this finding rather than claiming native validity. | Upstream `muddb/examples/minimal.db` at the same commit is fetched at test time (SHA-256 `d63b6845d91a930b6c453b7f16050b8fccc65cca89c74a471a6ad71413dd6563`; no file-level license notice found, so it is not vendored). It parses to a `db` root with two `room` nodes. Removing the required end marker is rejected. |
| ANTLR `romannumerals/romannumerals.g4`, start `expression` | BSD-3-Clause; Tom Everett. Commit `753536777d827ccc0c9b108531ea67375c2039ac`; file SHA-256 `2e14d619c2f7bebad278675eb8dd1f382b085c81798550dd0191368e47504356`. Retrieved by immutable revision in tests. | Rejected: left-recursive `thous_part` cannot be converted without losing precedence. | The original ANTLR interpreter accepts `XIV` as `expression` containing `thousands`; it rejects `A`. This does not imply grammar conversion support. |
| ANTLR `morsecode/morsecode.g4`, start `morsecode` | BSD-3-Clause; Tom Everett. Commit `753536777d827ccc0c9b108531ea67375c2039ac`; file SHA-256 `afe0e5e93284979aec62afca8f11839bd441e658f71b36da00fde0008b4a67ba`. Retrieved by immutable revision in tests. | Rejected: lexer command `-> skip` cannot be represented faithfully. | The original interpreter accepts `.- -...` as a `morsecode` root with two `letter` nodes; it rejects a single `.-` because the grammar requires multiple letters. |
| ANTLR `sexpression/sexpression.g4`, start `sexpr` | MIT; Robert Stehwien, ANTLR 4 port by Tom Everett. Commit `753536777d827ccc0c9b108531ea67375c2039ac`; file SHA-256 `ec80f6db4f969613308c9e878d193da7a171b3dc1bb466ee7fb5f53d4b7fa77c`. Retrieved by immutable revision in tests. | Rejected: lexer wildcard `.` is not represented by the converter. The grammar also uses `skip` and fragments. | The original interpreter accepts `(+ 1 2)` with a `sexpr` root and `list_` node; it rejects an unclosed list. |
| ANTLR `dot/DOT.g4`, start `graph` | BSD-3-Clause; Terence Parr and contributors. Commit `3e371d221c783c8e4b143409695da137d538521f`; file SHA-256 `8af8ff4af7cdd70213bbb9031b3729fccc36963b88ea4762df37f1655ce19c8b`. Retrieved by immutable revision in tests. | Rejected explicitly because the grammar declares `options` (`caseInsensitive`). | Source parsing is not included in this regression row. |
| ANTLR `xml/XMLParser.g4` + `xml/XMLLexer.g4`, start `document` | BSD-3-Clause; Terence Parr and contributors. Commit `753536777d827ccc0c9b108531ea67375c2039ac`; parser SHA-256 `3ad2a88464138a73e821b47bfd6236f456e090e8961b5a91014b4cf31410b5f7`, lexer SHA-256 `2d14f11025d66bec1d881caa5a3b15fde81bd35846c05c306694f742897b8762`. Retrieved by immutable revision in tests. | Rejected: the parser grammar's `tokenVocab=XMLLexer` makes this a split lexer/parser grammar, not a self-contained combined grammar. | The one-file bridge does not run this split grammar as an original source parser. |
| Rascal `lang::json::\syntax::JSON` | EPL-1.0; CWI, 2009-2015. Commit `74ebe127af6db4b1204e0c46a5bcb755e3f204e6`; file SHA-256 `13730d6adab98ddc52035159fffbddfa0f151babfca0c0aa473a4e7042ee035f`. The source's EPL header identifies the license. Retrieved by immutable revision in tests. | Rejected by the Rascal exporter with `Unsupported Rascal grammar symbol`; the diagnostic does not identify which source symbol triggered it. The grammar contains lexical lookahead and separated repetitions, both outside the supported conversion contract. No MetaBNF model is produced. | No language-source parse is claimed because grammar conversion did not complete. |
| Rascal `lang::logic::\syntax::Booleans` | EPL-1.0; CWI, 2009-2015. Commit `74ebe127af6db4b1204e0c46a5bcb755e3f204e6`; file SHA-256 `ca95a8d9d3bd87c2067ac92a1dff174708dee8532b4f69ccd0f34260447ea6d2`. The source's EPL header identifies the license. Retrieved by immutable revision in tests. | Rejected by the Rascal exporter with `Unsupported Rascal grammar symbol`; the diagnostic does not identify which source symbol triggered it. The grammar declares precedence/associativity and extends standard grammar modules; these semantics/dependencies are not claimed as supported. | No language-source parse is claimed because grammar conversion did not complete. |

## Accepted Rascal control and native validation

`tests/rascal-bridge/GrammarCoverage.rsc` is an in-repository regression control,
not an upstream corpus member. The Rascal source importer accepts it, its grammar
converts to MetaBNF and back to interchange, and generated Rascal parsers accept
`alpha, beta` while rejecting `alpha,,beta`. The expected parse-tree root is
`Program`. `rascal-bridge/test_upstream_rascal_corpus.py` pins these outcomes and
the grammar-model round trip. `tests/smoke/BundledGrammarImportTest.java` imports the Rascal control and the
vendored MudDB grammar into native MPS and reloads both models. The Rascal
control passes native constraints; MudDB references resolve, while its native
`text` property constraint finding is asserted explicitly.

The regression subset runs in `antlrBridgeTest`, `rascalBridgeTest`, and
`smokeTest`. Upstream files used only for tests are fetched from immutable commit
URLs and checked against SHA-256 digests; downloads are cached under ignored
`build/corpus-validation`. Only the BSD-3 MudDB grammar is vendored, and its
complete license notice and attribution remain in the file. The MudDB sample
input has no verified file-level redistribution grant and is fetched rather
than committed. Upstream candidates without a verified file-level license are
not included in this corpus.

These outcomes establish bounded compatibility evidence, not general ANTLR or
Rascal compatibility. Unsupported grammar constructs remain explicit failures;
this corpus does not broaden importer semantics.
