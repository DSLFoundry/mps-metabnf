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
  <node concept="Az7Fb" id="swA13onbk0">
    <property role="TrG5h" value="Identifier" />
    <property role="FLfZY" value="\\w+" />
    <property role="3GE5qa" value="terminals" />
  </node>
  <node concept="Az7Fb" id="swA13onbk1">
    <property role="TrG5h" value="BooleanValue" />
    <property role="FLfZY" value="(?:True)|(?:False)" />
    <property role="3GE5qa" value="terminals" />
  </node>
  <node concept="Az7Fb" id="swA13onbk2">
    <property role="TrG5h" value="NumberValue" />
    <property role="FLfZY" value="\\p{Digit}*" />
    <property role="3GE5qa" value="terminals" />
  </node>
  <node concept="1TIwiD" id="swA13onbk3">
    <property role="1pbfSe" value="405467652" />
    <property role="TrG5h" value="Bool" />
    <property role="EcuMT" value="4965277234634557440" />
    <property role="3GE5qa" value="expressions" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="swA13onbk4" role="1TKVEl">
      <property role="TrG5h" value="BooleanValue" />
      <property role="IQ2nx" value="4981943138093091840" />
      <ref role="AX2Wp" node="swA13onbk1" resolve="BooleanValue" />
    </node>
    <node concept="PrWs8" id="swA13onbk5" role="PzmwI">
      <ref role="PrY4T" node="swA13onbk9" />
    </node>
  </node>
  <node concept="1TIwiD" id="swA13onbk6">
    <property role="1pbfSe" value="405467652" />
    <property role="TrG5h" value="Number" />
    <property role="EcuMT" value="4595177849657606144" />
    <property role="3GE5qa" value="expressions" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="swA13onbk7" role="1TKVEl">
      <property role="TrG5h" value="NumberValue" />
      <property role="IQ2nx" value="2932297946020877312" />
      <ref role="AX2Wp" node="swA13onbk2" resolve="NumberValue" />
    </node>
    <node concept="PrWs8" id="swA13onbk8" role="PzmwI">
      <ref role="PrY4T" node="swA13onbkb" />
    </node>
  </node>
  <node concept="PlHQZ" id="swA13onbk9">
    <property role="1pbfSe" value="405658595" />
    <property role="TrG5h" value="Condition" />
    <property role="EcuMT" value="609148623199937536" />
    <property role="3GE5qa" value="expressions" />
    <node concept="PrWs8" id="swA13onbka" role="PrDN$">
      <ref role="PrY4T" node="swA13onbkb" />
    </node>
  </node>
  <node concept="PlHQZ" id="swA13onbkb">
    <property role="1pbfSe" value="405658595" />
    <property role="TrG5h" value="Expression" />
    <property role="EcuMT" value="2807167702522694656" />
    <property role="3GE5qa" value="expressions" />
  </node>
  <node concept="1TIwiD" id="swA13onbkc">
    <property role="1pbfSe" value="405467652" />
    <property role="TrG5h" value="Skip" />
    <property role="34LRSv" value="skip" />
    <property role="EcuMT" value="3073635908933626880" />
    <property role="3GE5qa" value="statements" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="swA13onbkd" role="PzmwI">
      <ref role="PrY4T" node="swA13onbkr" />
    </node>
  </node>
  <node concept="1TIwiD" id="swA13onbke">
    <property role="1pbfSe" value="405467652" />
    <property role="TrG5h" value="Assignment" />
    <property role="EcuMT" value="5840901674667079680" />
    <property role="3GE5qa" value="statements" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="swA13onbkf" role="1TKVEl">
      <property role="TrG5h" value="Identifier" />
      <property role="IQ2nx" value="5196841451870991360" />
      <ref role="AX2Wp" node="swA13onbk0" resolve="Identifier" />
    </node>
    <node concept="1TJgyj" id="swA13onbkg" role="1TKVEi">
      <property role="20kJfa" value="Expression" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <property role="IQ2ns" value="706057689111011328" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <ref role="20lvS9" node="swA13onbkb" resolve="Expression" />
    </node>
    <node concept="PrWs8" id="swA13onbkh" role="PzmwI">
      <ref role="PrY4T" node="swA13onbkr" />
    </node>
  </node>
  <node concept="1TIwiD" id="swA13onbki">
    <property role="1pbfSe" value="405467652" />
    <property role="TrG5h" value="Selection" />
    <property role="34LRSv" value="if" />
    <property role="EcuMT" value="5545742196805146624" />
    <property role="3GE5qa" value="statements" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="swA13onbkj" role="1TKVEi">
      <property role="20kJfa" value="Condition" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <property role="IQ2ns" value="6657321676186940416" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <ref role="20lvS9" node="swA13onbk9" resolve="Condition" />
    </node>
    <node concept="1TJgyj" id="swA13onbkk" role="1TKVEi">
      <property role="20kJfa" value="thenstats" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <property role="IQ2ns" value="7730496948894435328" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <ref role="20lvS9" node="swA13onbks" />
    </node>
    <node concept="1TJgyj" id="swA13onbkl" role="1TKVEi">
      <property role="20kJfa" value="elsestats" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <property role="IQ2ns" value="2756065160295696384" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <ref role="20lvS9" node="swA13onbks" />
    </node>
    <node concept="PrWs8" id="swA13onbkm" role="PzmwI">
      <ref role="PrY4T" node="swA13onbkr" />
    </node>
  </node>
  <node concept="1TIwiD" id="swA13onbkn">
    <property role="1pbfSe" value="405467652" />
    <property role="TrG5h" value="Loop" />
    <property role="34LRSv" value="while" />
    <property role="EcuMT" value="2764580476279179264" />
    <property role="3GE5qa" value="statements" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="swA13onbko" role="1TKVEi">
      <property role="20kJfa" value="Condition" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <property role="IQ2ns" value="5082174107513295872" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <ref role="20lvS9" node="swA13onbk9" resolve="Condition" />
    </node>
    <node concept="1TJgyj" id="swA13onbkp" role="1TKVEi">
      <property role="20kJfa" value="Statement" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <property role="IQ2ns" value="5782563713423547392" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <ref role="20lvS9" node="swA13onbkr" />
    </node>
    <node concept="PrWs8" id="swA13onbkq" role="PzmwI">
      <ref role="PrY4T" node="swA13onbkr" />
    </node>
  </node>
  <node concept="PlHQZ" id="swA13onbkr">
    <property role="1pbfSe" value="405658595" />
    <property role="TrG5h" value="Statement" />
    <property role="EcuMT" value="8465870137704793088" />
    <property role="3GE5qa" value="statements" />
  </node>
  <node concept="1TIwiD" id="swA13onbks">
    <property role="1pbfSe" value="405467652" />
    <property role="TrG5h" value="Statements" />
    <property role="EcuMT" value="4136665121127694336" />
    <property role="3GE5qa" value="statements" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="swA13onbkt" role="1TKVEi">
      <property role="20kJfa" value="Statement" />
      <property role="20lbJX" value="fLJekj6/_1__n" />
      <property role="IQ2ns" value="6718643123310393344" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <ref role="20lvS9" node="swA13onbkr" resolve="Statement" />
    </node>
  </node>
  <node concept="1TIwiD" id="swA13onbku">
    <property role="1pbfSe" value="405467652" />
    <property role="19KtqR" value="true" />
    <property role="TrG5h" value="Program" />
    <property role="34LRSv" value="Program" />
    <property role="EcuMT" value="6877418133775135744" />
    <property role="3GE5qa" value="" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="swA13onbkv" role="1TKVEl">
      <property role="TrG5h" value="Identifier" />
      <property role="IQ2nx" value="4870862298049178624" />
      <ref role="AX2Wp" node="swA13onbk0" resolve="Identifier" />
    </node>
    <node concept="1TJgyj" id="swA13onbkw" role="1TKVEi">
      <property role="20kJfa" value="Statements" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <property role="IQ2ns" value="5506379522102135808" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <ref role="20lvS9" node="swA13onbks" resolve="Statements" />
    </node>
  </node>
</model>

