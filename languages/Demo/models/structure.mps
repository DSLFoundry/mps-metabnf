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
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="Az7Fb" id="5Dh5jJl_$4M">
    <property role="TrG5h" value="Identifier" />
    <property role="FLfZY" value="\\w+" />
    <property role="3GE5qa" value="terminals" />
    <property role="3F6X1D" value="6508006283257725234" />
  </node>
  <node concept="Az7Fb" id="5Dh5jJl_$4N">
    <property role="TrG5h" value="BooleanValue" />
    <property role="FLfZY" value="(?:True)|(?:False)" />
    <property role="3GE5qa" value="terminals" />
    <property role="3F6X1D" value="6508006283257725235" />
  </node>
  <node concept="Az7Fb" id="5Dh5jJl_$4O">
    <property role="TrG5h" value="NumberValue" />
    <property role="FLfZY" value="\\p{Digit}*" />
    <property role="3GE5qa" value="terminals" />
    <property role="3F6X1D" value="6508006283257725236" />
  </node>
  <node concept="1TIwiD" id="5Dh5jJl_$4P">
    <property role="1pbfSe" value="405467652" />
    <property role="19KtqR" value="false" />
    <property role="TrG5h" value="Bool" />
    <property role="EcuMT" value="6508006283257725237" />
    <property role="3GE5qa" value="expressions" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="5Dh5jJl_$4Q" role="1TKVEl">
      <property role="TrG5h" value="BooleanValue" />
      <property role="IQ2nx" value="6508006283257725238" />
      <ref role="AX2Wp" node="5Dh5jJl_$4N" resolve="BooleanValue" />
    </node>
    <node concept="PrWs8" id="5Dh5jJl_$4R" role="PzmwI">
      <ref role="PrY4T" node="5Dh5jJl_$4V" resolve="Condition" />
    </node>
  </node>
  <node concept="1TIwiD" id="5Dh5jJl_$4S">
    <property role="1pbfSe" value="405467652" />
    <property role="19KtqR" value="false" />
    <property role="TrG5h" value="Number" />
    <property role="EcuMT" value="6508006283257725240" />
    <property role="3GE5qa" value="expressions" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="5Dh5jJl_$4T" role="1TKVEl">
      <property role="TrG5h" value="NumberValue" />
      <property role="IQ2nx" value="6508006283257725241" />
      <ref role="AX2Wp" node="5Dh5jJl_$4O" resolve="NumberValue" />
    </node>
    <node concept="PrWs8" id="5Dh5jJl_$4U" role="PzmwI">
      <ref role="PrY4T" node="5Dh5jJl_$4X" resolve="Expression" />
    </node>
  </node>
  <node concept="PlHQZ" id="5Dh5jJl_$4V">
    <property role="1pbfSe" value="405658595" />
    <property role="TrG5h" value="Condition" />
    <property role="EcuMT" value="6508006283257725243" />
    <property role="3GE5qa" value="expressions" />
    <node concept="PrWs8" id="5Dh5jJl_$4W" role="PrDN$">
      <ref role="PrY4T" node="5Dh5jJl_$4X" resolve="Expression" />
    </node>
  </node>
  <node concept="PlHQZ" id="5Dh5jJl_$4X">
    <property role="1pbfSe" value="405658595" />
    <property role="TrG5h" value="Expression" />
    <property role="EcuMT" value="6508006283257725245" />
    <property role="3GE5qa" value="expressions" />
  </node>
  <node concept="1TIwiD" id="5Dh5jJl_$4Y">
    <property role="1pbfSe" value="405467652" />
    <property role="19KtqR" value="false" />
    <property role="TrG5h" value="Skip" />
    <property role="34LRSv" value="skip" />
    <property role="EcuMT" value="6508006283257725246" />
    <property role="3GE5qa" value="statements" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="5Dh5jJl_$4Z" role="PzmwI">
      <ref role="PrY4T" node="5Dh5jJl_$5d" resolve="Statement" />
    </node>
  </node>
  <node concept="1TIwiD" id="5Dh5jJl_$50">
    <property role="1pbfSe" value="405467652" />
    <property role="19KtqR" value="false" />
    <property role="TrG5h" value="Assignment" />
    <property role="EcuMT" value="6508006283257725248" />
    <property role="3GE5qa" value="statements" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="5Dh5jJl_$51" role="1TKVEl">
      <property role="TrG5h" value="Identifier" />
      <property role="IQ2nx" value="6508006283257725249" />
      <ref role="AX2Wp" node="5Dh5jJl_$4M" resolve="Identifier" />
    </node>
    <node concept="1TJgyj" id="5Dh5jJl_$52" role="1TKVEi">
      <property role="20kJfa" value="Expression" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <property role="IQ2ns" value="6508006283257725250" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <ref role="20lvS9" node="5Dh5jJl_$4X" resolve="Expression" />
    </node>
    <node concept="PrWs8" id="5Dh5jJl_$53" role="PzmwI">
      <ref role="PrY4T" node="5Dh5jJl_$5d" resolve="Statement" />
    </node>
  </node>
  <node concept="1TIwiD" id="5Dh5jJl_$54">
    <property role="1pbfSe" value="405467652" />
    <property role="19KtqR" value="false" />
    <property role="TrG5h" value="Selection" />
    <property role="34LRSv" value="if" />
    <property role="EcuMT" value="6508006283257725252" />
    <property role="3GE5qa" value="statements" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="5Dh5jJl_$55" role="1TKVEi">
      <property role="20kJfa" value="Condition" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <property role="IQ2ns" value="6508006283257725253" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <ref role="20lvS9" node="5Dh5jJl_$4V" resolve="Condition" />
    </node>
    <node concept="1TJgyj" id="5Dh5jJl_$56" role="1TKVEi">
      <property role="20kJfa" value="thenstats" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <property role="IQ2ns" value="6508006283257725254" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <ref role="20lvS9" node="5Dh5jJl_$5e" resolve="Statements" />
    </node>
    <node concept="1TJgyj" id="5Dh5jJl_$57" role="1TKVEi">
      <property role="20kJfa" value="elsestats" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <property role="IQ2ns" value="6508006283257725255" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <ref role="20lvS9" node="5Dh5jJl_$5e" resolve="Statements" />
    </node>
    <node concept="PrWs8" id="5Dh5jJl_$58" role="PzmwI">
      <ref role="PrY4T" node="5Dh5jJl_$5d" resolve="Statement" />
    </node>
  </node>
  <node concept="1TIwiD" id="5Dh5jJl_$59">
    <property role="1pbfSe" value="405467652" />
    <property role="19KtqR" value="false" />
    <property role="TrG5h" value="Loop" />
    <property role="34LRSv" value="while" />
    <property role="EcuMT" value="6508006283257725257" />
    <property role="3GE5qa" value="statements" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="5Dh5jJl_$5a" role="1TKVEi">
      <property role="20kJfa" value="Condition" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <property role="IQ2ns" value="6508006283257725258" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <ref role="20lvS9" node="5Dh5jJl_$4V" resolve="Condition" />
    </node>
    <node concept="1TJgyj" id="5Dh5jJl_$5b" role="1TKVEi">
      <property role="20kJfa" value="Statement" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <property role="IQ2ns" value="6508006283257725259" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <ref role="20lvS9" node="5Dh5jJl_$5d" resolve="Statement" />
    </node>
    <node concept="PrWs8" id="5Dh5jJl_$5c" role="PzmwI">
      <ref role="PrY4T" node="5Dh5jJl_$5d" resolve="Statement" />
    </node>
  </node>
  <node concept="PlHQZ" id="5Dh5jJl_$5d">
    <property role="1pbfSe" value="405658595" />
    <property role="TrG5h" value="Statement" />
    <property role="EcuMT" value="6508006283257725261" />
    <property role="3GE5qa" value="statements" />
  </node>
  <node concept="1TIwiD" id="5Dh5jJl_$5e">
    <property role="1pbfSe" value="405467652" />
    <property role="19KtqR" value="false" />
    <property role="TrG5h" value="Statements" />
    <property role="EcuMT" value="6508006283257725262" />
    <property role="3GE5qa" value="statements" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="5Dh5jJl_$5f" role="1TKVEi">
      <property role="20kJfa" value="Statement" />
      <property role="20lbJX" value="fLJekj6/_1__n" />
      <property role="IQ2ns" value="6508006283257725263" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <ref role="20lvS9" node="5Dh5jJl_$5d" resolve="Statement" />
    </node>
  </node>
  <node concept="1TIwiD" id="5Dh5jJl_$5g">
    <property role="1pbfSe" value="405467652" />
    <property role="19KtqR" value="true" />
    <property role="TrG5h" value="Program" />
    <property role="34LRSv" value="Program" />
    <property role="EcuMT" value="6508006283257725264" />
    <property role="3GE5qa" value="" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="5Dh5jJl_$5h" role="1TKVEl">
      <property role="TrG5h" value="Identifier" />
      <property role="IQ2nx" value="6508006283257725265" />
      <ref role="AX2Wp" node="5Dh5jJl_$4M" resolve="Identifier" />
    </node>
    <node concept="1TJgyj" id="5Dh5jJl_$5i" role="1TKVEi">
      <property role="20kJfa" value="Statements" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <property role="IQ2ns" value="6508006283257725266" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <ref role="20lvS9" node="5Dh5jJl_$5e" resolve="Statements" />
    </node>
  </node>
</model>

