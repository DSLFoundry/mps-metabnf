<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:9c95dd7f-b82b-479f-848a-cb6e9d59f821(metabnf.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="15" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="6o2a" ref="r:0fbcf19f-c60b-479b-81cb-094b5b2b9f1d(metabnf.structure)" />
    <import index="9toz" ref="9c03c641-469f-49e7-aeed-44a3d19b7253/java:metabnf.usability(metabnf/)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi">
        <child id="1078153129734" name="inspectedCellModel" index="6VMZX" />
      </concept>
      <concept id="1176897764478" name="jetbrains.mps.lang.editor.structure.QueryFunction_NodeFactory" flags="in" index="4$FPG" />
      <concept id="1226339751946" name="jetbrains.mps.lang.editor.structure.PaddingTopStyleClassItem" flags="ln" index="27yT$n" />
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
        <child id="1186402402630" name="styles" index="V601i" />
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
      <concept id="1381004262292414836" name="jetbrains.mps.lang.editor.structure.ICellStyle" flags="ngI" index="1k5N5V">
        <reference id="1381004262292426837" name="parentStyleClass" index="1k5W1q" />
      </concept>
      <concept id="1223387125302" name="jetbrains.mps.lang.editor.structure.QueryFunction_Boolean" flags="in" index="3nzxsE" />
      <concept id="1088185857835" name="jetbrains.mps.lang.editor.structure.InlineEditorComponent" flags="ig" index="1sVBvm" />
      <concept id="1215007762405" name="jetbrains.mps.lang.editor.structure.FloatStyleClassItem" flags="ln" index="3$6MrZ">
        <property id="1215007802031" name="value" index="3$6WeP" />
      </concept>
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <property id="1139852716018" name="noTargetText" index="1$x2rV" />
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
      <concept id="1219418625346" name="jetbrains.mps.lang.editor.structure.IStyleContainer" flags="ngI" index="3F0Thp">
        <child id="1219418656006" name="styleItem" index="3F10Kt" />
      </concept>
      <concept id="1073389882823" name="jetbrains.mps.lang.editor.structure.CellModel_RefNode" flags="sg" stub="730538219795960754" index="3F1sOY" />
      <concept id="1073390211982" name="jetbrains.mps.lang.editor.structure.CellModel_RefNodeList" flags="sg" stub="2794558372793454595" index="3F2HdR" />
      <concept id="1225898583838" name="jetbrains.mps.lang.editor.structure.ReadOnlyModelAccessor" flags="ng" index="1HfYo3">
        <child id="1225898971709" name="getter" index="1Hhtcw" />
      </concept>
      <concept id="1225900081164" name="jetbrains.mps.lang.editor.structure.CellModel_ReadOnlyModelAccessor" flags="sg" stub="3708815482283559694" index="1HlG4h">
        <child id="1225900141900" name="modelAccessor" index="1HlULh" />
      </concept>
      <concept id="625126330682908270" name="jetbrains.mps.lang.editor.structure.CellModel_ReferencePresentation" flags="sg" stub="730538219795961225" index="3SHvHV" />
      <concept id="1176717841777" name="jetbrains.mps.lang.editor.structure.QueryFunction_ModelAccess_Getter" flags="in" index="3TQlhw" />
      <concept id="1198256887712" name="jetbrains.mps.lang.editor.structure.CellModel_Indent" flags="ng" index="3XFhqQ" />
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
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
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
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
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
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
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
          <property role="Vb096" value="fLwANPp/orange" />
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
        <property role="Vbekb" value="g1_k_vY/BOLD" />
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
          <property role="Vbekb" value="g1_kEg4/ITALIC" />
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
        <ref role="1NtTu8" to="6o2a:21bD4dVyEsP" resolve="card" />
        <node concept="Vb9p2" id="7DK$EIfuxlu" role="3F10Kt">
          <property role="Vbekb" value="g1_kEg4/ITALIC" />
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
        <property role="Vbekb" value="g1_kEg4/ITALIC" />
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
          <property role="Vbekb" value="g1_kEg4/ITALIC" />
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
          <property role="Vbekb" value="g1_kEg4/ITALIC" />
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
          <property role="Vbekb" value="g1_k_vY/BOLD" />
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
          <property role="Vbekb" value="g1_kEg4/ITALIC" />
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
          <property role="Vbekb" value="g1_kEg4/ITALIC" />
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
  <node concept="PKFIW" id="$td8qQ36ux">
    <property role="TrG5h" value="AnnotationProvenance" />
    <property role="3GE5qa" value="usability" />
    <ref role="1XX52x" to="6o2a:$td8qPViA$" resolve="UsabilityAnnotation" />
    <node concept="3EZMnI" id="$td8qQ36uG" role="2wV5jI">
      <node concept="2iRkQZ" id="$td8qQ36uH" role="2iSdaV" />
      <node concept="3EZMnI" id="$td8qQ36uB" role="3EZMnx">
        <node concept="2iRfu4" id="$td8qQ36uC" role="2iSdaV" />
        <node concept="3F0ifn" id="$td8qQ36uz" role="3EZMnx">
          <property role="3F0ifm" value="origin:" />
        </node>
        <node concept="3F0A7n" id="$td8qQ36u$" role="3EZMnx">
          <ref role="1NtTu8" to="6o2a:$td8qPViA_" resolve="origin" />
        </node>
        <node concept="3F0ifn" id="$td8qQ36u_" role="3EZMnx">
          <property role="3F0ifm" value="suppressed:" />
        </node>
        <node concept="3F0A7n" id="$td8qQ36uA" role="3EZMnx">
          <ref role="1NtTu8" to="6o2a:$td8qPViAA" resolve="suppressed" />
        </node>
      </node>
      <node concept="3EZMnI" id="$td8qQ36uE" role="3EZMnx">
        <node concept="2iRfu4" id="$td8qQ36uF" role="2iSdaV" />
        <node concept="3F0ifn" id="$td8qQ36uD" role="3EZMnx">
          <property role="3F0ifm" value="evidence:" />
        </node>
        <node concept="3F0A7n" id="$td8qQ36uy" role="3EZMnx">
          <property role="1O74Pk" value="true" />
          <ref role="1NtTu8" to="6o2a:$td8qPViAB" resolve="evidence" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="$td8qQ36uP">
    <property role="3GE5qa" value="usability" />
    <ref role="1XX52x" to="6o2a:$td8qPViAz" resolve="UsabilityAnnotations" />
    <node concept="3EZMnI" id="$td8qQ36uQ" role="2wV5jI">
      <node concept="2iRkQZ" id="$td8qQ36uR" role="2iSdaV" />
      <node concept="3EZMnI" id="$td8qQ36uM" role="3EZMnx">
        <node concept="2iRfu4" id="$td8qQ36uN" role="2iSdaV" />
        <node concept="3F0ifn" id="$td8qQ36uL" role="3EZMnx">
          <property role="3F0ifm" value="usability for grammar:" />
        </node>
        <node concept="1iCGBv" id="$td8qQ36uK" role="3EZMnx">
          <property role="1$x2rV" value="&lt;select grammar&gt;" />
          <ref role="1NtTu8" to="6o2a:$td8qPViAC" resolve="grammar" />
          <node concept="1sVBvm" id="$td8qQ3ssB" role="1sWHZn">
            <node concept="3SHvHV" id="$td8qQ3ssC" role="2wV5jI" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="$td8qQ36uO" role="3EZMnx">
        <property role="3F0ifm" value="annotations:" />
      </node>
      <node concept="3EZMnI" id="$td8qQ5LEd" role="3EZMnx">
        <node concept="2iRfu4" id="$td8qQ5LEe" role="2iSdaV" />
        <node concept="3XFhqQ" id="$td8qQ5LEf" role="3EZMnx" />
        <node concept="3EZMnI" id="$td8qQ5LEb" role="3EZMnx">
          <node concept="2iRkQZ" id="$td8qQ5LEc" role="2iSdaV" />
          <node concept="3F2HdR" id="$td8qQ36uI" role="3EZMnx">
            <ref role="1NtTu8" to="6o2a:$td8qPViAD" resolve="annotations" />
            <node concept="2iRkQZ" id="$td8qQ36uJ" role="2czzBx" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="$td8qQ36uX">
    <property role="3GE5qa" value="usability" />
    <ref role="1XX52x" to="6o2a:$td8qPViAE" resolve="FlagAnnotation" />
    <node concept="3EZMnI" id="$td8qQ36uY" role="2wV5jI">
      <node concept="2iRkQZ" id="$td8qQ36uZ" role="2iSdaV" />
      <node concept="3EZMnI" id="$td8qQ36uU" role="3EZMnx">
        <node concept="2iRfu4" id="$td8qQ36uV" role="2iSdaV" />
        <node concept="3F0ifn" id="$td8qQ36uT" role="3EZMnx">
          <property role="3F0ifm" value="flag:" />
        </node>
        <node concept="1iCGBv" id="$td8qQ36uS" role="3EZMnx">
          <property role="1$x2rV" value="&lt;select target&gt;" />
          <ref role="1NtTu8" to="6o2a:$td8qPViAF" resolve="target" />
          <node concept="1sVBvm" id="$td8qQ3ssD" role="1sWHZn">
            <node concept="3SHvHV" id="$td8qQ3ssE" role="2wV5jI" />
          </node>
        </node>
      </node>
      <node concept="27yT$n" id="$td8qQ4dYX" role="3F10Kt">
        <property role="3$6WeP" value="1" />
      </node>
      <node concept="3EZMnI" id="$td8qQ5LEi" role="3EZMnx">
        <node concept="2iRfu4" id="$td8qQ5LEj" role="2iSdaV" />
        <node concept="3XFhqQ" id="$td8qQ5LEk" role="3EZMnx" />
        <node concept="3EZMnI" id="$td8qQ5LEg" role="3EZMnx">
          <node concept="2iRkQZ" id="$td8qQ5LEh" role="2iSdaV" />
          <node concept="PMmxH" id="$td8qQ36uW" role="3EZMnx">
            <ref role="PMmxG" node="$td8qQ36ux" resolve="AnnotationProvenance" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="$td8qQ36v5">
    <property role="3GE5qa" value="usability" />
    <ref role="1XX52x" to="6o2a:$td8qPViAG" resolve="ListAnnotation" />
    <node concept="3EZMnI" id="$td8qQ36v6" role="2wV5jI">
      <node concept="2iRkQZ" id="$td8qQ36v7" role="2iSdaV" />
      <node concept="3EZMnI" id="$td8qQ36v2" role="3EZMnx">
        <node concept="2iRfu4" id="$td8qQ36v3" role="2iSdaV" />
        <node concept="3F0ifn" id="$td8qQ36v1" role="3EZMnx">
          <property role="3F0ifm" value="list:" />
        </node>
        <node concept="1iCGBv" id="$td8qQ36v0" role="3EZMnx">
          <property role="1$x2rV" value="&lt;select target&gt;" />
          <ref role="1NtTu8" to="6o2a:$td8qPViAH" resolve="target" />
          <node concept="1sVBvm" id="$td8qQ3ssF" role="1sWHZn">
            <node concept="3SHvHV" id="$td8qQ3ssG" role="2wV5jI" />
          </node>
        </node>
      </node>
      <node concept="27yT$n" id="$td8qQ4dZ1" role="3F10Kt">
        <property role="3$6WeP" value="1" />
      </node>
      <node concept="3EZMnI" id="$td8qQ5LEn" role="3EZMnx">
        <node concept="2iRfu4" id="$td8qQ5LEo" role="2iSdaV" />
        <node concept="3XFhqQ" id="$td8qQ5LEp" role="3EZMnx" />
        <node concept="3EZMnI" id="$td8qQ5LEl" role="3EZMnx">
          <node concept="2iRkQZ" id="$td8qQ5LEm" role="2iSdaV" />
          <node concept="PMmxH" id="$td8qQ36v4" role="3EZMnx">
            <ref role="PMmxG" node="$td8qQ36ux" resolve="AnnotationProvenance" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="$td8qQ36vn">
    <property role="3GE5qa" value="usability" />
    <ref role="1XX52x" to="6o2a:$td8qPViAI" resolve="OptionalGroupAnnotation" />
    <node concept="3EZMnI" id="$td8qQ36vo" role="2wV5jI">
      <node concept="2iRkQZ" id="$td8qQ36vp" role="2iSdaV" />
      <node concept="3EZMnI" id="$td8qQ36va" role="3EZMnx">
        <node concept="2iRfu4" id="$td8qQ36vb" role="2iSdaV" />
        <node concept="3F0ifn" id="$td8qQ36v9" role="3EZMnx">
          <property role="3F0ifm" value="optional group in rule:" />
        </node>
        <node concept="1iCGBv" id="$td8qQ36v8" role="3EZMnx">
          <property role="1$x2rV" value="&lt;select owner&gt;" />
          <ref role="1NtTu8" to="6o2a:$td8qPViAJ" resolve="owner" />
          <node concept="1sVBvm" id="$td8qQ3ssH" role="1sWHZn">
            <node concept="3SHvHV" id="$td8qQ3ssI" role="2wV5jI" />
          </node>
        </node>
      </node>
      <node concept="27yT$n" id="$td8qQ4dZ5" role="3F10Kt">
        <property role="3$6WeP" value="1" />
      </node>
      <node concept="3EZMnI" id="$td8qQ5LEs" role="3EZMnx">
        <node concept="2iRfu4" id="$td8qQ5LEt" role="2iSdaV" />
        <node concept="3XFhqQ" id="$td8qQ5LEu" role="3EZMnx" />
        <node concept="3EZMnI" id="$td8qQ5LEq" role="3EZMnx">
          <node concept="2iRkQZ" id="$td8qQ5LEr" role="2iSdaV" />
          <node concept="3EZMnI" id="$td8qQ36vg" role="3EZMnx">
            <node concept="2iRfu4" id="$td8qQ36vh" role="2iSdaV" />
            <node concept="3F0ifn" id="$td8qQ36vc" role="3EZMnx">
              <property role="3F0ifm" value="from:" />
            </node>
            <node concept="1iCGBv" id="$td8qQ36vd" role="3EZMnx">
              <property role="1$x2rV" value="&lt;select first&gt;" />
              <ref role="1NtTu8" to="6o2a:$td8qPViAK" resolve="first" />
              <node concept="1sVBvm" id="$td8qQ3ssJ" role="1sWHZn">
                <node concept="3SHvHV" id="$td8qQ3ssK" role="2wV5jI" />
              </node>
            </node>
            <node concept="3F0ifn" id="$td8qQ36ve" role="3EZMnx">
              <property role="3F0ifm" value="through:" />
            </node>
            <node concept="1iCGBv" id="$td8qQ36vf" role="3EZMnx">
              <property role="1$x2rV" value="&lt;select last&gt;" />
              <ref role="1NtTu8" to="6o2a:$td8qPViAL" resolve="last" />
              <node concept="1sVBvm" id="$td8qQ3ssL" role="1sWHZn">
                <node concept="3SHvHV" id="$td8qQ3ssM" role="2wV5jI" />
              </node>
            </node>
          </node>
          <node concept="3EZMnI" id="$td8qQ36vk" role="3EZMnx">
            <node concept="2iRfu4" id="$td8qQ36vl" role="2iSdaV" />
            <node concept="3F0ifn" id="$td8qQ36vj" role="3EZMnx">
              <property role="3F0ifm" value="distinguish absent / present-empty:" />
            </node>
            <node concept="3F0A7n" id="$td8qQ36vi" role="3EZMnx">
              <ref role="1NtTu8" to="6o2a:$td8qPViAM" resolve="distinguishEmpty" />
            </node>
          </node>
          <node concept="PMmxH" id="$td8qQ36vm" role="3EZMnx">
            <ref role="PMmxG" node="$td8qQ36ux" resolve="AnnotationProvenance" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="570owZKsWIf">
    <property role="3GE5qa" value="usability" />
    <ref role="1XX52x" to="6o2a:14wlUfKK6zf" resolve="GenerationProfile" />
    <node concept="3EZMnI" id="570owZKsWIg" role="2wV5jI">
      <node concept="2iRkQZ" id="570owZKsWIh" role="2iSdaV" />
      <node concept="3EZMnI" id="570owZKsWHU" role="3EZMnx">
        <node concept="2iRfu4" id="570owZKsWHV" role="2iSdaV" />
        <node concept="3F0ifn" id="570owZKsWHT" role="3EZMnx">
          <property role="3F0ifm" value="generation profile:" />
        </node>
        <node concept="3F0A7n" id="570owZKsWHS" role="3EZMnx">
          <ref role="1NtTu8" to="6o2a:14wlUfKK6zg" resolve="profileId" />
        </node>
      </node>
      <node concept="3EZMnI" id="570owZKsWId" role="3EZMnx">
        <node concept="2iRfu4" id="570owZKsWIe" role="2iSdaV" />
        <node concept="3XFhqQ" id="570owZKsWIc" role="3EZMnx" />
        <node concept="3EZMnI" id="570owZKsWIa" role="3EZMnx">
          <node concept="2iRkQZ" id="570owZKsWIb" role="2iSdaV" />
          <node concept="3EZMnI" id="570owZKsWHY" role="3EZMnx">
            <node concept="2iRfu4" id="570owZKsWHZ" role="2iSdaV" />
            <node concept="3F0ifn" id="570owZKsWHX" role="3EZMnx">
              <property role="3F0ifm" value="version:" />
            </node>
            <node concept="3F0A7n" id="570owZKsWHW" role="3EZMnx">
              <ref role="1NtTu8" to="6o2a:14wlUfKK6zh" resolve="version" />
            </node>
          </node>
          <node concept="3EZMnI" id="570owZKsWI4" role="3EZMnx">
            <node concept="2iRfu4" id="570owZKsWI5" role="2iSdaV" />
            <node concept="3F0ifn" id="570owZKsWI3" role="3EZMnx">
              <property role="3F0ifm" value="grammar:" />
            </node>
            <node concept="1iCGBv" id="570owZKsWI0" role="3EZMnx">
              <property role="1$x2rV" value="&lt;select grammar&gt;" />
              <ref role="1NtTu8" to="6o2a:14wlUfKK6zi" resolve="grammar" />
              <node concept="1sVBvm" id="570owZKsWI1" role="1sWHZn">
                <node concept="3SHvHV" id="570owZKsWI2" role="2wV5jI" />
              </node>
            </node>
          </node>
          <node concept="3F0ifn" id="570owZKsWI6" role="3EZMnx">
            <property role="3F0ifm" value="projection selections (empty = auto):" />
          </node>
          <node concept="3EZMnI" id="570owZKsWI8" role="3EZMnx">
            <node concept="2iRfu4" id="570owZKsWI9" role="2iSdaV" />
            <node concept="3XFhqQ" id="570owZKsWI7" role="3EZMnx" />
            <node concept="3F2HdR" id="570owZKsWHP" role="3EZMnx">
              <ref role="1NtTu8" to="6o2a:14wlUfKK6zp" resolve="selections" />
              <node concept="2iRkQZ" id="570owZKsWHQ" role="2czzBx" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3EZMnI" id="570owZKsWJ4" role="6VMZX">
      <node concept="2iRkQZ" id="570owZKsWJ5" role="2iSdaV" />
      <node concept="3F0ifn" id="570owZKsWIi" role="3EZMnx">
        <property role="3F0ifm" value="Effective generation selection (computed; not an editable plan)" />
      </node>
      <node concept="3EZMnI" id="570owZKsWIo" role="3EZMnx">
        <node concept="2iRfu4" id="570owZKsWIp" role="2iSdaV" />
        <node concept="3F0ifn" id="570owZKsWIn" role="3EZMnx">
          <property role="3F0ifm" value="implementation:" />
        </node>
        <node concept="1HlG4h" id="570owZKsWIj" role="3EZMnx">
          <node concept="1HfYo3" id="570owZKsWIk" role="1HlULh">
            <node concept="3TQlhw" id="570owZKsWIl" role="1Hhtcw">
              <node concept="3clFbS" id="570owZKsWIm" role="2VODD2">
                <node concept="3cpWs6" id="570owZKsWKN" role="3cqZAp">
                  <node concept="2YIFZM" id="570owZKt0$3" role="3cqZAk">
                    <ref role="1Pybhc" to="9toz:~GenerationProfiles" resolve="GenerationProfiles" />
                    <ref role="37wK5l" to="9toz:~GenerationProfiles.inspectorField(org.jetbrains.mps.openapi.model.SNode,java.lang.String)" resolve="inspectorField" />
                    <node concept="pncrf" id="570owZKt0$7" role="37wK5m" />
                    <node concept="Xl_RD" id="570owZKt0$5" role="37wK5m">
                      <property role="Xl_RC" value="implementation" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3EZMnI" id="570owZKsWIv" role="3EZMnx">
        <node concept="2iRfu4" id="570owZKsWIw" role="2iSdaV" />
        <node concept="3F0ifn" id="570owZKsWIu" role="3EZMnx">
          <property role="3F0ifm" value="origin:" />
        </node>
        <node concept="1HlG4h" id="570owZKsWIq" role="3EZMnx">
          <node concept="1HfYo3" id="570owZKsWIr" role="1HlULh">
            <node concept="3TQlhw" id="570owZKsWIs" role="1Hhtcw">
              <node concept="3clFbS" id="570owZKsWIt" role="2VODD2">
                <node concept="3cpWs6" id="570owZKt0$9" role="3cqZAp">
                  <node concept="2YIFZM" id="570owZKt0$d" role="3cqZAk">
                    <ref role="1Pybhc" to="9toz:~GenerationProfiles" resolve="GenerationProfiles" />
                    <ref role="37wK5l" to="9toz:~GenerationProfiles.inspectorField(org.jetbrains.mps.openapi.model.SNode,java.lang.String)" resolve="inspectorField" />
                    <node concept="pncrf" id="570owZKt0$h" role="37wK5m" />
                    <node concept="Xl_RD" id="570owZKt0$f" role="37wK5m">
                      <property role="Xl_RC" value="origin" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3EZMnI" id="570owZKsWIA" role="3EZMnx">
        <node concept="2iRfu4" id="570owZKsWIB" role="2iSdaV" />
        <node concept="3F0ifn" id="570owZKsWI_" role="3EZMnx">
          <property role="3F0ifm" value="reason:" />
        </node>
        <node concept="1HlG4h" id="570owZKsWIx" role="3EZMnx">
          <node concept="1HfYo3" id="570owZKsWIy" role="1HlULh">
            <node concept="3TQlhw" id="570owZKsWIz" role="1Hhtcw">
              <node concept="3clFbS" id="570owZKsWI$" role="2VODD2">
                <node concept="3cpWs6" id="570owZKt0$j" role="3cqZAp">
                  <node concept="2YIFZM" id="570owZKt0$n" role="3cqZAk">
                    <ref role="1Pybhc" to="9toz:~GenerationProfiles" resolve="GenerationProfiles" />
                    <ref role="37wK5l" to="9toz:~GenerationProfiles.inspectorField(org.jetbrains.mps.openapi.model.SNode,java.lang.String)" resolve="inspectorField" />
                    <node concept="pncrf" id="570owZKt0$r" role="37wK5m" />
                    <node concept="Xl_RD" id="570owZKt0$p" role="37wK5m">
                      <property role="Xl_RC" value="reason" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3EZMnI" id="570owZKsWIH" role="3EZMnx">
        <node concept="2iRfu4" id="570owZKsWII" role="2iSdaV" />
        <node concept="3F0ifn" id="570owZKsWIG" role="3EZMnx">
          <property role="3F0ifm" value="alternatives:" />
        </node>
        <node concept="1HlG4h" id="570owZKsWIC" role="3EZMnx">
          <node concept="1HfYo3" id="570owZKsWID" role="1HlULh">
            <node concept="3TQlhw" id="570owZKsWIE" role="1Hhtcw">
              <node concept="3clFbS" id="570owZKsWIF" role="2VODD2">
                <node concept="3cpWs6" id="570owZKt0$t" role="3cqZAp">
                  <node concept="2YIFZM" id="570owZKt0$x" role="3cqZAk">
                    <ref role="1Pybhc" to="9toz:~GenerationProfiles" resolve="GenerationProfiles" />
                    <ref role="37wK5l" to="9toz:~GenerationProfiles.inspectorField(org.jetbrains.mps.openapi.model.SNode,java.lang.String)" resolve="inspectorField" />
                    <node concept="pncrf" id="570owZKt0$_" role="37wK5m" />
                    <node concept="Xl_RD" id="570owZKt0$z" role="37wK5m">
                      <property role="Xl_RC" value="alternatives" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3EZMnI" id="570owZKsWIO" role="3EZMnx">
        <node concept="2iRfu4" id="570owZKsWIP" role="2iSdaV" />
        <node concept="3F0ifn" id="570owZKsWIN" role="3EZMnx">
          <property role="3F0ifm" value="requirements:" />
        </node>
        <node concept="1HlG4h" id="570owZKsWIJ" role="3EZMnx">
          <node concept="1HfYo3" id="570owZKsWIK" role="1HlULh">
            <node concept="3TQlhw" id="570owZKsWIL" role="1Hhtcw">
              <node concept="3clFbS" id="570owZKsWIM" role="2VODD2">
                <node concept="3cpWs6" id="570owZKt0$B" role="3cqZAp">
                  <node concept="2YIFZM" id="570owZKt0$F" role="3cqZAk">
                    <ref role="1Pybhc" to="9toz:~GenerationProfiles" resolve="GenerationProfiles" />
                    <ref role="37wK5l" to="9toz:~GenerationProfiles.inspectorField(org.jetbrains.mps.openapi.model.SNode,java.lang.String)" resolve="inspectorField" />
                    <node concept="pncrf" id="570owZKt0$J" role="37wK5m" />
                    <node concept="Xl_RD" id="570owZKt0$H" role="37wK5m">
                      <property role="Xl_RC" value="requirements" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3EZMnI" id="570owZKsWIV" role="3EZMnx">
        <node concept="2iRfu4" id="570owZKsWIW" role="2iSdaV" />
        <node concept="3F0ifn" id="570owZKsWIU" role="3EZMnx">
          <property role="3F0ifm" value="generationMetadata:" />
        </node>
        <node concept="1HlG4h" id="570owZKsWIQ" role="3EZMnx">
          <node concept="1HfYo3" id="570owZKsWIR" role="1HlULh">
            <node concept="3TQlhw" id="570owZKsWIS" role="1Hhtcw">
              <node concept="3clFbS" id="570owZKsWIT" role="2VODD2">
                <node concept="3cpWs6" id="570owZKt0$L" role="3cqZAp">
                  <node concept="2YIFZM" id="570owZKt0$P" role="3cqZAk">
                    <ref role="1Pybhc" to="9toz:~GenerationProfiles" resolve="GenerationProfiles" />
                    <ref role="37wK5l" to="9toz:~GenerationProfiles.inspectorField(org.jetbrains.mps.openapi.model.SNode,java.lang.String)" resolve="inspectorField" />
                    <node concept="pncrf" id="570owZKt0$T" role="37wK5m" />
                    <node concept="Xl_RD" id="570owZKt0$R" role="37wK5m">
                      <property role="Xl_RC" value="generationMetadata" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3EZMnI" id="570owZKsWJ2" role="3EZMnx">
        <node concept="2iRfu4" id="570owZKsWJ3" role="2iSdaV" />
        <node concept="3F0ifn" id="570owZKsWJ1" role="3EZMnx">
          <property role="3F0ifm" value="diagnostics:" />
        </node>
        <node concept="1HlG4h" id="570owZKsWIX" role="3EZMnx">
          <node concept="1HfYo3" id="570owZKsWIY" role="1HlULh">
            <node concept="3TQlhw" id="570owZKsWIZ" role="1Hhtcw">
              <node concept="3clFbS" id="570owZKsWJ0" role="2VODD2">
                <node concept="3cpWs6" id="570owZKt0$V" role="3cqZAp">
                  <node concept="2YIFZM" id="570owZKt0$Z" role="3cqZAk">
                    <ref role="1Pybhc" to="9toz:~GenerationProfiles" resolve="GenerationProfiles" />
                    <ref role="37wK5l" to="9toz:~GenerationProfiles.inspectorField(org.jetbrains.mps.openapi.model.SNode,java.lang.String)" resolve="inspectorField" />
                    <node concept="pncrf" id="570owZKt0_3" role="37wK5m" />
                    <node concept="Xl_RD" id="570owZKt0_1" role="37wK5m">
                      <property role="Xl_RC" value="diagnostics" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="570owZKsWJx">
    <property role="3GE5qa" value="usability" />
    <ref role="1XX52x" to="6o2a:14wlUfKK6zj" resolve="ImplementationSelection" />
    <node concept="3EZMnI" id="570owZKsWJy" role="2wV5jI">
      <node concept="2iRkQZ" id="570owZKsWJz" role="2iSdaV" />
      <node concept="3EZMnI" id="570owZKsWJ8" role="3EZMnx">
        <node concept="2iRfu4" id="570owZKsWJ9" role="2iSdaV" />
        <node concept="3F0ifn" id="570owZKsWJ7" role="3EZMnx">
          <property role="3F0ifm" value="projection:" />
        </node>
        <node concept="3F0A7n" id="570owZKsWJ6" role="3EZMnx">
          <ref role="1NtTu8" to="6o2a:14wlUfKK6zk" resolve="projection" />
        </node>
      </node>
      <node concept="3EZMnI" id="570owZKsWJv" role="3EZMnx">
        <node concept="2iRfu4" id="570owZKsWJw" role="2iSdaV" />
        <node concept="3XFhqQ" id="570owZKsWJu" role="3EZMnx" />
        <node concept="3EZMnI" id="570owZKsWJs" role="3EZMnx">
          <node concept="2iRkQZ" id="570owZKsWJt" role="2iSdaV" />
          <node concept="3EZMnI" id="570owZKsWJc" role="3EZMnx">
            <node concept="2iRfu4" id="570owZKsWJd" role="2iSdaV" />
            <node concept="3F0ifn" id="570owZKsWJb" role="3EZMnx">
              <property role="3F0ifm" value="scope:" />
            </node>
            <node concept="3F0A7n" id="570owZKsWJa" role="3EZMnx">
              <ref role="1NtTu8" to="6o2a:14wlUfKK6zl" resolve="scope" />
            </node>
          </node>
          <node concept="3EZMnI" id="570owZKsWJi" role="3EZMnx">
            <node concept="2iRfu4" id="570owZKsWJj" role="2iSdaV" />
            <node concept="3F0ifn" id="570owZKsWJh" role="3EZMnx">
              <property role="3F0ifm" value="target (empty for pattern default):" />
            </node>
            <node concept="1iCGBv" id="570owZKsWJe" role="3EZMnx">
              <property role="1$x2rV" value="&lt;select target&gt;" />
              <ref role="1NtTu8" to="6o2a:14wlUfKK6zo" resolve="target" />
              <node concept="1sVBvm" id="570owZKsWJf" role="1sWHZn">
                <node concept="3SHvHV" id="570owZKsWJg" role="2wV5jI" />
              </node>
            </node>
          </node>
          <node concept="3EZMnI" id="570owZKsWJm" role="3EZMnx">
            <node concept="2iRfu4" id="570owZKsWJn" role="2iSdaV" />
            <node concept="3F0ifn" id="570owZKsWJl" role="3EZMnx">
              <property role="3F0ifm" value="pattern:" />
            </node>
            <node concept="3F0A7n" id="570owZKsWJk" role="3EZMnx">
              <ref role="1NtTu8" to="6o2a:14wlUfKK6zm" resolve="pattern" />
            </node>
          </node>
          <node concept="3EZMnI" id="570owZKsWJq" role="3EZMnx">
            <node concept="2iRfu4" id="570owZKsWJr" role="2iSdaV" />
            <node concept="3F0ifn" id="570owZKsWJp" role="3EZMnx">
              <property role="3F0ifm" value="implementation (auto or explicit capability ID):" />
            </node>
            <node concept="3F0A7n" id="570owZKsWJo" role="3EZMnx">
              <ref role="1NtTu8" to="6o2a:14wlUfKK6zn" resolve="implementation" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3EZMnI" id="570owZKsWKm" role="6VMZX">
      <node concept="2iRkQZ" id="570owZKsWKn" role="2iSdaV" />
      <node concept="3F0ifn" id="570owZKsWJ$" role="3EZMnx">
        <property role="3F0ifm" value="Effective generation selection (computed; not an editable plan)" />
      </node>
      <node concept="3EZMnI" id="570owZKsWJE" role="3EZMnx">
        <node concept="2iRfu4" id="570owZKsWJF" role="2iSdaV" />
        <node concept="3F0ifn" id="570owZKsWJD" role="3EZMnx">
          <property role="3F0ifm" value="implementation:" />
        </node>
        <node concept="1HlG4h" id="570owZKsWJ_" role="3EZMnx">
          <node concept="1HfYo3" id="570owZKsWJA" role="1HlULh">
            <node concept="3TQlhw" id="570owZKsWJB" role="1Hhtcw">
              <node concept="3clFbS" id="570owZKsWJC" role="2VODD2">
                <node concept="3cpWs6" id="570owZKt0_5" role="3cqZAp">
                  <node concept="2YIFZM" id="570owZKt0_9" role="3cqZAk">
                    <ref role="1Pybhc" to="9toz:~GenerationProfiles" resolve="GenerationProfiles" />
                    <ref role="37wK5l" to="9toz:~GenerationProfiles.inspectorField(org.jetbrains.mps.openapi.model.SNode,java.lang.String)" resolve="inspectorField" />
                    <node concept="pncrf" id="570owZKt0_d" role="37wK5m" />
                    <node concept="Xl_RD" id="570owZKt0_b" role="37wK5m">
                      <property role="Xl_RC" value="implementation" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3EZMnI" id="570owZKsWJL" role="3EZMnx">
        <node concept="2iRfu4" id="570owZKsWJM" role="2iSdaV" />
        <node concept="3F0ifn" id="570owZKsWJK" role="3EZMnx">
          <property role="3F0ifm" value="origin:" />
        </node>
        <node concept="1HlG4h" id="570owZKsWJG" role="3EZMnx">
          <node concept="1HfYo3" id="570owZKsWJH" role="1HlULh">
            <node concept="3TQlhw" id="570owZKsWJI" role="1Hhtcw">
              <node concept="3clFbS" id="570owZKsWJJ" role="2VODD2">
                <node concept="3cpWs6" id="570owZKt0_f" role="3cqZAp">
                  <node concept="2YIFZM" id="570owZKt0_j" role="3cqZAk">
                    <ref role="1Pybhc" to="9toz:~GenerationProfiles" resolve="GenerationProfiles" />
                    <ref role="37wK5l" to="9toz:~GenerationProfiles.inspectorField(org.jetbrains.mps.openapi.model.SNode,java.lang.String)" resolve="inspectorField" />
                    <node concept="pncrf" id="570owZKt0_n" role="37wK5m" />
                    <node concept="Xl_RD" id="570owZKt0_l" role="37wK5m">
                      <property role="Xl_RC" value="origin" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3EZMnI" id="570owZKsWJS" role="3EZMnx">
        <node concept="2iRfu4" id="570owZKsWJT" role="2iSdaV" />
        <node concept="3F0ifn" id="570owZKsWJR" role="3EZMnx">
          <property role="3F0ifm" value="reason:" />
        </node>
        <node concept="1HlG4h" id="570owZKsWJN" role="3EZMnx">
          <node concept="1HfYo3" id="570owZKsWJO" role="1HlULh">
            <node concept="3TQlhw" id="570owZKsWJP" role="1Hhtcw">
              <node concept="3clFbS" id="570owZKsWJQ" role="2VODD2">
                <node concept="3cpWs6" id="570owZKt0_p" role="3cqZAp">
                  <node concept="2YIFZM" id="570owZKt0_t" role="3cqZAk">
                    <ref role="1Pybhc" to="9toz:~GenerationProfiles" resolve="GenerationProfiles" />
                    <ref role="37wK5l" to="9toz:~GenerationProfiles.inspectorField(org.jetbrains.mps.openapi.model.SNode,java.lang.String)" resolve="inspectorField" />
                    <node concept="pncrf" id="570owZKt0_x" role="37wK5m" />
                    <node concept="Xl_RD" id="570owZKt0_v" role="37wK5m">
                      <property role="Xl_RC" value="reason" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3EZMnI" id="570owZKsWJZ" role="3EZMnx">
        <node concept="2iRfu4" id="570owZKsWK0" role="2iSdaV" />
        <node concept="3F0ifn" id="570owZKsWJY" role="3EZMnx">
          <property role="3F0ifm" value="alternatives:" />
        </node>
        <node concept="1HlG4h" id="570owZKsWJU" role="3EZMnx">
          <node concept="1HfYo3" id="570owZKsWJV" role="1HlULh">
            <node concept="3TQlhw" id="570owZKsWJW" role="1Hhtcw">
              <node concept="3clFbS" id="570owZKsWJX" role="2VODD2">
                <node concept="3cpWs6" id="570owZKt0_z" role="3cqZAp">
                  <node concept="2YIFZM" id="570owZKt0_B" role="3cqZAk">
                    <ref role="1Pybhc" to="9toz:~GenerationProfiles" resolve="GenerationProfiles" />
                    <ref role="37wK5l" to="9toz:~GenerationProfiles.inspectorField(org.jetbrains.mps.openapi.model.SNode,java.lang.String)" resolve="inspectorField" />
                    <node concept="pncrf" id="570owZKt0_F" role="37wK5m" />
                    <node concept="Xl_RD" id="570owZKt0_D" role="37wK5m">
                      <property role="Xl_RC" value="alternatives" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3EZMnI" id="570owZKsWK6" role="3EZMnx">
        <node concept="2iRfu4" id="570owZKsWK7" role="2iSdaV" />
        <node concept="3F0ifn" id="570owZKsWK5" role="3EZMnx">
          <property role="3F0ifm" value="requirements:" />
        </node>
        <node concept="1HlG4h" id="570owZKsWK1" role="3EZMnx">
          <node concept="1HfYo3" id="570owZKsWK2" role="1HlULh">
            <node concept="3TQlhw" id="570owZKsWK3" role="1Hhtcw">
              <node concept="3clFbS" id="570owZKsWK4" role="2VODD2">
                <node concept="3cpWs6" id="570owZKt0_H" role="3cqZAp">
                  <node concept="2YIFZM" id="570owZKt0_L" role="3cqZAk">
                    <ref role="1Pybhc" to="9toz:~GenerationProfiles" resolve="GenerationProfiles" />
                    <ref role="37wK5l" to="9toz:~GenerationProfiles.inspectorField(org.jetbrains.mps.openapi.model.SNode,java.lang.String)" resolve="inspectorField" />
                    <node concept="pncrf" id="570owZKt0_P" role="37wK5m" />
                    <node concept="Xl_RD" id="570owZKt0_N" role="37wK5m">
                      <property role="Xl_RC" value="requirements" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3EZMnI" id="570owZKsWKd" role="3EZMnx">
        <node concept="2iRfu4" id="570owZKsWKe" role="2iSdaV" />
        <node concept="3F0ifn" id="570owZKsWKc" role="3EZMnx">
          <property role="3F0ifm" value="generationMetadata:" />
        </node>
        <node concept="1HlG4h" id="570owZKsWK8" role="3EZMnx">
          <node concept="1HfYo3" id="570owZKsWK9" role="1HlULh">
            <node concept="3TQlhw" id="570owZKsWKa" role="1Hhtcw">
              <node concept="3clFbS" id="570owZKsWKb" role="2VODD2">
                <node concept="3cpWs6" id="570owZKt0_R" role="3cqZAp">
                  <node concept="2YIFZM" id="570owZKt0_V" role="3cqZAk">
                    <ref role="1Pybhc" to="9toz:~GenerationProfiles" resolve="GenerationProfiles" />
                    <ref role="37wK5l" to="9toz:~GenerationProfiles.inspectorField(org.jetbrains.mps.openapi.model.SNode,java.lang.String)" resolve="inspectorField" />
                    <node concept="pncrf" id="570owZKt0_Z" role="37wK5m" />
                    <node concept="Xl_RD" id="570owZKt0_X" role="37wK5m">
                      <property role="Xl_RC" value="generationMetadata" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3EZMnI" id="570owZKsWKk" role="3EZMnx">
        <node concept="2iRfu4" id="570owZKsWKl" role="2iSdaV" />
        <node concept="3F0ifn" id="570owZKsWKj" role="3EZMnx">
          <property role="3F0ifm" value="diagnostics:" />
        </node>
        <node concept="1HlG4h" id="570owZKsWKf" role="3EZMnx">
          <node concept="1HfYo3" id="570owZKsWKg" role="1HlULh">
            <node concept="3TQlhw" id="570owZKsWKh" role="1Hhtcw">
              <node concept="3clFbS" id="570owZKsWKi" role="2VODD2">
                <node concept="3cpWs6" id="570owZKt0A1" role="3cqZAp">
                  <node concept="2YIFZM" id="570owZKt0A5" role="3cqZAk">
                    <ref role="1Pybhc" to="9toz:~GenerationProfiles" resolve="GenerationProfiles" />
                    <ref role="37wK5l" to="9toz:~GenerationProfiles.inspectorField(org.jetbrains.mps.openapi.model.SNode,java.lang.String)" resolve="inspectorField" />
                    <node concept="pncrf" id="570owZKt0A9" role="37wK5m" />
                    <node concept="Xl_RD" id="570owZKt0A7" role="37wK5m">
                      <property role="Xl_RC" value="diagnostics" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="570owZKsWKJ">
    <property role="3GE5qa" value="usability" />
    <ref role="1XX52x" to="6o2a:14wlUfKK6zq" resolve="PatternAnnotation" />
    <node concept="3EZMnI" id="570owZKsWKK" role="2wV5jI">
      <node concept="2iRkQZ" id="570owZKsWKL" role="2iSdaV" />
      <node concept="3EZMnI" id="570owZKsWKq" role="3EZMnx">
        <node concept="2iRfu4" id="570owZKsWKr" role="2iSdaV" />
        <node concept="3F0ifn" id="570owZKsWKp" role="3EZMnx">
          <property role="3F0ifm" value="pattern suggestion:" />
        </node>
        <node concept="3F0A7n" id="570owZKsWKo" role="3EZMnx">
          <ref role="1NtTu8" to="6o2a:14wlUfKK6zr" resolve="pattern" />
        </node>
      </node>
      <node concept="3EZMnI" id="570owZKsWKH" role="3EZMnx">
        <node concept="2iRfu4" id="570owZKsWKI" role="2iSdaV" />
        <node concept="3XFhqQ" id="570owZKsWKG" role="3EZMnx" />
        <node concept="3EZMnI" id="570owZKsWKE" role="3EZMnx">
          <node concept="2iRkQZ" id="570owZKsWKF" role="2iSdaV" />
          <node concept="3EZMnI" id="570owZKsWKw" role="3EZMnx">
            <node concept="2iRfu4" id="570owZKsWKx" role="2iSdaV" />
            <node concept="3F0ifn" id="570owZKsWKv" role="3EZMnx">
              <property role="3F0ifm" value="target:" />
            </node>
            <node concept="1iCGBv" id="570owZKsWKs" role="3EZMnx">
              <property role="1$x2rV" value="&lt;select target&gt;" />
              <ref role="1NtTu8" to="6o2a:14wlUfKK6zt" resolve="target" />
              <node concept="1sVBvm" id="570owZKsWKt" role="1sWHZn">
                <node concept="3SHvHV" id="570owZKsWKu" role="2wV5jI" />
              </node>
            </node>
          </node>
          <node concept="3EZMnI" id="570owZKsWK$" role="3EZMnx">
            <node concept="2iRfu4" id="570owZKsWK_" role="2iSdaV" />
            <node concept="3F0ifn" id="570owZKsWKz" role="3EZMnx">
              <property role="3F0ifm" value="mapping-impact (intent only):" />
            </node>
            <node concept="3F0A7n" id="570owZKsWKy" role="3EZMnx">
              <ref role="1NtTu8" to="6o2a:14wlUfKK6zs" resolve="mappingImpact" />
            </node>
          </node>
          <node concept="PMmxH" id="570owZKsWHR" role="3EZMnx">
            <ref role="PMmxG" node="$td8qQ36ux" resolve="AnnotationProvenance" />
          </node>
          <node concept="3EZMnI" id="570owZKsWKC" role="3EZMnx">
            <node concept="2iRfu4" id="570owZKsWKD" role="2iSdaV" />
            <node concept="3F0ifn" id="570owZKsWKB" role="3EZMnx">
              <property role="3F0ifm" value="source correspondence:" />
            </node>
            <node concept="3F0A7n" id="570owZKsWKA" role="3EZMnx">
              <property role="1Intyy" value="true" />
              <ref role="1NtTu8" to="6o2a:14wlUfKK6zu" resolve="recognitionKey" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="7Q_67PUJ0ap">
    <property role="3GE5qa" value="regeneration" />
    <ref role="1XX52x" to="6o2a:7Q_67PU$yi5" resolve="GenerationLedger" />
    <node concept="3EZMnI" id="7Q_67PUJ0aq" role="2wV5jI">
      <node concept="2iRkQZ" id="7Q_67PUJ0ar" role="2iSdaV" />
      <node concept="3F0ifn" id="7Q_67PUJ09X" role="3EZMnx">
        <property role="3F0ifm" value="Generated ownership ledger (managed by reviewed regeneration)" />
      </node>
      <node concept="3EZMnI" id="7Q_67PUJ0a2" role="3EZMnx">
        <node concept="2iRfu4" id="7Q_67PUJ0a3" role="2iSdaV" />
        <node concept="3F0ifn" id="7Q_67PUJ0a1" role="3EZMnx">
          <property role="3F0ifm" value="grammar:" />
        </node>
        <node concept="1iCGBv" id="7Q_67PUJ09Y" role="3EZMnx">
          <property role="1$x2rV" value="&lt;missing grammar&gt;" />
          <ref role="1NtTu8" to="6o2a:7Q_67PU$yif" resolve="grammar" />
          <node concept="1sVBvm" id="7Q_67PUJ09Z" role="1sWHZn">
            <node concept="3SHvHV" id="7Q_67PUJ0a0" role="2wV5jI" />
          </node>
        </node>
      </node>
      <node concept="3EZMnI" id="7Q_67PUJ0a7" role="3EZMnx">
        <node concept="2iRfu4" id="7Q_67PUJ0a8" role="2iSdaV" />
        <node concept="3F0ifn" id="7Q_67PUJ0a6" role="3EZMnx">
          <property role="3F0ifm" value="version:" />
        </node>
        <node concept="3F0A7n" id="7Q_67PUJ0a5" role="3EZMnx">
          <ref role="1NtTu8" to="6o2a:7Q_67PU$yi7" resolve="version" />
        </node>
      </node>
      <node concept="3EZMnI" id="7Q_67PUJ0ab" role="3EZMnx">
        <node concept="2iRfu4" id="7Q_67PUJ0ac" role="2iSdaV" />
        <node concept="3F0ifn" id="7Q_67PUJ0aa" role="3EZMnx">
          <property role="3F0ifm" value="generatorVersion:" />
        </node>
        <node concept="3F0A7n" id="7Q_67PUJ0a9" role="3EZMnx">
          <ref role="1NtTu8" to="6o2a:7Q_67PU$yi8" resolve="generatorVersion" />
        </node>
      </node>
      <node concept="3EZMnI" id="7Q_67PUJ0af" role="3EZMnx">
        <node concept="2iRfu4" id="7Q_67PUJ0ag" role="2iSdaV" />
        <node concept="3F0ifn" id="7Q_67PUJ0ae" role="3EZMnx">
          <property role="3F0ifm" value="toolchain:" />
        </node>
        <node concept="3F0A7n" id="7Q_67PUJ0ad" role="3EZMnx">
          <ref role="1NtTu8" to="6o2a:7Q_67PU$yi9" resolve="toolchain" />
        </node>
      </node>
      <node concept="3EZMnI" id="7Q_67PUJ0aj" role="3EZMnx">
        <node concept="2iRfu4" id="7Q_67PUJ0ak" role="2iSdaV" />
        <node concept="3F0ifn" id="7Q_67PUJ0ai" role="3EZMnx">
          <property role="3F0ifm" value="inputFingerprint:" />
        </node>
        <node concept="3F0A7n" id="7Q_67PUJ0ah" role="3EZMnx">
          <ref role="1NtTu8" to="6o2a:7Q_67PU$yia" resolve="inputFingerprint" />
        </node>
      </node>
      <node concept="3EZMnI" id="7Q_67PUJ0an" role="3EZMnx">
        <node concept="2iRfu4" id="7Q_67PUJ0ao" role="2iSdaV" />
        <node concept="3F0ifn" id="7Q_67PUJ0am" role="3EZMnx">
          <property role="3F0ifm" value="profileFingerprint:" />
        </node>
        <node concept="3F0A7n" id="7Q_67PUJ0al" role="3EZMnx">
          <ref role="1NtTu8" to="6o2a:7Q_67PU$yib" resolve="profileFingerprint" />
        </node>
      </node>
      <node concept="3F0ifn" id="7Q_67PUJ0a4" role="3EZMnx">
        <property role="3F0ifm" value="Whole-root generated artifacts; keep handwritten extensions in separate roots" />
      </node>
      <node concept="3F2HdR" id="7Q_67PUJ09V" role="3EZMnx">
        <ref role="1NtTu8" to="6o2a:7Q_67PU$yig" resolve="artifacts" />
        <node concept="2iRkQZ" id="7Q_67PUJ09W" role="2czzBx" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="7Q_67PUJ0aO">
    <property role="3GE5qa" value="regeneration" />
    <ref role="1XX52x" to="6o2a:7Q_67PU$yi6" resolve="GeneratedArtifact" />
    <node concept="3EZMnI" id="7Q_67PUJ0aP" role="2wV5jI">
      <node concept="2iRkQZ" id="7Q_67PUJ0aQ" role="2iSdaV" />
      <node concept="3EZMnI" id="7Q_67PUJ0au" role="3EZMnx">
        <node concept="2iRfu4" id="7Q_67PUJ0av" role="2iSdaV" />
        <node concept="3F0ifn" id="7Q_67PUJ0at" role="3EZMnx">
          <property role="3F0ifm" value="artifact:" />
        </node>
        <node concept="3F0A7n" id="7Q_67PUJ0as" role="3EZMnx">
          <ref role="1NtTu8" to="6o2a:7Q_67PU$yic" resolve="artifactKey" />
        </node>
      </node>
      <node concept="3EZMnI" id="7Q_67PUJ0a$" role="3EZMnx">
        <node concept="2iRfu4" id="7Q_67PUJ0a_" role="2iSdaV" />
        <node concept="3F0ifn" id="7Q_67PUJ0az" role="3EZMnx">
          <property role="3F0ifm" value="source:" />
        </node>
        <node concept="1iCGBv" id="7Q_67PUJ0aw" role="3EZMnx">
          <property role="1$x2rV" value="&lt;missing source&gt;" />
          <ref role="1NtTu8" to="6o2a:7Q_67PU$yih" resolve="source" />
          <node concept="1sVBvm" id="7Q_67PUJ0ax" role="1sWHZn">
            <node concept="3SHvHV" id="7Q_67PUJ0ay" role="2wV5jI" />
          </node>
        </node>
      </node>
      <node concept="3EZMnI" id="7Q_67PUJ0aE" role="3EZMnx">
        <node concept="2iRfu4" id="7Q_67PUJ0aF" role="2iSdaV" />
        <node concept="3F0ifn" id="7Q_67PUJ0aD" role="3EZMnx">
          <property role="3F0ifm" value="target:" />
        </node>
        <node concept="1iCGBv" id="7Q_67PUJ0aA" role="3EZMnx">
          <property role="1$x2rV" value="&lt;missing target&gt;" />
          <ref role="1NtTu8" to="6o2a:7Q_67PU$yii" resolve="target" />
          <node concept="1sVBvm" id="7Q_67PUJ0aB" role="1sWHZn">
            <node concept="3SHvHV" id="7Q_67PUJ0aC" role="2wV5jI" />
          </node>
        </node>
      </node>
      <node concept="3EZMnI" id="7Q_67PUJ0aI" role="3EZMnx">
        <node concept="2iRfu4" id="7Q_67PUJ0aJ" role="2iSdaV" />
        <node concept="3F0ifn" id="7Q_67PUJ0aH" role="3EZMnx">
          <property role="3F0ifm" value="decision:" />
        </node>
        <node concept="3F0A7n" id="7Q_67PUJ0aG" role="3EZMnx">
          <ref role="1NtTu8" to="6o2a:7Q_67PU$yie" resolve="decision" />
        </node>
      </node>
      <node concept="3EZMnI" id="7Q_67PUJ0aM" role="3EZMnx">
        <node concept="2iRfu4" id="7Q_67PUJ0aN" role="2iSdaV" />
        <node concept="3F0ifn" id="7Q_67PUJ0aL" role="3EZMnx">
          <property role="3F0ifm" value="baseline:" />
        </node>
        <node concept="3F0A7n" id="7Q_67PUJ0aK" role="3EZMnx">
          <ref role="1NtTu8" to="6o2a:7Q_67PU$yid" resolve="baseline" />
        </node>
      </node>
    </node>
  </node>
</model>

