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
  <node concept="Az7Fb" id="1X53xXzm$hX">
    <property role="TrG5h" value="Identifier" />
    <property role="FLfZY" value="\\w+" />
    <property role="3GE5qa" value="terminals" />
  </node>
  <node concept="Az7Fb" id="1X53xXzm$hY">
    <property role="TrG5h" value="BooleanValue" />
    <property role="FLfZY" value="(?:True)|(?:False)" />
    <property role="3GE5qa" value="terminals" />
  </node>
  <node concept="Az7Fb" id="1X53xXzm$hZ">
    <property role="TrG5h" value="NumberValue" />
    <property role="FLfZY" value="\\p{Digit}*" />
    <property role="3GE5qa" value="terminals" />
  </node>
  <node concept="1TIwiD" id="1X53xXzm$i0">
    <property role="1pbfSe" value="405467652" />
    <property role="TrG5h" value="Bool" />
    <property role="EcuMT" value="435477473531691008" />
    <property role="3GE5qa" value="expressions" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="1X53xXzm$i1" role="1TKVEl">
      <property role="TrG5h" value="BooleanValue" />
      <property role="IQ2nx" value="3302363434814029824" />
      <ref role="AX2Wp" node="1X53xXzm$hY" resolve="BooleanValue" />
    </node>
    <node concept="PrWs8" id="1X53xXzm$i2" role="PzmwI">
      <ref role="PrY4T" node="1X53xXzm$i6" />
    </node>
  </node>
  <node concept="1TIwiD" id="1X53xXzm$i3">
    <property role="1pbfSe" value="405467652" />
    <property role="TrG5h" value="Number" />
    <property role="EcuMT" value="2658080591142807552" />
    <property role="3GE5qa" value="expressions" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="1X53xXzm$i4" role="1TKVEl">
      <property role="TrG5h" value="NumberValue" />
      <property role="IQ2nx" value="6466769319690672128" />
      <ref role="AX2Wp" node="1X53xXzm$hZ" resolve="NumberValue" />
    </node>
    <node concept="PrWs8" id="1X53xXzm$i5" role="PzmwI">
      <ref role="PrY4T" node="1X53xXzm$i8" />
    </node>
  </node>
  <node concept="PlHQZ" id="1X53xXzm$i6">
    <property role="1pbfSe" value="405658595" />
    <property role="TrG5h" value="Condition" />
    <property role="EcuMT" value="7098957293152518144" />
    <property role="3GE5qa" value="expressions" />
    <node concept="PrWs8" id="1X53xXzm$i7" role="PrDN$">
      <ref role="PrY4T" node="1X53xXzm$i8" />
    </node>
  </node>
  <node concept="PlHQZ" id="1X53xXzm$i8">
    <property role="1pbfSe" value="405658595" />
    <property role="TrG5h" value="Expression" />
    <property role="EcuMT" value="8245145807609737216" />
    <property role="3GE5qa" value="expressions" />
  </node>
  <node concept="1TIwiD" id="1X53xXzm$i9">
    <property role="1pbfSe" value="405467652" />
    <property role="TrG5h" value="Skip" />
    <property role="34LRSv" value="skip" />
    <property role="EcuMT" value="6019923288625551360" />
    <property role="3GE5qa" value="statements" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="1X53xXzm$ia" role="PzmwI">
      <ref role="PrY4T" node="1X53xXzm$io" />
    </node>
  </node>
  <node concept="1TIwiD" id="1X53xXzm$ib">
    <property role="1pbfSe" value="405467652" />
    <property role="TrG5h" value="Assignment" />
    <property role="EcuMT" value="2087857964532970496" />
    <property role="3GE5qa" value="statements" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="1X53xXzm$ic" role="1TKVEl">
      <property role="TrG5h" value="Identifier" />
      <property role="IQ2nx" value="7329301378342714368" />
      <ref role="AX2Wp" node="1X53xXzm$hX" resolve="Identifier" />
    </node>
    <node concept="1TJgyj" id="1X53xXzm$id" role="1TKVEi">
      <property role="20kJfa" value="Expression" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <property role="IQ2ns" value="7462456033086980096" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <ref role="20lvS9" node="1X53xXzm$i8" resolve="Expression" />
    </node>
    <node concept="PrWs8" id="1X53xXzm$ie" role="PzmwI">
      <ref role="PrY4T" node="1X53xXzm$io" />
    </node>
  </node>
  <node concept="1TIwiD" id="1X53xXzm$if">
    <property role="1pbfSe" value="405467652" />
    <property role="TrG5h" value="Selection" />
    <property role="34LRSv" value="if" />
    <property role="EcuMT" value="2989756962845385728" />
    <property role="3GE5qa" value="statements" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="1X53xXzm$ig" role="1TKVEi">
      <property role="20kJfa" value="Condition" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <property role="IQ2ns" value="3234307236163164160" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <ref role="20lvS9" node="1X53xXzm$i6" resolve="Condition" />
    </node>
    <node concept="1TJgyj" id="1X53xXzm$ih" role="1TKVEi">
      <property role="20kJfa" value="thenstats" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <property role="IQ2ns" value="782329899241330688" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <ref role="20lvS9" node="1X53xXzm$ip" />
    </node>
    <node concept="1TJgyj" id="1X53xXzm$ii" role="1TKVEi">
      <property role="20kJfa" value="elsestats" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <property role="IQ2ns" value="7249847398978680832" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <ref role="20lvS9" node="1X53xXzm$ip" />
    </node>
    <node concept="PrWs8" id="1X53xXzm$ij" role="PzmwI">
      <ref role="PrY4T" node="1X53xXzm$io" />
    </node>
  </node>
  <node concept="1TIwiD" id="1X53xXzm$ik">
    <property role="1pbfSe" value="405467652" />
    <property role="TrG5h" value="Loop" />
    <property role="34LRSv" value="while" />
    <property role="EcuMT" value="2896972269536111616" />
    <property role="3GE5qa" value="statements" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="1X53xXzm$il" role="1TKVEi">
      <property role="20kJfa" value="Condition" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <property role="IQ2ns" value="1656890459891059712" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <ref role="20lvS9" node="1X53xXzm$i6" resolve="Condition" />
    </node>
    <node concept="1TJgyj" id="1X53xXzm$im" role="1TKVEi">
      <property role="20kJfa" value="Statement" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <property role="IQ2ns" value="5311913579756616704" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <ref role="20lvS9" node="1X53xXzm$io" />
    </node>
    <node concept="PrWs8" id="1X53xXzm$in" role="PzmwI">
      <ref role="PrY4T" node="1X53xXzm$io" />
    </node>
  </node>
  <node concept="PlHQZ" id="1X53xXzm$io">
    <property role="1pbfSe" value="405658595" />
    <property role="TrG5h" value="Statement" />
    <property role="EcuMT" value="643533252382622720" />
    <property role="3GE5qa" value="statements" />
  </node>
  <node concept="1TIwiD" id="1X53xXzm$ip">
    <property role="1pbfSe" value="405467652" />
    <property role="TrG5h" value="Statements" />
    <property role="EcuMT" value="5290025991149395968" />
    <property role="3GE5qa" value="statements" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="1X53xXzm$iq" role="1TKVEi">
      <property role="20kJfa" value="Statement" />
      <property role="20lbJX" value="fLJekj6/_1__n" />
      <property role="IQ2ns" value="3280003396385927168" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <ref role="20lvS9" node="1X53xXzm$io" resolve="Statement" />
    </node>
  </node>
  <node concept="1TIwiD" id="1X53xXzm$ir">
    <property role="1pbfSe" value="405467652" />
    <property role="19KtqR" value="true" />
    <property role="TrG5h" value="Program" />
    <property role="34LRSv" value="Program" />
    <property role="EcuMT" value="5432632644523791360" />
    <property role="3GE5qa" value="" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="1X53xXzm$is" role="1TKVEl">
      <property role="TrG5h" value="Identifier" />
      <property role="IQ2nx" value="1956159360324771840" />
      <ref role="AX2Wp" node="1X53xXzm$hX" resolve="Identifier" />
    </node>
    <node concept="1TJgyj" id="1X53xXzm$it" role="1TKVEi">
      <property role="20kJfa" value="Statements" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <property role="IQ2ns" value="1779161139730692096" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <ref role="20lvS9" node="1X53xXzm$ip" resolve="Statements" />
    </node>
  </node>
</model>

