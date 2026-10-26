# Generation profiles and grammar enrichment

These are native metadata operations in the existing MPS project. Generation
consumes flag selections for the textual editor and Inspector form; enrichment
itself does not lower ASTs, rewrite mappings, or generate widgets. Build/setup
is described in [MetaBNF basics](metabnf-base.md).

## Preview enrichment

Use **Tools > Analyze and Enrich Grammar...** and select an editable grammar.
Review the preview, then choose **OK** to attach annotations or **Cancel** to
leave the model unchanged. The same preview is offered after a successful
ANTLR or Rascal import. Cancelling it does not undo the grammar import.
Manual and imported grammars use the same recognizer.

Recognition uses structure, not names:

| Structure | Result |
| --- | --- |
| Existing native `Flag` | Inferred flag decoration |
| Repeated nonterminal reference, including an explicit separator | Inferred list decoration |
| Optional reference resolving to one literal | Suggested flag interpretation |
| Optional reference to a keyword-led sequence with payload | Suggested optional group; retain absent/present-empty distinction |
| Finite distinct literal alternatives, including an optional reference to them | Suggested exclusive literal choice, not independent flags |
| Exact `head (separator head)*` helper structure | Suggested separated-list interpretation; do not collapse the helper AST |

Repeated modifiers remain lists, not booleans. Unsupported, cyclic, duplicate
literal alternatives and similar-looking nonmatching separated-list forms do
not receive those interpretations. Existing importer subset restrictions
remain unchanged.

