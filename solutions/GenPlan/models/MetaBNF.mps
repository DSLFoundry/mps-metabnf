<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:de9bfef8-6a97-4beb-afa0-cf9671039543(GenPlan.MetaBNF)">
  <persistence version="9" />
  <languages>
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="11" />
    <use id="7ab1a6fa-0a11-4b95-9e48-75f363d6cb00" name="jetbrains.mps.lang.generator.plan" version="1" />
  </languages>
  <imports />
  <registry>
    <language id="7ab1a6fa-0a11-4b95-9e48-75f363d6cb00" name="jetbrains.mps.lang.generator.plan">
      <concept id="1820634577908471803" name="jetbrains.mps.lang.generator.plan.structure.Plan" flags="ng" index="2VgMpV">
        <child id="1820634577908471815" name="steps" index="2VgMA7" />
      </concept>
      <concept id="1820634577908471809" name="jetbrains.mps.lang.generator.plan.structure.Checkpoint" flags="ng" index="2VgMA1">
        <child id="3750601816081740498" name="cpSpec" index="3ps6aC" />
      </concept>
      <concept id="6257322641293267918" name="jetbrains.mps.lang.generator.plan.structure.CheckpointDeclaration" flags="ng" index="19BiC4" />
      <concept id="3750601816081740541" name="jetbrains.mps.lang.generator.plan.structure.DeclaredCheckpointSpec" flags="ng" index="3ps6a7">
        <reference id="3750601816081740544" name="cpDecl" index="3ps6dU" />
      </concept>
      <concept id="8296877263936070001" name="jetbrains.mps.lang.generator.plan.structure.ApplyGenerators" flags="ng" index="3uMcMo">
        <child id="8296877263936660572" name="generator" index="3uOsAP" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="427659576753752243" name="jetbrains.mps.lang.smodel.structure.ModulePointer" flags="ng" index="20RdaH">
        <property id="427659576753753627" name="moduleId" index="20Rdg5" />
        <property id="427659576753753625" name="moduleName" index="20Rdg7" />
      </concept>
      <concept id="8296877263936075789" name="jetbrains.mps.lang.smodel.structure.GeneratorModulePointer" flags="ng" index="3uMdn$">
        <child id="8296877263936075892" name="module" index="3uMdmt" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="2VgMpV" id="3tSvZ16jtfV">
    <property role="TrG5h" value="MetaBNF-Plan" />
    <node concept="19BiC4" id="3tSvZ16jtgn" role="2VgMA7">
      <property role="TrG5h" value="Concepts" />
    </node>
    <node concept="3uMcMo" id="5Dh5jJl1DrD" role="2VgMA7">
      <node concept="3uMdn$" id="5Dh5jJl1DrM" role="3uOsAP">
        <node concept="20RdaH" id="5Dh5jJl1DrN" role="3uMdmt">
          <property role="20Rdg5" value="47b530dd-ebda-4923-bd60-37ece9820068" />
          <property role="20Rdg7" value="metabnf#3997085339232029834" />
        </node>
      </node>
    </node>
    <node concept="2VgMA1" id="5Dh5jJl3czk" role="2VgMA7">
      <node concept="3ps6a7" id="5Dh5jJl3czt" role="3ps6aC">
        <ref role="3ps6dU" node="3tSvZ16jtgn" resolve="Concepts" />
      </node>
    </node>
  </node>
</model>

