# Vision and approach

MetaBNF connects textual DSLs with the JetBrains MPS world, where languages
are projectional: users edit an abstract syntax tree through projected
editors rather than a character buffer that a parser reads.

Many valuable languages already exist as textual DSLs with mature grammars,
parsers and tool chains. Rebuilding them by hand in MPS is expensive, and
the result tends to drift from the original language. MetaBNF reuses as
much of the textual language's existing definition as possible.

## Approach: import, then adorn

1. **Reuse existing parsers and grammars.** Import grammars from textual
   language tools into an EBNF-like *MetaBNF* grammar inside MPS. The
   [ANTLR and Rascal importers](importing-grammars.md) use the tools' own
   APIs rather than reimplementing their grammar formats. The original parser
   can also read existing source text and map it into MPS models.
2. **Adorn the grammar with projectional intent.** A grammar describes what
   is *valid text*. It does not describe how a construct should *feel* in a
   projectional editor. MetaBNF keeps the grammar as the single source of
   structure and lets you annotate it with
   [typed usability annotations](usability-annotations.md), such as flags,
   lists, optional keyword-led groups and projection choices. Each
   annotation has provenance, can be suppressed and produces diagnostics.
3. **Recognize patterns and preserve decisions.**
   [Profiles and enrichment](profiles-and-enrichment.md) propose annotations
   for common patterns and carry reviewed decisions across reimports when
   the source grammar evolves.
4. **Generate the MPS language.** MetaBNF generates the structure, editor
   and text-generation aspects from the adorned grammar.
   [Protected regeneration](protected-regeneration.md) keeps hand-written
   extensions separate from generated parts.

Your textual and projectional versions therefore share one grammar. The
textual parser remains available for import and round trips. The
projectional language gains editor behavior that a plain BNF-to-MPS
translation cannot infer.

## How this differs from related work

- [Ingrid](https://github.com/premun/ingrid) translates a BNF grammar directly
  into an MPS language. MetaBNF instead treats the imported grammar as a
  starting point to decorate before generation.
- [MetaBNF by Porsche](https://github.com/porscheofficial/MetaBNF) follows a
  similar idea, but focuses on editors rather than parsing and text
  round trips.

## Out of scope today

The current bridges support subsets of ANTLR and Rascal. They do not infer
AST mappings or resolve cross-references. Annotation-driven usability
transformations are only partly implemented. See the
[README status](../README.md#current-status) and the individual guides for
details.

Mixed editing, where users type text inside projectional editors with
help from language-server-style services or learned intent models, is a
separate interaction model. It is a research direction, not part of this
approach.
