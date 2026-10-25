# MetaBNF basics and actions

MetaBNF describes a grammar in MPS and generates an initial MPS language:
structure, projectional editors and text generators. You can author a grammar
directly or import a supported ANTLR/Rascal grammar, then decorate it.
The implementation is a prototype for basic cases, not a production-ready
converter for arbitrary textual languages.

## Setup

Use the **JetBrains MPS version pinned in the
[build version catalog](../gradle/libs.versions.toml)**. Save existing work before upgrading; if MPS
reports pending migrations, run **Run Migration Assistant** through
**Find Action** (Ctrl+Shift+A), then rebuild.

### Work in this source project

Run `.\gradlew.bat prepareParserBridge` once from the repository root
(`./gradlew prepareParserBridge` on Linux/macOS). This downloads and prepares
the pinned parser dependencies under `languages\mbnf\parser-bridge`; Java 25
is needed to run Gradle. Repeat after changing bridge code or tool versions.
The normal Gradle `build` and `assemble` tasks also prepare these dependencies.

Open this repository's existing MPS project. Rebuild `metabnf`,
`metabnf.aspectgen`, and `GenPlan` in Logical View. The grammar import actions
are part of **the existing `metabnf` language's plugin aspect**, alongside
the generated-language import actions. There is no second project, and
**nothing to copy into the IDE's plugins directory**. MPS loads/reloads the
native actions when the language is built.

If you prepared dependencies while MPS was already open and it has not
refreshed them, reopen the project and rebuild `metabnf`.

### Use a packaged distribution

Extract the complete distribution ZIP and add its `metabnf` directory as
an MPS project library. Keep the language's `parser-bridge` directory beside
its descriptor and generated classes. It contains the small Java adapter,
isolated tools, and legal/source materials. Do not install it as an IDE
plugin or copy just the adapter JAR. Open a project using MetaBNF so its
native plugin aspect can load.

If an earlier build's **MetaBNF Parser Bridges** IDE plugin was installed,
disable/remove that old plugin and restart MPS to avoid stale/duplicate menus.

## Author a grammar

In an editable solution model, add `metabnf` to **Used Languages** if needed
and create a grammar root through **New Root**. Open
`mbnf.sandbox.Demo` for a working example.

Set the `language` field to the name of the language you intend to generate,
for example `Demo`, and choose its `root` rule. Add named rule groups and
rules using normal MPS completion (Ctrl+Space) and structural editing.
Reference cells select existing rules; they are not free-text identifiers.

| Grammar element | Purpose |
| --- | --- |
| Nonterminal rule | Ordered sequence of terms; produces a structured construct |
| Choice rule | Alternatives referring to nonterminal rules |
| Terminal rule | A named lexical value with a regular expression |
| Enum rule | A set of literal lexical values |
| Keyword | Fixed literal text in a rule |
| Nonterminal/terminal reference | Refer to another rule; name and arrange the occurrences in their owner |
| Nonterminal cardinality | Exactly one, optional, zero-or-more or one-or-more; repeated references can have a separator |
| `Name` and `IdReference` | Existing naming and reference decorations; these are distinct from automatic symbol-resolution inference |
| `Flag` | Existing flag term representing optional keyword intent |
| Indentation/newline decorations | Existing formatting hints used by the basic generator |

For example, Demo contains `Assignment ::= <Identifier> := <Expression> ;`
and a repeated `Statements ::= <Statement>+`. The editor renders grammar
notation, but you edit native nodes, not a plaintext grammar file.
Use MPS **Check Model** and resolve errors before generation.

Alternatively use [ANTLR/Rascal grammar import](importing-grammars.md).
Import creates a MetaBNF grammar; it does not create a target language module,
populate its aspects or infer source-to-AST mappings. After import, an optional
enrichment preview can attach usability metadata without changing syntax.

## Record usability intent

Create a `UsabilityAnnotations` root and select its grammar. Add flag, list
or optional-group annotations through completion. Edit their target references,
origin, evidence and suppression using the dedicated projectional editors.
`mbnf.sandbox.UsabilityFixture` demonstrates the layout.

