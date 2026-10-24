<?xml version='1.0' encoding='UTF-8'?>
<model ref="r:697425fa-dfaa-5cd9-8971-6ed844586d5f(mbnf.sandbox.RascalTextImportFixture)">
  <persistence version="9" />
  <languages>
    <use id="48bed45b-b394-4796-8621-cea28d56a6da" name="Demo" version="0" />
    <use id="3e22ecc8-2d7d-4785-af04-96cbcec526fa" name="Python" version="0" />
    <use id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core" version="0" />
  </languages>
  <imports />
  <registry>
    <language id="48bed45b-b394-4796-8621-cea28d56a6da" name="Demo">
      <concept id="5054346797381394432" name="Demo.structure.Number" flags="ng" index="2fLPg3">
        <property id="1458547674486468608" name="NumberValue" index="2fLPg2" />
      </concept>
      <concept id="2002752506294295552" name="Demo.structure.Skip" flags="ng" index="2fLPg5" />
      <concept id="1246956326273680384" name="Demo.structure.Bool" flags="ng" index="2fLPge">
        <property id="5986324905253364736" name="BooleanValue" index="2fLPgd" />
      </concept>
      <concept id="124149353625671680" name="Demo.structure.Program" flags="ng" index="2fLPhF">
        <property id="2034700250064756736" name="Identifier" index="2fLPhE" />
        <child id="7285569539012710400" name="Statements" index="2fLPhD" />
      </concept>
      <concept id="8924372553097135104" name="Demo.structure.Statements" flags="ng" index="2fLPhP">
        <child id="9207827632061235200" name="Statement" index="2fLPhO" />
      </concept>
      <concept id="5375589007201037312" name="Demo.structure.Assignment" flags="ng" index="2fLPhV">
        <property id="8961586309092997120" name="Identifier" index="2fLPhU" />
        <child id="5228012690510458880" name="Expression" index="2fLPhT" />
      </concept>
      <concept id="2684964451189924864" name="Demo.structure.Selection" flags="ng" index="2fLPhZ">
        <child id="7522875723678389248" name="elsestats" index="2fLPhW" />
        <child id="5525090500470169600" name="thenstats" index="2fLPhX" />
        <child id="3810482086162611200" name="Condition" index="2fLPhY" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="2fLPhF" id="Parsed000001">
    <property role="2fLPhE" value="P" />
    <node concept="2fLPhP" id="Parsed000002" role="2fLPhD">
      <node concept="2fLPhV" id="Parsed000003" role="2fLPhO">
        <property role="2fLPhU" value="X" />
        <node concept="2fLPg3" id="Parsed000004" role="2fLPhT">
          <property role="2fLPg2" value="1" />
        </node>
      </node>
    </node>
    <property role="TrG5h" value="RascalTextImportFixture" />
  </node>
</model>