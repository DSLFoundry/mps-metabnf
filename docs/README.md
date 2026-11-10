# MetaBNF user documentation

Use the JetBrains MPS version pinned in the
[build version catalog](../gradle/libs.versions.toml). Start with the core guide; it covers setup, grammar
authoring, generation, every MetaBNF Tools action, and troubleshooting.

| Guide | What it covers |
| --- | --- |
| [Vision and approach](vision-and-approach.md) | Why MetaBNF exists: reuse textual parsers, import to MetaBNF, adorn for projectional usability, generate |
| [MetaBNF basics and actions](metabnf-base.md) | Open/use MetaBNF, write and decorate grammars, generate languages, import generated aspects, action limitations |
| [AST mapping suggestions](ast-mapping-suggestions.md) | Opt-in structural suggestions, explicit decisions, ambiguity diagnostics and mapping drift |
| [Import ANTLR and Rascal grammar files](importing-grammars.md) | Native Tools actions, bundled Java tools, supported subsets, target models, cancellation and failures |
| [Typed usability annotations](usability-annotations.md) | Flag/list/optional-group intent, projectional authoring, provenance, suppression, validation and native service APIs |
| [Profiles and enrichment](profiles-and-enrichment.md) | Preview/apply pattern recognition, conservative reimport transfer, projection choices, native Inspector and backend compatibility |
| [Native editor interaction tests](editor-interaction-tests.md) | Generated Demo keyboard/action fixtures, caret/undo assertions, CI registration and failure diagnostics |
| [List, block, and trivia editing](list-block-editing.md) | Cardinality, explicit list/block policy decisions, trivia anchoring contract and current coverage limits |
| [Comparative MPS editor validation](comparative-editor-validation.md) | Observable behavior comparison protocol and verified generated/hand-built candidate matrix |
| [C# editor comparison](csharp-editor-comparison.md) | Authored fallback fixtures, semantic normalization, source verification and blocked native observations |
| [Protected regeneration](protected-regeneration.md) | Reviewed adoption/updates, ownership and extension boundaries, stable identities, preview/apply API and failure guarantees |

For optional legacy source/model mapping and Rascal export, see the
[ANTLR bridge guide](../antlr-bridge/README.md) and
[Rascal bridge guide](../rascal-bridge/README.md).
Those workflows require Python and reviewed AST mappings; they are not
the Java-only grammar import path. The opt-in advisor can suggest parts of a
mapping without changing either importer.

Features described as planned are not commands you can run today. In
particular, import does not implicitly infer AST mappings, apply annotation-driven
usability transformations, or automatically populate a generated language.
