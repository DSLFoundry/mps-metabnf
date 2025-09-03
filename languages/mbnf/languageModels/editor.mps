<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:9c95dd7f-b82b-479f-848a-cb6e9d59f821(metabnf.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="12" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="6o2a" ref="r:0fbcf19f-c60b-479b-81cb-094b5b2b9f1d(metabnf.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi">
        <child id="1078153129734" name="inspectedCellModel" index="6VMZX" />
      </concept>
      <concept id="1176897764478" name="jetbrains.mps.lang.editor.structure.QueryFunction_NodeFactory" flags="in" index="4$FPG" />
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <property id="1140524450557" name="separatorText" index="2czwfO" />
        <child id="1176897874615" name="nodeFactory" index="4_6I_" />
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
      </concept>
      <concept id="1106270549637" name="jetbrains.mps.lang.editor.structure.CellLayout_Horizontal" flags="nn" index="2iRfu4" />
      <concept id="1106270571710" name="jetbrains.mps.lang.editor.structure.CellLayout_Vertical" flags="nn" index="2iRkQZ" />
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1237307900041" name="jetbrains.mps.lang.editor.structure.IndentLayoutIndentStyleClassItem" flags="ln" index="lj46D" />
      <concept id="1237375020029" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineChildrenStyleClassItem" flags="ln" index="pj6Ft" />
      <concept id="1142886221719" name="jetbrains.mps.lang.editor.structure.QueryFunction_NodeCondition" flags="in" index="pkWqt" />
      <concept id="1142886811589" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_node" flags="nn" index="pncrf" />
      <concept id="1237385578942" name="jetbrains.mps.lang.editor.structure.IndentLayoutOnNewLineStyleClassItem" flags="ln" index="pVoyu" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="1078938745671" name="jetbrains.mps.lang.editor.structure.EditorComponentDeclaration" flags="ig" index="PKFIW" />
      <concept id="1078939183254" name="jetbrains.mps.lang.editor.structure.CellModel_Component" flags="sg" stub="3162947552742194261" index="PMmxH">
        <reference id="1078939183255" name="editorComponent" index="PMmxG" />
      </concept>
      <concept id="1186402211651" name="jetbrains.mps.lang.editor.structure.StyleSheet" flags="ng" index="V5hpn">
        <child id="1186402402630" name="styleClass" index="V601i" />
      </concept>
      <concept id="1186403694788" name="jetbrains.mps.lang.editor.structure.ColorStyleClassItem" flags="ln" index="VaVBg">
        <property id="1186403713874" name="color" index="Vb096" />
      </concept>
      <concept id="1186403751766" name="jetbrains.mps.lang.editor.structure.FontStyleStyleClassItem" flags="ln" index="Vb9p2">
        <property id="1186403771423" name="style" index="Vbekb" />
      </concept>
      <concept id="1186404549998" name="jetbrains.mps.lang.editor.structure.ForegroundColorStyleClassItem" flags="ln" index="VechU" />
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
        <child id="1223387335081" name="query" index="3n$kyP" />
      </concept>
      <concept id="1186414928363" name="jetbrains.mps.lang.editor.structure.SelectableStyleSheetItem" flags="ln" index="VPM3Z" />
      <concept id="1233758997495" name="jetbrains.mps.lang.editor.structure.PunctuationLeftStyleClassItem" flags="ln" index="11L4FC" />
      <concept id="1233759184865" name="jetbrains.mps.lang.editor.structure.PunctuationRightStyleClassItem" flags="ln" index="11LMrY" />
      <concept id="3383245079137382180" name="jetbrains.mps.lang.editor.structure.StyleClass" flags="ig" index="14StLt" />
      <concept id="1088013125922" name="jetbrains.mps.lang.editor.structure.CellModel_RefCell" flags="sg" stub="730538219795941030" index="1iCGBv">
        <child id="1088186146602" name="editorComponent" index="1sWHZn" />
      </concept>
      <concept id="1381004262292414836" name="jetbrains.mps.lang.editor.structure.ICellStyle" flags="ng" index="1k5N5V">
        <reference id="1381004262292426837" name="parentStyleClass" index="1k5W1q" />
      </concept>
      <concept id="1223387125302" name="jetbrains.mps.lang.editor.structure.QueryFunction_Boolean" flags="in" index="3nzxsE" />
      <concept id="1088185857835" name="jetbrains.mps.lang.editor.structure.InlineEditorComponent" flags="ig" index="1sVBvm" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <property id="1140017977771" name="readOnly" index="1Intyy" />
        <property id="1140114345053" name="allowEmptyText" index="1O74Pk" />
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1073389214265" name="jetbrains.mps.lang.editor.structure.EditorCellModel" flags="ng" index="3EYTF0">
        <child id="1142887637401" name="renderingCondition" index="pqm2j" />
      </concept>
      <concept id="1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" flags="sn" stub="3013115976261988961" index="3EZMnI">
        <property id="1160590353935" name="usesFolding" index="S$Qs1" />
        <child id="1106270802874" name="cellLayout" index="2iSdaV" />
        <child id="1073389446424" name="childCellModel" index="3EZMnx" />
      </concept>
      <concept id="1073389577006" name="jetbrains.mps.lang.editor.structure.CellModel_Constant" flags="sn" stub="3610246225209162225" index="3F0ifn">
        <property id="1073389577007" name="text" index="3F0ifm" />
      </concept>
      <concept id="1073389658414" name="jetbrains.mps.lang.editor.structure.CellModel_Property" flags="sg" stub="730538219796134133" index="3F0A7n" />
      <concept id="1219418625346" name="jetbrains.mps.lang.editor.structure.IStyleContainer" flags="ng" index="3F0Thp">
        <child id="1219418656006" name="styleItem" index="3F10Kt" />
      </concept>
      <concept id="1073389882823" name="jetbrains.mps.lang.editor.structure.CellModel_RefNode" flags="sg" stub="730538219795960754" index="3F1sOY" />
      <concept id="1073390211982" name="jetbrains.mps.lang.editor.structure.CellModel_RefNodeList" flags="sg" stub="2794558372793454595" index="3F2HdR" />
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1225271408483" name="jetbrains.mps.baseLanguage.structure.IsNotEmptyOperation" flags="nn" index="17RvpY" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="24kQdi" id="2b2ZYR3vt1Z">
    <ref role="1XX52x" to="6o2a:2b2ZYR3vfui" resolve="grammar" />
    <node concept="3EZMnI" id="2b2ZYR3vvuy" role="2wV5jI">
      <node concept="2iRkQZ" id="2b2ZYR3vvu_" role="2iSdaV" />
      <node concept="3EZMnI" id="2b2ZYR3vvuG" role="3EZMnx">
        <node concept="3F0ifn" id="2b2ZYR3vvuQ" role="3EZMnx">
          <property role="3F0ifm" value="language:" />
        </node>
        <node concept="3F0A7n" id="2b2ZYR3vvuY" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="2iRfu4" id="2b2ZYR3vvuH" role="2iSdaV" />
        <node concept="VPM3Z" id="2b2ZYR3vvuI" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="3F0ifn" id="2b2ZYR3vvv3" role="3EZMnx" />
      <node concept="3EZMnI" id="2b2ZYR3vvvi" role="3EZMnx">
        <node concept="VPM3Z" id="2b2ZYR3vvvk" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="2b2ZYR3vvvm" role="3EZMnx">
          <property role="3F0ifm" value="root:" />
        </node>
        <node concept="1iCGBv" id="2b2ZYR3vvvB" role="3EZMnx">
          <ref role="1NtTu8" to="6o2a:2b2ZYR3vt1R" resolve="start" />
          <node concept="1sVBvm" id="2b2ZYR3vvvD" role="1sWHZn">
            <node concept="3F0A7n" id="2b2ZYR3vvvW" role="2wV5jI">
              <property role="1Intyy" value="true" />
              <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
        <node concept="2iRfu4" id="2b2ZYR3vvvn" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="2b2ZYR3vvvZ" role="3EZMnx" />
      <node concept="3F2HdR" id="2b2ZYR3vvwu" role="3EZMnx">
        <ref role="1NtTu8" to="6o2a:2b2ZYR3vt1P" resolve="rules" />
        <node concept="2iRkQZ" id="2b2ZYR3vvww" role="2czzBx" />
        <node concept="4$FPG" id="7DK$EIfvPdJ" role="4_6I_">
          <node concept="3clFbS" id="7DK$EIfvPdK" role="2VODD2">
            <node concept="3cpWs6" id="7DK$EIfvPf1" role="3cqZAp">
              <node concept="2ShNRf" id="7DK$EIfvPhd" role="3cqZAk">
                <node concept="3zrR0B" id="7DK$EIfvPgB" role="2ShVmc">
                  <node concept="3Tqbb2" id="7DK$EIfvPgC" role="3zrR0E">
                    <ref role="ehGHo" to="6o2a:7DK$EIfvNik" resolve="EmptyLine" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="2b2ZYR3vvyj">
    <property role="3GE5qa" value="rules.nonterminals" />
    <ref role="1XX52x" to="6o2a:2b2ZYR3vvxc" resolve="ChoiceRule" />
    <node concept="3EZMnI" id="2b2ZYR3vvyB" role="2wV5jI">
      <node concept="3F0A7n" id="2b2ZYR3xbZv" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <node concept="VechU" id="1EkyCK00x9G" role="3F10Kt">
          <property role="Vb096" value="orange" />
        </node>
      </node>
      <node concept="3F0ifn" id="2b2ZYR3xbZD" role="3EZMnx">
        <property role="3F0ifm" value="::=" />
      </node>
      <node concept="3F2HdR" id="2b2ZYR3vvyI" role="3EZMnx">
        <property role="2czwfO" value=" |" />
        <ref role="1NtTu8" to="6o2a:2b2ZYR3vvyc" resolve="nonterminals" />
        <node concept="2iRfu4" id="2b2ZYR3vvyK" role="2czzBx" />
      </node>
      <node concept="2iRfu4" id="2b2ZYR3vvyE" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="2b2ZYR3xbY6">
    <property role="3GE5qa" value="rules.terminals" />
    <ref role="1XX52x" to="6o2a:2b2ZYR3vvzS" resolve="TerminalRule" />
    <node concept="3EZMnI" id="2b2ZYR3xbY8" role="2wV5jI">
      <node concept="3F0A7n" id="2b2ZYR3xbYf" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="2b2ZYR3xbYl" role="3EZMnx">
        <property role="3F0ifm" value="::=" />
      </node>
      <node concept="3F1sOY" id="2uPbBoX8sKe" role="3EZMnx">
        <ref role="1NtTu8" to="6o2a:2uPbBoX8sFH" resolve="regexp" />
      </node>
      <node concept="2iRfu4" id="2b2ZYR3xbYb" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="2b2ZYR3xc0r">
    <property role="3GE5qa" value="rules.nonterminals" />
    <ref role="1XX52x" to="6o2a:2b2ZYR3xc0j" resolve="NonterminalRule" />
    <node concept="3EZMnI" id="2b2ZYR3xc0t" role="2wV5jI">
      <node concept="3F0A7n" id="2b2ZYR3xc0B" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="2b2ZYR3xc0H" role="3EZMnx">
        <property role="3F0ifm" value="::=" />
      </node>
      <node concept="3F2HdR" id="2b2ZYR3xc0S" role="3EZMnx">
        <ref role="1NtTu8" to="6o2a:2b2ZYR3xc0Q" resolve="terms" />
        <node concept="l2Vlx" id="svkQGah0R5" role="2czzBx" />
      </node>
      <node concept="2iRfu4" id="2b2ZYR3xc0w" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="2b2ZYR3xc2M">
    <property role="3GE5qa" value="terms" />
    <ref role="1XX52x" to="6o2a:2b2ZYR3xc2x" resolve="Keyword" />
    <node concept="3F0A7n" id="2b2ZYR3xc2O" role="2wV5jI">
      <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      <ref role="1k5W1q" node="svkQGaj7aN" resolve="indentation" />
      <node concept="Vb9p2" id="2b2ZYR3y_Ez" role="3F10Kt">
        <property role="Vbekb" value="BOLD" />
      </node>
    </node>
    <node concept="PMmxH" id="svkQGagud_" role="6VMZX">
      <ref role="PMmxG" node="svkQGafLqp" resolve="TermFormatting" />
    </node>
  </node>
  <node concept="24kQdi" id="2b2ZYR3ypJP">
    <property role="3GE5qa" value="terms.references" />
    <ref role="1XX52x" to="6o2a:2b2ZYR3ypJF" resolve="NonterminalReference" />
    <node concept="3EZMnI" id="2b2ZYR3yDt8" role="2wV5jI">
      <ref role="1k5W1q" node="svkQGaj7aN" resolve="indentation" />
      <node concept="3F0ifn" id="6ZTV3OmDd1r" role="3EZMnx">
        <property role="3F0ifm" value="&lt;" />
        <node concept="Vb9p2" id="7DK$EIfuxni" role="3F10Kt">
          <property role="Vbekb" value="ITALIC" />
        </node>
        <node concept="11LMrY" id="7DK$EIfuxi2" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="1iCGBv" id="2b2ZYR3ypKL" role="3EZMnx">
        <ref role="1NtTu8" to="6o2a:2b2ZYR3ypJI" resolve="rule" />
        <node concept="1sVBvm" id="2b2ZYR3ypKN" role="1sWHZn">
          <node concept="3F0A7n" id="2b2ZYR3ypKU" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3EZMnI" id="4idNKJHaeiQ" role="3EZMnx">
        <node concept="VPM3Z" id="4idNKJHaeiS" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="4idNKJHaewG" role="3EZMnx">
          <property role="3F0ifm" value=", '" />
          <node concept="11L4FC" id="4idNKJHbgno" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="11LMrY" id="4idNKJHbgp5" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0A7n" id="4idNKJHaewM" role="3EZMnx">
          <ref role="1NtTu8" to="6o2a:4idNKJH8I1t" resolve="sep" />
        </node>
        <node concept="3F0ifn" id="4idNKJHaewU" role="3EZMnx">
          <property role="3F0ifm" value="'" />
          <node concept="11L4FC" id="4idNKJHbgqN" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="11LMrY" id="4idNKJHbgsx" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="2iRfu4" id="4idNKJHaeiV" role="2iSdaV" />
        <node concept="pkWqt" id="4idNKJHaeUB" role="pqm2j">
          <node concept="3clFbS" id="4idNKJHaeUC" role="2VODD2">
            <node concept="3clFbF" id="4idNKJHaf4M" role="3cqZAp">
              <node concept="2OqwBi" id="4idNKJHag7g" role="3clFbG">
                <node concept="2OqwBi" id="4idNKJHaf9K" role="2Oq$k0">
                  <node concept="pncrf" id="4idNKJHaf4L" role="2Oq$k0" />
                  <node concept="3TrcHB" id="4idNKJHafFr" role="2OqNvi">
                    <ref role="3TsBF5" to="6o2a:4idNKJH8I1t" resolve="sep" />
                  </node>
                </node>
                <node concept="17RvpY" id="4idNKJHahgQ" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0A7n" id="6ZTV3OmDdgn" role="3EZMnx">
        <ref role="1NtTu8" to="6o2a:2b2ZYR3zFcg" resolve="card" />
        <node concept="Vb9p2" id="7DK$EIfuxlu" role="3F10Kt">
          <property role="Vbekb" value="ITALIC" />
        </node>
        <node concept="11L4FC" id="7DK$EIfuxjI" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="2iRfu4" id="2b2ZYR3yDt9" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="4idNKJH9aw4" role="6VMZX">
      <node concept="3F0ifn" id="4idNKJH9aHl" role="3EZMnx">
        <property role="3F0ifm" value="name:" />
      </node>
      <node concept="3F0A7n" id="44Pv0YAI0QW" role="3EZMnx">
        <property role="1O74Pk" value="true" />
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="l2Vlx" id="4idNKJH9aw7" role="2iSdaV" />
      <node concept="3F0ifn" id="4idNKJH9aH$" role="3EZMnx">
        <property role="3F0ifm" value="separator:" />
        <node concept="pVoyu" id="4idNKJH9aHO" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0A7n" id="4idNKJH9aHI" role="3EZMnx">
        <property role="1O74Pk" value="true" />
        <ref role="1NtTu8" to="6o2a:4idNKJH8I1t" resolve="sep" />
      </node>
      <node concept="PMmxH" id="svkQGagv2C" role="3EZMnx">
        <ref role="PMmxG" node="svkQGafLqp" resolve="TermFormatting" />
        <node concept="pVoyu" id="svkQGagv2J" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="2b2ZYR3yyUL">
    <property role="3GE5qa" value="terms" />
    <ref role="1XX52x" to="6o2a:2b2ZYR3yyTQ" resolve="Name" />
    <node concept="3F0ifn" id="2b2ZYR3yyUN" role="2wV5jI">
      <property role="3F0ifm" value="&lt;name&gt;" />
      <ref role="1k5W1q" node="svkQGaj7aN" resolve="indentation" />
      <node concept="Vb9p2" id="2b2ZYR3y_HG" role="3F10Kt">
        <property role="Vbekb" value="ITALIC" />
      </node>
    </node>
    <node concept="PMmxH" id="svkQGaguBh" role="6VMZX">
      <ref role="PMmxG" node="svkQGafLqp" resolve="TermFormatting" />
    </node>
  </node>
  <node concept="24kQdi" id="7DK$EIfvNis">
    <property role="3GE5qa" value="content" />
    <ref role="1XX52x" to="6o2a:7DK$EIfvNik" resolve="EmptyLine" />
    <node concept="3F0ifn" id="7DK$EIfvNjh" role="2wV5jI">
      <property role="3F0ifm" value="" />
    </node>
  </node>
  <node concept="24kQdi" id="7DK$EIfvTV4">
    <property role="3GE5qa" value="terms.references" />
    <ref role="1XX52x" to="6o2a:7DK$EIfvTU7" resolve="IdReference" />
    <node concept="3EZMnI" id="7DK$EIfvTV6" role="2wV5jI">
      <ref role="1k5W1q" node="svkQGaj7aN" resolve="indentation" />
      <node concept="3F0ifn" id="7DK$EIfvTVd" role="3EZMnx">
        <property role="3F0ifm" value="Ref(" />
        <node concept="11LMrY" id="7DK$EIfvU0O" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="Vb9p2" id="7DK$EIfvU2$" role="3F10Kt">
          <property role="Vbekb" value="ITALIC" />
        </node>
      </node>
      <node concept="1iCGBv" id="7DK$EIfvTVj" role="3EZMnx">
        <ref role="1NtTu8" to="6o2a:7DK$EIfvTUX" resolve="Rule" />
        <node concept="1sVBvm" id="7DK$EIfvTVl" role="1sWHZn">
          <node concept="3F0A7n" id="7DK$EIfvTVt" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="7DK$EIfvTVA" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <node concept="11L4FC" id="7DK$EIfvTXl" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="Vb9p2" id="7DK$EIfvTZ5" role="3F10Kt">
          <property role="Vbekb" value="ITALIC" />
        </node>
      </node>
      <node concept="2iRfu4" id="7DK$EIfvTV9" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="svkQGagvlY" role="6VMZX">
      <node concept="3F0A7n" id="44Pv0YAIt7d" role="3EZMnx">
        <property role="1O74Pk" value="true" />
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="PMmxH" id="svkQGagvz0" role="3EZMnx">
        <ref role="PMmxG" node="svkQGafLqp" resolve="TermFormatting" />
      </node>
      <node concept="2iRkQZ" id="svkQGagvlZ" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="4VQvhHjPW3A">
    <property role="3GE5qa" value="content" />
    <ref role="1XX52x" to="6o2a:4VQvhHjPVYE" resolve="RuleGroup" />
    <node concept="3EZMnI" id="4VQvhHjPYTV" role="2wV5jI">
      <property role="S$Qs1" value="true" />
      <node concept="3F0ifn" id="4VQvhHjPYU2" role="3EZMnx">
        <property role="3F0ifm" value="group:" />
      </node>
      <node concept="3F0A7n" id="4VQvhHjPYU8" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="l2Vlx" id="4VQvhHjPYTY" role="2iSdaV" />
      <node concept="3F2HdR" id="4VQvhHjPYUg" role="3EZMnx">
        <ref role="1NtTu8" to="6o2a:4VQvhHjPVYH" resolve="rules" />
        <node concept="l2Vlx" id="4VQvhHjPYUi" role="2czzBx" />
        <node concept="pVoyu" id="4VQvhHjPYUn" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="4VQvhHjPYUq" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pj6Ft" id="4VQvhHjPYUv" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="4$FPG" id="4VQvhHjQqMv" role="4_6I_">
          <node concept="3clFbS" id="4VQvhHjQqMw" role="2VODD2">
            <node concept="3cpWs6" id="4VQvhHjQqO3" role="3cqZAp">
              <node concept="2ShNRf" id="4VQvhHjQqPz" role="3cqZAk">
                <node concept="3zrR0B" id="4VQvhHjQsXp" role="2ShVmc">
                  <node concept="3Tqbb2" id="4VQvhHjQsXr" role="3zrR0E">
                    <ref role="ehGHo" to="6o2a:7DK$EIfvNik" resolve="EmptyLine" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="4idNKJHcpOT">
    <property role="3GE5qa" value="content" />
    <ref role="1XX52x" to="6o2a:4idNKJHcpNO" resolve="Comment" />
    <node concept="3EZMnI" id="4idNKJHcpQV" role="2wV5jI">
      <node concept="3F0ifn" id="4idNKJHcpR1" role="3EZMnx">
        <property role="3F0ifm" value="#" />
      </node>
      <node concept="3F0A7n" id="4idNKJHcpOY" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="2iRfu4" id="4idNKJHcpQW" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="4idNKJHg4Rl">
    <property role="3GE5qa" value="terms" />
    <ref role="1XX52x" to="6o2a:4idNKJHg4Qe" resolve="Flag" />
    <node concept="3EZMnI" id="4idNKJHg_YN" role="2wV5jI">
      <ref role="1k5W1q" node="svkQGaj7aN" resolve="indentation" />
      <node concept="3F0ifn" id="4idNKJHg_YT" role="3EZMnx">
        <property role="3F0ifm" value="[" />
        <node concept="11LMrY" id="4idNKJHgA2v" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0A7n" id="4idNKJHg4Rn" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <node concept="Vb9p2" id="4idNKJHgA49" role="3F10Kt">
          <property role="Vbekb" value="BOLD" />
        </node>
      </node>
      <node concept="3F0ifn" id="4idNKJHg_Z8" role="3EZMnx">
        <property role="3F0ifm" value="]" />
        <node concept="11L4FC" id="4idNKJHgA0P" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="2iRfu4" id="4idNKJHg_YO" role="2iSdaV" />
    </node>
    <node concept="PMmxH" id="svkQGagtNB" role="6VMZX">
      <ref role="PMmxG" node="svkQGafLqp" resolve="TermFormatting" />
    </node>
  </node>
  <node concept="PKFIW" id="svkQGafLqp">
    <property role="3GE5qa" value="terms" />
    <property role="TrG5h" value="TermFormatting" />
    <ref role="1XX52x" to="6o2a:2b2ZYR3xc0P" resolve="ITerm" />
    <node concept="3EZMnI" id="svkQGafLqz" role="2wV5jI">
      <node concept="3F0ifn" id="svkQGafLqE" role="3EZMnx">
        <property role="3F0ifm" value="indent:" />
      </node>
      <node concept="3F0A7n" id="svkQGafLqK" role="3EZMnx">
        <ref role="1NtTu8" to="6o2a:svkQGafLny" resolve="indent" />
      </node>
      <node concept="3F0ifn" id="svkQGafLqV" role="3EZMnx">
        <property role="3F0ifm" value="newline:" />
        <node concept="pVoyu" id="svkQGafLr0" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0A7n" id="svkQGafLr9" role="3EZMnx">
        <ref role="1NtTu8" to="6o2a:svkQGafLot" resolve="newline" />
      </node>
      <node concept="l2Vlx" id="svkQGafLqA" role="2iSdaV" />
    </node>
  </node>
  <node concept="V5hpn" id="svkQGaj77i">
    <property role="TrG5h" value="TermStyle" />
    <node concept="14StLt" id="svkQGaj7aN" role="V601i">
      <property role="TrG5h" value="indentation" />
      <node concept="lj46D" id="svkQGaj7aP" role="3F10Kt">
        <property role="VOm3f" value="true" />
        <node concept="3nzxsE" id="svkQGaj7aR" role="3n$kyP">
          <node concept="3clFbS" id="svkQGaj7aS" role="2VODD2">
            <node concept="3clFbF" id="svkQGaj7l2" role="3cqZAp">
              <node concept="2OqwBi" id="svkQGaj90K" role="3clFbG">
                <node concept="1PxgMI" id="svkQGaj8CT" role="2Oq$k0">
                  <node concept="pncrf" id="svkQGaj7l1" role="1m5AlR" />
                  <node concept="chp4Y" id="3tSvZ15QOXz" role="3oSUPX">
                    <ref role="cht4Q" to="6o2a:2b2ZYR3xc0P" resolve="ITerm" />
                  </node>
                </node>
                <node concept="3TrcHB" id="svkQGaj9tP" role="2OqNvi">
                  <ref role="3TsBF5" to="6o2a:svkQGafLny" resolve="indent" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="pVoyu" id="svkQGaj9Sy" role="3F10Kt">
        <property role="VOm3f" value="true" />
        <node concept="3nzxsE" id="svkQGaja4l" role="3n$kyP">
          <node concept="3clFbS" id="svkQGaja4m" role="2VODD2">
            <node concept="3clFbF" id="svkQGajaew" role="3cqZAp">
              <node concept="2OqwBi" id="svkQGajaBU" role="3clFbG">
                <node concept="1PxgMI" id="svkQGajal9" role="2Oq$k0">
                  <node concept="pncrf" id="svkQGajaev" role="1m5AlR" />
                  <node concept="chp4Y" id="3tSvZ15QOX$" role="3oSUPX">
                    <ref role="cht4Q" to="6o2a:2b2ZYR3xc0P" resolve="ITerm" />
                  </node>
                </node>
                <node concept="3TrcHB" id="svkQGajb4Z" role="2OqNvi">
                  <ref role="3TsBF5" to="6o2a:svkQGafLot" resolve="newline" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="2nZx5M99y3a">
    <property role="3GE5qa" value="terms.references" />
    <ref role="1XX52x" to="6o2a:2nZx5M97nj8" resolve="TerminalReference" />
    <node concept="3EZMnI" id="2nZx5M99y4z" role="2wV5jI">
      <ref role="1k5W1q" node="svkQGaj7aN" resolve="indentation" />
      <node concept="3F0ifn" id="2nZx5M99y4$" role="3EZMnx">
        <property role="3F0ifm" value="&lt;" />
        <node concept="Vb9p2" id="2nZx5M99y4_" role="3F10Kt">
          <property role="Vbekb" value="ITALIC" />
        </node>
        <node concept="11LMrY" id="2nZx5M99y4A" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="1iCGBv" id="2nZx5M99y4B" role="3EZMnx">
        <ref role="1NtTu8" to="6o2a:2nZx5M99u3$" resolve="rule" />
        <node concept="1sVBvm" id="2nZx5M99y4C" role="1sWHZn">
          <node concept="3F0A7n" id="2nZx5M99y4D" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="2nZx5M99$w2" role="3EZMnx">
        <property role="3F0ifm" value="&gt;" />
        <ref role="1k5W1q" node="svkQGaj7aN" resolve="indentation" />
        <node concept="Vb9p2" id="2nZx5M99B5v" role="3F10Kt">
          <property role="Vbekb" value="ITALIC" />
        </node>
        <node concept="11L4FC" id="2nZx5M99B3C" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="2iRfu4" id="2nZx5M99y4Z" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="2nZx5M99Blm" role="6VMZX">
      <node concept="3F0A7n" id="2nZx5M9b0_C" role="3EZMnx">
        <property role="1O74Pk" value="true" />
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="2iRkQZ" id="2nZx5M99Bln" role="2iSdaV" />
      <node concept="PMmxH" id="2nZx5M99Blq" role="3EZMnx">
        <ref role="PMmxG" node="svkQGafLqp" resolve="TermFormatting" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="70uSrrI_fSR">
    <property role="3GE5qa" value="rules.terminals" />
    <ref role="1XX52x" to="6o2a:70uSrrI_fSJ" resolve="EnumValue" />
    <node concept="3F0A7n" id="70uSrrI_je1" role="2wV5jI">
      <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
    </node>
  </node>
  <node concept="24kQdi" id="70uSrrI_jeb">
    <property role="3GE5qa" value="rules.terminals" />
    <ref role="1XX52x" to="6o2a:70uSrrI_fSG" resolve="EnumRule" />
    <node concept="3EZMnI" id="70uSrrI_jeg" role="2wV5jI">
      <node concept="3F0A7n" id="70uSrrI_jen" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="70uSrrI_jet" role="3EZMnx">
        <property role="3F0ifm" value="::=" />
      </node>
      <node concept="3F0ifn" id="19i4fzcwMqc" role="3EZMnx">
        <property role="3F0ifm" value="enum" />
      </node>
      <node concept="3F0ifn" id="19i4fzcwMqq" role="3EZMnx">
        <property role="3F0ifm" value="(" />
      </node>
      <node concept="3F2HdR" id="70uSrrI_je_" role="3EZMnx">
        <property role="2czwfO" value=", " />
        <ref role="1NtTu8" to="6o2a:70uSrrI_je4" resolve="values" />
        <node concept="2iRfu4" id="70uSrrI_jeB" role="2czzBx" />
      </node>
      <node concept="3F0ifn" id="19i4fzcwMqE" role="3EZMnx">
        <property role="3F0ifm" value=")" />
      </node>
      <node concept="2iRfu4" id="70uSrrI_jej" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="19i4fzcDeVC">
    <property role="3GE5qa" value="terms.properties" />
    <ref role="1XX52x" to="6o2a:19i4fzcDeVl" resolve="BooleanProperty" />
    <node concept="3EZMnI" id="19i4fzcDeVE" role="2wV5jI">
      <node concept="3F0ifn" id="19i4fzcDeVL" role="3EZMnx">
        <property role="3F0ifm" value="&lt;b:" />
        <node concept="11LMrY" id="4ggFLSK_SUd" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0A7n" id="19i4fzcDeVR" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="4ggFLSK_SVf" role="3EZMnx">
        <property role="3F0ifm" value="&gt;" />
      </node>
      <node concept="2iRfu4" id="19i4fzcDeVH" role="2iSdaV" />
    </node>
    <node concept="PMmxH" id="4ggFLSK_Nzy" role="6VMZX">
      <ref role="PMmxG" node="svkQGafLqp" resolve="TermFormatting" />
    </node>
  </node>
  <node concept="24kQdi" id="19i4fzcDhx_">
    <property role="3GE5qa" value="terms.properties" />
    <ref role="1XX52x" to="6o2a:19i4fzcDhxm" resolve="StringProperty" />
    <node concept="3EZMnI" id="19i4fzcDhxB" role="2wV5jI">
      <node concept="3F0ifn" id="19i4fzcDhxI" role="3EZMnx">
        <property role="3F0ifm" value="&lt;s:" />
        <node concept="11LMrY" id="4ggFLSK_TkE" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0A7n" id="19i4fzcDhxO" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="19i4fzcDhxW" role="3EZMnx">
        <property role="3F0ifm" value="&gt;" />
        <node concept="11L4FC" id="4ggFLSK_TjN" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="2iRfu4" id="19i4fzcDhxE" role="2iSdaV" />
    </node>
    <node concept="PMmxH" id="4ggFLSK_SVl" role="6VMZX">
      <ref role="PMmxG" node="svkQGafLqp" resolve="TermFormatting" />
    </node>
  </node>
  <node concept="24kQdi" id="4ggFLSKEkqY">
    <property role="3GE5qa" value="terms.properties" />
    <ref role="1XX52x" to="6o2a:4ggFLSKEkpW" resolve="IntegerProperty" />
    <node concept="3EZMnI" id="4ggFLSKEkr0" role="2wV5jI">
      <node concept="3F0ifn" id="4ggFLSKEkr7" role="3EZMnx">
        <property role="3F0ifm" value="&lt;i:" />
        <node concept="11LMrY" id="4ggFLSKEkuH" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0A7n" id="4ggFLSKEkrd" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="4ggFLSKEkrl" role="3EZMnx">
        <property role="3F0ifm" value="&gt;" />
        <node concept="11L4FC" id="4ggFLSKEkt2" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="2iRfu4" id="4ggFLSKEkr3" role="2iSdaV" />
    </node>
    <node concept="PMmxH" id="77yCqokQyCe" role="6VMZX">
      <ref role="PMmxG" node="svkQGafLqp" resolve="TermFormatting" />
    </node>
  </node>
  <node concept="24kQdi" id="5LjIHYW7PRK">
    <property role="3GE5qa" value="generator" />
    <ref role="1XX52x" to="6o2a:5LjIHYW3e81" resolve="TargetInjector" />
    <node concept="3EZMnI" id="1qPaejjkMBb" role="2wV5jI">
      <node concept="2iRfu4" id="1qPaejjkMBc" role="2iSdaV" />
      <node concept="3F0ifn" id="1qPaejjkMBf" role="3EZMnx">
        <property role="3F0ifm" value="Import into language:" />
      </node>
      <node concept="3F0A7n" id="1qPaejjkMBk" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
    </node>
  </node>
</model>

