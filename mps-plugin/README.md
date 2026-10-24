# MetaBNF Parser Bridges for MPS 2026.1

Install the MetaBNF module library from the distribution's `metabnf` directory,
copy this entire plugin directory into your MPS installation's `plugins`
directory, and restart MPS.

Use **Tools > Import Grammar into MetaBNF...** to import an ANTLR `.g4` or Rascal
`.rsc` grammar into an editable project model using bundled Java tools.
**No Python or separately downloaded parser JAR is needed for grammar import.**

Read the [step-by-step import guide](docs/importing-grammars.md), including
supported subsets and failure behavior. The [ANTLR](antlr-bridge/README.md)
and [Rascal](rascal-bridge/README.md) guides describe optional legacy
source-model/export utilities, which still require Python.

Keep `lib`, `tools` and `third-party` together. MetaBNF code remains
Apache-2.0 (`LICENSE`); bundled tools retain their own licenses.
[Third-party notices, license texts and corresponding sources](third-party/README.md)
are included and must be retained when redistributing.
