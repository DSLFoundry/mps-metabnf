<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:3410db29-a096-503f-b5d6-1a2ce3c230b5(mbnf.sandbox.RascalImportFixture)">
  <persistence version="9" />
  <languages>
    <use id="9c03c641-469f-49e7-aeed-44a3d19b7253" name="metabnf" version="0" />
    <use id="daafa647-f1f7-4b0b-b096-69cd7c8408c0" name="jetbrains.mps.baseLanguage.regexp" version="0" />
  </languages>
  <imports />
  <registry>
    <language id="9c03c641-469f-49e7-aeed-44a3d19b7253" name="metabnf">
      <concept id="5689872735553437610" name="metabnf.structure.RuleGroup" flags="ng" index="t8saL">
        <child id="5689872735553437613" name="rules" index="t8saQ" />
      </concept>
      <concept id="2738052631436817608" name="metabnf.structure.TerminalReference" flags="ng" index="2GSJ2k">
        <reference id="2738052631437369572" name="rule" index="2GQAiS" />
      </concept>
      <concept id="2504845739424006305" name="metabnf.structure.Keyword" flags="ng" index="3xhzXc" />
      <concept id="2504845739424006163" name="metabnf.structure.NonterminalRule" flags="ng" index="3xhzZY">
        <child id="2504845739424006198" name="terms" index="3xhzZr" />
      </concept>
      <concept id="2504845739424324587" name="metabnf.structure.NonterminalReference" flags="ng" index="3xiQg6">
        <property id="2504845739424658192" name="card" index="3xj4NX" />
        <reference id="2504845739424324590" name="rule" index="3xiQg3" />
      </concept>
      <concept id="2504845739423496082" name="metabnf.structure.grammar" flags="ng" index="3xJwxZ">
        <reference id="2504845739423551607" name="start" index="3xJMYq" />
        <child id="2504845739423551605" name="rules" index="3xJMYo" />
      </concept>
      <concept id="2504845739423561976" name="metabnf.structure.TerminalRule" flags="ng" index="3xJKsl">
        <child id="2861244223630461677" name="regexp" index="q_eir" />
      </concept>
      <concept id="2504845739423561804" name="metabnf.structure.ChoiceRule" flags="ng" index="3xJKux">
        <child id="2504845739423561868" name="nonterminals" index="3xJKtx" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="daafa647-f1f7-4b0b-b096-69cd7c8408c0" name="jetbrains.mps.baseLanguage.regexp">
      <concept id="1174510540317" name="jetbrains.mps.baseLanguage.regexp.structure.InlineRegexpExpression" flags="nn" index="1Qi9sc">
        <child id="1174510571016" name="regexp" index="1QigWp" />
      </concept>
      <concept id="1174554186090" name="jetbrains.mps.baseLanguage.regexp.structure.SymbolClassRegexp" flags="ng" index="1SSD1V">
        <child id="1174557628217" name="part" index="1T5LoC" />
      </concept>
      <concept id="1174554211468" name="jetbrains.mps.baseLanguage.regexp.structure.PositiveSymbolClassRegexp" flags="ng" index="1SSJmt" />
      <concept id="1174558301835" name="jetbrains.mps.baseLanguage.regexp.structure.IntervalSymbolClassPart" flags="ng" index="1T8lYq">
        <property id="1174558315290" name="start" index="1T8p8b" />
        <property id="1174558317822" name="end" index="1T8pRJ" />
      </concept>
    </language>
  </registry>
  <node concept="3xJwxZ" id="ascal000018">
    <property role="TrG5h" value="RascalImportFixture" />
    <ref role="3xJMYq" node="ascal000002" resolve="Program" />
    <node concept="t8saL" id="ascal000006" role="3xJMYo">
      <property role="TrG5h" value="Rascal" />
      <node concept="3xJKsl" id="ascal000001" role="t8saQ">
        <property role="TrG5h" value="IDENTIFIER" />
        <node concept="1Qi9sc" id="ascal000007" role="q_eir">
          <node concept="1SSJmt" id="ascal000008" role="1QigWp">
            <node concept="1T8lYq" id="ascal000009" role="1T5LoC">
              <property role="1T8p8b" value="A" />
              <property role="1T8pRJ" value="Z" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3xJKux" id="ascal000002" role="t8saQ">
        <property role="TrG5h" value="Program" />
        <node concept="3xiQg6" id="ascal000010" role="3xJKtx">
          <ref role="3xiQg3" node="ascal000003" resolve="Program__RascalAlternative1" />
        </node>
        <node concept="3xiQg6" id="ascal000013" role="3xJKtx">
          <ref role="3xiQg3" node="ascal000004" resolve="Program__RascalAlternative2" />
        </node>
      </node>
      <node concept="3xhzZY" id="ascal000005" role="t8saQ">
        <property role="TrG5h" value="Suffix" />
        <node concept="3xhzXc" id="ascal000017" role="3xhzZr">
          <property role="TrG5h" value="!" />
        </node>
      </node>
      <node concept="3xhzZY" id="ascal000003" role="t8saQ">
        <property role="TrG5h" value="Program__RascalAlternative1" />
        <node concept="3xhzXc" id="ascal000011" role="3xhzZr">
          <property role="TrG5h" value="good" />
        </node>
        <node concept="2GSJ2k" id="ascal000012" role="3xhzZr">
          <ref role="2GQAiS" node="ascal000001" resolve="IDENTIFIER" />
        </node>
      </node>
      <node concept="3xhzZY" id="ascal000004" role="t8saQ">
        <property role="TrG5h" value="Program__RascalAlternative2" />
        <node concept="3xhzXc" id="ascal000014" role="3xhzZr">
          <property role="TrG5h" value="hello" />
        </node>
        <node concept="2GSJ2k" id="ascal000015" role="3xhzZr">
          <ref role="2GQAiS" node="ascal000001" resolve="IDENTIFIER" />
        </node>
        <node concept="3xiQg6" id="ascal000016" role="3xhzZr">
          <property role="3xj4NX" value="2b2ZYR3yDpL/AtMostOne" />
          <ref role="3xiQg3" node="ascal000005" resolve="Suffix" />
        </node>
      </node>
    </node>
  </node>
</model>

