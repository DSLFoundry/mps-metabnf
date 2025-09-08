<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:eef72bc7-c17d-410f-855b-33f3f37b989b(mbnf.sandbox.Demo)">
  <persistence version="9" />
  <languages>
    <use id="9c03c641-469f-49e7-aeed-44a3d19b7253" name="metabnf" version="0" />
    <use id="daafa647-f1f7-4b0b-b096-69cd7c8408c0" name="jetbrains.mps.baseLanguage.regexp" version="0" />
  </languages>
  <imports>
    <import index="tpfp" ref="r:00000000-0000-4000-0000-011c89590519(jetbrains.mps.baseLanguage.regexp.jetbrains.mps.regexp.accessory)" implicit="true" />
  </imports>
  <registry>
    <language id="9c03c641-469f-49e7-aeed-44a3d19b7253" name="metabnf">
      <concept id="5689872735553437610" name="metabnf.structure.RuleGroup" flags="ng" index="t8saL">
        <child id="5689872735553437613" name="rules" index="t8saQ" />
      </concept>
      <concept id="2738052631436817608" name="metabnf.structure.TerminalReference" flags="ng" index="2GSJ2k">
        <reference id="2738052631437369572" name="rule" index="2GQAiS" />
      </concept>
      <concept id="2504845739424006305" name="metabnf.structure.Keyword" flags="ng" index="3xhzXc" />
      <concept id="2504845739424006197" name="metabnf.structure.ITerm" flags="ng" index="3xhzZo">
        <property id="513220601742038557" name="newline" index="d84lQ" />
        <property id="513220601742038498" name="indent" index="d84q9" />
      </concept>
      <concept id="2504845739424006163" name="metabnf.structure.NonterminalRule" flags="ng" index="3xhzZY">
        <child id="2504845739424006198" name="terms" index="3xhzZr" />
      </concept>
      <concept id="2504845739424324587" name="metabnf.structure.NonterminalReference" flags="ng" index="3xiQg6">
        <property id="4939832016425377885" name="sep" index="2DFMXm" />
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
      <concept id="8822712935563342996" name="metabnf.structure.EmptyLine" flags="ng" index="3P3UoZ" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="daafa647-f1f7-4b0b-b096-69cd7c8408c0" name="jetbrains.mps.baseLanguage.regexp">
      <concept id="1174482753837" name="jetbrains.mps.baseLanguage.regexp.structure.StringLiteralRegexp" flags="ng" index="1OC9wW">
        <property id="1174482761807" name="text" index="1OCb_u" />
      </concept>
      <concept id="1174482769792" name="jetbrains.mps.baseLanguage.regexp.structure.OrRegexp" flags="ng" index="1OCdqh" />
      <concept id="1174482804200" name="jetbrains.mps.baseLanguage.regexp.structure.PlusRegexp" flags="ng" index="1OClNT" />
      <concept id="1174482808826" name="jetbrains.mps.baseLanguage.regexp.structure.StarRegexp" flags="ng" index="1OCmVF" />
      <concept id="1174485167097" name="jetbrains.mps.baseLanguage.regexp.structure.BinaryRegexp" flags="ng" index="1OLmFC">
        <child id="1174485176897" name="left" index="1OLpdg" />
        <child id="1174485181039" name="right" index="1OLqdY" />
      </concept>
      <concept id="1174485235885" name="jetbrains.mps.baseLanguage.regexp.structure.UnaryRegexp" flags="ng" index="1OLBAW">
        <child id="1174485243418" name="regexp" index="1OLDsb" />
      </concept>
      <concept id="1174491169200" name="jetbrains.mps.baseLanguage.regexp.structure.ParensRegexp" flags="ng" index="1P8g2x">
        <child id="1174491174779" name="expr" index="1P8hpE" />
      </concept>
      <concept id="1174510540317" name="jetbrains.mps.baseLanguage.regexp.structure.InlineRegexpExpression" flags="nn" index="1Qi9sc">
        <child id="1174510571016" name="regexp" index="1QigWp" />
      </concept>
      <concept id="1174555732504" name="jetbrains.mps.baseLanguage.regexp.structure.PredefinedSymbolClassRegexp" flags="ng" index="1SYyG9">
        <reference id="1174555843709" name="symbolClass" index="1SYXPG" />
      </concept>
    </language>
  </registry>
  <node concept="3xJwxZ" id="5Dh5jJl$$AE">
    <property role="TrG5h" value="Demo" />
    <ref role="3xJMYq" node="5Dh5jJl$$AF" resolve="Program" />
    <node concept="t8saL" id="5Dh5jJl$$AK" role="3xJMYo">
      <property role="TrG5h" value="terminals" />
      <node concept="3xJKsl" id="5Dh5jJl$$AO" role="t8saQ">
        <property role="TrG5h" value="Identifier" />
        <node concept="1Qi9sc" id="5Dh5jJl$$AP" role="q_eir">
          <node concept="1OClNT" id="5Dh5jJl$$B_" role="1QigWp">
            <node concept="1SYyG9" id="5Dh5jJl$$Bf" role="1OLDsb">
              <ref role="1SYXPG" to="tpfp:h5SUJUw" resolve="\w" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3xJKsl" id="5Dh5jJl$$Fg" role="t8saQ">
        <property role="TrG5h" value="BooleanValue" />
        <node concept="1Qi9sc" id="5Dh5jJl$$Fi" role="q_eir">
          <node concept="1OCdqh" id="5Dh5jJl$$FE" role="1QigWp">
            <node concept="1P8g2x" id="5Dh5jJl$$FQ" role="1OLqdY">
              <node concept="1OC9wW" id="5Dh5jJl$$FU" role="1P8hpE">
                <property role="1OCb_u" value="False" />
              </node>
            </node>
            <node concept="1P8g2x" id="5Dh5jJl$$Fw" role="1OLpdg">
              <node concept="1OC9wW" id="5Dh5jJl$$FB" role="1P8hpE">
                <property role="1OCb_u" value="True" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3xJKsl" id="5Dh5jJl$$PE" role="t8saQ">
        <property role="TrG5h" value="NumberValue" />
        <node concept="1Qi9sc" id="5Dh5jJl$$PG" role="q_eir">
          <node concept="1OCmVF" id="5Dh5jJl$$Q9" role="1QigWp">
            <node concept="1SYyG9" id="5Dh5jJl$$Q1" role="1OLDsb">
              <ref role="1SYXPG" to="tpfp:h5SV6x8" resolve="\p{Digit}" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3P3UoZ" id="5Dh5jJl$$DL" role="3xJMYo" />
    <node concept="t8saL" id="5Dh5jJl$$Dv" role="3xJMYo">
      <property role="TrG5h" value="expressions" />
      <node concept="3xhzZY" id="5Dh5jJl$$H5" role="t8saQ">
        <property role="TrG5h" value="Bool" />
        <node concept="2GSJ2k" id="5Dh5jJl$$H7" role="3xhzZr">
          <ref role="2GQAiS" node="5Dh5jJl$$Fg" resolve="BooleanValue" />
        </node>
      </node>
      <node concept="3xhzZY" id="5Dh5jJl$$Qt" role="t8saQ">
        <property role="TrG5h" value="Number" />
        <node concept="2GSJ2k" id="5Dh5jJl$$QA" role="3xhzZr">
          <ref role="2GQAiS" node="5Dh5jJl$$PE" resolve="NumberValue" />
        </node>
      </node>
      <node concept="3xJKux" id="5Dh5jJl$$Hl" role="t8saQ">
        <property role="TrG5h" value="Condition" />
        <node concept="3xiQg6" id="5Dh5jJl$$Hq" role="3xJKtx">
          <ref role="3xiQg3" node="5Dh5jJl$$H5" resolve="Bool" />
        </node>
      </node>
      <node concept="3xJKux" id="5Dh5jJl$$M1" role="t8saQ">
        <property role="TrG5h" value="Expression" />
        <node concept="3xiQg6" id="5Dh5jJl$$M8" role="3xJKtx">
          <ref role="3xiQg3" node="5Dh5jJl$$Hl" resolve="Condition" />
        </node>
        <node concept="3xiQg6" id="5Dh5jJl$$QC" role="3xJKtx">
          <ref role="3xiQg3" node="5Dh5jJl$$Qt" resolve="Number" />
        </node>
      </node>
    </node>
    <node concept="3P3UoZ" id="5Dh5jJl$$K0" role="3xJMYo" />
    <node concept="t8saL" id="5Dh5jJl$$CL" role="3xJMYo">
      <property role="TrG5h" value="statements" />
      <node concept="3xhzZY" id="5Dh5jJl_zMP" role="t8saQ">
        <property role="TrG5h" value="Skip" />
        <node concept="3xhzXc" id="5Dh5jJl_zNh" role="3xhzZr">
          <property role="TrG5h" value="skip" />
        </node>
      </node>
      <node concept="3xhzZY" id="5Dh5jJl$$JB" role="t8saQ">
        <property role="TrG5h" value="Assignment" />
        <node concept="2GSJ2k" id="5Dh5jJl$$JN" role="3xhzZr">
          <ref role="2GQAiS" node="5Dh5jJl$$AO" resolve="Identifier" />
        </node>
        <node concept="3xhzXc" id="5Dh5jJl$$JS" role="3xhzZr">
          <property role="TrG5h" value=":=" />
        </node>
        <node concept="3xiQg6" id="5Dh5jJl$$Ma" role="3xhzZr">
          <ref role="3xiQg3" node="5Dh5jJl$$M1" resolve="Expression" />
        </node>
        <node concept="3xhzXc" id="5Dh5jJl$$Ms" role="3xhzZr">
          <property role="TrG5h" value=";" />
        </node>
      </node>
      <node concept="3xhzZY" id="5Dh5jJl$$D3" role="t8saQ">
        <property role="TrG5h" value="Selection" />
        <node concept="3xhzXc" id="5Dh5jJl$$D9" role="3xhzZr">
          <property role="TrG5h" value="if" />
        </node>
        <node concept="3xiQg6" id="5Dh5jJl$$Gq" role="3xhzZr">
          <ref role="3xiQg3" node="5Dh5jJl$$Hl" resolve="Condition" />
        </node>
        <node concept="3xhzXc" id="5Dh5jJl$$Hw" role="3xhzZr">
          <property role="TrG5h" value="then" />
        </node>
        <node concept="3xiQg6" id="5Dh5jJl$$HE" role="3xhzZr">
          <property role="d84q9" value="true" />
          <property role="d84lQ" value="true" />
          <property role="TrG5h" value="thenstats" />
          <property role="2DFMXm" value="\n" />
          <ref role="3xiQg3" node="5Dh5jJl_zKX" resolve="Statements" />
        </node>
        <node concept="3xhzXc" id="5Dh5jJl$$HQ" role="3xhzZr">
          <property role="TrG5h" value="else" />
          <property role="d84lQ" value="true" />
        </node>
        <node concept="3xiQg6" id="5Dh5jJl$$I4" role="3xhzZr">
          <property role="d84q9" value="true" />
          <property role="d84lQ" value="true" />
          <property role="TrG5h" value="elsestats" />
          <property role="2DFMXm" value="\n" />
          <ref role="3xiQg3" node="5Dh5jJl_zKX" resolve="Statements" />
        </node>
        <node concept="3xhzXc" id="5Dh5jJl$$Ik" role="3xhzZr">
          <property role="TrG5h" value="fi" />
          <property role="d84lQ" value="true" />
        </node>
      </node>
      <node concept="3xhzZY" id="5Dh5jJl$$NF" role="t8saQ">
        <property role="TrG5h" value="Loop" />
        <node concept="3xhzXc" id="5Dh5jJl$$NY" role="3xhzZr">
          <property role="TrG5h" value="while" />
        </node>
        <node concept="3xiQg6" id="5Dh5jJl$$O3" role="3xhzZr">
          <ref role="3xiQg3" node="5Dh5jJl$$Hl" resolve="Condition" />
        </node>
        <node concept="3xhzXc" id="5Dh5jJl$$Ob" role="3xhzZr">
          <property role="TrG5h" value="do" />
        </node>
        <node concept="3xiQg6" id="5Dh5jJl$$Ol" role="3xhzZr">
          <property role="d84q9" value="true" />
          <property role="d84lQ" value="true" />
          <ref role="3xiQg3" node="5Dh5jJl$$CY" resolve="Statement" />
        </node>
        <node concept="3xhzXc" id="5Dh5jJl$$Ox" role="3xhzZr">
          <property role="TrG5h" value="od" />
          <property role="d84lQ" value="true" />
        </node>
      </node>
      <node concept="3xJKux" id="5Dh5jJl$$CY" role="t8saQ">
        <property role="TrG5h" value="Statement" />
        <node concept="3xiQg6" id="5Dh5jJl_zNj" role="3xJKtx">
          <ref role="3xiQg3" node="5Dh5jJl_zMP" resolve="Skip" />
        </node>
        <node concept="3xiQg6" id="5Dh5jJl$$M$" role="3xJKtx">
          <ref role="3xiQg3" node="5Dh5jJl$$JB" resolve="Assignment" />
        </node>
        <node concept="3xiQg6" id="5Dh5jJl$$My" role="3xJKtx">
          <ref role="3xiQg3" node="5Dh5jJl$$D3" resolve="Selection" />
        </node>
        <node concept="3xiQg6" id="5Dh5jJl$$OE" role="3xJKtx">
          <ref role="3xiQg3" node="5Dh5jJl$$NF" resolve="Loop" />
        </node>
      </node>
      <node concept="3xhzZY" id="5Dh5jJl_zKX" role="t8saQ">
        <property role="TrG5h" value="Statements" />
        <node concept="3xiQg6" id="5Dh5jJl_zLp" role="3xhzZr">
          <property role="3xj4NX" value="2b2ZYR3yDpO/AtleastOne" />
          <ref role="3xiQg3" node="5Dh5jJl$$CY" resolve="Statement" />
        </node>
      </node>
    </node>
    <node concept="3P3UoZ" id="5Dh5jJl$$Em" role="3xJMYo" />
    <node concept="3xhzZY" id="5Dh5jJl$$AF" role="3xJMYo">
      <property role="TrG5h" value="Program" />
      <node concept="3xhzXc" id="5Dh5jJl$$Co" role="3xhzZr">
        <property role="TrG5h" value="Program" />
      </node>
      <node concept="2GSJ2k" id="5Dh5jJl$$Ct" role="3xhzZr">
        <ref role="2GQAiS" node="5Dh5jJl$$AO" resolve="Identifier" />
      </node>
      <node concept="3xhzXc" id="5Dh5jJl$$OL" role="3xhzZr">
        <property role="TrG5h" value="is" />
      </node>
      <node concept="3xhzXc" id="5Dh5jJl$$Pl" role="3xhzZr">
        <property role="TrG5h" value="begin" />
        <property role="d84lQ" value="true" />
      </node>
      <node concept="3xiQg6" id="5Dh5jJl$$OV" role="3xhzZr">
        <property role="d84q9" value="true" />
        <property role="d84lQ" value="true" />
        <ref role="3xiQg3" node="5Dh5jJl_zKX" resolve="Statements" />
      </node>
      <node concept="3xhzXc" id="5Dh5jJl$$P7" role="3xhzZr">
        <property role="TrG5h" value="end;" />
        <property role="d84lQ" value="true" />
      </node>
    </node>
    <node concept="3P3UoZ" id="5Dh5jJl$$BT" role="3xJMYo" />
  </node>
</model>

