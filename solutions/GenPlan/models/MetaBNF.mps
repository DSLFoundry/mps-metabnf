<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:de9bfef8-6a97-4beb-afa0-cf9671039543(GenPlan.MetaBNF)">
  <persistence version="9" />
  <languages>
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="7ab1a6fa-0a11-4b95-9e48-75f363d6cb00" name="jetbrains.mps.lang.generator.plan" version="3" />
  </languages>
  <imports />
  <registry>
    <language id="7ab1a6fa-0a11-4b95-9e48-75f363d6cb00" name="jetbrains.mps.lang.generator.plan">
      <concept id="2332321114124261810" name="jetbrains.mps.lang.generator.plan.structure.GeneratorModulePointer" flags="ng" index="lQKw0">
        <child id="2332321114124261812" name="module" index="lQKw6" />
      </concept>
      <concept id="1820634577908471803" name="jetbrains.mps.lang.generator.plan.structure.Plan" flags="ng" index="2VgMpV">
        <child id="1820634577908471815" name="steps" index="2VgMA7" />
      </concept>
      <concept id="1820634577908471809" name="jetbrains.mps.lang.generator.plan.structure.Checkpoint" flags="ng" index="2VgMA1">
        <child id="3750601816081740498" name="cpSpec" index="3ps6aC" />
      </concept>
      <concept id="3750601816081736033" name="jetbrains.mps.lang.generator.plan.structure.InPlaceCheckpointSpec" flags="ng" index="3ps74r" />
      <concept id="8296877263936070001" name="jetbrains.mps.lang.generator.plan.structure.ApplyGenerators" flags="ng" index="3uMcMo">
        <child id="8296877263936660572" name="generator" index="3uOsAP" />
      </concept>
    </language>
    <language id="446c26eb-2b7b-4bf0-9b35-f83fa582753e" name="jetbrains.mps.lang.modelapi">
      <concept id="361130699826193249" name="jetbrains.mps.lang.modelapi.structure.ModulePointer" flags="ng" index="1dCxOk">
        <property id="1863527487546097500" name="moduleId" index="1XweGW" />
        <property id="1863527487545993577" name="moduleName" index="1XxBO9" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="2VgMpV" id="3tSvZ16jtfV">
    <property role="TrG5h" value="MetaBNF-Plan" />
    <node concept="3uMcMo" id="5Dh5jJl1DrD" role="2VgMA7">
      <node concept="lQKw0" id="LaOfQBYxog" role="3uOsAP">
        <node concept="1dCxOk" id="LaOfQBYxoh" role="lQKw6">
          <property role="1XweGW" value="47b530dd-ebda-4923-bd60-37ece9820068" />
          <property role="1XxBO9" value="metabnf#3997085339232029834" />
        </node>
      </node>
    </node>
    <node concept="2VgMA1" id="5Dh5jJl3czk" role="2VgMA7">
      <node concept="3ps74r" id="5Dh5jJltmh5" role="3ps6aC">
        <property role="TrG5h" value="Concepts" />
      </node>
    </node>
    <node concept="3uMcMo" id="5Dh5jJltmfS" role="2VgMA7">
      <node concept="lQKw0" id="LaOfQBYxoi" role="3uOsAP">
        <node concept="1dCxOk" id="LaOfQBYxoj" role="lQKw6">
          <property role="1XweGW" value="e05ba086-8387-46d0-bcc8-c3ee323cb77f" />
          <property role="1XxBO9" value="metabnf.aspectgen#01" />
        </node>
      </node>
    </node>
    <node concept="2VgMA1" id="5Dh5jJltmgM" role="2VgMA7">
      <node concept="3ps74r" id="5Dh5jJltmh0" role="3ps6aC">
        <property role="TrG5h" value="Aspects" />
      </node>
    </node>
  </node>
</model>

