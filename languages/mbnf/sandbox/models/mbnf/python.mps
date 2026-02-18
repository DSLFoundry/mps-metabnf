<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:b93f76a9-bff1-4cec-bcda-42793f5523c5(mbnf.python)">
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
      <concept id="4939832016426343668" name="metabnf.structure.Comment" flags="ng" index="2DJ5fZ" />
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
      <concept id="1174482808826" name="jetbrains.mps.baseLanguage.regexp.structure.StarRegexp" flags="ng" index="1OCmVF" />
      <concept id="1174484562151" name="jetbrains.mps.baseLanguage.regexp.structure.SeqRegexp" flags="ng" index="1OJ37Q" />
      <concept id="1174485167097" name="jetbrains.mps.baseLanguage.regexp.structure.BinaryRegexp" flags="ng" index="1OLmFC">
        <child id="1174485176897" name="left" index="1OLpdg" />
        <child id="1174485181039" name="right" index="1OLqdY" />
      </concept>
      <concept id="1174485235885" name="jetbrains.mps.baseLanguage.regexp.structure.UnaryRegexp" flags="ng" index="1OLBAW">
        <child id="1174485243418" name="regexp" index="1OLDsb" />
      </concept>
      <concept id="1174510540317" name="jetbrains.mps.baseLanguage.regexp.structure.InlineRegexpExpression" flags="nn" index="1Qi9sc">
        <child id="1174510571016" name="regexp" index="1QigWp" />
      </concept>
      <concept id="1174554186090" name="jetbrains.mps.baseLanguage.regexp.structure.SymbolClassRegexp" flags="ng" index="1SSD1V">
        <child id="1174557628217" name="part" index="1T5LoC" />
      </concept>
      <concept id="1174554211468" name="jetbrains.mps.baseLanguage.regexp.structure.PositiveSymbolClassRegexp" flags="ng" index="1SSJmt" />
      <concept id="1174557878319" name="jetbrains.mps.baseLanguage.regexp.structure.CharacterSymbolClassPart" flags="ng" index="1T6I$Y">
        <property id="1174557887320" name="character" index="1T6KD9" />
      </concept>
      <concept id="1174558301835" name="jetbrains.mps.baseLanguage.regexp.structure.IntervalSymbolClassPart" flags="ng" index="1T8lYq">
        <property id="1174558315290" name="start" index="1T8p8b" />
        <property id="1174558317822" name="end" index="1T8pRJ" />
      </concept>
    </language>
  </registry>
  <node concept="3xJwxZ" id="4VQvhHjW2_G">
    <property role="TrG5h" value="Python" />
    <ref role="3xJMYq" node="4VQvhHjW2Gm" resolve="program" />
    <node concept="2DJ5fZ" id="4idNKJHcJat" role="3xJMYo">
      <property role="TrG5h" value="PoC definition of python grammar. Based on Python 3. w.i.p." />
    </node>
    <node concept="3P3UoZ" id="4idNKJHcJhF" role="3xJMYo" />
    <node concept="t8saL" id="4VQvhHjW3Rb" role="3xJMYo">
      <property role="TrG5h" value="terminals" />
      <node concept="3xJKsl" id="4VQvhHjW3RS" role="t8saQ">
        <property role="TrG5h" value="NAME" />
        <node concept="1Qi9sc" id="2uPbBoX8SqC" role="q_eir">
          <node concept="1OJ37Q" id="2uPbBoX8SqD" role="1QigWp">
            <node concept="1OCmVF" id="2uPbBoX8SqE" role="1OLqdY">
              <node concept="1SSJmt" id="2uPbBoX8SqF" role="1OLDsb">
                <node concept="1T6I$Y" id="2uPbBoX8SqG" role="1T5LoC">
                  <property role="1T6KD9" value="_" />
                </node>
                <node concept="1T8lYq" id="2uPbBoX8SqH" role="1T5LoC">
                  <property role="1T8p8b" value="a" />
                  <property role="1T8pRJ" value="z" />
                </node>
                <node concept="1T8lYq" id="2uPbBoX8SqI" role="1T5LoC">
                  <property role="1T8p8b" value="A" />
                  <property role="1T8pRJ" value="Z" />
                </node>
                <node concept="1T8lYq" id="2uPbBoX8SqJ" role="1T5LoC">
                  <property role="1T8p8b" value="0" />
                  <property role="1T8pRJ" value="9" />
                </node>
              </node>
            </node>
            <node concept="1SSJmt" id="2uPbBoX8SqK" role="1OLpdg">
              <node concept="1T6I$Y" id="2uPbBoX8SqL" role="1T5LoC">
                <property role="1T6KD9" value="_" />
              </node>
              <node concept="1T8lYq" id="2uPbBoX8SqM" role="1T5LoC">
                <property role="1T8p8b" value="a" />
                <property role="1T8pRJ" value="z" />
              </node>
              <node concept="1T8lYq" id="2uPbBoX8SqN" role="1T5LoC">
                <property role="1T8p8b" value="A" />
                <property role="1T8pRJ" value="Z" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3xJKsl" id="4VQvhHjW6Bf" role="t8saQ">
        <property role="TrG5h" value="DOT" />
        <node concept="1Qi9sc" id="2uPbBoX8SmY" role="q_eir">
          <node concept="1SSJmt" id="2uPbBoX8SmZ" role="1QigWp">
            <node concept="1T6I$Y" id="2uPbBoX8Sn0" role="1T5LoC">
              <property role="1T6KD9" value="." />
            </node>
          </node>
        </node>
      </node>
      <node concept="3xJKsl" id="4VQvhHjW6DG" role="t8saQ">
        <property role="TrG5h" value="ELLIPSIS" />
        <node concept="1Qi9sc" id="2uPbBoX8Smq" role="q_eir">
          <node concept="1OJ37Q" id="2uPbBoX8Smr" role="1QigWp">
            <node concept="1OJ37Q" id="2uPbBoX8Sms" role="1OLqdY">
              <node concept="1SSJmt" id="2uPbBoX8Smt" role="1OLpdg">
                <node concept="1T6I$Y" id="2uPbBoX8Smu" role="1T5LoC">
                  <property role="1T6KD9" value="." />
                </node>
              </node>
              <node concept="1SSJmt" id="2uPbBoX8Smv" role="1OLqdY">
                <node concept="1T6I$Y" id="2uPbBoX8Smw" role="1T5LoC">
                  <property role="1T6KD9" value="." />
                </node>
              </node>
            </node>
            <node concept="1SSJmt" id="2uPbBoX8Smx" role="1OLpdg">
              <node concept="1T6I$Y" id="2uPbBoX8Smy" role="1T5LoC">
                <property role="1T6KD9" value="." />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3xJKsl" id="6z$mG1Viq1F" role="t8saQ">
        <property role="TrG5h" value="STRING" />
        <node concept="1Qi9sc" id="6z$mG1Viq1H" role="q_eir">
          <node concept="1OC9wW" id="6z$mG1Viq2S" role="1QigWp">
            <property role="1OCb_u" value="todo" />
          </node>
        </node>
      </node>
      <node concept="3xJKsl" id="6z$mG1Viqku" role="t8saQ">
        <property role="TrG5h" value="NUMBER" />
        <node concept="1Qi9sc" id="6z$mG1Viqkw" role="q_eir">
          <node concept="1OC9wW" id="6z$mG1Viqlq" role="1QigWp">
            <property role="1OCb_u" value="todo" />
          </node>
        </node>
      </node>
      <node concept="3P3UoZ" id="6z$mG1ViqjJ" role="t8saQ" />
      <node concept="3xhzZY" id="6z$mG1VikTr" role="t8saQ">
        <property role="TrG5h" value="True" />
        <node concept="3xhzXc" id="6z$mG1VikU0" role="3xhzZr">
          <property role="TrG5h" value="True" />
        </node>
      </node>
      <node concept="3xhzZY" id="6z$mG1VikUG" role="t8saQ">
        <property role="TrG5h" value="False" />
        <node concept="3xhzXc" id="6z$mG1VikVj" role="3xhzZr">
          <property role="TrG5h" value="False" />
        </node>
      </node>
      <node concept="3xhzZY" id="6z$mG1Vilc$" role="t8saQ">
        <property role="TrG5h" value="None" />
        <node concept="3xhzXc" id="6z$mG1Vildd" role="3xhzZr">
          <property role="TrG5h" value="None" />
        </node>
      </node>
      <node concept="3xhzZY" id="6z$mG1Viq3I" role="t8saQ">
        <property role="TrG5h" value="number" />
        <node concept="2GSJ2k" id="6z$mG1Viq4t" role="3xhzZr">
          <ref role="2GQAiS" node="6z$mG1Viqku" resolve="NUMBER" />
        </node>
      </node>
      <node concept="3xhzZY" id="6z$mG1ViqlA" role="t8saQ">
        <property role="TrG5h" value="string" />
        <node concept="2GSJ2k" id="6z$mG1ViqlB" role="3xhzZr">
          <ref role="2GQAiS" node="6z$mG1Viq1F" resolve="STRING" />
        </node>
      </node>
      <node concept="3xhzZY" id="6z$mG1VirqH" role="t8saQ">
        <property role="TrG5h" value="strings" />
        <node concept="3xiQg6" id="6z$mG1Virry" role="3xhzZr">
          <property role="3xj4NX" value="2b2ZYR3yDpO/AtleastOne" />
          <ref role="3xiQg3" node="6z$mG1ViqlA" resolve="string" />
        </node>
      </node>
      <node concept="3xhzZY" id="4VQvhHjWhBx" role="t8saQ">
        <property role="TrG5h" value="name" />
        <node concept="2GSJ2k" id="2nZx5M9aAVr" role="3xhzZr">
          <ref role="2GQAiS" node="4VQvhHjW3RS" resolve="NAME" />
        </node>
      </node>
      <node concept="3xhzZY" id="4VQvhHjWbVO" role="t8saQ">
        <property role="TrG5h" value="simple_dot" />
        <node concept="2GSJ2k" id="2nZx5M9aAVu" role="3xhzZr">
          <ref role="2GQAiS" node="4VQvhHjW6Bf" resolve="DOT" />
        </node>
      </node>
      <node concept="3xhzZY" id="4VQvhHjWbW8" role="t8saQ">
        <property role="TrG5h" value="ellipsis" />
        <node concept="2GSJ2k" id="2nZx5M9aAVx" role="3xhzZr">
          <ref role="2GQAiS" node="4VQvhHjW6DG" resolve="ELLIPSIS" />
        </node>
      </node>
      <node concept="3xJKux" id="6z$mG1Vis9j" role="t8saQ">
        <property role="TrG5h" value="constant" />
        <node concept="3xiQg6" id="6z$mG1Visaa" role="3xJKtx">
          <ref role="3xiQg3" node="6z$mG1VikTr" resolve="True" />
        </node>
        <node concept="3xiQg6" id="6z$mG1Visac" role="3xJKtx">
          <ref role="3xiQg3" node="6z$mG1VikUG" resolve="False" />
        </node>
        <node concept="3xiQg6" id="6z$mG1Visaf" role="3xJKtx">
          <ref role="3xiQg3" node="6z$mG1Vilc$" resolve="None" />
        </node>
        <node concept="3xiQg6" id="6z$mG1Viscn" role="3xJKtx">
          <ref role="3xiQg3" node="4VQvhHjWbW8" resolve="ellipsis" />
        </node>
        <node concept="3xiQg6" id="6z$mG1Viscs" role="3xJKtx">
          <ref role="3xiQg3" node="6z$mG1VirqH" resolve="strings" />
        </node>
        <node concept="3xiQg6" id="6z$mG1Visrr" role="3xJKtx">
          <ref role="3xiQg3" node="6z$mG1Viq3I" resolve="number" />
        </node>
      </node>
    </node>
    <node concept="3P3UoZ" id="4VQvhHjWh$k" role="3xJMYo" />
    <node concept="t8saL" id="4idNKJHcLgC" role="3xJMYo">
      <property role="TrG5h" value="operators" />
      <node concept="3xJKux" id="4idNKJHbNUI" role="t8saQ">
        <property role="TrG5h" value="bin_op" />
        <node concept="3xiQg6" id="4idNKJHbOa7" role="3xJKtx">
          <ref role="3xiQg3" node="4idNKJHbO9H" resolve="logical_op" />
        </node>
        <node concept="3xiQg6" id="4idNKJHbPVh" role="3xJKtx">
          <ref role="3xiQg3" node="4idNKJHbOhE" resolve="comparison_op" />
        </node>
        <node concept="3xiQg6" id="4idNKJHbR2R" role="3xJKtx">
          <ref role="3xiQg3" node="4idNKJHbR2m" resolve="bitwise_op" />
        </node>
        <node concept="3xiQg6" id="4idNKJHbRIM" role="3xJKtx">
          <ref role="3xiQg3" node="4idNKJHbRcU" resolve="arithmetic_op" />
        </node>
      </node>
      <node concept="3P3UoZ" id="4idNKJHcMwT" role="t8saQ" />
      <node concept="t8saL" id="4idNKJHbO2j" role="t8saQ">
        <property role="TrG5h" value="logical" />
        <node concept="3xJKux" id="4idNKJHbO9H" role="t8saQ">
          <property role="TrG5h" value="logical_op" />
          <node concept="3xiQg6" id="4idNKJHbO9O" role="3xJKtx">
            <ref role="3xiQg3" node="4idNKJHbO2u" resolve="log_and" />
          </node>
          <node concept="3xiQg6" id="4idNKJHbO9Q" role="3xJKtx">
            <ref role="3xiQg3" node="4idNKJHbO2B" resolve="log_or" />
          </node>
        </node>
        <node concept="3xhzZY" id="4idNKJHbO2u" role="t8saQ">
          <property role="TrG5h" value="log_and" />
          <node concept="3xhzXc" id="4idNKJHbO2x" role="3xhzZr">
            <property role="TrG5h" value="and" />
          </node>
        </node>
        <node concept="3xhzZY" id="4idNKJHbO2B" role="t8saQ">
          <property role="TrG5h" value="log_or" />
          <node concept="3xhzXc" id="4idNKJHbO2G" role="3xhzZr">
            <property role="TrG5h" value="or" />
          </node>
        </node>
      </node>
      <node concept="t8saL" id="4idNKJHbQZY" role="t8saQ">
        <property role="TrG5h" value="bitwise" />
        <node concept="3xJKux" id="4idNKJHbR2m" role="t8saQ">
          <property role="TrG5h" value="bitwise_op" />
          <node concept="3xiQg6" id="4idNKJHbR2z" role="3xJKtx">
            <ref role="3xiQg3" node="4idNKJHbQvf" resolve="bw_and" />
          </node>
          <node concept="3xiQg6" id="4idNKJHbR2_" role="3xJKtx">
            <ref role="3xiQg3" node="4idNKJHbQv0" resolve="bw_or_" />
          </node>
          <node concept="3xiQg6" id="4idNKJHbR2C" role="3xJKtx">
            <ref role="3xiQg3" node="4idNKJHbQvw" resolve="bw_xor" />
          </node>
          <node concept="3xiQg6" id="4idNKJHbR2G" role="3xJKtx">
            <ref role="3xiQg3" node="4idNKJHbQut" resolve="bw_shl" />
          </node>
          <node concept="3xiQg6" id="4idNKJHbR2L" role="3xJKtx">
            <ref role="3xiQg3" node="4idNKJHbQYA" resolve="bw_shr" />
          </node>
        </node>
        <node concept="3xhzZY" id="4idNKJHbQv0" role="t8saQ">
          <property role="TrG5h" value="bw_or_" />
          <node concept="3xhzXc" id="4idNKJHbQv1" role="3xhzZr">
            <property role="TrG5h" value="|" />
          </node>
        </node>
        <node concept="3xhzZY" id="4idNKJHbQvf" role="t8saQ">
          <property role="TrG5h" value="bw_and" />
          <node concept="3xhzXc" id="4idNKJHbQvg" role="3xhzZr">
            <property role="TrG5h" value="&amp;" />
          </node>
        </node>
        <node concept="3xhzZY" id="4idNKJHbQvw" role="t8saQ">
          <property role="TrG5h" value="bw_xor" />
          <node concept="3xhzXc" id="4idNKJHbQvx" role="3xhzZr">
            <property role="TrG5h" value="^" />
          </node>
        </node>
        <node concept="3xhzZY" id="4idNKJHbQut" role="t8saQ">
          <property role="TrG5h" value="bw_shl" />
          <node concept="3xhzXc" id="4idNKJHbQuu" role="3xhzZr">
            <property role="TrG5h" value="&lt;&lt;" />
          </node>
        </node>
        <node concept="3xhzZY" id="4idNKJHbQYA" role="t8saQ">
          <property role="TrG5h" value="bw_shr" />
          <node concept="3xhzXc" id="4idNKJHbQYB" role="3xhzZr">
            <property role="TrG5h" value="&gt;&gt;" />
          </node>
        </node>
      </node>
      <node concept="t8saL" id="4idNKJHbOaq" role="t8saQ">
        <property role="TrG5h" value="comparison" />
        <node concept="3xJKux" id="4idNKJHbOhE" role="t8saQ">
          <property role="TrG5h" value="comparison_op" />
          <node concept="3xiQg6" id="4idNKJHbPsr" role="3xJKtx">
            <ref role="3xiQg3" node="4idNKJHbOoN" resolve="less_op" />
          </node>
          <node concept="3xiQg6" id="4idNKJHbPst" role="3xJKtx">
            <ref role="3xiQg3" node="4idNKJHbOvZ" resolve="more_op" />
          </node>
          <node concept="3xiQg6" id="4idNKJHbPzS" role="3xJKtx">
            <ref role="3xiQg3" node="4idNKJHbOw7" resolve="equal_op" />
          </node>
          <node concept="3xiQg6" id="4idNKJHbPFl" role="3xJKtx">
            <ref role="3xiQg3" node="4idNKJHbOwh" resolve="atleast_op" />
          </node>
          <node concept="3xiQg6" id="4idNKJHbPFq" role="3xJKtx">
            <ref role="3xiQg3" node="4idNKJHbOX1" resolve="atmost_op" />
          </node>
          <node concept="3xiQg6" id="4idNKJHbPMV" role="3xJKtx">
            <ref role="3xiQg3" node="4idNKJHbPbR" resolve="not_equal_op" />
          </node>
          <node concept="3xiQg6" id="4idNKJHbPN2" role="3xJKtx">
            <ref role="3xiQg3" node="4idNKJHbOXf" resolve="notequal_op" />
          </node>
          <node concept="3xiQg6" id="4idNKJHbPUB" role="3xJKtx">
            <ref role="3xiQg3" node="4idNKJHbPjn" resolve="in_op" />
          </node>
          <node concept="3xiQg6" id="4idNKJHbPUK" role="3xJKtx">
            <ref role="3xiQg3" node="4idNKJHbPjF" resolve="notin_op" />
          </node>
          <node concept="3xiQg6" id="4idNKJHbPUU" role="3xJKtx">
            <ref role="3xiQg3" node="4idNKJHbPrj" resolve="is_op" />
          </node>
          <node concept="3xiQg6" id="4idNKJHbPV5" role="3xJKtx">
            <ref role="3xiQg3" node="4idNKJHbPs1" resolve="isnot_op" />
          </node>
        </node>
        <node concept="3xhzZY" id="4idNKJHbOoN" role="t8saQ">
          <property role="TrG5h" value="less_op" />
          <node concept="3xhzXc" id="4idNKJHbOvT" role="3xhzZr">
            <property role="TrG5h" value="&lt;" />
          </node>
        </node>
        <node concept="3xhzZY" id="4idNKJHbOvZ" role="t8saQ">
          <property role="TrG5h" value="more_op" />
          <node concept="3xhzXc" id="4idNKJHbOw0" role="3xhzZr">
            <property role="TrG5h" value="&gt;" />
          </node>
        </node>
        <node concept="3xhzZY" id="4idNKJHbOw7" role="t8saQ">
          <property role="TrG5h" value="equal_op" />
          <node concept="3xhzXc" id="4idNKJHbOw8" role="3xhzZr">
            <property role="TrG5h" value="==" />
          </node>
        </node>
        <node concept="3xhzZY" id="4idNKJHbOwh" role="t8saQ">
          <property role="TrG5h" value="atleast_op" />
          <node concept="3xhzXc" id="4idNKJHbOwi" role="3xhzZr">
            <property role="TrG5h" value="&gt;=" />
          </node>
        </node>
        <node concept="3xhzZY" id="4idNKJHbOX1" role="t8saQ">
          <property role="TrG5h" value="atmost_op" />
          <node concept="3xhzXc" id="4idNKJHbOX2" role="3xhzZr">
            <property role="TrG5h" value="&lt;=" />
          </node>
        </node>
        <node concept="3xhzZY" id="4idNKJHbOXf" role="t8saQ">
          <property role="TrG5h" value="notequal_op" />
          <node concept="3xhzXc" id="4idNKJHbOXg" role="3xhzZr">
            <property role="TrG5h" value="&lt;&gt;" />
          </node>
        </node>
        <node concept="3xhzZY" id="4idNKJHbPbR" role="t8saQ">
          <property role="TrG5h" value="not_equal_op" />
          <node concept="3xhzXc" id="4idNKJHbPbS" role="3xhzZr">
            <property role="TrG5h" value="!=" />
          </node>
        </node>
        <node concept="3xhzZY" id="4idNKJHbPjn" role="t8saQ">
          <property role="TrG5h" value="in_op" />
          <node concept="3xhzXc" id="4idNKJHbPjo" role="3xhzZr">
            <property role="TrG5h" value="in" />
          </node>
        </node>
        <node concept="3xhzZY" id="4idNKJHbPjF" role="t8saQ">
          <property role="TrG5h" value="notin_op" />
          <node concept="3xhzXc" id="4idNKJHbPjG" role="3xhzZr">
            <property role="TrG5h" value="not in" />
          </node>
        </node>
        <node concept="3xhzZY" id="4idNKJHbPrj" role="t8saQ">
          <property role="TrG5h" value="is_op" />
          <node concept="3xhzXc" id="4idNKJHbPrk" role="3xhzZr">
            <property role="TrG5h" value="is" />
          </node>
        </node>
        <node concept="3xhzZY" id="4idNKJHbPs1" role="t8saQ">
          <property role="TrG5h" value="isnot_op" />
          <node concept="3xhzXc" id="4idNKJHbPs2" role="3xhzZr">
            <property role="TrG5h" value="is not" />
          </node>
        </node>
      </node>
      <node concept="t8saL" id="4idNKJHbRbN" role="t8saQ">
        <property role="TrG5h" value="arithmetic" />
        <node concept="3xJKux" id="4idNKJHbRcU" role="t8saQ">
          <property role="TrG5h" value="arithmetic_op" />
          <node concept="3xiQg6" id="4idNKJHbRIf" role="3xJKtx">
            <ref role="3xiQg3" node="4idNKJHbRd1" resolve="add_op" />
          </node>
          <node concept="3xiQg6" id="4idNKJHbRIh" role="3xJKtx">
            <ref role="3xiQg3" node="4idNKJHbRd5" resolve="sub_op" />
          </node>
          <node concept="3xiQg6" id="4idNKJHbRIk" role="3xJKtx">
            <ref role="3xiQg3" node="4idNKJHbRd9" resolve="mul_op" />
          </node>
          <node concept="3xiQg6" id="4idNKJHbRIo" role="3xJKtx">
            <ref role="3xiQg3" node="4idNKJHbRde" resolve="div_op" />
          </node>
          <node concept="3xiQg6" id="4idNKJHbRIt" role="3xJKtx">
            <ref role="3xiQg3" node="4idNKJHbRlc" resolve="divop" />
          </node>
          <node concept="3xiQg6" id="4idNKJHbRIz" role="3xJKtx">
            <ref role="3xiQg3" node="4idNKJHbRlj" resolve="mod_op" />
          </node>
          <node concept="3xiQg6" id="4idNKJHbRIE" role="3xJKtx">
            <ref role="3xiQg3" node="4idNKJHbRlr" resolve="exp_op" />
          </node>
        </node>
        <node concept="3xhzZY" id="4idNKJHbRd1" role="t8saQ">
          <property role="TrG5h" value="add_op" />
          <node concept="3xhzXc" id="4idNKJHbR_W" role="3xhzZr">
            <property role="TrG5h" value="+" />
          </node>
        </node>
        <node concept="3xhzZY" id="4idNKJHbRd5" role="t8saQ">
          <property role="TrG5h" value="sub_op" />
          <node concept="3xhzXc" id="4idNKJHbR_Z" role="3xhzZr">
            <property role="TrG5h" value="-" />
          </node>
        </node>
        <node concept="3xhzZY" id="4idNKJHbRd9" role="t8saQ">
          <property role="TrG5h" value="mul_op" />
          <node concept="3xhzXc" id="4idNKJHbRA1" role="3xhzZr">
            <property role="TrG5h" value="*" />
          </node>
        </node>
        <node concept="3xhzZY" id="4idNKJHbRde" role="t8saQ">
          <property role="TrG5h" value="div_op" />
          <node concept="3xhzXc" id="4idNKJHbRA3" role="3xhzZr">
            <property role="TrG5h" value="/" />
          </node>
        </node>
        <node concept="3xhzZY" id="4idNKJHbRlc" role="t8saQ">
          <property role="TrG5h" value="divop" />
          <node concept="3xhzXc" id="4idNKJHbRA5" role="3xhzZr">
            <property role="TrG5h" value="//" />
          </node>
        </node>
        <node concept="3xhzZY" id="4idNKJHbRlj" role="t8saQ">
          <property role="TrG5h" value="mod_op" />
          <node concept="3xhzXc" id="4idNKJHbRA7" role="3xhzZr">
            <property role="TrG5h" value="%" />
          </node>
        </node>
        <node concept="3xhzZY" id="4idNKJHbRlr" role="t8saQ">
          <property role="TrG5h" value="exp_op" />
          <node concept="3xhzXc" id="4idNKJHbRA9" role="3xhzZr">
            <property role="TrG5h" value="**" />
          </node>
        </node>
      </node>
      <node concept="t8saL" id="4idNKJHbS0X" role="t8saQ">
        <property role="TrG5h" value="unary" />
        <node concept="3xJKux" id="4idNKJHbS2s" role="t8saQ">
          <property role="TrG5h" value="unary_op" />
          <node concept="3xiQg6" id="4idNKJHbSkC" role="3xJKtx">
            <ref role="3xiQg3" node="4idNKJHbS2B" resolve="un_not" />
          </node>
          <node concept="3xiQg6" id="4idNKJHbSkE" role="3xJKtx">
            <ref role="3xiQg3" node="4idNKJHbSbj" resolve="un_neg" />
          </node>
          <node concept="3xiQg6" id="4idNKJHbSkH" role="3xJKtx">
            <ref role="3xiQg3" node="4idNKJHbS2L" resolve="un_plus" />
          </node>
          <node concept="3xiQg6" id="4idNKJHbSkL" role="3xJKtx">
            <ref role="3xiQg3" node="4idNKJHbS2S" resolve="un_minus" />
          </node>
        </node>
        <node concept="3xhzZY" id="4idNKJHbS2B" role="t8saQ">
          <property role="TrG5h" value="un_not" />
          <node concept="3xhzXc" id="4idNKJHbS2F" role="3xhzZr">
            <property role="TrG5h" value="not" />
          </node>
        </node>
        <node concept="3xhzZY" id="4idNKJHbSbj" role="t8saQ">
          <property role="TrG5h" value="un_neg" />
          <node concept="3xhzXc" id="4idNKJHbSbk" role="3xhzZr">
            <property role="TrG5h" value="~" />
          </node>
        </node>
        <node concept="3xhzZY" id="4idNKJHbS2L" role="t8saQ">
          <property role="TrG5h" value="un_plus" />
          <node concept="3xhzXc" id="4idNKJHbS2M" role="3xhzZr">
            <property role="TrG5h" value="+" />
          </node>
        </node>
        <node concept="3xhzZY" id="4idNKJHbS2S" role="t8saQ">
          <property role="TrG5h" value="un_minus" />
          <node concept="3xhzXc" id="4idNKJHbS2T" role="3xhzZr">
            <property role="TrG5h" value="-" />
          </node>
        </node>
        <node concept="3xhzZY" id="4idNKJHbSwN" role="t8saQ">
          <property role="TrG5h" value="un_star" />
          <node concept="3xhzXc" id="4idNKJHbSwO" role="3xhzZr">
            <property role="TrG5h" value="*" />
          </node>
        </node>
      </node>
      <node concept="3P3UoZ" id="4idNKJHcMlx" role="t8saQ" />
      <node concept="t8saL" id="4VQvhHjW9VP" role="t8saQ">
        <property role="TrG5h" value="inplace" />
        <node concept="3xhzZY" id="4VQvhHjW8bf" role="t8saQ">
          <property role="TrG5h" value="add_assign" />
          <node concept="3xhzXc" id="4VQvhHjW8eZ" role="3xhzZr">
            <property role="TrG5h" value="+=" />
          </node>
        </node>
        <node concept="3xhzZY" id="4VQvhHjW8fP" role="t8saQ">
          <property role="TrG5h" value="sub_assign" />
          <node concept="3xhzXc" id="4VQvhHjW8fQ" role="3xhzZr">
            <property role="TrG5h" value="-=" />
          </node>
        </node>
        <node concept="3xhzZY" id="4VQvhHjW8fX" role="t8saQ">
          <property role="TrG5h" value="mul_assign" />
          <node concept="3xhzXc" id="4VQvhHjW8fY" role="3xhzZr">
            <property role="TrG5h" value="*=" />
          </node>
        </node>
        <node concept="3xhzZY" id="4VQvhHjW8g7" role="t8saQ">
          <property role="TrG5h" value="div_assign" />
          <node concept="3xhzXc" id="4VQvhHjW8g8" role="3xhzZr">
            <property role="TrG5h" value="/=" />
          </node>
        </node>
        <node concept="3xhzZY" id="4VQvhHjW8gj" role="t8saQ">
          <property role="TrG5h" value="mod_assign" />
          <node concept="3xhzXc" id="4VQvhHjW8gk" role="3xhzZr">
            <property role="TrG5h" value="%=" />
          </node>
        </node>
        <node concept="3xhzZY" id="4VQvhHjW8gx" role="t8saQ">
          <property role="TrG5h" value="and_assign" />
          <node concept="3xhzXc" id="4VQvhHjW8gy" role="3xhzZr">
            <property role="TrG5h" value="&amp;=" />
          </node>
        </node>
        <node concept="3xhzZY" id="4VQvhHjW8kB" role="t8saQ">
          <property role="TrG5h" value="_or_assign" />
          <node concept="3xhzXc" id="4VQvhHjW8kC" role="3xhzZr">
            <property role="TrG5h" value="|=" />
          </node>
        </node>
        <node concept="3xhzZY" id="4VQvhHjW8oL" role="t8saQ">
          <property role="TrG5h" value="xor_assign" />
          <node concept="3xhzXc" id="4VQvhHjW8oM" role="3xhzZr">
            <property role="TrG5h" value="^=" />
          </node>
        </node>
        <node concept="3xhzZY" id="4VQvhHjW8sZ" role="t8saQ">
          <property role="TrG5h" value="shl_assign" />
          <node concept="3xhzXc" id="4VQvhHjW8t0" role="3xhzZr">
            <property role="TrG5h" value="&lt;&lt;=" />
          </node>
        </node>
        <node concept="3xhzZY" id="4VQvhHjW8tl" role="t8saQ">
          <property role="TrG5h" value="shr_assign" />
          <node concept="3xhzXc" id="4VQvhHjW8tm" role="3xhzZr">
            <property role="TrG5h" value="&gt;&gt;=" />
          </node>
        </node>
        <node concept="3xhzZY" id="4VQvhHjW8_H" role="t8saQ">
          <property role="TrG5h" value="exp_assign" />
          <node concept="3xhzXc" id="4VQvhHjW8_I" role="3xhzZr">
            <property role="TrG5h" value="**=" />
          </node>
        </node>
        <node concept="3xhzZY" id="4VQvhHjW8A7" role="t8saQ">
          <property role="TrG5h" value="divassign" />
          <node concept="3xhzXc" id="4VQvhHjW8A8" role="3xhzZr">
            <property role="TrG5h" value="//=" />
          </node>
        </node>
        <node concept="3xJKux" id="4VQvhHjW83M" role="t8saQ">
          <property role="TrG5h" value="augassign" />
          <node concept="3xiQg6" id="4VQvhHjW8MD" role="3xJKtx">
            <ref role="3xiQg3" node="4VQvhHjW8bf" resolve="add_assign" />
          </node>
          <node concept="3xiQg6" id="4VQvhHjW8MF" role="3xJKtx">
            <ref role="3xiQg3" node="4VQvhHjW8fP" resolve="sub_assign" />
          </node>
          <node concept="3xiQg6" id="4VQvhHjW8MI" role="3xJKtx">
            <ref role="3xiQg3" node="4VQvhHjW8fX" resolve="mul_assign" />
          </node>
          <node concept="3xiQg6" id="4VQvhHjW8MM" role="3xJKtx">
            <ref role="3xiQg3" node="4VQvhHjW8g7" resolve="div_assign" />
          </node>
          <node concept="3xiQg6" id="4VQvhHjW8MX" role="3xJKtx">
            <ref role="3xiQg3" node="4VQvhHjW8gj" resolve="mod_assign" />
          </node>
          <node concept="3xiQg6" id="4VQvhHjW8N4" role="3xJKtx">
            <ref role="3xiQg3" node="4VQvhHjW8gx" resolve="and_assign" />
          </node>
          <node concept="3xiQg6" id="4VQvhHjW8Nc" role="3xJKtx">
            <ref role="3xiQg3" node="4VQvhHjW8kB" resolve="_or_assign" />
          </node>
          <node concept="3xiQg6" id="4VQvhHjW8Nl" role="3xJKtx">
            <ref role="3xiQg3" node="4VQvhHjW8oL" resolve="xor_assign" />
          </node>
          <node concept="3xiQg6" id="4VQvhHjW8Nv" role="3xJKtx">
            <ref role="3xiQg3" node="4VQvhHjW8sZ" resolve="shl_assign" />
          </node>
          <node concept="3xiQg6" id="4VQvhHjW8NE" role="3xJKtx">
            <ref role="3xiQg3" node="4VQvhHjW8tl" resolve="shr_assign" />
          </node>
          <node concept="3xiQg6" id="4VQvhHjW8NQ" role="3xJKtx">
            <ref role="3xiQg3" node="4VQvhHjW8_H" resolve="exp_assign" />
          </node>
          <node concept="3xiQg6" id="4VQvhHjXRiH" role="3xJKtx">
            <ref role="3xiQg3" node="4VQvhHjW8A7" resolve="divassign" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3P3UoZ" id="4idNKJHcLVD" role="3xJMYo" />
    <node concept="t8saL" id="4VQvhHjW4wo" role="3xJMYo">
      <property role="TrG5h" value="expr" />
      <node concept="2DJ5fZ" id="4idNKJHcJzu" role="t8saQ">
        <property role="TrG5h" value="Lots of work required here. Ideally we do not want to encode priority into the grammar rules," />
      </node>
      <node concept="2DJ5fZ" id="4idNKJHcJBu" role="t8saQ">
        <property role="TrG5h" value="but use a more expressive mechanism instead. Eventually we want the generator to automatically" />
      </node>
      <node concept="2DJ5fZ" id="4idNKJHcJFw" role="t8saQ">
        <property role="TrG5h" value="generate the rebalancing and left/right-transform behaviour to ensure proper textual usability." />
      </node>
      <node concept="2DJ5fZ" id="4idNKJHcOn1" role="t8saQ">
        <property role="TrG5h" value="This requires several extensions to the mbnf language." />
      </node>
      <node concept="3P3UoZ" id="4idNKJHcLS$" role="t8saQ" />
      <node concept="3xhzZY" id="4VQvhHjW4$1" role="t8saQ">
        <property role="TrG5h" value="testlist" />
        <node concept="3xiQg6" id="6z$mG1Vihcf" role="3xhzZr">
          <property role="3xj4NX" value="2b2ZYR3yDpO/AtleastOne" />
          <property role="2DFMXm" value=", " />
          <ref role="3xiQg3" node="4idNKJH8gWO" resolve="test" />
        </node>
      </node>
      <node concept="2DJ5fZ" id="2JFas4t3a3X" role="t8saQ">
        <property role="TrG5h" value="We need some additional constraints on this one" />
      </node>
      <node concept="2DJ5fZ" id="2JFas4t3a81" role="t8saQ">
        <property role="TrG5h" value="Python grammar restricts this to star_expr" />
      </node>
      <node concept="3xhzZY" id="4VQvhHjW7_V" role="t8saQ">
        <property role="TrG5h" value="exprlist" />
        <node concept="3xiQg6" id="2JFas4t3arS" role="3xhzZr">
          <property role="3xj4NX" value="2b2ZYR3yDpO/AtleastOne" />
          <property role="2DFMXm" value=", " />
          <ref role="3xiQg3" node="4idNKJH8leY" resolve="expr" />
        </node>
      </node>
      <node concept="3xhzZY" id="4VQvhHjW4Et" role="t8saQ">
        <property role="TrG5h" value="yield_expr" />
        <node concept="3xhzXc" id="6z$mG1VigXX" role="3xhzZr">
          <property role="TrG5h" value="yield" />
        </node>
        <node concept="3xiQg6" id="6z$mG1VigY3" role="3xhzZr">
          <property role="3xj4NX" value="2b2ZYR3yDpL/AtMostOne" />
          <ref role="3xiQg3" node="4VQvhHjW4$1" resolve="testlist" />
        </node>
      </node>
      <node concept="3P3UoZ" id="4idNKJHcKCD" role="t8saQ" />
      <node concept="3xJKux" id="4idNKJH8leY" role="t8saQ">
        <property role="TrG5h" value="expr" />
        <node concept="3xiQg6" id="4idNKJHbSFn" role="3xJKtx">
          <ref role="3xiQg3" node="4idNKJHbNUy" resolve="binary_expr" />
        </node>
        <node concept="3xiQg6" id="4idNKJHbSFp" role="3xJKtx">
          <ref role="3xiQg3" node="4idNKJHbSmy" resolve="unary_expr" />
        </node>
        <node concept="3xiQg6" id="6z$mG1VihrG" role="3xJKtx">
          <ref role="3xiQg3" node="6z$mG1Vi$tK" resolve="trailer_expr" />
        </node>
      </node>
      <node concept="3P3UoZ" id="4idNKJHcKH7" role="t8saQ" />
      <node concept="3xJKux" id="4idNKJH8gWO" role="t8saQ">
        <property role="TrG5h" value="test" />
        <node concept="3xiQg6" id="4idNKJHcKxZ" role="3xJKtx">
          <ref role="3xiQg3" node="4idNKJHcK4Z" resolve="ternary_expr" />
        </node>
        <node concept="3xiQg6" id="4idNKJHcKy1" role="3xJKtx">
          <ref role="3xiQg3" node="4idNKJHcmVY" resolve="lambdef" />
        </node>
        <node concept="3xiQg6" id="4idNKJHcKy4" role="3xJKtx">
          <ref role="3xiQg3" node="4idNKJH8leY" resolve="expr" />
        </node>
      </node>
      <node concept="3xhzZY" id="4idNKJHcmVY" role="t8saQ">
        <property role="TrG5h" value="lambdef" />
        <node concept="3xhzXc" id="4idNKJHcn6p" role="3xhzZr">
          <property role="TrG5h" value="lambda" />
        </node>
        <node concept="3xiQg6" id="4idNKJHcn6u" role="3xhzZr">
          <property role="3xj4NX" value="2b2ZYR3yDpL/AtMostOne" />
          <ref role="3xiQg3" node="4idNKJH8q4w" resolve="varargslist" />
        </node>
        <node concept="3xhzXc" id="4idNKJHcn6A" role="3xhzZr">
          <property role="TrG5h" value=":" />
        </node>
        <node concept="3xiQg6" id="4idNKJHcnfk" role="3xhzZr">
          <ref role="3xiQg3" node="4idNKJH8gWO" resolve="test" />
        </node>
      </node>
      <node concept="3xhzZY" id="4idNKJHcK4Z" role="t8saQ">
        <property role="TrG5h" value="ternary_expr" />
        <node concept="3xiQg6" id="4idNKJHcKfM" role="3xhzZr">
          <property role="TrG5h" value="TrueValue" />
          <ref role="3xiQg3" node="4idNKJH8leY" resolve="expr" />
        </node>
        <node concept="3xhzXc" id="4idNKJHcKfS" role="3xhzZr">
          <property role="TrG5h" value="if" />
        </node>
        <node concept="3xiQg6" id="4idNKJHcKg0" role="3xhzZr">
          <property role="TrG5h" value="condition" />
          <ref role="3xiQg3" node="4idNKJH8leY" resolve="expr" />
        </node>
        <node concept="3xhzXc" id="4idNKJHcKga" role="3xhzZr">
          <property role="TrG5h" value="else" />
        </node>
        <node concept="3xiQg6" id="4idNKJHcKp7" role="3xhzZr">
          <property role="TrG5h" value="FalseValue" />
          <ref role="3xiQg3" node="4idNKJH8gWO" resolve="test" />
        </node>
      </node>
      <node concept="3xJKux" id="6z$mG1VivEH" role="t8saQ">
        <property role="TrG5h" value="test_nocond" />
        <node concept="3xiQg6" id="6z$mG1VivFP" role="3xJKtx">
          <ref role="3xiQg3" node="4idNKJH8leY" resolve="expr" />
        </node>
        <node concept="3xiQg6" id="6z$mG1Viwr$" role="3xJKtx">
          <ref role="3xiQg3" node="6z$mG1VivH0" resolve="lambdef_nocond" />
        </node>
      </node>
      <node concept="3xhzZY" id="6z$mG1VivH0" role="t8saQ">
        <property role="TrG5h" value="lambdef_nocond" />
        <node concept="3xhzXc" id="6z$mG1VivX5" role="3xhzZr">
          <property role="TrG5h" value="lambda" />
        </node>
        <node concept="3xiQg6" id="6z$mG1VivXa" role="3xhzZr">
          <property role="3xj4NX" value="2b2ZYR3yDpL/AtMostOne" />
          <ref role="3xiQg3" node="4idNKJH8q4w" resolve="varargslist" />
        </node>
        <node concept="3xhzXc" id="6z$mG1Viwci" role="3xhzZr">
          <property role="TrG5h" value=":" />
        </node>
        <node concept="3xiQg6" id="6z$mG1Viwcs" role="3xhzZr">
          <ref role="3xiQg3" node="6z$mG1VivEH" resolve="test_nocond" />
        </node>
      </node>
      <node concept="3P3UoZ" id="6z$mG1Vivpy" role="t8saQ" />
      <node concept="3xhzZY" id="4idNKJHbNUy" role="t8saQ">
        <property role="TrG5h" value="binary_expr" />
        <node concept="3xiQg6" id="4idNKJHbNU$" role="3xhzZr">
          <property role="TrG5h" value="left" />
          <ref role="3xiQg3" node="4idNKJH8leY" resolve="expr" />
        </node>
        <node concept="3xiQg6" id="4idNKJHbNUO" role="3xhzZr">
          <ref role="3xiQg3" node="4idNKJHbNUI" resolve="bin_op" />
        </node>
        <node concept="3xiQg6" id="4idNKJHbNV6" role="3xhzZr">
          <property role="TrG5h" value="right" />
          <ref role="3xiQg3" node="4idNKJH8leY" resolve="expr" />
        </node>
      </node>
      <node concept="3xhzZY" id="4idNKJHbSmy" role="t8saQ">
        <property role="TrG5h" value="unary_expr" />
        <node concept="3xiQg6" id="4idNKJHbSof" role="3xhzZr">
          <ref role="3xiQg3" node="4idNKJHbS2s" resolve="unary_op" />
        </node>
        <node concept="3xiQg6" id="4idNKJHbSok" role="3xhzZr">
          <ref role="3xiQg3" node="4idNKJH8leY" resolve="expr" />
        </node>
      </node>
      <node concept="3xJKux" id="6z$mG1Vihr2" role="t8saQ">
        <property role="TrG5h" value="atom" />
        <node concept="3xiQg6" id="6z$mG1Viq_b" role="3xJKtx">
          <ref role="3xiQg3" node="6z$mG1VitBa" resolve="paren_expr" />
        </node>
        <node concept="3xiQg6" id="6z$mG1Vij2X" role="3xJKtx">
          <ref role="3xiQg3" node="6z$mG1VihSI" resolve="list_comprehension" />
        </node>
        <node concept="3xiQg6" id="6z$mG1Viks0" role="3xJKtx">
          <ref role="3xiQg3" node="6z$mG1Vij4A" resolve="dictorset_comprehension" />
        </node>
        <node concept="3xiQg6" id="6z$mG1Viq_f" role="3xJKtx">
          <ref role="3xiQg3" node="4VQvhHjWhBx" resolve="name" />
        </node>
        <node concept="3xiQg6" id="6z$mG1Viss9" role="3xJKtx">
          <ref role="3xiQg3" node="6z$mG1Vis9j" resolve="constant" />
        </node>
      </node>
      <node concept="3P3UoZ" id="6z$mG1VitSw" role="t8saQ" />
      <node concept="t8saL" id="6z$mG1Vjbyk" role="t8saQ">
        <property role="TrG5h" value="trailer" />
        <node concept="3xJKux" id="6z$mG1Vi$tK" role="t8saQ">
          <property role="TrG5h" value="trailer_expr" />
          <node concept="3xiQg6" id="6z$mG1ViDGQ" role="3xJKtx">
            <ref role="3xiQg3" node="6z$mG1Vi$Kg" resolve="funccall" />
          </node>
          <node concept="3xiQg6" id="6z$mG1ViDGS" role="3xJKtx">
            <ref role="3xiQg3" node="6z$mG1Vi_yJ" resolve="deref" />
          </node>
          <node concept="3xiQg6" id="6z$mG1ViDGV" role="3xJKtx">
            <ref role="3xiQg3" node="6z$mG1ViA$J" resolve="subscriptlist" />
          </node>
          <node concept="3xiQg6" id="6z$mG1ViDH7" role="3xJKtx">
            <ref role="3xiQg3" node="6z$mG1Vihr2" resolve="atom" />
          </node>
        </node>
        <node concept="3xhzZY" id="6z$mG1Vi$Kg" role="t8saQ">
          <property role="TrG5h" value="funccall" />
          <node concept="3xiQg6" id="6z$mG1Vi$LR" role="3xhzZr">
            <ref role="3xiQg3" node="6z$mG1Vi$tK" resolve="trailer_expr" />
          </node>
          <node concept="3xhzXc" id="6z$mG1Vi$LX" role="3xhzZr">
            <property role="TrG5h" value="(" />
          </node>
          <node concept="3xiQg6" id="6z$mG1Vi$Md" role="3xhzZr">
            <property role="3xj4NX" value="2b2ZYR3yDpL/AtMostOne" />
            <ref role="3xiQg3" node="5p9SqSdY09p" resolve="arglist" />
          </node>
          <node concept="3xhzXc" id="6z$mG1Vi_1R" role="3xhzZr">
            <property role="TrG5h" value=")" />
          </node>
        </node>
        <node concept="3xhzZY" id="6z$mG1Vi_yJ" role="t8saQ">
          <property role="TrG5h" value="deref" />
          <node concept="3xiQg6" id="6z$mG1Vi_$n" role="3xhzZr">
            <ref role="3xiQg3" node="6z$mG1Vi$tK" resolve="trailer_expr" />
          </node>
          <node concept="3xhzXc" id="6z$mG1Vi_$s" role="3xhzZr">
            <property role="TrG5h" value="." />
          </node>
          <node concept="2GSJ2k" id="6z$mG1ViAjj" role="3xhzZr">
            <ref role="2GQAiS" node="4VQvhHjW3RS" resolve="NAME" />
          </node>
        </node>
        <node concept="3xhzZY" id="6z$mG1ViA$J" role="t8saQ">
          <property role="TrG5h" value="subscriptlist" />
          <node concept="3xiQg6" id="6z$mG1ViDGK" role="3xhzZr">
            <ref role="3xiQg3" node="6z$mG1Vi$tK" resolve="trailer_expr" />
          </node>
          <node concept="3xhzXc" id="6z$mG1ViAQ2" role="3xhzZr">
            <property role="TrG5h" value="[" />
          </node>
          <node concept="3xiQg6" id="6z$mG1ViBCH" role="3xhzZr">
            <property role="3xj4NX" value="2b2ZYR3yDpO/AtleastOne" />
            <property role="2DFMXm" value=", " />
            <ref role="3xiQg3" node="6z$mG1ViBAX" resolve="subscript" />
          </node>
          <node concept="3xhzXc" id="6z$mG1ViB5I" role="3xhzZr">
            <property role="TrG5h" value="]" />
          </node>
        </node>
        <node concept="3xJKux" id="6z$mG1ViBAX" role="t8saQ">
          <property role="TrG5h" value="subscript" />
          <node concept="3xiQg6" id="6z$mG1ViBSr" role="3xJKtx">
            <ref role="3xiQg3" node="4idNKJH8gWO" resolve="test" />
          </node>
          <node concept="3xiQg6" id="6z$mG1ViDsP" role="3xJKtx">
            <ref role="3xiQg3" node="6z$mG1ViCrp" resolve="sliceop" />
          </node>
        </node>
        <node concept="3xhzZY" id="6z$mG1ViCpB" role="t8saQ">
          <property role="TrG5h" value="slice" />
          <node concept="3xiQg6" id="6z$mG1ViCWI" role="3xhzZr">
            <property role="3xj4NX" value="2b2ZYR3yDpL/AtMostOne" />
            <property role="TrG5h" value="low" />
            <ref role="3xiQg3" node="4idNKJH8gWO" resolve="test" />
          </node>
          <node concept="3xhzXc" id="6z$mG1ViCWN" role="3xhzZr">
            <property role="TrG5h" value=":" />
          </node>
          <node concept="3xiQg6" id="6z$mG1ViCX1" role="3xhzZr">
            <property role="3xj4NX" value="2b2ZYR3yDpL/AtMostOne" />
            <property role="TrG5h" value="high" />
            <ref role="3xiQg3" node="4idNKJH8gWO" resolve="test" />
          </node>
          <node concept="3xiQg6" id="6z$mG1ViDcX" role="3xhzZr">
            <property role="3xj4NX" value="2b2ZYR3yDpL/AtMostOne" />
            <ref role="3xiQg3" node="6z$mG1ViCrp" resolve="sliceop" />
          </node>
        </node>
        <node concept="3xhzZY" id="6z$mG1ViCrp" role="t8saQ">
          <property role="TrG5h" value="sliceop" />
          <node concept="3xhzXc" id="6z$mG1ViCGR" role="3xhzZr">
            <property role="TrG5h" value=":" />
          </node>
          <node concept="3xiQg6" id="6z$mG1ViCGW" role="3xhzZr">
            <property role="3xj4NX" value="2b2ZYR3yDpL/AtMostOne" />
            <ref role="3xiQg3" node="4idNKJH8gWO" resolve="test" />
          </node>
        </node>
      </node>
      <node concept="3P3UoZ" id="6z$mG1ViC8b" role="t8saQ" />
      <node concept="t8saL" id="6z$mG1VjbCK" role="t8saQ">
        <property role="TrG5h" value="bracketed" />
        <node concept="3xhzZY" id="6z$mG1VitBa" role="t8saQ">
          <property role="TrG5h" value="paren_expr" />
          <node concept="3xhzXc" id="6z$mG1VitBm" role="3xhzZr">
            <property role="TrG5h" value="(" />
          </node>
          <node concept="3xiQg6" id="6z$mG1VitB$" role="3xhzZr">
            <ref role="3xiQg3" node="6z$mG1Viq_6" resolve="paren_expr_item" />
          </node>
          <node concept="3xhzXc" id="6z$mG1VitBs" role="3xhzZr">
            <property role="TrG5h" value=")" />
          </node>
        </node>
        <node concept="3xJKux" id="6z$mG1Viq_6" role="t8saQ">
          <property role="TrG5h" value="paren_expr_item" />
          <node concept="3xiQg6" id="6z$mG1VitBD" role="3xJKtx">
            <ref role="3xiQg3" node="4VQvhHjW4Et" resolve="yield_expr" />
          </node>
          <node concept="3xiQg6" id="6z$mG1VitBN" role="3xJKtx">
            <ref role="3xiQg3" node="6z$mG1ViiAd" resolve="testlist_comp" />
          </node>
        </node>
        <node concept="3xhzZY" id="6z$mG1VihSI" role="t8saQ">
          <property role="TrG5h" value="list_comprehension" />
          <node concept="3xhzXc" id="6z$mG1Vii7$" role="3xhzZr">
            <property role="TrG5h" value="[" />
          </node>
          <node concept="3xiQg6" id="6z$mG1ViiOu" role="3xhzZr">
            <ref role="3xiQg3" node="6z$mG1ViiAd" resolve="testlist_comp" />
          </node>
          <node concept="3xhzXc" id="6z$mG1ViiOC" role="3xhzZr">
            <property role="TrG5h" value="]" />
          </node>
        </node>
        <node concept="3xhzZY" id="6z$mG1Vij4A" role="t8saQ">
          <property role="TrG5h" value="dictorset_comprehension" />
          <node concept="3xhzXc" id="6z$mG1Vikd$" role="3xhzZr">
            <property role="TrG5h" value="{" />
          </node>
          <node concept="3xiQg6" id="6z$mG1Vikdc" role="3xhzZr">
            <ref role="3xiQg3" node="6z$mG1VijKw" resolve="dictorsetmaker" />
          </node>
          <node concept="3xhzXc" id="6z$mG1Vikdh" role="3xhzZr">
            <property role="TrG5h" value="}" />
          </node>
        </node>
      </node>
      <node concept="3P3UoZ" id="6z$mG1Vii_u" role="t8saQ" />
      <node concept="t8saL" id="6z$mG1Vii$J" role="t8saQ">
        <property role="TrG5h" value="comprehensions" />
        <node concept="3xJKux" id="6z$mG1VijKw" role="t8saQ">
          <property role="TrG5h" value="dictorsetmaker" />
          <node concept="3xiQg6" id="2JFas4t3bk$" role="3xJKtx">
            <ref role="3xiQg3" node="2JFas4t3b2k" resolve="dictmaker" />
          </node>
          <node concept="3xiQg6" id="2JFas4t3bkA" role="3xJKtx">
            <ref role="3xiQg3" node="2JFas4t3b1T" resolve="setmaker" />
          </node>
        </node>
        <node concept="3P3UoZ" id="2JFas4t3cvF" role="t8saQ" />
        <node concept="t8saL" id="2JFas4t3dxm" role="t8saQ">
          <property role="TrG5h" value="setmaker" />
          <node concept="3xhzZY" id="2JFas4t3b1T" role="t8saQ">
            <property role="TrG5h" value="setmaker" />
            <node concept="3xiQg6" id="2JFas4t3bAy" role="3xhzZr">
              <ref role="3xiQg3" node="4idNKJH8gWO" resolve="test" />
            </node>
            <node concept="3xiQg6" id="2JFas4t3ccw" role="3xhzZr">
              <property role="3xj4NX" value="2b2ZYR3yDpL/AtMostOne" />
              <ref role="3xiQg3" node="2JFas4t3bSW" resolve="setmaker_rest" />
            </node>
          </node>
          <node concept="3xJKux" id="2JFas4t3bSW" role="t8saQ">
            <property role="TrG5h" value="setmaker_rest" />
            <node concept="3xiQg6" id="2JFas4t3bTq" role="3xJKtx">
              <ref role="3xiQg3" node="6z$mG1ViwVV" resolve="comp_for" />
            </node>
            <node concept="3xiQg6" id="2JFas4t3ccq" role="3xJKtx">
              <ref role="3xiQg3" node="2JFas4t3bTV" resolve="setmaker_tests" />
            </node>
          </node>
          <node concept="3xhzZY" id="2JFas4t3bTV" role="t8saQ">
            <property role="TrG5h" value="setmaker_tests" />
            <node concept="3xhzXc" id="2JFas4t3f1Y" role="3xhzZr">
              <property role="TrG5h" value="," />
            </node>
            <node concept="3xiQg6" id="2JFas4t3cco" role="3xhzZr">
              <property role="3xj4NX" value="2b2ZYR3yDpO/AtleastOne" />
              <property role="2DFMXm" value=", " />
              <ref role="3xiQg3" node="4idNKJH8gWO" resolve="test" />
            </node>
          </node>
        </node>
        <node concept="3P3UoZ" id="2JFas4t3dw5" role="t8saQ" />
        <node concept="t8saL" id="2JFas4t3d$2" role="t8saQ">
          <property role="TrG5h" value="dictmaker" />
          <node concept="3xhzZY" id="2JFas4t3b2k" role="t8saQ">
            <property role="TrG5h" value="dictmaker" />
            <node concept="3xiQg6" id="2JFas4t3fm6" role="3xhzZr">
              <ref role="3xiQg3" node="2JFas4t3flp" resolve="dictmaker_keyval" />
            </node>
            <node concept="3xiQg6" id="2JFas4t3dSg" role="3xhzZr">
              <property role="3xj4NX" value="2b2ZYR3yDpL/AtMostOne" />
              <ref role="3xiQg3" node="2JFas4t3eaF" resolve="dictmaker_rest" />
            </node>
          </node>
          <node concept="3xJKux" id="2JFas4t3eaF" role="t8saQ">
            <property role="TrG5h" value="dictmaker_rest" />
            <node concept="3xiQg6" id="2JFas4t3et2" role="3xJKtx">
              <ref role="3xiQg3" node="6z$mG1ViwVV" resolve="comp_for" />
            </node>
            <node concept="3xiQg6" id="2JFas4t3et4" role="3xJKtx">
              <ref role="3xiQg3" node="2JFas4t3d_z" resolve="dictmaker_tests" />
            </node>
          </node>
          <node concept="3xhzZY" id="2JFas4t3d_z" role="t8saQ">
            <property role="TrG5h" value="dictmaker_tests" />
            <node concept="3xhzXc" id="2JFas4t3f22" role="3xhzZr">
              <property role="TrG5h" value="," />
            </node>
            <node concept="3xiQg6" id="2JFas4t3fmg" role="3xhzZr">
              <property role="3xj4NX" value="2b2ZYR3yDpO/AtleastOne" />
              <property role="2DFMXm" value=", " />
              <ref role="3xiQg3" node="2JFas4t3flp" resolve="dictmaker_keyval" />
            </node>
          </node>
          <node concept="3xhzZY" id="2JFas4t3flp" role="t8saQ">
            <property role="TrG5h" value="dictmaker_keyval" />
            <node concept="3xiQg6" id="2JFas4t3flC" role="3xhzZr">
              <property role="TrG5h" value="key" />
              <ref role="3xiQg3" node="4idNKJH8gWO" resolve="test" />
            </node>
            <node concept="3xhzXc" id="2JFas4t3flH" role="3xhzZr">
              <property role="TrG5h" value=":" />
            </node>
            <node concept="3xiQg6" id="2JFas4t3flS" role="3xhzZr">
              <property role="TrG5h" value="value" />
              <ref role="3xiQg3" node="4idNKJH8gWO" resolve="test" />
            </node>
          </node>
        </node>
        <node concept="3P3UoZ" id="2JFas4t3cu$" role="t8saQ" />
        <node concept="t8saL" id="2JFas4t3cMU" role="t8saQ">
          <property role="TrG5h" value="testlist" />
          <node concept="3xhzZY" id="6z$mG1ViiAd" role="t8saQ">
            <property role="TrG5h" value="testlist_comp" />
            <node concept="3xiQg6" id="6z$mG1ViyWt" role="3xhzZr">
              <ref role="3xiQg3" node="4idNKJH8gWO" resolve="test" />
            </node>
            <node concept="3xiQg6" id="6z$mG1Vi$bi" role="3xhzZr">
              <ref role="3xiQg3" node="6z$mG1Vizc9" resolve="testlist_tail" />
            </node>
          </node>
          <node concept="3xJKux" id="6z$mG1Vizc9" role="t8saQ">
            <property role="TrG5h" value="testlist_tail" />
            <node concept="3xiQg6" id="6z$mG1VizGt" role="3xJKtx">
              <ref role="3xiQg3" node="6z$mG1ViwVV" resolve="comp_for" />
            </node>
            <node concept="3xiQg6" id="6z$mG1VizGr" role="3xJKtx">
              <ref role="3xiQg3" node="6z$mG1VizsH" resolve="testlist_tests" />
            </node>
          </node>
          <node concept="3xhzZY" id="6z$mG1VizsH" role="t8saQ">
            <property role="TrG5h" value="testlist_tests" />
            <node concept="3xiQg6" id="6z$mG1Vizt2" role="3xhzZr">
              <property role="3xj4NX" value="2b2ZYR3yDpK/ZeroOrMore" />
              <property role="2DFMXm" value=", " />
              <ref role="3xiQg3" node="4idNKJH8gWO" resolve="test" />
            </node>
          </node>
        </node>
        <node concept="3P3UoZ" id="2JFas4t3cv7" role="t8saQ" />
        <node concept="t8saL" id="2JFas4t3cPq" role="t8saQ">
          <property role="TrG5h" value="comp" />
          <node concept="3xJKux" id="6z$mG1Vixqy" role="t8saQ">
            <property role="TrG5h" value="comp_iter" />
            <node concept="3xiQg6" id="6z$mG1VixqD" role="3xJKtx">
              <ref role="3xiQg3" node="6z$mG1ViwVV" resolve="comp_for" />
            </node>
            <node concept="3xiQg6" id="6z$mG1VixqF" role="3xJKtx">
              <ref role="3xiQg3" node="6z$mG1Vixb5" resolve="comp_if" />
            </node>
          </node>
          <node concept="3xhzZY" id="6z$mG1ViwVV" role="t8saQ">
            <property role="TrG5h" value="comp_for" />
            <node concept="3xhzXc" id="6z$mG1VixDS" role="3xhzZr">
              <property role="TrG5h" value="for" />
            </node>
            <node concept="3xiQg6" id="6z$mG1VixDX" role="3xhzZr">
              <ref role="3xiQg3" node="4VQvhHjW7_V" resolve="exprlist" />
            </node>
            <node concept="3xhzXc" id="6z$mG1VixTi" role="3xhzZr">
              <property role="TrG5h" value="in" />
            </node>
            <node concept="3xiQg6" id="6z$mG1VixTs" role="3xhzZr">
              <ref role="3xiQg3" node="4idNKJH8leY" resolve="expr" />
            </node>
            <node concept="3xiQg6" id="6z$mG1Viy8R" role="3xhzZr">
              <property role="3xj4NX" value="2b2ZYR3yDpL/AtMostOne" />
              <ref role="3xiQg3" node="6z$mG1Vixqy" resolve="comp_iter" />
            </node>
          </node>
          <node concept="3xhzZY" id="6z$mG1Vixb5" role="t8saQ">
            <property role="TrG5h" value="comp_if" />
            <node concept="3xhzXc" id="6z$mG1Viyod" role="3xhzZr">
              <property role="TrG5h" value="if" />
            </node>
            <node concept="3xiQg6" id="6z$mG1ViytE" role="3xhzZr">
              <ref role="3xiQg3" node="6z$mG1VivEH" resolve="test_nocond" />
            </node>
            <node concept="3xiQg6" id="6z$mG1ViyH6" role="3xhzZr">
              <property role="3xj4NX" value="2b2ZYR3yDpL/AtMostOne" />
              <ref role="3xiQg3" node="6z$mG1Vixqy" resolve="comp_iter" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3P3UoZ" id="6z$mG1ViwNh" role="3xJMYo" />
    <node concept="t8saL" id="4idNKJH8n0m" role="3xJMYo">
      <property role="TrG5h" value="arglist" />
      <node concept="3xhzZY" id="7V8LwQOfasT" role="t8saQ">
        <property role="TrG5h" value="fpdefval" />
        <node concept="3xhzXc" id="7V8LwQOfat7" role="3xhzZr">
          <property role="TrG5h" value="=" />
        </node>
        <node concept="3xiQg6" id="7V8LwQOfaHh" role="3xhzZr">
          <ref role="3xiQg3" node="4idNKJH8gWO" resolve="test" />
        </node>
      </node>
      <node concept="3P3UoZ" id="2JFas4to53z" role="t8saQ" />
      <node concept="t8saL" id="2JFas4to42V" role="t8saQ">
        <property role="TrG5h" value="typed" />
        <node concept="3xJKux" id="4idNKJH8o1V" role="t8saQ">
          <property role="TrG5h" value="typedargslist" />
          <node concept="3xiQg6" id="7V8LwQOfdPt" role="3xJKtx">
            <ref role="3xiQg3" node="7V8LwQOfbJu" resolve="simple_typedargslist" />
          </node>
          <node concept="3xiQg6" id="7V8LwQOfdPr" role="3xJKtx">
            <ref role="3xiQg3" node="7V8LwQOfcKR" resolve="typed_argskwargslist" />
          </node>
        </node>
        <node concept="3P3UoZ" id="2JFas4to5n3" role="t8saQ" />
        <node concept="3xhzZY" id="7V8LwQOfbJu" role="t8saQ">
          <property role="TrG5h" value="simple_typedargslist" />
          <node concept="3xiQg6" id="7V8LwQOfbZX" role="3xhzZr">
            <property role="3xj4NX" value="2b2ZYR3yDpO/AtleastOne" />
            <property role="2DFMXm" value=", " />
            <ref role="3xiQg3" node="7V8LwQOfbeb" resolve="tfpdefwdef" />
          </node>
        </node>
        <node concept="3P3UoZ" id="2JFas4to5nC" role="t8saQ" />
        <node concept="3xhzZY" id="7V8LwQOfcKR" role="t8saQ">
          <property role="TrG5h" value="typed_argskwargslist" />
          <node concept="3xiQg6" id="7V8LwQOfd1q" role="3xhzZr">
            <property role="3xj4NX" value="2b2ZYR3yDpK/ZeroOrMore" />
            <property role="2DFMXm" value=", " />
            <ref role="3xiQg3" node="7V8LwQOfbeb" resolve="tfpdefwdef" />
          </node>
          <node concept="3xiQg6" id="7V8LwQOfd$j" role="3xhzZr">
            <ref role="3xiQg3" node="7V8LwQOfdzR" resolve="typed_argskwargs_tail" />
          </node>
        </node>
        <node concept="3xJKux" id="7V8LwQOfdzR" role="t8saQ">
          <property role="TrG5h" value="typed_argskwargs_tail" />
          <node concept="3xiQg6" id="7V8LwQOfhLs" role="3xJKtx">
            <ref role="3xiQg3" node="7V8LwQOfemI" resolve="typed_args_tail" />
          </node>
          <node concept="3xiQg6" id="7V8LwQOfhLu" role="3xJKtx">
            <ref role="3xiQg3" node="7V8LwQOfdP0" resolve="typed_kwargs_tail" />
          </node>
        </node>
        <node concept="3xhzZY" id="7V8LwQOfemI" role="t8saQ">
          <property role="TrG5h" value="typed_args_tail" />
          <node concept="3xhzXc" id="7V8LwQOfeBz" role="3xhzZr">
            <property role="TrG5h" value="*" />
          </node>
          <node concept="3xiQg6" id="7V8LwQOff8k" role="3xhzZr">
            <property role="3xj4NX" value="2b2ZYR3yDpL/AtMostOne" />
            <ref role="3xiQg3" node="7V8LwQOf3tg" resolve="tfpdef" />
          </node>
          <node concept="3xiQg6" id="7V8LwQOfi24" role="3xhzZr">
            <property role="3xj4NX" value="2b2ZYR3yDpL/AtMostOne" />
            <ref role="3xiQg3" node="7V8LwQOfgcB" resolve="typed_args_tail1" />
          </node>
          <node concept="3xiQg6" id="7V8LwQOfi2e" role="3xhzZr">
            <property role="3xj4NX" value="2b2ZYR3yDpL/AtMostOne" />
            <ref role="3xiQg3" node="7V8LwQOfhfv" resolve="typed_args_tail2" />
          </node>
        </node>
        <node concept="3xhzZY" id="7V8LwQOfgcB" role="t8saQ">
          <property role="TrG5h" value="typed_args_tail1" />
          <node concept="3xhzXc" id="7V8LwQOfgty" role="3xhzZr">
            <property role="TrG5h" value=", " />
          </node>
          <node concept="3xiQg6" id="7V8LwQOfgtB" role="3xhzZr">
            <property role="3xj4NX" value="2b2ZYR3yDpK/ZeroOrMore" />
            <property role="2DFMXm" value=", " />
            <ref role="3xiQg3" node="7V8LwQOfbeb" resolve="tfpdefwdef" />
          </node>
        </node>
        <node concept="3xhzZY" id="7V8LwQOfhfv" role="t8saQ">
          <property role="TrG5h" value="typed_args_tail2" />
          <node concept="3xhzXc" id="7V8LwQOfhg5" role="3xhzZr">
            <property role="TrG5h" value=", " />
          </node>
          <node concept="3xiQg6" id="7V8LwQOfhwT" role="3xhzZr">
            <ref role="3xiQg3" node="7V8LwQOfdP0" resolve="typed_kwargs_tail" />
          </node>
        </node>
        <node concept="3xhzZY" id="7V8LwQOfdP0" role="t8saQ">
          <property role="TrG5h" value="typed_kwargs_tail" />
          <node concept="3xhzXc" id="7V8LwQOfe5M" role="3xhzZr">
            <property role="TrG5h" value="**" />
          </node>
          <node concept="3xiQg6" id="7V8LwQOfe5R" role="3xhzZr">
            <ref role="3xiQg3" node="7V8LwQOf3tg" resolve="tfpdef" />
          </node>
        </node>
        <node concept="3P3UoZ" id="2JFas4to5jd" role="t8saQ" />
        <node concept="3xhzZY" id="7V8LwQOfbeb" role="t8saQ">
          <property role="TrG5h" value="tfpdefwdef" />
          <node concept="3xiQg6" id="7V8LwQOfbes" role="3xhzZr">
            <ref role="3xiQg3" node="7V8LwQOf3tg" resolve="tfpdef" />
          </node>
          <node concept="3xiQg6" id="7V8LwQOfbex" role="3xhzZr">
            <property role="3xj4NX" value="2b2ZYR3yDpL/AtMostOne" />
            <ref role="3xiQg3" node="7V8LwQOfasT" resolve="fpdefval" />
          </node>
        </node>
        <node concept="3xhzZY" id="7V8LwQOf3tg" role="t8saQ">
          <property role="TrG5h" value="tfpdef" />
          <node concept="2GSJ2k" id="7V8LwQOf8aL" role="3xhzZr">
            <ref role="2GQAiS" node="4VQvhHjW3RS" resolve="NAME" />
          </node>
          <node concept="3xiQg6" id="7V8LwQOf9bl" role="3xhzZr">
            <property role="3xj4NX" value="2b2ZYR3yDpL/AtMostOne" />
            <ref role="3xiQg3" node="7V8LwQOf9aZ" resolve="tfpdeftype" />
          </node>
        </node>
        <node concept="3xhzZY" id="7V8LwQOf9aZ" role="t8saQ">
          <property role="TrG5h" value="tfpdeftype" />
          <node concept="3xhzXc" id="7V8LwQOf9b9" role="3xhzZr">
            <property role="TrG5h" value=":" />
          </node>
          <node concept="3xiQg6" id="7V8LwQOf9be" role="3xhzZr">
            <ref role="3xiQg3" node="4idNKJH8gWO" resolve="test" />
          </node>
        </node>
      </node>
      <node concept="3P3UoZ" id="7V8LwQOfbv0" role="t8saQ" />
      <node concept="t8saL" id="2JFas4to48g" role="t8saQ">
        <property role="TrG5h" value="untyped" />
        <node concept="3xJKux" id="4idNKJH8q4w" role="t8saQ">
          <property role="TrG5h" value="varargslist" />
          <node concept="3xiQg6" id="2JFas4t37MZ" role="3xJKtx">
            <ref role="3xiQg3" node="5p9SqSdXTb7" resolve="simple_varargslist" />
          </node>
          <node concept="3xiQg6" id="2JFas4t37N1" role="3xJKtx">
            <ref role="3xiQg3" node="5p9SqSdXVlV" resolve="varargskwargslist" />
          </node>
        </node>
        <node concept="3P3UoZ" id="2JFas4to5oK" role="t8saQ" />
        <node concept="3xhzZY" id="5p9SqSdXTb7" role="t8saQ">
          <property role="TrG5h" value="simple_varargslist" />
          <node concept="3xiQg6" id="5p9SqSdXV4y" role="3xhzZr">
            <property role="3xj4NX" value="2b2ZYR3yDpO/AtleastOne" />
            <property role="2DFMXm" value=", " />
            <ref role="3xiQg3" node="5p9SqSdXTso" resolve="vfpdefwdef" />
          </node>
        </node>
        <node concept="3P3UoZ" id="2JFas4to5sh" role="t8saQ" />
        <node concept="3xhzZY" id="5p9SqSdXVlV" role="t8saQ">
          <property role="TrG5h" value="varargskwargslist" />
          <node concept="3xiQg6" id="5p9SqSdXVmH" role="3xhzZr">
            <property role="3xj4NX" value="2b2ZYR3yDpK/ZeroOrMore" />
            <property role="2DFMXm" value=", " />
            <ref role="3xiQg3" node="5p9SqSdXTso" resolve="vfpdefwdef" />
          </node>
          <node concept="3xiQg6" id="5p9SqSdXWOL" role="3xhzZr">
            <ref role="3xiQg3" node="5p9SqSdXVSQ" resolve="vargargskwargs_tail" />
          </node>
        </node>
        <node concept="3xJKux" id="5p9SqSdXVSQ" role="t8saQ">
          <property role="TrG5h" value="vargargskwargs_tail" />
          <node concept="3xiQg6" id="5p9SqSdXX5_" role="3xJKtx">
            <ref role="3xiQg3" node="5p9SqSdXWvz" resolve="args_tail" />
          </node>
          <node concept="3xiQg6" id="5p9SqSdXX5B" role="3xJKtx">
            <ref role="3xiQg3" node="5p9SqSdXWb8" resolve="kwargs_tail" />
          </node>
        </node>
        <node concept="3xhzZY" id="5p9SqSdXWvz" role="t8saQ">
          <property role="TrG5h" value="args_tail" />
          <node concept="3xhzXc" id="5p9SqSdXXms" role="3xhzZr">
            <property role="TrG5h" value="*" />
          </node>
          <node concept="3xiQg6" id="5p9SqSdXXmx" role="3xhzZr">
            <property role="3xj4NX" value="2b2ZYR3yDpL/AtMostOne" />
            <ref role="3xiQg3" node="7V8LwQOf8qJ" resolve="vfpdef" />
          </node>
          <node concept="3xiQg6" id="5p9SqSdXXBt" role="3xhzZr">
            <property role="3xj4NX" value="2b2ZYR3yDpL/AtMostOne" />
            <ref role="3xiQg3" node="5p9SqSdXWxj" resolve="args_tail1" />
          </node>
          <node concept="3xiQg6" id="5p9SqSdXXBB" role="3xhzZr">
            <property role="3xj4NX" value="2b2ZYR3yDpL/AtMostOne" />
            <ref role="3xiQg3" node="5p9SqSdXWz5" resolve="args_tail2" />
          </node>
        </node>
        <node concept="3xhzZY" id="5p9SqSdXWxj" role="t8saQ">
          <property role="TrG5h" value="args_tail1" />
          <node concept="3xhzXc" id="5p9SqSdXXSz" role="3xhzZr">
            <property role="TrG5h" value="," />
          </node>
          <node concept="3xiQg6" id="5p9SqSdXXSC" role="3xhzZr">
            <property role="3xj4NX" value="2b2ZYR3yDpK/ZeroOrMore" />
            <property role="2DFMXm" value=", " />
            <ref role="3xiQg3" node="5p9SqSdXTso" resolve="vfpdefwdef" />
          </node>
        </node>
        <node concept="3xhzZY" id="5p9SqSdXWz5" role="t8saQ">
          <property role="TrG5h" value="args_tail2" />
          <node concept="3xhzXc" id="5p9SqSdXYqs" role="3xhzZr">
            <property role="TrG5h" value="," />
          </node>
          <node concept="3xiQg6" id="5p9SqSdXYqx" role="3xhzZr">
            <ref role="3xiQg3" node="5p9SqSdXWb8" resolve="kwargs_tail" />
          </node>
        </node>
        <node concept="3xhzZY" id="5p9SqSdXWb8" role="t8saQ">
          <property role="TrG5h" value="kwargs_tail" />
          <node concept="3xhzXc" id="5p9SqSdXWbX" role="3xhzZr">
            <property role="TrG5h" value="**" />
          </node>
          <node concept="3xiQg6" id="5p9SqSdXWc2" role="3xhzZr">
            <ref role="3xiQg3" node="7V8LwQOf8qJ" resolve="vfpdef" />
          </node>
        </node>
        <node concept="3P3UoZ" id="2JFas4to5og" role="t8saQ" />
        <node concept="3xhzZY" id="5p9SqSdXTso" role="t8saQ">
          <property role="TrG5h" value="vfpdefwdef" />
          <node concept="3xiQg6" id="5p9SqSdXUzf" role="3xhzZr">
            <ref role="3xiQg3" node="7V8LwQOf8qJ" resolve="vfpdef" />
          </node>
          <node concept="3xiQg6" id="5p9SqSdXUNT" role="3xhzZr">
            <property role="3xj4NX" value="2b2ZYR3yDpL/AtMostOne" />
            <ref role="3xiQg3" node="7V8LwQOfasT" resolve="fpdefval" />
          </node>
        </node>
        <node concept="3xhzZY" id="7V8LwQOf8qJ" role="t8saQ">
          <property role="TrG5h" value="vfpdef" />
          <node concept="2GSJ2k" id="7V8LwQOf8qK" role="3xhzZr">
            <ref role="2GQAiS" node="4VQvhHjW3RS" resolve="NAME" />
          </node>
        </node>
      </node>
      <node concept="3P3UoZ" id="5p9SqSdY0tR" role="t8saQ" />
      <node concept="t8saL" id="2JFas4to5u_" role="t8saQ">
        <property role="TrG5h" value="argument" />
        <node concept="3xhzZY" id="5p9SqSdY09p" role="t8saQ">
          <property role="TrG5h" value="arglist" />
          <node concept="3xiQg6" id="5p9SqSdY0ay" role="3xhzZr">
            <property role="3xj4NX" value="2b2ZYR3yDpK/ZeroOrMore" />
            <property role="2DFMXm" value=", " />
            <ref role="3xiQg3" node="5p9SqSdXZjf" resolve="argument" />
          </node>
          <node concept="3xiQg6" id="5p9SqSdY0yr" role="3xhzZr">
            <ref role="3xiQg3" node="5p9SqSdY0xf" resolve="arglist_tail" />
          </node>
        </node>
        <node concept="3P3UoZ" id="2JFas4toh3i" role="t8saQ" />
        <node concept="3xJKux" id="5p9SqSdY0xf" role="t8saQ">
          <property role="TrG5h" value="arglist_tail" />
          <node concept="3xiQg6" id="5p9SqSdY0Nu" role="3xJKtx">
            <ref role="3xiQg3" node="5p9SqSdXZjf" resolve="argument" />
          </node>
          <node concept="3xiQg6" id="5p9SqSdY0Nw" role="3xJKtx">
            <ref role="3xiQg3" node="5p9SqSdY2tA" resolve="args_argument" />
          </node>
          <node concept="3xiQg6" id="5p9SqSdY2uQ" role="3xJKtx">
            <ref role="3xiQg3" node="5p9SqSdY1mM" resolve="kwargs_argument" />
          </node>
        </node>
        <node concept="3xhzZY" id="5p9SqSdY2tA" role="t8saQ">
          <property role="TrG5h" value="args_argument" />
          <node concept="3xhzXc" id="5p9SqSdY2uU" role="3xhzZr">
            <property role="TrG5h" value="*" />
          </node>
          <node concept="3xiQg6" id="5p9SqSdY2uZ" role="3xhzZr">
            <ref role="3xiQg3" node="4idNKJH8gWO" resolve="test" />
          </node>
          <node concept="3xiQg6" id="5p9SqSdY3Dw" role="3xhzZr">
            <property role="3xj4NX" value="2b2ZYR3yDpL/AtMostOne" />
            <ref role="3xiQg3" node="5p9SqSdY2Lu" resolve="args_argument1" />
          </node>
          <node concept="3xiQg6" id="5p9SqSdY3DE" role="3xhzZr">
            <property role="3xj4NX" value="2b2ZYR3yDpL/AtMostOne" />
            <ref role="3xiQg3" node="5p9SqSdY2O6" resolve="args_argument2" />
          </node>
        </node>
        <node concept="3xhzZY" id="5p9SqSdY2Lu" role="t8saQ">
          <property role="TrG5h" value="args_argument1" />
          <node concept="3xhzXc" id="5p9SqSdY36K" role="3xhzZr">
            <property role="TrG5h" value="," />
          </node>
          <node concept="3xiQg6" id="5p9SqSdY36P" role="3xhzZr">
            <property role="3xj4NX" value="2b2ZYR3yDpK/ZeroOrMore" />
            <property role="2DFMXm" value=", " />
            <ref role="3xiQg3" node="5p9SqSdXZjf" resolve="argument" />
          </node>
        </node>
        <node concept="3xhzZY" id="5p9SqSdY2O6" role="t8saQ">
          <property role="TrG5h" value="args_argument2" />
          <node concept="3xhzXc" id="5p9SqSdY2Pr" role="3xhzZr">
            <property role="TrG5h" value="," />
          </node>
          <node concept="3xiQg6" id="5p9SqSdY2Pw" role="3xhzZr">
            <ref role="3xiQg3" node="5p9SqSdY1mM" resolve="kwargs_argument" />
          </node>
        </node>
        <node concept="3xhzZY" id="5p9SqSdY1mM" role="t8saQ">
          <property role="TrG5h" value="kwargs_argument" />
          <node concept="3xhzXc" id="5p9SqSdY1D1" role="3xhzZr">
            <property role="TrG5h" value="**" />
          </node>
          <node concept="3xiQg6" id="5p9SqSdY1Ua" role="3xhzZr">
            <ref role="3xiQg3" node="4idNKJH8gWO" resolve="test" />
          </node>
        </node>
        <node concept="3P3UoZ" id="2JFas4toh3Q" role="t8saQ" />
        <node concept="3xJKux" id="5p9SqSdXZjf" role="t8saQ">
          <property role="TrG5h" value="argument" />
          <node concept="3xiQg6" id="2JFas4t39K5" role="3xJKtx">
            <ref role="3xiQg3" node="2JFas4t3869" resolve="arg_comp" />
          </node>
          <node concept="3xiQg6" id="2JFas4t39K7" role="3xJKtx">
            <ref role="3xiQg3" node="2JFas4t3895" resolve="arg_keyword" />
          </node>
        </node>
        <node concept="2DJ5fZ" id="2JFas4t39C8" role="t8saQ">
          <property role="TrG5h" value="Warning, there is an ambiguity between &lt;test&gt; and &lt;NAME&gt; here" />
        </node>
        <node concept="2DJ5fZ" id="2JFas4t39Fi" role="t8saQ">
          <property role="TrG5h" value="Python parser handles this by replacing &lt;NAME&gt; by &lt;test&gt; in arg_keyword case" />
        </node>
        <node concept="2DJ5fZ" id="2JFas4t39Iu" role="t8saQ">
          <property role="TrG5h" value="and post-checking it is actually a &lt;NAME&gt;" />
        </node>
        <node concept="3xhzZY" id="2JFas4t3869" role="t8saQ">
          <property role="TrG5h" value="arg_comp" />
          <node concept="3xiQg6" id="2JFas4t38Zr" role="3xhzZr">
            <ref role="3xiQg3" node="4idNKJH8gWO" resolve="test" />
          </node>
          <node concept="3xiQg6" id="2JFas4t38Zw" role="3xhzZr">
            <property role="3xj4NX" value="2b2ZYR3yDpL/AtMostOne" />
            <ref role="3xiQg3" node="6z$mG1ViwVV" resolve="comp_for" />
          </node>
        </node>
        <node concept="3xhzZY" id="2JFas4t3895" role="t8saQ">
          <property role="TrG5h" value="arg_keyword" />
          <node concept="2GSJ2k" id="2JFas4t39he" role="3xhzZr">
            <ref role="2GQAiS" node="4VQvhHjW3RS" resolve="NAME" />
          </node>
          <node concept="3xhzXc" id="2JFas4t39hj" role="3xhzZr">
            <property role="TrG5h" value="=" />
          </node>
          <node concept="3xiQg6" id="2JFas4t39hu" role="3xhzZr">
            <ref role="3xiQg3" node="4idNKJH8gWO" resolve="test" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3P3UoZ" id="4idNKJH8Gbu" role="3xJMYo" />
    <node concept="t8saL" id="4VQvhHjW2O2" role="3xJMYo">
      <property role="TrG5h" value="statements" />
      <node concept="2DJ5fZ" id="2yk$fkYvz$e" role="t8saQ">
        <property role="TrG5h" value="We add small_stmt here to allow for non-simple_stmt small_stmt nodes" />
      </node>
      <node concept="3xJKux" id="4VQvhHjW2Ob" role="t8saQ">
        <property role="TrG5h" value="stmt" />
        <node concept="3xiQg6" id="4VQvhHjW33z" role="3xJKtx">
          <ref role="3xiQg3" node="4VQvhHjW2Yx" resolve="simple_stmt" />
        </node>
        <node concept="3xiQg6" id="2yk$fkYvzCw" role="3xJKtx">
          <ref role="3xiQg3" node="4VQvhHjW38D" resolve="small_stmt" />
        </node>
        <node concept="3xiQg6" id="4VQvhHjW33_" role="3xJKtx">
          <ref role="3xiQg3" node="4VQvhHjW33x" resolve="compound_stmt" />
        </node>
      </node>
      <node concept="3P3UoZ" id="5Dh5jJll6Ql" role="t8saQ" />
      <node concept="t8saL" id="4VQvhHjW2Vj" role="t8saQ">
        <property role="TrG5h" value="simple" />
        <node concept="3xhzZY" id="4VQvhHjW2Yx" role="t8saQ">
          <property role="TrG5h" value="simple_stmt" />
          <node concept="3xiQg6" id="4VQvhHjW3aq" role="3xhzZr">
            <property role="3xj4NX" value="2b2ZYR3yDpO/AtleastOne" />
            <property role="2DFMXm" value="; " />
            <ref role="3xiQg3" node="4VQvhHjW38D" resolve="small_stmt" />
          </node>
        </node>
        <node concept="3xJKux" id="4VQvhHjW38D" role="t8saQ">
          <property role="TrG5h" value="small_stmt" />
          <node concept="3xiQg6" id="4VQvhHjW3x2" role="3xJKtx">
            <ref role="3xiQg3" node="4VQvhHjW3oY" resolve="expr_stmt" />
          </node>
          <node concept="3xiQg6" id="4VQvhHjW419" role="3xJKtx">
            <ref role="3xiQg3" node="4VQvhHjW3CU" resolve="del_stmt" />
          </node>
          <node concept="3xiQg6" id="4VQvhHjW43x" role="3xJKtx">
            <ref role="3xiQg3" node="4VQvhHjW3Fw" resolve="pass_stmt" />
          </node>
          <node concept="3xiQg6" id="4VQvhHjW3x4" role="3xJKtx">
            <ref role="3xiQg3" node="4VQvhHjW3x0" resolve="flow_stmt" />
          </node>
          <node concept="3xiQg6" id="4VQvhHjW3x7" role="3xJKtx">
            <ref role="3xiQg3" node="4VQvhHjW3$X" resolve="import_stmt" />
          </node>
          <node concept="3xiQg6" id="4VQvhHjW3$Z" role="3xJKtx">
            <ref role="3xiQg3" node="4VQvhHjW3JP" resolve="global_stmt" />
          </node>
          <node concept="3xiQg6" id="4VQvhHjW45V" role="3xJKtx">
            <ref role="3xiQg3" node="4VQvhHjW3Wr" resolve="nonlocal_stmt" />
          </node>
          <node concept="3xiQg6" id="4VQvhHjW48n" role="3xJKtx">
            <ref role="3xiQg3" node="4VQvhHjW3YL" resolve="assert_stmt" />
          </node>
        </node>
        <node concept="3P3UoZ" id="4VQvhHjW3jp" role="t8saQ" />
        <node concept="t8saL" id="4VQvhHjW3j$" role="t8saQ">
          <property role="TrG5h" value="expr" />
          <node concept="3xhzZY" id="4VQvhHjW3oY" role="t8saQ">
            <property role="TrG5h" value="expr_stmt" />
            <node concept="3xiQg6" id="4VQvhHjW8Sh" role="3xhzZr">
              <ref role="3xiQg3" node="4VQvhHjW4$1" resolve="testlist" />
            </node>
            <node concept="3xiQg6" id="4VQvhHjW9OR" role="3xhzZr">
              <property role="3xj4NX" value="2b2ZYR3yDpL/AtMostOne" />
              <ref role="3xiQg3" node="4VQvhHjW8Zb" resolve="assignment" />
            </node>
          </node>
          <node concept="3P3UoZ" id="4VQvhHjWa5p" role="t8saQ" />
          <node concept="t8saL" id="4VQvhHjWa3w" role="t8saQ">
            <property role="TrG5h" value="assign" />
            <node concept="3xJKux" id="4VQvhHjW8Zb" role="t8saQ">
              <property role="TrG5h" value="assignment" />
              <node concept="3xiQg6" id="4VQvhHjW9Kk" role="3xJKtx">
                <ref role="3xiQg3" node="4VQvhHjW993" resolve="basic_assign" />
              </node>
              <node concept="3xiQg6" id="4VQvhHjW9Km" role="3xJKtx">
                <ref role="3xiQg3" node="4VQvhHjW99L" resolve="inplace_assign" />
              </node>
            </node>
            <node concept="3xhzZY" id="4VQvhHjW993" role="t8saQ">
              <property role="TrG5h" value="basic_assign" />
              <node concept="3xhzXc" id="4idNKJHbMmQ" role="3xhzZr">
                <property role="TrG5h" value="=" />
              </node>
              <node concept="3xiQg6" id="4VQvhHjW9uE" role="3xhzZr">
                <property role="3xj4NX" value="2b2ZYR3yDpO/AtleastOne" />
                <property role="2DFMXm" value="=" />
                <ref role="3xiQg3" node="4VQvhHjW9lb" resolve="yield_or_list" />
              </node>
            </node>
            <node concept="3xhzZY" id="4VQvhHjW99L" role="t8saQ">
              <property role="TrG5h" value="inplace_assign" />
              <node concept="3xiQg6" id="4VQvhHjW9Bq" role="3xhzZr">
                <ref role="3xiQg3" node="4VQvhHjW83M" resolve="augassign" />
              </node>
              <node concept="3xiQg6" id="4VQvhHjW9FR" role="3xhzZr">
                <ref role="3xiQg3" node="4VQvhHjW9lb" resolve="yield_or_list" />
              </node>
            </node>
            <node concept="3xJKux" id="4VQvhHjW9lb" role="t8saQ">
              <property role="TrG5h" value="yield_or_list" />
              <node concept="3xiQg6" id="4VQvhHjW9lT" role="3xJKtx">
                <ref role="3xiQg3" node="4VQvhHjW4Et" resolve="yield_expr" />
              </node>
              <node concept="3xiQg6" id="4VQvhHjW9lV" role="3xJKtx">
                <ref role="3xiQg3" node="4VQvhHjW4$1" resolve="testlist" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3P3UoZ" id="4VQvhHjW4TK" role="t8saQ" />
        <node concept="t8saL" id="4VQvhHjW3sU" role="t8saQ">
          <property role="TrG5h" value="flow" />
          <node concept="3xJKux" id="4VQvhHjW3x0" role="t8saQ">
            <property role="TrG5h" value="flow_stmt" />
            <node concept="3xiQg6" id="4VQvhHjW4Ms" role="3xJKtx">
              <ref role="3xiQg3" node="4VQvhHjW4fJ" resolve="break_statement" />
            </node>
            <node concept="3xiQg6" id="4VQvhHjW4Mu" role="3xJKtx">
              <ref role="3xiQg3" node="4VQvhHjW4ij" resolve="continue_statement" />
            </node>
            <node concept="3xiQg6" id="4VQvhHjW4P7" role="3xJKtx">
              <ref role="3xiQg3" node="4VQvhHjW4iq" resolve="return_statement" />
            </node>
            <node concept="3xiQg6" id="4VQvhHjW4Pb" role="3xJKtx">
              <ref role="3xiQg3" node="4VQvhHjW4nA" resolve="yield_statement" />
            </node>
            <node concept="3xiQg6" id="4VQvhHjW4RS" role="3xJKtx">
              <ref role="3xiQg3" node="4VQvhHjW4kY" resolve="raise_statement" />
            </node>
          </node>
          <node concept="3P3UoZ" id="4VQvhHjW4YW" role="t8saQ" />
          <node concept="3xhzZY" id="4VQvhHjW4fJ" role="t8saQ">
            <property role="TrG5h" value="break_statement" />
            <node concept="3xhzXc" id="4VQvhHjW4i9" role="3xhzZr">
              <property role="TrG5h" value="break" />
            </node>
          </node>
          <node concept="3xhzZY" id="4VQvhHjW4ij" role="t8saQ">
            <property role="TrG5h" value="continue_statement" />
            <node concept="3xhzXc" id="4VQvhHjW4ik" role="3xhzZr">
              <property role="TrG5h" value="continue" />
            </node>
          </node>
          <node concept="3xhzZY" id="4VQvhHjW4iq" role="t8saQ">
            <property role="TrG5h" value="return_statement" />
            <node concept="3xhzXc" id="4VQvhHjW4ir" role="3xhzZr">
              <property role="TrG5h" value="return" />
            </node>
            <node concept="3xiQg6" id="4VQvhHjW4_g" role="3xhzZr">
              <property role="3xj4NX" value="2b2ZYR3yDpL/AtMostOne" />
              <ref role="3xiQg3" node="4VQvhHjW4$1" resolve="testlist" />
            </node>
          </node>
          <node concept="3xhzZY" id="4VQvhHjW4nA" role="t8saQ">
            <property role="TrG5h" value="yield_statement" />
            <node concept="3xiQg6" id="4VQvhHjW4H5" role="3xhzZr">
              <ref role="3xiQg3" node="4VQvhHjW4Et" resolve="yield_expr" />
            </node>
          </node>
          <node concept="3xhzZY" id="4VQvhHjW4kY" role="t8saQ">
            <property role="TrG5h" value="raise_statement" />
            <node concept="3xhzXc" id="2JFas4t35er" role="3xhzZr">
              <property role="TrG5h" value="raise" />
            </node>
            <node concept="3xiQg6" id="2JFas4t3654" role="3xhzZr">
              <property role="3xj4NX" value="2b2ZYR3yDpL/AtMostOne" />
              <ref role="3xiQg3" node="2JFas4t35w3" resolve="raise_expr" />
            </node>
          </node>
          <node concept="3xhzZY" id="2JFas4t35w3" role="t8saQ">
            <property role="TrG5h" value="raise_expr" />
            <node concept="3xiQg6" id="2JFas4t364S" role="3xhzZr">
              <ref role="3xiQg3" node="4idNKJH8gWO" resolve="test" />
            </node>
            <node concept="3xiQg6" id="2JFas4t364X" role="3xhzZr">
              <property role="3xj4NX" value="2b2ZYR3yDpL/AtMostOne" />
              <ref role="3xiQg3" node="2JFas4t35wo" resolve="raise_from" />
            </node>
          </node>
          <node concept="3xhzZY" id="2JFas4t35wo" role="t8saQ">
            <property role="TrG5h" value="raise_from" />
            <node concept="3xhzXc" id="2JFas4t35M0" role="3xhzZr">
              <property role="TrG5h" value="from" />
            </node>
            <node concept="3xiQg6" id="2JFas4t35Nt" role="3xhzZr">
              <ref role="3xiQg3" node="4idNKJH8gWO" resolve="test" />
            </node>
          </node>
        </node>
        <node concept="3P3UoZ" id="4VQvhHjW4Sl" role="t8saQ" />
        <node concept="t8saL" id="4VQvhHjW3t3" role="t8saQ">
          <property role="TrG5h" value="import" />
          <node concept="3xJKux" id="4VQvhHjW3$X" role="t8saQ">
            <property role="TrG5h" value="import_stmt" />
            <node concept="3xiQg6" id="4VQvhHjW5yq" role="3xJKtx">
              <ref role="3xiQg3" node="4VQvhHjW53V" resolve="import_name" />
            </node>
            <node concept="3xiQg6" id="4VQvhHjW5ys" role="3xJKtx">
              <ref role="3xiQg3" node="4VQvhHjW5TZ" resolve="import_from" />
            </node>
          </node>
          <node concept="3P3UoZ" id="4VQvhHjW50X" role="t8saQ" />
          <node concept="3xhzZY" id="4VQvhHjW53V" role="t8saQ">
            <property role="TrG5h" value="import_name" />
            <node concept="3xhzXc" id="4VQvhHjW541" role="3xhzZr">
              <property role="TrG5h" value="import" />
            </node>
            <node concept="3xiQg6" id="4VQvhHjW5i$" role="3xhzZr">
              <property role="3xj4NX" value="2b2ZYR3yDpO/AtleastOne" />
              <property role="2DFMXm" value="," />
              <ref role="3xiQg3" node="4VQvhHjW570" resolve="dotted_as_name" />
            </node>
          </node>
          <node concept="3xhzZY" id="4VQvhHjW5TZ" role="t8saQ">
            <property role="TrG5h" value="import_from" />
            <node concept="3xhzXc" id="4VQvhHjW5Um" role="3xhzZr">
              <property role="TrG5h" value="from" />
            </node>
            <node concept="3xiQg6" id="4VQvhHjW5Ur" role="3xhzZr">
              <ref role="3xiQg3" node="4VQvhHjW5Q3" resolve="relative_module" />
            </node>
            <node concept="3xhzXc" id="4VQvhHjW5Uz" role="3xhzZr">
              <property role="TrG5h" value="import" />
            </node>
            <node concept="3xiQg6" id="4VQvhHjW5Yw" role="3xhzZr">
              <ref role="3xiQg3" node="4VQvhHjW5Y7" resolve="import_clause" />
            </node>
          </node>
          <node concept="3P3UoZ" id="4VQvhHjW6qo" role="t8saQ" />
          <node concept="t8saL" id="4VQvhHjW7mt" role="t8saQ">
            <property role="TrG5h" value="auxiliary" />
            <node concept="3xhzZY" id="4VQvhHjW570" role="t8saQ">
              <property role="TrG5h" value="dotted_as_name" />
              <node concept="3xiQg6" id="4VQvhHjW5rA" role="3xhzZr">
                <property role="TrG5h" value="Importee" />
                <ref role="3xiQg3" node="4VQvhHjW5lC" resolve="dotted_name" />
              </node>
              <node concept="3xiQg6" id="4VQvhHjW5fF" role="3xhzZr">
                <property role="TrG5h" value="ImportAs" />
                <property role="3xj4NX" value="2b2ZYR3yDpL/AtMostOne" />
                <ref role="3xiQg3" node="1s5$G$00UjK" resolve="as_name" />
              </node>
            </node>
            <node concept="3xhzZY" id="4VQvhHjW5lC" role="t8saQ">
              <property role="TrG5h" value="dotted_name" />
              <node concept="3xiQg6" id="4VQvhHjW5oE" role="3xhzZr">
                <property role="3xj4NX" value="2b2ZYR3yDpO/AtleastOne" />
                <property role="2DFMXm" value="." />
                <ref role="3xiQg3" node="4VQvhHjWhBx" resolve="name" />
              </node>
            </node>
            <node concept="3xhzZY" id="4VQvhHjW5D1" role="t8saQ">
              <property role="TrG5h" value="import_as_name" />
              <node concept="2GSJ2k" id="2nZx5M9cVLh" role="3xhzZr">
                <ref role="2GQAiS" node="4VQvhHjW3RS" resolve="NAME" />
              </node>
              <node concept="3xiQg6" id="4VQvhHjW5Je" role="3xhzZr">
                <property role="TrG5h" value="ImportAs" />
                <property role="3xj4NX" value="2b2ZYR3yDpL/AtMostOne" />
                <ref role="3xiQg3" node="1s5$G$00UjK" resolve="as_name" />
              </node>
            </node>
            <node concept="3xJKux" id="4VQvhHjW6$t" role="t8saQ">
              <property role="TrG5h" value="just_dots" />
              <node concept="3xiQg6" id="2nZx5M9cVLd" role="3xJKtx">
                <ref role="3xiQg3" node="4VQvhHjWbVO" resolve="simple_dot" />
              </node>
              <node concept="3xiQg6" id="4VQvhHjW6Ow" role="3xJKtx">
                <ref role="3xiQg3" node="4VQvhHjWbW8" resolve="ellipsis" />
              </node>
            </node>
            <node concept="3xhzZY" id="1s5$G$00UjK" role="t8saQ">
              <property role="TrG5h" value="as_name" />
              <node concept="3xhzXc" id="1s5$G$00Uk0" role="3xhzZr">
                <property role="TrG5h" value="as" />
              </node>
              <node concept="2GSJ2k" id="2nZx5M9cVL9" role="3xhzZr">
                <ref role="2GQAiS" node="4VQvhHjW3RS" resolve="NAME" />
              </node>
            </node>
          </node>
          <node concept="3P3UoZ" id="4VQvhHjW7oT" role="t8saQ" />
          <node concept="t8saL" id="4VQvhHjW7o8" role="t8saQ">
            <property role="TrG5h" value="module" />
            <node concept="3xJKux" id="4VQvhHjW5Q3" role="t8saQ">
              <property role="TrG5h" value="relative_module" />
              <node concept="3xiQg6" id="4VQvhHjW7kb" role="3xJKtx">
                <ref role="3xiQg3" node="4VQvhHjW70A" resolve="named_relative_module" />
              </node>
              <node concept="3xiQg6" id="4VQvhHjW7kd" role="3xJKtx">
                <ref role="3xiQg3" node="4VQvhHjW71k" resolve="unnamed_relative_module" />
              </node>
            </node>
            <node concept="3xhzZY" id="4VQvhHjW70A" role="t8saQ">
              <property role="TrG5h" value="named_relative_module" />
              <node concept="3xiQg6" id="4VQvhHjW75_" role="3xhzZr">
                <property role="3xj4NX" value="2b2ZYR3yDpK/ZeroOrMore" />
                <ref role="3xiQg3" node="4VQvhHjW6$t" resolve="just_dots" />
              </node>
              <node concept="3xiQg6" id="4VQvhHjW7cQ" role="3xhzZr">
                <ref role="3xiQg3" node="4VQvhHjW5lC" resolve="dotted_name" />
              </node>
            </node>
            <node concept="3xhzZY" id="4VQvhHjW71k" role="t8saQ">
              <property role="TrG5h" value="unnamed_relative_module" />
              <node concept="3xiQg6" id="4VQvhHjW7gx" role="3xhzZr">
                <property role="3xj4NX" value="2b2ZYR3yDpO/AtleastOne" />
                <ref role="3xiQg3" node="4VQvhHjW6$t" resolve="just_dots" />
              </node>
            </node>
          </node>
          <node concept="3P3UoZ" id="4VQvhHjW7sg" role="t8saQ" />
          <node concept="t8saL" id="4VQvhHjW7qy" role="t8saQ">
            <property role="TrG5h" value="elements" />
            <node concept="3xJKux" id="4VQvhHjW5Y7" role="t8saQ">
              <property role="TrG5h" value="import_clause" />
              <node concept="3xiQg6" id="4VQvhHjW6aV" role="3xJKtx">
                <ref role="3xiQg3" node="4VQvhHjW622" resolve="import_all" />
              </node>
              <node concept="3xiQg6" id="4VQvhHjW6aX" role="3xJKtx">
                <ref role="3xiQg3" node="4VQvhHjW63l" resolve="import_names" />
              </node>
              <node concept="3xiQg6" id="4VQvhHjW6b0" role="3xJKtx">
                <ref role="3xiQg3" node="4VQvhHjW6ab" resolve="import_names_paren" />
              </node>
            </node>
            <node concept="3xhzZY" id="4VQvhHjW622" role="t8saQ">
              <property role="TrG5h" value="import_all" />
              <node concept="3xhzXc" id="4VQvhHjW62s" role="3xhzZr">
                <property role="TrG5h" value="*" />
              </node>
            </node>
            <node concept="3xhzZY" id="4VQvhHjW63l" role="t8saQ">
              <property role="TrG5h" value="import_names" />
              <node concept="3xiQg6" id="4VQvhHjW66T" role="3xhzZr">
                <property role="3xj4NX" value="2b2ZYR3yDpO/AtleastOne" />
                <property role="2DFMXm" value="," />
                <ref role="3xiQg3" node="4VQvhHjW5D1" resolve="import_as_name" />
              </node>
            </node>
            <node concept="3xhzZY" id="4VQvhHjW6ab" role="t8saQ">
              <property role="TrG5h" value="import_names_paren" />
              <node concept="3xhzXc" id="4VQvhHjW6aI" role="3xhzZr">
                <property role="TrG5h" value="(" />
              </node>
              <node concept="3xiQg6" id="4VQvhHjW6ac" role="3xhzZr">
                <property role="3xj4NX" value="2b2ZYR3yDpO/AtleastOne" />
                <property role="2DFMXm" value="," />
                <ref role="3xiQg3" node="4VQvhHjW5D1" resolve="import_as_name" />
              </node>
              <node concept="3xhzXc" id="4VQvhHjW6aQ" role="3xhzZr">
                <property role="TrG5h" value=")" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3P3UoZ" id="4VQvhHjW50e" role="t8saQ" />
        <node concept="t8saL" id="4VQvhHjW3tc" role="t8saQ">
          <property role="TrG5h" value="misc" />
          <node concept="3xhzZY" id="4VQvhHjW3CU" role="t8saQ">
            <property role="TrG5h" value="del_stmt" />
            <node concept="3xhzXc" id="2JFas4t36my" role="3xhzZr">
              <property role="TrG5h" value="del" />
            </node>
            <node concept="3xiQg6" id="2JFas4t36mC" role="3xhzZr">
              <ref role="3xiQg3" node="4VQvhHjW7_V" resolve="exprlist" />
            </node>
          </node>
          <node concept="3xhzZY" id="4VQvhHjW3Fw" role="t8saQ">
            <property role="TrG5h" value="pass_stmt" />
            <node concept="3xhzXc" id="4VQvhHjW3Hw" role="3xhzZr">
              <property role="TrG5h" value="pass" />
            </node>
          </node>
          <node concept="3xhzZY" id="4VQvhHjW3JP" role="t8saQ">
            <property role="TrG5h" value="global_stmt" />
            <node concept="3xhzXc" id="2JFas4t37x8" role="3xhzZr">
              <property role="TrG5h" value="global" />
            </node>
            <node concept="3xiQg6" id="2JFas4t37xe" role="3xhzZr">
              <property role="3xj4NX" value="2b2ZYR3yDpO/AtleastOne" />
              <property role="2DFMXm" value=", " />
              <ref role="3xiQg3" node="4VQvhHjWhBx" resolve="name" />
            </node>
          </node>
          <node concept="3xhzZY" id="4VQvhHjW3Wr" role="t8saQ">
            <property role="TrG5h" value="nonlocal_stmt" />
            <node concept="3xhzXc" id="2JFas4t37xi" role="3xhzZr">
              <property role="TrG5h" value="nonlocal" />
            </node>
            <node concept="3xiQg6" id="2JFas4t37xn" role="3xhzZr">
              <property role="2DFMXm" value=", " />
              <property role="3xj4NX" value="2b2ZYR3yDpO/AtleastOne" />
              <ref role="3xiQg3" node="4VQvhHjWhBx" resolve="name" />
            </node>
          </node>
          <node concept="3xhzZY" id="4VQvhHjW3YL" role="t8saQ">
            <property role="TrG5h" value="assert_stmt" />
            <node concept="3xhzXc" id="2JFas4t36TH" role="3xhzZr">
              <property role="TrG5h" value="assert" />
            </node>
            <node concept="3xiQg6" id="2JFas4t36TM" role="3xhzZr">
              <ref role="3xiQg3" node="4idNKJH8gWO" resolve="test" />
            </node>
            <node concept="3xiQg6" id="2JFas4t36TU" role="3xhzZr">
              <property role="3xj4NX" value="2b2ZYR3yDpL/AtMostOne" />
              <ref role="3xiQg3" node="2JFas4t36C8" resolve="assert_message" />
            </node>
          </node>
          <node concept="3xhzZY" id="2JFas4t36C8" role="t8saQ">
            <property role="TrG5h" value="assert_message" />
            <node concept="3xhzXc" id="2JFas4t37bt" role="3xhzZr">
              <property role="TrG5h" value="," />
            </node>
            <node concept="3xiQg6" id="2JFas4t37fy" role="3xhzZr">
              <ref role="3xiQg3" node="4idNKJH8gWO" resolve="test" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3P3UoZ" id="4idNKJH8qqz" role="t8saQ" />
      <node concept="t8saL" id="4idNKJH8gp8" role="t8saQ">
        <property role="TrG5h" value="suite" />
        <node concept="3xhzZY" id="4idNKJH8guv" role="t8saQ">
          <property role="TrG5h" value="stats" />
          <node concept="3xiQg6" id="4idNKJH8gzk" role="3xhzZr">
            <property role="3xj4NX" value="2b2ZYR3yDpO/AtleastOne" />
            <property role="2DFMXm" value="\n" />
            <ref role="3xiQg3" node="4VQvhHjW2Ob" resolve="stmt" />
          </node>
        </node>
        <node concept="3xJKux" id="4idNKJH8gzF" role="t8saQ">
          <property role="TrG5h" value="suite" />
          <node concept="3xiQg6" id="4idNKJH8gzL" role="3xJKtx">
            <ref role="3xiQg3" node="4VQvhHjW2Yx" resolve="simple_stmt" />
          </node>
          <node concept="3xiQg6" id="4idNKJH8gzN" role="3xJKtx">
            <ref role="3xiQg3" node="4idNKJH8guv" resolve="stats" />
          </node>
        </node>
      </node>
      <node concept="3P3UoZ" id="4idNKJH8ERv" role="t8saQ" />
      <node concept="t8saL" id="4VQvhHjW31O" role="t8saQ">
        <property role="TrG5h" value="compound" />
        <node concept="3xJKux" id="4VQvhHjW33x" role="t8saQ">
          <property role="TrG5h" value="compound_stmt" />
          <node concept="3xiQg6" id="4idNKJH8mju" role="3xJKtx">
            <ref role="3xiQg3" node="4idNKJH8iqV" resolve="if_stmt" />
          </node>
          <node concept="3xiQg6" id="4idNKJH8mjw" role="3xJKtx">
            <ref role="3xiQg3" node="4idNKJH8hug" resolve="while_stmt" />
          </node>
          <node concept="3xiQg6" id="4idNKJH8mpA" role="3xJKtx">
            <ref role="3xiQg3" node="4idNKJH8h3k" resolve="for_stmt" />
          </node>
          <node concept="3xiQg6" id="4idNKJH8mvI" role="3xJKtx">
            <ref role="3xiQg3" node="4idNKJH8kyt" resolve="try_stmt" />
          </node>
          <node concept="3xiQg6" id="4idNKJH8m_S" role="3xJKtx">
            <ref role="3xiQg3" node="4idNKJH8ll8" resolve="with_stmt" />
          </node>
          <node concept="3xiQg6" id="4idNKJH8mG4" role="3xJKtx">
            <ref role="3xiQg3" node="4idNKJH8m1o" resolve="funcdef" />
          </node>
          <node concept="3xiQg6" id="4idNKJH8mMi" role="3xJKtx">
            <ref role="3xiQg3" node="4idNKJH8m7p" resolve="classdef" />
          </node>
          <node concept="3xiQg6" id="4idNKJH8mSy" role="3xJKtx">
            <ref role="3xiQg3" node="4idNKJH8mdr" resolve="decorated" />
          </node>
        </node>
        <node concept="3P3UoZ" id="4idNKJH8edG" role="t8saQ" />
        <node concept="t8saL" id="1s5$G$01bCf" role="t8saQ">
          <property role="TrG5h" value="definitions" />
          <node concept="3xhzZY" id="4idNKJH8m1o" role="t8saQ">
            <property role="TrG5h" value="funcdef" />
            <node concept="3xhzXc" id="4idNKJH8nJl" role="3xhzZr">
              <property role="TrG5h" value="def" />
            </node>
            <node concept="3xiQg6" id="4idNKJH8nOF" role="3xhzZr">
              <ref role="3xiQg3" node="4VQvhHjWhBx" resolve="name" />
            </node>
            <node concept="3xhzXc" id="4idNKJH8nVd" role="3xhzZr">
              <property role="TrG5h" value="(" />
            </node>
            <node concept="3xiQg6" id="4idNKJH8o8w" role="3xhzZr">
              <property role="3xj4NX" value="2b2ZYR3yDpL/AtMostOne" />
              <ref role="3xiQg3" node="4idNKJH8o1V" resolve="typedargslist" />
            </node>
            <node concept="3xhzXc" id="4idNKJH8of8" role="3xhzZr">
              <property role="TrG5h" value=")" />
            </node>
            <node concept="3xiQg6" id="4idNKJH8osK" role="3xhzZr">
              <property role="3xj4NX" value="2b2ZYR3yDpL/AtMostOne" />
              <ref role="3xiQg3" node="1s5$G$01gFm" resolve="func_result" />
            </node>
            <node concept="3xhzXc" id="4idNKJH8ozx" role="3xhzZr">
              <property role="TrG5h" value=":" />
            </node>
            <node concept="3xiQg6" id="4idNKJH8ozP" role="3xhzZr">
              <property role="d84q9" value="true" />
              <property role="d84lQ" value="true" />
              <ref role="3xiQg3" node="4idNKJH8gzF" resolve="suite" />
            </node>
          </node>
          <node concept="3xhzZY" id="4idNKJH8m7p" role="t8saQ">
            <property role="TrG5h" value="classdef" />
            <node concept="3xhzXc" id="4idNKJH8nj2" role="3xhzZr">
              <property role="TrG5h" value="class" />
            </node>
            <node concept="3xiQg6" id="4idNKJH8njj" role="3xhzZr">
              <ref role="3xiQg3" node="4VQvhHjWhBx" resolve="name" />
            </node>
            <node concept="3xhzXc" id="4idNKJH8npH" role="3xhzZr">
              <property role="TrG5h" value="(" />
            </node>
            <node concept="3xiQg6" id="4idNKJH8npR" role="3xhzZr">
              <property role="3xj4NX" value="2b2ZYR3yDpL/AtMostOne" />
              <ref role="3xiQg3" node="5p9SqSdY09p" resolve="arglist" />
            </node>
            <node concept="3xhzXc" id="4idNKJH8nq3" role="3xhzZr">
              <property role="TrG5h" value=")" />
            </node>
            <node concept="3xhzXc" id="4idNKJH8nw_" role="3xhzZr">
              <property role="TrG5h" value=":" />
            </node>
            <node concept="3xiQg6" id="4idNKJH8nwP" role="3xhzZr">
              <property role="d84q9" value="true" />
              <property role="d84lQ" value="true" />
              <ref role="3xiQg3" node="4idNKJH8gzF" resolve="suite" />
            </node>
          </node>
          <node concept="3xhzZY" id="1s5$G$01gFm" role="t8saQ">
            <property role="TrG5h" value="func_result" />
            <node concept="3xhzXc" id="1s5$G$01gFF" role="3xhzZr">
              <property role="TrG5h" value="-&gt;" />
            </node>
            <node concept="3xiQg6" id="1s5$G$01gGs" role="3xhzZr">
              <ref role="3xiQg3" node="4idNKJH8gWO" resolve="test" />
            </node>
          </node>
        </node>
        <node concept="3P3UoZ" id="4idNKJH8h2Y" role="t8saQ" />
        <node concept="t8saL" id="1s5$G$01bwd" role="t8saQ">
          <property role="TrG5h" value="loops" />
          <node concept="3xhzZY" id="4idNKJH8hug" role="t8saQ">
            <property role="TrG5h" value="while_stmt" />
            <node concept="3xhzXc" id="4idNKJH8huh" role="3xhzZr">
              <property role="TrG5h" value="while" />
            </node>
            <node concept="3xiQg6" id="4idNKJH8hui" role="3xhzZr">
              <ref role="3xiQg3" node="4idNKJH8gWO" resolve="test" />
            </node>
            <node concept="3xhzXc" id="4idNKJH8huj" role="3xhzZr">
              <property role="TrG5h" value=":" />
            </node>
            <node concept="3xiQg6" id="4idNKJH8huk" role="3xhzZr">
              <property role="d84lQ" value="true" />
              <property role="d84q9" value="true" />
              <ref role="3xiQg3" node="4idNKJH8gzF" resolve="suite" />
            </node>
            <node concept="3xiQg6" id="1s5$G$00TKl" role="3xhzZr">
              <property role="3xj4NX" value="2b2ZYR3yDpL/AtMostOne" />
              <property role="d84lQ" value="true" />
              <ref role="3xiQg3" node="1s5$G$00TGS" resolve="else_clause" />
            </node>
          </node>
          <node concept="3xhzZY" id="4idNKJH8h3k" role="t8saQ">
            <property role="TrG5h" value="for_stmt" />
            <node concept="3xhzXc" id="4idNKJH8h3F" role="3xhzZr">
              <property role="TrG5h" value="for" />
            </node>
            <node concept="3xiQg6" id="4idNKJH8h3K" role="3xhzZr">
              <ref role="3xiQg3" node="4VQvhHjW7_V" resolve="exprlist" />
            </node>
            <node concept="3xhzXc" id="4idNKJH8h8S" role="3xhzZr">
              <property role="TrG5h" value="in" />
            </node>
            <node concept="3xiQg6" id="4idNKJH8he3" role="3xhzZr">
              <ref role="3xiQg3" node="4VQvhHjW4$1" resolve="testlist" />
            </node>
            <node concept="3xhzXc" id="4idNKJH8hjh" role="3xhzZr">
              <property role="TrG5h" value=":" />
            </node>
            <node concept="3xiQg6" id="4idNKJH8hoD" role="3xhzZr">
              <property role="d84lQ" value="true" />
              <property role="d84q9" value="true" />
              <ref role="3xiQg3" node="4idNKJH8gzF" resolve="suite" />
            </node>
            <node concept="3xiQg6" id="1s5$G$00TKN" role="3xhzZr">
              <property role="3xj4NX" value="2b2ZYR3yDpL/AtMostOne" />
              <property role="d84lQ" value="true" />
              <ref role="3xiQg3" node="1s5$G$00TGS" resolve="else_clause" />
            </node>
          </node>
        </node>
        <node concept="3P3UoZ" id="1s5$G$01bug" role="t8saQ" />
        <node concept="t8saL" id="4idNKJH8i9K" role="t8saQ">
          <property role="TrG5h" value="selection" />
          <node concept="3xhzZY" id="4idNKJH8iqV" role="t8saQ">
            <property role="TrG5h" value="if_stmt" />
            <node concept="3xhzXc" id="4idNKJH8ir4" role="3xhzZr">
              <property role="TrG5h" value="if" />
            </node>
            <node concept="3xiQg6" id="4idNKJH8iwt" role="3xhzZr">
              <ref role="3xiQg3" node="4idNKJH8gWO" resolve="test" />
            </node>
            <node concept="3xhzXc" id="4idNKJH8iw_" role="3xhzZr">
              <property role="TrG5h" value=":" />
            </node>
            <node concept="3xiQg6" id="4idNKJH8iwJ" role="3xhzZr">
              <property role="d84lQ" value="true" />
              <property role="d84q9" value="true" />
              <ref role="3xiQg3" node="4idNKJH8gzF" resolve="suite" />
            </node>
            <node concept="3xiQg6" id="4idNKJH8iAi" role="3xhzZr">
              <property role="3xj4NX" value="2b2ZYR3yDpK/ZeroOrMore" />
              <property role="d84lQ" value="true" />
              <ref role="3xiQg3" node="4idNKJH8ifD" resolve="elif_clause" />
            </node>
            <node concept="3xiQg6" id="1s5$G$00TJa" role="3xhzZr">
              <property role="3xj4NX" value="2b2ZYR3yDpL/AtMostOne" />
              <property role="d84lQ" value="true" />
              <ref role="3xiQg3" node="1s5$G$00TGS" resolve="else_clause" />
            </node>
          </node>
          <node concept="3xhzZY" id="4idNKJH8ifD" role="t8saQ">
            <property role="TrG5h" value="elif_clause" />
            <node concept="3xhzXc" id="4idNKJH8ifH" role="3xhzZr">
              <property role="TrG5h" value="elif" />
            </node>
            <node concept="3xiQg6" id="4idNKJH8il0" role="3xhzZr">
              <ref role="3xiQg3" node="4idNKJH8gWO" resolve="test" />
            </node>
            <node concept="3xhzXc" id="4idNKJH8il8" role="3xhzZr">
              <property role="TrG5h" value=":" />
            </node>
            <node concept="3xiQg6" id="4idNKJH8ili" role="3xhzZr">
              <property role="d84q9" value="true" />
              <property role="d84lQ" value="true" />
              <ref role="3xiQg3" node="4idNKJH8gzF" resolve="suite" />
            </node>
          </node>
          <node concept="3xhzZY" id="1s5$G$00TGS" role="t8saQ">
            <property role="TrG5h" value="else_clause" />
            <node concept="3xhzXc" id="1s5$G$00TIJ" role="3xhzZr">
              <property role="TrG5h" value="else" />
            </node>
            <node concept="3xhzXc" id="1s5$G$00TIO" role="3xhzZr">
              <property role="TrG5h" value=":" />
            </node>
            <node concept="3xiQg6" id="1s5$G$00TIW" role="3xhzZr">
              <property role="d84lQ" value="true" />
              <property role="d84q9" value="true" />
              <ref role="3xiQg3" node="4idNKJH8gzF" resolve="suite" />
            </node>
          </node>
          <node concept="3P3UoZ" id="4idNKJH8iap" role="t8saQ" />
        </node>
        <node concept="t8saL" id="4idNKJH8geK" role="t8saQ">
          <property role="TrG5h" value="try" />
          <node concept="2DJ5fZ" id="1s5$G$00TUM" role="t8saQ">
            <property role="TrG5h" value="alternative:" />
          </node>
          <node concept="2DJ5fZ" id="1s5$G$00TVK" role="t8saQ">
            <property role="TrG5h" value="try : &lt;suite&gt; &lt;except_clause&gt;* &lt;else_clause&gt;? &lt;finally_clause&gt;?" />
          </node>
          <node concept="2DJ5fZ" id="1s5$G$00TWK" role="t8saQ">
            <property role="TrG5h" value="with constraint sizeof(except_clause) + sizeof(else_clause) + sizeof(finally_clause) != 0" />
          </node>
          <node concept="3P3UoZ" id="1s5$G$00TXh" role="t8saQ" />
          <node concept="3xhzZY" id="4idNKJH8kyt" role="t8saQ">
            <property role="TrG5h" value="try_stmt" />
            <node concept="3xhzXc" id="4idNKJH8kCB" role="3xhzZr">
              <property role="TrG5h" value="try" />
            </node>
            <node concept="3xhzXc" id="4idNKJHclzV" role="3xhzZr">
              <property role="TrG5h" value=":" />
            </node>
            <node concept="3xiQg6" id="4idNKJH8kIy" role="3xhzZr">
              <property role="d84q9" value="true" />
              <property role="d84lQ" value="true" />
              <ref role="3xiQg3" node="4idNKJH8gzF" resolve="suite" />
            </node>
            <node concept="3xiQg6" id="4idNKJH8kOs" role="3xhzZr">
              <property role="d84lQ" value="true" />
              <ref role="3xiQg3" node="4idNKJH8jMR" resolve="except_finally" />
            </node>
          </node>
          <node concept="3P3UoZ" id="1s5$G$00Uxk" role="t8saQ" />
          <node concept="3xJKux" id="4idNKJH8jMR" role="t8saQ">
            <property role="TrG5h" value="except_finally" />
            <node concept="3xiQg6" id="4idNKJH8kxB" role="3xJKtx">
              <ref role="3xiQg3" node="4idNKJH8jYO" resolve="except_clauses" />
            </node>
            <node concept="3xiQg6" id="4idNKJH8kxD" role="3xJKtx">
              <ref role="3xiQg3" node="4idNKJH8jYo" resolve="finally_clause" />
            </node>
          </node>
          <node concept="3xhzZY" id="4idNKJH8jYo" role="t8saQ">
            <property role="TrG5h" value="finally_clause" />
            <node concept="3xhzXc" id="4idNKJH8krM" role="3xhzZr">
              <property role="TrG5h" value="finally:" />
            </node>
            <node concept="3xiQg6" id="4idNKJH8krR" role="3xhzZr">
              <property role="d84lQ" value="true" />
              <property role="d84q9" value="true" />
              <ref role="3xiQg3" node="4idNKJH8gzF" resolve="suite" />
            </node>
          </node>
          <node concept="3xhzZY" id="4idNKJH8jYO" role="t8saQ">
            <property role="TrG5h" value="except_clauses" />
            <node concept="3xiQg6" id="4idNKJH8k4C" role="3xhzZr">
              <property role="3xj4NX" value="2b2ZYR3yDpO/AtleastOne" />
              <property role="2DFMXm" value="\n" />
              <ref role="3xiQg3" node="4idNKJH8jaP" resolve="except_clause" />
            </node>
            <node concept="3xiQg6" id="1s5$G$00TJC" role="3xhzZr">
              <property role="3xj4NX" value="2b2ZYR3yDpL/AtMostOne" />
              <property role="d84lQ" value="true" />
              <ref role="3xiQg3" node="1s5$G$00TGS" resolve="else_clause" />
            </node>
            <node concept="3xiQg6" id="1s5$G$00TJZ" role="3xhzZr">
              <property role="3xj4NX" value="2b2ZYR3yDpL/AtMostOne" />
              <property role="d84lQ" value="true" />
              <ref role="3xiQg3" node="4idNKJH8jYo" resolve="finally_clause" />
            </node>
          </node>
          <node concept="3P3UoZ" id="1s5$G$00Uwa" role="t8saQ" />
          <node concept="3xhzZY" id="4idNKJH8jaP" role="t8saQ">
            <property role="TrG5h" value="except_clause" />
            <node concept="3xhzXc" id="4idNKJH8jaU" role="3xhzZr">
              <property role="TrG5h" value="except" />
            </node>
            <node concept="3xiQg6" id="4idNKJH8jxy" role="3xhzZr">
              <property role="3xj4NX" value="2b2ZYR3yDpL/AtMostOne" />
              <ref role="3xiQg3" node="4idNKJH8jgB" resolve="except_test" />
            </node>
            <node concept="3xhzXc" id="4idNKJH8jxE" role="3xhzZr">
              <property role="TrG5h" value=":" />
            </node>
            <node concept="3xiQg6" id="4idNKJH8jBn" role="3xhzZr">
              <property role="d84q9" value="true" />
              <property role="d84lQ" value="true" />
              <ref role="3xiQg3" node="4idNKJH8gzF" resolve="suite" />
            </node>
          </node>
          <node concept="3xhzZY" id="4idNKJH8jgB" role="t8saQ">
            <property role="TrG5h" value="except_test" />
            <node concept="3xiQg6" id="4idNKJH8jmd" role="3xhzZr">
              <ref role="3xiQg3" node="4idNKJH8gWO" resolve="test" />
            </node>
            <node concept="3xiQg6" id="4idNKJH8jrT" role="3xhzZr">
              <property role="3xj4NX" value="2b2ZYR3yDpL/AtMostOne" />
              <ref role="3xiQg3" node="1s5$G$00TRO" resolve="except_rename" />
            </node>
          </node>
          <node concept="3xhzZY" id="1s5$G$00TRO" role="t8saQ">
            <property role="TrG5h" value="except_rename" />
            <node concept="3xhzXc" id="1s5$G$00TSh" role="3xhzZr">
              <property role="TrG5h" value="as" />
            </node>
            <node concept="3xiQg6" id="1s5$G$00TTi" role="3xhzZr">
              <ref role="3xiQg3" node="4VQvhHjWhBx" resolve="name" />
            </node>
          </node>
        </node>
        <node concept="3P3UoZ" id="4idNKJH8gjR" role="t8saQ" />
        <node concept="t8saL" id="4idNKJH8gjI" role="t8saQ">
          <property role="TrG5h" value="with" />
          <node concept="3xhzZY" id="4idNKJH8ll8" role="t8saQ">
            <property role="TrG5h" value="with_stmt" />
            <node concept="3xhzXc" id="4idNKJH8lr8" role="3xhzZr">
              <property role="TrG5h" value="with" />
            </node>
            <node concept="3xiQg6" id="4idNKJH8lx7" role="3xhzZr">
              <property role="3xj4NX" value="2b2ZYR3yDpO/AtleastOne" />
              <property role="2DFMXm" value="," />
              <ref role="3xiQg3" node="4idNKJH8gHH" resolve="with_item" />
            </node>
            <node concept="3xhzXc" id="4idNKJH8lB9" role="3xhzZr">
              <property role="TrG5h" value=":" />
            </node>
            <node concept="3xiQg6" id="4idNKJH8lBj" role="3xhzZr">
              <property role="d84q9" value="true" />
              <property role="d84lQ" value="true" />
              <ref role="3xiQg3" node="4idNKJH8gzF" resolve="suite" />
            </node>
          </node>
          <node concept="3xhzZY" id="4idNKJH8gHH" role="t8saQ">
            <property role="TrG5h" value="with_item" />
            <node concept="3xiQg6" id="4idNKJH8l8P" role="3xhzZr">
              <ref role="3xiQg3" node="4idNKJH8gWO" resolve="test" />
            </node>
            <node concept="3xiQg6" id="4idNKJH8lf5" role="3xhzZr">
              <property role="3xj4NX" value="2b2ZYR3yDpL/AtMostOne" />
              <ref role="3xiQg3" node="1s5$G$00TTz" resolve="with_rename" />
            </node>
          </node>
          <node concept="3xhzZY" id="1s5$G$00TTz" role="t8saQ">
            <property role="TrG5h" value="with_rename" />
            <node concept="3xhzXc" id="1s5$G$00TTJ" role="3xhzZr">
              <property role="TrG5h" value="as" />
            </node>
            <node concept="3xiQg6" id="1s5$G$00TUe" role="3xhzZr">
              <ref role="3xiQg3" node="4idNKJH8leY" resolve="expr" />
            </node>
          </node>
        </node>
        <node concept="3P3UoZ" id="4idNKJH8n1T" role="t8saQ" />
        <node concept="t8saL" id="4idNKJH8lU3" role="t8saQ">
          <property role="TrG5h" value="decorators" />
          <node concept="3xhzZY" id="4idNKJH8mdr" role="t8saQ">
            <property role="TrG5h" value="decorated" />
            <node concept="3xiQg6" id="4idNKJH8pJv" role="3xhzZr">
              <property role="3xj4NX" value="2b2ZYR3yDpO/AtleastOne" />
              <property role="2DFMXm" value="\n" />
              <ref role="3xiQg3" node="4idNKJH8oSu" resolve="decorator" />
            </node>
            <node concept="3xiQg6" id="4idNKJH8pQg" role="3xhzZr">
              <property role="d84lQ" value="true" />
              <ref role="3xiQg3" node="4idNKJH8oLw" resolve="decoratee" />
            </node>
          </node>
          <node concept="3xJKux" id="4idNKJH8oLw" role="t8saQ">
            <property role="TrG5h" value="decoratee" />
            <node concept="3xiQg6" id="4idNKJH8oL$" role="3xJKtx">
              <ref role="3xiQg3" node="4idNKJH8m7p" resolve="classdef" />
            </node>
            <node concept="3xiQg6" id="4idNKJH8oLA" role="3xJKtx">
              <ref role="3xiQg3" node="4idNKJH8m1o" resolve="funcdef" />
            </node>
          </node>
          <node concept="3xhzZY" id="4idNKJH8oSu" role="t8saQ">
            <property role="TrG5h" value="decorator" />
            <node concept="3xhzXc" id="4idNKJH8p5L" role="3xhzZr">
              <property role="TrG5h" value="@" />
            </node>
            <node concept="3xiQg6" id="4idNKJH8pcI" role="3xhzZr">
              <ref role="3xiQg3" node="4VQvhHjW5lC" resolve="dotted_name" />
            </node>
            <node concept="3xhzXc" id="4idNKJH8pju" role="3xhzZr">
              <property role="TrG5h" value="(" />
            </node>
            <node concept="3xiQg6" id="4idNKJH8pxH" role="3xhzZr">
              <property role="3xj4NX" value="2b2ZYR3yDpL/AtMostOne" />
              <ref role="3xiQg3" node="5p9SqSdY09p" resolve="arglist" />
            </node>
            <node concept="3xhzXc" id="4idNKJH8pxV" role="3xhzZr">
              <property role="TrG5h" value=")" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3P3UoZ" id="4idNKJHhaSb" role="3xJMYo" />
    <node concept="3xhzZY" id="4VQvhHjW2LL" role="3xJMYo">
      <property role="TrG5h" value="EmptyLine" />
    </node>
    <node concept="3xJKux" id="4VQvhHjW2HP" role="3xJMYo">
      <property role="TrG5h" value="IProgramElement" />
      <node concept="3xiQg6" id="4VQvhHjW2LQ" role="3xJKtx">
        <ref role="3xiQg3" node="4VQvhHjW2LL" resolve="EmptyLine" />
      </node>
      <node concept="3xiQg6" id="4VQvhHjW2LS" role="3xJKtx">
        <ref role="3xiQg3" node="4VQvhHjW2Ob" resolve="stmt" />
      </node>
    </node>
    <node concept="3xhzZY" id="4VQvhHjW2Gm" role="3xJMYo">
      <property role="TrG5h" value="program" />
      <node concept="3xiQg6" id="4VQvhHjW2PI" role="3xhzZr">
        <property role="3xj4NX" value="2b2ZYR3yDpK/ZeroOrMore" />
        <property role="2DFMXm" value="\n" />
        <ref role="3xiQg3" node="4VQvhHjW2HP" resolve="IProgramElement" />
      </node>
    </node>
  </node>
</model>

