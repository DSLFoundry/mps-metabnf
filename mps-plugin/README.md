# MetaBNF parser adapter for MPS 2026.1

This is the Java adapter used by native actions in the existing `metabnf`
language's plugin aspect. It is **not a separately installed IDE plugin**.
For a source checkout, run `prepareParserBridge` and rebuild `metabnf` in the
existing project. For a distribution, add its complete `metabnf` directory
as an MPS project library, retaining `languages/mbnf/parser-bridge`.

Use **Tools > Import Grammar into MetaBNF...** to import an ANTLR `.g4` or Rascal
`.rsc` grammar into an editable project model using bundled Java tools.
**No Python or separately downloaded parser JAR is needed for grammar import.**

Read the [step-by-step import guide](docs/importing-grammars.md), including
supported subsets and failure behavior. The [ANTLR](antlr-bridge/README.md)
and [Rascal](rascal-bridge/README.md) guides describe optional legacy
source-model/export utilities, which still require Python.

Read the [core guide](docs/metabnf-base.md) for all other MetaBNF actions.
Keep `lib`, `tools` and `third-party` together beside the language module. MetaBNF code remains
Apache-2.0 (`LICENSE`); bundled tools retain their own licenses.
[Third-party notices, license texts and corresponding sources](third-party/README.md)
are included and must be retained when redistributing.
