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
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <property id="1096454100552" name="rootable" index="19KtqR" />
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
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
    <ref role="1TJDcQ" to="tpck:gw2VY9q" />
    <node concept="1TJgyi" id="qalK2bn9Sg" role="1TKVEl">
      <property role="TrG5h" value="static" />
      <property role="IQ2nx" value="630103700809251405" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" />
    </node>
    <node concept="1TJgyj" id="SzoEKCxLlM" role="1TKVEi">
      <property role="IQ2ns" value="677394515573892370" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="statements" />
      <property role="20lbJX" value="fLJekj6/_1__n" />
      <ref role="20lvS9" node="pokUpJQ$xE" />
    </node>
    <node concept="1TJgyj" id="GJjzMoNEJh" role="1TKVEi">
      <property role="IQ2ns" value="205287143409972969" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="elseStatements" />
      <property role="20lbJX" value="fLJekj6/_1__n" />
      <ref role="20lvS9" node="pokUpJQ$xE" />
    </node>
  </node>
  <node concept="1TIwiD" id="pokUpJQ$xE">
    <property role="34LRSv" value="skip" />
    <property role="EcuMT" value="330703645346546541" />
    <property role="1pbfSe" value="405467652" />
    <property role="TrG5h" value="Statement" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" />
  </node>
  <node concept="1TIwiD" id="dIPqnga0qR">
    <property role="EcuMT" value="131190632983854520" />
    <property role="1pbfSe" value="405467652" />
    <property role="TrG5h" value="Declaration" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" />
    <node concept="1TJgyi" id="27ycVzfuMb" role="1TKVEl">
      <property role="TrG5h" value="public" />
      <property role="IQ2nx" value="747412491540730435" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" />
    </node>
    <node concept="1TJgyi" id="kvdqv6tNUD" role="1TKVEl">
      <property role="TrG5h" value="identifier" />
      <property role="IQ2nx" value="425049498302749281" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" />
    </node>
    <node concept="1TJgyj" id="1sHbqs4rTK" role="1TKVEi">
      <property role="IQ2ns" value="457787586736161879" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="clause" />
      <ref role="20lvS9" node="gh6_CIVq1L" />
    </node>
  </node>
  <node concept="1TIwiD" id="gh6_CIVq1L">
    <property role="34LRSv" value="else" />
    <property role="EcuMT" value="894050251499783735" />
    <property role="1pbfSe" value="405467652" />
    <property role="TrG5h" value="ElseClause" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" />
    <node concept="1TJgyj" id="F8K3F5g4Ey" role="1TKVEi">
      <property role="IQ2ns" value="541487496020076895" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="statements" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="pokUpJQ$xE" />
    </node>
  </node>
</model>

