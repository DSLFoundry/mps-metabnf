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
  <node concept="Az7Fb" id="3kz7Nspt0Xj">
    <property role="TrG5h" value="Identifier" />
    <property role="FLfZY" value="\\w+" />
    <property role="3GE5qa" value="terminals" />
  </node>
  <node concept="Az7Fb" id="3kz7Nspt0Xk">
    <property role="TrG5h" value="BooleanValue" />
    <property role="FLfZY" value="(?:True)|(?:False)" />
    <property role="3GE5qa" value="terminals" />
  </node>
  <node concept="Az7Fb" id="3kz7Nspt0Xl">
    <property role="TrG5h" value="NumberValue" />
    <property role="FLfZY" value="\\p{Digit}*" />
    <property role="3GE5qa" value="terminals" />
  </node>
  <node concept="1TIwiD" id="3kz7Nspt0Xm">
    <property role="1pbfSe" value="405467652" />
    <property role="TrG5h" value="Bool" />
    <property role="EcuMT" value="7949485341119468544" />
    <property role="3GE5qa" value="expressions" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="3kz7Nspt0Xn" role="1TKVEl">
      <property role="TrG5h" value="BooleanValue" />
      <property role="IQ2nx" value="3241058988456135680" />
      <ref role="AX2Wp" node="3kz7Nspt0Xk" resolve="BooleanValue" />
    </node>
    <node concept="PrWs8" id="3kz7Nspt0Xo" role="PzmwI">
      <ref role="PrY4T" node="3kz7Nspt0Xs" />
    </node>
  </node>
  <node concept="1TIwiD" id="3kz7Nspt0Xp">
    <property role="1pbfSe" value="405467652" />
    <property role="TrG5h" value="Number" />
    <property role="EcuMT" value="5652963622891534336" />
    <property role="3GE5qa" value="expressions" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="3kz7Nspt0Xq" role="1TKVEl">
      <property role="TrG5h" value="NumberValue" />
      <property role="IQ2nx" value="8682571566347743232" />
      <ref role="AX2Wp" node="3kz7Nspt0Xl" resolve="NumberValue" />
    </node>
    <node concept="PrWs8" id="3kz7Nspt0Xr" role="PzmwI">
      <ref role="PrY4T" node="3kz7Nspt0Xu" />
    </node>
  </node>
  <node concept="PlHQZ" id="3kz7Nspt0Xs">
    <property role="1pbfSe" value="405658595" />
    <property role="TrG5h" value="Condition" />
    <property role="EcuMT" value="1617145210922137600" />
    <property role="3GE5qa" value="expressions" />
    <node concept="PrWs8" id="3kz7Nspt0Xt" role="PrDN$">
      <ref role="PrY4T" node="3kz7Nspt0Xu" />
    </node>
  </node>
  <node concept="PlHQZ" id="3kz7Nspt0Xu">
    <property role="1pbfSe" value="405658595" />
    <property role="TrG5h" value="Expression" />
    <property role="EcuMT" value="186782812868014080" />
    <property role="3GE5qa" value="expressions" />
  </node>
  <node concept="1TIwiD" id="3kz7Nspt0Xv">
    <property role="1pbfSe" value="405467652" />
    <property role="TrG5h" value="Skip" />
    <property role="34LRSv" value="skip" />
    <property role="EcuMT" value="102677146303165440" />
    <property role="3GE5qa" value="statements" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="3kz7Nspt0Xw" role="PzmwI">
      <ref role="PrY4T" node="3kz7Nspt0XI" />
    </node>
  </node>
  <node concept="1TIwiD" id="3kz7Nspt0Xx">
    <property role="1pbfSe" value="405467652" />
    <property role="TrG5h" value="Assignment" />
    <property role="EcuMT" value="4807311430652108800" />
    <property role="3GE5qa" value="statements" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="3kz7Nspt0Xy" role="1TKVEl">
      <property role="TrG5h" value="Identifier" />
      <property role="IQ2nx" value="4605126934181340160" />
      <ref role="AX2Wp" node="3kz7Nspt0Xj" resolve="Identifier" />
    </node>
    <node concept="1TJgyj" id="3kz7Nspt0Xz" role="1TKVEi">
      <property role="20kJfa" value="Expression" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <property role="IQ2ns" value="5838299238718187520" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <ref role="20lvS9" node="3kz7Nspt0Xu" resolve="Expression" />
    </node>
    <node concept="PrWs8" id="3kz7Nspt0X$" role="PzmwI">
      <ref role="PrY4T" node="3kz7Nspt0XI" />
    </node>
  </node>
  <node concept="1TIwiD" id="3kz7Nspt0X_">
    <property role="1pbfSe" value="405467652" />
    <property role="TrG5h" value="Selection" />
    <property role="34LRSv" value="if" />
    <property role="EcuMT" value="6092912308933002240" />
    <property role="3GE5qa" value="statements" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="3kz7Nspt0XA" role="1TKVEi">
      <property role="20kJfa" value="Condition" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <property role="IQ2ns" value="1158949318112945152" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <ref role="20lvS9" node="3kz7Nspt0Xs" resolve="Condition" />
    </node>
    <node concept="1TJgyj" id="3kz7Nspt0XB" role="1TKVEi">
      <property role="20kJfa" value="thenstats" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <property role="IQ2ns" value="2315458212437053440" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <ref role="20lvS9" node="3kz7Nspt0XJ" />
    </node>
    <node concept="1TJgyj" id="3kz7Nspt0XC" role="1TKVEi">
      <property role="20kJfa" value="elsestats" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <property role="IQ2ns" value="2984417510626550784" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <ref role="20lvS9" node="3kz7Nspt0XJ" />
    </node>
    <node concept="PrWs8" id="3kz7Nspt0XD" role="PzmwI">
      <ref role="PrY4T" node="3kz7Nspt0XI" />
    </node>
  </node>
  <node concept="1TIwiD" id="3kz7Nspt0XE">
    <property role="1pbfSe" value="405467652" />
    <property role="TrG5h" value="Loop" />
    <property role="34LRSv" value="while" />
    <property role="EcuMT" value="7213598799950191616" />
    <property role="3GE5qa" value="statements" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="3kz7Nspt0XF" role="1TKVEi">
      <property role="20kJfa" value="Condition" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <property role="IQ2ns" value="8677578141781687296" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <ref role="20lvS9" node="3kz7Nspt0Xs" resolve="Condition" />
    </node>
    <node concept="1TJgyj" id="3kz7Nspt0XG" role="1TKVEi">
      <property role="20kJfa" value="Statement" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <property role="IQ2ns" value="3163035022312052736" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <ref role="20lvS9" node="3kz7Nspt0XI" />
    </node>
    <node concept="PrWs8" id="3kz7Nspt0XH" role="PzmwI">
      <ref role="PrY4T" node="3kz7Nspt0XI" />
    </node>
  </node>
  <node concept="PlHQZ" id="3kz7Nspt0XI">
    <property role="1pbfSe" value="405658595" />
    <property role="TrG5h" value="Statement" />
    <property role="EcuMT" value="2997111287848179712" />
    <property role="3GE5qa" value="statements" />
  </node>
  <node concept="1TIwiD" id="3kz7Nspt0XJ">
    <property role="1pbfSe" value="405467652" />
    <property role="TrG5h" value="Statements" />
    <property role="EcuMT" value="5515027964117111808" />
    <property role="3GE5qa" value="statements" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="3kz7Nspt0XK" role="1TKVEi">
      <property role="20kJfa" value="Statement" />
      <property role="20lbJX" value="fLJekj6/_1__n" />
      <property role="IQ2ns" value="5257042724142163968" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <ref role="20lvS9" node="3kz7Nspt0XI" resolve="Statement" />
    </node>
  </node>
  <node concept="1TIwiD" id="3kz7Nspt0XL">
    <property role="1pbfSe" value="405467652" />
    <property role="19KtqR" value="true" />
    <property role="TrG5h" value="Program" />
    <property role="34LRSv" value="Program" />
    <property role="EcuMT" value="8880250281048658944" />
    <property role="3GE5qa" value="" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="3kz7Nspt0XM" role="1TKVEl">
      <property role="TrG5h" value="Identifier" />
      <property role="IQ2nx" value="6729465700479481856" />
      <ref role="AX2Wp" node="3kz7Nspt0Xj" resolve="Identifier" />
    </node>
    <node concept="1TJgyj" id="3kz7Nspt0XN" role="1TKVEi">
      <property role="20kJfa" value="Statements" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <property role="IQ2ns" value="5786117798933347328" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <ref role="20lvS9" node="3kz7Nspt0XJ" resolve="Statements" />
    </node>
  </node>
</model>

