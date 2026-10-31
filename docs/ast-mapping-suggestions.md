# AST mapping suggestions

## Decision and scope

AST mappings describe semantic intent, not just syntax. Grammar names and MPS
metamodel information can identify **structurally compatible candidates**, but
cannot establish that a token denotes a name rather than a reference, that an
alternative deserves a separate concept, or that a wrapper should disappear.
Use suggestions as reviewable configuration, never as an implicit import policy.

`rascal-bridge\mapping_suggestions.py` is an opt-in developer CLI shared by the
Rascal and ANTLR source-model bridges. It reads their common grammar XML
interchange, a target metamodel JSON snapshot, and optional explicit mappings.
It writes a review report; it does not edit an MPS model, invoke generation,
modify a mapping file, or participate automatically in either importer.
Existing source import/export commands and mapping files work independently.
A target language and a template containing the selected concepts and roles
are still necessary. A persistence registry alone is not a metamodel: it lacks
complete inheritance, property types, rootability and cardinalities.

## Inference boundary

| Case | Outcome |
| --- | --- |
| One concrete concept with the same short name, ignoring case only | Suggest the concept; start targets must be rootable |
| Explicit concept, property source or child role | Preserve that exact field, even when invalid; diagnose rather than repair |
| Missing fields in a partial explicit rule | Suggest additions without replacing any explicit key |
| Exactly one lexical occurrence and one same-name unconstrained string property | Suggest a token property if no compatible token-node route competes |
| Token mapped to its own concept | Suggest `self` only for one declared unconstrained string property; inherited bookkeeping properties do not count |
| Child with one compatible containment | Suggest the role using runtime assignability (including inheritance) and exact optional/multiple flags |
| Multiple concepts, multiple roles, property/node alternatives | Require a user decision; do not rank candidates by spelling, namespace or enumeration order |
| Optional/repeated token into a scalar property, repeated occurrences of one source rule | Require a decision; selectors cannot distinguish occurrences or aggregate scalar values |
| Grammar alternatives, priorities, associativity, non-layout separated lists, nested cardinalities, unsupported constructs | Diagnose; do not flatten, distribute or synthesize concepts |
| Constrained strings, numbers, enums, booleans, conversions/defaults | Require explicit property mappings; structural review does not prove value validity |
| Required references or explicit reference policies | Diagnose a separate resolution decision; no resolver or symbol matching |

A single-branch `choice` wrapper is not ambiguity. Literal punctuation, empty
symbols and layout do not create AST nodes. Rascal repetition wrappers with
layout-only separators retain the repeated element's cardinality. Lexical rule bodies are atomic
value sources, not a basis for deriving target datatype semantics. Only rules
reachable from start rules or explicitly configured rules need node mappings;
a token consumed as a property does not need its own concept mapping.

Exact cardinality matching is intentionally conservative: `?` is optional
single, `*` optional multiple, `+` required multiple, and a bare occurrence is
required single. A broader target role is not automatically preferred. Multiple
source rules feeding one role need review for ordering and combined cardinality.
A required containment without a source is also a diagnostic.

These rules establish compatibility only within the snapshot and supported tree
mapper. They do not prove language equivalence, custom MPS constraints, valid
reference scopes, or application semantics. Even a diagnostic-free report needs
human semantic review and native target-model validation before adoption.

## Export target information with Code Mode

Use the project's MPS/JBR versions and worktree-local mops wrapper. In a copied
build directory, check that the wrapper's MPS home, Java home and project root
all point into the intended worktree. Prepare the parser adapter before opening
the daemon; its JAR supplies Java classes referenced by native language models.

```powershell
.\gradlew.bat prepareParserBridge --offline --console=plain
.\build\mopsw.cmd make module Demo metabnf
.\build\mopsw.cmd code run rascal-bridge\export_mapping_metamodel.groovy | Set-Content -Encoding utf8 build\target-metamodel.json
```

The exporter uses `project.read` and MPS OpenAPI runtime concept metadata. Set
its `anchors` list to one qualified concept per target language. Include all
candidate target languages, not merely the language you expect to win. It
exports all their class concept declarations (including abstract classes
for explicit-target diagnostics), declaration references as identities,
inherited properties, declared-property flags, rootability, containments,
reference requirements and assignability to selected concepts/link targets.
Unloaded/invalid declarations fail export. Build the target languages first;
do not infer from partially loaded targets. The CLI accepts UTF-8 and BOM-marked
UTF-8 snapshots, including current PowerShell output redirection.

`tests\mapping-suggestions\demo-metamodel.json` is a repeatable native export of
Demo. Regenerate and review it when Demo changes. It is not a serialized MPS
model and cannot replace the import template.

## Rascal example

The Rascal interchange fixture contains Program, Statements, Assignment and
the IDENTIFIER/NUMBER lexicals. The corresponding source module is
`tests\mapping-suggestions\MappingSample.rsc`. For a supported Rascal source
module, obtain interchange using the existing exporter:

```powershell
python rascal-bridge\import_rascal_file.py `
  --rascal-jar build\rascal\rascal-0.43.0.jar `
  --input tests\mapping-suggestions\MappingSample.rsc --output build\mapping-rascal.xml
python rascal-bridge\mapping_suggestions.py `
  --grammar build\mapping-rascal.xml --metamodel build\target-metamodel.json `
  --explicit tests\mapping-suggestions\rascal-decisions.json `
  --output build\rascal-mapping-review.json
```

The explicit decisions select Identifier token properties and NUMBER's
NumberValue self property because Demo uses constrained datatypes. Suggestions
supply three rule-to-concept associations and three containment associations.
The resulting mapping matches `tests\rascal-bridge\demo-ast-mapping.json`.
Statement repetition uses `+`, matching Demo's required-multiple Statement role.
The existing `demo-language-grammar.xml` fixture uses `*`; review explicitly
reports that mismatch while preserving its full explicit mapping unchanged.
The explicit workflow still supports its empty-list behavior; the advisor does
not reinterpret or silently normalize it.

## ANTLR example

Use the same metamodel and decision boundary. The representative ANTLR grammar
uses single-character lexer rules so its grammar interchange is within the
bridge's supported grammar-export subset. Source-model parsing and grammar
interchange have different feature boundaries; a grammar that parses text is
not necessarily exportable for suggestions.

```powershell
.\gradlew.bat prepareAntlr --offline --console=plain
& "$env:JAVA_HOME\bin\java.exe" --class-path build\antlr\antlr4-4.13.2-complete.jar `
  antlr-bridge\src\AntlrBridge.java grammar `
  tests\mapping-suggestions\MappingSample.g4 program build\mapping-antlr.xml
python rascal-bridge\mapping_suggestions.py `
  --grammar build\mapping-antlr.xml --metamodel build\target-metamodel.json `
  --explicit tests\mapping-suggestions\antlr-decisions.json `
  --output build\antlr-mapping-review.json
```

The result matches `tests\antlr-bridge\demo-mapping.json`, including lowercase
parser rule names and uppercase lexical names. The native ANTLR interpreter
test compares the mapped AST against that explicit configuration for one and
multiple assignments. Rascal tests compare the same concepts, properties,
containment roles and ordering in memory through the shared production mapper.

## Review and adopt

Reports separate `suggestions` (additions only), `mapping` (explicit values plus
additions), `diagnostics`, and input `provenance`. Exit status 0 means no
structural diagnostics; status 2 means review or invalid input. Diagnostic
reports can contain incomplete or invalid mappings: **do not pass the report
itself to an importer**. Resolve diagnostics and review semantic choices first.
To write a separate reviewed mapping:

```powershell
python -c "import json,pathlib; r=json.loads(pathlib.Path('build/rascal-mapping-review.json').read_text(encoding='utf-8')); assert not r['reviewRequired']; pathlib.Path('build/reviewed-mapping.json').write_text(json.dumps(r['mapping'],indent=2),encoding='utf-8')"
```

Pass that file via the existing source import command's `--mapping` option;
the importer does not know or care whether its configuration was hand-authored
or reviewed from suggestions. The advisor does not require existing mapping
files to adopt a different format. Explicit keys are authoritative, including
literal values and metadata. Empty/missing field dictionaries allow additions;
there is no suppression/deletion directive.

## Keeping mappings valid

Treat a reviewed report as a lock alongside the authored mapping:

1. Re-export grammar and target information after either source changes.
2. Re-run the advisor with the authored mapping and `--previous` pointing to
   the reviewed report. Compare against a different output path.
3. Review `stale-input` even if names still match. Fingerprints include grammar
   structure and exported declaration identities, property kinds, assignability,
   role targets and cardinalities. Same-name declaration replacement is drift,
   not authorization to retarget.
4. Review specific stale rule/concept/property/role/source diagnostics. Renames
   and removals require authored edits; no fuzzy rename or automatic repair.
5. Re-run semantic and target-language tests, review a native import, then retain
   the accepted mapping and report together.

Grammar fingerprints ignore formatting and attribute order. Snapshot JSON
object order is irrelevant; reordering arrays can conservatively require review.
Fingerprints cover the exported information, not arbitrary behavior, constraints,
datatype regex bodies, reference scopes or generation logic. An old snapshot
cannot detect a live language change: refreshing snapshots is a required step,
not an optional cache optimization. There is no live IDE watcher, automatic
migration, wrapper elimination, production-label mapping, semantic rename
tracking, target-language generation or template generation. A future native
review UI can use stable declaration identities and bounded source traces, but
must retain the same explicit-override and no-silent-retargeting contract.

## Validation

```powershell
.\gradlew.bat rascalBridgeTest antlrBridgeTest smokeTest --offline --console=plain
```

The portable suites discover the advisor tests automatically. They cover
concept/role ambiguity, scalar and containment cardinalities, datatype review,
inheritance, abstract/non-root targets, required references, stale names and
identities, authoritative explicit keys, deterministic reports and AST-shape
conformance. Native smoke tests independently exercise the existing explicit
mapping workflow and generated MPS editor behavior. CI runs clean generation
and tests; it does not define a separate migration/dirty-files normalization gate.