Safe decorations are `Inferred`. Interpretations that could change node shape,
absence semantics, or source/model mapping are `Suggested` and carry
`mappingImpact` and evidence. **Approval records intent only**, not permission
for this operation to change the AST or mappings (the mapping work remains
[issue #5](https://github.com/DSLFoundry/mps-metabnf/issues/5)).
In the native annotation editor, change the origin to `Authored` to approve;
keep `Suggested` and set suppression to `true` to reject without losing evidence.
Authored annotations cannot be suppressed.

Applying enrichment again makes no changes to unchanged input. It refreshes
only its own inferred metadata, preserving authored overrides and suppressed
suggestions. Recognition keys are tool-owned correspondence metadata; do not
edit them. Stale annotations are retained with diagnostics rather than erased.
An edit between preview and apply rejects the preview; analyze again.

The Tools actions store metadata beside the selected grammar. The service also
accepts an explicit cross-model annotation set; consistently use the same model.
Separate metadata sets are never silently merged.

## Reimport without guessing correspondence

Import the replacement into a **fresh model**. Cancel its enrichment preview if
you intend to transfer previous decisions. Use **Tools > Transfer Enrichment
Metadata...**, select the old grammar, then the replacement.

The preview transfers only uniquely named, structurally identical rules and
locations, including referenced-rule structure, to an empty destination set.
It preserves authored intent, evidence and suppression and rebinds references
to replacement nodes. Any missing/ambiguous correspondence blocks the entire
transfer without changing either set. Rename/changed-shape cases and authored
optional-group ranges require explicit review/re-authoring; no name similarity
heuristic guesses their meaning. The old grammar and metadata are never removed.
Generation-profile implementation selections are not copied by this action.

## Configure a generation profile

Use **Tools > Configure Generation Profile...**. Choose `vanilla` or the explicit
`grammar-cells` profile. This creates a native `GenerationProfile` root; invoking
the action again displays its computed inspection. Profiles are version `1`.
The native root can also be created through **New Root**.

**Vanilla** declares the project's pinned MPS toolchain and the capability
descriptors below. See the [build version catalog](../gradle/libs.versions.toml)
for the selected platform and the profile's structured inspection for its
declared requirements.
**Grammar Cells is blocked**, not supported: the inspected local MPS-extensions
checkout targets a different prerelease platform than this project's pinned MPS.
No compatible Grammar Cells backend has been verified or bundled. Selecting
that profile produces `MBNF_BACKEND_UNAVAILABLE`, never a platform change or
silent fallback.

Add `ImplementationSelection` children using normal MPS completion:

- Choose projection `Textual`, `Form`, or `Table`.
- Choose scope `Occurrence`, `Rule`, or `Pattern`. Select a grammar target for
  occurrence/rule scope; leave it empty for a pattern-wide default.
- Choose the semantic pattern and enter `auto` or an explicit capability ID.

| Pattern | Textual default | Form/table policy |
| --- | --- | --- |
| Flag | `vanilla.keyword` | `vanilla.checkbox` |
| List | `vanilla.sequence` | `vanilla.vertical-list` |
| OptionalGroup | `vanilla.inline-group` | `vanilla.form-group` |
| LiteralChoice | `vanilla.literal-choice` | `vanilla.choice-field` |

The flag's `vanilla.keyword` and `vanilla.checkbox` descriptors are implemented
for Textual and Form, including explicit opposite selections. Form means the
same node's MPS Inspector, not a separate AST. Other entries, including Table
and `vanilla.form-group`, remain capability descriptors, not generated policies.
Explicit `grammar-cells.flag` / `grammar-cells.list` choices under vanilla are
incompatible errors. Unknown IDs, duplicate selections, stale targets and
unsupported profile versions are also diagnosed.

Resolution is deterministic: active projection's occurrence override, then
rule default, pattern default, narrow form/table policy, then profile-wide
textual default. `auto` releases that level to the remaining rules. Explicit
choices remain fixed when lower-priority defaults change. Textual/form/table
selections are independent and do not modify grammar syntax.

The generator consumes at most one profile beside the original grammar.
No profile selects vanilla flag defaults. Cross-model profiles can be resolved
through the service but are not discovered by generation. Native source traces,
not copied node IDs or names, connect intermediate flags to occurrence choices.
Regenerate after changing selections; profiles are not live editor switches.
See [interactive flags and groups](interactive-flags-and-groups.md).

Select a profile or selection in the projectional editor and open the MPS
**Inspector**. It computes implementation, origin, reason, alternatives,
requirements, profile/toolchain metadata and diagnostics; there is no separately
editable resolved plan. The current resolver exposes native flags/repetitions/enums and approved
semantic annotations. Suggested or suppressed interpretations cannot be resolved
as generation decisions. Approving a pattern enables capability selection
against its existing target, not a newly lowered semantic property.

## Shared APIs and automation

Classes are in the existing language module's Java adapter:

| Service | Operations |
| --- | --- |
| `metabnf.usability.GenerationProfiles` | `descriptor(id)`, `createProfile(model, grammar, id)`, `select(profile, scope, target, pattern, projection, implementation)`, `resolve(profile, occurrence, pattern, projection)`, `resolveAnnotation(profile, annotation, projection)`, `inspect(profile)` |
| `metabnf.usability.GrammarEnrichment` | `analyze(grammar, setOrNull)`, `apply(preview, metadataModel)`, `previewReimport(oldSet, replacementGrammar, destinationSetOrNull)`, `applyReimport(preview, metadataModel)` |

Discover these through the native module classloader (for mops,
`mops.runtime.requireClass('metabnf', qualifiedClassName)`), not a separately
installed IDE plugin. Use native read access for analysis/resolution and one
bounded command for apply/select/create. Do not nest access blocks. Save the
editable model when calling outside a provider that saves commands.

Analysis returns an immutable preview with source references, SHA-256 input
fingerprint, recognizer version, candidates, evidence, mapping impact and
diagnostics. Apply recomputes the preview before mutation; callers cannot forge
different candidate interpretations. Reimport has an independently fingerprinted
preview. Failures expose structured `code`, `severity`, `target`, `message` and
`remedy` in `UsabilityException.getDiagnostic()`. Model mutations are not
transactional if native creation/saving itself fails: inspect before retrying.

Resolution returns `implementation`, `origin`, `reason`, `alternatives`,
`requirements`, and `generationMetadata` with profile ID/version, MPS version,
dependencies and `capabilityOnly=true`. That marker describes the resolver's
output: resolving returns a descriptor and does not execute generation. It does
not mean every descriptor lacks a renderer. Both metadata root types are
excluded from generated ASTs; existing explicit mapping and round-trip workflows
continue to consume the original grammar.
