# Protected regeneration

**Tools > Preview Protected Regeneration...** reviews generated structure,
editor and textGen roots together before changing an existing language.
It is the protected alternative to the original two-step import actions.
Use the MPS and Java runtime pinned in the [build catalog](../gradle/libs.versions.toml).

## Workflow

1. Save/commit your work. Create the target language named by the grammar and
   its editable structure, editor and textGen aspects.
2. Enable **Save transient models**, then build the grammar. For first-time
   bootstrap, follow the [core guide](metabnf-base.md).
3. Select the final transient model, then choose
   **Tools > Preview Protected Regeneration...**.
4. Select the default vanilla profile or one of the grammar's generation
   profiles. Review the fingerprint, decisions and any conflicts.
5. Approve only the intended ownership and changes. Check/rebuild the target
   language afterward. Cancellation does not change models.

The preview reports `CREATE`, `ADOPT`, `UNCHANGED`, `UPDATE` and `REMOVE`.
Existing unowned roots are adopted only when correspondence is unique and
their semantic content exactly matches fresh generation. Adoption preserves
their node and declaration identities. Different or ambiguous content blocks
the entire apply; it is not overwritten or silently treated as an extension.

## Ownership and extensions

A managed `GenerationLedger` root is stored beside the grammar. Each
`GeneratedArtifact` records its persistent source, target, correspondence key,
implementation decision and exact ownership baseline. The ledger also records
the source/profile fingerprints and generator/toolchain versions. Its dedicated
editors make provenance inspectable; do not casually edit managed baselines.
Ledger roots are excluded from grammar generation.

Ownership is **whole-root**, including children and references. Put handwritten
extensions in separate, uniquely identifiable roots, not inside an owned
concept, editor or text generator. Unrelated roots are preserved. An edit
inside an owned root produces `MBNF_GENERATED_EDIT` and blocks replacement.
Resolve the edit deliberately or restore the generated baseline, regenerate,
and inspect a new preview. There is no force-overwrite button.

Updates retain corresponding root and named-declaration identities. Uniquely
matching unchanged child trees can retain identities too; new elements receive
deterministic IDs. Ambiguous legacy correspondence, identity collisions,
unresolved/transient references and referenced removals are rejected before
persistent mutation. Do not assume arbitrary handwritten subtree merging,
rename inference, or preservation of every anonymous editor cell's identity.
An entirely empty generated input is rejected rather than interpreted as
permission to delete a language.

Unchanged semantic output under the same profile/toolchain leaves target
trees and ownership baselines unchanged, even when a fresh generation uses
different transient IDs. Changed toolchain/ledger versions require explicit
migration review; they are not automatically adopted as compatible.

## Native provider API

The native BaseLanguage service is `metabnf.regeneration.ProtectedRegeneration`.
Through the compiled `metabnf` module, UI and native providers call the same API:

```java
Preview preview = ProtectedRegeneration.preview(grammar, generatedRoots, targetModels, profile);
preview.fingerprint();
preview.decisions();
preview.conflicts();
preview.applicable();
ProtectedRegeneration.apply(preview);
```

Here `profile == null` selects the default vanilla profile. Non-null profiles
must belong to the grammar and pass shared profile inspection. Inputs are native
nodes/models: use retained **final** generated roots and all corresponding
target aspects together. The source grammar and affected models must be editable
and backed by modules supporting persistent dependency metadata.

Build again after source or profile edits before previewing. Source tracing
proves correspondence, not freshness of retained output: previews fingerprint
the inputs supplied now, not a generation-time source snapshot.

Compute previews under read access. Display/review them outside model access,
then apply under one bounded MPS command. `apply` recomputes the fingerprint and
preflight; source, profile, target, ledger or generated-input changes reject a
stale plan before mutation. Preview objects are in-process plans, not a durable
cross-session interchange format. Regenerate/repreview after reopening.

Apply updates ownership, references, model imports and module dependencies;
it does not itself save or compile. Providers must persist the affected source
and target models and their module descriptors through supported MPS APIs.
The Tools action does this after a successful apply. Existing transient-import
cleanup is reused; generated targets must not depend on retained transients.

MPS commands are **not transactions**. Expected conflicts/staleness are checked
before mutation, but an unexpected mutation, dependency-update or save failure
can leave partial changes. Inspect the ledger and all affected aspects before
retrying. Desktop command changes participate in ordinary MPS undo where
supported; there is no cross-process, filesystem-save or automatic rollback
guarantee. Keep a version-control checkpoint.

## Coverage and limits

```powershell
.\gradlew.bat regenerationTest --console=plain
.\build\mopsw.cmd test 'metabnf.editor.tests.regeneration@tests' --json
```

Nine native `NodesTestCase` scenarios cover reviewed adoption, repeat/fresh
generation, stale plans, generated edits, extension survival during an update,
ambiguous/conflicting legacy roots, unavailable profiles and non-grammar inputs.
They use real temporary MPS modules. Three native `BTestCase` tests check order-independent
metadata fingerprints, distinct scalar types and rejected invalid map keys.
CI enforces their exact inventory alongside the three native editor tests.
The isolated smoke pipeline additionally exercises legacy import, reviewed
adoption, fresh protected creation and repeated generation of all Demo aspects,
reference cleanup, native constraints, subsequent compilation and unchanged
generation after persistence/process reload.

This is protection/provenance for the current basic generator, not delivery of
the future interactive flag, optional-group, list, block or expression policies.
Grammar Cells remains unavailable until a compatible backend is verified.
Native checks, generation, compilation and any applicable migration checks are
separate gates; this repository does not currently have a CI normalization/
dirty-files gate. The original import actions remain available and retain their
documented append/move behavior; they do not confer protected ownership.
