# Typed usability annotations

Usability annotations are native semantic metadata, separate from editor backend selection. The shared recognizer and
profile resolver are described in [Profiles and enrichment](profiles-and-enrichment.md).
Existing grammars need no migration or annotations. Generators explicitly drop
annotation-set roots. The vanilla generator supports existing flags and
approved whole-rule optional groups as described in
[interactive flags and groups](interactive-flags-and-groups.md). Metadata never
silently lowers flat ranges or rewrites parser mappings.

## Native schema

`metabnf.structure.UsabilityAnnotations` is a model root containing a mandatory
`grammar` reference and zero or more `annotations`. Keep one set per grammar
per metadata model. It may live beside the grammar or in another model in the
same repository. References point to actual native nodes, not names or paths.
Use a consistent metadata model; sets in separate models are not merged.

All concrete annotations extend abstract `UsabilityAnnotation`:

| Field | Meaning |
| --- | --- |
| `origin: AnnotationOrigin` | `Authored`, `Inferred`, or `Suggested`; defaults to `Authored` |
| `evidence: string` | Author explanation or recognition/source evidence; required for inferred and suggested intent |
| `suppressed: boolean` | Explicit rejection of inferred/suggested intent without losing its evidence |
| `recognitionKey: string` | Tool-owned stable structural correspondence for enrichment/reimport; leave empty for manual annotations |

`Authored` records an explicit author decision. `Inferred` records a supported
recognition; `Suggested` records intent still needing a decision. Suppression
is independent of those two non-authored origins, not deletion or a fourth
origin. An authored annotation cannot be suppressed: remove it to withdraw it,
or retain its inferred/suggested provenance when rejecting a recognition.
Accept a suggestion by updating its origin to authored and clearing suppression.
Enrichment respects these decisions without applying AST/mapping transforms.

| Annotation | Attachment and intent |
| --- | --- |
| `FlagAnnotation` | `target: Flag`; decorates the existing flag term, not a new boolean/keyword representation |
| `ListAnnotation` | `target: NonterminalReference`; requires existing `>*` or `>+` cardinality and reuses its separator |
| `OptionalGroupAnnotation` | `owner: NonterminalRule`, `first: ITerm`, `last: ITerm`; inclusive, ordered endpoints among the owner's terms |
| `PatternAnnotation` | Grammar-local `target`, typed `pattern` and `mappingImpact`; review a flag/list/group/literal-choice/expression-family interpretation without lowering AST nodes |

`OptionalGroupAnnotation.distinguishEmpty` records whether absent and
present-but-empty groups must remain distinct. The supported existing-child
route preserves this distinction. The annotation does not
introduce an AST node or change the grammar's cardinalities. Where the current
grammar cannot encode that distinction, a later explicit lowering/mapping
decision is needed. Endpoints reference term identities, so inserting terms
inside a range includes them; deleting/moving endpoints requires review.
One optional-group annotation is allowed per first endpoint within a set.

Expression `PatternAnnotation` values include literal, prefix, postfix, infix,
ternary, grouping, index-access, member-access, and layered candidates. They
also expose `operandRoles`, `precedence`, `associativity`, `wrappingPolicy`,
`replacementPolicy`, `deletionPolicy`, `focusPolicy`, and `foldingPolicy` for
review. Shape recognition never derives precedence, associativity, or a binary
fold from rule names or recursive structure. Authored operator annotations
must supply explicit non-negative precedence and associativity; larger numeric
precedence binds more tightly, and associativity applies only at equal
precedence. Equal-precedence operators with different associativity are always
grouped. Atomic operands also need an explicit precedence classification in
the helper API. Layered expressions must choose a left/right fold before binary
lowering. Candidate roles are structural suggestions, not semantic
declarations. Rendering follows the supplied AST and never rebalances it.

These expression fields are metadata only. The current profile resolver has
no installed expression-interaction backend and rejects approved expression
resolution with `MBNF_EXPRESSION_INTERACTIONS_UNAVAILABLE`. It does not claim
to generate precedence-safe editor actions; see the support matrix in
[Profiles and enrichment](profiles-and-enrichment.md).

Existing `Name`, `IdReference`, cardinality, separator, indentation, and newline
facilities remain authoritative and unchanged. No implementation/profile ID,
editor cell type, or structural-lowering policy is stored in these annotations.

## Shared native service

After building `metabnf`, the generated class is
`metabnf.plugin.UsabilityAnnotations`. UI code can call its static methods;
model-access providers can invoke the same class. Dedicated projectional editors
present the annotation set and all annotation kinds, with target-reference
completion, editable origin/evidence/suppression, and the optional group's
absent-versus-present-empty setting. There is no separate agent persistence
format. Import offers the same enrichment preview as manual grammar analysis.

Annotation headings are indented within the set; provenance, evidence, and
optional-group details are nested beneath their heading, with spacing between
annotations.

Open `mbnf.sandbox.UsabilityFixture` to explore these editors. Create a
`UsabilityAnnotations` root through the model's **New Root** menu, select its
grammar reference using completion, and add flag/list/optional-group entries
in the vertical annotations list using native completion. Reference cells
select existing grammar nodes rather than editing their names. Origins and
booleans use native value completion. Evidence is editable and may be cleared
for authored intent; inferred/suggested intent requires evidence.
The editors use normal MPS editing/undo. Semantic validation remains in the
shared service's inspection diagnostics; the editors do not prevent every
intermediate invalid state. Inference runs through the explicit preview/apply
workflow, not during typing.

