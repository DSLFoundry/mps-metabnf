# MetaBNF user documentation

Use the JetBrains MPS version pinned in the
[build version catalog](../gradle/libs.versions.toml). Start with the core guide; it covers setup, grammar
authoring, generation, every MetaBNF Tools action, and troubleshooting.

| Guide | What it covers |
| --- | --- |
| [MetaBNF basics and actions](metabnf-base.md) | Open/use MetaBNF, write and decorate grammars, generate languages, import generated aspects, action limitations |
| [Import ANTLR and Rascal grammar files](importing-grammars.md) | Native Tools actions, bundled Java tools, supported subsets, target models, cancellation and failures |
| [Typed usability annotations](usability-annotations.md) | Flag/list/optional-group intent, projectional authoring, provenance, suppression, validation and native service APIs |
| [Profiles and enrichment](profiles-and-enrichment.md) | Preview/apply pattern recognition, conservative reimport transfer, projection choices, native Inspector and backend compatibility |

For optional legacy source/model mapping and Rascal export, see the
[ANTLR bridge guide](../antlr-bridge/README.md) and
[Rascal bridge guide](../rascal-bridge/README.md).
Those workflows still require Python and explicit AST mappings; they are not
the Java-only grammar import path.

Features described as planned are not commands you can run today. In
particular, import does not infer AST mappings, apply annotation-driven
usability transformations, or automatically populate a generated language.
