<?xml version="1.0" encoding="UTF-8"?>
<language namespace="metabnf" uuid="9c03c641-469f-49e7-aeed-44a3d19b7253">
  <models>
    <modelRoot contentPath="${module}" type="default">
      <sourceRoot path="${module}/languageModels" />
    </modelRoot>
    <modelRoot contentPath="${module}" type="java_classes">
      <sourceRoot location="rascal-shell-stable.jar" />
    </modelRoot>
  </models>
  <accessoryModels />
  <generators>
    <generator name="" generatorUID="metabnf#2504845739423494772" uuid="47b530dd-ebda-4923-bd60-37ece9820068">
      <models>
        <modelRoot contentPath="${module}" type="default">
          <sourceRoot path="${module}/generator/template" />
        </modelRoot>
      </models>
      <external-templates />
      <dependencies>
        <dependency reexport="false">1ed103c3-3aa6-49b7-9c21-6765ee11f224(MPS.Editor)</dependency>
        <dependency reexport="false">756e911c-3f1f-4a48-bdf5-a2ceb91b723c(jetbrains.mps.execution.settings)</dependency>
        <dependency reexport="false">18bc6592-03a6-4e29-a83a-7ff23bde13ba(jetbrains.mps.lang.editor)</dependency>
        <dependency reexport="false">c72da2b9-7cce-4447-8389-f407dc1158b7(jetbrains.mps.lang.structure)</dependency>
      </dependencies>
      <usedLanguages>
        <usedLanguage>b401a680-8325-4110-8fd3-84331ff25bef(jetbrains.mps.lang.generator)</usedLanguage>
        <usedLanguage>d7706f63-9be2-479c-a3da-ae92af1e64d5(jetbrains.mps.lang.generator.generationContext)</usedLanguage>
        <usedLanguage>13744753-c81f-424a-9c1b-cf8943bf4e86(jetbrains.mps.lang.sharedConcepts)</usedLanguage>
        <usedLanguage>b83431fe-5c8f-40bc-8a36-65e25f4dd253(jetbrains.mps.lang.textGen)</usedLanguage>
        <usedLanguage>9c03c641-469f-49e7-aeed-44a3d19b7253(metabnf)</usedLanguage>
      </usedLanguages>
      <usedDevKits>
        <usedDevKit>fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)</usedDevKit>
      </usedDevKits>
      <mapping-priorities>
        <mapping-priority-rule kind="strictly_before">
          <greater-priority-mapping>
            <generator generatorUID="47b530dd-ebda-4923-bd60-37ece9820068(metabnf#2504845739423494772)" />
            <external-mapping>
              <mapping-node modelUID="r:50538c2e-b1ef-4243-83a0-452ffc98ab52(metabnf.generator.template.main@generator)" nodeID="2504845739423494773" />
            </external-mapping>
          </greater-priority-mapping>
          <lesser-priority-mapping>
            <generator generatorUID="47b530dd-ebda-4923-bd60-37ece9820068(metabnf#2504845739423494772)" />
            <external-mapping>
              <mapping-set>
                <mapping-set-element>
                  <mapping-node modelUID="r:50538c2e-b1ef-4243-83a0-452ffc98ab52(metabnf.generator.template.main@generator)" nodeID="4698798192894150753" />
                </mapping-set-element>
                <mapping-set-element>
                  <mapping-node modelUID="r:50538c2e-b1ef-4243-83a0-452ffc98ab52(metabnf.generator.template.main@generator)" nodeID="513220601746103040" />
                </mapping-set-element>
                <mapping-set-element>
                  <mapping-node modelUID="r:50538c2e-b1ef-4243-83a0-452ffc98ab52(metabnf.generator.template.main@generator)" nodeID="7520678199446398919" />
                </mapping-set-element>
              </mapping-set>
            </external-mapping>
          </lesser-priority-mapping>
        </mapping-priority-rule>
        <mapping-priority-rule kind="strictly_before">
          <greater-priority-mapping>
            <generator generatorUID="47b530dd-ebda-4923-bd60-37ece9820068(metabnf#2504845739423494772)" />
            <external-mapping>
              <mapping-node modelUID="r:50538c2e-b1ef-4243-83a0-452ffc98ab52(metabnf.generator.template.main@generator)" nodeID="7520678199446398919" />
            </external-mapping>
          </greater-priority-mapping>
          <lesser-priority-mapping>
            <generator generatorUID="47b530dd-ebda-4923-bd60-37ece9820068(metabnf#2504845739423494772)" />
            <external-mapping>
              <mapping-set>
                <mapping-set-element>
                  <mapping-node modelUID="r:50538c2e-b1ef-4243-83a0-452ffc98ab52(metabnf.generator.template.main@generator)" nodeID="4698798192894150753" />
                </mapping-set-element>
                <mapping-set-element>
                  <mapping-node modelUID="r:50538c2e-b1ef-4243-83a0-452ffc98ab52(metabnf.generator.template.main@generator)" nodeID="513220601746103040" />
                </mapping-set-element>
                <mapping-set-element>
                  <mapping-node modelUID="r:50538c2e-b1ef-4243-83a0-452ffc98ab52(metabnf.generator.template.main@generator)" nodeID="7520678199446995695" />
                </mapping-set-element>
              </mapping-set>
            </external-mapping>
          </lesser-priority-mapping>
        </mapping-priority-rule>
        <mapping-priority-rule kind="strictly_before">
          <greater-priority-mapping>
            <generator generatorUID="47b530dd-ebda-4923-bd60-37ece9820068(metabnf#2504845739423494772)" />
            <external-mapping>
              <mapping-node modelUID="r:50538c2e-b1ef-4243-83a0-452ffc98ab52(metabnf.generator.template.main@generator)" nodeID="4698798192894150753" />
            </external-mapping>
          </greater-priority-mapping>
          <lesser-priority-mapping>
            <generator generatorUID="47b530dd-ebda-4923-bd60-37ece9820068(metabnf#2504845739423494772)" />
            <external-mapping>
              <mapping-set>
                <mapping-set-element>
                  <mapping-node modelUID="r:50538c2e-b1ef-4243-83a0-452ffc98ab52(metabnf.generator.template.main@generator)" nodeID="513220601746103040" />
                </mapping-set-element>
                <mapping-set-element>
                  <mapping-node modelUID="r:50538c2e-b1ef-4243-83a0-452ffc98ab52(metabnf.generator.template.main@generator)" nodeID="7520678199446995695" />
                </mapping-set-element>
              </mapping-set>
            </external-mapping>
          </lesser-priority-mapping>
        </mapping-priority-rule>
      </mapping-priorities>
    </generator>
  </generators>
  <sourcePath />
  <dependencies>
    <dependency reexport="false">85d9f97b-1654-4692-b61c-fcc40db03653(Eclipse.Debugger)</dependency>
    <dependency reexport="false">daafa647-f1f7-4b0b-b096-69cd7c8408c0(jetbrains.mps.baseLanguage.regexp)</dependency>
    <dependency reexport="false">a1250a4d-c090-42c3-ad7c-d298a3357dd4(jetbrains.mps.make.runtime)</dependency>
    <dependency reexport="false">df9d410f-2ebb-43f7-893a-483a4f085250(jetbrains.mps.smodel.resources)</dependency>
    <dependency reexport="false">9c03c641-469f-49e7-aeed-44a3d19b7253(metabnf)</dependency>
  </dependencies>
  <usedLanguages>
    <usedLanguage>28f9e497-3b42-4291-aeba-0a1039153ab1(jetbrains.mps.lang.plugin)</usedLanguage>
    <usedLanguage>ef7bf5ac-d06c-4342-b11d-e42104eb9343(jetbrains.mps.lang.plugin.standalone)</usedLanguage>
    <usedLanguage>982eb8df-2c96-4bd7-9963-11712ea622e5(jetbrains.mps.lang.resources)</usedLanguage>
    <usedLanguage>9ded098b-ad6a-4657-bfd9-48636cfe8bc3(jetbrains.mps.lang.traceable)</usedLanguage>
    <usedLanguage>696c1165-4a59-463b-bc5d-902caab85dd0(jetbrains.mps.make.facet)</usedLanguage>
    <usedLanguage>95f8a3e6-f994-4ca0-a65e-763c9bae2d3b(jetbrains.mps.make.script)</usedLanguage>
    <usedLanguage>9c03c641-469f-49e7-aeed-44a3d19b7253(metabnf)</usedLanguage>
  </usedLanguages>
  <usedDevKits>
    <usedDevKit>fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)</usedDevKit>
    <usedDevKit>2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)</usedDevKit>
  </usedDevKits>
  <extendedLanguages>
    <extendedLanguage>7866978e-a0f0-4cc7-81bc-4d213d9375e1(jetbrains.mps.lang.smodel)</extendedLanguage>
    <extendedLanguage>c72da2b9-7cce-4447-8389-f407dc1158b7(jetbrains.mps.lang.structure)</extendedLanguage>
  </extendedLanguages>
</language>