| Operation | Signature |
| --- | --- |
| Create set | `createSet(SModel model, SNode grammar) -> SNode` |
| Inspect | `inspect(SNode set) -> Map<String, Object>` |
| Add flag | `addFlag(set, target, origin, evidence, suppressed) -> SNode` |
| Add list | `addList(set, target, origin, evidence, suppressed) -> SNode` |
| Add optional group | `addOptionalGroup(set, owner, first, last, distinguishEmpty, origin, evidence, suppressed) -> SNode` |
| Update provenance | `update(annotation, origin, evidence, suppressed)` |
| Remove | `remove(annotation)` |

API origin arguments are lowercase strings: `authored`, `inferred`, `suggested`.
The service serializes the native enum; do not construct its persisted value.
`createSet` registers the used language and any cross-model grammar import.
Updates preserve attachments and node identity. To change an attachment, add
the validated replacement first, then remove the old annotation in the same
command. To delete a whole set, use the provider's native root-removal operation.
Removal does not prune model imports that other nodes might still need.

Inspection returns `set` and `grammar` serialized references, `annotations`
records, and `diagnostics`. Each annotation record contains its `node` reference,
`kind`, `origin`, `evidence`, `suppressed`, `recognitionKey`, and its resolved attachment references;
optional groups also expose `distinguishEmpty`. A missing attachment is an empty
reference accompanied by a diagnostic, not a successful resolution.
Inspection reports malformed annotations and duplicates, including edits made
outside this service. An invalid set/grammar prevents inspection and throws.

### mops discovery and examples

Use the current mops version and this project's generated wrapper, with the
project's pinned MPS/Java runtime. See `mops examples runtime` and `mops code help`
for provider discovery and invocation. Do not open a second writer concurrently.

The manually authored `mbnf.sandbox.UsabilityFixture` model contains a small
Demo-style grammar with authored flag, inferred list, and suppressed suggested
optional-group intent. It is marked **Do Not Generate** because it is a metadata
fixture, not another generated language. Its native checks remain enabled.

Run this Groovy program through `.\build\mopsw.cmd code run <program.groovy>`:

```groovy
return project.read {
    def service = mops.runtime.requireClass('metabnf', 'metabnf.plugin.UsabilityAnnotations')
    def model = mops.lookup.requireModel('mbnf.sandbox.UsabilityFixture')
    def set = model.rootNodes.find {
        it.concept.qualifiedName == 'metabnf.structure.UsabilityAnnotations'
    }
    assert set != null: 'No annotation set in the fixture'
    service.inspect(set)
}
```

To modify the fixture through the same native contract:

```groovy
return project.command {
    def service = mops.runtime.requireClass('metabnf', 'metabnf.plugin.UsabilityAnnotations')
    def model = mops.lookup.requireModel('mbnf.sandbox.UsabilityFixture')
    def set = model.rootNodes.find {
        it.concept.qualifiedName == 'metabnf.structure.UsabilityAnnotations'
    }
    assert set != null: 'No annotation set in the fixture'
    def annotation = set.children['annotations'].find {
        it.concept.qualifiedName == 'metabnf.structure.FlagAnnotation'
    }
    assert annotation != null: 'No flag annotation in the fixture'
    service.update(annotation, 'authored', 'Explicit author decision', false)
    service.inspect(set)
}
```

These are native operations that persist actual model changes. Use serialized
references returned by inspection for subsequent agent operations, not
ambiguous presentations. Choose a capable discovered MCP provider instead if
available; it calls the same service under its native access boundaries.

## Diagnostics and access boundaries

Expected validation failures throw `UsabilityAnnotations.AnnotationException`;
`getDiagnostic()` returns `code`, `severity` (`error`), `target` (serialized
reference), `message`, and `remedy`. Targets are empty only when no attached
offending node exists, such as a null grammar argument. Clients must show the
diagnostic instead of treating rejection as success.

Stable codes are `MBNF_INVALID_SET`, `MBNF_INVALID_GRAMMAR`,
`MBNF_DUPLICATE_SET`, `MBNF_INVALID_TARGET`, `MBNF_LIST_CARDINALITY`,
`MBNF_INVALID_RANGE`, `MBNF_INVALID_ORIGIN`, `MBNF_EVIDENCE_REQUIRED`,
`MBNF_INVALID_SUPPRESSION`, `MBNF_DUPLICATE_ANNOTATION`,
`MBNF_INVALID_ANNOTATION`, and `MBNF_UNSUPPORTED_ANNOTATION`.
Unknown annotation implementations are not interpreted as supported intent.

Call inspection under repository read access, and mutations under a native
command on the owning repository. The service deliberately does not open,
nest, save, or commit commands. An IDE command participates in the host's undo
mechanism; an agent invocation does not promise a persistent undo history.
mops `project.command` saves after successful completion.

Expected attachment/provenance/duplicate errors are checked before attaching
or modifying annotation nodes. **Commands are not database transactions**:
unexpected native exceptions, saving failures, or later failures in a
multi-operation program can leave partial changes. They propagate, not become
success-shaped results. A caller must report the operation as failed, reinspect
the affected nodes/imports, and explicitly report any partial mutation before
retrying. Do not blindly retry a command or claim automatic rollback.

## Regression coverage

`.\gradlew.bat smokeTest` runs native checks and the annotation regression in an
isolated source copy. It covers resolved provenance, CRUD, invalid operations
without mutation, malformed-reference/cardinality/duplicate inspection,
cross-grammar rejection, cross-model imports, stable identities and native
save/reload. It adds metadata to the copied Demo and then runs the existing
generation/import/compile/reference and source-AST assertions unchanged.
`buildLanguages` additionally builds the unannotated checked-in languages.
The editor regression constructs the real native editor cell tree, checks
editable fields, reference cells and origin/boolean completion, and edits
evidence and the empty-group setting through property cells. Desktop
appearance, keyboard-event interaction, inference, and generated-language
backend behavior are not claimed by these tests.
