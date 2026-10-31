<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:29df74a9-1ef8-4ba0-9f28-0451ab1e71a4(DemoUsability.structure)">
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
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
        <property id="5092175715804935370" name="conceptAlias" index="34LRSv" />
        <property id="1587916991969465369" name="intConceptId" index="1pbfSe" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
        <child id="1071489727084" name="propertyDeclaration" index="1TKVEl" />
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
  <node concept="1TIwiD" id="clKjNn70OE">
    <property role="34LRSv" value="program" />
    <property role="EcuMT" value="304920175065536480" />
    <property role="1pbfSe" value="405467652" />
    <property role="TrG5h" value="Program" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="qalK2bn9Sg" role="1TKVEl">
      <property role="TrG5h" value="static" />
      <property role="IQ2nx" value="630103700809251405" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyj" id="SzoEKCxLlM" role="1TKVEi">
      <property role="IQ2ns" value="677394515573892370" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="statements" />
      <property role="20lbJX" value="fLJekj6/_1__n" />
      <ref role="20lvS9" node="pokUpJQ$xE" resolve="Statement" />
    </node>
    <node concept="1TJgyj" id="GJjzMoNEJh" role="1TKVEi">
      <property role="IQ2ns" value="205287143409972969" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="elseStatements" />
      <property role="20lbJX" value="fLJekj6/_1__n" />
      <ref role="20lvS9" node="pokUpJQ$xE" resolve="Statement" />
    </node>
  </node>
  <node concept="1TIwiD" id="pokUpJQ$xE">
    <property role="34LRSv" value="skip" />
    <property role="EcuMT" value="330703645346546541" />
    <property role="1pbfSe" value="405467652" />
    <property role="TrG5h" value="Statement" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="dIPqnga0qR">
    <property role="EcuMT" value="131190632983854520" />
    <property role="1pbfSe" value="405467652" />
    <property role="TrG5h" value="Declaration" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="27ycVzfuMb" role="1TKVEl">
      <property role="TrG5h" value="public" />
      <property role="IQ2nx" value="747412491540730435" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyi" id="kvdqv6tNUD" role="1TKVEl">
      <property role="TrG5h" value="identifier" />
      <property role="IQ2nx" value="425049498302749281" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyj" id="1sHbqs4rTK" role="1TKVEi">
      <property role="IQ2ns" value="457787586736161879" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="clause" />
      <ref role="20lvS9" node="gh6_CIVq1L" resolve="ElseClause" />
    </node>
  </node>
  <node concept="1TIwiD" id="gh6_CIVq1L">
    <property role="34LRSv" value="else" />
    <property role="EcuMT" value="894050251499783735" />
    <property role="1pbfSe" value="405467652" />
    <property role="TrG5h" value="ElseClause" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="F8K3F5g4Ey" role="1TKVEi">
      <property role="IQ2ns" value="541487496020076895" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="statements" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="pokUpJQ$xE" resolve="Statement" />
    </node>
  </node>
  <node concept="1TIwiD" id="7Owspc8yxr">
    <property role="1pbfSe" value="405467652" />
    <property role="TrG5h" value="Block" />
    <property role="34LRSv" value="begin" />
    <property role="EcuMT" value="273754124767157402" />
    <property role="3GE5qa" value="" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="odE2kWcFue" role="1TKVEi">
      <property role="20kJfa" value="statements" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <property role="IQ2ns" value="561929395184684826" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <ref role="20lvS9" node="pokUpJQ$xE" resolve="Statement" />
    </node>
    <node concept="1TJgyj" id="B4Qkm2DZ1D" role="1TKVEi">
      <property role="20kJfa" value="child" />
      <property role="IQ2ns" value="370756925354297355" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <ref role="20lvS9" node="7Owspc8yxr" resolve="Block" />
    </node>
  </node>
  <node concept="1TIwiD" id="3R$mY2PS4TB">
    <property role="TrG5h" value="StateMachine" />
    <property role="EcuMT" value="4459790551685811815" />
    <property role="1pbfSe" value="405467652" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="3R$mY2PS4TF" role="1TKVEl">
      <property role="TrG5h" value="identifier" />
      <property role="IQ2nx" value="4459790551685811819" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyj" id="3R$mY2PS4TK" role="1TKVEi">
      <property role="20kJfa" value="events" />
      <property role="IQ2ns" value="4459790551685811824" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <ref role="20lvS9" node="3R$mY2PS4TC" resolve="Event" />
    </node>
    <node concept="1TJgyj" id="3R$mY2PS4TL" role="1TKVEi">
      <property role="20kJfa" value="states" />
      <property role="IQ2ns" value="4459790551685811825" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <ref role="20lvS9" node="3R$mY2PS4TD" resolve="State" />
    </node>
    <node concept="PrWs8" id="3R$mY2PT$10" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="3R$mY2PS4TC">
    <property role="TrG5h" value="Event" />
    <property role="EcuMT" value="4459790551685811816" />
    <property role="1pbfSe" value="405467652" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="3R$mY2PS4TG" role="1TKVEl">
      <property role="TrG5h" value="identifier" />
      <property role="IQ2nx" value="4459790551685811820" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="3R$mY2PS4TD">
    <property role="TrG5h" value="State" />
    <property role="EcuMT" value="4459790551685811817" />
    <property role="1pbfSe" value="405467652" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="3R$mY2PS4TM" role="1TKVEi">
      <property role="20kJfa" value="transitions" />
      <property role="IQ2ns" value="4459790551685811826" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <ref role="20lvS9" node="3R$mY2PS4TE" resolve="Transition" />
    </node>
    <node concept="1TJgyi" id="3R$mY2PS4TH" role="1TKVEl">
      <property role="TrG5h" value="identifier" />
      <property role="IQ2nx" value="4459790551685811821" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="3R$mY2QeeCx" role="1TKVEl">
      <property role="TrG5h" value="matrixNote" />
      <property role="IQ2nx" value="4459790551689999917" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="3R$mY2PS4TE">
    <property role="TrG5h" value="Transition" />
    <property role="EcuMT" value="4459790551685811818" />
    <property role="1pbfSe" value="405467652" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="3R$mY2PS4TI" role="1TKVEl">
      <property role="TrG5h" value="event" />
      <property role="IQ2nx" value="4459790551685811822" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="3R$mY2PS4TJ" role="1TKVEl">
      <property role="TrG5h" value="target" />
      <property role="IQ2nx" value="4459790551685811823" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
</model>

