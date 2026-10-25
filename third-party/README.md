# Bundled parser tools: redistribution and source access

MetaBNF's original code remains Apache-2.0 (`MetaBNF-LICENSE`). Third-party
components are **not relicensed** under Apache-2.0. No upstream endorsement
is implied. Their licenses, disclaimers, copyright notices and applicable
patent terms continue to apply.

In a distribution, the complete legal/source directory is
`metabnf/languages/mbnf/parser-bridge/third-party`. The paths below are relative
to that directory. A copy of this guide at the library root is only a pointer;
the accompanying source JARs and licenses remain with the language module.

The language module distributes unmodified ANTLR 4.13.2 complete and Rascal 0.43.0
distribution JARs in `tools/`. Tools run in separate Java processes, not the
IDE/module classloader. MetaBNF's exporter/importer glue is separate
Apache-2.0 code. The ANTLR bridge JAR is built from this repository's
`antlr-bridge/src/AntlrBridge.java`.

## License and source materials supplied with every module distribution

- `parser-components.tsv` inventories the identified shaded components,
  versions and license families. It includes components lacking embedded
  Maven metadata, including JUnit, Hamcrest, JDOM, LSP4J, Caffeine, Checker
  Framework, ASM, XZ and Zstd JNI.
- `licenses/` contains full supplementary upstream license texts and LSP4J's
  notice. `license-resources.tsv` records their upstream locations and
  SHA-256 hashes; changed content fails the build for review.
  The exact previously verified ASM text is retained in the source checkout's
  `third-party/licenses/ASM-LICENSE`: its upstream now returns an HTML bot
  challenge on CI. The same checksum is enforced, and its notice was
  cross-checked against the included ASM source artifact. Retaining it avoids
  accepting a challenge page or weakening redistribution checks.
- `notices/<artifact>/` preserves each original archive's license, notice
  and Maven metadata paths without merging conflicting filenames.
- `source-headers/` reproduces original copyright/license headers from Java
  sources, including BSD notices omitted from some binary JARs.
- `reference-artifacts/` includes the original component binaries and
  corresponding source JARs. These are legal/source reference materials,
  **not additional runtime classpath entries**. Typepal has no separate
  published source classifier: its original JAR contains its Rascal sources
  and license documentation.
- `sources/rascal-0.43.0-sources.jar` supplies the corresponding Rascal Java
  sources; the runtime JAR itself contains the Rascal library sources.
  Rascal's upstream source is also available at
  <https://github.com/usethesource/rascal/tree/v0.43.0>.

Rascal is primarily BSD-2-Clause but retains older EPL-1.0 files. JUnit is
EPL-1.0. LSP4J offers EPL-2.0 or BSD-3-Clause; both its notices and corresponding
sources are preserved. The package supplies the EPL texts and covered sources
directly, not just a promise that they are available elsewhere. Any future
changes to covered components must preserve their required licensing/source
availability; do not label third-party modifications as Apache-only.
Rascal is distributed unchanged, including its upstream Typepal relocation.

Other included families include BSD, MIT, Apache-2.0, Unicode-3.0 and 0BSD;
component-specific and embedded native-code notices must be retained.
Read the supplied upstream texts for the actual terms rather than treating
this summary or the inventory as a replacement license.

## Updating tools

Update pinned versions, tool checksums, component inventory, source artifacts,
and license-resource hashes together. Inspect embedded Maven metadata **and
actual shaded packages**: the former alone omits dependencies. For this Rascal
release, ASM 9.9.1 was identified by comparing its `ClassReader.class` bytes
with upstream Maven artifacts. ICU's internal Maven component metadata is
covered by the original ICU4J binary/sources, rather than distributed again
as independent runtime artifacts.

Regenerate Gradle dependency locks, rebuild the legal directory, inspect all
new license families and source coverage, and run the packaged-tool and native
import regressions before publishing. Never strip this `third-party/`
directory from a redistributed language module. It deliberately adds download/archive
size to make copyright notices and corresponding sources available offline.