Use authored intent for deliberate decisions, inferred intent for supported
recognition, and suggested intent for proposals. Inferred/suggested entries
need evidence; suppression records their rejection without deleting it.
Authored annotations cannot be suppressed. Lists target an already repeated
nonterminal reference; optional-group endpoints are ordered terms of one rule.

These annotations are **metadata only today**: they do not change generated
structure/editors/textGen. **Tools > Analyze and Enrich Grammar...** recognizes
supported patterns in manual or imported grammars and previews metadata changes.
**Tools > Configure Generation Profile...** creates/inspects projection-scoped
capability selections. **Tools > Transfer Enrichment Metadata...** conservatively
transfers author decisions to a separately imported replacement.
See [Profiles and enrichment](profiles-and-enrichment.md) for workflows,
capability IDs, the native Inspector, stale-preview rejection and the explicit
Grammar Cells compatibility blocker. Structural lowering and interactive
editor-backend delivery remain later work.
See [Typed usability annotations](usability-annotations.md) for complete
authoring rules and inspection diagnostics. Editors allow intermediate invalid
states; use shared-service inspection to diagnose intermediate invalid metadata.

## Generate an MPS language

Use a new/disposable target language first. **The generated-aspect workflow
moves generated nodes into real language aspects; it is not a safe merge of
arbitrary hand-maintained aspect contents.** Save/commit existing work first.
For reviewed adoption and updates of existing generated roots, use
[protected regeneration](protected-regeneration.md) instead of the original
append/move import actions below.

1. Create a language in Logical View with the same name as the grammar's
   `language` field. Ensure its structure, editor and textGen aspects exist.
   Keep the required MetaBNF generation-plan modules available.
2. Turn on **Save transient models** in MPS generation settings.
3. Build the solution model containing the MetaBNF grammar. For a fresh target,
   the first build may fail because generated target concepts do not exist
   yet; see the bootstrap procedure below.
4. Select/open the **last transient model** for that grammar in Logical View,
   not the original grammar or an intermediate transient step.
5. Choose **Tools > Import Generated Language** to populate structure.
6. With the same final transient model selected, choose
   **Tools > Import Remaining Language Aspects** to populate editor and textGen.
7. Check/rebuild the target language. Create a sandbox model using it and review
   the resulting structure, editors and textual output before extending it.

The final model contains target-injector metadata identifying the language
and virtual-package prefixes used for routing. The supported actions derive
their destinations from that metadata; they do not ask you to pick a target.
Their importer retargets generated references and removes unused transient
dependencies. Changing the target name without updating/rebuilding the grammar,
or selecting the wrong transient step, does not produce a valid import.

## All MetaBNF Tools actions

Action availability is context-dependent. Grammar-file imports need an open
MPS project, not a selected grammar/model. Generated-aspect actions need a
model context, normally the final transient model described above.

| Action | What it does and when to use it |
| --- | --- |
| **Import Grammar into MetaBNF...** | Choose ANTLR or Rascal, source file, editable target model and language name. Java-only; existing grammars are never replaced. |
| **Import ANTLR Grammar into MetaBNF...** | Direct ANTLR `.g4` entry point; also asks for a parser start rule. Same validation/native import as the combined action. |
| **Import Rascal Grammar into MetaBNF...** | Direct Rascal `.rsc` entry point using its declared start sort. Same native importer. |
| **Import Generated Language** | From a final transient model, import generated structure into the language identified by its target injector. First supported generation-import step. |
| **Import Remaining Language Aspects** | From the same final transient model, import editor and textGen after structure. Second supported step. |
| **Preview Protected Regeneration...** | Review all generated aspects together, adopt semantically identical legacy roots without changing identities, and apply ownership-protected updates. Requires the final transient model; conflicts block apply. |
| **Import to module** | Legacy experimental action: currently selects the repository's **Python** language in its implementation, rather than offering an arbitrary target-module chooser. Do not use it as the general generation workflow. |
| **Import to module (Test Version)** | Legacy Python-specific experiment: initially puts generated aspects together into `Python.structure`. Not a supported alternative for another target language. |
| **Fix language aspect structure** | Legacy companion to that test workflow: moves editor/textGen declarations from `Python.structure` into `Python.editor`/`Python.textGen`. It is **not** a generic repair of the selected language. |
| **Parser Bridge Utilities (legacy Python)...** | Opens the optional source-model/export utilities described below. Its grammar-import choices redirect to the native Java importer. |

