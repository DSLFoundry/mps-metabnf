<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:697425fa-dfaa-5cd9-8971-6ed844586d5f(mbnf.sandbox.RascalTextImportFixture)">
  <persistence version="9" />
  <languages>
    <use id="48bed45b-b394-4796-8621-cea28d56a6da" name="Demo" version="0" />
    <use id="3e22ecc8-2d7d-4785-af04-96cbcec526fa" name="Python" version="0" />
    <use id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core" version="0" />
  </languages>
  <imports />
  <registry>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="48bed45b-b394-4796-8621-cea28d56a6da" name="Demo">
      <concept id="8924372553097135104" name="Demo.structure.Statements" flags="ng" index="35g7Ad">
        <child id="9207827632061235200" name="Statement" index="15KopM" />
      </concept>
      <concept id="5054346797381394432" name="Demo.structure.Number" flags="ng" index="1jEomy">
        <property id="1458547674486468608" name="NumberValue" index="3dwjPx" />
      </concept>
      <concept id="5375589007201037312" name="Demo.structure.Assignment" flags="ng" index="3qbS6S">
        <property id="8961586309092997120" name="Identifier" index="3X80H4" />
        <child id="5228012690510458880" name="Expression" index="2b$p7n" />
      </concept>
      <concept id="124149353625671680" name="Demo.structure.Program" flags="ng" index="3CiG$H">
        <property id="2034700250064756736" name="Identifier" index="31JDko" />
        <child id="7285569539012710400" name="Statements" index="12mtF_" />
      </concept>
    </language>
  </registry>
  <node concept="3CiG$H" id="arsed000001">
    <property role="31JDko" value="P" />
    <property role="TrG5h" value="RascalTextImportFixture" />
    <node concept="35g7Ad" id="arsed000002" role="12mtF_">
      <node concept="3qbS6S" id="arsed000003" role="15KopM">
        <property role="3X80H4" value="X" />
        <node concept="1jEomy" id="arsed000004" role="2b$p7n">
          <property role="3dwjPx" value="1" />
        </node>
      </node>
    </node>
  </node>
</model>

