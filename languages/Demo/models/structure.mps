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
  <node concept="Az7Fb" id="5cbC3YH0MhU">
    <property role="TrG5h" value="Identifier" />
    <property role="FLfZY" value="\\w+" />
    <property role="3GE5qa" value="terminals" />
  </node>
  <node concept="Az7Fb" id="5cbC3YH0MhV">
    <property role="TrG5h" value="BooleanValue" />
    <property role="FLfZY" value="(?:True)|(?:False)" />
    <property role="3GE5qa" value="terminals" />
  </node>
  <node concept="Az7Fb" id="5cbC3YH0MhW">
    <property role="TrG5h" value="NumberValue" />
    <property role="FLfZY" value="\\p{Digit}*" />
    <property role="3GE5qa" value="terminals" />
  </node>
  <node concept="1TIwiD" id="5cbC3YH0MhX">
    <property role="1pbfSe" value="405467652" />
    <property role="TrG5h" value="Bool" />
    <property role="EcuMT" value="3203339898381961216" />
    <property role="3GE5qa" value="expressions" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="5cbC3YH0MhY" role="1TKVEl">
      <property role="TrG5h" value="BooleanValue" />
      <property role="IQ2nx" value="3465811467113244672" />
      <ref role="AX2Wp" node="5cbC3YH0MhV" resolve="BooleanValue" />
    </node>
    <node concept="PrWs8" id="5cbC3YH0MhZ" role="PzmwI">
      <ref role="PrY4T" node="5cbC3YH0Mi3" />
    </node>
  </node>
  <node concept="1TIwiD" id="5cbC3YH0Mi0">
    <property role="1pbfSe" value="405467652" />
    <property role="TrG5h" value="Number" />
    <property role="EcuMT" value="5699457241014511616" />
    <property role="3GE5qa" value="expressions" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="5cbC3YH0Mi1" role="1TKVEl">
      <property role="TrG5h" value="NumberValue" />
      <property role="IQ2nx" value="9095445636995056640" />
      <ref role="AX2Wp" node="5cbC3YH0MhW" resolve="NumberValue" />
    </node>
    <node concept="PrWs8" id="5cbC3YH0Mi2" role="PzmwI">
      <ref role="PrY4T" node="5cbC3YH0Mi5" />
    </node>
  </node>
  <node concept="PlHQZ" id="5cbC3YH0Mi3">
    <property role="1pbfSe" value="405658595" />
    <property role="TrG5h" value="Condition" />
    <property role="EcuMT" value="4252344298663220224" />
    <property role="3GE5qa" value="expressions" />
    <node concept="PrWs8" id="5cbC3YH0Mi4" role="PrDN$">
      <ref role="PrY4T" node="5cbC3YH0Mi5" />
    </node>
  </node>
  <node concept="PlHQZ" id="5cbC3YH0Mi5">
    <property role="1pbfSe" value="405658595" />
    <property role="TrG5h" value="Expression" />
    <property role="EcuMT" value="2863235255901435904" />
    <property role="3GE5qa" value="expressions" />
  </node>
  <node concept="1TIwiD" id="5cbC3YH0Mi6">
    <property role="1pbfSe" value="405467652" />
    <property role="TrG5h" value="Skip" />
    <property role="34LRSv" value="skip" />
    <property role="EcuMT" value="6567811389517796352" />
    <property role="3GE5qa" value="statements" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="5cbC3YH0Mi7" role="PzmwI">
      <ref role="PrY4T" node="5cbC3YH0Mil" />
    </node>
  </node>
  <node concept="1TIwiD" id="5cbC3YH0Mi8">
    <property role="1pbfSe" value="405467652" />
    <property role="TrG5h" value="Assignment" />
    <property role="EcuMT" value="1206399786379129856" />
    <property role="3GE5qa" value="statements" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="5cbC3YH0Mi9" role="1TKVEl">
      <property role="TrG5h" value="Identifier" />
      <property role="IQ2nx" value="8400900831447193600" />
      <ref role="AX2Wp" node="5cbC3YH0MhU" resolve="Identifier" />
    </node>
    <node concept="1TJgyj" id="5cbC3YH0Mia" role="1TKVEi">
      <property role="20kJfa" value="Expression" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <property role="IQ2ns" value="1132193162173669376" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <ref role="20lvS9" node="5cbC3YH0Mi5" resolve="Expression" />
    </node>
    <node concept="PrWs8" id="5cbC3YH0Mib" role="PzmwI">
      <ref role="PrY4T" node="5cbC3YH0Mil" />
    </node>
  </node>
  <node concept="1TIwiD" id="5cbC3YH0Mic">
    <property role="1pbfSe" value="405467652" />
    <property role="TrG5h" value="Selection" />
    <property role="34LRSv" value="if" />
    <property role="EcuMT" value="5928045168092195840" />
    <property role="3GE5qa" value="statements" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="5cbC3YH0Mid" role="1TKVEi">
      <property role="20kJfa" value="Condition" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <property role="IQ2ns" value="3239640203739430912" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <ref role="20lvS9" node="5cbC3YH0Mi3" resolve="Condition" />
    </node>
    <node concept="1TJgyj" id="5cbC3YH0Mie" role="1TKVEi">
      <property role="20kJfa" value="thenstats" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <property role="IQ2ns" value="3864867283597028352" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <ref role="20lvS9" node="5cbC3YH0Mim" />
    </node>
    <node concept="1TJgyj" id="5cbC3YH0Mif" role="1TKVEi">
      <property role="20kJfa" value="elsestats" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <property role="IQ2ns" value="9045063153170544640" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <ref role="20lvS9" node="5cbC3YH0Mim" />
    </node>
    <node concept="PrWs8" id="5cbC3YH0Mig" role="PzmwI">
      <ref role="PrY4T" node="5cbC3YH0Mil" />
    </node>
  </node>
  <node concept="1TIwiD" id="5cbC3YH0Mih">
    <property role="1pbfSe" value="405467652" />
    <property role="TrG5h" value="Loop" />
    <property role="34LRSv" value="while" />
    <property role="EcuMT" value="1070592319839215616" />
    <property role="3GE5qa" value="statements" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="5cbC3YH0Mii" role="1TKVEi">
      <property role="20kJfa" value="Condition" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <property role="IQ2ns" value="8657155790037199872" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <ref role="20lvS9" node="5cbC3YH0Mi3" resolve="Condition" />
    </node>
    <node concept="1TJgyj" id="5cbC3YH0Mij" role="1TKVEi">
      <property role="20kJfa" value="Statement" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <property role="IQ2ns" value="6754398107568158720" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <ref role="20lvS9" node="5cbC3YH0Mil" />
    </node>
    <node concept="PrWs8" id="5cbC3YH0Mik" role="PzmwI">
      <ref role="PrY4T" node="5cbC3YH0Mil" />
    </node>
  </node>
  <node concept="PlHQZ" id="5cbC3YH0Mil">
    <property role="1pbfSe" value="405658595" />
    <property role="TrG5h" value="Statement" />
    <property role="EcuMT" value="1555286898801795072" />
    <property role="3GE5qa" value="statements" />
  </node>
  <node concept="1TIwiD" id="5cbC3YH0Mim">
    <property role="1pbfSe" value="405467652" />
    <property role="TrG5h" value="Statements" />
    <property role="EcuMT" value="1917456685516290048" />
    <property role="3GE5qa" value="statements" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="5cbC3YH0Min" role="1TKVEi">
      <property role="20kJfa" value="Statement" />
      <property role="20lbJX" value="fLJekj6/_1__n" />
      <property role="IQ2ns" value="2387012837292520448" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <ref role="20lvS9" node="5cbC3YH0Mil" resolve="Statement" />
    </node>
  </node>
  <node concept="1TIwiD" id="5cbC3YH0Mio">
    <property role="1pbfSe" value="405467652" />
    <property role="19KtqR" value="true" />
    <property role="TrG5h" value="Program" />
    <property role="34LRSv" value="Program" />
    <property role="EcuMT" value="3820693079455138816" />
    <property role="3GE5qa" value="" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="5cbC3YH0Mip" role="1TKVEl">
      <property role="TrG5h" value="Identifier" />
      <property role="IQ2nx" value="7171736316335130624" />
      <ref role="AX2Wp" node="5cbC3YH0MhU" resolve="Identifier" />
    </node>
    <node concept="1TJgyj" id="5cbC3YH0Miq" role="1TKVEi">
      <property role="20kJfa" value="Statements" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <property role="IQ2ns" value="1104178237406945280" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <ref role="20lvS9" node="5cbC3YH0Mim" resolve="Statements" />
    </node>
  </node>
</model>

