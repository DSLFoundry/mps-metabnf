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
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1402906326895675325" name="jetbrains.mps.lang.editor.structure.CellActionMap_FunctionParm_selectedNode" flags="ng" index="0IXxy" />
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi">
        <child id="1078153129734" name="inspectedCellModel" index="6VMZX" />
        <child id="2597348684684069742" name="contextHints" index="CpUAK" />
      </concept>
      <concept id="1176897764478" name="jetbrains.mps.lang.editor.structure.QueryFunction_NodeFactory" flags="ig" index="4$FPG" />
      <concept id="6822301196700715228" name="jetbrains.mps.lang.editor.structure.ConceptEditorHintDeclarationReference" flags="ig" index="2aJ2om">
        <reference id="5944657839026714445" name="hint" index="2$4xQ3" />
      </concept>
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <property id="1140524450557" name="separatorText" index="2czwfO" />
        <child id="1176897874615" name="nodeFactory" index="4_6I_" />
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
      </concept>
      <concept id="5949640294884234625" name="jetbrains.mps.lang.editor.structure.CellLayout_Table" flags="ng" index="fvoJi" />
      <concept id="1106270549637" name="jetbrains.mps.lang.editor.structure.CellLayout_Horizontal" flags="ng" index="2iRfu4" />
      <concept id="1106270571710" name="jetbrains.mps.lang.editor.structure.CellLayout_Vertical" flags="ng" index="2iRkQZ" />
      <concept id="3459162043708467089" name="jetbrains.mps.lang.editor.structure.CellActionMap_CanExecuteFunction" flags="ig" index="jK8Ss" />
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="ng" index="l2Vlx" />
      <concept id="1237307900041" name="jetbrains.mps.lang.editor.structure.IndentLayoutIndentStyleClassItem" flags="lg" index="lj46D" />
      <concept id="1142886811589" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_node" flags="ng" index="pncrf" />
      <concept id="1237385578942" name="jetbrains.mps.lang.editor.structure.IndentLayoutOnNewLineStyleClassItem" flags="lg" index="pVoyu" />
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
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="lg" index="VOi$J">
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
      <concept id="1139535439104" name="jetbrains.mps.lang.editor.structure.CellActionMap_ExecuteFunction" flags="ig" index="1hAIg9" />
      <concept id="2162403111523059536" name="jetbrains.mps.lang.editor.structure.IdSelector" flags="ng" index="1lyA5W">
        <property id="2162403111529391190" name="cellId" index="1lUG9U" />
      </concept>
      <concept id="1165424453110" name="jetbrains.mps.lang.editor.structure.CellMenuPart_Generic_Item" flags="ng" index="1oHujT">
        <property id="1165424453111" name="matchingText" index="1oHujS" />
        <child id="1165424453112" name="handlerFunction" index="1oHujR" />
      </concept>
      <concept id="1165424657443" name="jetbrains.mps.lang.editor.structure.CellMenuPart_Generic_Item_Handler" flags="ig" index="1oIgkG" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1073389214265" name="jetbrains.mps.lang.editor.structure.EditorCellModel" flags="ng" index="3EYTF0">
        <reference id="1139959269582" name="actionMap" index="1ERwB7" />
        <child id="1164826688380" name="menuDescriptor" index="P5bDN" />
        <child id="4323500428121274054" name="id" index="2SqHTX" />
      </concept>
      <concept id="1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" flags="sg" stub="3013115976261988961" index="3EZMnI">
        <child id="1106270802874" name="cellLayout" index="2iSdaV" />
        <child id="1073389446424" name="childCellModel" index="3EZMnx" />
      </concept>
      <concept id="1073389577006" name="jetbrains.mps.lang.editor.structure.CellModel_Constant" flags="sg" stub="3610246225209162225" index="3F0ifn">
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
      <concept id="1163613822479" name="jetbrains.mps.lang.editor.structure.CellMenuPart_Abstract_editedNode" flags="ng" index="3GMtW1" />
      <concept id="3647146066980922272" name="jetbrains.mps.lang.editor.structure.SelectInEditorOperation" flags="ng" index="1OKiuA">
        <child id="1948540814633499358" name="editorContext" index="lBI5i" />
        <child id="1948540814635895774" name="cellSelector" index="lGT1i" />
        <child id="2701921320705252232" name="selectionEnd" index="mNZMC" />
        <child id="3604384757217586546" name="selectionStart" index="3dN3m$" />
      </concept>
      <concept id="1161622981231" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_editorContext" flags="ng" index="1Q80Hx" />
      <concept id="1176717779940" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_text" flags="ng" index="3TQ6bP" />
      <concept id="1176717841777" name="jetbrains.mps.lang.editor.structure.QueryFunction_ModelAccess_Getter" flags="ig" index="3TQlhw" />
      <concept id="1176717871254" name="jetbrains.mps.lang.editor.structure.QueryFunction_ModelAccess_Setter" flags="ig" index="3TQsA7" />
      <concept id="1176717888428" name="jetbrains.mps.lang.editor.structure.QueryFunction_ModelAccess_Validator" flags="ig" index="3TQwEX" />
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
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="ng" index="22lmx$" />
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="ng" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1153417849900" name="jetbrains.mps.baseLanguage.structure.GreaterThanOrEqualsExpression" flags="ng" index="2d3UOw" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="ng" index="liA8E" />
      <concept id="1239714755177" name="jetbrains.mps.baseLanguage.structure.AbstractUnaryNumberOperation" flags="ng" index="2$Kvd9">
        <child id="1239714902950" name="expression" index="2$L3a6" />
      </concept>
      <concept id="1173175405605" name="jetbrains.mps.baseLanguage.structure.ArrayAccessExpression" flags="ng" index="AH0OO">
        <child id="1173175577737" name="index" index="AHEQo" />
        <child id="1173175590490" name="array" index="AHHXb" />
      </concept>
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="ng" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="ng" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="ng" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="ig" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="ng" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="ng" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1164991038168" name="jetbrains.mps.baseLanguage.structure.ThrowStatement" flags="ng" index="YS8fn">
        <child id="1164991057263" name="throwable" index="YScLw" />
      </concept>
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="ng" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="ng" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="ig" index="10Oyi0" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="ig" index="10P_77" />
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="ig" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="ng" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="ng" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="ng" index="37vLTI" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="ng" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="ng" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="ng" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sg" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="ng" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="ng" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="ng" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="ng" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="ng" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="ig" index="3cqZAl" />
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="ng" index="3eOVzh" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="ng" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1154542696413" name="jetbrains.mps.baseLanguage.structure.ArrayCreatorWithInitializer" flags="ng" index="3g6Rrh">
        <child id="1154542793668" name="componentType" index="3g7fb8" />
        <child id="1154542803372" name="initValue" index="3g7hyw" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="ng" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="ng" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="ig" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="ng" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1214918800624" name="jetbrains.mps.baseLanguage.structure.PostfixIncrementExpression" flags="ng" index="3uNrnE" />
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="ng" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ngI" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1144226303539" name="jetbrains.mps.baseLanguage.structure.ForeachStatement" flags="ng" index="1DcWWT">
        <child id="1144226360166" name="iterable" index="1DdaDG" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="ng" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="1144231330558" name="jetbrains.mps.baseLanguage.structure.ForStatement" flags="ng" index="1Dw8fO">
        <child id="1144231399730" name="condition" index="1Dwp0S" />
        <child id="1144231408325" name="iteration" index="1Dwrff" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="ng" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1082113931046" name="jetbrains.mps.baseLanguage.structure.ContinueStatement" flags="ng" index="3N13vt" />
      <concept id="1208890769693" name="jetbrains.mps.baseLanguage.structure.ArrayLengthOperation" flags="ng" index="1Rwk04" />
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="ng" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="ng" index="3Tm6S6" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="ng" index="1Wc70l" />
      <concept id="8064396509828172209" name="jetbrains.mps.baseLanguage.structure.UnaryMinus" flags="ng" index="1ZRNhn" />
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
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="ng" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="ng" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1143512015885" name="jetbrains.mps.lang.smodel.structure.Node_GetNextSiblingOperation" flags="ng" index="YCak7" />
      <concept id="1171999116870" name="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" flags="ng" index="3w_OXm" />
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="ng" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="ng" index="1PxgMI">
        <property id="1238684351431" name="asCast" index="1BlNFB" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="ig" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="ng" index="3TrcHB">
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
  <node concept="1h_SRR" id="11IbrVuMMfS">
    <property role="TrG5h" value="Expression_ActionMap" />
    <ref role="1h_SK9" to="n2m4:7cJxwpjJw00" resolve="Expression" />
    <node concept="1hA7zw" id="11IbrVuMMfT" role="1h_SK8">
      <property role="1hAc7j" value="g_hAxAO/delete_action_id" />
      <property role="1hHO97" value="Remove redundant grouping parentheses when the structure is preserved" />
      <node concept="1hAIg9" id="11IbrVuMMfU" role="1hA7z_">
        <node concept="3clFbS" id="11IbrVuMMfV" role="2VODD2">
          <node concept="3cpWs8" id="11IbrVuMMfW" role="3cqZAp">
            <node concept="3cpWsn" id="11IbrVuMMfX" role="3cpWs9">
              <property role="TrG5h" value="selected" />
              <node concept="3uibUv" id="11IbrVuMMfY" role="1tU5fm">
                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
              </node>
              <node concept="0IXxy" id="11IbrVuMMfZ" role="33vP2m" />
            </node>
          </node>
          <node concept="3clFbF" id="11IbrVuMMhO" role="3cqZAp">
            <node concept="2YIFZM" id="11IbrVuMMhR" role="3clFbG">
              <ref role="1Pybhc" node="11IbrVuV6Qy" resolve="ExpressionEditing" />
              <ref role="37wK5l" node="11IbrVuV6ZQ" resolve="unwrap" />
              <node concept="37vLTw" id="11IbrVuMMhS" role="37wK5m">
                <ref role="3cqZAo" node="11IbrVuMMfX" resolve="selected" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="jK8Ss" id="11IbrVuMMg4" role="jK8aL">
        <node concept="3clFbS" id="11IbrVuMMg5" role="2VODD2">
          <node concept="3cpWs8" id="11IbrVuMMg6" role="3cqZAp">
            <node concept="3cpWsn" id="11IbrVuMMg7" role="3cpWs9">
              <property role="TrG5h" value="selected" />
              <node concept="3uibUv" id="11IbrVuMMg8" role="1tU5fm">
                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
              </node>
              <node concept="0IXxy" id="11IbrVuMMg9" role="33vP2m" />
            </node>
          </node>
          <node concept="3cpWs6" id="11IbrVuMMhG" role="3cqZAp">
            <node concept="2YIFZM" id="11IbrVuMMhJ" role="3cqZAk">
              <ref role="1Pybhc" node="11IbrVuV6Qy" resolve="ExpressionEditing" />
              <ref role="37wK5l" node="11IbrVuV6Z4" resolve="canUnwrap" />
              <node concept="37vLTw" id="11IbrVuMMhK" role="37wK5m">
                <ref role="3cqZAo" node="11IbrVuMMg7" resolve="selected" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1hA7zw" id="11IbrVuMMgy" role="1h_SK8">
      <property role="1hAc7j" value="13S4mXuSN7V/insert_action_id" />
      <property role="1hHO97" value="Append a precedence-safe operand after the selected expression" />
      <node concept="1hAIg9" id="11IbrVuMMgz" role="1hA7z_">
        <node concept="3clFbS" id="11IbrVuMMg$" role="2VODD2">
          <node concept="3cpWs8" id="11IbrVuMMg_" role="3cqZAp">
            <node concept="3cpWsn" id="11IbrVuMMgA" role="3cpWs9">
              <property role="TrG5h" value="selected" />
              <node concept="3uibUv" id="11IbrVuMMgB" role="1tU5fm">
                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
              </node>
              <node concept="0IXxy" id="11IbrVuMMgC" role="33vP2m" />
            </node>
          </node>
          <node concept="3cpWs8" id="11IbrVuMMgD" role="3cqZAp">
            <node concept="3cpWsn" id="11IbrVuMMgE" role="3cpWs9">
              <property role="TrG5h" value="n" />
              <node concept="3uibUv" id="11IbrVuMMgF" role="1tU5fm">
                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
              </node>
              <node concept="2YIFZM" id="11IbrVuMMia" role="33vP2m">
                <ref role="1Pybhc" node="11IbrVuV6Qy" resolve="ExpressionEditing" />
                <ref role="37wK5l" node="11IbrVuV6XU" resolve="appendOperand" />
                <node concept="37vLTw" id="11IbrVuMMib" role="37wK5m">
                  <ref role="3cqZAo" node="11IbrVuMMgA" resolve="selected" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="11IbrVuMMgZ" role="3cqZAp">
            <node concept="2OqwBi" id="11IbrVuMMh0" role="3clFbG">
              <node concept="1OKiuA" id="11IbrVuMMh1" role="2OqNvi">
                <node concept="1Q80Hx" id="11IbrVuMMh2" role="lBI5i" />
                <node concept="1lyA5W" id="11IbrVuMMh3" role="lGT1i">
                  <property role="1lUG9U" value="selector_first_editable|selector_first" />
                </node>
              </node>
              <node concept="1PxgMI" id="11IbrVuMMh4" role="2Oq$k0">
                <property role="1BlNFB" value="true" />
                <node concept="chp4Y" id="11IbrVuMMh5" role="3oSUPX">
                  <ref role="cht4Q" to="tpck:gw2VY9q" resolve="BaseConcept" />
                </node>
                <node concept="37vLTw" id="11IbrVuMMh6" role="1m5AlR">
                  <ref role="3cqZAo" node="11IbrVuMMgE" resolve="n" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="jK8Ss" id="11IbrVuMMh7" role="jK8aL">
        <node concept="3clFbS" id="11IbrVuMMh8" role="2VODD2">
          <node concept="3cpWs8" id="11IbrVuMMh9" role="3cqZAp">
            <node concept="3cpWsn" id="11IbrVuMMha" role="3cpWs9">
              <property role="TrG5h" value="selected" />
              <node concept="3uibUv" id="11IbrVuMMhb" role="1tU5fm">
                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
              </node>
              <node concept="0IXxy" id="11IbrVuMMhc" role="33vP2m" />
            </node>
          </node>
          <node concept="3cpWs6" id="11IbrVuMMhW" role="3cqZAp">
            <node concept="3y3z36" id="11IbrVuMMhX" role="3cqZAk">
              <node concept="37vLTw" id="11IbrVuMMhY" role="3uHU7B">
                <ref role="3cqZAo" node="11IbrVuMMha" resolve="selected" />
              </node>
              <node concept="10Nm6u" id="11IbrVuMMhZ" role="3uHU7w" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1hA7zw" id="11IbrVuPZCm" role="1h_SK8">
      <property role="1hAc7j" value="7P1WhNABvta/backspace_action_id" />
      <property role="1hHO97" value="Remove redundant grouping parentheses when the structure is preserved" />
      <node concept="1hAIg9" id="11IbrVuPZCn" role="1hA7z_">
        <node concept="3clFbS" id="11IbrVuPZCo" role="2VODD2">
          <node concept="3cpWs8" id="11IbrVuPZCp" role="3cqZAp">
            <node concept="3cpWsn" id="11IbrVuPZCq" role="3cpWs9">
              <property role="TrG5h" value="selected" />
              <node concept="3uibUv" id="11IbrVuPZCr" role="1tU5fm">
                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
              </node>
              <node concept="0IXxy" id="11IbrVuPZCs" role="33vP2m" />
            </node>
          </node>
          <node concept="3clFbF" id="11IbrVuPZCt" role="3cqZAp">
            <node concept="2YIFZM" id="11IbrVuPZCu" role="3clFbG">
              <ref role="1Pybhc" node="11IbrVuV6Qy" resolve="ExpressionEditing" />
              <ref role="37wK5l" node="11IbrVuV6ZQ" resolve="unwrap" />
              <node concept="37vLTw" id="11IbrVuPZCv" role="37wK5m">
                <ref role="3cqZAo" node="11IbrVuPZCq" resolve="selected" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="jK8Ss" id="11IbrVuPZCw" role="jK8aL">
        <node concept="3clFbS" id="11IbrVuPZCx" role="2VODD2">
          <node concept="3cpWs8" id="11IbrVuPZCy" role="3cqZAp">
            <node concept="3cpWsn" id="11IbrVuPZCz" role="3cpWs9">
              <property role="TrG5h" value="selected" />
              <node concept="3uibUv" id="11IbrVuPZC$" role="1tU5fm">
                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
              </node>
              <node concept="0IXxy" id="11IbrVuPZC_" role="33vP2m" />
            </node>
          </node>
          <node concept="3cpWs6" id="11IbrVuPZCA" role="3cqZAp">
            <node concept="2YIFZM" id="11IbrVuPZCB" role="3cqZAk">
              <ref role="1Pybhc" node="11IbrVuV6Qy" resolve="ExpressionEditing" />
              <ref role="37wK5l" node="11IbrVuV6Z4" resolve="canUnwrap" />
              <node concept="37vLTw" id="11IbrVuPZCC" role="37wK5m">
                <ref role="3cqZAo" node="11IbrVuPZCz" resolve="selected" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="11IbrVuMMic">
    <property role="TrG5h" value="Operand_Editor" />
    <property role="3GE5qa" value="expression" />
    <ref role="1XX52x" to="n2m4:7cJxwpjJw01" resolve="Operand" />
    <node concept="3EZMnI" id="11IbrVuMMid" role="2wV5jI">
      <ref role="1ERwB7" node="11IbrVuMMfS" resolve="Expression_ActionMap" />
      <node concept="2iRfu4" id="11IbrVuMMie" role="2iSdaV" />
      <node concept="3F0A7n" id="11IbrVuMMif" role="3EZMnx">
        <ref role="1NtTu8" to="n2m4:7cJxwpjJw02" resolve="name" />
        <ref role="1ERwB7" node="11IbrVuMMfS" resolve="Expression_ActionMap" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="11IbrVuMMig">
    <property role="TrG5h" value="Group_Editor" />
    <property role="3GE5qa" value="expression" />
    <ref role="1XX52x" to="n2m4:7cJxwpjJw07" resolve="Group" />
    <node concept="3EZMnI" id="11IbrVuMMih" role="2wV5jI">
      <ref role="1ERwB7" node="11IbrVuMMfS" resolve="Expression_ActionMap" />
      <node concept="2iRfu4" id="11IbrVuMMii" role="2iSdaV" />
      <node concept="3F0ifn" id="11IbrVuMMij" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <ref role="1ERwB7" node="11IbrVuMMfS" resolve="Expression_ActionMap" />
        <node concept="2SqB2G" id="11IbrVuNf2$" role="2SqHTX">
          <property role="TrG5h" value="open" />
        </node>
      </node>
      <node concept="3F1sOY" id="11IbrVuMMik" role="3EZMnx">
        <ref role="1NtTu8" to="n2m4:7cJxwpjJw08" resolve="inner" />
      </node>
      <node concept="3F0ifn" id="11IbrVuMMil" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <ref role="1ERwB7" node="11IbrVuMMfS" resolve="Expression_ActionMap" />
        <node concept="2SqB2G" id="11IbrVuNf2_" role="2SqHTX">
          <property role="TrG5h" value="close" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="11IbrVuMMim">
    <property role="TrG5h" value="Calculation_Editor" />
    <property role="3GE5qa" value="expression" />
    <ref role="1XX52x" to="n2m4:7cJxwpjJw1$" resolve="Calculation" />
    <node concept="3EZMnI" id="11IbrVuMMin" role="2wV5jI">
      <node concept="2iRfu4" id="11IbrVuMMio" role="2iSdaV" />
      <node concept="3F0ifn" id="11IbrVuMMip" role="3EZMnx">
        <property role="3F0ifm" value="calc" />
      </node>
      <node concept="3F1sOY" id="11IbrVuMMiq" role="3EZMnx">
        <ref role="1NtTu8" to="n2m4:7cJxwpjJw1_" resolve="expression" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="11IbrVuMMir">
    <property role="TrG5h" value="BinaryExpression_Editor" />
    <property role="3GE5qa" value="expression" />
    <ref role="1XX52x" to="n2m4:7cJxwpjJw03" resolve="BinaryExpression" />
    <node concept="3EZMnI" id="11IbrVuMMis" role="2wV5jI">
      <ref role="1ERwB7" node="11IbrVuMMfS" resolve="Expression_ActionMap" />
      <node concept="2iRfu4" id="11IbrVuMMit" role="2iSdaV" />
      <node concept="3F1sOY" id="11IbrVuMMjk" role="3EZMnx">
        <ref role="1NtTu8" to="n2m4:7cJxwpjJw05" resolve="left" />
      </node>
      <node concept="XafU7" id="11IbrVuMMiu" role="3EZMnx">
        <node concept="3TQVft" id="11IbrVuMMiv" role="3TRxkO">
          <node concept="3TQlhw" id="11IbrVuMMiw" role="3TQWv3">
            <node concept="3clFbS" id="11IbrVuMMiz" role="2VODD2">
              <node concept="3cpWs8" id="11IbrVuMMiC" role="3cqZAp">
                <node concept="3cpWsn" id="11IbrVuMMiB" role="3cpWs9">
                  <property role="TrG5h" value="selected" />
                  <node concept="3uibUv" id="11IbrVuMMiD" role="1tU5fm">
                    <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                  </node>
                  <node concept="pncrf" id="11IbrVuMMiM" role="33vP2m" />
                </node>
              </node>
              <node concept="3cpWs6" id="11IbrVuMMiF" role="3cqZAp">
                <node concept="2YIFZM" id="11IbrVuMMiI" role="3cqZAk">
                  <ref role="1Pybhc" node="11IbrVuV6Qy" resolve="ExpressionEditing" />
                  <ref role="37wK5l" node="11IbrVuV6V0" resolve="operator" />
                  <node concept="37vLTw" id="11IbrVuMMiJ" role="37wK5m">
                    <ref role="3cqZAo" node="11IbrVuMMiB" resolve="selected" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3TQsA7" id="11IbrVuMMix" role="3TQXYj">
            <node concept="3clFbS" id="11IbrVuMMi$" role="2VODD2">
              <node concept="3cpWs8" id="11IbrVuMMiP" role="3cqZAp">
                <node concept="3cpWsn" id="11IbrVuMMiO" role="3cpWs9">
                  <property role="TrG5h" value="selected" />
                  <node concept="3uibUv" id="11IbrVuMMiQ" role="1tU5fm">
                    <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                  </node>
                  <node concept="pncrf" id="11IbrVuMMj5" role="33vP2m" />
                </node>
              </node>
              <node concept="3cpWs8" id="11IbrVuMMiT" role="3cqZAp">
                <node concept="3cpWsn" id="11IbrVuMMiS" role="3cpWs9">
                  <property role="TrG5h" value="value" />
                  <node concept="3uibUv" id="11IbrVuMMiU" role="1tU5fm">
                    <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                  </node>
                  <node concept="3TQ6bP" id="11IbrVuMMj6" role="33vP2m" />
                </node>
              </node>
              <node concept="3clFbF" id="11IbrVuMMiW" role="3cqZAp">
                <node concept="2YIFZM" id="11IbrVuMMj0" role="3clFbG">
                  <ref role="1Pybhc" node="11IbrVuV6Qy" resolve="ExpressionEditing" />
                  <ref role="37wK5l" node="11IbrVuV6X7" resolve="replaceOperator" />
                  <node concept="37vLTw" id="11IbrVuMMj1" role="37wK5m">
                    <ref role="3cqZAo" node="11IbrVuMMiO" resolve="selected" />
                  </node>
                  <node concept="37vLTw" id="11IbrVuMMj2" role="37wK5m">
                    <ref role="3cqZAo" node="11IbrVuMMiS" resolve="value" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3TQwEX" id="11IbrVuMMiy" role="3TQZqC">
            <node concept="3clFbS" id="11IbrVuMMi_" role="2VODD2">
              <node concept="3cpWs8" id="11IbrVuMMj9" role="3cqZAp">
                <node concept="3cpWsn" id="11IbrVuMMj8" role="3cpWs9">
                  <property role="TrG5h" value="value" />
                  <node concept="3uibUv" id="11IbrVuMMja" role="1tU5fm">
                    <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                  </node>
                  <node concept="3TQ6bP" id="11IbrVuMMjj" role="33vP2m" />
                </node>
              </node>
              <node concept="3cpWs6" id="11IbrVuMMjc" role="3cqZAp">
                <node concept="2YIFZM" id="11IbrVuMMjf" role="3cqZAk">
                  <ref role="1Pybhc" node="11IbrVuV6Qy" resolve="ExpressionEditing" />
                  <ref role="37wK5l" node="11IbrVuV6Sl" resolve="isOperator" />
                  <node concept="37vLTw" id="11IbrVuMMjg" role="37wK5m">
                    <ref role="3cqZAo" node="11IbrVuMMj8" resolve="value" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2SqB2G" id="11IbrVuNf2z" role="2SqHTX">
          <property role="TrG5h" value="operator" />
        </node>
      </node>
      <node concept="3F1sOY" id="11IbrVuMMjl" role="3EZMnx">
        <ref role="1NtTu8" to="n2m4:7cJxwpjJw06" resolve="right" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="11IbrVuV6Qy">
    <property role="TrG5h" value="ExpressionEditing" />
    <node concept="3Tm1VV" id="11IbrVuV6Qz" role="1B3o_S" />
    <node concept="Wx3nA" id="11IbrVuV6Q$" role="jymVt">
      <property role="TrG5h" value="OPERATORS" />
      <property role="3TUv4t" value="true" />
      <node concept="10Q1$e" id="11IbrVuV6QA" role="1tU5fm">
        <node concept="3uibUv" id="11IbrVuV6Q_" role="10Q1$1">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="2ShNRf" id="11IbrVuV6QI" role="33vP2m">
        <node concept="3g6Rrh" id="11IbrVuV6QH" role="2ShVmc">
          <node concept="Xl_RD" id="11IbrVuV6QC" role="3g7hyw">
            <property role="Xl_RC" value="+" />
          </node>
          <node concept="Xl_RD" id="11IbrVuV6QD" role="3g7hyw">
            <property role="Xl_RC" value="-" />
          </node>
          <node concept="Xl_RD" id="11IbrVuV6QE" role="3g7hyw">
            <property role="Xl_RC" value="*" />
          </node>
          <node concept="Xl_RD" id="11IbrVuV6QF" role="3g7hyw">
            <property role="Xl_RC" value="/" />
          </node>
          <node concept="Xl_RD" id="11IbrVuV6QG" role="3g7hyw">
            <property role="Xl_RC" value="^" />
          </node>
          <node concept="3uibUv" id="11IbrVuV6QB" role="3g7fb8">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="11IbrVuV6QJ" role="1B3o_S" />
    </node>
    <node concept="Wx3nA" id="11IbrVuV6QK" role="jymVt">
      <property role="TrG5h" value="PRECEDENCE" />
      <property role="3TUv4t" value="true" />
      <node concept="10Q1$e" id="11IbrVuV6QM" role="1tU5fm">
        <node concept="10Oyi0" id="11IbrVuV6QL" role="10Q1$1" />
      </node>
      <node concept="2ShNRf" id="11IbrVuV6QU" role="33vP2m">
        <node concept="3g6Rrh" id="11IbrVuV6QT" role="2ShVmc">
          <node concept="3cmrfG" id="11IbrVuV6QO" role="3g7hyw">
            <property role="3cmrfH" value="10" />
          </node>
          <node concept="3cmrfG" id="11IbrVuV6QP" role="3g7hyw">
            <property role="3cmrfH" value="10" />
          </node>
          <node concept="3cmrfG" id="11IbrVuV6QQ" role="3g7hyw">
            <property role="3cmrfH" value="20" />
          </node>
          <node concept="3cmrfG" id="11IbrVuV6QR" role="3g7hyw">
            <property role="3cmrfH" value="20" />
          </node>
          <node concept="3cmrfG" id="11IbrVuV6QS" role="3g7hyw">
            <property role="3cmrfH" value="30" />
          </node>
          <node concept="10Oyi0" id="11IbrVuV6QN" role="3g7fb8" />
        </node>
      </node>
      <node concept="3Tm6S6" id="11IbrVuV6QV" role="1B3o_S" />
    </node>
    <node concept="2YIFZL" id="11IbrVuV6QW" role="jymVt">
      <property role="TrG5h" value="linkOf" />
      <node concept="37vLTG" id="11IbrVuV6QX" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="11IbrVuV6QY" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="37vLTG" id="11IbrVuV6QZ" role="3clF46">
        <property role="TrG5h" value="role" />
        <node concept="3uibUv" id="11IbrVuV6R0" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3clFbS" id="11IbrVuV6R1" role="3clF47">
        <node concept="1DcWWT" id="11IbrVuV6R2" role="3cqZAp">
          <node concept="2OqwBi" id="11IbrVuV7Dk" role="1DdaDG">
            <node concept="2OqwBi" id="11IbrVuV7xn" role="2Oq$k0">
              <node concept="37vLTw" id="11IbrVuV73k" role="2Oq$k0">
                <ref role="3cqZAo" node="11IbrVuV6QX" resolve="node" />
              </node>
              <node concept="liA8E" id="11IbrVuV7xo" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
              </node>
            </node>
            <node concept="liA8E" id="11IbrVuV7Dl" role="2OqNvi">
              <ref role="37wK5l" to="c17a:~SAbstractConcept.getContainmentLinks()" resolve="getContainmentLinks" />
            </node>
          </node>
          <node concept="3cpWsn" id="11IbrVuV6Rc" role="1Duv9x">
            <property role="TrG5h" value="l" />
            <node concept="3uibUv" id="11IbrVuV6Re" role="1tU5fm">
              <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
            </node>
          </node>
          <node concept="3clFbS" id="11IbrVuV6R4" role="2LFqv$">
            <node concept="3clFbJ" id="11IbrVuV6R5" role="3cqZAp">
              <node concept="2OqwBi" id="11IbrVuV7xA" role="3clFbw">
                <node concept="37vLTw" id="11IbrVuV73o" role="2Oq$k0">
                  <ref role="3cqZAo" node="11IbrVuV6QZ" resolve="role" />
                </node>
                <node concept="liA8E" id="11IbrVuV7xB" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                  <node concept="2OqwBi" id="11IbrVuV7FL" role="37wK5m">
                    <node concept="37vLTw" id="11IbrVuV7Do" role="2Oq$k0">
                      <ref role="3cqZAo" node="11IbrVuV6Rc" resolve="l" />
                    </node>
                    <node concept="liA8E" id="11IbrVuV7FM" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="11IbrVuV6R9" role="3clFbx">
                <node concept="3cpWs6" id="11IbrVuV6Ra" role="3cqZAp">
                  <node concept="37vLTw" id="11IbrVuV6Rb" role="3cqZAk">
                    <ref role="3cqZAo" node="11IbrVuV6Rc" resolve="l" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="YS8fn" id="11IbrVuV6Rl" role="3cqZAp">
          <node concept="2ShNRf" id="11IbrVuV73r" role="YScLw">
            <node concept="1pGfFk" id="11IbrVuV7fr" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
              <node concept="3cpWs3" id="11IbrVuV7fs" role="37wK5m">
                <node concept="Xl_RD" id="11IbrVuV7ft" role="3uHU7B">
                  <property role="Xl_RC" value="Unknown link " />
                </node>
                <node concept="37vLTw" id="11IbrVuV7fu" role="3uHU7w">
                  <ref role="3cqZAo" node="11IbrVuV6QZ" resolve="role" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="11IbrVuV6Rm" role="1B3o_S" />
      <node concept="3uibUv" id="11IbrVuV6Rn" role="3clF45">
        <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
      </node>
    </node>
    <node concept="2YIFZL" id="11IbrVuV6Ro" role="jymVt">
      <property role="TrG5h" value="propertyOf" />
      <node concept="37vLTG" id="11IbrVuV6Rp" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="11IbrVuV6Rq" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="37vLTG" id="11IbrVuV6Rr" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="3uibUv" id="11IbrVuV6Rs" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3clFbS" id="11IbrVuV6Rt" role="3clF47">
        <node concept="1DcWWT" id="11IbrVuV6Ru" role="3cqZAp">
          <node concept="2OqwBi" id="11IbrVuV7DF" role="1DdaDG">
            <node concept="2OqwBi" id="11IbrVuV7xU" role="2Oq$k0">
              <node concept="37vLTw" id="11IbrVuV7fD" role="2Oq$k0">
                <ref role="3cqZAo" node="11IbrVuV6Rp" resolve="node" />
              </node>
              <node concept="liA8E" id="11IbrVuV7xV" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
              </node>
            </node>
            <node concept="liA8E" id="11IbrVuV7DG" role="2OqNvi">
              <ref role="37wK5l" to="c17a:~SAbstractConcept.getProperties()" resolve="getProperties" />
            </node>
          </node>
          <node concept="3cpWsn" id="11IbrVuV6RC" role="1Duv9x">
            <property role="TrG5h" value="p" />
            <node concept="3uibUv" id="11IbrVuV6RE" role="1tU5fm">
              <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
            </node>
          </node>
          <node concept="3clFbS" id="11IbrVuV6Rw" role="2LFqv$">
            <node concept="3clFbJ" id="11IbrVuV6Rx" role="3cqZAp">
              <node concept="2OqwBi" id="11IbrVuV7y9" role="3clFbw">
                <node concept="37vLTw" id="11IbrVuV7fH" role="2Oq$k0">
                  <ref role="3cqZAo" node="11IbrVuV6Rr" resolve="name" />
                </node>
                <node concept="liA8E" id="11IbrVuV7ya" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                  <node concept="2OqwBi" id="11IbrVuV7FW" role="37wK5m">
                    <node concept="37vLTw" id="11IbrVuV7DJ" role="2Oq$k0">
                      <ref role="3cqZAo" node="11IbrVuV6RC" resolve="p" />
                    </node>
                    <node concept="liA8E" id="11IbrVuV7FX" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SProperty.getName()" resolve="getName" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="11IbrVuV6R_" role="3clFbx">
                <node concept="3cpWs6" id="11IbrVuV6RA" role="3cqZAp">
                  <node concept="37vLTw" id="11IbrVuV6RB" role="3cqZAk">
                    <ref role="3cqZAo" node="11IbrVuV6RC" resolve="p" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="YS8fn" id="11IbrVuV6RL" role="3cqZAp">
          <node concept="2ShNRf" id="11IbrVuV7fK" role="YScLw">
            <node concept="1pGfFk" id="11IbrVuV7lV" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
              <node concept="3cpWs3" id="11IbrVuV7lW" role="37wK5m">
                <node concept="Xl_RD" id="11IbrVuV7lX" role="3uHU7B">
                  <property role="Xl_RC" value="Unknown property " />
                </node>
                <node concept="37vLTw" id="11IbrVuV7lY" role="3uHU7w">
                  <ref role="3cqZAo" node="11IbrVuV6Rr" resolve="name" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="11IbrVuV6RM" role="1B3o_S" />
      <node concept="3uibUv" id="11IbrVuV6RN" role="3clF45">
        <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
      </node>
    </node>
    <node concept="2YIFZL" id="11IbrVuV6RO" role="jymVt">
      <property role="TrG5h" value="childOf" />
      <node concept="37vLTG" id="11IbrVuV6RP" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="11IbrVuV6RQ" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="37vLTG" id="11IbrVuV6RR" role="3clF46">
        <property role="TrG5h" value="role" />
        <node concept="3uibUv" id="11IbrVuV6RS" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3clFbS" id="11IbrVuV6RT" role="3clF47">
        <node concept="1DcWWT" id="11IbrVuV6RU" role="3cqZAp">
          <node concept="2OqwBi" id="11IbrVuV7E2" role="1DdaDG">
            <node concept="2OqwBi" id="11IbrVuV7yt" role="2Oq$k0">
              <node concept="37vLTw" id="11IbrVuV7m9" role="2Oq$k0">
                <ref role="3cqZAo" node="11IbrVuV6RP" resolve="node" />
              </node>
              <node concept="liA8E" id="11IbrVuV7yu" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
              </node>
            </node>
            <node concept="liA8E" id="11IbrVuV7E3" role="2OqNvi">
              <ref role="37wK5l" to="c17a:~SAbstractConcept.getContainmentLinks()" resolve="getContainmentLinks" />
            </node>
          </node>
          <node concept="3cpWsn" id="11IbrVuV6Sc" role="1Duv9x">
            <property role="TrG5h" value="l" />
            <node concept="3uibUv" id="11IbrVuV6Se" role="1tU5fm">
              <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
            </node>
          </node>
          <node concept="3clFbS" id="11IbrVuV6RW" role="2LFqv$">
            <node concept="3clFbJ" id="11IbrVuV6RX" role="3cqZAp">
              <node concept="2OqwBi" id="11IbrVuV7yG" role="3clFbw">
                <node concept="37vLTw" id="11IbrVuV7md" role="2Oq$k0">
                  <ref role="3cqZAo" node="11IbrVuV6RR" resolve="role" />
                </node>
                <node concept="liA8E" id="11IbrVuV7yH" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                  <node concept="2OqwBi" id="11IbrVuV7G7" role="37wK5m">
                    <node concept="37vLTw" id="11IbrVuV7E6" role="2Oq$k0">
                      <ref role="3cqZAo" node="11IbrVuV6Sc" resolve="l" />
                    </node>
                    <node concept="liA8E" id="11IbrVuV7G8" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="11IbrVuV6S1" role="3clFbx">
                <node concept="1DcWWT" id="11IbrVuV6S2" role="3cqZAp">
                  <node concept="2OqwBi" id="11IbrVuV7yS" role="1DdaDG">
                    <node concept="37vLTw" id="11IbrVuV7mi" role="2Oq$k0">
                      <ref role="3cqZAo" node="11IbrVuV6RP" resolve="node" />
                    </node>
                    <node concept="liA8E" id="11IbrVuV7yT" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.getChildren(org.jetbrains.mps.openapi.language.SContainmentLink)" resolve="getChildren" />
                      <node concept="37vLTw" id="11IbrVuV7yU" role="37wK5m">
                        <ref role="3cqZAo" node="11IbrVuV6Sc" resolve="l" />
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWsn" id="11IbrVuV6S7" role="1Duv9x">
                    <property role="TrG5h" value="c" />
                    <node concept="3uibUv" id="11IbrVuV6S9" role="1tU5fm">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="11IbrVuV6S4" role="2LFqv$">
                    <node concept="3cpWs6" id="11IbrVuV6S5" role="3cqZAp">
                      <node concept="37vLTw" id="11IbrVuV6S6" role="3cqZAk">
                        <ref role="3cqZAo" node="11IbrVuV6S7" resolve="c" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="11IbrVuV6Sh" role="3cqZAp">
          <node concept="10Nm6u" id="11IbrVuV6Si" role="3cqZAk" />
        </node>
      </node>
      <node concept="3Tm6S6" id="11IbrVuV6Sj" role="1B3o_S" />
      <node concept="3uibUv" id="11IbrVuV6Sk" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
      </node>
    </node>
    <node concept="2YIFZL" id="11IbrVuV6Sl" role="jymVt">
      <property role="TrG5h" value="isOperator" />
      <node concept="37vLTG" id="11IbrVuV6Sm" role="3clF46">
        <property role="TrG5h" value="text" />
        <node concept="3uibUv" id="11IbrVuV6Sn" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3clFbS" id="11IbrVuV6So" role="3clF47">
        <node concept="3cpWs6" id="11IbrVuV6Sp" role="3cqZAp">
          <node concept="2d3UOw" id="11IbrVuV6Sq" role="3cqZAk">
            <node concept="1rXfSq" id="11IbrVuV6Sr" role="3uHU7B">
              <ref role="37wK5l" node="11IbrVuV6Sw" resolve="indexOf" />
              <node concept="37vLTw" id="11IbrVuV6Ss" role="37wK5m">
                <ref role="3cqZAo" node="11IbrVuV6Sm" resolve="text" />
              </node>
            </node>
            <node concept="3cmrfG" id="11IbrVuV6St" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="11IbrVuV6Su" role="1B3o_S" />
      <node concept="10P_77" id="11IbrVuV6Sv" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="11IbrVuV6Sw" role="jymVt">
      <property role="TrG5h" value="indexOf" />
      <node concept="37vLTG" id="11IbrVuV6Sx" role="3clF46">
        <property role="TrG5h" value="op" />
        <node concept="3uibUv" id="11IbrVuV6Sy" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3clFbS" id="11IbrVuV6Sz" role="3clF47">
        <node concept="1Dw8fO" id="11IbrVuV6S$" role="3cqZAp">
          <node concept="3cpWsn" id="11IbrVuV6S_" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="11IbrVuV6SB" role="1tU5fm" />
            <node concept="3cmrfG" id="11IbrVuV6SC" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eOVzh" id="11IbrVuV6SD" role="1Dwp0S">
            <node concept="37vLTw" id="11IbrVuV6SE" role="3uHU7B">
              <ref role="3cqZAo" node="11IbrVuV6S_" resolve="i" />
            </node>
            <node concept="2OqwBi" id="11IbrVuV7mo" role="3uHU7w">
              <node concept="37vLTw" id="11IbrVuV7mn" role="2Oq$k0">
                <ref role="3cqZAo" node="11IbrVuV6Q$" resolve="OPERATORS" />
              </node>
              <node concept="1Rwk04" id="11IbrVuV7JT" role="2OqNvi" />
            </node>
          </node>
          <node concept="3uNrnE" id="11IbrVuV6SH" role="1Dwrff">
            <node concept="37vLTw" id="11IbrVuV6SI" role="2$L3a6">
              <ref role="3cqZAo" node="11IbrVuV6S_" resolve="i" />
            </node>
          </node>
          <node concept="3clFbS" id="11IbrVuV6SK" role="2LFqv$">
            <node concept="3clFbJ" id="11IbrVuV6SL" role="3cqZAp">
              <node concept="2OqwBi" id="11IbrVuV7n5" role="3clFbw">
                <node concept="AH0OO" id="11IbrVuV6SN" role="2Oq$k0">
                  <node concept="37vLTw" id="11IbrVuV6SO" role="AHHXb">
                    <ref role="3cqZAo" node="11IbrVuV6Q$" resolve="OPERATORS" />
                  </node>
                  <node concept="37vLTw" id="11IbrVuV6SP" role="AHEQo">
                    <ref role="3cqZAo" node="11IbrVuV6S_" resolve="i" />
                  </node>
                </node>
                <node concept="liA8E" id="11IbrVuV7n6" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                  <node concept="37vLTw" id="11IbrVuV7n7" role="37wK5m">
                    <ref role="3cqZAo" node="11IbrVuV6Sx" resolve="op" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="11IbrVuV6SS" role="3clFbx">
                <node concept="3cpWs6" id="11IbrVuV6ST" role="3cqZAp">
                  <node concept="37vLTw" id="11IbrVuV6SU" role="3cqZAk">
                    <ref role="3cqZAo" node="11IbrVuV6S_" resolve="i" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="11IbrVuV6SV" role="3cqZAp">
          <node concept="1ZRNhn" id="11IbrVuV6SW" role="3cqZAk">
            <node concept="3cmrfG" id="11IbrVuV6SX" role="2$L3a6">
              <property role="3cmrfH" value="1" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="11IbrVuV6SY" role="1B3o_S" />
      <node concept="10Oyi0" id="11IbrVuV6SZ" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="11IbrVuV6T0" role="jymVt">
      <property role="TrG5h" value="precedence" />
      <node concept="37vLTG" id="11IbrVuV6T1" role="3clF46">
        <property role="TrG5h" value="op" />
        <node concept="3uibUv" id="11IbrVuV6T2" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3clFbS" id="11IbrVuV6T3" role="3clF47">
        <node concept="3cpWs8" id="11IbrVuV6T5" role="3cqZAp">
          <node concept="3cpWsn" id="11IbrVuV6T4" role="3cpWs9">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="11IbrVuV6T6" role="1tU5fm" />
            <node concept="1rXfSq" id="11IbrVuV6T7" role="33vP2m">
              <ref role="37wK5l" node="11IbrVuV6Sw" resolve="indexOf" />
              <node concept="37vLTw" id="11IbrVuV6T8" role="37wK5m">
                <ref role="3cqZAo" node="11IbrVuV6T1" resolve="op" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="11IbrVuV6T9" role="3cqZAp">
          <node concept="3K4zz7" id="11IbrVuV6Th" role="3cqZAk">
            <node concept="3eOVzh" id="11IbrVuV6Ta" role="3K4Cdx">
              <node concept="37vLTw" id="11IbrVuV6Tb" role="3uHU7B">
                <ref role="3cqZAo" node="11IbrVuV6T4" resolve="i" />
              </node>
              <node concept="3cmrfG" id="11IbrVuV6Tc" role="3uHU7w">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
            <node concept="3cmrfG" id="11IbrVuV6Td" role="3K4E3e">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="AH0OO" id="11IbrVuV6Te" role="3K4GZi">
              <node concept="37vLTw" id="11IbrVuV6Tf" role="AHHXb">
                <ref role="3cqZAo" node="11IbrVuV6QK" resolve="PRECEDENCE" />
              </node>
              <node concept="37vLTw" id="11IbrVuV6Tg" role="AHEQo">
                <ref role="3cqZAo" node="11IbrVuV6T4" resolve="i" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="11IbrVuV6Ti" role="1B3o_S" />
      <node concept="10Oyi0" id="11IbrVuV6Tj" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="11IbrVuV6Tk" role="jymVt">
      <property role="TrG5h" value="rightAssociative" />
      <node concept="37vLTG" id="11IbrVuV6Tl" role="3clF46">
        <property role="TrG5h" value="op" />
        <node concept="3uibUv" id="11IbrVuV6Tm" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3clFbS" id="11IbrVuV6Tn" role="3clF47">
        <node concept="3cpWs6" id="11IbrVuV6To" role="3cqZAp">
          <node concept="2OqwBi" id="11IbrVuV7nm" role="3cqZAk">
            <node concept="Xl_RD" id="11IbrVuV6Tq" role="2Oq$k0">
              <property role="Xl_RC" value="^" />
            </node>
            <node concept="liA8E" id="11IbrVuV7nn" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
              <node concept="37vLTw" id="11IbrVuV7no" role="37wK5m">
                <ref role="3cqZAo" node="11IbrVuV6Tl" resolve="op" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="11IbrVuV6Ts" role="1B3o_S" />
      <node concept="10P_77" id="11IbrVuV6Tt" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="11IbrVuV6Tu" role="jymVt">
      <property role="TrG5h" value="needsParentheses" />
      <node concept="37vLTG" id="11IbrVuV6Tv" role="3clF46">
        <property role="TrG5h" value="parentOp" />
        <node concept="3uibUv" id="11IbrVuV6Tw" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="37vLTG" id="11IbrVuV6Tx" role="3clF46">
        <property role="TrG5h" value="childOp" />
        <node concept="3uibUv" id="11IbrVuV6Ty" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="37vLTG" id="11IbrVuV6Tz" role="3clF46">
        <property role="TrG5h" value="childOnRight" />
        <node concept="10P_77" id="11IbrVuV6T$" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="11IbrVuV6T_" role="3clF47">
        <node concept="3cpWs8" id="11IbrVuV6TB" role="3cqZAp">
          <node concept="3cpWsn" id="11IbrVuV6TA" role="3cpWs9">
            <property role="TrG5h" value="p" />
            <node concept="10Oyi0" id="11IbrVuV6TC" role="1tU5fm" />
            <node concept="1rXfSq" id="11IbrVuV6TD" role="33vP2m">
              <ref role="37wK5l" node="11IbrVuV6T0" resolve="precedence" />
              <node concept="37vLTw" id="11IbrVuV6TE" role="37wK5m">
                <ref role="3cqZAo" node="11IbrVuV6Tv" resolve="parentOp" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="11IbrVuV6TG" role="3cqZAp">
          <node concept="3cpWsn" id="11IbrVuV6TF" role="3cpWs9">
            <property role="TrG5h" value="c" />
            <node concept="10Oyi0" id="11IbrVuV6TH" role="1tU5fm" />
            <node concept="1rXfSq" id="11IbrVuV6TI" role="33vP2m">
              <ref role="37wK5l" node="11IbrVuV6T0" resolve="precedence" />
              <node concept="37vLTw" id="11IbrVuV6TJ" role="37wK5m">
                <ref role="3cqZAo" node="11IbrVuV6Tx" resolve="childOp" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="11IbrVuV6TK" role="3cqZAp">
          <node concept="3y3z36" id="11IbrVuV6TL" role="3clFbw">
            <node concept="37vLTw" id="11IbrVuV6TM" role="3uHU7B">
              <ref role="3cqZAo" node="11IbrVuV6TF" resolve="c" />
            </node>
            <node concept="37vLTw" id="11IbrVuV6TN" role="3uHU7w">
              <ref role="3cqZAo" node="11IbrVuV6TA" resolve="p" />
            </node>
          </node>
          <node concept="3clFbS" id="11IbrVuV6TP" role="3clFbx">
            <node concept="3cpWs6" id="11IbrVuV6TQ" role="3cqZAp">
              <node concept="3eOVzh" id="11IbrVuV6TR" role="3cqZAk">
                <node concept="37vLTw" id="11IbrVuV6TS" role="3uHU7B">
                  <ref role="3cqZAo" node="11IbrVuV6TF" resolve="c" />
                </node>
                <node concept="37vLTw" id="11IbrVuV6TT" role="3uHU7w">
                  <ref role="3cqZAo" node="11IbrVuV6TA" resolve="p" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="11IbrVuV6TU" role="3cqZAp">
          <node concept="3y3z36" id="11IbrVuV6TV" role="3clFbw">
            <node concept="1rXfSq" id="11IbrVuV6TW" role="3uHU7B">
              <ref role="37wK5l" node="11IbrVuV6Tk" resolve="rightAssociative" />
              <node concept="37vLTw" id="11IbrVuV6TX" role="37wK5m">
                <ref role="3cqZAo" node="11IbrVuV6Tv" resolve="parentOp" />
              </node>
            </node>
            <node concept="1rXfSq" id="11IbrVuV6TY" role="3uHU7w">
              <ref role="37wK5l" node="11IbrVuV6Tk" resolve="rightAssociative" />
              <node concept="37vLTw" id="11IbrVuV6TZ" role="37wK5m">
                <ref role="3cqZAo" node="11IbrVuV6Tx" resolve="childOp" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="11IbrVuV6U1" role="3clFbx">
            <node concept="3cpWs6" id="11IbrVuV6U2" role="3cqZAp">
              <node concept="3clFbT" id="11IbrVuV6U3" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="11IbrVuV6U4" role="3cqZAp">
          <node concept="3y3z36" id="11IbrVuV6U5" role="3cqZAk">
            <node concept="37vLTw" id="11IbrVuV6U6" role="3uHU7B">
              <ref role="3cqZAo" node="11IbrVuV6Tz" resolve="childOnRight" />
            </node>
            <node concept="1rXfSq" id="11IbrVuV6U7" role="3uHU7w">
              <ref role="37wK5l" node="11IbrVuV6Tk" resolve="rightAssociative" />
              <node concept="37vLTw" id="11IbrVuV6U8" role="37wK5m">
                <ref role="3cqZAo" node="11IbrVuV6Tv" resolve="parentOp" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="11IbrVuV6U9" role="1B3o_S" />
      <node concept="10P_77" id="11IbrVuV6Ua" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="11IbrVuV6Ub" role="jymVt">
      <property role="TrG5h" value="is" />
      <node concept="37vLTG" id="11IbrVuV6Uc" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="11IbrVuV6Ud" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="37vLTG" id="11IbrVuV6Ue" role="3clF46">
        <property role="TrG5h" value="conceptName" />
        <node concept="3uibUv" id="11IbrVuV6Uf" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3clFbS" id="11IbrVuV6Ug" role="3clF47">
        <node concept="3cpWs6" id="11IbrVuV6Uh" role="3cqZAp">
          <node concept="1Wc70l" id="11IbrVuV6Ui" role="3cqZAk">
            <node concept="3y3z36" id="11IbrVuV6Uj" role="3uHU7B">
              <node concept="37vLTw" id="11IbrVuV6Uk" role="3uHU7B">
                <ref role="3cqZAo" node="11IbrVuV6Uc" resolve="node" />
              </node>
              <node concept="10Nm6u" id="11IbrVuV6Ul" role="3uHU7w" />
            </node>
            <node concept="2OqwBi" id="11IbrVuV7z8" role="3uHU7w">
              <node concept="37vLTw" id="11IbrVuV7nr" role="2Oq$k0">
                <ref role="3cqZAo" node="11IbrVuV6Ue" resolve="conceptName" />
              </node>
              <node concept="liA8E" id="11IbrVuV7z9" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                <node concept="2OqwBi" id="11IbrVuV7HB" role="37wK5m">
                  <node concept="2OqwBi" id="11IbrVuV7Gq" role="2Oq$k0">
                    <node concept="37vLTw" id="11IbrVuV7Ei" role="2Oq$k0">
                      <ref role="3cqZAo" node="11IbrVuV6Uc" resolve="node" />
                    </node>
                    <node concept="liA8E" id="11IbrVuV7Gr" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                    </node>
                  </node>
                  <node concept="liA8E" id="11IbrVuV7HC" role="2OqNvi">
                    <ref role="37wK5l" to="c17a:~SAbstractConcept.getName()" resolve="getName" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="11IbrVuV6Up" role="1B3o_S" />
      <node concept="10P_77" id="11IbrVuV6Uq" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="11IbrVuV6Ur" role="jymVt">
      <property role="TrG5h" value="create" />
      <node concept="37vLTG" id="11IbrVuV6Us" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="11IbrVuV6Ut" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="37vLTG" id="11IbrVuV6Uu" role="3clF46">
        <property role="TrG5h" value="conceptName" />
        <node concept="3uibUv" id="11IbrVuV6Uv" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3clFbS" id="11IbrVuV6Uw" role="3clF47">
        <node concept="1DcWWT" id="11IbrVuV6Ux" role="3cqZAp">
          <node concept="2OqwBi" id="11IbrVuV7GQ" role="1DdaDG">
            <node concept="2OqwBi" id="11IbrVuV7EH" role="2Oq$k0">
              <node concept="2OqwBi" id="11IbrVuV7z_" role="2Oq$k0">
                <node concept="37vLTw" id="11IbrVuV7nL" role="2Oq$k0">
                  <ref role="3cqZAo" node="11IbrVuV6Us" resolve="context" />
                </node>
                <node concept="liA8E" id="11IbrVuV7zA" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                </node>
              </node>
              <node concept="liA8E" id="11IbrVuV7EI" role="2OqNvi">
                <ref role="37wK5l" to="c17a:~SAbstractConcept.getLanguage()" resolve="getLanguage" />
              </node>
            </node>
            <node concept="liA8E" id="11IbrVuV7GR" role="2OqNvi">
              <ref role="37wK5l" to="c17a:~SLanguage.getConcepts()" resolve="getConcepts" />
            </node>
          </node>
          <node concept="3cpWsn" id="11IbrVuV6UN" role="1Duv9x">
            <property role="TrG5h" value="c" />
            <node concept="3uibUv" id="11IbrVuV6UP" role="1tU5fm">
              <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
            </node>
          </node>
          <node concept="3clFbS" id="11IbrVuV6Uz" role="2LFqv$">
            <node concept="3clFbJ" id="11IbrVuV6U$" role="3cqZAp">
              <node concept="1Wc70l" id="11IbrVuV6U_" role="3clFbw">
                <node concept="2OqwBi" id="11IbrVuV7zO" role="3uHU7B">
                  <node concept="37vLTw" id="11IbrVuV7nP" role="2Oq$k0">
                    <ref role="3cqZAo" node="11IbrVuV6Uu" resolve="conceptName" />
                  </node>
                  <node concept="liA8E" id="11IbrVuV7zP" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                    <node concept="2OqwBi" id="11IbrVuV7H1" role="37wK5m">
                      <node concept="37vLTw" id="11IbrVuV7EL" role="2Oq$k0">
                        <ref role="3cqZAo" node="11IbrVuV6UN" resolve="c" />
                      </node>
                      <node concept="liA8E" id="11IbrVuV7H2" role="2OqNvi">
                        <ref role="37wK5l" to="c17a:~SAbstractConcept.getName()" resolve="getName" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2ZW3vV" id="11IbrVuV6UE" role="3uHU7w">
                  <node concept="37vLTw" id="11IbrVuV6UC" role="2ZW6bz">
                    <ref role="3cqZAo" node="11IbrVuV6UN" resolve="c" />
                  </node>
                  <node concept="3uibUv" id="11IbrVuV6UD" role="2ZW6by">
                    <ref role="3uigEE" to="c17a:~SConcept" resolve="SConcept" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="11IbrVuV6UG" role="3clFbx">
                <node concept="3cpWs6" id="11IbrVuV6UH" role="3cqZAp">
                  <node concept="2OqwBi" id="11IbrVuV7F4" role="3cqZAk">
                    <node concept="2OqwBi" id="11IbrVuV7$8" role="2Oq$k0">
                      <node concept="37vLTw" id="11IbrVuV7o2" role="2Oq$k0">
                        <ref role="3cqZAo" node="11IbrVuV6Us" resolve="context" />
                      </node>
                      <node concept="liA8E" id="11IbrVuV7$9" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getModel()" resolve="getModel" />
                      </node>
                    </node>
                    <node concept="liA8E" id="11IbrVuV7F5" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SModel.createNode(org.jetbrains.mps.openapi.language.SConcept)" resolve="createNode" />
                      <node concept="10QFUN" id="11IbrVuV7F6" role="37wK5m">
                        <node concept="37vLTw" id="11IbrVuV7F7" role="10QFUP">
                          <ref role="3cqZAo" node="11IbrVuV6UN" resolve="c" />
                        </node>
                        <node concept="3uibUv" id="11IbrVuV7F8" role="10QFUM">
                          <ref role="3uigEE" to="c17a:~SConcept" resolve="SConcept" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="YS8fn" id="11IbrVuV6UX" role="3cqZAp">
          <node concept="2ShNRf" id="11IbrVuV7o4" role="YScLw">
            <node concept="1pGfFk" id="11IbrVuV7uf" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
              <node concept="3cpWs3" id="11IbrVuV7ug" role="37wK5m">
                <node concept="Xl_RD" id="11IbrVuV7uh" role="3uHU7B">
                  <property role="Xl_RC" value="Unknown concept " />
                </node>
                <node concept="37vLTw" id="11IbrVuV7ui" role="3uHU7w">
                  <ref role="3cqZAo" node="11IbrVuV6Uu" resolve="conceptName" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="11IbrVuV6UY" role="1B3o_S" />
      <node concept="3uibUv" id="11IbrVuV6UZ" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
      </node>
    </node>
    <node concept="2YIFZL" id="11IbrVuV6V0" role="jymVt">
      <property role="TrG5h" value="operator" />
      <node concept="37vLTG" id="11IbrVuV6V1" role="3clF46">
        <property role="TrG5h" value="binary" />
        <node concept="3uibUv" id="11IbrVuV6V2" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="3clFbS" id="11IbrVuV6V3" role="3clF47">
        <node concept="3cpWs6" id="11IbrVuV6V4" role="3cqZAp">
          <node concept="2OqwBi" id="11IbrVuV7$j" role="3cqZAk">
            <node concept="37vLTw" id="11IbrVuV7ul" role="2Oq$k0">
              <ref role="3cqZAo" node="11IbrVuV6V1" resolve="binary" />
            </node>
            <node concept="liA8E" id="11IbrVuV7$k" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNode.getProperty(org.jetbrains.mps.openapi.language.SProperty)" resolve="getProperty" />
              <node concept="1rXfSq" id="11IbrVuV7$l" role="37wK5m">
                <ref role="37wK5l" node="11IbrVuV6Ro" resolve="propertyOf" />
                <node concept="37vLTw" id="11IbrVuV7$m" role="37wK5m">
                  <ref role="3cqZAo" node="11IbrVuV6V1" resolve="binary" />
                </node>
                <node concept="Xl_RD" id="11IbrVuV7$n" role="37wK5m">
                  <property role="Xl_RC" value="operator" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="11IbrVuV6V9" role="1B3o_S" />
      <node concept="3uibUv" id="11IbrVuV6Va" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="2YIFZL" id="11IbrVuV6Vb" role="jymVt">
      <property role="TrG5h" value="isRight" />
      <node concept="37vLTG" id="11IbrVuV6Vc" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="11IbrVuV6Vd" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="3clFbS" id="11IbrVuV6Ve" role="3clF47">
        <node concept="3cpWs6" id="11IbrVuV6Vf" role="3cqZAp">
          <node concept="1Wc70l" id="11IbrVuV6Vg" role="3cqZAk">
            <node concept="3y3z36" id="11IbrVuV6Vh" role="3uHU7B">
              <node concept="2OqwBi" id="11IbrVuV7$x" role="3uHU7B">
                <node concept="37vLTw" id="11IbrVuV7us" role="2Oq$k0">
                  <ref role="3cqZAo" node="11IbrVuV6Vc" resolve="node" />
                </node>
                <node concept="liA8E" id="11IbrVuV7$y" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getParent()" resolve="getParent" />
                </node>
              </node>
              <node concept="10Nm6u" id="11IbrVuV6Vj" role="3uHU7w" />
            </node>
            <node concept="2OqwBi" id="11IbrVuV7uG" role="3uHU7w">
              <node concept="Xl_RD" id="11IbrVuV6Vl" role="2Oq$k0">
                <property role="Xl_RC" value="right" />
              </node>
              <node concept="liA8E" id="11IbrVuV7uH" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                <node concept="2OqwBi" id="11IbrVuV7Hk" role="37wK5m">
                  <node concept="2OqwBi" id="11IbrVuV7Fq" role="2Oq$k0">
                    <node concept="37vLTw" id="11IbrVuV7$H" role="2Oq$k0">
                      <ref role="3cqZAo" node="11IbrVuV6Vc" resolve="node" />
                    </node>
                    <node concept="liA8E" id="11IbrVuV7Fr" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.getContainmentLink()" resolve="getContainmentLink" />
                    </node>
                  </node>
                  <node concept="liA8E" id="11IbrVuV7Hl" role="2OqNvi">
                    <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="11IbrVuV6Vo" role="1B3o_S" />
      <node concept="10P_77" id="11IbrVuV6Vp" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="11IbrVuV6Vq" role="jymVt">
      <property role="TrG5h" value="wrapInGroup" />
      <node concept="37vLTG" id="11IbrVuV6Vr" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="11IbrVuV6Vs" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="3clFbS" id="11IbrVuV6Vt" role="3clF47">
        <node concept="3cpWs8" id="11IbrVuV6Vv" role="3cqZAp">
          <node concept="3cpWsn" id="11IbrVuV6Vu" role="3cpWs9">
            <property role="TrG5h" value="parent" />
            <node concept="3uibUv" id="11IbrVuV6Vw" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
            <node concept="2OqwBi" id="11IbrVuV7$S" role="33vP2m">
              <node concept="37vLTw" id="11IbrVuV7uM" role="2Oq$k0">
                <ref role="3cqZAo" node="11IbrVuV6Vr" resolve="node" />
              </node>
              <node concept="liA8E" id="11IbrVuV7$T" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getParent()" resolve="getParent" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="11IbrVuV6Vz" role="3cqZAp">
          <node concept="3cpWsn" id="11IbrVuV6Vy" role="3cpWs9">
            <property role="TrG5h" value="role" />
            <node concept="3uibUv" id="11IbrVuV6V$" role="1tU5fm">
              <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
            </node>
            <node concept="2OqwBi" id="11IbrVuV7_3" role="33vP2m">
              <node concept="37vLTw" id="11IbrVuV7uQ" role="2Oq$k0">
                <ref role="3cqZAo" node="11IbrVuV6Vr" resolve="node" />
              </node>
              <node concept="liA8E" id="11IbrVuV7_4" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getContainmentLink()" resolve="getContainmentLink" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="11IbrVuV6VB" role="3cqZAp">
          <node concept="3cpWsn" id="11IbrVuV6VA" role="3cpWs9">
            <property role="TrG5h" value="group" />
            <node concept="3uibUv" id="11IbrVuV6VC" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
            <node concept="1rXfSq" id="11IbrVuV6VD" role="33vP2m">
              <ref role="37wK5l" node="11IbrVuV6Ur" resolve="create" />
              <node concept="37vLTw" id="11IbrVuV6VE" role="37wK5m">
                <ref role="3cqZAo" node="11IbrVuV6Vr" resolve="node" />
              </node>
              <node concept="Xl_RD" id="11IbrVuV6VF" role="37wK5m">
                <property role="Xl_RC" value="Group" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="11IbrVuV6VG" role="3cqZAp">
          <node concept="2OqwBi" id="11IbrVuV7_f" role="3clFbG">
            <node concept="37vLTw" id="11IbrVuV7uU" role="2Oq$k0">
              <ref role="3cqZAo" node="11IbrVuV6Vu" resolve="parent" />
            </node>
            <node concept="liA8E" id="11IbrVuV7_g" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNode.insertChildBefore(org.jetbrains.mps.openapi.language.SContainmentLink,org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode)" resolve="insertChildBefore" />
              <node concept="37vLTw" id="11IbrVuV7_h" role="37wK5m">
                <ref role="3cqZAo" node="11IbrVuV6Vy" resolve="role" />
              </node>
              <node concept="37vLTw" id="11IbrVuV7_i" role="37wK5m">
                <ref role="3cqZAo" node="11IbrVuV6VA" resolve="group" />
              </node>
              <node concept="37vLTw" id="11IbrVuV7_j" role="37wK5m">
                <ref role="3cqZAo" node="11IbrVuV6Vr" resolve="node" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="11IbrVuV6VL" role="3cqZAp">
          <node concept="2OqwBi" id="11IbrVuV7_u" role="3clFbG">
            <node concept="37vLTw" id="11IbrVuV7v1" role="2Oq$k0">
              <ref role="3cqZAo" node="11IbrVuV6Vu" resolve="parent" />
            </node>
            <node concept="liA8E" id="11IbrVuV7_v" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNode.removeChild(org.jetbrains.mps.openapi.model.SNode)" resolve="removeChild" />
              <node concept="37vLTw" id="11IbrVuV7_w" role="37wK5m">
                <ref role="3cqZAo" node="11IbrVuV6Vr" resolve="node" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="11IbrVuV6VO" role="3cqZAp">
          <node concept="2OqwBi" id="11IbrVuV7_F" role="3clFbG">
            <node concept="37vLTw" id="11IbrVuV7v6" role="2Oq$k0">
              <ref role="3cqZAo" node="11IbrVuV6VA" resolve="group" />
            </node>
            <node concept="liA8E" id="11IbrVuV7_G" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNode.addChild(org.jetbrains.mps.openapi.language.SContainmentLink,org.jetbrains.mps.openapi.model.SNode)" resolve="addChild" />
              <node concept="1rXfSq" id="11IbrVuV7_H" role="37wK5m">
                <ref role="37wK5l" node="11IbrVuV6QW" resolve="linkOf" />
                <node concept="37vLTw" id="11IbrVuV7_I" role="37wK5m">
                  <ref role="3cqZAo" node="11IbrVuV6VA" resolve="group" />
                </node>
                <node concept="Xl_RD" id="11IbrVuV7_J" role="37wK5m">
                  <property role="Xl_RC" value="inner" />
                </node>
              </node>
              <node concept="37vLTw" id="11IbrVuV7_K" role="37wK5m">
                <ref role="3cqZAo" node="11IbrVuV6Vr" resolve="node" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="11IbrVuV6VU" role="1B3o_S" />
      <node concept="3cqZAl" id="11IbrVuV6VV" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="11IbrVuV6VW" role="jymVt">
      <property role="TrG5h" value="wrapChildIfNeeded" />
      <node concept="37vLTG" id="11IbrVuV6VX" role="3clF46">
        <property role="TrG5h" value="binary" />
        <node concept="3uibUv" id="11IbrVuV6VY" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="37vLTG" id="11IbrVuV6VZ" role="3clF46">
        <property role="TrG5h" value="role" />
        <node concept="3uibUv" id="11IbrVuV6W0" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3clFbS" id="11IbrVuV6W1" role="3clF47">
        <node concept="3cpWs8" id="11IbrVuV6W3" role="3cqZAp">
          <node concept="3cpWsn" id="11IbrVuV6W2" role="3cpWs9">
            <property role="TrG5h" value="child" />
            <node concept="3uibUv" id="11IbrVuV6W4" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
            <node concept="1rXfSq" id="11IbrVuV6W5" role="33vP2m">
              <ref role="37wK5l" node="11IbrVuV6RO" resolve="childOf" />
              <node concept="37vLTw" id="11IbrVuV6W6" role="37wK5m">
                <ref role="3cqZAo" node="11IbrVuV6VX" resolve="binary" />
              </node>
              <node concept="37vLTw" id="11IbrVuV6W7" role="37wK5m">
                <ref role="3cqZAo" node="11IbrVuV6VZ" resolve="role" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="11IbrVuV6W8" role="3cqZAp">
          <node concept="1Wc70l" id="11IbrVuV6W9" role="3clFbw">
            <node concept="1rXfSq" id="11IbrVuV6Wa" role="3uHU7B">
              <ref role="37wK5l" node="11IbrVuV6Ub" resolve="is" />
              <node concept="37vLTw" id="11IbrVuV6Wb" role="37wK5m">
                <ref role="3cqZAo" node="11IbrVuV6W2" resolve="child" />
              </node>
              <node concept="Xl_RD" id="11IbrVuV6Wc" role="37wK5m">
                <property role="Xl_RC" value="BinaryExpression" />
              </node>
            </node>
            <node concept="1rXfSq" id="11IbrVuV6Wd" role="3uHU7w">
              <ref role="37wK5l" node="11IbrVuV6Tu" resolve="needsParentheses" />
              <node concept="1rXfSq" id="11IbrVuV6We" role="37wK5m">
                <ref role="37wK5l" node="11IbrVuV6V0" resolve="operator" />
                <node concept="37vLTw" id="11IbrVuV6Wf" role="37wK5m">
                  <ref role="3cqZAo" node="11IbrVuV6VX" resolve="binary" />
                </node>
              </node>
              <node concept="1rXfSq" id="11IbrVuV6Wg" role="37wK5m">
                <ref role="37wK5l" node="11IbrVuV6V0" resolve="operator" />
                <node concept="37vLTw" id="11IbrVuV6Wh" role="37wK5m">
                  <ref role="3cqZAo" node="11IbrVuV6W2" resolve="child" />
                </node>
              </node>
              <node concept="2OqwBi" id="11IbrVuV7vq" role="37wK5m">
                <node concept="Xl_RD" id="11IbrVuV6Wj" role="2Oq$k0">
                  <property role="Xl_RC" value="right" />
                </node>
                <node concept="liA8E" id="11IbrVuV7vr" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                  <node concept="37vLTw" id="11IbrVuV7vs" role="37wK5m">
                    <ref role="3cqZAo" node="11IbrVuV6VZ" resolve="role" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="11IbrVuV6Wm" role="3clFbx">
            <node concept="3clFbF" id="11IbrVuV6Wn" role="3cqZAp">
              <node concept="1rXfSq" id="11IbrVuV6Wo" role="3clFbG">
                <ref role="37wK5l" node="11IbrVuV6Vq" resolve="wrapInGroup" />
                <node concept="37vLTw" id="11IbrVuV6Wp" role="37wK5m">
                  <ref role="3cqZAo" node="11IbrVuV6W2" resolve="child" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="11IbrVuV6Wq" role="1B3o_S" />
      <node concept="3cqZAl" id="11IbrVuV6Wr" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="11IbrVuV6Ws" role="jymVt">
      <property role="TrG5h" value="wrapSelfIfNeeded" />
      <node concept="37vLTG" id="11IbrVuV6Wt" role="3clF46">
        <property role="TrG5h" value="binary" />
        <node concept="3uibUv" id="11IbrVuV6Wu" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="37vLTG" id="11IbrVuV6Wv" role="3clF46">
        <property role="TrG5h" value="onRight" />
        <node concept="10P_77" id="11IbrVuV6Ww" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="11IbrVuV6Wx" role="3clF47">
        <node concept="3cpWs8" id="11IbrVuV6Wz" role="3cqZAp">
          <node concept="3cpWsn" id="11IbrVuV6Wy" role="3cpWs9">
            <property role="TrG5h" value="parent" />
            <node concept="3uibUv" id="11IbrVuV6W$" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
            <node concept="2OqwBi" id="11IbrVuV7_U" role="33vP2m">
              <node concept="37vLTw" id="11IbrVuV7vv" role="2Oq$k0">
                <ref role="3cqZAo" node="11IbrVuV6Wt" resolve="binary" />
              </node>
              <node concept="liA8E" id="11IbrVuV7_V" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getParent()" resolve="getParent" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="11IbrVuV6WA" role="3cqZAp">
          <node concept="1Wc70l" id="11IbrVuV6WB" role="3clFbw">
            <node concept="1rXfSq" id="11IbrVuV6WC" role="3uHU7B">
              <ref role="37wK5l" node="11IbrVuV6Ub" resolve="is" />
              <node concept="37vLTw" id="11IbrVuV6WD" role="37wK5m">
                <ref role="3cqZAo" node="11IbrVuV6Wy" resolve="parent" />
              </node>
              <node concept="Xl_RD" id="11IbrVuV6WE" role="37wK5m">
                <property role="Xl_RC" value="BinaryExpression" />
              </node>
            </node>
            <node concept="1rXfSq" id="11IbrVuV6WF" role="3uHU7w">
              <ref role="37wK5l" node="11IbrVuV6Tu" resolve="needsParentheses" />
              <node concept="1rXfSq" id="11IbrVuV6WG" role="37wK5m">
                <ref role="37wK5l" node="11IbrVuV6V0" resolve="operator" />
                <node concept="37vLTw" id="11IbrVuV6WH" role="37wK5m">
                  <ref role="3cqZAo" node="11IbrVuV6Wy" resolve="parent" />
                </node>
              </node>
              <node concept="1rXfSq" id="11IbrVuV6WI" role="37wK5m">
                <ref role="37wK5l" node="11IbrVuV6V0" resolve="operator" />
                <node concept="37vLTw" id="11IbrVuV6WJ" role="37wK5m">
                  <ref role="3cqZAo" node="11IbrVuV6Wt" resolve="binary" />
                </node>
              </node>
              <node concept="37vLTw" id="11IbrVuV6WK" role="37wK5m">
                <ref role="3cqZAo" node="11IbrVuV6Wv" resolve="onRight" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="11IbrVuV6WM" role="3clFbx">
            <node concept="3clFbF" id="11IbrVuV6WN" role="3cqZAp">
              <node concept="1rXfSq" id="11IbrVuV6WO" role="3clFbG">
                <ref role="37wK5l" node="11IbrVuV6Vq" resolve="wrapInGroup" />
                <node concept="37vLTw" id="11IbrVuV6WP" role="37wK5m">
                  <ref role="3cqZAo" node="11IbrVuV6Wt" resolve="binary" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="11IbrVuV6WQ" role="1B3o_S" />
      <node concept="3cqZAl" id="11IbrVuV6WR" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="11IbrVuV6WS" role="jymVt">
      <property role="TrG5h" value="canReplaceOperator" />
      <node concept="37vLTG" id="11IbrVuV6WT" role="3clF46">
        <property role="TrG5h" value="binary" />
        <node concept="3uibUv" id="11IbrVuV6WU" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="37vLTG" id="11IbrVuV6WV" role="3clF46">
        <property role="TrG5h" value="text" />
        <node concept="3uibUv" id="11IbrVuV6WW" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3clFbS" id="11IbrVuV6WX" role="3clF47">
        <node concept="3cpWs6" id="11IbrVuV6WY" role="3cqZAp">
          <node concept="1Wc70l" id="11IbrVuV6WZ" role="3cqZAk">
            <node concept="1rXfSq" id="11IbrVuV6X0" role="3uHU7B">
              <ref role="37wK5l" node="11IbrVuV6Ub" resolve="is" />
              <node concept="37vLTw" id="11IbrVuV6X1" role="37wK5m">
                <ref role="3cqZAo" node="11IbrVuV6WT" resolve="binary" />
              </node>
              <node concept="Xl_RD" id="11IbrVuV6X2" role="37wK5m">
                <property role="Xl_RC" value="BinaryExpression" />
              </node>
            </node>
            <node concept="1rXfSq" id="11IbrVuV6X3" role="3uHU7w">
              <ref role="37wK5l" node="11IbrVuV6Sl" resolve="isOperator" />
              <node concept="37vLTw" id="11IbrVuV6X4" role="37wK5m">
                <ref role="3cqZAo" node="11IbrVuV6WV" resolve="text" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="11IbrVuV6X5" role="1B3o_S" />
      <node concept="10P_77" id="11IbrVuV6X6" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="11IbrVuV6X7" role="jymVt">
      <property role="TrG5h" value="replaceOperator" />
      <node concept="37vLTG" id="11IbrVuV6X8" role="3clF46">
        <property role="TrG5h" value="binary" />
        <node concept="3uibUv" id="11IbrVuV6X9" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="37vLTG" id="11IbrVuV6Xa" role="3clF46">
        <property role="TrG5h" value="text" />
        <node concept="3uibUv" id="11IbrVuV6Xb" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3clFbS" id="11IbrVuV6Xc" role="3clF47">
        <node concept="3clFbJ" id="11IbrVuV6Xd" role="3cqZAp">
          <node concept="3fqX7Q" id="11IbrVuV6Xe" role="3clFbw">
            <node concept="1rXfSq" id="11IbrVuV6Xf" role="3fr31v">
              <ref role="37wK5l" node="11IbrVuV6WS" resolve="canReplaceOperator" />
              <node concept="37vLTw" id="11IbrVuV6Xg" role="37wK5m">
                <ref role="3cqZAo" node="11IbrVuV6X8" resolve="binary" />
              </node>
              <node concept="37vLTw" id="11IbrVuV6Xh" role="37wK5m">
                <ref role="3cqZAo" node="11IbrVuV6Xa" resolve="text" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="11IbrVuV6Xj" role="3clFbx">
            <node concept="3cpWs6" id="11IbrVuV6Xk" role="3cqZAp" />
          </node>
        </node>
        <node concept="3clFbF" id="11IbrVuV6Xl" role="3cqZAp">
          <node concept="2OqwBi" id="11IbrVuV7A5" role="3clFbG">
            <node concept="37vLTw" id="11IbrVuV7vz" role="2Oq$k0">
              <ref role="3cqZAo" node="11IbrVuV6X8" resolve="binary" />
            </node>
            <node concept="liA8E" id="11IbrVuV7A6" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNode.setProperty(org.jetbrains.mps.openapi.language.SProperty,java.lang.String)" resolve="setProperty" />
              <node concept="1rXfSq" id="11IbrVuV7A7" role="37wK5m">
                <ref role="37wK5l" node="11IbrVuV6Ro" resolve="propertyOf" />
                <node concept="37vLTw" id="11IbrVuV7A8" role="37wK5m">
                  <ref role="3cqZAo" node="11IbrVuV6X8" resolve="binary" />
                </node>
                <node concept="Xl_RD" id="11IbrVuV7A9" role="37wK5m">
                  <property role="Xl_RC" value="operator" />
                </node>
              </node>
              <node concept="37vLTw" id="11IbrVuV7Aa" role="37wK5m">
                <ref role="3cqZAo" node="11IbrVuV6Xa" resolve="text" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="11IbrVuV6Xr" role="3cqZAp">
          <node concept="2ShNRf" id="11IbrVuV6XM" role="1DdaDG">
            <node concept="3g6Rrh" id="11IbrVuV6XL" role="2ShVmc">
              <node concept="Xl_RD" id="11IbrVuV6XJ" role="3g7hyw">
                <property role="Xl_RC" value="left" />
              </node>
              <node concept="Xl_RD" id="11IbrVuV6XK" role="3g7hyw">
                <property role="Xl_RC" value="right" />
              </node>
              <node concept="3uibUv" id="11IbrVuV6XI" role="3g7fb8">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="11IbrVuV6XF" role="1Duv9x">
            <property role="TrG5h" value="role" />
            <node concept="3uibUv" id="11IbrVuV6XH" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
          </node>
          <node concept="3clFbS" id="11IbrVuV6Xt" role="2LFqv$">
            <node concept="3clFbJ" id="11IbrVuV6Xu" role="3cqZAp">
              <node concept="3clFbC" id="11IbrVuV6Xv" role="3clFbw">
                <node concept="1rXfSq" id="11IbrVuV6Xw" role="3uHU7B">
                  <ref role="37wK5l" node="11IbrVuV6RO" resolve="childOf" />
                  <node concept="37vLTw" id="11IbrVuV6Xx" role="37wK5m">
                    <ref role="3cqZAo" node="11IbrVuV6X8" resolve="binary" />
                  </node>
                  <node concept="37vLTw" id="11IbrVuV6Xy" role="37wK5m">
                    <ref role="3cqZAo" node="11IbrVuV6XF" resolve="role" />
                  </node>
                </node>
                <node concept="10Nm6u" id="11IbrVuV6Xz" role="3uHU7w" />
              </node>
              <node concept="3clFbS" id="11IbrVuV6X_" role="3clFbx">
                <node concept="3N13vt" id="11IbrVuV6XA" role="3cqZAp" />
              </node>
            </node>
            <node concept="3clFbF" id="11IbrVuV6XB" role="3cqZAp">
              <node concept="1rXfSq" id="11IbrVuV6XC" role="3clFbG">
                <ref role="37wK5l" node="11IbrVuV6VW" resolve="wrapChildIfNeeded" />
                <node concept="37vLTw" id="11IbrVuV6XD" role="37wK5m">
                  <ref role="3cqZAo" node="11IbrVuV6X8" resolve="binary" />
                </node>
                <node concept="37vLTw" id="11IbrVuV6XE" role="37wK5m">
                  <ref role="3cqZAo" node="11IbrVuV6XF" resolve="role" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="11IbrVuV6XN" role="3cqZAp">
          <node concept="1rXfSq" id="11IbrVuV6XO" role="3clFbG">
            <ref role="37wK5l" node="11IbrVuV6Ws" resolve="wrapSelfIfNeeded" />
            <node concept="37vLTw" id="11IbrVuV6XP" role="37wK5m">
              <ref role="3cqZAo" node="11IbrVuV6X8" resolve="binary" />
            </node>
            <node concept="1rXfSq" id="11IbrVuV6XQ" role="37wK5m">
              <ref role="37wK5l" node="11IbrVuV6Vb" resolve="isRight" />
              <node concept="37vLTw" id="11IbrVuV6XR" role="37wK5m">
                <ref role="3cqZAo" node="11IbrVuV6X8" resolve="binary" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="11IbrVuV6XS" role="1B3o_S" />
      <node concept="3cqZAl" id="11IbrVuV6XT" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="11IbrVuV6XU" role="jymVt">
      <property role="TrG5h" value="appendOperand" />
      <node concept="37vLTG" id="11IbrVuV6XV" role="3clF46">
        <property role="TrG5h" value="expression" />
        <node concept="3uibUv" id="11IbrVuV6XW" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="3clFbS" id="11IbrVuV6XX" role="3clF47">
        <node concept="3cpWs8" id="11IbrVuV6XZ" role="3cqZAp">
          <node concept="3cpWsn" id="11IbrVuV6XY" role="3cpWs9">
            <property role="TrG5h" value="parent" />
            <node concept="3uibUv" id="11IbrVuV6Y0" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
            <node concept="2OqwBi" id="11IbrVuV7Ak" role="33vP2m">
              <node concept="37vLTw" id="11IbrVuV7vF" role="2Oq$k0">
                <ref role="3cqZAo" node="11IbrVuV6XV" resolve="expression" />
              </node>
              <node concept="liA8E" id="11IbrVuV7Al" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getParent()" resolve="getParent" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="11IbrVuV6Y3" role="3cqZAp">
          <node concept="3cpWsn" id="11IbrVuV6Y2" role="3cpWs9">
            <property role="TrG5h" value="role" />
            <node concept="3uibUv" id="11IbrVuV6Y4" role="1tU5fm">
              <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
            </node>
            <node concept="2OqwBi" id="11IbrVuV7Av" role="33vP2m">
              <node concept="37vLTw" id="11IbrVuV7vJ" role="2Oq$k0">
                <ref role="3cqZAo" node="11IbrVuV6XV" resolve="expression" />
              </node>
              <node concept="liA8E" id="11IbrVuV7Aw" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getContainmentLink()" resolve="getContainmentLink" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="11IbrVuV6Y7" role="3cqZAp">
          <node concept="3cpWsn" id="11IbrVuV6Y6" role="3cpWs9">
            <property role="TrG5h" value="onRight" />
            <node concept="10P_77" id="11IbrVuV6Y8" role="1tU5fm" />
            <node concept="1Wc70l" id="11IbrVuV6Y9" role="33vP2m">
              <node concept="3y3z36" id="11IbrVuV6Ya" role="3uHU7B">
                <node concept="37vLTw" id="11IbrVuV6Yb" role="3uHU7B">
                  <ref role="3cqZAo" node="11IbrVuV6Y2" resolve="role" />
                </node>
                <node concept="10Nm6u" id="11IbrVuV6Yc" role="3uHU7w" />
              </node>
              <node concept="2OqwBi" id="11IbrVuV7vZ" role="3uHU7w">
                <node concept="Xl_RD" id="11IbrVuV6Ye" role="2Oq$k0">
                  <property role="Xl_RC" value="right" />
                </node>
                <node concept="liA8E" id="11IbrVuV7w0" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                  <node concept="2OqwBi" id="11IbrVuV7FA" role="37wK5m">
                    <node concept="37vLTw" id="11IbrVuV7Az" role="2Oq$k0">
                      <ref role="3cqZAo" node="11IbrVuV6Y2" resolve="role" />
                    </node>
                    <node concept="liA8E" id="11IbrVuV7FB" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="11IbrVuV6Yh" role="3cqZAp">
          <node concept="3cpWsn" id="11IbrVuV6Yg" role="3cpWs9">
            <property role="TrG5h" value="binary" />
            <node concept="3uibUv" id="11IbrVuV6Yi" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
            <node concept="1rXfSq" id="11IbrVuV6Yj" role="33vP2m">
              <ref role="37wK5l" node="11IbrVuV6Ur" resolve="create" />
              <node concept="37vLTw" id="11IbrVuV6Yk" role="37wK5m">
                <ref role="3cqZAo" node="11IbrVuV6XV" resolve="expression" />
              </node>
              <node concept="Xl_RD" id="11IbrVuV6Yl" role="37wK5m">
                <property role="Xl_RC" value="BinaryExpression" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="11IbrVuV6Ym" role="3cqZAp">
          <node concept="2OqwBi" id="11IbrVuV7AJ" role="3clFbG">
            <node concept="37vLTw" id="11IbrVuV7w4" role="2Oq$k0">
              <ref role="3cqZAo" node="11IbrVuV6Yg" resolve="binary" />
            </node>
            <node concept="liA8E" id="11IbrVuV7AK" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNode.setProperty(org.jetbrains.mps.openapi.language.SProperty,java.lang.String)" resolve="setProperty" />
              <node concept="1rXfSq" id="11IbrVuV7AL" role="37wK5m">
                <ref role="37wK5l" node="11IbrVuV6Ro" resolve="propertyOf" />
                <node concept="37vLTw" id="11IbrVuV7AM" role="37wK5m">
                  <ref role="3cqZAo" node="11IbrVuV6Yg" resolve="binary" />
                </node>
                <node concept="Xl_RD" id="11IbrVuV7AN" role="37wK5m">
                  <property role="Xl_RC" value="operator" />
                </node>
              </node>
              <node concept="Xl_RD" id="11IbrVuV7AO" role="37wK5m">
                <property role="Xl_RC" value="+" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="11IbrVuV6Yt" role="3cqZAp">
          <node concept="3cpWsn" id="11IbrVuV6Ys" role="3cpWs9">
            <property role="TrG5h" value="operand" />
            <node concept="3uibUv" id="11IbrVuV6Yu" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
            <node concept="1rXfSq" id="11IbrVuV6Yv" role="33vP2m">
              <ref role="37wK5l" node="11IbrVuV6Ur" resolve="create" />
              <node concept="37vLTw" id="11IbrVuV6Yw" role="37wK5m">
                <ref role="3cqZAo" node="11IbrVuV6XV" resolve="expression" />
              </node>
              <node concept="Xl_RD" id="11IbrVuV6Yx" role="37wK5m">
                <property role="Xl_RC" value="Operand" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="11IbrVuV6Yy" role="3cqZAp">
          <node concept="3y3z36" id="11IbrVuV6Yz" role="3clFbw">
            <node concept="37vLTw" id="11IbrVuV6Y$" role="3uHU7B">
              <ref role="3cqZAo" node="11IbrVuV6XY" resolve="parent" />
            </node>
            <node concept="10Nm6u" id="11IbrVuV6Y_" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="11IbrVuV6YB" role="3clFbx">
            <node concept="3clFbF" id="11IbrVuV6YC" role="3cqZAp">
              <node concept="2OqwBi" id="11IbrVuV7AZ" role="3clFbG">
                <node concept="37vLTw" id="11IbrVuV7wc" role="2Oq$k0">
                  <ref role="3cqZAo" node="11IbrVuV6XY" resolve="parent" />
                </node>
                <node concept="liA8E" id="11IbrVuV7B0" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.insertChildBefore(org.jetbrains.mps.openapi.language.SContainmentLink,org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode)" resolve="insertChildBefore" />
                  <node concept="37vLTw" id="11IbrVuV7B1" role="37wK5m">
                    <ref role="3cqZAo" node="11IbrVuV6Y2" resolve="role" />
                  </node>
                  <node concept="37vLTw" id="11IbrVuV7B2" role="37wK5m">
                    <ref role="3cqZAo" node="11IbrVuV6Yg" resolve="binary" />
                  </node>
                  <node concept="37vLTw" id="11IbrVuV7B3" role="37wK5m">
                    <ref role="3cqZAo" node="11IbrVuV6XV" resolve="expression" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="11IbrVuV6YH" role="3cqZAp">
              <node concept="2OqwBi" id="11IbrVuV7Be" role="3clFbG">
                <node concept="37vLTw" id="11IbrVuV7wj" role="2Oq$k0">
                  <ref role="3cqZAo" node="11IbrVuV6XY" resolve="parent" />
                </node>
                <node concept="liA8E" id="11IbrVuV7Bf" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.removeChild(org.jetbrains.mps.openapi.model.SNode)" resolve="removeChild" />
                  <node concept="37vLTw" id="11IbrVuV7Bg" role="37wK5m">
                    <ref role="3cqZAo" node="11IbrVuV6XV" resolve="expression" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="11IbrVuV6YK" role="3cqZAp">
          <node concept="2OqwBi" id="11IbrVuV7Br" role="3clFbG">
            <node concept="37vLTw" id="11IbrVuV7wo" role="2Oq$k0">
              <ref role="3cqZAo" node="11IbrVuV6Yg" resolve="binary" />
            </node>
            <node concept="liA8E" id="11IbrVuV7Bs" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNode.addChild(org.jetbrains.mps.openapi.language.SContainmentLink,org.jetbrains.mps.openapi.model.SNode)" resolve="addChild" />
              <node concept="1rXfSq" id="11IbrVuV7Bt" role="37wK5m">
                <ref role="37wK5l" node="11IbrVuV6QW" resolve="linkOf" />
                <node concept="37vLTw" id="11IbrVuV7Bu" role="37wK5m">
                  <ref role="3cqZAo" node="11IbrVuV6Yg" resolve="binary" />
                </node>
                <node concept="Xl_RD" id="11IbrVuV7Bv" role="37wK5m">
                  <property role="Xl_RC" value="left" />
                </node>
              </node>
              <node concept="37vLTw" id="11IbrVuV7Bw" role="37wK5m">
                <ref role="3cqZAo" node="11IbrVuV6XV" resolve="expression" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="11IbrVuV6YQ" role="3cqZAp">
          <node concept="2OqwBi" id="11IbrVuV7BF" role="3clFbG">
            <node concept="37vLTw" id="11IbrVuV7ww" role="2Oq$k0">
              <ref role="3cqZAo" node="11IbrVuV6Yg" resolve="binary" />
            </node>
            <node concept="liA8E" id="11IbrVuV7BG" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNode.addChild(org.jetbrains.mps.openapi.language.SContainmentLink,org.jetbrains.mps.openapi.model.SNode)" resolve="addChild" />
              <node concept="1rXfSq" id="11IbrVuV7BH" role="37wK5m">
                <ref role="37wK5l" node="11IbrVuV6QW" resolve="linkOf" />
                <node concept="37vLTw" id="11IbrVuV7BI" role="37wK5m">
                  <ref role="3cqZAo" node="11IbrVuV6Yg" resolve="binary" />
                </node>
                <node concept="Xl_RD" id="11IbrVuV7BJ" role="37wK5m">
                  <property role="Xl_RC" value="right" />
                </node>
              </node>
              <node concept="37vLTw" id="11IbrVuV7BK" role="37wK5m">
                <ref role="3cqZAo" node="11IbrVuV6Ys" resolve="operand" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="11IbrVuV6YW" role="3cqZAp">
          <node concept="1rXfSq" id="11IbrVuV6YX" role="3clFbG">
            <ref role="37wK5l" node="11IbrVuV6Ws" resolve="wrapSelfIfNeeded" />
            <node concept="37vLTw" id="11IbrVuV6YY" role="37wK5m">
              <ref role="3cqZAo" node="11IbrVuV6Yg" resolve="binary" />
            </node>
            <node concept="37vLTw" id="11IbrVuV6YZ" role="37wK5m">
              <ref role="3cqZAo" node="11IbrVuV6Y6" resolve="onRight" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="11IbrVuV6Z0" role="3cqZAp">
          <node concept="37vLTw" id="11IbrVuV6Z1" role="3cqZAk">
            <ref role="3cqZAo" node="11IbrVuV6Ys" resolve="operand" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="11IbrVuV6Z2" role="1B3o_S" />
      <node concept="3uibUv" id="11IbrVuV6Z3" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
      </node>
    </node>
    <node concept="2YIFZL" id="11IbrVuV6Z4" role="jymVt">
      <property role="TrG5h" value="canUnwrap" />
      <node concept="37vLTG" id="11IbrVuV6Z5" role="3clF46">
        <property role="TrG5h" value="group" />
        <node concept="3uibUv" id="11IbrVuV6Z6" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="3clFbS" id="11IbrVuV6Z7" role="3clF47">
        <node concept="3clFbJ" id="11IbrVuV6Z8" role="3cqZAp">
          <node concept="22lmx$" id="11IbrVuV6Z9" role="3clFbw">
            <node concept="3fqX7Q" id="11IbrVuV6Za" role="3uHU7B">
              <node concept="1rXfSq" id="11IbrVuV6Zb" role="3fr31v">
                <ref role="37wK5l" node="11IbrVuV6Ub" resolve="is" />
                <node concept="37vLTw" id="11IbrVuV6Zc" role="37wK5m">
                  <ref role="3cqZAo" node="11IbrVuV6Z5" resolve="group" />
                </node>
                <node concept="Xl_RD" id="11IbrVuV6Zd" role="37wK5m">
                  <property role="Xl_RC" value="Group" />
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="11IbrVuV6Ze" role="3uHU7w">
              <node concept="2OqwBi" id="11IbrVuV7BU" role="3uHU7B">
                <node concept="37vLTw" id="11IbrVuV7wC" role="2Oq$k0">
                  <ref role="3cqZAo" node="11IbrVuV6Z5" resolve="group" />
                </node>
                <node concept="liA8E" id="11IbrVuV7BV" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getParent()" resolve="getParent" />
                </node>
              </node>
              <node concept="10Nm6u" id="11IbrVuV6Zg" role="3uHU7w" />
            </node>
          </node>
          <node concept="3clFbS" id="11IbrVuV6Zi" role="3clFbx">
            <node concept="3cpWs6" id="11IbrVuV6Zj" role="3cqZAp">
              <node concept="3clFbT" id="11IbrVuV6Zk" role="3cqZAk" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="11IbrVuV6Zm" role="3cqZAp">
          <node concept="3cpWsn" id="11IbrVuV6Zl" role="3cpWs9">
            <property role="TrG5h" value="inner" />
            <node concept="3uibUv" id="11IbrVuV6Zn" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
            <node concept="1rXfSq" id="11IbrVuV6Zo" role="33vP2m">
              <ref role="37wK5l" node="11IbrVuV6RO" resolve="childOf" />
              <node concept="37vLTw" id="11IbrVuV6Zp" role="37wK5m">
                <ref role="3cqZAo" node="11IbrVuV6Z5" resolve="group" />
              </node>
              <node concept="Xl_RD" id="11IbrVuV6Zq" role="37wK5m">
                <property role="Xl_RC" value="inner" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="11IbrVuV6Zs" role="3cqZAp">
          <node concept="3cpWsn" id="11IbrVuV6Zr" role="3cpWs9">
            <property role="TrG5h" value="parent" />
            <node concept="3uibUv" id="11IbrVuV6Zt" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
            <node concept="2OqwBi" id="11IbrVuV7C5" role="33vP2m">
              <node concept="37vLTw" id="11IbrVuV7wG" role="2Oq$k0">
                <ref role="3cqZAo" node="11IbrVuV6Z5" resolve="group" />
              </node>
              <node concept="liA8E" id="11IbrVuV7C6" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getParent()" resolve="getParent" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="11IbrVuV6Zv" role="3cqZAp">
          <node concept="1Wc70l" id="11IbrVuV6Zw" role="3clFbw">
            <node concept="1rXfSq" id="11IbrVuV6Zx" role="3uHU7B">
              <ref role="37wK5l" node="11IbrVuV6Ub" resolve="is" />
              <node concept="37vLTw" id="11IbrVuV6Zy" role="37wK5m">
                <ref role="3cqZAo" node="11IbrVuV6Zl" resolve="inner" />
              </node>
              <node concept="Xl_RD" id="11IbrVuV6Zz" role="37wK5m">
                <property role="Xl_RC" value="BinaryExpression" />
              </node>
            </node>
            <node concept="1rXfSq" id="11IbrVuV6Z$" role="3uHU7w">
              <ref role="37wK5l" node="11IbrVuV6Ub" resolve="is" />
              <node concept="37vLTw" id="11IbrVuV6Z_" role="37wK5m">
                <ref role="3cqZAo" node="11IbrVuV6Zr" resolve="parent" />
              </node>
              <node concept="Xl_RD" id="11IbrVuV6ZA" role="37wK5m">
                <property role="Xl_RC" value="BinaryExpression" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="11IbrVuV6ZC" role="3clFbx">
            <node concept="3cpWs6" id="11IbrVuV6ZD" role="3cqZAp">
              <node concept="3fqX7Q" id="11IbrVuV6ZE" role="3cqZAk">
                <node concept="1rXfSq" id="11IbrVuV6ZF" role="3fr31v">
                  <ref role="37wK5l" node="11IbrVuV6Tu" resolve="needsParentheses" />
                  <node concept="1rXfSq" id="11IbrVuV6ZG" role="37wK5m">
                    <ref role="37wK5l" node="11IbrVuV6V0" resolve="operator" />
                    <node concept="37vLTw" id="11IbrVuV6ZH" role="37wK5m">
                      <ref role="3cqZAo" node="11IbrVuV6Zr" resolve="parent" />
                    </node>
                  </node>
                  <node concept="1rXfSq" id="11IbrVuV6ZI" role="37wK5m">
                    <ref role="37wK5l" node="11IbrVuV6V0" resolve="operator" />
                    <node concept="37vLTw" id="11IbrVuV6ZJ" role="37wK5m">
                      <ref role="3cqZAo" node="11IbrVuV6Zl" resolve="inner" />
                    </node>
                  </node>
                  <node concept="1rXfSq" id="11IbrVuV6ZK" role="37wK5m">
                    <ref role="37wK5l" node="11IbrVuV6Vb" resolve="isRight" />
                    <node concept="37vLTw" id="11IbrVuV6ZL" role="37wK5m">
                      <ref role="3cqZAo" node="11IbrVuV6Z5" resolve="group" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="11IbrVuV6ZM" role="3cqZAp">
          <node concept="3clFbT" id="11IbrVuV6ZN" role="3cqZAk">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="11IbrVuV6ZO" role="1B3o_S" />
      <node concept="10P_77" id="11IbrVuV6ZP" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="11IbrVuV6ZQ" role="jymVt">
      <property role="TrG5h" value="unwrap" />
      <node concept="37vLTG" id="11IbrVuV6ZR" role="3clF46">
        <property role="TrG5h" value="group" />
        <node concept="3uibUv" id="11IbrVuV6ZS" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="3clFbS" id="11IbrVuV6ZT" role="3clF47">
        <node concept="3cpWs8" id="11IbrVuV6ZV" role="3cqZAp">
          <node concept="3cpWsn" id="11IbrVuV6ZU" role="3cpWs9">
            <property role="TrG5h" value="inner" />
            <node concept="3uibUv" id="11IbrVuV6ZW" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
            <node concept="1rXfSq" id="11IbrVuV6ZX" role="33vP2m">
              <ref role="37wK5l" node="11IbrVuV6RO" resolve="childOf" />
              <node concept="37vLTw" id="11IbrVuV6ZY" role="37wK5m">
                <ref role="3cqZAo" node="11IbrVuV6ZR" resolve="group" />
              </node>
              <node concept="Xl_RD" id="11IbrVuV6ZZ" role="37wK5m">
                <property role="Xl_RC" value="inner" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="11IbrVuV701" role="3cqZAp">
          <node concept="3cpWsn" id="11IbrVuV700" role="3cpWs9">
            <property role="TrG5h" value="parent" />
            <node concept="3uibUv" id="11IbrVuV702" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
            <node concept="2OqwBi" id="11IbrVuV7Cg" role="33vP2m">
              <node concept="37vLTw" id="11IbrVuV7wK" role="2Oq$k0">
                <ref role="3cqZAo" node="11IbrVuV6ZR" resolve="group" />
              </node>
              <node concept="liA8E" id="11IbrVuV7Ch" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getParent()" resolve="getParent" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="11IbrVuV705" role="3cqZAp">
          <node concept="3cpWsn" id="11IbrVuV704" role="3cpWs9">
            <property role="TrG5h" value="role" />
            <node concept="3uibUv" id="11IbrVuV706" role="1tU5fm">
              <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
            </node>
            <node concept="2OqwBi" id="11IbrVuV7Cr" role="33vP2m">
              <node concept="37vLTw" id="11IbrVuV7wO" role="2Oq$k0">
                <ref role="3cqZAo" node="11IbrVuV6ZR" resolve="group" />
              </node>
              <node concept="liA8E" id="11IbrVuV7Cs" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getContainmentLink()" resolve="getContainmentLink" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="11IbrVuV708" role="3cqZAp">
          <node concept="2OqwBi" id="11IbrVuV7CA" role="3clFbG">
            <node concept="37vLTw" id="11IbrVuV7wS" role="2Oq$k0">
              <ref role="3cqZAo" node="11IbrVuV6ZR" resolve="group" />
            </node>
            <node concept="liA8E" id="11IbrVuV7CB" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNode.removeChild(org.jetbrains.mps.openapi.model.SNode)" resolve="removeChild" />
              <node concept="37vLTw" id="11IbrVuV7CC" role="37wK5m">
                <ref role="3cqZAo" node="11IbrVuV6ZU" resolve="inner" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="11IbrVuV70b" role="3cqZAp">
          <node concept="2OqwBi" id="11IbrVuV7CN" role="3clFbG">
            <node concept="37vLTw" id="11IbrVuV7wX" role="2Oq$k0">
              <ref role="3cqZAo" node="11IbrVuV700" resolve="parent" />
            </node>
            <node concept="liA8E" id="11IbrVuV7CO" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNode.insertChildBefore(org.jetbrains.mps.openapi.language.SContainmentLink,org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode)" resolve="insertChildBefore" />
              <node concept="37vLTw" id="11IbrVuV7CP" role="37wK5m">
                <ref role="3cqZAo" node="11IbrVuV704" resolve="role" />
              </node>
              <node concept="37vLTw" id="11IbrVuV7CQ" role="37wK5m">
                <ref role="3cqZAo" node="11IbrVuV6ZU" resolve="inner" />
              </node>
              <node concept="37vLTw" id="11IbrVuV7CR" role="37wK5m">
                <ref role="3cqZAo" node="11IbrVuV6ZR" resolve="group" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="11IbrVuV70g" role="3cqZAp">
          <node concept="2OqwBi" id="11IbrVuV7D1" role="3clFbG">
            <node concept="37vLTw" id="11IbrVuV7x4" role="2Oq$k0">
              <ref role="3cqZAo" node="11IbrVuV6ZR" resolve="group" />
            </node>
            <node concept="liA8E" id="11IbrVuV7D2" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNode.delete()" resolve="delete" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="11IbrVuV70i" role="3cqZAp">
          <node concept="37vLTw" id="11IbrVuV70j" role="3cqZAk">
            <ref role="3cqZAo" node="11IbrVuV6ZU" resolve="inner" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="11IbrVuV70k" role="1B3o_S" />
      <node concept="3uibUv" id="11IbrVuV70l" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
      </node>
    </node>
  </node>
</model>