The three Python-language-specific generation actions are documented for
completeness, not recommended for normal use. They are unrelated to requiring
the Python interpreter: their fixed **target MPS language is named `Python`**.
Use the two supported generated-aspect actions for Demo or a new language.

### Optional parser bridge utilities

These older utilities require **Python 3.10+** (`python` on Windows,
`python3` elsewhere); override with the `metabnf.python` JVM property.
They use file dialogs, templates, mappings and temporary interchange, rather
than the native target-model grammar import. Save their `.mps` output under
an appropriate solution model root and reload it in MPS.

| Utility choice | Inputs and result |
| --- | --- |
| **Import Rascal grammar into MetaBNF** | Redirects to the native Rascal action; no Python required for this choice. |
| **Import ANTLR grammar into MetaBNF** | Redirects to the native ANTLR action; no Python required for this choice. |
| **Export MetaBNF grammar as Rascal** | Select a saved grammar model, output `.rsc`, and Rascal module name. Exports the supported subset, not every MetaBNF decoration. |
| **Import source model into MPS** | Select a Rascal/MetaBNF grammar, source text, Rascal distribution JAR, target-language model template and explicit AST mapping. Creates a mapped model of an already available MPS language. |
| **Import ANTLR source model into MPS** | Select a combined grammar, start rule, source text, complete ANTLR JAR, template and explicit mapping. ANTLR interpreters parse the text; user Java actions are not executed. |
| **Export MPS model as source** | Select a saved mapped model, grammar, mapping and output text. Serializes the supported mapped tree, not arbitrary MPS ASTs. |

The prepared tools live under `languages\mbnf\parser-bridge\tools` in a source
checkout, or the corresponding language directory in the extracted library.
Legacy JAR-selection dialogs can select those supplied JARs.
Mappings are explicit; cross-reference resolution, automatic mapping inference,
ambiguity handling and unrestricted grammar support are not implemented.
See the [ANTLR](../antlr-bridge/README.md) and
[Rascal](../rascal-bridge/README.md) guides for mapping examples and CLI usage.

## Troubleshooting

### Missing Tools entries

Run `prepareParserBridge`, reopen/rebuild `metabnf`, and ensure the MetaBNF
language is loaded in the current project. For packaged use, add the complete
module library. A separate IDE plugin is neither needed nor the intended fix.
Ctrl+Shift+A can find the actions by caption. Generation-import actions can
be hidden when no model context is selected; file-import actions should be
available with just an open project.

### Fresh target fails on missing generated concepts

The Demo bootstrap is tested with empty structure/editor/textGen aspects:
the first grammar build can report `package Demo.structure does not exist`.
Build the grammar again, select its latest final transient model (for example
`mbnf.sandbox.Demo@3_3`; the number varies), then use the two supported import
actions and rebuild Demo.

Do **not** blindly delete existing language aspects as a repair. If you need
to repeat this bootstrap, save/commit first and use a disposable target or
explicitly clear only generated contents you intend to replace. Deleting
structure/editor/textGen contents also deletes manual work. Import is not
documented as idempotent or a merge operation; inspect before repeating it.

### An imported grammar is rejected

Read the error rather than removing unsupported syntax blindly. The tools
reject constructs whose semantics cannot be preserved by the supported
conversion, such as precedence, actions/predicates and compound lexical rules.
See [supported subsets and failure behavior](importing-grammars.md).
Parsing/validation failures leave the target unchanged; unexpected native
creation/save failures can leave partial changes and must be inspected.

### Unexpected generated editor or parser behavior

Importing grammar syntax is not proof that MetaBNF generates an equivalent
parser or ideal projectional editor. Review grammar decoration, naming,
references, layout and generated output. Typed annotations do not yet apply
automatic usability transformations. Keep representative valid/invalid source
examples and target-language tests when extending the prototype.
