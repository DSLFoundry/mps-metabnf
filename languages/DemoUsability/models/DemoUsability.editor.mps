<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:ca936f89-ba77-4ff7-9a03-c2760446caa0(DemoUsability.editor)">
  <persistence version="9" />
  <languages>
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="15" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="602c36ad-cc55-47ff-8c40-73d7f12f035c" name="jetbrains.mps.lang.editor.forms" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="n2m4" ref="r:29df74a9-1ef8-4ba0-9f28-0451ab1e71a4(DemoUsability.structure)" />
    <import index="cj4x" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor(MPS.Editor/)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="f4zo" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.cells(MPS.Editor/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="i51s" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.lang.smodel.generator.smodelAdapter(MPS.Core/)" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1402906326895675325" name="jetbrains.mps.lang.editor.structure.CellActionMap_FunctionParm_selectedNode" flags="nn" index="0IXxy" />
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi">
        <child id="1078153129734" name="inspectedCellModel" index="6VMZX" />
        <child id="2597348684684069742" name="contextHints" index="CpUAK" />
      </concept>
      <concept id="1176897764478" name="jetbrains.mps.lang.editor.structure.QueryFunction_NodeFactory" flags="in" index="4$FPG" />
      <concept id="6822301196700715228" name="jetbrains.mps.lang.editor.structure.ConceptEditorHintDeclarationReference" flags="ig" index="2aJ2om">
        <reference id="5944657839026714445" name="hint" index="2$4xQ3" />
      </concept>
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <property id="1140524450557" name="separatorText" index="2czwfO" />
        <child id="1176897874615" name="nodeFactory" index="4_6I_" />
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
      </concept>
      <concept id="5949640294884234625" name="jetbrains.mps.lang.editor.structure.CellLayout_Table" flags="nn" index="fvoJi" />
      <concept id="1106270549637" name="jetbrains.mps.lang.editor.structure.CellLayout_Horizontal" flags="nn" index="2iRfu4" />
      <concept id="1106270571710" name="jetbrains.mps.lang.editor.structure.CellLayout_Vertical" flags="nn" index="2iRkQZ" />
      <concept id="3459162043708467089" name="jetbrains.mps.lang.editor.structure.CellActionMap_CanExecuteFunction" flags="in" index="jK8Ss" />
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1237307900041" name="jetbrains.mps.lang.editor.structure.IndentLayoutIndentStyleClassItem" flags="ln" index="lj46D" />
      <concept id="1142886811589" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_node" flags="nn" index="pncrf" />
      <concept id="1237385578942" name="jetbrains.mps.lang.editor.structure.IndentLayoutOnNewLineStyleClassItem" flags="ln" index="pVoyu" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="5944657839000868711" name="jetbrains.mps.lang.editor.structure.ConceptEditorContextHints" flags="ig" index="2ABfQD">
        <child id="5944657839000877563" name="hints" index="2ABdcP" />
      </concept>
      <concept id="5944657839003601246" name="jetbrains.mps.lang.editor.structure.ConceptEditorHintDeclaration" flags="ig" index="2BsEeg">
        <property id="168363875802087287" name="showInUI" index="2gpH_U" />
        <property id="5944657839012629576" name="presentation" index="2BUmq6" />
      </concept>
      <concept id="1164824717996" name="jetbrains.mps.lang.editor.structure.CellMenuDescriptor" flags="ng" index="OXEIz">
        <child id="1164824815888" name="cellMenuPart" index="OY2wv" />
      </concept>
      <concept id="4323500428121233431" name="jetbrains.mps.lang.editor.structure.EditorCellId" flags="ng" index="2SqB2G" />
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
      </concept>
      <concept id="1074767920765" name="jetbrains.mps.lang.editor.structure.CellModel_ModelAccess" flags="sg" stub="8104358048506729357" index="XafU7">
        <child id="1176718152741" name="modelAcessor" index="3TRxkO" />
      </concept>
      <concept id="1139535219966" name="jetbrains.mps.lang.editor.structure.CellActionMapDeclaration" flags="ig" index="1h_SRR">
        <reference id="1139535219968" name="applicableConcept" index="1h_SK9" />
        <child id="1139535219969" name="item" index="1h_SK8" />
      </concept>
      <concept id="1139535280617" name="jetbrains.mps.lang.editor.structure.CellActionMapItem" flags="lg" index="1hA7zw">
        <property id="1139535298778" name="actionId" index="1hAc7j" />
        <property id="1139537298254" name="description" index="1hHO97" />
        <child id="3459162043708468028" name="canExecuteFunction" index="jK8aL" />
        <child id="1139535280620" name="executeFunction" index="1hA7z_" />
      </concept>
      <concept id="1139535439104" name="jetbrains.mps.lang.editor.structure.CellActionMap_ExecuteFunction" flags="in" index="1hAIg9" />
      <concept id="2162403111523059536" name="jetbrains.mps.lang.editor.structure.IdSelector" flags="ng" index="1lyA5W">
        <property id="2162403111529391190" name="cellId" index="1lUG9U" />
      </concept>
      <concept id="1165424453110" name="jetbrains.mps.lang.editor.structure.CellMenuPart_Generic_Item" flags="ng" index="1oHujT">
        <property id="1165424453111" name="matchingText" index="1oHujS" />
        <child id="1165424453112" name="handlerFunction" index="1oHujR" />
      </concept>
      <concept id="1165424657443" name="jetbrains.mps.lang.editor.structure.CellMenuPart_Generic_Item_Handler" flags="in" index="1oIgkG" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1073389214265" name="jetbrains.mps.lang.editor.structure.EditorCellModel" flags="ng" index="3EYTF0">
        <child id="1164826688380" name="menuDescriptor" index="P5bDN" />
        <child id="4323500428121274054" name="id" index="2SqHTX" />
      </concept>
      <concept id="1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" flags="sn" stub="3013115976261988961" index="3EZMnI">
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
      <concept id="1073390211982" name="jetbrains.mps.lang.editor.structure.CellModel_RefNodeList" flags="sg" stub="2794558372793454595" index="3F2HdR">
        <reference id="1173177718857" name="elementActionMap" index="APP_o" />
      </concept>
      <concept id="1163613822479" name="jetbrains.mps.lang.editor.structure.CellMenuPart_Abstract_editedNode" flags="nn" index="3GMtW1" />
      <concept id="3647146066980922272" name="jetbrains.mps.lang.editor.structure.SelectInEditorOperation" flags="nn" index="1OKiuA">
        <child id="1948540814633499358" name="editorContext" index="lBI5i" />
        <child id="1948540814635895774" name="cellSelector" index="lGT1i" />
        <child id="2701921320705252232" name="selectionEnd" index="mNZMC" />
        <child id="3604384757217586546" name="selectionStart" index="3dN3m$" />
      </concept>
      <concept id="1161622981231" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_editorContext" flags="nn" index="1Q80Hx" />
      <concept id="1176717779940" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_text" flags="nn" index="3TQ6bP" />
      <concept id="1176717841777" name="jetbrains.mps.lang.editor.structure.QueryFunction_ModelAccess_Getter" flags="in" index="3TQlhw" />
      <concept id="1176717871254" name="jetbrains.mps.lang.editor.structure.QueryFunction_ModelAccess_Setter" flags="in" index="3TQsA7" />
      <concept id="1176717888428" name="jetbrains.mps.lang.editor.structure.QueryFunction_ModelAccess_Validator" flags="in" index="3TQwEX" />
      <concept id="1176717996748" name="jetbrains.mps.lang.editor.structure.ModelAccessor" flags="ng" index="3TQVft">
        <child id="1176718001874" name="getter" index="3TQWv3" />
        <child id="1176718007938" name="setter" index="3TQXYj" />
        <child id="1176718014393" name="validator" index="3TQZqC" />
      </concept>
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
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
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="602c36ad-cc55-47ff-8c40-73d7f12f035c" name="jetbrains.mps.lang.editor.forms">
      <concept id="7024409093146622323" name="jetbrains.mps.lang.editor.forms.structure.CheckboxUI_Platform" flags="ng" index="jv8YD" />
      <concept id="312429380032619384" name="jetbrains.mps.lang.editor.forms.structure.CellModel_Checkbox" flags="ng" index="2yq9I_">
        <reference id="3696012239575138271" name="propertyDeclaration" index="225u1j" />
        <child id="8215612579904156902" name="label" index="2fqkNU" />
        <child id="1340057216891284122" name="ui" index="1563LE" />
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
      <concept id="1143512015885" name="jetbrains.mps.lang.smodel.structure.Node_GetNextSiblingOperation" flags="nn" index="YCak7" />
      <concept id="1171999116870" name="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" flags="nn" index="3w_OXm" />
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI">
        <property id="1238684351431" name="asCast" index="1BlNFB" />
      </concept>
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
  <node concept="24kQdi" id="OzopT5VPVN">
    <ref role="1XX52x" to="n2m4:pokUpJQ$xE" resolve="Statement" />
    <node concept="3EZMnI" id="EHYyCxpCIM" role="2wV5jI">
      <node concept="3F0ifn" id="H2DbQ1oBUD" role="3EZMnx">
        <property role="3F0ifm" value="skip" />
      </node>
      <node concept="l2Vlx" id="8kueKDKAwU" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="_L3aYZU_Qz" role="6VMZX">
      <node concept="2iRkQZ" id="QC8YN1RGP0" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="22N7pcv7SY">
    <property role="3GE5qa" value="" />
    <ref role="1XX52x" to="n2m4:dIPqnga0qR" resolve="Declaration" />
    <node concept="3EZMnI" id="M6aebLKsQb" role="2wV5jI">
      <node concept="3EZMnI" id="iyB3mB576r" role="3EZMnx">
        <node concept="2iRkQZ" id="neppv9CA7m" role="2iSdaV" />
        <node concept="2SqB2G" id="rWLgwKujA2" role="2SqHTX">
          <property role="TrG5h" value="flag_projection_public" />
        </node>
        <node concept="XafU7" id="_lih6CsbWd" role="3EZMnx">
          <node concept="3TQVft" id="HhM6byPabo" role="3TRxkO">
            <node concept="3TQlhw" id="pupUpBlWBo" role="3TQWv3">
              <node concept="3clFbS" id="tw4xmDjUOA" role="2VODD2">
                <node concept="3cpWs6" id="g9tRLBUyH4" role="3cqZAp">
                  <node concept="3K4zz7" id="figdcs61y2" role="3cqZAk">
                    <node concept="2OqwBi" id="X1mqZXVStW" role="3K4Cdx">
                      <node concept="3TrcHB" id="o2K543162G" role="2OqNvi">
                        <ref role="3TsBF5" to="n2m4:27ycVzfuMb" resolve="public" />
                      </node>
                      <node concept="pncrf" id="48p9jgO5_B" role="2Oq$k0" />
                    </node>
                    <node concept="Xl_RD" id="IXeXFKSgXt" role="3K4E3e">
                      <property role="Xl_RC" value="public" />
                    </node>
                    <node concept="Xl_RD" id="jTtt0nF3ll" role="3K4GZi">
                      <property role="Xl_RC" value="" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3TQsA7" id="wztesZLvro" role="3TQXYj">
              <node concept="3clFbS" id="P40wFhaTC_" role="2VODD2">
                <node concept="3clFbF" id="IZ$GHwPBIU" role="3cqZAp">
                  <node concept="37vLTI" id="Z0yZ1mNNux" role="3clFbG">
                    <node concept="2OqwBi" id="jx8rCNdu0N" role="37vLTJ">
                      <node concept="3TrcHB" id="t5pBBwJd6P" role="2OqNvi">
                        <ref role="3TsBF5" to="n2m4:27ycVzfuMb" resolve="public" />
                      </node>
                      <node concept="pncrf" id="AaNUN6wouU" role="2Oq$k0" />
                    </node>
                    <node concept="2OqwBi" id="VTGNEYsGNF" role="37vLTx">
                      <node concept="Xl_RD" id="5EQ99ucW8o" role="2Oq$k0">
                        <property role="Xl_RC" value="public" />
                      </node>
                      <node concept="liA8E" id="7x177ghT1C" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                        <node concept="3TQ6bP" id="jVcD4VbEJT" role="37wK5m" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3TQwEX" id="lRoWU_oiiu" role="3TQZqC">
              <node concept="3clFbS" id="iJizGFQbDI" role="2VODD2">
                <node concept="3cpWs6" id="j0Z8mQJJwk" role="3cqZAp">
                  <node concept="22lmx$" id="liaWcp4hZV" role="3cqZAk">
                    <node concept="2OqwBi" id="2QJtqPRBqh" role="3uHU7B">
                      <node concept="Xl_RD" id="e_3I98qgCW" role="2Oq$k0">
                        <property role="Xl_RC" value="" />
                      </node>
                      <node concept="liA8E" id="t1sWmS7IDy" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                        <node concept="3TQ6bP" id="dEIDljizVs" role="37wK5m" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="YHuYpY7uJ6" role="3uHU7w">
                      <node concept="Xl_RD" id="r4Fx1CuXaM" role="2Oq$k0">
                        <property role="Xl_RC" value="public" />
                      </node>
                      <node concept="liA8E" id="_Kf_7hEZ_g" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                        <node concept="3TQ6bP" id="XxYEsvioTA" role="37wK5m" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2SqB2G" id="cRc0vCmtoq" role="2SqHTX">
            <property role="TrG5h" value="flag_public" />
          </node>
          <node concept="OXEIz" id="Gol2vC8gmp" role="P5bDN">
            <node concept="1oHujT" id="Btqk1K_CFf" role="OY2wv">
              <property role="1oHujS" value="public" />
              <node concept="1oIgkG" id="S5nP$mfiGU" role="1oHujR">
                <node concept="3clFbS" id="chG8zOz$2Q" role="2VODD2">
                  <node concept="3clFbF" id="wv5Ug4TfkW" role="3cqZAp">
                    <node concept="37vLTI" id="9HSMlbxQXG" role="3clFbG">
                      <node concept="2OqwBi" id="yzU_4UOdq7" role="37vLTJ">
                        <node concept="3TrcHB" id="Wm5JbnYMd9" role="2OqNvi">
                          <ref role="3TsBF5" to="n2m4:27ycVzfuMb" resolve="public" />
                        </node>
                        <node concept="3GMtW1" id="SAuP0cay9D" role="2Oq$k0" />
                      </node>
                      <node concept="3clFbT" id="8nogvzUsM2" role="37vLTx">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="UJQTnqNBL4" role="3cqZAp">
                    <node concept="2OqwBi" id="zuk1ICSyUA" role="3clFbG">
                      <node concept="1Q80Hx" id="XD$EyvyEai" role="2Oq$k0" />
                      <node concept="liA8E" id="MiedlOvn89" role="2OqNvi">
                        <ref role="37wK5l" to="cj4x:~EditorContext.flushEvents()" resolve="flushEvents" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="oFkAgEtUIj" role="3cqZAp">
                    <node concept="2OqwBi" id="n$lFSRYJJI" role="3clFbG">
                      <node concept="3GMtW1" id="dqoiWCKX$w" role="2Oq$k0" />
                      <node concept="1OKiuA" id="M1QBk_0Rlc" role="2OqNvi">
                        <node concept="1Q80Hx" id="b_yghqII$I" role="lBI5i" />
                        <node concept="1lyA5W" id="vIbr5PgqvP" role="lGT1i">
                          <property role="1lUG9U" value="flag_public" />
                        </node>
                        <node concept="3cmrfG" id="ijzeiXBrFQ" role="3dN3m$">
                          <property role="3cmrfH" value="6" />
                        </node>
                        <node concept="3cmrfG" id="QjJhtNgduX" role="mNZMC">
                          <property role="3cmrfH" value="6" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1oHujT" id="yjHgXVyME9" role="OY2wv">
              <property role="1oHujS" value="public (remove)" />
              <node concept="1oIgkG" id="OsryT$xM2W" role="1oHujR">
                <node concept="3clFbS" id="9tVhw9UKLZ" role="2VODD2">
                  <node concept="3clFbF" id="cN_dnsr7Yi" role="3cqZAp">
                    <node concept="37vLTI" id="ZoqRP8foBx" role="3clFbG">
                      <node concept="2OqwBi" id="eey0UiqtPu" role="37vLTJ">
                        <node concept="3TrcHB" id="ZfPxlafkUI" role="2OqNvi">
                          <ref role="3TsBF5" to="n2m4:27ycVzfuMb" resolve="public" />
                        </node>
                        <node concept="3GMtW1" id="4Kj29WCHn8" role="2Oq$k0" />
                      </node>
                      <node concept="3clFbT" id="of12jgVjRQ" role="37vLTx" />
                    </node>
                  </node>
                  <node concept="3clFbF" id="8mwq3CP$rM" role="3cqZAp">
                    <node concept="2OqwBi" id="JcjT3NzlJK" role="3clFbG">
                      <node concept="1Q80Hx" id="jQGuqWuqe3" role="2Oq$k0" />
                      <node concept="liA8E" id="dWqWFkXgL1" role="2OqNvi">
                        <ref role="37wK5l" to="cj4x:~EditorContext.flushEvents()" resolve="flushEvents" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="cUMHfBpNT2" role="3cqZAp">
                    <node concept="2OqwBi" id="fYLpv$XC5o" role="3clFbG">
                      <node concept="3GMtW1" id="p14U8qEMxI" role="2Oq$k0" />
                      <node concept="1OKiuA" id="dqQq2D$gyO" role="2OqNvi">
                        <node concept="1Q80Hx" id="_QmNn5HR43" role="lBI5i" />
                        <node concept="1lyA5W" id="HpUAKYbOds" role="lGT1i">
                          <property role="1lUG9U" value="flag_public" />
                        </node>
                        <node concept="3cmrfG" id="ajiKYw6ilE" role="3dN3m$">
                          <property role="3cmrfH" value="0" />
                        </node>
                        <node concept="3cmrfG" id="EHnXs7qvcu" role="mNZMC">
                          <property role="3cmrfH" value="0" />
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
      <node concept="3F0A7n" id="JCaBqARsJp" role="3EZMnx">
        <ref role="1NtTu8" to="n2m4:kvdqv6tNUD" resolve="identifier" />
      </node>
      <node concept="3F1sOY" id="jDA6yKgJm8" role="3EZMnx">
        <ref role="1NtTu8" to="n2m4:1sHbqs4rTK" resolve="clause" />
      </node>
      <node concept="l2Vlx" id="ZZbIa7sJjA" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="_ElAiN7LD8" role="6VMZX">
      <node concept="2iRkQZ" id="aAonWnP7G0" role="2iSdaV" />
      <node concept="3EZMnI" id="twBUsBJsnE" role="3EZMnx">
        <node concept="2iRkQZ" id="MvslBXAUV0" role="2iSdaV" />
        <node concept="2yq9I_" id="n9JRa76ndT" role="3EZMnx">
          <ref role="225u1j" to="n2m4:27ycVzfuMb" resolve="public" />
          <node concept="jv8YD" id="Iaak6CeiGo" role="1563LE" />
          <node concept="3F0ifn" id="f8CKjBFBPW" role="2fqkNU">
            <property role="3F0ifm" value="public" />
          </node>
        </node>
        <node concept="2SqB2G" id="381XRtmuvZ" role="2SqHTX">
          <property role="TrG5h" value="flag_form_public" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="jaEXc2TRC2">
    <property role="3GE5qa" value="" />
    <ref role="1XX52x" to="n2m4:clKjNn70OE" resolve="Program" />
    <node concept="3EZMnI" id="PvGR7C$ETo" role="2wV5jI">
      <node concept="3F0ifn" id="ieGZZ3dPM3" role="3EZMnx">
        <property role="3F0ifm" value="program" />
      </node>
      <node concept="3EZMnI" id="zAiuashCs6" role="3EZMnx">
        <node concept="2iRkQZ" id="poobprVlxV" role="2iSdaV" />
        <node concept="2SqB2G" id="HHnlWw8M36" role="2SqHTX">
          <property role="TrG5h" value="flag_projection_static" />
        </node>
        <node concept="XafU7" id="LdIwPTcOed" role="3EZMnx">
          <node concept="3TQVft" id="bX_7ovhCid" role="3TRxkO">
            <node concept="3TQlhw" id="gH0PpO7l$M" role="3TQWv3">
              <node concept="3clFbS" id="jrnxBEIv2N" role="2VODD2">
                <node concept="3cpWs6" id="Ds9d74jjQf" role="3cqZAp">
                  <node concept="3K4zz7" id="MqrIdxKIAT" role="3cqZAk">
                    <node concept="2OqwBi" id="Pp4BRyfxaz" role="3K4Cdx">
                      <node concept="3TrcHB" id="1XhTKq2mvu" role="2OqNvi">
                        <ref role="3TsBF5" to="n2m4:qalK2bn9Sg" resolve="static" />
                      </node>
                      <node concept="pncrf" id="IHbs0$tUOi" role="2Oq$k0" />
                    </node>
                    <node concept="Xl_RD" id="GH$_GadUqY" role="3K4E3e">
                      <property role="Xl_RC" value="static" />
                    </node>
                    <node concept="Xl_RD" id="bjTsPADxEw" role="3K4GZi">
                      <property role="Xl_RC" value="" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3TQsA7" id="bKg$Mx01oB" role="3TQXYj">
              <node concept="3clFbS" id="u5zfjKna7F" role="2VODD2">
                <node concept="3clFbF" id="i7h27hyOJr" role="3cqZAp">
                  <node concept="37vLTI" id="MtbsMCNgQy" role="3clFbG">
                    <node concept="2OqwBi" id="UUV4M590zn" role="37vLTJ">
                      <node concept="3TrcHB" id="uGrkjwY0d8" role="2OqNvi">
                        <ref role="3TsBF5" to="n2m4:qalK2bn9Sg" resolve="static" />
                      </node>
                      <node concept="pncrf" id="JOmZHlPw2a" role="2Oq$k0" />
                    </node>
                    <node concept="2OqwBi" id="zhpy05_iEc" role="37vLTx">
                      <node concept="Xl_RD" id="2a9zKR8fWX" role="2Oq$k0">
                        <property role="Xl_RC" value="static" />
                      </node>
                      <node concept="liA8E" id="UjVRKiNgxi" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                        <node concept="3TQ6bP" id="uhKqB3Hz8G" role="37wK5m" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3TQwEX" id="2ZrNJbZRdX" role="3TQZqC">
              <node concept="3clFbS" id="vxeRcfdesD" role="2VODD2">
                <node concept="3cpWs6" id="Bn6tMJV4VO" role="3cqZAp">
                  <node concept="22lmx$" id="nARbXTo0A9" role="3cqZAk">
                    <node concept="2OqwBi" id="vQCT8tG_m1" role="3uHU7B">
                      <node concept="Xl_RD" id="ULNnhx_dcN" role="2Oq$k0">
                        <property role="Xl_RC" value="" />
                      </node>
                      <node concept="liA8E" id="ctAN8A$Gme" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                        <node concept="3TQ6bP" id="WEWJlQoR6q" role="37wK5m" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="$M$2oAYyB4" role="3uHU7w">
                      <node concept="Xl_RD" id="Jv2R2nkP7H" role="2Oq$k0">
                        <property role="Xl_RC" value="static" />
                      </node>
                      <node concept="liA8E" id="h6vXzETAgk" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                        <node concept="3TQ6bP" id="EBXQW5$SOy" role="37wK5m" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2SqB2G" id="vmwmpaFubT" role="2SqHTX">
            <property role="TrG5h" value="flag_static" />
          </node>
          <node concept="OXEIz" id="_cLGailgqy" role="P5bDN">
            <node concept="1oHujT" id="EkX_nX0sS" role="OY2wv">
              <property role="1oHujS" value="static" />
              <node concept="1oIgkG" id="cCeHz5GyZH" role="1oHujR">
                <node concept="3clFbS" id="4xOgU0F9k5" role="2VODD2">
                  <node concept="3clFbF" id="lCuqa9t28O" role="3cqZAp">
                    <node concept="37vLTI" id="s$fKbHh9eC" role="3clFbG">
                      <node concept="2OqwBi" id="FdWO2QXe9o" role="37vLTJ">
                        <node concept="3TrcHB" id="4CYwqWBPvh" role="2OqNvi">
                          <ref role="3TsBF5" to="n2m4:qalK2bn9Sg" resolve="static" />
                        </node>
                        <node concept="3GMtW1" id="xc$3nGIJj9" role="2Oq$k0" />
                      </node>
                      <node concept="3clFbT" id="K0QszGHFeX" role="37vLTx">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="UE5BeP0BI$" role="3cqZAp">
                    <node concept="2OqwBi" id="_xmghow_Ji" role="3clFbG">
                      <node concept="1Q80Hx" id="_PmXp8Hckw" role="2Oq$k0" />
                      <node concept="liA8E" id="nntWFuiwMq" role="2OqNvi">
                        <ref role="37wK5l" to="cj4x:~EditorContext.flushEvents()" resolve="flushEvents" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="U7cWqr0hTW" role="3cqZAp">
                    <node concept="2OqwBi" id="aY$fTNtvXW" role="3clFbG">
                      <node concept="3GMtW1" id="KGD3XQ5Kef" role="2Oq$k0" />
                      <node concept="1OKiuA" id="RBj08YmJ5U" role="2OqNvi">
                        <node concept="1Q80Hx" id="5UaCNUX$Ua" role="lBI5i" />
                        <node concept="1lyA5W" id="Gbm$gqEvHX" role="lGT1i">
                          <property role="1lUG9U" value="flag_static" />
                        </node>
                        <node concept="3cmrfG" id="2XAqb$pN0q" role="3dN3m$">
                          <property role="3cmrfH" value="6" />
                        </node>
                        <node concept="3cmrfG" id="CJ_wdFeznB" role="mNZMC">
                          <property role="3cmrfH" value="6" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1oHujT" id="LdPowb1Bar" role="OY2wv">
              <property role="1oHujS" value="static (remove)" />
              <node concept="1oIgkG" id="MbthY9vA26" role="1oHujR">
                <node concept="3clFbS" id="ttGWdpCezP" role="2VODD2">
                  <node concept="3clFbF" id="kx0m$xFOO9" role="3cqZAp">
                    <node concept="37vLTI" id="1pJ4tiDyO_" role="3clFbG">
                      <node concept="2OqwBi" id="npMojGqpXl" role="37vLTJ">
                        <node concept="3TrcHB" id="afnbk1hYH1" role="2OqNvi">
                          <ref role="3TsBF5" to="n2m4:qalK2bn9Sg" resolve="static" />
                        </node>
                        <node concept="3GMtW1" id="EXw8r5PJYP" role="2Oq$k0" />
                      </node>
                      <node concept="3clFbT" id="6DKFwz48ga" role="37vLTx" />
                    </node>
                  </node>
                  <node concept="3clFbF" id="l9DHIPFiBq" role="3cqZAp">
                    <node concept="2OqwBi" id="1_cVQan_tj" role="3clFbG">
                      <node concept="1Q80Hx" id="wssrljViaH" role="2Oq$k0" />
                      <node concept="liA8E" id="XIeNrzeNs5" role="2OqNvi">
                        <ref role="37wK5l" to="cj4x:~EditorContext.flushEvents()" resolve="flushEvents" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="ryZOK57Qev" role="3cqZAp">
                    <node concept="2OqwBi" id="VLwvGfQTJ3" role="3clFbG">
                      <node concept="3GMtW1" id="qLUiCE2Lln" role="2Oq$k0" />
                      <node concept="1OKiuA" id="9b$0eBjwiX" role="2OqNvi">
                        <node concept="1Q80Hx" id="qyk7Ibh9eL" role="lBI5i" />
                        <node concept="1lyA5W" id="$ALOHSO676" role="lGT1i">
                          <property role="1lUG9U" value="flag_static" />
                        </node>
                        <node concept="3cmrfG" id="tiDQD4ND_b" role="3dN3m$">
                          <property role="3cmrfH" value="0" />
                        </node>
                        <node concept="3cmrfG" id="ilBNJOjGv6" role="mNZMC">
                          <property role="3cmrfH" value="0" />
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
      <node concept="3F2HdR" id="MBPdtL7dnu" role="3EZMnx">
        <ref role="1NtTu8" to="n2m4:SzoEKCxLlM" resolve="statements" />
        <node concept="l2Vlx" id="6KmDeXS0CK" role="2czzBx" />
        <node concept="2SqB2G" id="GQI0P$d6yE" role="2SqHTX">
          <property role="TrG5h" value="list" />
        </node>
      </node>
      <node concept="3F0ifn" id="ZNQNAIjqrj" role="3EZMnx">
        <property role="3F0ifm" value="else" />
      </node>
      <node concept="3F2HdR" id="qX$4caeCOz" role="3EZMnx">
        <ref role="1NtTu8" to="n2m4:GJjzMoNEJh" resolve="elseStatements" />
        <node concept="l2Vlx" id="H2Q3RTbjbS" role="2czzBx" />
        <node concept="2SqB2G" id="t2CX6Q9edB" role="2SqHTX">
          <property role="TrG5h" value="list" />
        </node>
      </node>
      <node concept="l2Vlx" id="cjt0jYluke" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="5OTV0m_pie" role="6VMZX">
      <node concept="2iRkQZ" id="e6jKcwIlMK" role="2iSdaV" />
      <node concept="3EZMnI" id="GcDigLOwWT" role="3EZMnx">
        <node concept="2iRkQZ" id="kBoC861fgm" role="2iSdaV" />
        <node concept="2yq9I_" id="Amr_J5AOqp" role="3EZMnx">
          <ref role="225u1j" to="n2m4:qalK2bn9Sg" resolve="static" />
          <node concept="jv8YD" id="atf0CHKcAD" role="1563LE" />
          <node concept="3F0ifn" id="3X9_aKNFZS" role="2fqkNU">
            <property role="3F0ifm" value="static" />
          </node>
        </node>
        <node concept="2SqB2G" id="ozU_mPjklw" role="2SqHTX">
          <property role="TrG5h" value="flag_form_static" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6EcOn_p756">
    <property role="3GE5qa" value="" />
    <ref role="1XX52x" to="n2m4:gh6_CIVq1L" resolve="ElseClause" />
    <node concept="3EZMnI" id="fjcSgWvGC7" role="2wV5jI">
      <node concept="3F0ifn" id="bVTQYlqhjv" role="3EZMnx">
        <property role="3F0ifm" value="else" />
      </node>
      <node concept="3F2HdR" id="qdavRsQvzE" role="3EZMnx">
        <ref role="1NtTu8" to="n2m4:F8K3F5g4Ey" resolve="statements" />
        <node concept="l2Vlx" id="W81FLYkC5y" role="2czzBx" />
        <node concept="2SqB2G" id="Rtnvys9Rpr" role="2SqHTX">
          <property role="TrG5h" value="list" />
        </node>
      </node>
      <node concept="l2Vlx" id="q7c5kHTlSL" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="bXvzWU9qnr" role="6VMZX">
      <node concept="2iRkQZ" id="zrRDauIOgz" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="_7d3zKfoca">
    <property role="3GE5qa" value="" />
    <ref role="1XX52x" to="n2m4:7Owspc8yxr" resolve="Block" />
    <node concept="3EZMnI" id="Y9xEcnNNlY" role="2wV5jI">
      <node concept="3F0ifn" id="GsAdT9Iw0S" role="3EZMnx">
        <property role="3F0ifm" value="begin" />
      </node>
      <node concept="3F2HdR" id="b4lU3d4_jb" role="3EZMnx">
        <property role="2czwfO" value=";" />
        <ref role="1NtTu8" to="n2m4:odE2kWcFue" resolve="statements" />
        <ref role="APP_o" node="6YYWkQqby_A" resolve="Statement_ActionMap" />
        <node concept="lj46D" id="6OVCiBme88" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pVoyu" id="kOy5uKS0AZ" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="l2Vlx" id="yPCd7Cj8cj" role="2czzBx" />
        <node concept="2SqB2G" id="rrijXJ3h0J" role="2SqHTX">
          <property role="TrG5h" value="list" />
        </node>
        <node concept="4$FPG" id="54cyhNXByhH" role="4_6I_">
          <node concept="3clFbS" id="54cyhNXByhI" role="2VODD2">
            <node concept="3cpWs6" id="54cyhNXByhJ" role="3cqZAp">
              <node concept="2ShNRf" id="54cyhNXByhK" role="3cqZAk">
                <node concept="3zrR0B" id="54cyhNXByhL" role="2ShVmc">
                  <node concept="3Tqbb2" id="54cyhNXByhM" role="3zrR0E">
                    <ref role="ehGHo" to="n2m4:pokUpJQ$xE" resolve="Statement" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="V4hURzOA5y" role="3EZMnx">
        <property role="3F0ifm" value="end" />
      </node>
      <node concept="3F1sOY" id="43R7$Nybsk" role="3EZMnx">
        <ref role="1NtTu8" to="n2m4:B4Qkm2DZ1D" resolve="child" />
      </node>
      <node concept="l2Vlx" id="Hqz$dUv0RY" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="4DYsC0Lt71" role="6VMZX">
      <node concept="2iRkQZ" id="RRSNwqP$Oq" role="2iSdaV" />
    </node>
  </node>
  <node concept="1h_SRR" id="6YYWkQqby_A">
    <property role="TrG5h" value="Statement_ActionMap" />
    <ref role="1h_SK9" to="n2m4:pokUpJQ$xE" resolve="Statement" />
    <node concept="1hA7zw" id="6YYWkQqby_B" role="1h_SK8">
      <property role="1hAc7j" value="g_hAxAO/delete_action_id" />
      <property role="1hHO97" value="Remove a statement only from an optional repeated containment list" />
      <node concept="1hAIg9" id="6YYWkQqby_C" role="1hA7z_">
        <node concept="3clFbS" id="6YYWkQqby_D" role="2VODD2">
          <node concept="3cpWs8" id="6YYWkQqby_I" role="3cqZAp">
            <node concept="3cpWsn" id="6YYWkQqby_H" role="3cpWs9">
              <property role="TrG5h" value="selected" />
              <node concept="3uibUv" id="6YYWkQqby_J" role="1tU5fm">
                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
              </node>
              <node concept="0IXxy" id="6YYWkQqb$7z" role="33vP2m" />
            </node>
          </node>
          <node concept="3clFbF" id="6YYWkQqby_L" role="3cqZAp">
            <node concept="2OqwBi" id="6YYWkQqby_Z" role="3clFbG">
              <node concept="37vLTw" id="6YYWkQqby_N" role="2Oq$k0">
                <ref role="3cqZAo" node="6YYWkQqby_H" resolve="selected" />
              </node>
              <node concept="liA8E" id="6YYWkQqbyA0" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.delete()" resolve="delete" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="jK8Ss" id="6YYWkQqby_E" role="jK8aL">
        <node concept="3clFbS" id="6YYWkQqby_F" role="2VODD2">
          <node concept="3cpWs8" id="6YYWkQqb$7B" role="3cqZAp">
            <node concept="3cpWsn" id="6YYWkQqb$7A" role="3cpWs9">
              <property role="TrG5h" value="selected" />
              <node concept="3uibUv" id="6YYWkQqb$7C" role="1tU5fm">
                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
              </node>
              <node concept="0IXxy" id="6YYWkQqb$8M" role="33vP2m" />
            </node>
          </node>
          <node concept="3cpWs8" id="6YYWkQqb$7F" role="3cqZAp">
            <node concept="3cpWsn" id="6YYWkQqb$7E" role="3cpWs9">
              <property role="TrG5h" value="link" />
              <node concept="3uibUv" id="6YYWkQqb$7G" role="1tU5fm">
                <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
              </node>
              <node concept="2OqwBi" id="6YYWkQqb$8c" role="33vP2m">
                <node concept="37vLTw" id="6YYWkQqb$7U" role="2Oq$k0">
                  <ref role="3cqZAo" node="6YYWkQqb$7A" resolve="selected" />
                </node>
                <node concept="liA8E" id="6YYWkQqb$8d" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getContainmentLink()" resolve="getContainmentLink" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="6YYWkQqb$7I" role="3cqZAp">
            <node concept="1Wc70l" id="6YYWkQqb$7J" role="3cqZAk">
              <node concept="1Wc70l" id="6YYWkQqb$7K" role="3uHU7B">
                <node concept="1Wc70l" id="6YYWkQqb$7L" role="3uHU7B">
                  <node concept="3y3z36" id="6YYWkQqb$7M" role="3uHU7B">
                    <node concept="2OqwBi" id="6YYWkQqb$8o" role="3uHU7B">
                      <node concept="37vLTw" id="6YYWkQqb$7W" role="2Oq$k0">
                        <ref role="3cqZAo" node="6YYWkQqb$7A" resolve="selected" />
                      </node>
                      <node concept="liA8E" id="6YYWkQqb$8p" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getParent()" resolve="getParent" />
                      </node>
                    </node>
                    <node concept="10Nm6u" id="6YYWkQqb$7O" role="3uHU7w" />
                  </node>
                  <node concept="3y3z36" id="6YYWkQqb$7P" role="3uHU7w">
                    <node concept="37vLTw" id="6YYWkQqb$7Q" role="3uHU7B">
                      <ref role="3cqZAo" node="6YYWkQqb$7E" resolve="link" />
                    </node>
                    <node concept="10Nm6u" id="6YYWkQqb$7R" role="3uHU7w" />
                  </node>
                </node>
                <node concept="2OqwBi" id="6YYWkQqb$8$" role="3uHU7w">
                  <node concept="37vLTw" id="6YYWkQqb$7Y" role="2Oq$k0">
                    <ref role="3cqZAo" node="6YYWkQqb$7E" resolve="link" />
                  </node>
                  <node concept="liA8E" id="6YYWkQqb$8_" role="2OqNvi">
                    <ref role="37wK5l" to="c17a:~SAbstractLink.isMultiple()" resolve="isMultiple" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="6YYWkQqb$8K" role="3uHU7w">
                <node concept="37vLTw" id="6YYWkQqb$80" role="2Oq$k0">
                  <ref role="3cqZAo" node="6YYWkQqb$7E" resolve="link" />
                </node>
                <node concept="liA8E" id="6YYWkQqb$8L" role="2OqNvi">
                  <ref role="37wK5l" to="c17a:~SAbstractLink.isOptional()" resolve="isOptional" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1hA7zw" id="1Z4N_lqSBlm" role="1h_SK8">
      <property role="1hAc7j" value="13S4mXuSN7V/insert_action_id" />
      <property role="1hHO97" value="Insert a blank sibling at the end of an optional repeated containment list" />
      <node concept="1hAIg9" id="1Z4N_lqSBln" role="1hA7z_">
        <node concept="3clFbS" id="1Z4N_lqSBlo" role="2VODD2">
          <node concept="3cpWs8" id="1Z4N_lqTciV" role="3cqZAp">
            <node concept="3cpWsn" id="1Z4N_lqTciW" role="3cpWs9">
              <property role="TrG5h" value="selected" />
              <node concept="3uibUv" id="1Z4N_lqTciX" role="1tU5fm">
                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
              </node>
              <node concept="0IXxy" id="1Z4N_lqTciY" role="33vP2m" />
            </node>
          </node>
          <node concept="3cpWs8" id="1Z4N_lqSBlp" role="3cqZAp">
            <node concept="3cpWsn" id="1Z4N_lqSBlq" role="3cpWs9">
              <property role="TrG5h" value="n" />
              <node concept="3uibUv" id="1Z4N_lqSBlr" role="1tU5fm">
                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
              </node>
              <node concept="2OqwBi" id="1Z4N_lqSBls" role="33vP2m">
                <node concept="2OqwBi" id="1Z4N_lqSBlt" role="2Oq$k0">
                  <node concept="liA8E" id="1Z4N_lqSBlu" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SNode.getModel()" resolve="getModel" />
                  </node>
                  <node concept="37vLTw" id="1Z4N_lqTciZ" role="2Oq$k0">
                    <ref role="3cqZAo" node="1Z4N_lqTciW" resolve="selected" />
                  </node>
                </node>
                <node concept="liA8E" id="1Z4N_lqSBly" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SModel.createNode(org.jetbrains.mps.openapi.language.SConcept)" resolve="createNode" />
                  <node concept="2OqwBi" id="1Z4N_lqSBlz" role="37wK5m">
                    <node concept="liA8E" id="1Z4N_lqSBl$" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                    </node>
                    <node concept="37vLTw" id="1Z4N_lqTcj0" role="2Oq$k0">
                      <ref role="3cqZAo" node="1Z4N_lqTciW" resolve="selected" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="1Z4N_lqTkxa" role="3cqZAp">
            <node concept="2OqwBi" id="1Z4N_lqTkyg" role="3clFbG">
              <node concept="2OqwBi" id="1Z4N_lqTkxI" role="2Oq$k0">
                <node concept="37vLTw" id="1Z4N_lqTkxo" role="2Oq$k0">
                  <ref role="3cqZAo" node="1Z4N_lqTciW" resolve="selected" />
                </node>
                <node concept="liA8E" id="1Z4N_lqTkxJ" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getParent()" resolve="getParent" />
                </node>
              </node>
              <node concept="liA8E" id="1Z4N_lqTkyh" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.insertChildAfter(org.jetbrains.mps.openapi.language.SContainmentLink,org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode)" resolve="insertChildAfter" />
                <node concept="2OqwBi" id="1Z4N_lqTkyi" role="37wK5m">
                  <node concept="37vLTw" id="1Z4N_lqTkyj" role="2Oq$k0">
                    <ref role="3cqZAo" node="1Z4N_lqTciW" resolve="selected" />
                  </node>
                  <node concept="liA8E" id="1Z4N_lqTkyk" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SNode.getContainmentLink()" resolve="getContainmentLink" />
                  </node>
                </node>
                <node concept="37vLTw" id="1Z4N_lqTkyl" role="37wK5m">
                  <ref role="3cqZAo" node="1Z4N_lqSBlq" resolve="n" />
                </node>
                <node concept="37vLTw" id="1Z4N_lqTkym" role="37wK5m">
                  <ref role="3cqZAo" node="1Z4N_lqTciW" resolve="selected" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="1Z4N_lqSBlC" role="3cqZAp">
            <node concept="2OqwBi" id="1Z4N_lqSBlD" role="3clFbG">
              <node concept="1OKiuA" id="1Z4N_lqSBlF" role="2OqNvi">
                <node concept="1Q80Hx" id="1Z4N_lqSBlG" role="lBI5i" />
                <node concept="1lyA5W" id="4rN8lbgEC7d" role="lGT1i">
                  <property role="1lUG9U" value="selector_first_editable|selector_first" />
                </node>
              </node>
              <node concept="1PxgMI" id="1Z4N_lqSD6v" role="2Oq$k0">
                <property role="1BlNFB" value="true" />
                <node concept="chp4Y" id="1Z4N_lqSD6w" role="3oSUPX">
                  <ref role="cht4Q" to="tpck:gw2VY9q" resolve="BaseConcept" />
                </node>
                <node concept="37vLTw" id="1Z4N_lqSD6$" role="1m5AlR">
                  <ref role="3cqZAo" node="1Z4N_lqSBlq" resolve="n" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="jK8Ss" id="1Z4N_lqSBlI" role="jK8aL">
        <node concept="3clFbS" id="1Z4N_lqSBlJ" role="2VODD2">
          <node concept="3cpWs8" id="1Z4N_lqSBlK" role="3cqZAp">
            <node concept="3cpWsn" id="1Z4N_lqSBlL" role="3cpWs9">
              <property role="TrG5h" value="selected" />
              <node concept="3uibUv" id="1Z4N_lqSBlM" role="1tU5fm">
                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
              </node>
              <node concept="0IXxy" id="1Z4N_lqSBlN" role="33vP2m" />
            </node>
          </node>
          <node concept="3cpWs8" id="1Z4N_lqSBlO" role="3cqZAp">
            <node concept="3cpWsn" id="1Z4N_lqSBlP" role="3cpWs9">
              <property role="TrG5h" value="link" />
              <node concept="3uibUv" id="1Z4N_lqSBlQ" role="1tU5fm">
                <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
              </node>
              <node concept="2OqwBi" id="1Z4N_lqSBlR" role="33vP2m">
                <node concept="37vLTw" id="1Z4N_lqSBlS" role="2Oq$k0">
                  <ref role="3cqZAo" node="1Z4N_lqSBlL" resolve="selected" />
                </node>
                <node concept="liA8E" id="1Z4N_lqSBlT" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getContainmentLink()" resolve="getContainmentLink" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="1Z4N_lqSBlU" role="3cqZAp">
            <node concept="1Wc70l" id="1Z4N_lqSBlV" role="3cqZAk">
              <node concept="1Wc70l" id="1Z4N_lqSBlW" role="3uHU7B">
                <node concept="1Wc70l" id="1Z4N_lqSBlX" role="3uHU7B">
                  <node concept="1Wc70l" id="1Z4N_lqSBlY" role="3uHU7B">
                    <node concept="3y3z36" id="1Z4N_lqSBlZ" role="3uHU7B">
                      <node concept="2OqwBi" id="1Z4N_lqSBm0" role="3uHU7B">
                        <node concept="37vLTw" id="1Z4N_lqSBm1" role="2Oq$k0">
                          <ref role="3cqZAo" node="1Z4N_lqSBlL" resolve="selected" />
                        </node>
                        <node concept="liA8E" id="1Z4N_lqSBm2" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SNode.getParent()" resolve="getParent" />
                        </node>
                      </node>
                      <node concept="10Nm6u" id="1Z4N_lqSBm3" role="3uHU7w" />
                    </node>
                    <node concept="3y3z36" id="1Z4N_lqSBm4" role="3uHU7w">
                      <node concept="37vLTw" id="1Z4N_lqSBm5" role="3uHU7B">
                        <ref role="3cqZAo" node="1Z4N_lqSBlP" resolve="link" />
                      </node>
                      <node concept="10Nm6u" id="1Z4N_lqSBm6" role="3uHU7w" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="1Z4N_lqSBm7" role="3uHU7w">
                    <node concept="37vLTw" id="1Z4N_lqSBm8" role="2Oq$k0">
                      <ref role="3cqZAo" node="1Z4N_lqSBlP" resolve="link" />
                    </node>
                    <node concept="liA8E" id="1Z4N_lqSBm9" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractLink.isMultiple()" resolve="isMultiple" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="1Z4N_lqSBma" role="3uHU7w">
                  <node concept="37vLTw" id="1Z4N_lqSBmb" role="2Oq$k0">
                    <ref role="3cqZAo" node="1Z4N_lqSBlP" resolve="link" />
                  </node>
                  <node concept="liA8E" id="1Z4N_lqSBmc" role="2OqNvi">
                    <ref role="37wK5l" to="c17a:~SAbstractLink.isOptional()" resolve="isOptional" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="1Z4N_lqSBmd" role="3uHU7w">
                <node concept="2OqwBi" id="1Z4N_lqSBme" role="2Oq$k0">
                  <node concept="0IXxy" id="1Z4N_lqSBmf" role="2Oq$k0" />
                  <node concept="YCak7" id="1Z4N_lqSBmg" role="2OqNvi" />
                </node>
                <node concept="3w_OXm" id="1Z4N_lqSBmh" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="3R$mY2PS4UP">
    <property role="TrG5h" value="StateMachine_Editor" />
    <ref role="1XX52x" to="n2m4:3R$mY2PS4TB" resolve="StateMachine" />
    <node concept="3EZMnI" id="3R$mY2PS4UQ" role="2wV5jI">
      <node concept="2iRkQZ" id="3R$mY2PS4UR" role="2iSdaV" />
      <node concept="3F0ifn" id="3R$mY2PS4UH" role="3EZMnx">
        <property role="3F0ifm" value="machine " />
      </node>
      <node concept="3F0A7n" id="3R$mY2PS4UI" role="3EZMnx">
        <ref role="1NtTu8" to="n2m4:3R$mY2PS4TF" resolve="identifier" />
      </node>
      <node concept="3F0ifn" id="3R$mY2PS4UJ" role="3EZMnx">
        <property role="3F0ifm" value=" events " />
      </node>
      <node concept="3F2HdR" id="3R$mY2PS4UK" role="3EZMnx">
        <property role="2czwfO" value=", " />
        <ref role="1NtTu8" to="n2m4:3R$mY2PS4TK" resolve="events" />
        <node concept="2iRfu4" id="3R$mY2PS4UL" role="2czzBx" />
      </node>
      <node concept="3F0ifn" id="3R$mY2PS4UM" role="3EZMnx">
        <property role="3F0ifm" value=" states " />
      </node>
      <node concept="3F2HdR" id="3R$mY2PS4UN" role="3EZMnx">
        <property role="2czwfO" value="; " />
        <ref role="1NtTu8" to="n2m4:3R$mY2PS4TL" resolve="states" />
        <node concept="2iRkQZ" id="3R$mY2PS4UO" role="2czzBx" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="3R$mY2PS4V0">
    <property role="TrG5h" value="StateMachine_MatrixEditor" />
    <ref role="1XX52x" to="n2m4:3R$mY2PS4TB" resolve="StateMachine" />
    <node concept="3EZMnI" id="3R$mY2PS4V1" role="2wV5jI">
      <node concept="2iRkQZ" id="3R$mY2PS4V2" role="2iSdaV" />
      <node concept="3F0ifn" id="3R$mY2PS4US" role="3EZMnx">
        <property role="3F0ifm" value="State/event transition matrix — " />
      </node>
      <node concept="3F0A7n" id="3R$mY2PS4UT" role="3EZMnx">
        <ref role="1NtTu8" to="n2m4:3R$mY2PS4TF" resolve="identifier" />
      </node>
      <node concept="3F0ifn" id="3R$mY2PS4UU" role="3EZMnx">
        <property role="3F0ifm" value="Event columns: " />
      </node>
      <node concept="3F2HdR" id="3R$mY2PS4UV" role="3EZMnx">
        <property role="2czwfO" value=" | " />
        <ref role="1NtTu8" to="n2m4:3R$mY2PS4TK" resolve="events" />
        <node concept="2iRfu4" id="3R$mY2PS4UW" role="2czzBx" />
      </node>
      <node concept="3F0ifn" id="3R$mY2PS4UX" role="3EZMnx">
        <property role="3F0ifm" value="State rows: " />
      </node>
      <node concept="3F2HdR" id="3R$mY2PS4UY" role="3EZMnx">
        <property role="2czwfO" value="&#10;" />
        <ref role="1NtTu8" to="n2m4:3R$mY2PS4TL" resolve="states" />
        <node concept="fvoJi" id="3R$mY2PS4UZ" role="2czzBx" />
      </node>
    </node>
    <node concept="2aJ2om" id="3R$mY2PS4V3" role="CpUAK">
      <ref role="2$4xQ3" node="3R$mY2PS4UG" resolve="StateEventMatrix" />
    </node>
  </node>
  <node concept="24kQdi" id="3R$mY2PS4V6">
    <property role="TrG5h" value="Event_Editor" />
    <ref role="1XX52x" to="n2m4:3R$mY2PS4TC" resolve="Event" />
    <node concept="3EZMnI" id="3R$mY2PS4V7" role="2wV5jI">
      <node concept="2iRfu4" id="3R$mY2PS4V8" role="2iSdaV" />
      <node concept="3F0ifn" id="3R$mY2PS4V4" role="3EZMnx">
        <property role="3F0ifm" value="event " />
      </node>
      <node concept="3F0A7n" id="3R$mY2PS4V5" role="3EZMnx">
        <ref role="1NtTu8" to="n2m4:3R$mY2PS4TG" resolve="identifier" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="3R$mY2PS4Ve">
    <property role="TrG5h" value="State_Editor" />
    <ref role="1XX52x" to="n2m4:3R$mY2PS4TD" resolve="State" />
    <node concept="3EZMnI" id="3R$mY2PS4Vf" role="2wV5jI">
      <node concept="2iRfu4" id="3R$mY2PS4Vg" role="2iSdaV" />
      <node concept="3F0ifn" id="3R$mY2PS4V9" role="3EZMnx">
        <property role="3F0ifm" value="state " />
      </node>
      <node concept="3F0A7n" id="3R$mY2PS4Va" role="3EZMnx">
        <ref role="1NtTu8" to="n2m4:3R$mY2PS4TH" resolve="identifier" />
      </node>
      <node concept="3F0ifn" id="3R$mY2PS4Vb" role="3EZMnx">
        <property role="3F0ifm" value=" : " />
      </node>
      <node concept="3F2HdR" id="3R$mY2PS4Vc" role="3EZMnx">
        <property role="2czwfO" value=" | " />
        <ref role="1NtTu8" to="n2m4:3R$mY2PS4TM" resolve="transitions" />
        <node concept="2iRfu4" id="3R$mY2PS4Vd" role="2czzBx" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="3R$mY2PS4Vl">
    <property role="TrG5h" value="State_MatrixEditor" />
    <ref role="1XX52x" to="n2m4:3R$mY2PS4TD" resolve="State" />
    <node concept="3EZMnI" id="3R$mY2PS4Vm" role="2wV5jI">
      <node concept="2iRfu4" id="3R$mY2PS4Vn" role="2iSdaV" />
      <node concept="3F0A7n" id="3R$mY2PS4Vh" role="3EZMnx">
        <ref role="1NtTu8" to="n2m4:3R$mY2PS4TH" resolve="identifier" />
      </node>
      <node concept="3F0ifn" id="3R$mY2PS4Vi" role="3EZMnx">
        <property role="3F0ifm" value=" | " />
      </node>
      <node concept="3F2HdR" id="3R$mY2PS4Vj" role="3EZMnx">
        <property role="2czwfO" value=" | " />
        <ref role="1NtTu8" to="n2m4:3R$mY2PS4TM" resolve="transitions" />
        <node concept="2iRfu4" id="3R$mY2PS4Vk" role="2czzBx" />
      </node>
    </node>
    <node concept="2aJ2om" id="3R$mY2PS4Vo" role="CpUAK">
      <ref role="2$4xQ3" node="3R$mY2PS4UG" resolve="StateEventMatrix" />
    </node>
  </node>
  <node concept="24kQdi" id="3R$mY2PS4Vt">
    <property role="TrG5h" value="Transition_Editor" />
    <ref role="1XX52x" to="n2m4:3R$mY2PS4TE" resolve="Transition" />
    <node concept="3EZMnI" id="3R$mY2PS4Vu" role="2wV5jI">
      <node concept="2iRfu4" id="3R$mY2PS4Vv" role="2iSdaV" />
      <node concept="3F0ifn" id="3R$mY2PS4Vp" role="3EZMnx">
        <property role="3F0ifm" value="on " />
      </node>
      <node concept="3F0A7n" id="3R$mY2PS4Vq" role="3EZMnx">
        <ref role="1NtTu8" to="n2m4:3R$mY2PS4TI" resolve="event" />
      </node>
      <node concept="3F0ifn" id="3R$mY2PS4Vr" role="3EZMnx">
        <property role="3F0ifm" value=" → " />
      </node>
      <node concept="3F0A7n" id="3R$mY2PS4Vs" role="3EZMnx">
        <ref role="1NtTu8" to="n2m4:3R$mY2PS4TJ" resolve="target" />
      </node>
    </node>
  </node>
  <node concept="2ABfQD" id="3R$mY2PS9GN">
    <property role="TrG5h" value="StateEventMatrixContext" />
    <node concept="2BsEeg" id="3R$mY2PS4UG" role="2ABdcP">
      <property role="TrG5h" value="StateEventMatrix" />
      <property role="2BUmq6" value="State/event matrix" />
      <property role="2gpH_U" value="true" />
    </node>
  </node>
</model>

