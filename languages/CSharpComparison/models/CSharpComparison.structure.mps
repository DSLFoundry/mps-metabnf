<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:da9593e3-393b-479e-8ed7-977e83834b16(CSharpComparison.structure)">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="9" />
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="1082978164218" name="jetbrains.mps.lang.structure.structure.DataTypeDeclaration" flags="ng" index="AxPO6">
        <property id="7791109065626895363" name="datatypeId" index="3F6X1D" />
      </concept>
      <concept id="1082978499127" name="jetbrains.mps.lang.structure.structure.ConstrainedDataTypeDeclaration" flags="ng" index="Az7Fb">
        <property id="1083066089218" name="constraint" index="FLfZY" />
      </concept>
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
        <property id="5092175715804935370" name="conceptAlias" index="34LRSv" />
        <property id="1587916991969465369" name="intConceptId" index="1pbfSe" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
        <child id="1071489727084" name="propertyDeclaration" index="1TKVEl" />
      </concept>
      <concept id="1169125989551" name="jetbrains.mps.lang.structure.structure.InterfaceConceptDeclaration" flags="ig" index="PlHQZ" />
      <concept id="1169127622168" name="jetbrains.mps.lang.structure.structure.InterfaceConceptReference" flags="ig" index="PrWs8">
        <reference id="1169127628841" name="intfc" index="PrY4T" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <property id="1096454100552" name="rootable" index="19KtqR" />
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
        <child id="1169129564478" name="implements" index="PzmwI" />
      </concept>
      <concept id="1071489288299" name="jetbrains.mps.lang.structure.structure.PropertyDeclaration" flags="ig" index="1TJgyi">
        <property id="241647608299431129" name="propertyId" index="IQ2nx" />
        <reference id="1082985295845" name="dataType" index="AX2Wp" />
      </concept>
      <concept id="1071489288298" name="jetbrains.mps.lang.structure.structure.LinkDeclaration" flags="ig" index="1TJgyj">
        <property id="1071599776563" name="role" index="20kJfa" />
        <property id="1071599893252" name="sourceCardinality" index="20lbJX" />
        <property id="1071599937831" name="metaClass" index="20lmBu" />
        <property id="241647608299431140" name="linkId" index="IQ2ns" />
        <reference id="1071599976176" name="target" index="20lvS9" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1TIwiD" id="X8JiVyjpF9">
    <property role="1pbfSe" value="405467652" />
    <property role="19KtqR" value="true" />
    <property role="TrG5h" value="program" />
    <property role="EcuMT" value="1089562769112152727" />
    <property role="3GE5qa" value="ANTLR" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="TbvgBtbWVU" role="1TKVEi">
      <property role="20kJfa" value="block" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <property role="IQ2ns" value="548585614473936606" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <ref role="20lvS9" node="ymp_$pH7rU" resolve="block" />
    </node>
  </node>
  <node concept="1TIwiD" id="ymp_$pH7rU">
    <property role="1pbfSe" value="405467652" />
    <property role="TrG5h" value="block" />
    <property role="34LRSv" value="{" />
    <property role="EcuMT" value="909401481449236999" />
    <property role="3GE5qa" value="ANTLR" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="ZYpNL93oA4" role="1TKVEi">
      <property role="20kJfa" value="statement" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <property role="IQ2ns" value="78161202108132502" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <ref role="20lvS9" node="p1LTNBxnYF" resolve="statement" />
    </node>
  </node>
  <node concept="PlHQZ" id="p1LTNBxnYF">
    <property role="1pbfSe" value="405658595" />
    <property role="TrG5h" value="statement" />
    <property role="EcuMT" value="202533534142855427" />
    <property role="3GE5qa" value="ANTLR" />
  </node>
  <node concept="1TIwiD" id="Kq4lKso5HZ">
    <property role="1pbfSe" value="405467652" />
    <property role="TrG5h" value="statement__ANTLRAlternative1" />
    <property role="EcuMT" value="159527021668265679" />
    <property role="3GE5qa" value="ANTLR" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="wKshwUl2Jt" role="1TKVEi">
      <property role="20kJfa" value="block" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <property role="IQ2ns" value="561128968929144013" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <ref role="20lvS9" node="ymp_$pH7rU" resolve="block" />
    </node>
    <node concept="PrWs8" id="vRNcRTb64I" role="PzmwI">
      <ref role="PrY4T" node="p1LTNBxnYF" resolve="statement" />
    </node>
  </node>
  <node concept="1TIwiD" id="QV2k4q3e_f">
    <property role="1pbfSe" value="405467652" />
    <property role="TrG5h" value="statement__ANTLRAlternative2" />
    <property role="34LRSv" value="return" />
    <property role="EcuMT" value="186783673270237980" />
    <property role="3GE5qa" value="ANTLR" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="jjjS_uBv5O" role="1TKVEi">
      <property role="20kJfa" value="_AntlrGroup1" />
      <property role="IQ2ns" value="924502612844802358" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <ref role="20lvS9" node="6MHCkHrF8A" resolve="_AntlrGroup1" />
    </node>
    <node concept="PrWs8" id="Tel3aV20xd" role="PzmwI">
      <ref role="PrY4T" node="p1LTNBxnYF" resolve="statement" />
    </node>
  </node>
  <node concept="1TIwiD" id="lA4KLA7h11">
    <property role="1pbfSe" value="405467652" />
    <property role="TrG5h" value="expression" />
    <property role="EcuMT" value="273341760692118444" />
    <property role="3GE5qa" value="ANTLR" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="bHYQBUUrtP" role="1TKVEl">
      <property role="TrG5h" value="NUMBER" />
      <property role="IQ2nx" value="114327263153988654" />
      <ref role="AX2Wp" node="JzjSE6TL3U" resolve="NUMBER" />
    </node>
    <node concept="1TJgyj" id="g74Akw7nYN" role="1TKVEi">
      <property role="20kJfa" value="_AntlrGroup2" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <property role="IQ2ns" value="779591969617056108" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <ref role="20lvS9" node="Wz9J6$x4fc" resolve="_AntlrGroup2" />
    </node>
  </node>
  <node concept="Az7Fb" id="JzjSE6TL3U">
    <property role="TrG5h" value="NUMBER" />
    <property role="FLfZY" value="[0-9]+" />
    <property role="3GE5qa" value="ANTLR" />
    <property role="3F6X1D" value="856615810517897466" />
  </node>
  <node concept="1TIwiD" id="6MHCkHrF8A">
    <property role="1pbfSe" value="405467652" />
    <property role="TrG5h" value="_AntlrGroup1" />
    <property role="34LRSv" value=" " />
    <property role="EcuMT" value="763387011107777253" />
    <property role="3GE5qa" value="ANTLR" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="YRcPPsVtuW" role="1TKVEi">
      <property role="20kJfa" value="expression" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <property role="IQ2ns" value="984745600810106594" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <ref role="20lvS9" node="lA4KLA7h11" resolve="expression" />
    </node>
  </node>
  <node concept="1TIwiD" id="Wz9J6$x4fc">
    <property role="1pbfSe" value="405467652" />
    <property role="TrG5h" value="_AntlrGroup2" />
    <property role="34LRSv" value="+" />
    <property role="EcuMT" value="169422966360188647" />
    <property role="3GE5qa" value="ANTLR" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="3EKqKeaXvJ" role="1TKVEl">
      <property role="TrG5h" value="NUMBER" />
      <property role="IQ2nx" value="969309795344586878" />
      <ref role="AX2Wp" node="JzjSE6TL3U" resolve="NUMBER" />
    </node>
  </node>
</model>

