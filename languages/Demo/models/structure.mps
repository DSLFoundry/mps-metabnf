<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:2338345e-d246-468d-922d-9f8162ca4e3b(Demo.structure)">
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
      <concept id="1169125989551" name="jetbrains.mps.lang.structure.structure.InterfaceConceptDeclaration" flags="ig" index="PlHQZ">
        <child id="1169127546356" name="extends" index="PrDN$" />
      </concept>
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
  <node concept="Az7Fb" id="4vgJcICKHz2">
    <property role="TrG5h" value="Identifier" />
    <property role="FLfZY" value="\\w+" />
    <property role="3GE5qa" value="terminals" />
  </node>
  <node concept="Az7Fb" id="4vgJcICKHz3">
    <property role="TrG5h" value="BooleanValue" />
    <property role="FLfZY" value="(?:True)|(?:False)" />
    <property role="3GE5qa" value="terminals" />
  </node>
  <node concept="Az7Fb" id="4vgJcICKHz4">
    <property role="TrG5h" value="NumberValue" />
    <property role="FLfZY" value="\\p{Digit}*" />
    <property role="3GE5qa" value="terminals" />
  </node>
  <node concept="1TIwiD" id="4vgJcICKHz5">
    <property role="1pbfSe" value="405467652" />
    <property role="TrG5h" value="Bool" />
    <property role="EcuMT" value="2144448555142833152" />
    <property role="3GE5qa" value="expressions" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="4vgJcICKHz6" role="1TKVEl">
      <property role="TrG5h" value="BooleanValue" />
      <property role="IQ2nx" value="4333859285705329664" />
      <ref role="AX2Wp" node="4vgJcICKHz3" resolve="BooleanValue" />
    </node>
    <node concept="PrWs8" id="4vgJcICKHz7" role="PzmwI">
      <ref role="PrY4T" node="4vgJcICKHzb" resolve="Condition" />
    </node>
  </node>
  <node concept="1TIwiD" id="4vgJcICKHz8">
    <property role="1pbfSe" value="405467652" />
    <property role="TrG5h" value="Number" />
    <property role="EcuMT" value="2658694864400235520" />
    <property role="3GE5qa" value="expressions" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="4vgJcICKHz9" role="1TKVEl">
      <property role="TrG5h" value="NumberValue" />
      <property role="IQ2nx" value="6578376811652139008" />
      <ref role="AX2Wp" node="4vgJcICKHz4" resolve="NumberValue" />
    </node>
    <node concept="PrWs8" id="4vgJcICKHza" role="PzmwI">
      <ref role="PrY4T" node="4vgJcICKHzd" resolve="Expression" />
    </node>
  </node>
  <node concept="PlHQZ" id="4vgJcICKHzb">
    <property role="1pbfSe" value="405658595" />
    <property role="TrG5h" value="Condition" />
    <property role="EcuMT" value="2299296930996287488" />
    <property role="3GE5qa" value="expressions" />
    <node concept="PrWs8" id="4vgJcICKHzc" role="PrDN$">
      <ref role="PrY4T" node="4vgJcICKHzd" resolve="Expression" />
    </node>
  </node>
  <node concept="PlHQZ" id="4vgJcICKHzd">
    <property role="1pbfSe" value="405658595" />
    <property role="TrG5h" value="Expression" />
    <property role="EcuMT" value="7600809239742284800" />
    <property role="3GE5qa" value="expressions" />
  </node>
  <node concept="1TIwiD" id="4vgJcICKHze">
    <property role="1pbfSe" value="405467652" />
    <property role="TrG5h" value="Skip" />
    <property role="34LRSv" value="skip" />
    <property role="EcuMT" value="5873789646823829504" />
    <property role="3GE5qa" value="statements" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="4vgJcICKHzf" role="PzmwI">
      <ref role="PrY4T" node="4vgJcICKHzt" resolve="Statement" />
    </node>
  </node>
  <node concept="1TIwiD" id="4vgJcICKHzg">
    <property role="1pbfSe" value="405467652" />
    <property role="TrG5h" value="Assignment" />
    <property role="EcuMT" value="9061984263829080064" />
    <property role="3GE5qa" value="statements" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="4vgJcICKHzh" role="1TKVEl">
      <property role="TrG5h" value="Identifier" />
      <property role="IQ2nx" value="4248640513238863872" />
      <ref role="AX2Wp" node="4vgJcICKHz2" resolve="Identifier" />
    </node>
    <node concept="1TJgyj" id="4vgJcICKHzi" role="1TKVEi">
      <property role="20kJfa" value="Expression" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <property role="IQ2ns" value="5215276579154849792" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <ref role="20lvS9" node="4vgJcICKHzd" resolve="Expression" />
    </node>
    <node concept="PrWs8" id="4vgJcICKHzj" role="PzmwI">
      <ref role="PrY4T" node="4vgJcICKHzt" resolve="Statement" />
    </node>
  </node>
  <node concept="1TIwiD" id="4vgJcICKHzk">
    <property role="1pbfSe" value="405467652" />
    <property role="TrG5h" value="Selection" />
    <property role="34LRSv" value="if" />
    <property role="EcuMT" value="8734606131966692352" />
    <property role="3GE5qa" value="statements" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="4vgJcICKHzl" role="1TKVEi">
      <property role="20kJfa" value="Condition" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <property role="IQ2ns" value="8862229556302733312" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <ref role="20lvS9" node="4vgJcICKHzb" resolve="Condition" />
    </node>
    <node concept="1TJgyj" id="4vgJcICKHzm" role="1TKVEi">
      <property role="20kJfa" value="thenstats" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <property role="IQ2ns" value="819138422318251008" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <ref role="20lvS9" node="4vgJcICKHzu" resolve="Statements" />
    </node>
    <node concept="1TJgyj" id="4vgJcICKHzn" role="1TKVEi">
      <property role="20kJfa" value="elsestats" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <property role="IQ2ns" value="4498738796676626432" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <ref role="20lvS9" node="4vgJcICKHzu" resolve="Statements" />
    </node>
    <node concept="PrWs8" id="4vgJcICKHzo" role="PzmwI">
      <ref role="PrY4T" node="4vgJcICKHzt" resolve="Statement" />
    </node>
  </node>
  <node concept="1TIwiD" id="4vgJcICKHzp">
    <property role="1pbfSe" value="405467652" />
    <property role="TrG5h" value="Loop" />
    <property role="34LRSv" value="while" />
    <property role="EcuMT" value="1047616940494412800" />
    <property role="3GE5qa" value="statements" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="4vgJcICKHzq" role="1TKVEi">
      <property role="20kJfa" value="Condition" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <property role="IQ2ns" value="3527108076899969024" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <ref role="20lvS9" node="4vgJcICKHzb" resolve="Condition" />
    </node>
    <node concept="1TJgyj" id="4vgJcICKHzr" role="1TKVEi">
      <property role="20kJfa" value="Statement" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <property role="IQ2ns" value="7575654505127676928" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <ref role="20lvS9" node="4vgJcICKHzt" resolve="Statement" />
    </node>
    <node concept="PrWs8" id="4vgJcICKHzs" role="PzmwI">
      <ref role="PrY4T" node="4vgJcICKHzt" resolve="Statement" />
    </node>
  </node>
  <node concept="PlHQZ" id="4vgJcICKHzt">
    <property role="1pbfSe" value="405658595" />
    <property role="TrG5h" value="Statement" />
    <property role="EcuMT" value="2571291238959431680" />
    <property role="3GE5qa" value="statements" />
  </node>
  <node concept="1TIwiD" id="4vgJcICKHzu">
    <property role="1pbfSe" value="405467652" />
    <property role="TrG5h" value="Statements" />
    <property role="EcuMT" value="344828305953291264" />
    <property role="3GE5qa" value="statements" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="4vgJcICKHzv" role="1TKVEi">
      <property role="20kJfa" value="Statement" />
      <property role="20lbJX" value="fLJekj6/_1__n" />
      <property role="IQ2ns" value="1221219063525623808" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <ref role="20lvS9" node="4vgJcICKHzt" resolve="Statement" />
    </node>
  </node>
  <node concept="1TIwiD" id="4vgJcICKHzw">
    <property role="1pbfSe" value="405467652" />
    <property role="19KtqR" value="true" />
    <property role="TrG5h" value="Program" />
    <property role="34LRSv" value="Program" />
    <property role="EcuMT" value="4302703534578670592" />
    <property role="3GE5qa" value="" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="4vgJcICKHzx" role="1TKVEl">
      <property role="TrG5h" value="Identifier" />
      <property role="IQ2nx" value="1050122289417428992" />
      <ref role="AX2Wp" node="4vgJcICKHz2" resolve="Identifier" />
    </node>
    <node concept="1TJgyj" id="4vgJcICKHzy" role="1TKVEi">
      <property role="20kJfa" value="Statements" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <property role="IQ2ns" value="348080093245019136" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <ref role="20lvS9" node="4vgJcICKHzu" resolve="Statements" />
    </node>
  </node>
</model>

