<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:bbfd4f67-3d60-40cb-a629-ea2cfde43ecf(metabnf.editor.tests.interactions@tests)">
  <persistence version="9" />
  <languages>
    <use id="8585453e-6bfb-4d80-98de-b16074f1d86c" name="jetbrains.mps.lang.test" version="6" />
    <use id="48bed45b-b394-4796-8621-cea28d56a6da" name="Demo" version="0" />
    <use id="711aebfa-a9db-4765-b49c-bbdc45921ab7" name="DemoUsability" version="0" />
    <use id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin" version="6" />
    <use id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest" version="1" />
    <use id="50e8d5cb-be9f-4332-9294-b42895622bde" name="metabnf.trivia" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="n2m4" ref="r:29df74a9-1ef8-4ba0-9f28-0451ab1e71a4(DemoUsability.structure)" />
    <import index="cj4x" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor(MPS.Editor/)" />
    <import index="f4zo" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.cells(MPS.Editor/)" />
    <import index="ao3" ref="7124e466-fc92-4803-a656-d7a6b7eb3910/java:jetbrains.mps.text(MPS.TextGen/)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="exr9" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor(MPS.Editor/)" />
    <import index="82uw" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.function(JDK/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="4nm9" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.project(MPS.IDEA/)" />
    <import index="zwau" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor.hintsSettings(MPS.Editor/)" />
    <import index="dxuu" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing(JDK/)" />
    <import index="tqvn" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.tempmodel(MPS.Core/)" />
    <import index="dush" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.persistence(MPS.OpenAPI/)" />
    <import index="5ueo" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.editor.runtime.style(MPS.Editor/)" />
    <import index="3ju5" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.vfs(MPS.Core/)" />
    <import index="ends" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.extapi.persistence(MPS.Core/)" />
    <import index="g51k" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor.cells(MPS.Editor/)" />
    <import index="eoo2" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.nio.file(JDK/)" />
    <import index="9toz" ref="9c03c641-469f-49e7-aeed-44a3d19b7253/java:metabnf.usability(metabnf/)" />
    <import index="wyuk" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.components(MPS.Core/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="hox0" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.style(MPS.Editor/)" />
  </imports>
  <registry>
    <language id="8585453e-6bfb-4d80-98de-b16074f1d86c" name="jetbrains.mps.lang.test">
      <concept id="1228934484974" name="jetbrains.mps.lang.test.structure.PressKeyStatement" flags="nn" index="yd1bK">
        <child id="1228934507814" name="keyStrokes" index="yd6KS" />
      </concept>
      <concept id="7011073693661765739" name="jetbrains.mps.lang.test.structure.InvokeActionStatement" flags="nn" index="2HxZob">
        <child id="1101347953350127927" name="actionReference" index="3iKnsn" />
      </concept>
      <concept id="1229187653856" name="jetbrains.mps.lang.test.structure.EditorTestCase" flags="lg" index="LiM7Y">
        <property id="1883175908513350760" name="description" index="3YCmrE" />
        <child id="3143335925185262946" name="testNodeBefore" index="25YQCW" />
        <child id="3143335925185262981" name="testNodeResult" index="25YQFr" />
        <child id="1229187755283" name="code" index="LjaKd" />
      </concept>
      <concept id="1229194968594" name="jetbrains.mps.lang.test.structure.AnonymousCellAnnotation" flags="ng" index="LIFWc">
        <property id="6268941039745498163" name="selectionStart" index="p6zMq" />
        <property id="6268941039745498165" name="selectionEnd" index="p6zMs" />
        <property id="1229194968596" name="caretPosition" index="LIFWa" />
        <property id="1229194968595" name="cellId" index="LIFWd" />
      </concept>
      <concept id="1227182079811" name="jetbrains.mps.lang.test.structure.TypeKeyStatement" flags="nn" index="2TK7Tu">
        <property id="1227184461946" name="keys" index="2TTd_B" />
      </concept>
      <concept id="5773579205429866751" name="jetbrains.mps.lang.test.structure.EditorComponentExpression" flags="nn" index="369mXd" />
      <concept id="5773579205429617809" name="jetbrains.mps.lang.test.structure.SwitchToInspector" flags="nn" index="36ajGz" />
      <concept id="1101347953350122758" name="jetbrains.mps.lang.test.structure.BootstrapActionReference" flags="ng" index="3iKlGA">
        <property id="1101347953350127918" name="actionId" index="3iKnse" />
      </concept>
      <concept id="1225467090849" name="jetbrains.mps.lang.test.structure.ProjectExpression" flags="nn" index="1jxXqW" />
      <concept id="1216913645126" name="jetbrains.mps.lang.test.structure.NodesTestCase" flags="lg" index="1lH9Xt">
        <child id="1217501822150" name="nodesToCheck" index="1SKRRt" />
        <child id="1217501895093" name="testMethods" index="1SL9yI" />
      </concept>
      <concept id="1216989428737" name="jetbrains.mps.lang.test.structure.TestNode" flags="ng" index="1qefOq">
        <child id="1216989461394" name="nodeToCheck" index="1qenE9" />
      </concept>
      <concept id="1210673684636" name="jetbrains.mps.lang.test.structure.TestNodeAnnotation" flags="ng" index="3xLA65" />
      <concept id="1210674524691" name="jetbrains.mps.lang.test.structure.TestNodeReference" flags="nn" index="3xONca">
        <reference id="1210674534086" name="declaration" index="3xOPvv" />
      </concept>
      <concept id="1225978065297" name="jetbrains.mps.lang.test.structure.SimpleNodeTest" flags="ng" index="1LZb2c" />
    </language>
    <language id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin">
      <concept id="1207318242772" name="jetbrains.mps.lang.plugin.structure.KeyMapKeystroke" flags="ng" index="pLAjd">
        <property id="1207318242774" name="keycode" index="pLAjf" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1215695189714" name="jetbrains.mps.baseLanguage.structure.PlusAssignmentExpression" flags="nn" index="d57v9" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="8118189177080264853" name="jetbrains.mps.baseLanguage.structure.AlternativeType" flags="ig" index="nSUau">
        <child id="8118189177080264854" name="alternative" index="nSUat" />
      </concept>
      <concept id="1239714755177" name="jetbrains.mps.baseLanguage.structure.AbstractUnaryNumberOperation" flags="nn" index="2$Kvd9">
        <child id="1239714902950" name="expression" index="2$L3a6" />
      </concept>
      <concept id="1173175405605" name="jetbrains.mps.baseLanguage.structure.ArrayAccessExpression" flags="nn" index="AH0OO">
        <child id="1173175577737" name="index" index="AHEQo" />
        <child id="1173175590490" name="array" index="AHHXb" />
      </concept>
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="4952749571008284462" name="jetbrains.mps.baseLanguage.structure.CatchVariable" flags="ng" index="XOnhg" />
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1164991038168" name="jetbrains.mps.baseLanguage.structure.ThrowStatement" flags="nn" index="YS8fn">
        <child id="1164991057263" name="throwable" index="YScLw" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1221565133444" name="isFinal" index="1EXbeo" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1513279640923991009" name="jetbrains.mps.baseLanguage.structure.IGenericClassCreator" flags="ngI" index="366HgL">
        <property id="1513279640906337053" name="inferTypeParams" index="373rjd" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1164879685961" name="throwsItem" index="Sfmx6" />
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="nn" index="3eOVzh" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk">
        <child id="1212687122400" name="typeParameter" index="1pMfVU" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1214918800624" name="jetbrains.mps.baseLanguage.structure.PostfixIncrementExpression" flags="nn" index="3uNrnE" />
      <concept id="3093926081414150598" name="jetbrains.mps.baseLanguage.structure.MultipleCatchClause" flags="ng" index="3uVAMA">
        <child id="8276990574895933173" name="catchBody" index="1zc67A" />
        <child id="8276990574895933172" name="throwable" index="1zc67B" />
      </concept>
      <concept id="8276990574909231788" name="jetbrains.mps.baseLanguage.structure.FinallyClause" flags="ng" index="1wplmZ">
        <child id="8276990574909234106" name="finallyBody" index="1wplMD" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1184950988562" name="jetbrains.mps.baseLanguage.structure.ArrayCreator" flags="nn" index="3$_iS1">
        <child id="1184951007469" name="componentType" index="3$_nBY" />
        <child id="1184952969026" name="dimensionExpression" index="3$GQph" />
      </concept>
      <concept id="1184952934362" name="jetbrains.mps.baseLanguage.structure.DimensionExpression" flags="nn" index="3$GHV9">
        <child id="1184953288404" name="expression" index="3$I4v7" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ngI" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1144226303539" name="jetbrains.mps.baseLanguage.structure.ForeachStatement" flags="nn" index="1DcWWT">
        <child id="1144226360166" name="iterable" index="1DdaDG" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="1144231330558" name="jetbrains.mps.baseLanguage.structure.ForStatement" flags="nn" index="1Dw8fO">
        <child id="1144231399730" name="condition" index="1Dwp0S" />
        <child id="1144231408325" name="iteration" index="1Dwrff" />
      </concept>
      <concept id="5351203823916750322" name="jetbrains.mps.baseLanguage.structure.TryUniversalStatement" flags="nn" index="3J1_TO">
        <child id="8276990574886367510" name="catchClause" index="1zxBo5" />
        <child id="8276990574886367509" name="finallyClause" index="1zxBo6" />
        <child id="8276990574886367508" name="body" index="1zxBo7" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="711aebfa-a9db-4765-b49c-bbdc45921ab7" name="DemoUsability">
      <concept id="131190632983854520" name="DemoUsability.structure.Declaration" flags="ng" index="253Ayn">
        <property id="425049498302749281" name="identifier" index="13FgS_" />
        <property id="747412491540730435" name="public" index="1KDGnK" />
        <child id="457787586736161879" name="clause" index="1ZD6sP" />
      </concept>
      <concept id="4459790551685811815" name="DemoUsability.structure.StateMachine" flags="ng" index="2811m7">
        <property id="4459790551685811819" name="identifier" index="2811mb" />
        <child id="4459790551685811824" name="events" index="2811mg" />
        <child id="4459790551685811825" name="states" index="2811mh" />
      </concept>
      <concept id="4459790551685811816" name="DemoUsability.structure.Event" flags="ng" index="2811m8">
        <property id="4459790551685811820" name="identifier" index="2811mc" />
      </concept>
      <concept id="4459790551685811817" name="DemoUsability.structure.State" flags="ng" index="2811m9">
        <property id="4459790551685811821" name="identifier" index="2811md" />
        <property id="4459790551689999917" name="matrixNote" index="2bL6Rd" />
        <child id="4459790551685811826" name="transitions" index="2811mi" />
      </concept>
      <concept id="4459790551685811818" name="DemoUsability.structure.Transition" flags="ng" index="2811ma">
        <property id="4459790551685811822" name="event" index="2811me" />
        <property id="4459790551685811823" name="target" index="2811mf" />
      </concept>
      <concept id="894050251499783735" name="DemoUsability.structure.ElseClause" flags="ng" index="2f_wJ0">
        <child id="541487496020076895" name="statements" index="X56_t" />
      </concept>
      <concept id="273754124767157402" name="DemoUsability.structure.Block" flags="ng" index="hhWPR">
        <child id="370756925354297355" name="child" index="2kTR_Y" />
        <child id="561929395184684826" name="statements" index="336h3k" />
      </concept>
      <concept id="1020281049962308815" name="DemoUsability.structure.CatchClause" flags="ng" index="2se23U">
        <child id="800755338947244589" name="body" index="3MVAyh" />
      </concept>
      <concept id="330703645346546541" name="DemoUsability.structure.Statement" flags="ng" index="2um2pr" />
      <concept id="8300000000000100007" name="DemoUsability.structure.Group" flags="ng" index="w$02x">
        <child id="8300000000000100008" name="inner" index="w$02I" />
      </concept>
      <concept id="8300000000000100003" name="DemoUsability.structure.BinaryExpression" flags="ng" index="w$02_">
        <property id="8300000000000100004" name="operator" index="w$02y" />
        <child id="8300000000000100006" name="right" index="w$02w" />
        <child id="8300000000000100005" name="left" index="w$02z" />
      </concept>
      <concept id="8300000000000100001" name="DemoUsability.structure.Operand" flags="ng" index="w$02B">
        <property id="8300000000000100002" name="name" index="w$02$" />
      </concept>
      <concept id="8300000000000100100" name="DemoUsability.structure.Calculation" flags="ng" index="w$042">
        <child id="8300000000000100101" name="expression" index="w$043" />
      </concept>
      <concept id="759249427355896897" name="DemoUsability.structure.TryStatement" flags="ng" index="3nZI$l">
        <child id="145761556879270009" name="clauses" index="pHV$$" />
        <child id="817227958469731009" name="body" index="2uj4aY" />
      </concept>
    </language>
    <language id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest">
      <concept id="8427750732757990717" name="jetbrains.mps.baseLanguage.unitTest.structure.BinaryAssert" flags="nn" index="3tpDYu">
        <child id="8427750732757990725" name="actual" index="3tpDZA" />
        <child id="8427750732757990724" name="expected" index="3tpDZB" />
      </concept>
      <concept id="1171978097730" name="jetbrains.mps.baseLanguage.unitTest.structure.AssertEquals" flags="nn" index="3vlDli" />
      <concept id="1172073500303" name="jetbrains.mps.baseLanguage.unitTest.structure.Message" flags="ng" index="3_1$Yv">
        <child id="1172073511101" name="message" index="3_1BAH" />
      </concept>
      <concept id="1172075514136" name="jetbrains.mps.baseLanguage.unitTest.structure.MessageHolder" flags="ngI" index="3_9gw8">
        <child id="1172075534298" name="message" index="3_9lra" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1143226024141" name="jetbrains.mps.lang.smodel.structure.SModelType" flags="in" index="H_c77" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="50e8d5cb-be9f-4332-9294-b42895622bde" name="metabnf.trivia">
      <concept id="3130427633067305891" name="metabnf.trivia.structure.TargetListTrivia" flags="ng" index="2juEzV">
        <property id="3130427633067305892" name="listRole" index="2juEzW" />
        <child id="3130427633067305897" name="chunks" index="2juEzL" />
      </concept>
      <concept id="3130427633067305893" name="metabnf.trivia.structure.TargetTriviaChunk" flags="ng" index="2juEzX">
        <property id="3130427633067305894" name="text" index="2juEzY" />
        <property id="3130427633067305895" name="blankLine" index="2juEzZ" />
        <reference id="3130427633067305896" name="anchor" index="2juEzK" />
      </concept>
    </language>
    <language id="48bed45b-b394-4796-8621-cea28d56a6da" name="Demo">
      <concept id="5054346797381394432" name="Demo.structure.Number" flags="ng" index="1jEomy">
        <property id="1458547674486468608" name="NumberValue" index="3dwjPx" />
      </concept>
    </language>
  </registry>
  <node concept="LiM7Y" id="1SDFwTIRa6A">
    <property role="TrG5h" value="NumberTyping" />
    <property role="3YCmrE" value="Generated Demo editor: real keyboard input, independent AST and caret assertions" />
    <node concept="3clFbS" id="1SDFwTIRa6B" role="LjaKd">
      <node concept="2TK7Tu" id="1SDFwTIRa6C" role="3cqZAp">
        <property role="2TTd_B" value="2" />
      </node>
    </node>
    <node concept="1qefOq" id="1SDFwTIRa6D" role="25YQCW">
      <node concept="1jEomy" id="1SDFwTIRa6E" role="1qenE9">
        <property role="3dwjPx" value="1" />
        <node concept="LIFWc" id="1SDFwTIRa6F" role="lGtFl">
          <property role="LIFWd" value="property_NumberValue" />
          <property role="LIFWa" value="1" />
          <property role="p6zMq" value="1" />
          <property role="p6zMs" value="1" />
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="1SDFwTIRa6G" role="25YQFr">
      <node concept="1jEomy" id="1SDFwTIRa6H" role="1qenE9">
        <property role="3dwjPx" value="12" />
        <node concept="LIFWc" id="1SDFwTIRa6I" role="lGtFl">
          <property role="LIFWd" value="property_NumberValue" />
          <property role="LIFWa" value="2" />
          <property role="p6zMq" value="2" />
          <property role="p6zMs" value="2" />
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="1SDFwTIRa6J">
    <property role="TrG5h" value="NumberDeletion" />
    <property role="3YCmrE" value="Generated Demo editor: real keyboard input, independent AST and caret assertions" />
    <node concept="3clFbS" id="1SDFwTIRa6K" role="LjaKd">
      <node concept="2HxZob" id="3v958MU1P$L" role="3cqZAp">
        <node concept="3iKlGA" id="3v958MU1P$M" role="3iKnsn">
          <property role="3iKnse" value="jetbrains.mps.ide.editor.actions.Backspace_Action" />
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="1SDFwTIRa6N" role="25YQCW">
      <node concept="1jEomy" id="1SDFwTIRa6O" role="1qenE9">
        <property role="3dwjPx" value="12" />
        <node concept="LIFWc" id="1SDFwTIRa6P" role="lGtFl">
          <property role="LIFWd" value="property_NumberValue" />
          <property role="LIFWa" value="2" />
          <property role="p6zMq" value="2" />
          <property role="p6zMs" value="2" />
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="1SDFwTIRa6Q" role="25YQFr">
      <node concept="1jEomy" id="1SDFwTIRa6R" role="1qenE9">
        <property role="3dwjPx" value="1" />
        <node concept="LIFWc" id="1SDFwTIRa6S" role="lGtFl">
          <property role="LIFWd" value="property_NumberValue" />
          <property role="LIFWa" value="1" />
          <property role="p6zMq" value="1" />
          <property role="p6zMs" value="1" />
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="1SDFwTIRa6T">
    <property role="TrG5h" value="NumberUndo" />
    <property role="3YCmrE" value="Generated Demo editor: real keyboard input, independent AST and caret assertions" />
    <node concept="3clFbS" id="1SDFwTIRa6U" role="LjaKd">
      <node concept="2TK7Tu" id="1SDFwTIRa6V" role="3cqZAp">
        <property role="2TTd_B" value="2" />
      </node>
      <node concept="2HxZob" id="3v958MU1P$N" role="3cqZAp">
        <node concept="3iKlGA" id="3v958MU1P$O" role="3iKnsn">
          <property role="3iKnse" value="$Undo" />
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="1SDFwTIRa6Y" role="25YQCW">
      <node concept="1jEomy" id="1SDFwTIRa6Z" role="1qenE9">
        <property role="3dwjPx" value="1" />
        <node concept="LIFWc" id="1SDFwTIRa70" role="lGtFl">
          <property role="LIFWd" value="property_NumberValue" />
          <property role="LIFWa" value="1" />
          <property role="p6zMq" value="1" />
          <property role="p6zMs" value="1" />
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="1SDFwTIRa71" role="25YQFr">
      <node concept="1jEomy" id="1SDFwTIRa72" role="1qenE9">
        <property role="3dwjPx" value="1" />
        <node concept="LIFWc" id="1SDFwTIRa73" role="lGtFl">
          <property role="LIFWd" value="property_NumberValue" />
          <property role="LIFWa" value="1" />
          <property role="p6zMq" value="1" />
          <property role="p6zMs" value="1" />
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="39m6c$KgsYD">
    <property role="TrG5h" value="FlagTyping" />
    <property role="3YCmrE" value="Generated flag: real input, shared boolean binding and independent caret/AST assertions" />
    <node concept="3clFbS" id="39m6c$KgsYE" role="LjaKd">
      <node concept="2TK7Tu" id="39m6c$KgsYF" role="3cqZAp">
        <property role="2TTd_B" value="public" />
      </node>
      <node concept="3vlDli" id="39m6c$Kgt1k" role="3cqZAp">
        <node concept="Xl_RD" id="39m6c$Kgt1l" role="3tpDZB">
          <property role="Xl_RC" value="publicitem" />
        </node>
        <node concept="2YIFZM" id="39m6c$Kgt1j" role="3tpDZA">
          <ref role="1Pybhc" node="39m6c$Kgt2e" resolve="InteractionAssertions" />
          <ref role="37wK5l" node="39m6c$Kgt2k" resolve="export" />
          <node concept="1jxXqW" id="39m6c$Kgtd9" role="37wK5m" />
          <node concept="2OqwBi" id="39m6c$Kgt1g" role="37wK5m">
            <node concept="369mXd" id="39m6c$Kgt1h" role="2Oq$k0" />
            <node concept="liA8E" id="39m6c$Kgt1i" role="2OqNvi">
              <ref role="37wK5l" to="exr9:~EditorComponent.getEditedNode()" resolve="getEditedNode" />
            </node>
          </node>
        </node>
        <node concept="3_1$Yv" id="39m6c$KjKry" role="3_9lra">
          <node concept="Xl_RD" id="39m6c$KjKrz" role="3_1BAH">
            <property role="Xl_RC" value="FlagTyping: expected exact exported syntax publicitem" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="39m6c$KgsYG" role="25YQCW">
      <node concept="253Ayn" id="39m6c$KgsYH" role="1qenE9">
        <property role="13FgS_" value="item" />
        <node concept="LIFWc" id="39m6c$KgsYI" role="lGtFl">
          <property role="LIFWd" value="flag_public" />
          <property role="LIFWa" value="0" />
          <property role="p6zMq" value="0" />
          <property role="p6zMs" value="0" />
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="39m6c$KgsYJ" role="25YQFr">
      <node concept="253Ayn" id="39m6c$KgsYK" role="1qenE9">
        <property role="1KDGnK" value="true" />
        <property role="13FgS_" value="item" />
        <node concept="LIFWc" id="39m6c$KgsYL" role="lGtFl">
          <property role="LIFWd" value="flag_public" />
          <property role="LIFWa" value="6" />
          <property role="p6zMq" value="6" />
          <property role="p6zMs" value="6" />
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="39m6c$KgsYM">
    <property role="TrG5h" value="FlagDeletion" />
    <property role="3YCmrE" value="Generated flag: real input, shared boolean binding and independent caret/AST assertions" />
    <node concept="3clFbS" id="39m6c$KgsYN" role="LjaKd">
      <node concept="2HxZob" id="39m6c$KgsYO" role="3cqZAp">
        <node concept="3iKlGA" id="39m6c$KgsYP" role="3iKnsn">
          <property role="3iKnse" value="jetbrains.mps.ide.editor.actions.Backspace_Action" />
        </node>
      </node>
      <node concept="2HxZob" id="39m6c$KgsYQ" role="3cqZAp">
        <node concept="3iKlGA" id="39m6c$KgsYR" role="3iKnsn">
          <property role="3iKnse" value="jetbrains.mps.ide.editor.actions.Backspace_Action" />
        </node>
      </node>
      <node concept="2HxZob" id="39m6c$KgsYS" role="3cqZAp">
        <node concept="3iKlGA" id="39m6c$KgsYT" role="3iKnsn">
          <property role="3iKnse" value="jetbrains.mps.ide.editor.actions.Backspace_Action" />
        </node>
      </node>
      <node concept="2HxZob" id="39m6c$KgsYU" role="3cqZAp">
        <node concept="3iKlGA" id="39m6c$KgsYV" role="3iKnsn">
          <property role="3iKnse" value="jetbrains.mps.ide.editor.actions.Backspace_Action" />
        </node>
      </node>
      <node concept="2HxZob" id="39m6c$KgsYW" role="3cqZAp">
        <node concept="3iKlGA" id="39m6c$KgsYX" role="3iKnsn">
          <property role="3iKnse" value="jetbrains.mps.ide.editor.actions.Backspace_Action" />
        </node>
      </node>
      <node concept="2HxZob" id="39m6c$KgsYY" role="3cqZAp">
        <node concept="3iKlGA" id="39m6c$KgsYZ" role="3iKnsn">
          <property role="3iKnse" value="jetbrains.mps.ide.editor.actions.Backspace_Action" />
        </node>
      </node>
      <node concept="3vlDli" id="39m6c$Kgt1q" role="3cqZAp">
        <node concept="Xl_RD" id="39m6c$Kgt1r" role="3tpDZB">
          <property role="Xl_RC" value="item" />
        </node>
        <node concept="2YIFZM" id="39m6c$Kgt1p" role="3tpDZA">
          <ref role="1Pybhc" node="39m6c$Kgt2e" resolve="InteractionAssertions" />
          <ref role="37wK5l" node="39m6c$Kgt2k" resolve="export" />
          <node concept="1jxXqW" id="39m6c$Kgtda" role="37wK5m" />
          <node concept="2OqwBi" id="39m6c$Kgt1m" role="37wK5m">
            <node concept="369mXd" id="39m6c$Kgt1n" role="2Oq$k0" />
            <node concept="liA8E" id="39m6c$Kgt1o" role="2OqNvi">
              <ref role="37wK5l" to="exr9:~EditorComponent.getEditedNode()" resolve="getEditedNode" />
            </node>
          </node>
        </node>
        <node concept="3_1$Yv" id="39m6c$KjKr$" role="3_9lra">
          <node concept="Xl_RD" id="39m6c$KjKr_" role="3_1BAH">
            <property role="Xl_RC" value="FlagDeletion: expected exact exported syntax item" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="39m6c$KgsZ0" role="25YQCW">
      <node concept="253Ayn" id="39m6c$KgsZ1" role="1qenE9">
        <property role="1KDGnK" value="true" />
        <property role="13FgS_" value="item" />
        <node concept="LIFWc" id="39m6c$KgsZ2" role="lGtFl">
          <property role="LIFWd" value="flag_public" />
          <property role="LIFWa" value="6" />
          <property role="p6zMq" value="6" />
          <property role="p6zMs" value="6" />
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="39m6c$KgsZ3" role="25YQFr">
      <node concept="253Ayn" id="39m6c$KgsZ4" role="1qenE9">
        <property role="13FgS_" value="item" />
        <node concept="LIFWc" id="39m6c$KgsZ5" role="lGtFl">
          <property role="LIFWd" value="flag_public" />
          <property role="LIFWa" value="0" />
          <property role="p6zMq" value="0" />
          <property role="p6zMs" value="0" />
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="39m6c$KgsZ6">
    <property role="TrG5h" value="FlagUndo" />
    <property role="3YCmrE" value="Generated flag: real input, shared boolean binding and independent caret/AST assertions" />
    <node concept="3clFbS" id="39m6c$KgsZ7" role="LjaKd">
      <node concept="2TK7Tu" id="39m6c$KgsZ8" role="3cqZAp">
        <property role="2TTd_B" value="public" />
      </node>
      <node concept="2HxZob" id="39m6c$KgsZ9" role="3cqZAp">
        <node concept="3iKlGA" id="39m6c$KgsZa" role="3iKnsn">
          <property role="3iKnse" value="$Undo" />
        </node>
      </node>
      <node concept="3vlDli" id="39m6c$Kgt1w" role="3cqZAp">
        <node concept="Xl_RD" id="39m6c$Kgt1x" role="3tpDZB">
          <property role="Xl_RC" value="item" />
        </node>
        <node concept="2YIFZM" id="39m6c$Kgt1v" role="3tpDZA">
          <ref role="1Pybhc" node="39m6c$Kgt2e" resolve="InteractionAssertions" />
          <ref role="37wK5l" node="39m6c$Kgt2k" resolve="export" />
          <node concept="1jxXqW" id="39m6c$Kgtdb" role="37wK5m" />
          <node concept="2OqwBi" id="39m6c$Kgt1s" role="37wK5m">
            <node concept="369mXd" id="39m6c$Kgt1t" role="2Oq$k0" />
            <node concept="liA8E" id="39m6c$Kgt1u" role="2OqNvi">
              <ref role="37wK5l" to="exr9:~EditorComponent.getEditedNode()" resolve="getEditedNode" />
            </node>
          </node>
        </node>
        <node concept="3_1$Yv" id="39m6c$KjKrA" role="3_9lra">
          <node concept="Xl_RD" id="39m6c$KjKrB" role="3_1BAH">
            <property role="Xl_RC" value="FlagUndo: expected exact exported syntax item" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="39m6c$KgsZb" role="25YQCW">
      <node concept="253Ayn" id="39m6c$KgsZc" role="1qenE9">
        <property role="13FgS_" value="item" />
        <node concept="LIFWc" id="39m6c$KgsZd" role="lGtFl">
          <property role="LIFWd" value="flag_public" />
          <property role="LIFWa" value="0" />
          <property role="p6zMq" value="0" />
          <property role="p6zMs" value="0" />
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="39m6c$KgsZe" role="25YQFr">
      <node concept="253Ayn" id="39m6c$KgsZf" role="1qenE9">
        <property role="13FgS_" value="item" />
        <node concept="LIFWc" id="39m6c$KgsZg" role="lGtFl">
          <property role="LIFWd" value="flag_public" />
          <property role="LIFWa" value="0" />
          <property role="p6zMq" value="0" />
          <property role="p6zMs" value="0" />
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="39m6c$KgsZh">
    <property role="TrG5h" value="FlagFormToggle" />
    <property role="3YCmrE" value="Generated flag: real input, shared boolean binding and independent caret/AST assertions" />
    <node concept="3clFbS" id="39m6c$KgsZi" role="LjaKd">
      <node concept="36ajGz" id="39m6c$KgsZj" role="3cqZAp" />
      <node concept="yd1bK" id="39m6c$KgsZk" role="3cqZAp">
        <node concept="pLAjd" id="39m6c$KgsZl" role="yd6KS">
          <property role="pLAjf" value="VK_SPACE" />
        </node>
      </node>
      <node concept="3vlDli" id="39m6c$KgsZ_" role="3cqZAp">
        <node concept="Xl_RD" id="39m6c$KgsZA" role="3tpDZB">
          <property role="Xl_RC" value="flag_form_public" />
        </node>
        <node concept="2OqwBi" id="39m6c$KgsZz" role="3tpDZA">
          <node concept="2OqwBi" id="39m6c$KgsZx" role="2Oq$k0">
            <node concept="2OqwBi" id="39m6c$KgsZv" role="2Oq$k0">
              <node concept="2OqwBi" id="39m6c$KgsZt" role="2Oq$k0">
                <node concept="369mXd" id="39m6c$KgsZs" role="2Oq$k0" />
                <node concept="liA8E" id="39m6c$KgsZu" role="2OqNvi">
                  <ref role="37wK5l" to="exr9:~EditorComponent.getDeepestSelectedCell()" resolve="getDeepestSelectedCell" />
                </node>
              </node>
              <node concept="liA8E" id="39m6c$KgsZw" role="2OqNvi">
                <ref role="37wK5l" to="f4zo:~EditorCell.getParent()" resolve="getParent" />
              </node>
            </node>
            <node concept="liA8E" id="39m6c$KgsZy" role="2OqNvi">
              <ref role="37wK5l" to="f4zo:~EditorCell.getParent()" resolve="getParent" />
            </node>
          </node>
          <node concept="liA8E" id="39m6c$KgsZ$" role="2OqNvi">
            <ref role="37wK5l" to="f4zo:~EditorCell.getCellId()" resolve="getCellId" />
          </node>
        </node>
        <node concept="3_1$Yv" id="39m6c$KgsZB" role="3_9lra">
          <node concept="Xl_RD" id="39m6c$KgsZC" role="3_1BAH">
            <property role="Xl_RC" value="Checkbox toggle must retain focus within the same flag control" />
          </node>
        </node>
      </node>
      <node concept="3vlDli" id="39m6c$Kgt1A" role="3cqZAp">
        <node concept="Xl_RD" id="39m6c$Kgt1B" role="3tpDZB">
          <property role="Xl_RC" value="publicitem" />
        </node>
        <node concept="2YIFZM" id="39m6c$Kgt1_" role="3tpDZA">
          <ref role="1Pybhc" node="39m6c$Kgt2e" resolve="InteractionAssertions" />
          <ref role="37wK5l" node="39m6c$Kgt2k" resolve="export" />
          <node concept="1jxXqW" id="39m6c$Kgtdc" role="37wK5m" />
          <node concept="2OqwBi" id="39m6c$Kgt1y" role="37wK5m">
            <node concept="369mXd" id="39m6c$Kgt1z" role="2Oq$k0" />
            <node concept="liA8E" id="39m6c$Kgt1$" role="2OqNvi">
              <ref role="37wK5l" to="exr9:~EditorComponent.getEditedNode()" resolve="getEditedNode" />
            </node>
          </node>
        </node>
        <node concept="3_1$Yv" id="39m6c$KjKrC" role="3_9lra">
          <node concept="Xl_RD" id="39m6c$KjKrD" role="3_1BAH">
            <property role="Xl_RC" value="FlagFormToggle: expected exact exported syntax publicitem" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="39m6c$KgsZm" role="25YQCW">
      <node concept="253Ayn" id="39m6c$KgsZn" role="1qenE9">
        <property role="13FgS_" value="item" />
        <node concept="LIFWc" id="39m6c$KgsZo" role="lGtFl">
          <property role="LIFWd" value="flag_public" />
          <property role="LIFWa" value="0" />
          <property role="p6zMq" value="0" />
          <property role="p6zMs" value="0" />
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="39m6c$KgsZp" role="25YQFr">
      <node concept="253Ayn" id="39m6c$KgsZq" role="1qenE9">
        <property role="1KDGnK" value="true" />
        <property role="13FgS_" value="item" />
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="39m6c$KgsZD">
    <property role="TrG5h" value="GroupTrigger" />
    <property role="3YCmrE" value="Optional clause: real trigger, empty payload focus, preserved flag/identifier and undo" />
    <node concept="3clFbS" id="39m6c$KgsZE" role="LjaKd">
      <node concept="2TK7Tu" id="39m6c$KgsZF" role="3cqZAp">
        <property role="2TTd_B" value="else" />
      </node>
      <node concept="3vlDli" id="39m6c$KgsZR" role="3cqZAp">
        <node concept="Xl_RD" id="39m6c$KgsZS" role="3tpDZB">
          <property role="Xl_RC" value="statements" />
        </node>
        <node concept="2OqwBi" id="39m6c$Kgt2c" role="3tpDZA">
          <node concept="2OqwBi" id="39m6c$KgsZQ" role="2Oq$k0">
            <node concept="2OqwBi" id="39m6c$KgsZO" role="2Oq$k0">
              <node concept="369mXd" id="39m6c$KgsZM" role="2Oq$k0" />
              <node concept="liA8E" id="39m6c$KgsZN" role="2OqNvi">
                <ref role="37wK5l" to="exr9:~EditorComponent.getDeepestSelectedCell()" resolve="getDeepestSelectedCell" />
              </node>
            </node>
            <node concept="liA8E" id="39m6c$KgsZP" role="2OqNvi">
              <ref role="37wK5l" to="f4zo:~EditorCell.getSRole()" resolve="getSRole" />
            </node>
          </node>
          <node concept="liA8E" id="39m6c$Kgt2d" role="2OqNvi">
            <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
          </node>
        </node>
        <node concept="3_1$Yv" id="39m6c$KjKrE" role="3_9lra">
          <node concept="Xl_RD" id="39m6c$KjKrF" role="3_1BAH">
            <property role="Xl_RC" value="GroupTrigger: expected editor focus statements" />
          </node>
        </node>
      </node>
      <node concept="3vlDli" id="39m6c$Kgt1G" role="3cqZAp">
        <node concept="Xl_RD" id="39m6c$Kgt1H" role="3tpDZB">
          <property role="Xl_RC" value="publicitemelse" />
        </node>
        <node concept="2YIFZM" id="39m6c$Kgt1F" role="3tpDZA">
          <ref role="1Pybhc" node="39m6c$Kgt2e" resolve="InteractionAssertions" />
          <ref role="37wK5l" node="39m6c$Kgt2k" resolve="export" />
          <node concept="1jxXqW" id="39m6c$Kgtdd" role="37wK5m" />
          <node concept="2OqwBi" id="39m6c$Kgt1C" role="37wK5m">
            <node concept="369mXd" id="39m6c$Kgt1D" role="2Oq$k0" />
            <node concept="liA8E" id="39m6c$Kgt1E" role="2OqNvi">
              <ref role="37wK5l" to="exr9:~EditorComponent.getEditedNode()" resolve="getEditedNode" />
            </node>
          </node>
        </node>
        <node concept="3_1$Yv" id="39m6c$KjKrG" role="3_9lra">
          <node concept="Xl_RD" id="39m6c$KjKrH" role="3_1BAH">
            <property role="Xl_RC" value="GroupTrigger: expected exact exported syntax publicitemelse" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="39m6c$KgsZG" role="25YQCW">
      <node concept="253Ayn" id="39m6c$KgsZH" role="1qenE9">
        <property role="1KDGnK" value="true" />
        <property role="13FgS_" value="item" />
        <node concept="LIFWc" id="39m6c$KgsZI" role="lGtFl">
          <property role="LIFWd" value="empty_clause" />
          <property role="LIFWa" value="0" />
          <property role="p6zMq" value="0" />
          <property role="p6zMs" value="0" />
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="39m6c$KgsZJ" role="25YQFr">
      <node concept="253Ayn" id="39m6c$KgsZK" role="1qenE9">
        <property role="1KDGnK" value="true" />
        <property role="13FgS_" value="item" />
        <node concept="2f_wJ0" id="39m6c$KgsZL" role="1ZD6sP" />
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="39m6c$KgsZT">
    <property role="TrG5h" value="GroupTriggerUndo" />
    <property role="3YCmrE" value="Optional clause: real trigger, empty payload focus, preserved flag/identifier and undo" />
    <node concept="3clFbS" id="39m6c$KgsZU" role="LjaKd">
      <node concept="2TK7Tu" id="39m6c$KgsZV" role="3cqZAp">
        <property role="2TTd_B" value="else" />
      </node>
      <node concept="2HxZob" id="39m6c$KgsZW" role="3cqZAp">
        <node concept="3iKlGA" id="39m6c$KgsZX" role="3iKnsn">
          <property role="3iKnse" value="$Undo" />
        </node>
      </node>
      <node concept="3vlDli" id="39m6c$Kgt1M" role="3cqZAp">
        <node concept="Xl_RD" id="39m6c$Kgt1N" role="3tpDZB">
          <property role="Xl_RC" value="publicitem" />
        </node>
        <node concept="2YIFZM" id="39m6c$Kgt1L" role="3tpDZA">
          <ref role="1Pybhc" node="39m6c$Kgt2e" resolve="InteractionAssertions" />
          <ref role="37wK5l" node="39m6c$Kgt2k" resolve="export" />
          <node concept="1jxXqW" id="39m6c$Kgtde" role="37wK5m" />
          <node concept="2OqwBi" id="39m6c$Kgt1I" role="37wK5m">
            <node concept="369mXd" id="39m6c$Kgt1J" role="2Oq$k0" />
            <node concept="liA8E" id="39m6c$Kgt1K" role="2OqNvi">
              <ref role="37wK5l" to="exr9:~EditorComponent.getEditedNode()" resolve="getEditedNode" />
            </node>
          </node>
        </node>
        <node concept="3_1$Yv" id="39m6c$KjKrI" role="3_9lra">
          <node concept="Xl_RD" id="39m6c$KjKrJ" role="3_1BAH">
            <property role="Xl_RC" value="GroupTriggerUndo: expected exact exported syntax publicitem" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="39m6c$KgsZY" role="25YQCW">
      <node concept="253Ayn" id="39m6c$KgsZZ" role="1qenE9">
        <property role="1KDGnK" value="true" />
        <property role="13FgS_" value="item" />
        <node concept="LIFWc" id="39m6c$Kgt00" role="lGtFl">
          <property role="LIFWd" value="empty_clause" />
          <property role="LIFWa" value="0" />
          <property role="p6zMq" value="0" />
          <property role="p6zMs" value="0" />
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="39m6c$Kgt01" role="25YQFr">
      <node concept="253Ayn" id="39m6c$Kgt02" role="1qenE9">
        <property role="1KDGnK" value="true" />
        <property role="13FgS_" value="item" />
        <node concept="LIFWc" id="39m6c$Kgt03" role="lGtFl">
          <property role="LIFWd" value="empty_clause" />
          <property role="LIFWa" value="3" />
          <property role="p6zMq" value="3" />
          <property role="p6zMs" value="3" />
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="39m6c$Kgt04">
    <property role="TrG5h" value="GroupEmptyRemoval" />
    <property role="3YCmrE" value="Optional group removal: native explicit-selection policy, unchanged surrounding data and undo" />
    <node concept="3clFbS" id="39m6c$Kgt05" role="LjaKd">
      <node concept="2HxZob" id="39m6c$Kgt06" role="3cqZAp">
        <node concept="3iKlGA" id="39m6c$Kgt07" role="3iKnsn">
          <property role="3iKnse" value="jetbrains.mps.ide.editor.actions.Backspace_Action" />
        </node>
      </node>
      <node concept="2HxZob" id="39m6c$Kgt08" role="3cqZAp">
        <node concept="3iKlGA" id="39m6c$Kgt09" role="3iKnsn">
          <property role="3iKnse" value="jetbrains.mps.ide.editor.actions.Backspace_Action" />
        </node>
      </node>
      <node concept="3vlDli" id="39m6c$Kgt1S" role="3cqZAp">
        <node concept="Xl_RD" id="39m6c$Kgt1T" role="3tpDZB">
          <property role="Xl_RC" value="publicitem" />
        </node>
        <node concept="2YIFZM" id="39m6c$Kgt1R" role="3tpDZA">
          <ref role="1Pybhc" node="39m6c$Kgt2e" resolve="InteractionAssertions" />
          <ref role="37wK5l" node="39m6c$Kgt2k" resolve="export" />
          <node concept="1jxXqW" id="39m6c$Kgtdf" role="37wK5m" />
          <node concept="2OqwBi" id="39m6c$Kgt1O" role="37wK5m">
            <node concept="369mXd" id="39m6c$Kgt1P" role="2Oq$k0" />
            <node concept="liA8E" id="39m6c$Kgt1Q" role="2OqNvi">
              <ref role="37wK5l" to="exr9:~EditorComponent.getEditedNode()" resolve="getEditedNode" />
            </node>
          </node>
        </node>
        <node concept="3_1$Yv" id="39m6c$KjKrK" role="3_9lra">
          <node concept="Xl_RD" id="39m6c$KjKrL" role="3_1BAH">
            <property role="Xl_RC" value="GroupEmptyRemoval: expected exact exported syntax publicitem" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="39m6c$Kgt0a" role="25YQCW">
      <node concept="253Ayn" id="39m6c$Kgt0b" role="1qenE9">
        <property role="1KDGnK" value="true" />
        <property role="13FgS_" value="item" />
        <node concept="2f_wJ0" id="39m6c$Kgt0c" role="1ZD6sP">
          <node concept="LIFWc" id="39m6c$Kgt0d" role="lGtFl">
            <property role="LIFWd" value="Constant_swcpmq_a0" />
            <property role="LIFWa" value="0" />
            <property role="p6zMq" value="0" />
            <property role="p6zMs" value="0" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="39m6c$Kgt0e" role="25YQFr">
      <node concept="253Ayn" id="39m6c$Kgt0f" role="1qenE9">
        <property role="1KDGnK" value="true" />
        <property role="13FgS_" value="item" />
        <node concept="LIFWc" id="39m6c$Kgt0g" role="lGtFl">
          <property role="LIFWd" value="empty_clause" />
          <property role="LIFWa" value="0" />
          <property role="p6zMq" value="0" />
          <property role="p6zMs" value="0" />
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="39m6c$Kgt0h">
    <property role="TrG5h" value="GroupPopulatedRemovalRequiresApproval" />
    <property role="3YCmrE" value="Optional group removal: native explicit-selection policy, unchanged surrounding data and undo" />
    <node concept="3clFbS" id="39m6c$Kgt0i" role="LjaKd">
      <node concept="2HxZob" id="39m6c$Kgt0j" role="3cqZAp">
        <node concept="3iKlGA" id="39m6c$Kgt0k" role="3iKnsn">
          <property role="3iKnse" value="jetbrains.mps.ide.editor.actions.Backspace_Action" />
        </node>
      </node>
      <node concept="3vlDli" id="39m6c$Kgt0w" role="3cqZAp">
        <node concept="Xl_RD" id="39m6c$Kgt0x" role="3tpDZB">
          <property role="Xl_RC" value="Constant_swcpmq_a0" />
        </node>
        <node concept="2OqwBi" id="39m6c$Kgt0y" role="3tpDZA">
          <node concept="2OqwBi" id="39m6c$Kgt0z" role="2Oq$k0">
            <node concept="369mXd" id="39m6c$Kgt0$" role="2Oq$k0" />
            <node concept="liA8E" id="39m6c$Kgt0_" role="2OqNvi">
              <ref role="37wK5l" to="exr9:~EditorComponent.getDeepestSelectedCell()" resolve="getDeepestSelectedCell" />
            </node>
          </node>
          <node concept="liA8E" id="39m6c$Kgt0A" role="2OqNvi">
            <ref role="37wK5l" to="f4zo:~EditorCell.getCellId()" resolve="getCellId" />
          </node>
        </node>
        <node concept="3_1$Yv" id="39m6c$KjKrM" role="3_9lra">
          <node concept="Xl_RD" id="39m6c$KjKrN" role="3_1BAH">
            <property role="Xl_RC" value="GroupPopulatedRemovalRequiresApproval: expected editor focus Constant_swcpmq_a0" />
          </node>
        </node>
      </node>
      <node concept="3vlDli" id="39m6c$Kgt1Y" role="3cqZAp">
        <node concept="Xl_RD" id="39m6c$Kgt1Z" role="3tpDZB">
          <property role="Xl_RC" value="publicitemelseskipskip" />
        </node>
        <node concept="2YIFZM" id="39m6c$Kgt1X" role="3tpDZA">
          <ref role="1Pybhc" node="39m6c$Kgt2e" resolve="InteractionAssertions" />
          <ref role="37wK5l" node="39m6c$Kgt2k" resolve="export" />
          <node concept="1jxXqW" id="39m6c$Kgtdg" role="37wK5m" />
          <node concept="2OqwBi" id="39m6c$Kgt1U" role="37wK5m">
            <node concept="369mXd" id="39m6c$Kgt1V" role="2Oq$k0" />
            <node concept="liA8E" id="39m6c$Kgt1W" role="2OqNvi">
              <ref role="37wK5l" to="exr9:~EditorComponent.getEditedNode()" resolve="getEditedNode" />
            </node>
          </node>
        </node>
        <node concept="3_1$Yv" id="39m6c$KjKrO" role="3_9lra">
          <node concept="Xl_RD" id="39m6c$KjKrP" role="3_1BAH">
            <property role="Xl_RC" value="GroupPopulatedRemovalRequiresApproval: expected exact exported syntax publicitemelseskipskip" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="39m6c$Kgt0l" role="25YQCW">
      <node concept="253Ayn" id="39m6c$Kgt0m" role="1qenE9">
        <property role="1KDGnK" value="true" />
        <property role="13FgS_" value="item" />
        <node concept="2f_wJ0" id="39m6c$Kgt0n" role="1ZD6sP">
          <node concept="2um2pr" id="39m6c$Kgt0o" role="X56_t" />
          <node concept="2um2pr" id="39m6c$Kgt0p" role="X56_t" />
          <node concept="LIFWc" id="39m6c$Kgt0q" role="lGtFl">
            <property role="LIFWd" value="Constant_swcpmq_a0" />
            <property role="LIFWa" value="0" />
            <property role="p6zMq" value="0" />
            <property role="p6zMs" value="0" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="39m6c$Kgt0r" role="25YQFr">
      <node concept="253Ayn" id="39m6c$Kgt0s" role="1qenE9">
        <property role="1KDGnK" value="true" />
        <property role="13FgS_" value="item" />
        <node concept="2f_wJ0" id="39m6c$Kgt0t" role="1ZD6sP">
          <node concept="2um2pr" id="39m6c$Kgt0u" role="X56_t" />
          <node concept="2um2pr" id="39m6c$Kgt0v" role="X56_t" />
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="39m6c$Kgt0B">
    <property role="TrG5h" value="GroupPopulatedRemoval" />
    <property role="3YCmrE" value="Optional group removal: native explicit-selection policy, unchanged surrounding data and undo" />
    <node concept="3clFbS" id="39m6c$Kgt0C" role="LjaKd">
      <node concept="2HxZob" id="39m6c$Kgt0D" role="3cqZAp">
        <node concept="3iKlGA" id="39m6c$Kgt0E" role="3iKnsn">
          <property role="3iKnse" value="jetbrains.mps.ide.editor.actions.Backspace_Action" />
        </node>
      </node>
      <node concept="2HxZob" id="39m6c$Kgt0F" role="3cqZAp">
        <node concept="3iKlGA" id="39m6c$Kgt0G" role="3iKnsn">
          <property role="3iKnse" value="jetbrains.mps.ide.editor.actions.Backspace_Action" />
        </node>
      </node>
      <node concept="3vlDli" id="39m6c$Kgt24" role="3cqZAp">
        <node concept="Xl_RD" id="39m6c$Kgt25" role="3tpDZB">
          <property role="Xl_RC" value="publicitem" />
        </node>
        <node concept="2YIFZM" id="39m6c$Kgt23" role="3tpDZA">
          <ref role="1Pybhc" node="39m6c$Kgt2e" resolve="InteractionAssertions" />
          <ref role="37wK5l" node="39m6c$Kgt2k" resolve="export" />
          <node concept="1jxXqW" id="39m6c$Kgtdh" role="37wK5m" />
          <node concept="2OqwBi" id="39m6c$Kgt20" role="37wK5m">
            <node concept="369mXd" id="39m6c$Kgt21" role="2Oq$k0" />
            <node concept="liA8E" id="39m6c$Kgt22" role="2OqNvi">
              <ref role="37wK5l" to="exr9:~EditorComponent.getEditedNode()" resolve="getEditedNode" />
            </node>
          </node>
        </node>
        <node concept="3_1$Yv" id="39m6c$KjKrQ" role="3_9lra">
          <node concept="Xl_RD" id="39m6c$KjKrR" role="3_1BAH">
            <property role="Xl_RC" value="GroupPopulatedRemoval: expected exact exported syntax publicitem" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="39m6c$Kgt0H" role="25YQCW">
      <node concept="253Ayn" id="39m6c$Kgt0I" role="1qenE9">
        <property role="1KDGnK" value="true" />
        <property role="13FgS_" value="item" />
        <node concept="2f_wJ0" id="39m6c$Kgt0J" role="1ZD6sP">
          <node concept="2um2pr" id="39m6c$Kgt0K" role="X56_t" />
          <node concept="2um2pr" id="39m6c$Kgt0L" role="X56_t" />
          <node concept="LIFWc" id="39m6c$Kgt0M" role="lGtFl">
            <property role="LIFWd" value="Constant_swcpmq_a0" />
            <property role="LIFWa" value="0" />
            <property role="p6zMq" value="0" />
            <property role="p6zMs" value="0" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="39m6c$Kgt0N" role="25YQFr">
      <node concept="253Ayn" id="39m6c$Kgt0O" role="1qenE9">
        <property role="1KDGnK" value="true" />
        <property role="13FgS_" value="item" />
        <node concept="LIFWc" id="39m6c$Kgt0P" role="lGtFl">
          <property role="LIFWd" value="empty_clause" />
          <property role="LIFWa" value="0" />
          <property role="p6zMq" value="0" />
          <property role="p6zMs" value="0" />
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="39m6c$Kgt0Q">
    <property role="TrG5h" value="GroupPopulatedRemovalUndo" />
    <property role="3YCmrE" value="Optional group removal: native explicit-selection policy, unchanged surrounding data and undo" />
    <node concept="3clFbS" id="39m6c$Kgt0R" role="LjaKd">
      <node concept="2HxZob" id="39m6c$Kgt0S" role="3cqZAp">
        <node concept="3iKlGA" id="39m6c$Kgt0T" role="3iKnsn">
          <property role="3iKnse" value="jetbrains.mps.ide.editor.actions.Backspace_Action" />
        </node>
      </node>
      <node concept="2HxZob" id="39m6c$Kgt0U" role="3cqZAp">
        <node concept="3iKlGA" id="39m6c$Kgt0V" role="3iKnsn">
          <property role="3iKnse" value="jetbrains.mps.ide.editor.actions.Backspace_Action" />
        </node>
      </node>
      <node concept="2HxZob" id="39m6c$Kgt0W" role="3cqZAp">
        <node concept="3iKlGA" id="39m6c$Kgt0X" role="3iKnsn">
          <property role="3iKnse" value="$Undo" />
        </node>
      </node>
      <node concept="3vlDli" id="39m6c$Kgt19" role="3cqZAp">
        <node concept="Xl_RD" id="39m6c$Kgt1a" role="3tpDZB">
          <property role="Xl_RC" value="Constant_swcpmq_a0" />
        </node>
        <node concept="2OqwBi" id="39m6c$KgyRs" role="3tpDZA">
          <node concept="2OqwBi" id="39m6c$KgyRt" role="2Oq$k0">
            <node concept="369mXd" id="39m6c$KgyRu" role="2Oq$k0" />
            <node concept="liA8E" id="39m6c$KgyRv" role="2OqNvi">
              <ref role="37wK5l" to="exr9:~EditorComponent.getDeepestSelectedCell()" resolve="getDeepestSelectedCell" />
            </node>
          </node>
          <node concept="liA8E" id="39m6c$KgyRw" role="2OqNvi">
            <ref role="37wK5l" to="f4zo:~EditorCell.getCellId()" resolve="getCellId" />
          </node>
        </node>
        <node concept="3_1$Yv" id="39m6c$KjKrS" role="3_9lra">
          <node concept="Xl_RD" id="39m6c$KjKrT" role="3_1BAH">
            <property role="Xl_RC" value="GroupPopulatedRemovalUndo: expected editor focus Constant_swcpmq_a0" />
          </node>
        </node>
      </node>
      <node concept="3vlDli" id="39m6c$Kgt2a" role="3cqZAp">
        <node concept="Xl_RD" id="39m6c$Kgt2b" role="3tpDZB">
          <property role="Xl_RC" value="publicitemelseskipskip" />
        </node>
        <node concept="2YIFZM" id="39m6c$Kgt29" role="3tpDZA">
          <ref role="1Pybhc" node="39m6c$Kgt2e" resolve="InteractionAssertions" />
          <ref role="37wK5l" node="39m6c$Kgt2k" resolve="export" />
          <node concept="1jxXqW" id="39m6c$Kgtdi" role="37wK5m" />
          <node concept="2OqwBi" id="39m6c$Kgt26" role="37wK5m">
            <node concept="369mXd" id="39m6c$Kgt27" role="2Oq$k0" />
            <node concept="liA8E" id="39m6c$Kgt28" role="2OqNvi">
              <ref role="37wK5l" to="exr9:~EditorComponent.getEditedNode()" resolve="getEditedNode" />
            </node>
          </node>
        </node>
        <node concept="3_1$Yv" id="39m6c$KjKrU" role="3_9lra">
          <node concept="Xl_RD" id="39m6c$KjKrV" role="3_1BAH">
            <property role="Xl_RC" value="GroupPopulatedRemovalUndo: expected exact exported syntax publicitemelseskipskip" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="39m6c$Kgt0Y" role="25YQCW">
      <node concept="253Ayn" id="39m6c$Kgt0Z" role="1qenE9">
        <property role="1KDGnK" value="true" />
        <property role="13FgS_" value="item" />
        <node concept="2f_wJ0" id="39m6c$Kgt10" role="1ZD6sP">
          <node concept="2um2pr" id="39m6c$Kgt11" role="X56_t" />
          <node concept="2um2pr" id="39m6c$Kgt12" role="X56_t" />
          <node concept="LIFWc" id="39m6c$Kgt13" role="lGtFl">
            <property role="LIFWd" value="Constant_swcpmq_a0" />
            <property role="LIFWa" value="0" />
            <property role="p6zMq" value="0" />
            <property role="p6zMs" value="0" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="39m6c$Kgt14" role="25YQFr">
      <node concept="253Ayn" id="39m6c$Kgt15" role="1qenE9">
        <property role="1KDGnK" value="true" />
        <property role="13FgS_" value="item" />
        <node concept="2f_wJ0" id="39m6c$Kgt16" role="1ZD6sP">
          <node concept="2um2pr" id="39m6c$Kgt17" role="X56_t" />
          <node concept="2um2pr" id="39m6c$Kgt18" role="X56_t" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="39m6c$Kgt2e">
    <property role="TrG5h" value="InteractionAssertions" />
    <property role="1EXbeo" value="true" />
    <node concept="3Tm1VV" id="39m6c$Kgt2f" role="1B3o_S" />
    <node concept="3clFbW" id="39m6c$Kgt2g" role="jymVt">
      <node concept="3cqZAl" id="39m6c$Kgt2h" role="3clF45" />
      <node concept="3clFbS" id="39m6c$Kgt2i" role="3clF47" />
      <node concept="3Tm6S6" id="39m6c$Kgt2j" role="1B3o_S" />
    </node>
    <node concept="2YIFZL" id="39m6c$Kgt2k" role="jymVt">
      <property role="TrG5h" value="export" />
      <node concept="37vLTG" id="39m6c$Kgt2l" role="3clF46">
        <property role="TrG5h" value="project" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="39m6c$Kgt2m" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="37vLTG" id="39m6c$Kgt2n" role="3clF46">
        <property role="TrG5h" value="node" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tqbb2" id="39m6c$Kgtdj" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="39m6c$Kgt2p" role="3clF47">
        <node concept="3cpWs6" id="39m6c$Kgt2q" role="3cqZAp">
          <node concept="2OqwBi" id="39m6c$KgtcA" role="3cqZAk">
            <node concept="2OqwBi" id="39m6c$Kgtce" role="2Oq$k0">
              <node concept="37vLTw" id="39m6c$KgtbN" role="2Oq$k0">
                <ref role="3cqZAo" node="39m6c$Kgt2l" resolve="project" />
              </node>
              <node concept="liA8E" id="39m6c$Kgtcf" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~Project.getModelAccess()" resolve="getModelAccess" />
              </node>
            </node>
            <node concept="liA8E" id="39m6c$KgtcB" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~ModelAccess.computeReadAction(java.util.function.Supplier)" resolve="computeReadAction" />
              <node concept="1bVj0M" id="39m6c$KjKs0" role="37wK5m">
                <node concept="3clFbS" id="39m6c$KgtcG" role="1bW5cS">
                  <node concept="3cpWs6" id="39m6c$KgtcH" role="3cqZAp">
                    <node concept="2YIFZM" id="39m6c$KgtcI" role="3cqZAk">
                      <ref role="1Pybhc" to="ao3:~TextGeneratorEngine" resolve="TextGeneratorEngine" />
                      <ref role="37wK5l" to="ao3:~TextGeneratorEngine.generateText(jetbrains.mps.components.ComponentHost,org.jetbrains.mps.openapi.model.SNode)" resolve="generateText" />
                      <node concept="2OqwBi" id="39m6c$Kgtd7" role="37wK5m">
                        <node concept="37vLTw" id="39m6c$KgtcK" role="2Oq$k0">
                          <ref role="3cqZAo" node="39m6c$Kgt2l" resolve="project" />
                        </node>
                        <node concept="liA8E" id="39m6c$Kgtd8" role="2OqNvi">
                          <ref role="37wK5l" to="z1c3:~Project.getPlatform()" resolve="getPlatform" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="39m6c$KgtcL" role="37wK5m">
                        <ref role="3cqZAo" node="39m6c$Kgt2n" resolve="node" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="39m6c$Kgt2D" role="1B3o_S" />
      <node concept="17QB3L" id="39m6c$Kgtdm" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="54cyhNXCH$J" role="jymVt">
      <property role="TrG5h" value="deepestSubstituteCandidates" />
      <node concept="37vLTG" id="54cyhNXCH$K" role="3clF46">
        <property role="TrG5h" value="editor" />
        <node concept="3uibUv" id="54cyhNXCH$L" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorComponent" resolve="EditorComponent" />
        </node>
      </node>
      <node concept="3clFbS" id="54cyhNXCH$M" role="3clF47">
        <node concept="3cpWs8" id="54cyhNXCH$O" role="3cqZAp">
          <node concept="3cpWsn" id="54cyhNXCH$N" role="3cpWs9">
            <property role="TrG5h" value="cell" />
            <node concept="3uibUv" id="54cyhNXCH$P" role="1tU5fm">
              <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
            </node>
            <node concept="2OqwBi" id="54cyhNXCHB8" role="33vP2m">
              <node concept="37vLTw" id="54cyhNXCH_R" role="2Oq$k0">
                <ref role="3cqZAo" node="54cyhNXCH$K" resolve="editor" />
              </node>
              <node concept="liA8E" id="54cyhNXCHB9" role="2OqNvi">
                <ref role="37wK5l" to="cj4x:~EditorComponent.getDeepestSelectedCell()" resolve="getDeepestSelectedCell" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="54cyhNXCH$R" role="3cqZAp">
          <node concept="3clFbC" id="54cyhNXCH$S" role="3clFbw">
            <node concept="37vLTw" id="54cyhNXCH$T" role="3uHU7B">
              <ref role="3cqZAo" node="54cyhNXCH$N" resolve="cell" />
            </node>
            <node concept="10Nm6u" id="54cyhNXCH$U" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="54cyhNXCH$X" role="3clFbx">
            <node concept="3cpWs6" id="54cyhNXCH$V" role="3cqZAp">
              <node concept="Xl_RD" id="54cyhNXCH$W" role="3cqZAk">
                <property role="Xl_RC" value="no-selection" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="54cyhNXCH$Z" role="3cqZAp">
          <node concept="3cpWsn" id="54cyhNXCH$Y" role="3cpWs9">
            <property role="TrG5h" value="info" />
            <node concept="3uibUv" id="54cyhNXCH_0" role="1tU5fm">
              <ref role="3uigEE" to="f4zo:~SubstituteInfo" resolve="SubstituteInfo" />
            </node>
            <node concept="2OqwBi" id="54cyhNXCHBk" role="33vP2m">
              <node concept="37vLTw" id="54cyhNXCH_W" role="2Oq$k0">
                <ref role="3cqZAo" node="54cyhNXCH$N" resolve="cell" />
              </node>
              <node concept="liA8E" id="54cyhNXCHBl" role="2OqNvi">
                <ref role="37wK5l" to="f4zo:~EditorCell.getSubstituteInfo()" resolve="getSubstituteInfo" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="54cyhNXCH_2" role="3cqZAp">
          <node concept="3clFbC" id="54cyhNXCH_3" role="3clFbw">
            <node concept="37vLTw" id="54cyhNXCH_4" role="3uHU7B">
              <ref role="3cqZAo" node="54cyhNXCH$Y" resolve="info" />
            </node>
            <node concept="10Nm6u" id="54cyhNXCH_5" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="54cyhNXCH_b" role="3clFbx">
            <node concept="3cpWs6" id="54cyhNXCH_6" role="3cqZAp">
              <node concept="3cpWs3" id="54cyhNXCH_7" role="3cqZAk">
                <node concept="Xl_RD" id="54cyhNXCH_8" role="3uHU7B">
                  <property role="Xl_RC" value="no-info:" />
                </node>
                <node concept="2OqwBi" id="54cyhNXCHGS" role="3uHU7w">
                  <node concept="2OqwBi" id="54cyhNXCHBC" role="2Oq$k0">
                    <node concept="37vLTw" id="54cyhNXCHA9" role="2Oq$k0">
                      <ref role="3cqZAo" node="54cyhNXCH$N" resolve="cell" />
                    </node>
                    <node concept="liA8E" id="54cyhNXCHBD" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                    </node>
                  </node>
                  <node concept="liA8E" id="54cyhNXCHGT" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Class.getName()" resolve="getName" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="54cyhNXCH_d" role="3cqZAp">
          <node concept="3cpWsn" id="54cyhNXCH_c" role="3cpWs9">
            <property role="TrG5h" value="actions" />
            <node concept="3uibUv" id="54cyhNXCH_e" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="54cyhNXCH_f" role="11_B2D">
                <ref role="3uigEE" to="f4zo:~SubstituteAction" resolve="SubstituteAction" />
              </node>
            </node>
            <node concept="2OqwBi" id="54cyhNXCHBO" role="33vP2m">
              <node concept="37vLTw" id="54cyhNXCHAe" role="2Oq$k0">
                <ref role="3cqZAo" node="54cyhNXCH$Y" resolve="info" />
              </node>
              <node concept="liA8E" id="54cyhNXCHBP" role="2OqNvi">
                <ref role="37wK5l" to="f4zo:~SubstituteInfo.getMatchingActions(java.lang.String,boolean)" resolve="getMatchingActions" />
                <node concept="Xl_RD" id="54cyhNXCHBQ" role="37wK5m">
                  <property role="Xl_RC" value="skip" />
                </node>
                <node concept="3clFbT" id="54cyhNXCHBR" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="54cyhNXCH_k" role="3cqZAp">
          <node concept="3cpWsn" id="54cyhNXCH_j" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="3uibUv" id="54cyhNXCH_l" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
            <node concept="3cpWs3" id="54cyhNXCH_m" role="33vP2m">
              <node concept="3cpWs3" id="54cyhNXCH_n" role="3uHU7B">
                <node concept="2OqwBi" id="54cyhNXCHIF" role="3uHU7B">
                  <node concept="2OqwBi" id="54cyhNXCHCa" role="2Oq$k0">
                    <node concept="37vLTw" id="54cyhNXCHAt" role="2Oq$k0">
                      <ref role="3cqZAo" node="54cyhNXCH$N" resolve="cell" />
                    </node>
                    <node concept="liA8E" id="54cyhNXCHCb" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                    </node>
                  </node>
                  <node concept="liA8E" id="54cyhNXCHIG" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Class.getName()" resolve="getName" />
                  </node>
                </node>
                <node concept="Xl_RD" id="54cyhNXCH_q" role="3uHU7w">
                  <property role="Xl_RC" value=":" />
                </node>
              </node>
              <node concept="2OqwBi" id="54cyhNXCHEu" role="3uHU7w">
                <node concept="37vLTw" id="54cyhNXCHAy" role="2Oq$k0">
                  <ref role="3cqZAo" node="54cyhNXCH_c" resolve="actions" />
                </node>
                <node concept="liA8E" id="54cyhNXCHEv" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="54cyhNXCH_s" role="3cqZAp">
          <node concept="37vLTw" id="54cyhNXCH_J" role="1DdaDG">
            <ref role="3cqZAo" node="54cyhNXCH_c" resolve="actions" />
          </node>
          <node concept="3cpWsn" id="54cyhNXCH_G" role="1Duv9x">
            <property role="TrG5h" value="action" />
            <node concept="3uibUv" id="54cyhNXCH_I" role="1tU5fm">
              <ref role="3uigEE" to="f4zo:~SubstituteAction" resolve="SubstituteAction" />
            </node>
          </node>
          <node concept="3clFbS" id="54cyhNXCH_u" role="2LFqv$">
            <node concept="3clFbF" id="54cyhNXCH_v" role="3cqZAp">
              <node concept="d57v9" id="54cyhNXCH_w" role="3clFbG">
                <node concept="37vLTw" id="54cyhNXCH_x" role="37vLTJ">
                  <ref role="3cqZAo" node="54cyhNXCH_j" resolve="result" />
                </node>
                <node concept="3cpWs3" id="54cyhNXCH_y" role="37vLTx">
                  <node concept="3cpWs3" id="54cyhNXCH_z" role="3uHU7B">
                    <node concept="3cpWs3" id="54cyhNXCH_$" role="3uHU7B">
                      <node concept="Xl_RD" id="54cyhNXCH__" role="3uHU7B">
                        <property role="Xl_RC" value="|" />
                      </node>
                      <node concept="2OqwBi" id="54cyhNXCHJy" role="3uHU7w">
                        <node concept="2OqwBi" id="54cyhNXCHJ6" role="2Oq$k0">
                          <node concept="2OqwBi" id="54cyhNXCHET" role="2Oq$k0">
                            <node concept="37vLTw" id="54cyhNXCHAR" role="2Oq$k0">
                              <ref role="3cqZAo" node="54cyhNXCH_G" resolve="action" />
                            </node>
                            <node concept="liA8E" id="54cyhNXCHEU" role="2OqNvi">
                              <ref role="37wK5l" to="f4zo:~SubstituteAction.getOutputConcept()" resolve="getOutputConcept" />
                            </node>
                          </node>
                          <node concept="liA8E" id="54cyhNXCHJ7" role="2OqNvi">
                            <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                          </node>
                        </node>
                        <node concept="liA8E" id="54cyhNXCHJz" role="2OqNvi">
                          <ref role="37wK5l" to="c17a:~SAbstractConcept.getQualifiedName()" resolve="getQualifiedName" />
                        </node>
                      </node>
                    </node>
                    <node concept="Xl_RD" id="54cyhNXCH_D" role="3uHU7w">
                      <property role="Xl_RC" value=":" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="54cyhNXCHF4" role="3uHU7w">
                    <node concept="37vLTw" id="54cyhNXCHAW" role="2Oq$k0">
                      <ref role="3cqZAo" node="54cyhNXCH_G" resolve="action" />
                    </node>
                    <node concept="liA8E" id="54cyhNXCHF5" role="2OqNvi">
                      <ref role="37wK5l" to="f4zo:~SubstituteAction.getMatchingText(java.lang.String)" resolve="getMatchingText" />
                      <node concept="Xl_RD" id="54cyhNXCHF6" role="37wK5m">
                        <property role="Xl_RC" value="skip" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="54cyhNXCH_K" role="3cqZAp">
          <node concept="37vLTw" id="54cyhNXCH_L" role="3cqZAk">
            <ref role="3cqZAo" node="54cyhNXCH_j" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="54cyhNXCH_M" role="1B3o_S" />
      <node concept="3uibUv" id="54cyhNXCH_N" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="2YIFZL" id="54cyhNXDh5E" role="jymVt">
      <property role="TrG5h" value="exportLf" />
      <node concept="37vLTG" id="54cyhNXDh5F" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="54cyhNXDh5G" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="37vLTG" id="54cyhNXDh5H" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="54cyhNXDh5I" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="3clFbS" id="54cyhNXDh5J" role="3clF47">
        <node concept="3cpWs6" id="54cyhNXDh5K" role="3cqZAp">
          <node concept="2OqwBi" id="54cyhNXDh6n" role="3cqZAk">
            <node concept="1rXfSq" id="54cyhNXDh5M" role="2Oq$k0">
              <ref role="37wK5l" node="39m6c$Kgt2k" resolve="export" />
              <node concept="37vLTw" id="54cyhNXDh5N" role="37wK5m">
                <ref role="3cqZAo" node="54cyhNXDh5F" resolve="project" />
              </node>
              <node concept="37vLTw" id="54cyhNXDh5O" role="37wK5m">
                <ref role="3cqZAo" node="54cyhNXDh5H" resolve="node" />
              </node>
            </node>
            <node concept="liA8E" id="54cyhNXDh6o" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.replaceAll(java.lang.String,java.lang.String)" resolve="replaceAll" />
              <node concept="Xl_RD" id="54cyhNXDh6p" role="37wK5m">
                <property role="Xl_RC" value="\\R" />
              </node>
              <node concept="Xl_RD" id="54cyhNXDh6q" role="37wK5m">
                <property role="Xl_RC" value="\n" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="54cyhNXDh5R" role="1B3o_S" />
      <node concept="3uibUv" id="54cyhNXDh5S" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="2YIFZL" id="3R$mY2PU9t3" role="jymVt">
      <property role="TrG5h" value="matrixHintActive" />
      <node concept="37vLTG" id="3R$mY2PU9t4" role="3clF46">
        <property role="TrG5h" value="editor" />
        <node concept="3uibUv" id="3R$mY2PU9t5" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorComponent" resolve="EditorComponent" />
        </node>
      </node>
      <node concept="3clFbS" id="3R$mY2PU9t6" role="3clF47">
        <node concept="3cpWs8" id="3R$mY2PU9t8" role="3cqZAp">
          <node concept="3cpWsn" id="3R$mY2PU9t7" role="3cpWs9">
            <property role="TrG5h" value="hints" />
            <node concept="10Q1$e" id="3R$mY2PU9ta" role="1tU5fm">
              <node concept="3uibUv" id="3R$mY2PU9t9" role="10Q1$1">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
            </node>
            <node concept="2OqwBi" id="3R$mY2PUr4B" role="33vP2m">
              <node concept="1eOMI4" id="3R$mY2PU9tf" role="2Oq$k0">
                <node concept="10QFUN" id="3R$mY2PU9tc" role="1eOMHV">
                  <node concept="37vLTw" id="3R$mY2PU9td" role="10QFUP">
                    <ref role="3cqZAo" node="3R$mY2PU9t4" resolve="editor" />
                  </node>
                  <node concept="3uibUv" id="3R$mY2PU9te" role="10QFUM">
                    <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="3R$mY2PUr4C" role="2OqNvi">
                <ref role="37wK5l" to="exr9:~EditorComponent.getEditorHintsForNode(org.jetbrains.mps.openapi.model.SNode)" resolve="getEditorHintsForNode" />
                <node concept="2OqwBi" id="3R$mY2PUr5$" role="37wK5m">
                  <node concept="37vLTw" id="3R$mY2PUr4T" role="2Oq$k0">
                    <ref role="3cqZAo" node="3R$mY2PU9t4" resolve="editor" />
                  </node>
                  <node concept="liA8E" id="3R$mY2PUr5_" role="2OqNvi">
                    <ref role="37wK5l" to="cj4x:~EditorComponent.getEditedNode()" resolve="getEditedNode" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="3R$mY2PU9th" role="3cqZAp">
          <node concept="37vLTw" id="3R$mY2PU9tw" role="1DdaDG">
            <ref role="3cqZAo" node="3R$mY2PU9t7" resolve="hints" />
          </node>
          <node concept="3cpWsn" id="3R$mY2PU9tt" role="1Duv9x">
            <property role="TrG5h" value="hint" />
            <node concept="3uibUv" id="3R$mY2PU9tv" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
          </node>
          <node concept="3clFbS" id="3R$mY2PU9tj" role="2LFqv$">
            <node concept="3clFbJ" id="3R$mY2PU9tk" role="3cqZAp">
              <node concept="22lmx$" id="3R$mY2PU9tl" role="3clFbw">
                <node concept="2OqwBi" id="3R$mY2PUr58" role="3uHU7B">
                  <node concept="37vLTw" id="3R$mY2PUr4H" role="2Oq$k0">
                    <ref role="3cqZAo" node="3R$mY2PU9tt" resolve="hint" />
                  </node>
                  <node concept="liA8E" id="3R$mY2PUr59" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                    <node concept="Xl_RD" id="3R$mY2PUr5a" role="37wK5m">
                      <property role="Xl_RC" value="StateEventMatrix" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="3R$mY2PUr5o" role="3uHU7w">
                  <node concept="37vLTw" id="3R$mY2PUr4N" role="2Oq$k0">
                    <ref role="3cqZAo" node="3R$mY2PU9tt" resolve="hint" />
                  </node>
                  <node concept="liA8E" id="3R$mY2PUr5p" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.endsWith(java.lang.String)" resolve="endsWith" />
                    <node concept="Xl_RD" id="3R$mY2PUr5q" role="37wK5m">
                      <property role="Xl_RC" value=".StateEventMatrix" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="3R$mY2PU9ts" role="3clFbx">
                <node concept="3cpWs6" id="3R$mY2PU9tq" role="3cqZAp">
                  <node concept="3clFbT" id="3R$mY2PU9tr" role="3cqZAk">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3R$mY2PU9tx" role="3cqZAp">
          <node concept="3clFbT" id="3R$mY2PU9ty" role="3cqZAk" />
        </node>
      </node>
      <node concept="3Tm1VV" id="3R$mY2PU9tz" role="1B3o_S" />
      <node concept="10P_77" id="3R$mY2PU9t$" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="3R$mY2Q3hFk" role="jymVt">
      <property role="TrG5h" value="setMatrixHint" />
      <node concept="37vLTG" id="3R$mY2Q3hFl" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="3R$mY2Q3hFm" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="37vLTG" id="3R$mY2Q3hFn" role="3clF46">
        <property role="TrG5h" value="editor" />
        <node concept="3uibUv" id="3R$mY2Q3hFo" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorComponent" resolve="EditorComponent" />
        </node>
      </node>
      <node concept="37vLTG" id="3R$mY2Q3hFp" role="3clF46">
        <property role="TrG5h" value="enabled" />
        <node concept="10P_77" id="3R$mY2Q3hFq" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="3R$mY2Q3hFr" role="3clF47">
        <node concept="3cpWs8" id="3R$mY2Q3hFt" role="3cqZAp">
          <node concept="3cpWsn" id="3R$mY2Q3hFs" role="3cpWs9">
            <property role="TrG5h" value="component" />
            <node concept="3uibUv" id="3R$mY2Q3hFu" role="1tU5fm">
              <ref role="3uigEE" to="zwau:~ConceptEditorHintSettingsComponent" resolve="ConceptEditorHintSettingsComponent" />
            </node>
            <node concept="2OqwBi" id="3R$mY2Q3hIf" role="33vP2m">
              <node concept="37vLTw" id="3R$mY2Q3hGo" role="2Oq$k0">
                <ref role="3cqZAo" node="3R$mY2Q3hFl" resolve="project" />
              </node>
              <node concept="liA8E" id="3R$mY2Q3hIg" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~Project.getComponent(java.lang.Class)" resolve="getComponent" />
                <node concept="3VsKOn" id="3R$mY2Q3hIh" role="37wK5m">
                  <ref role="3VsUkX" to="zwau:~ConceptEditorHintSettingsComponent" resolve="ConceptEditorHintSettingsComponent" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3R$mY2Q3hFz" role="3cqZAp">
          <node concept="3cpWsn" id="3R$mY2Q3hFy" role="3cpWs9">
            <property role="TrG5h" value="state" />
            <node concept="3uibUv" id="3R$mY2Q3hF$" role="1tU5fm">
              <ref role="3uigEE" to="zwau:~ConceptEditorHintSettingsComponent$HintsState" resolve="ConceptEditorHintSettingsComponent.HintsState" />
            </node>
            <node concept="2OqwBi" id="3R$mY2Q3hIr" role="33vP2m">
              <node concept="37vLTw" id="3R$mY2Q3hGu" role="2Oq$k0">
                <ref role="3cqZAo" node="3R$mY2Q3hFs" resolve="component" />
              </node>
              <node concept="liA8E" id="3R$mY2Q3hIs" role="2OqNvi">
                <ref role="37wK5l" to="zwau:~ConceptEditorHintSettingsComponent.getState()" resolve="getState" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3R$mY2Q3hFB" role="3cqZAp">
          <node concept="3cpWsn" id="3R$mY2Q3hFA" role="3cpWs9">
            <property role="TrG5h" value="hints" />
            <node concept="3uibUv" id="3R$mY2Q3hFC" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
              <node concept="3uibUv" id="3R$mY2Q3hFD" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
            </node>
            <node concept="2OqwBi" id="3R$mY2Q3hIA" role="33vP2m">
              <node concept="37vLTw" id="3R$mY2Q3hGz" role="2Oq$k0">
                <ref role="3cqZAo" node="3R$mY2Q3hFy" resolve="state" />
              </node>
              <node concept="liA8E" id="3R$mY2Q3hIB" role="2OqNvi">
                <ref role="37wK5l" to="zwau:~ConceptEditorHintSettingsComponent$HintsState.getEnabledHints()" resolve="getEnabledHints" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3R$mY2Q3hFG" role="3cqZAp">
          <node concept="3cpWsn" id="3R$mY2Q3hFF" role="3cpWs9">
            <property role="TrG5h" value="hint" />
            <node concept="3uibUv" id="3R$mY2Q3hFH" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
            <node concept="Xl_RD" id="3R$mY2Q3hFI" role="33vP2m">
              <property role="Xl_RC" value="DemoUsability.editor.StateEventMatrixContext.StateEventMatrix" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3R$mY2Q3hFJ" role="3cqZAp">
          <node concept="37vLTw" id="3R$mY2Q3hFK" role="3clFbw">
            <ref role="3cqZAo" node="3R$mY2Q3hFp" resolve="enabled" />
          </node>
          <node concept="9aQIb" id="3R$mY2Q3hFQ" role="9aQIa">
            <node concept="3clFbS" id="3R$mY2Q3hFR" role="9aQI4">
              <node concept="3clFbF" id="3R$mY2Q3hFS" role="3cqZAp">
                <node concept="2OqwBi" id="3R$mY2Q3hKH" role="3clFbG">
                  <node concept="37vLTw" id="3R$mY2Q3hGC" role="2Oq$k0">
                    <ref role="3cqZAo" node="3R$mY2Q3hFA" resolve="hints" />
                  </node>
                  <node concept="liA8E" id="3R$mY2Q3hKI" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~Set.remove(java.lang.Object)" resolve="remove" />
                    <node concept="37vLTw" id="3R$mY2Q3hKJ" role="37wK5m">
                      <ref role="3cqZAo" node="3R$mY2Q3hFF" resolve="hint" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="3R$mY2Q3hFM" role="3clFbx">
            <node concept="3clFbF" id="3R$mY2Q3hFN" role="3cqZAp">
              <node concept="2OqwBi" id="3R$mY2Q3hMP" role="3clFbG">
                <node concept="37vLTw" id="3R$mY2Q3hGI" role="2Oq$k0">
                  <ref role="3cqZAo" node="3R$mY2Q3hFA" resolve="hints" />
                </node>
                <node concept="liA8E" id="3R$mY2Q3hMQ" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="3R$mY2Q3hMR" role="37wK5m">
                    <ref role="3cqZAo" node="3R$mY2Q3hFF" resolve="hint" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3R$mY2Q3hFV" role="3cqZAp">
          <node concept="2OqwBi" id="3R$mY2Q3hN1" role="3clFbG">
            <node concept="37vLTw" id="3R$mY2Q3hGO" role="2Oq$k0">
              <ref role="3cqZAo" node="3R$mY2Q3hFy" resolve="state" />
            </node>
            <node concept="liA8E" id="3R$mY2Q3hN2" role="2OqNvi">
              <ref role="37wK5l" to="zwau:~ConceptEditorHintSettingsComponent$HintsState.setEnabledHints(java.util.Set)" resolve="setEnabledHints" />
              <node concept="37vLTw" id="3R$mY2Q3hN3" role="37wK5m">
                <ref role="3cqZAo" node="3R$mY2Q3hFA" resolve="hints" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3R$mY2Q3hFY" role="3cqZAp">
          <node concept="2OqwBi" id="3R$mY2Q3hNd" role="3clFbG">
            <node concept="37vLTw" id="3R$mY2Q3hGU" role="2Oq$k0">
              <ref role="3cqZAo" node="3R$mY2Q3hFs" resolve="component" />
            </node>
            <node concept="liA8E" id="3R$mY2Q3hNe" role="2OqNvi">
              <ref role="37wK5l" to="zwau:~ConceptEditorHintSettingsComponent.loadState(jetbrains.mps.nodeEditor.hintsSettings.ConceptEditorHintSettingsComponent$HintsState)" resolve="loadState" />
              <node concept="37vLTw" id="3R$mY2Q3hNf" role="37wK5m">
                <ref role="3cqZAo" node="3R$mY2Q3hFy" resolve="state" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="3R$mY2Q3hGh" role="3cqZAp">
          <node concept="3uVAMA" id="3R$mY2Q3hGi" role="1zxBo5">
            <node concept="3clFbS" id="3R$mY2Q3hGd" role="1zc67A">
              <node concept="YS8fn" id="3R$mY2Q3hGg" role="3cqZAp">
                <node concept="2ShNRf" id="3R$mY2Q3hGX" role="YScLw">
                  <node concept="1pGfFk" id="3R$mY2Q3hHW" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.Throwable)" resolve="RuntimeException" />
                    <node concept="37vLTw" id="3R$mY2Q3hHX" role="37wK5m">
                      <ref role="3cqZAo" node="3R$mY2Q3hG9" resolve="e" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="XOnhg" id="3R$mY2Q3hG9" role="1zc67B">
              <property role="TrG5h" value="e" />
              <node concept="nSUau" id="3R$mY2Q3hGb" role="1tU5fm">
                <node concept="3uibUv" id="3R$mY2Q3hGa" role="nSUat">
                  <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="3R$mY2Q3hG2" role="1zxBo7">
            <node concept="3clFbF" id="3R$mY2Q3hG3" role="3cqZAp">
              <node concept="2YIFZM" id="3R$mY2Q3hI1" role="3clFbG">
                <ref role="1Pybhc" to="dxuu:~SwingUtilities" resolve="SwingUtilities" />
                <ref role="37wK5l" to="dxuu:~SwingUtilities.invokeAndWait(java.lang.Runnable)" resolve="invokeAndWait" />
                <node concept="1bVj0M" id="3R$mY2Q3hI2" role="37wK5m">
                  <node concept="3clFbS" id="3R$mY2Q3hI3" role="1bW5cS">
                    <node concept="3clFbF" id="3R$mY2Q3hI4" role="3cqZAp">
                      <node concept="2OqwBi" id="3R$mY2Q3hNu" role="3clFbG">
                        <node concept="37vLTw" id="3R$mY2Q3hNj" role="2Oq$k0">
                          <ref role="3cqZAo" node="3R$mY2Q3hFn" resolve="editor" />
                        </node>
                        <node concept="liA8E" id="3R$mY2Q3hNv" role="2OqNvi">
                          <ref role="37wK5l" to="cj4x:~EditorComponent.update()" resolve="update" />
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
      <node concept="3Tm1VV" id="3R$mY2Q3hGj" role="1B3o_S" />
      <node concept="3cqZAl" id="3R$mY2Q3hGk" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="3R$mY2Q6Jnt" role="jymVt">
      <property role="TrG5h" value="editorText" />
      <node concept="37vLTG" id="3R$mY2Q6Jnu" role="3clF46">
        <property role="TrG5h" value="editor" />
        <node concept="3uibUv" id="3R$mY2Q6Jnv" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorComponent" resolve="jetbrains.mps.openapi.editor.EditorComponent" />
        </node>
      </node>
      <node concept="3clFbS" id="3R$mY2Q6Jnw" role="3clF47">
        <node concept="3cpWs6" id="3R$mY2Q6Jnx" role="3cqZAp">
          <node concept="2OqwBi" id="3R$mY2Q6JpM" role="3cqZAk">
            <node concept="2OqwBi" id="3R$mY2Q6Jpo" role="2Oq$k0">
              <node concept="2OqwBi" id="3R$mY2Q6JoZ" role="2Oq$k0">
                <node concept="37vLTw" id="3R$mY2Q6Joc" role="2Oq$k0">
                  <ref role="3cqZAo" node="3R$mY2Q6Jnu" resolve="editor" />
                </node>
                <node concept="liA8E" id="3R$mY2Q6Jp0" role="2OqNvi">
                  <ref role="37wK5l" to="cj4x:~EditorComponent.getRootCell()" resolve="getRootCell" />
                </node>
              </node>
              <node concept="liA8E" id="3R$mY2Q6Jpp" role="2OqNvi">
                <ref role="37wK5l" to="f4zo:~EditorCell.renderText()" resolve="renderText" />
              </node>
            </node>
            <node concept="liA8E" id="3R$mY2Q6JpN" role="2OqNvi">
              <ref role="37wK5l" to="cj4x:~TextBuilder.getText()" resolve="getText" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3R$mY2Q6Jn_" role="1B3o_S" />
      <node concept="3uibUv" id="3R$mY2Q6JnA" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="2YIFZL" id="3R$mY2Q6JnB" role="jymVt">
      <property role="TrG5h" value="editorTextContains" />
      <node concept="37vLTG" id="3R$mY2Q6JnC" role="3clF46">
        <property role="TrG5h" value="editor" />
        <node concept="3uibUv" id="3R$mY2Q6JnD" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorComponent" resolve="jetbrains.mps.openapi.editor.EditorComponent" />
        </node>
      </node>
      <node concept="37vLTG" id="3R$mY2Q6JnE" role="3clF46">
        <property role="TrG5h" value="fragment" />
        <node concept="3uibUv" id="3R$mY2Q6JnF" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3clFbS" id="3R$mY2Q6JnG" role="3clF47">
        <node concept="3cpWs6" id="3R$mY2Q6JnH" role="3cqZAp">
          <node concept="2OqwBi" id="3R$mY2Q6Joz" role="3cqZAk">
            <node concept="1rXfSq" id="3R$mY2Q6JnJ" role="2Oq$k0">
              <ref role="37wK5l" node="3R$mY2Q6Jnt" resolve="editorText" />
              <node concept="37vLTw" id="3R$mY2Q6JnK" role="37wK5m">
                <ref role="3cqZAo" node="3R$mY2Q6JnC" resolve="editor" />
              </node>
            </node>
            <node concept="liA8E" id="3R$mY2Q6Jo$" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
              <node concept="37vLTw" id="3R$mY2Q6Jo_" role="37wK5m">
                <ref role="3cqZAo" node="3R$mY2Q6JnE" resolve="fragment" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3R$mY2Q6JnM" role="1B3o_S" />
      <node concept="10P_77" id="3R$mY2Q6JnN" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="3R$mY2Q9IBW" role="jymVt">
      <property role="TrG5h" value="astFingerprint" />
      <node concept="37vLTG" id="3R$mY2Q9IBX" role="3clF46">
        <property role="TrG5h" value="root" />
        <node concept="3uibUv" id="3R$mY2Q9IBY" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="org.jetbrains.mps.openapi.model.SNode" />
        </node>
      </node>
      <node concept="3clFbS" id="3R$mY2Q9IBZ" role="3clF47">
        <node concept="3cpWs8" id="3R$mY2Q9IC1" role="3cqZAp">
          <node concept="3cpWsn" id="3R$mY2Q9IC0" role="3cpWs9">
            <property role="TrG5h" value="nodes" />
            <node concept="3uibUv" id="3R$mY2Q9IC2" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="java.util.List" />
              <node concept="3uibUv" id="3R$mY2Q9IC3" role="11_B2D">
                <ref role="3uigEE" to="mhbf:~SNode" resolve="org.jetbrains.mps.openapi.model.SNode" />
              </node>
            </node>
            <node concept="2ShNRf" id="3R$mY2Q9IGm" role="33vP2m">
              <node concept="1pGfFk" id="3R$mY2Q9IGr" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;(int)" resolve="ArrayList" />
                <node concept="3uibUv" id="3R$mY2Q9IGs" role="1pMfVU">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3R$mY2Q9IC6" role="3cqZAp">
          <node concept="2OqwBi" id="3R$mY2Q9ILo" role="3clFbG">
            <node concept="37vLTw" id="3R$mY2Q9IGw" role="2Oq$k0">
              <ref role="3cqZAo" node="3R$mY2Q9IC0" resolve="nodes" />
            </node>
            <node concept="liA8E" id="3R$mY2Q9ILp" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
              <node concept="37vLTw" id="3R$mY2Q9ILq" role="37wK5m">
                <ref role="3cqZAo" node="3R$mY2Q9IBX" resolve="root" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3R$mY2Q9ICa" role="3cqZAp">
          <node concept="3cpWsn" id="3R$mY2Q9IC9" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="3uibUv" id="3R$mY2Q9ICb" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
            <node concept="Xl_RD" id="3R$mY2Q9ICc" role="33vP2m">
              <property role="Xl_RC" value="" />
            </node>
          </node>
        </node>
        <node concept="1Dw8fO" id="3R$mY2Q9ICd" role="3cqZAp">
          <node concept="3cpWsn" id="3R$mY2Q9ICe" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="3R$mY2Q9ICg" role="1tU5fm" />
            <node concept="3cmrfG" id="3R$mY2Q9ICh" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eOVzh" id="3R$mY2Q9ICi" role="1Dwp0S">
            <node concept="37vLTw" id="3R$mY2Q9ICj" role="3uHU7B">
              <ref role="3cqZAo" node="3R$mY2Q9ICe" resolve="i" />
            </node>
            <node concept="2OqwBi" id="3R$mY2Q9INH" role="3uHU7w">
              <node concept="37vLTw" id="3R$mY2Q9IGA" role="2Oq$k0">
                <ref role="3cqZAo" node="3R$mY2Q9IC0" resolve="nodes" />
              </node>
              <node concept="liA8E" id="3R$mY2Q9INI" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
              </node>
            </node>
          </node>
          <node concept="3uNrnE" id="3R$mY2Q9ICm" role="1Dwrff">
            <node concept="37vLTw" id="3R$mY2Q9ICn" role="2$L3a6">
              <ref role="3cqZAo" node="3R$mY2Q9ICe" resolve="i" />
            </node>
          </node>
          <node concept="3clFbS" id="3R$mY2Q9ICp" role="2LFqv$">
            <node concept="3cpWs8" id="3R$mY2Q9ICr" role="3cqZAp">
              <node concept="3cpWsn" id="3R$mY2Q9ICq" role="3cpWs9">
                <property role="TrG5h" value="node" />
                <node concept="3uibUv" id="3R$mY2Q9ICs" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="org.jetbrains.mps.openapi.model.SNode" />
                </node>
                <node concept="2OqwBi" id="3R$mY2Q9IQ1" role="33vP2m">
                  <node concept="37vLTw" id="3R$mY2Q9IGF" role="2Oq$k0">
                    <ref role="3cqZAo" node="3R$mY2Q9IC0" resolve="nodes" />
                  </node>
                  <node concept="liA8E" id="3R$mY2Q9IQ2" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                    <node concept="37vLTw" id="3R$mY2Q9IQ3" role="37wK5m">
                      <ref role="3cqZAo" node="3R$mY2Q9ICe" resolve="i" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3R$mY2Q9ICv" role="3cqZAp">
              <node concept="d57v9" id="3R$mY2Q9ICw" role="3clFbG">
                <node concept="37vLTw" id="3R$mY2Q9ICx" role="37vLTJ">
                  <ref role="3cqZAo" node="3R$mY2Q9IC9" resolve="result" />
                </node>
                <node concept="3cpWs3" id="3R$mY2Q9ICy" role="37vLTx">
                  <node concept="3cpWs3" id="3R$mY2Q9ICz" role="3uHU7B">
                    <node concept="2OqwBi" id="3R$mY2Q9J6s" role="3uHU7B">
                      <node concept="2OqwBi" id="3R$mY2Q9IQm" role="2Oq$k0">
                        <node concept="37vLTw" id="3R$mY2Q9IGT" role="2Oq$k0">
                          <ref role="3cqZAo" node="3R$mY2Q9ICq" resolve="node" />
                        </node>
                        <node concept="liA8E" id="3R$mY2Q9IQn" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        </node>
                      </node>
                      <node concept="liA8E" id="3R$mY2Q9J6t" role="2OqNvi">
                        <ref role="37wK5l" to="c17a:~SAbstractConcept.getQualifiedName()" resolve="getQualifiedName" />
                      </node>
                    </node>
                    <node concept="Xl_RD" id="3R$mY2Q9ICA" role="3uHU7w">
                      <property role="Xl_RC" value="@" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="3R$mY2Q9IQy" role="3uHU7w">
                    <node concept="37vLTw" id="3R$mY2Q9IGY" role="2Oq$k0">
                      <ref role="3cqZAo" node="3R$mY2Q9ICq" resolve="node" />
                    </node>
                    <node concept="liA8E" id="3R$mY2Q9IQz" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.getRoleInParent()" resolve="getRoleInParent" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1DcWWT" id="3R$mY2Q9ICC" role="3cqZAp">
              <node concept="2OqwBi" id="3R$mY2Q9IQI" role="1DdaDG">
                <node concept="37vLTw" id="3R$mY2Q9IH3" role="2Oq$k0">
                  <ref role="3cqZAo" node="3R$mY2Q9ICq" resolve="node" />
                </node>
                <node concept="liA8E" id="3R$mY2Q9IQJ" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getPropertyNames()" resolve="getPropertyNames" />
                </node>
              </node>
              <node concept="3cpWsn" id="3R$mY2Q9ICR" role="1Duv9x">
                <property role="TrG5h" value="propertyName" />
                <node concept="3uibUv" id="3R$mY2Q9ICT" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
              </node>
              <node concept="3clFbS" id="3R$mY2Q9ICE" role="2LFqv$">
                <node concept="3clFbF" id="3R$mY2Q9ICF" role="3cqZAp">
                  <node concept="d57v9" id="3R$mY2Q9ICG" role="3clFbG">
                    <node concept="37vLTw" id="3R$mY2Q9ICH" role="37vLTJ">
                      <ref role="3cqZAo" node="3R$mY2Q9IC9" resolve="result" />
                    </node>
                    <node concept="3cpWs3" id="3R$mY2Q9ICI" role="37vLTx">
                      <node concept="3cpWs3" id="3R$mY2Q9ICJ" role="3uHU7B">
                        <node concept="3cpWs3" id="3R$mY2Q9ICK" role="3uHU7B">
                          <node concept="Xl_RD" id="3R$mY2Q9ICL" role="3uHU7B">
                            <property role="Xl_RC" value="|" />
                          </node>
                          <node concept="37vLTw" id="3R$mY2Q9ICM" role="3uHU7w">
                            <ref role="3cqZAo" node="3R$mY2Q9ICR" resolve="propertyName" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="3R$mY2Q9ICN" role="3uHU7w">
                          <property role="Xl_RC" value="=" />
                        </node>
                      </node>
                      <node concept="2YIFZM" id="3R$mY2Q9IH8" role="3uHU7w">
                        <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                        <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object)" resolve="valueOf" />
                        <node concept="2OqwBi" id="3R$mY2Q9J6C" role="37wK5m">
                          <node concept="37vLTw" id="3R$mY2Q9IQN" role="2Oq$k0">
                            <ref role="3cqZAo" node="3R$mY2Q9ICq" resolve="node" />
                          </node>
                          <node concept="liA8E" id="3R$mY2Q9J6D" role="2OqNvi">
                            <ref role="37wK5l" to="mhbf:~SNode.getProperty(org.jetbrains.mps.openapi.language.SProperty)" resolve="getProperty" />
                            <node concept="37vLTw" id="3R$mY2Q9J6E" role="37wK5m">
                              <ref role="3cqZAo" node="3R$mY2Q9ICR" resolve="propertyName" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1DcWWT" id="3R$mY2Q9ICV" role="3cqZAp">
              <node concept="2OqwBi" id="3R$mY2Q9IR0" role="1DdaDG">
                <node concept="37vLTw" id="3R$mY2Q9IHe" role="2Oq$k0">
                  <ref role="3cqZAo" node="3R$mY2Q9ICq" resolve="node" />
                </node>
                <node concept="liA8E" id="3R$mY2Q9IR1" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getChildren(org.jetbrains.mps.openapi.language.SContainmentLink)" resolve="getChildren" />
                </node>
              </node>
              <node concept="3cpWsn" id="3R$mY2Q9ID1" role="1Duv9x">
                <property role="TrG5h" value="child" />
                <node concept="3uibUv" id="3R$mY2Q9ID3" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="org.jetbrains.mps.openapi.model.SNode" />
                </node>
              </node>
              <node concept="3clFbS" id="3R$mY2Q9ICX" role="2LFqv$">
                <node concept="3clFbF" id="3R$mY2Q9ICY" role="3cqZAp">
                  <node concept="2OqwBi" id="3R$mY2Q9ITk" role="3clFbG">
                    <node concept="37vLTw" id="3R$mY2Q9IHj" role="2Oq$k0">
                      <ref role="3cqZAo" node="3R$mY2Q9IC0" resolve="nodes" />
                    </node>
                    <node concept="liA8E" id="3R$mY2Q9ITl" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                      <node concept="37vLTw" id="3R$mY2Q9ITm" role="37wK5m">
                        <ref role="3cqZAo" node="3R$mY2Q9ID1" resolve="child" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3R$mY2Q9ID5" role="3cqZAp">
          <node concept="37vLTw" id="3R$mY2Q9ID6" role="3cqZAk">
            <ref role="3cqZAo" node="3R$mY2Q9IC9" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3R$mY2Q9ID7" role="1B3o_S" />
      <node concept="3uibUv" id="3R$mY2Q9ID8" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="2YIFZL" id="3R$mY2Q9ID9" role="jymVt">
      <property role="TrG5h" value="referenceFingerprint" />
      <node concept="37vLTG" id="3R$mY2Q9IDa" role="3clF46">
        <property role="TrG5h" value="root" />
        <node concept="3uibUv" id="3R$mY2Q9IDb" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="org.jetbrains.mps.openapi.model.SNode" />
        </node>
      </node>
      <node concept="3clFbS" id="3R$mY2Q9IDc" role="3clF47">
        <node concept="3cpWs8" id="3R$mY2Q9IDe" role="3cqZAp">
          <node concept="3cpWsn" id="3R$mY2Q9IDd" role="3cpWs9">
            <property role="TrG5h" value="nodes" />
            <node concept="3uibUv" id="3R$mY2Q9IDf" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="java.util.List" />
              <node concept="3uibUv" id="3R$mY2Q9IDg" role="11_B2D">
                <ref role="3uigEE" to="mhbf:~SNode" resolve="org.jetbrains.mps.openapi.model.SNode" />
              </node>
            </node>
            <node concept="2ShNRf" id="3R$mY2Q9IHm" role="33vP2m">
              <node concept="1pGfFk" id="3R$mY2Q9IHr" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;(int)" resolve="ArrayList" />
                <node concept="3uibUv" id="3R$mY2Q9IHs" role="1pMfVU">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3R$mY2Q9IDj" role="3cqZAp">
          <node concept="2OqwBi" id="3R$mY2Q9IVD" role="3clFbG">
            <node concept="37vLTw" id="3R$mY2Q9IHw" role="2Oq$k0">
              <ref role="3cqZAo" node="3R$mY2Q9IDd" resolve="nodes" />
            </node>
            <node concept="liA8E" id="3R$mY2Q9IVE" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
              <node concept="37vLTw" id="3R$mY2Q9IVF" role="37wK5m">
                <ref role="3cqZAo" node="3R$mY2Q9IDa" resolve="root" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3R$mY2Q9IDn" role="3cqZAp">
          <node concept="3cpWsn" id="3R$mY2Q9IDm" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="3uibUv" id="3R$mY2Q9IDo" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
            <node concept="Xl_RD" id="3R$mY2Q9IDp" role="33vP2m">
              <property role="Xl_RC" value="" />
            </node>
          </node>
        </node>
        <node concept="1Dw8fO" id="3R$mY2Q9IDq" role="3cqZAp">
          <node concept="3cpWsn" id="3R$mY2Q9IDr" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="3R$mY2Q9IDt" role="1tU5fm" />
            <node concept="3cmrfG" id="3R$mY2Q9IDu" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eOVzh" id="3R$mY2Q9IDv" role="1Dwp0S">
            <node concept="37vLTw" id="3R$mY2Q9IDw" role="3uHU7B">
              <ref role="3cqZAo" node="3R$mY2Q9IDr" resolve="i" />
            </node>
            <node concept="2OqwBi" id="3R$mY2Q9IXY" role="3uHU7w">
              <node concept="37vLTw" id="3R$mY2Q9IHA" role="2Oq$k0">
                <ref role="3cqZAo" node="3R$mY2Q9IDd" resolve="nodes" />
              </node>
              <node concept="liA8E" id="3R$mY2Q9IXZ" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
              </node>
            </node>
          </node>
          <node concept="3uNrnE" id="3R$mY2Q9IDz" role="1Dwrff">
            <node concept="37vLTw" id="3R$mY2Q9ID$" role="2$L3a6">
              <ref role="3cqZAo" node="3R$mY2Q9IDr" resolve="i" />
            </node>
          </node>
          <node concept="3clFbS" id="3R$mY2Q9IDA" role="2LFqv$">
            <node concept="3cpWs8" id="3R$mY2Q9IDC" role="3cqZAp">
              <node concept="3cpWsn" id="3R$mY2Q9IDB" role="3cpWs9">
                <property role="TrG5h" value="node" />
                <node concept="3uibUv" id="3R$mY2Q9IDD" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="org.jetbrains.mps.openapi.model.SNode" />
                </node>
                <node concept="2OqwBi" id="3R$mY2Q9J0i" role="33vP2m">
                  <node concept="37vLTw" id="3R$mY2Q9IHF" role="2Oq$k0">
                    <ref role="3cqZAo" node="3R$mY2Q9IDd" resolve="nodes" />
                  </node>
                  <node concept="liA8E" id="3R$mY2Q9J0j" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                    <node concept="37vLTw" id="3R$mY2Q9J0k" role="37wK5m">
                      <ref role="3cqZAo" node="3R$mY2Q9IDr" resolve="i" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1DcWWT" id="3R$mY2Q9IDG" role="3cqZAp">
              <node concept="2OqwBi" id="3R$mY2Q9J0v" role="1DdaDG">
                <node concept="37vLTw" id="3R$mY2Q9IHL" role="2Oq$k0">
                  <ref role="3cqZAo" node="3R$mY2Q9IDB" resolve="node" />
                </node>
                <node concept="liA8E" id="3R$mY2Q9J0w" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getReferences()" resolve="getReferences" />
                </node>
              </node>
              <node concept="3cpWsn" id="3R$mY2Q9IDZ" role="1Duv9x">
                <property role="TrG5h" value="reference" />
                <node concept="3uibUv" id="3R$mY2Q9IE1" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SReference" resolve="org.jetbrains.mps.openapi.model.SReference" />
                </node>
              </node>
              <node concept="3clFbS" id="3R$mY2Q9IDI" role="2LFqv$">
                <node concept="3clFbF" id="3R$mY2Q9IDJ" role="3cqZAp">
                  <node concept="d57v9" id="3R$mY2Q9IDK" role="3clFbG">
                    <node concept="37vLTw" id="3R$mY2Q9IDL" role="37vLTJ">
                      <ref role="3cqZAo" node="3R$mY2Q9IDm" resolve="result" />
                    </node>
                    <node concept="3cpWs3" id="3R$mY2Q9IDM" role="37vLTx">
                      <node concept="3cpWs3" id="3R$mY2Q9IDN" role="3uHU7B">
                        <node concept="3cpWs3" id="3R$mY2Q9IDO" role="3uHU7B">
                          <node concept="3cpWs3" id="3R$mY2Q9IDP" role="3uHU7B">
                            <node concept="3cpWs3" id="3R$mY2Q9IDQ" role="3uHU7B">
                              <node concept="2OqwBi" id="3R$mY2Q9J7$" role="3uHU7B">
                                <node concept="2OqwBi" id="3R$mY2Q9J0N" role="2Oq$k0">
                                  <node concept="37vLTw" id="3R$mY2Q9IHY" role="2Oq$k0">
                                    <ref role="3cqZAo" node="3R$mY2Q9IDB" resolve="node" />
                                  </node>
                                  <node concept="liA8E" id="3R$mY2Q9J0O" role="2OqNvi">
                                    <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="3R$mY2Q9J7_" role="2OqNvi">
                                  <ref role="37wK5l" to="c17a:~SAbstractConcept.getQualifiedName()" resolve="getQualifiedName" />
                                </node>
                              </node>
                              <node concept="Xl_RD" id="3R$mY2Q9IDT" role="3uHU7w">
                                <property role="Xl_RC" value="." />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="3R$mY2Q9J0Y" role="3uHU7w">
                              <node concept="37vLTw" id="3R$mY2Q9II3" role="2Oq$k0">
                                <ref role="3cqZAo" node="3R$mY2Q9IDZ" resolve="reference" />
                              </node>
                              <node concept="liA8E" id="3R$mY2Q9J0Z" role="2OqNvi">
                                <ref role="37wK5l" to="mhbf:~SReference.getRole()" resolve="getRole" />
                              </node>
                            </node>
                          </node>
                          <node concept="Xl_RD" id="3R$mY2Q9IDV" role="3uHU7w">
                            <property role="Xl_RC" value="-&gt;" />
                          </node>
                        </node>
                        <node concept="2YIFZM" id="3R$mY2Q9II8" role="3uHU7w">
                          <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                          <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object)" resolve="valueOf" />
                          <node concept="2OqwBi" id="3R$mY2Q9J7J" role="37wK5m">
                            <node concept="37vLTw" id="3R$mY2Q9J13" role="2Oq$k0">
                              <ref role="3cqZAo" node="3R$mY2Q9IDZ" resolve="reference" />
                            </node>
                            <node concept="liA8E" id="3R$mY2Q9J7K" role="2OqNvi">
                              <ref role="37wK5l" to="mhbf:~SReference.getTargetNodeReference()" resolve="getTargetNodeReference" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Xl_RD" id="3R$mY2Q9IDY" role="3uHU7w">
                        <property role="Xl_RC" value=";" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1DcWWT" id="3R$mY2Q9IE3" role="3cqZAp">
              <node concept="2OqwBi" id="3R$mY2Q9J1f" role="1DdaDG">
                <node concept="37vLTw" id="3R$mY2Q9IId" role="2Oq$k0">
                  <ref role="3cqZAo" node="3R$mY2Q9IDB" resolve="node" />
                </node>
                <node concept="liA8E" id="3R$mY2Q9J1g" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getChildren(org.jetbrains.mps.openapi.language.SContainmentLink)" resolve="getChildren" />
                </node>
              </node>
              <node concept="3cpWsn" id="3R$mY2Q9IE9" role="1Duv9x">
                <property role="TrG5h" value="child" />
                <node concept="3uibUv" id="3R$mY2Q9IEb" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="org.jetbrains.mps.openapi.model.SNode" />
                </node>
              </node>
              <node concept="3clFbS" id="3R$mY2Q9IE5" role="2LFqv$">
                <node concept="3clFbF" id="3R$mY2Q9IE6" role="3cqZAp">
                  <node concept="2OqwBi" id="3R$mY2Q9J3z" role="3clFbG">
                    <node concept="37vLTw" id="3R$mY2Q9IIi" role="2Oq$k0">
                      <ref role="3cqZAo" node="3R$mY2Q9IDd" resolve="nodes" />
                    </node>
                    <node concept="liA8E" id="3R$mY2Q9J3$" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                      <node concept="37vLTw" id="3R$mY2Q9J3_" role="37wK5m">
                        <ref role="3cqZAo" node="3R$mY2Q9IE9" resolve="child" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3R$mY2Q9IEd" role="3cqZAp">
          <node concept="37vLTw" id="3R$mY2Q9IEe" role="3cqZAk">
            <ref role="3cqZAo" node="3R$mY2Q9IDm" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3R$mY2Q9IEf" role="1B3o_S" />
      <node concept="3uibUv" id="3R$mY2Q9IEg" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="2YIFZL" id="3R$mY2Q9IEh" role="jymVt">
      <property role="TrG5h" value="projectionSwitchPreservesModel" />
      <node concept="37vLTG" id="3R$mY2Q9IEi" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="3R$mY2Q9IEj" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="jetbrains.mps.project.Project" />
        </node>
      </node>
      <node concept="37vLTG" id="3R$mY2Q9IEk" role="3clF46">
        <property role="TrG5h" value="editor" />
        <node concept="3uibUv" id="3R$mY2Q9IEl" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorComponent" resolve="jetbrains.mps.openapi.editor.EditorComponent" />
        </node>
      </node>
      <node concept="3clFbS" id="3R$mY2Q9IEm" role="3clF47">
        <node concept="3clFbF" id="3R$mY2Q9IEn" role="3cqZAp">
          <node concept="1rXfSq" id="3R$mY2Q9IEo" role="3clFbG">
            <ref role="37wK5l" node="3R$mY2Q3hFk" resolve="setMatrixHint" />
            <node concept="37vLTw" id="3R$mY2Q9IEp" role="37wK5m">
              <ref role="3cqZAo" node="3R$mY2Q9IEi" resolve="project" />
            </node>
            <node concept="37vLTw" id="3R$mY2Q9IEq" role="37wK5m">
              <ref role="3cqZAo" node="3R$mY2Q9IEk" resolve="editor" />
            </node>
            <node concept="3clFbT" id="3R$mY2Q9IEr" role="37wK5m" />
          </node>
        </node>
        <node concept="3cpWs8" id="3R$mY2Q9IEt" role="3cqZAp">
          <node concept="3cpWsn" id="3R$mY2Q9IEs" role="3cpWs9">
            <property role="TrG5h" value="root" />
            <node concept="3uibUv" id="3R$mY2Q9IEu" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="org.jetbrains.mps.openapi.model.SNode" />
            </node>
            <node concept="2OqwBi" id="3R$mY2Q9J3J" role="33vP2m">
              <node concept="37vLTw" id="3R$mY2Q9IIo" role="2Oq$k0">
                <ref role="3cqZAo" node="3R$mY2Q9IEk" resolve="editor" />
              </node>
              <node concept="liA8E" id="3R$mY2Q9J3K" role="2OqNvi">
                <ref role="37wK5l" to="cj4x:~EditorComponent.getEditedNode()" resolve="getEditedNode" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3R$mY2Q9IEx" role="3cqZAp">
          <node concept="3cpWsn" id="3R$mY2Q9IEw" role="3cpWs9">
            <property role="TrG5h" value="astBefore" />
            <node concept="3uibUv" id="3R$mY2Q9IEy" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
            <node concept="1rXfSq" id="3R$mY2Q9IEz" role="33vP2m">
              <ref role="37wK5l" node="3R$mY2Q9IBW" resolve="astFingerprint" />
              <node concept="37vLTw" id="3R$mY2Q9IE$" role="37wK5m">
                <ref role="3cqZAo" node="3R$mY2Q9IEs" resolve="root" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3R$mY2Q9IEA" role="3cqZAp">
          <node concept="3cpWsn" id="3R$mY2Q9IE_" role="3cpWs9">
            <property role="TrG5h" value="referencesBefore" />
            <node concept="3uibUv" id="3R$mY2Q9IEB" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
            <node concept="1rXfSq" id="3R$mY2Q9IEC" role="33vP2m">
              <ref role="37wK5l" node="3R$mY2Q9ID9" resolve="referenceFingerprint" />
              <node concept="37vLTw" id="3R$mY2Q9IED" role="37wK5m">
                <ref role="3cqZAo" node="3R$mY2Q9IEs" resolve="root" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3R$mY2Q9IEF" role="3cqZAp">
          <node concept="3cpWsn" id="3R$mY2Q9IEE" role="3cpWs9">
            <property role="TrG5h" value="textBefore" />
            <node concept="3uibUv" id="3R$mY2Q9IEG" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
            <node concept="1rXfSq" id="3R$mY2Q9IEH" role="33vP2m">
              <ref role="37wK5l" node="54cyhNXDh5E" resolve="exportLf" />
              <node concept="37vLTw" id="3R$mY2Q9IEI" role="37wK5m">
                <ref role="3cqZAo" node="3R$mY2Q9IEi" resolve="project" />
              </node>
              <node concept="37vLTw" id="3R$mY2Q9IEJ" role="37wK5m">
                <ref role="3cqZAo" node="3R$mY2Q9IEs" resolve="root" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3R$mY2Q9IEK" role="3cqZAp">
          <node concept="1rXfSq" id="3R$mY2Q9IEL" role="3clFbG">
            <ref role="37wK5l" node="3R$mY2Q3hFk" resolve="setMatrixHint" />
            <node concept="37vLTw" id="3R$mY2Q9IEM" role="37wK5m">
              <ref role="3cqZAo" node="3R$mY2Q9IEi" resolve="project" />
            </node>
            <node concept="37vLTw" id="3R$mY2Q9IEN" role="37wK5m">
              <ref role="3cqZAo" node="3R$mY2Q9IEk" resolve="editor" />
            </node>
            <node concept="3clFbT" id="3R$mY2Q9IEO" role="37wK5m">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3R$mY2Q9IEQ" role="3cqZAp">
          <node concept="3cpWsn" id="3R$mY2Q9IEP" role="3cpWs9">
            <property role="TrG5h" value="matrixUnchanged" />
            <node concept="10P_77" id="3R$mY2Q9IER" role="1tU5fm" />
            <node concept="1Wc70l" id="3R$mY2Q9IES" role="33vP2m">
              <node concept="1Wc70l" id="3R$mY2Q9IET" role="3uHU7B">
                <node concept="2OqwBi" id="3R$mY2Q9J3Z" role="3uHU7B">
                  <node concept="37vLTw" id="3R$mY2Q9IIt" role="2Oq$k0">
                    <ref role="3cqZAo" node="3R$mY2Q9IEw" resolve="astBefore" />
                  </node>
                  <node concept="liA8E" id="3R$mY2Q9J40" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                    <node concept="1rXfSq" id="3R$mY2Q9J41" role="37wK5m">
                      <ref role="37wK5l" node="3R$mY2Q9IBW" resolve="astFingerprint" />
                      <node concept="37vLTw" id="3R$mY2Q9J42" role="37wK5m">
                        <ref role="3cqZAo" node="3R$mY2Q9IEs" resolve="root" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="3R$mY2Q9J4h" role="3uHU7w">
                  <node concept="37vLTw" id="3R$mY2Q9II$" role="2Oq$k0">
                    <ref role="3cqZAo" node="3R$mY2Q9IE_" resolve="referencesBefore" />
                  </node>
                  <node concept="liA8E" id="3R$mY2Q9J4i" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                    <node concept="1rXfSq" id="3R$mY2Q9J4j" role="37wK5m">
                      <ref role="37wK5l" node="3R$mY2Q9ID9" resolve="referenceFingerprint" />
                      <node concept="37vLTw" id="3R$mY2Q9J4k" role="37wK5m">
                        <ref role="3cqZAo" node="3R$mY2Q9IEs" resolve="root" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="3R$mY2Q9J4z" role="3uHU7w">
                <node concept="37vLTw" id="3R$mY2Q9IIF" role="2Oq$k0">
                  <ref role="3cqZAo" node="3R$mY2Q9IEE" resolve="textBefore" />
                </node>
                <node concept="liA8E" id="3R$mY2Q9J4$" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                  <node concept="1rXfSq" id="3R$mY2Q9J4_" role="37wK5m">
                    <ref role="37wK5l" node="54cyhNXDh5E" resolve="exportLf" />
                    <node concept="37vLTw" id="3R$mY2Q9J4A" role="37wK5m">
                      <ref role="3cqZAo" node="3R$mY2Q9IEi" resolve="project" />
                    </node>
                    <node concept="37vLTw" id="3R$mY2Q9J4B" role="37wK5m">
                      <ref role="3cqZAo" node="3R$mY2Q9IEs" resolve="root" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3R$mY2Q9IF4" role="3cqZAp">
          <node concept="1rXfSq" id="3R$mY2Q9IF5" role="3clFbG">
            <ref role="37wK5l" node="3R$mY2Q3hFk" resolve="setMatrixHint" />
            <node concept="37vLTw" id="3R$mY2Q9IF6" role="37wK5m">
              <ref role="3cqZAo" node="3R$mY2Q9IEi" resolve="project" />
            </node>
            <node concept="37vLTw" id="3R$mY2Q9IF7" role="37wK5m">
              <ref role="3cqZAo" node="3R$mY2Q9IEk" resolve="editor" />
            </node>
            <node concept="3clFbT" id="3R$mY2Q9IF8" role="37wK5m" />
          </node>
        </node>
        <node concept="3cpWs6" id="3R$mY2Q9IF9" role="3cqZAp">
          <node concept="1Wc70l" id="3R$mY2Q9IFa" role="3cqZAk">
            <node concept="1Wc70l" id="3R$mY2Q9IFb" role="3uHU7B">
              <node concept="1Wc70l" id="3R$mY2Q9IFc" role="3uHU7B">
                <node concept="37vLTw" id="3R$mY2Q9IFd" role="3uHU7B">
                  <ref role="3cqZAo" node="3R$mY2Q9IEP" resolve="matrixUnchanged" />
                </node>
                <node concept="2OqwBi" id="3R$mY2Q9J4Q" role="3uHU7w">
                  <node concept="37vLTw" id="3R$mY2Q9IIN" role="2Oq$k0">
                    <ref role="3cqZAo" node="3R$mY2Q9IEw" resolve="astBefore" />
                  </node>
                  <node concept="liA8E" id="3R$mY2Q9J4R" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                    <node concept="1rXfSq" id="3R$mY2Q9J4S" role="37wK5m">
                      <ref role="37wK5l" node="3R$mY2Q9IBW" resolve="astFingerprint" />
                      <node concept="37vLTw" id="3R$mY2Q9J4T" role="37wK5m">
                        <ref role="3cqZAo" node="3R$mY2Q9IEs" resolve="root" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="3R$mY2Q9J58" role="3uHU7w">
                <node concept="37vLTw" id="3R$mY2Q9IIU" role="2Oq$k0">
                  <ref role="3cqZAo" node="3R$mY2Q9IE_" resolve="referencesBefore" />
                </node>
                <node concept="liA8E" id="3R$mY2Q9J59" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                  <node concept="1rXfSq" id="3R$mY2Q9J5a" role="37wK5m">
                    <ref role="37wK5l" node="3R$mY2Q9ID9" resolve="referenceFingerprint" />
                    <node concept="37vLTw" id="3R$mY2Q9J5b" role="37wK5m">
                      <ref role="3cqZAo" node="3R$mY2Q9IEs" resolve="root" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="3R$mY2Q9J5q" role="3uHU7w">
              <node concept="37vLTw" id="3R$mY2Q9IJ1" role="2Oq$k0">
                <ref role="3cqZAo" node="3R$mY2Q9IEE" resolve="textBefore" />
              </node>
              <node concept="liA8E" id="3R$mY2Q9J5r" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                <node concept="1rXfSq" id="3R$mY2Q9J5s" role="37wK5m">
                  <ref role="37wK5l" node="54cyhNXDh5E" resolve="exportLf" />
                  <node concept="37vLTw" id="3R$mY2Q9J5t" role="37wK5m">
                    <ref role="3cqZAo" node="3R$mY2Q9IEi" resolve="project" />
                  </node>
                  <node concept="37vLTw" id="3R$mY2Q9J5u" role="37wK5m">
                    <ref role="3cqZAo" node="3R$mY2Q9IEs" resolve="root" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3R$mY2Q9IFo" role="1B3o_S" />
      <node concept="10P_77" id="3R$mY2Q9IFp" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="3R$mY2QcHV0" role="jymVt">
      <property role="TrG5h" value="projectionSwitchPreservesModelRead" />
      <node concept="37vLTG" id="3R$mY2QcHV1" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="3R$mY2QcHV2" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="jetbrains.mps.project.Project" />
        </node>
      </node>
      <node concept="37vLTG" id="3R$mY2QcHV3" role="3clF46">
        <property role="TrG5h" value="editor" />
        <node concept="3uibUv" id="3R$mY2QcHV4" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorComponent" resolve="jetbrains.mps.openapi.editor.EditorComponent" />
        </node>
      </node>
      <node concept="3clFbS" id="3R$mY2QcHV5" role="3clF47">
        <node concept="3clFbF" id="3R$mY2QcHV6" role="3cqZAp">
          <node concept="1rXfSq" id="3R$mY2QcHV7" role="3clFbG">
            <ref role="37wK5l" node="3R$mY2Q3hFk" resolve="setMatrixHint" />
            <node concept="37vLTw" id="3R$mY2QcHV8" role="37wK5m">
              <ref role="3cqZAo" node="3R$mY2QcHV1" resolve="project" />
            </node>
            <node concept="37vLTw" id="3R$mY2QcHV9" role="37wK5m">
              <ref role="3cqZAo" node="3R$mY2QcHV3" resolve="editor" />
            </node>
            <node concept="3clFbT" id="3R$mY2QcHVa" role="37wK5m" />
          </node>
        </node>
        <node concept="3cpWs8" id="3R$mY2QcHVc" role="3cqZAp">
          <node concept="3cpWsn" id="3R$mY2QcHVb" role="3cpWs9">
            <property role="TrG5h" value="root" />
            <node concept="3uibUv" id="3R$mY2QcHVd" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="org.jetbrains.mps.openapi.model.SNode" />
            </node>
            <node concept="2OqwBi" id="3R$mY2QcI2D" role="33vP2m">
              <node concept="2OqwBi" id="3R$mY2QcHZ_" role="2Oq$k0">
                <node concept="37vLTw" id="3R$mY2QcHXN" role="2Oq$k0">
                  <ref role="3cqZAo" node="3R$mY2QcHV1" resolve="project" />
                </node>
                <node concept="liA8E" id="3R$mY2QcHZA" role="2OqNvi">
                  <ref role="37wK5l" to="z1c3:~Project.getModelAccess()" resolve="getModelAccess" />
                </node>
              </node>
              <node concept="liA8E" id="3R$mY2QcI2E" role="2OqNvi">
                <ref role="37wK5l" to="lui2:~ModelAccess.computeReadAction(java.util.function.Supplier)" resolve="computeReadAction" />
                <node concept="1bVj0M" id="3R$mY2QcI2F" role="37wK5m">
                  <node concept="3clFbS" id="3R$mY2QcI2G" role="1bW5cS">
                    <node concept="3clFbF" id="3R$mY2QcI2H" role="3cqZAp">
                      <node concept="2OqwBi" id="3R$mY2QcI2I" role="3clFbG">
                        <node concept="37vLTw" id="3R$mY2QcI2J" role="2Oq$k0">
                          <ref role="3cqZAo" node="3R$mY2QcHV3" resolve="editor" />
                        </node>
                        <node concept="liA8E" id="3R$mY2QcI2K" role="2OqNvi">
                          <ref role="37wK5l" to="cj4x:~EditorComponent.getEditedNode()" resolve="getEditedNode" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3R$mY2QcHVl" role="3cqZAp">
          <node concept="3cpWsn" id="3R$mY2QcHVk" role="3cpWs9">
            <property role="TrG5h" value="astBefore" />
            <node concept="3uibUv" id="3R$mY2QcHVm" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
            <node concept="2OqwBi" id="3R$mY2QcI30" role="33vP2m">
              <node concept="2OqwBi" id="3R$mY2QcI03" role="2Oq$k0">
                <node concept="37vLTw" id="3R$mY2QcHY5" role="2Oq$k0">
                  <ref role="3cqZAo" node="3R$mY2QcHV1" resolve="project" />
                </node>
                <node concept="liA8E" id="3R$mY2QcI04" role="2OqNvi">
                  <ref role="37wK5l" to="z1c3:~Project.getModelAccess()" resolve="getModelAccess" />
                </node>
              </node>
              <node concept="liA8E" id="3R$mY2QcI31" role="2OqNvi">
                <ref role="37wK5l" to="lui2:~ModelAccess.computeReadAction(java.util.function.Supplier)" resolve="computeReadAction" />
                <node concept="1bVj0M" id="3R$mY2QcI32" role="37wK5m">
                  <node concept="3clFbS" id="3R$mY2QcI33" role="1bW5cS">
                    <node concept="3clFbF" id="3R$mY2QcI34" role="3cqZAp">
                      <node concept="1rXfSq" id="3R$mY2QcI35" role="3clFbG">
                        <ref role="37wK5l" node="3R$mY2Q9IBW" resolve="astFingerprint" />
                        <node concept="37vLTw" id="3R$mY2QcI36" role="37wK5m">
                          <ref role="3cqZAo" node="3R$mY2QcHVb" resolve="root" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3R$mY2QcHVv" role="3cqZAp">
          <node concept="3cpWsn" id="3R$mY2QcHVu" role="3cpWs9">
            <property role="TrG5h" value="referencesBefore" />
            <node concept="3uibUv" id="3R$mY2QcHVw" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
            <node concept="2OqwBi" id="3R$mY2QcI3m" role="33vP2m">
              <node concept="2OqwBi" id="3R$mY2QcI0m" role="2Oq$k0">
                <node concept="37vLTw" id="3R$mY2QcHYi" role="2Oq$k0">
                  <ref role="3cqZAo" node="3R$mY2QcHV1" resolve="project" />
                </node>
                <node concept="liA8E" id="3R$mY2QcI0n" role="2OqNvi">
                  <ref role="37wK5l" to="z1c3:~Project.getModelAccess()" resolve="getModelAccess" />
                </node>
              </node>
              <node concept="liA8E" id="3R$mY2QcI3n" role="2OqNvi">
                <ref role="37wK5l" to="lui2:~ModelAccess.computeReadAction(java.util.function.Supplier)" resolve="computeReadAction" />
                <node concept="1bVj0M" id="3R$mY2QcI3o" role="37wK5m">
                  <node concept="3clFbS" id="3R$mY2QcI3p" role="1bW5cS">
                    <node concept="3clFbF" id="3R$mY2QcI3q" role="3cqZAp">
                      <node concept="1rXfSq" id="3R$mY2QcI3r" role="3clFbG">
                        <ref role="37wK5l" node="3R$mY2Q9ID9" resolve="referenceFingerprint" />
                        <node concept="37vLTw" id="3R$mY2QcI3s" role="37wK5m">
                          <ref role="3cqZAo" node="3R$mY2QcHVb" resolve="root" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3R$mY2QcHVD" role="3cqZAp">
          <node concept="3cpWsn" id="3R$mY2QcHVC" role="3cpWs9">
            <property role="TrG5h" value="textBefore" />
            <node concept="3uibUv" id="3R$mY2QcHVE" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
            <node concept="1rXfSq" id="3R$mY2QcHVF" role="33vP2m">
              <ref role="37wK5l" node="54cyhNXDh5E" resolve="exportLf" />
              <node concept="37vLTw" id="3R$mY2QcHVG" role="37wK5m">
                <ref role="3cqZAo" node="3R$mY2QcHV1" resolve="project" />
              </node>
              <node concept="37vLTw" id="3R$mY2QcHVH" role="37wK5m">
                <ref role="3cqZAo" node="3R$mY2QcHVb" resolve="root" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3R$mY2QcHVI" role="3cqZAp">
          <node concept="1rXfSq" id="3R$mY2QcHVJ" role="3clFbG">
            <ref role="37wK5l" node="3R$mY2Q3hFk" resolve="setMatrixHint" />
            <node concept="37vLTw" id="3R$mY2QcHVK" role="37wK5m">
              <ref role="3cqZAo" node="3R$mY2QcHV1" resolve="project" />
            </node>
            <node concept="37vLTw" id="3R$mY2QcHVL" role="37wK5m">
              <ref role="3cqZAo" node="3R$mY2QcHV3" resolve="editor" />
            </node>
            <node concept="3clFbT" id="3R$mY2QcHVM" role="37wK5m">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3R$mY2QcHVO" role="3cqZAp">
          <node concept="3cpWsn" id="3R$mY2QcHVN" role="3cpWs9">
            <property role="TrG5h" value="matrixUnchanged" />
            <node concept="10P_77" id="3R$mY2QcHVP" role="1tU5fm" />
            <node concept="1Wc70l" id="3R$mY2QcHVQ" role="33vP2m">
              <node concept="1Wc70l" id="3R$mY2QcHVR" role="3uHU7B">
                <node concept="2OqwBi" id="3R$mY2QcI0A" role="3uHU7B">
                  <node concept="37vLTw" id="3R$mY2QcHYn" role="2Oq$k0">
                    <ref role="3cqZAo" node="3R$mY2QcHVk" resolve="astBefore" />
                  </node>
                  <node concept="liA8E" id="3R$mY2QcI0B" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                    <node concept="2OqwBi" id="3R$mY2QcI5G" role="37wK5m">
                      <node concept="2OqwBi" id="3R$mY2QcI4y" role="2Oq$k0">
                        <node concept="37vLTw" id="3R$mY2QcI3C" role="2Oq$k0">
                          <ref role="3cqZAo" node="3R$mY2QcHV1" resolve="project" />
                        </node>
                        <node concept="liA8E" id="3R$mY2QcI4z" role="2OqNvi">
                          <ref role="37wK5l" to="z1c3:~Project.getModelAccess()" resolve="getModelAccess" />
                        </node>
                      </node>
                      <node concept="liA8E" id="3R$mY2QcI5H" role="2OqNvi">
                        <ref role="37wK5l" to="lui2:~ModelAccess.computeReadAction(java.util.function.Supplier)" resolve="computeReadAction" />
                        <node concept="1bVj0M" id="3R$mY2QcI5I" role="37wK5m">
                          <node concept="3clFbS" id="3R$mY2QcI5J" role="1bW5cS">
                            <node concept="3clFbF" id="3R$mY2QcI5K" role="3cqZAp">
                              <node concept="1rXfSq" id="3R$mY2QcI5L" role="3clFbG">
                                <ref role="37wK5l" node="3R$mY2Q9IBW" resolve="astFingerprint" />
                                <node concept="37vLTw" id="3R$mY2QcI5M" role="37wK5m">
                                  <ref role="3cqZAo" node="3R$mY2QcHVb" resolve="root" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="3R$mY2QcI0X" role="3uHU7w">
                  <node concept="37vLTw" id="3R$mY2QcHYz" role="2Oq$k0">
                    <ref role="3cqZAo" node="3R$mY2QcHVu" resolve="referencesBefore" />
                  </node>
                  <node concept="liA8E" id="3R$mY2QcI0Y" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                    <node concept="2OqwBi" id="3R$mY2QcI62" role="37wK5m">
                      <node concept="2OqwBi" id="3R$mY2QcI4P" role="2Oq$k0">
                        <node concept="37vLTw" id="3R$mY2QcI3P" role="2Oq$k0">
                          <ref role="3cqZAo" node="3R$mY2QcHV1" resolve="project" />
                        </node>
                        <node concept="liA8E" id="3R$mY2QcI4Q" role="2OqNvi">
                          <ref role="37wK5l" to="z1c3:~Project.getModelAccess()" resolve="getModelAccess" />
                        </node>
                      </node>
                      <node concept="liA8E" id="3R$mY2QcI63" role="2OqNvi">
                        <ref role="37wK5l" to="lui2:~ModelAccess.computeReadAction(java.util.function.Supplier)" resolve="computeReadAction" />
                        <node concept="1bVj0M" id="3R$mY2QcI64" role="37wK5m">
                          <node concept="3clFbS" id="3R$mY2QcI65" role="1bW5cS">
                            <node concept="3clFbF" id="3R$mY2QcI66" role="3cqZAp">
                              <node concept="1rXfSq" id="3R$mY2QcI67" role="3clFbG">
                                <ref role="37wK5l" node="3R$mY2Q9ID9" resolve="referenceFingerprint" />
                                <node concept="37vLTw" id="3R$mY2QcI68" role="37wK5m">
                                  <ref role="3cqZAo" node="3R$mY2QcHVb" resolve="root" />
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
              <node concept="2OqwBi" id="3R$mY2QcI1k" role="3uHU7w">
                <node concept="37vLTw" id="3R$mY2QcHYJ" role="2Oq$k0">
                  <ref role="3cqZAo" node="3R$mY2QcHVC" resolve="textBefore" />
                </node>
                <node concept="liA8E" id="3R$mY2QcI1l" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                  <node concept="1rXfSq" id="3R$mY2QcI1m" role="37wK5m">
                    <ref role="37wK5l" node="54cyhNXDh5E" resolve="exportLf" />
                    <node concept="37vLTw" id="3R$mY2QcI1n" role="37wK5m">
                      <ref role="3cqZAo" node="3R$mY2QcHV1" resolve="project" />
                    </node>
                    <node concept="37vLTw" id="3R$mY2QcI1o" role="37wK5m">
                      <ref role="3cqZAo" node="3R$mY2QcHVb" resolve="root" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3R$mY2QcHWc" role="3cqZAp">
          <node concept="1rXfSq" id="3R$mY2QcHWd" role="3clFbG">
            <ref role="37wK5l" node="3R$mY2Q3hFk" resolve="setMatrixHint" />
            <node concept="37vLTw" id="3R$mY2QcHWe" role="37wK5m">
              <ref role="3cqZAo" node="3R$mY2QcHV1" resolve="project" />
            </node>
            <node concept="37vLTw" id="3R$mY2QcHWf" role="37wK5m">
              <ref role="3cqZAo" node="3R$mY2QcHV3" resolve="editor" />
            </node>
            <node concept="3clFbT" id="3R$mY2QcHWg" role="37wK5m" />
          </node>
        </node>
        <node concept="3cpWs6" id="3R$mY2QcHWh" role="3cqZAp">
          <node concept="1Wc70l" id="3R$mY2QcHWi" role="3cqZAk">
            <node concept="1Wc70l" id="3R$mY2QcHWj" role="3uHU7B">
              <node concept="1Wc70l" id="3R$mY2QcHWk" role="3uHU7B">
                <node concept="37vLTw" id="3R$mY2QcHWl" role="3uHU7B">
                  <ref role="3cqZAo" node="3R$mY2QcHVN" resolve="matrixUnchanged" />
                </node>
                <node concept="2OqwBi" id="3R$mY2QcI1B" role="3uHU7w">
                  <node concept="37vLTw" id="3R$mY2QcHYR" role="2Oq$k0">
                    <ref role="3cqZAo" node="3R$mY2QcHVk" resolve="astBefore" />
                  </node>
                  <node concept="liA8E" id="3R$mY2QcI1C" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                    <node concept="2OqwBi" id="3R$mY2QcI6o" role="37wK5m">
                      <node concept="2OqwBi" id="3R$mY2QcI58" role="2Oq$k0">
                        <node concept="37vLTw" id="3R$mY2QcI42" role="2Oq$k0">
                          <ref role="3cqZAo" node="3R$mY2QcHV1" resolve="project" />
                        </node>
                        <node concept="liA8E" id="3R$mY2QcI59" role="2OqNvi">
                          <ref role="37wK5l" to="z1c3:~Project.getModelAccess()" resolve="getModelAccess" />
                        </node>
                      </node>
                      <node concept="liA8E" id="3R$mY2QcI6p" role="2OqNvi">
                        <ref role="37wK5l" to="lui2:~ModelAccess.computeReadAction(java.util.function.Supplier)" resolve="computeReadAction" />
                        <node concept="1bVj0M" id="3R$mY2QcI6q" role="37wK5m">
                          <node concept="3clFbS" id="3R$mY2QcI6r" role="1bW5cS">
                            <node concept="3clFbF" id="3R$mY2QcI6s" role="3cqZAp">
                              <node concept="1rXfSq" id="3R$mY2QcI6t" role="3clFbG">
                                <ref role="37wK5l" node="3R$mY2Q9IBW" resolve="astFingerprint" />
                                <node concept="37vLTw" id="3R$mY2QcI6u" role="37wK5m">
                                  <ref role="3cqZAo" node="3R$mY2QcHVb" resolve="root" />
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
              <node concept="2OqwBi" id="3R$mY2QcI1Y" role="3uHU7w">
                <node concept="37vLTw" id="3R$mY2QcHZ3" role="2Oq$k0">
                  <ref role="3cqZAo" node="3R$mY2QcHVu" resolve="referencesBefore" />
                </node>
                <node concept="liA8E" id="3R$mY2QcI1Z" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                  <node concept="2OqwBi" id="3R$mY2QcI6I" role="37wK5m">
                    <node concept="2OqwBi" id="3R$mY2QcI5r" role="2Oq$k0">
                      <node concept="37vLTw" id="3R$mY2QcI4f" role="2Oq$k0">
                        <ref role="3cqZAo" node="3R$mY2QcHV1" resolve="project" />
                      </node>
                      <node concept="liA8E" id="3R$mY2QcI5s" role="2OqNvi">
                        <ref role="37wK5l" to="z1c3:~Project.getModelAccess()" resolve="getModelAccess" />
                      </node>
                    </node>
                    <node concept="liA8E" id="3R$mY2QcI6J" role="2OqNvi">
                      <ref role="37wK5l" to="lui2:~ModelAccess.computeReadAction(java.util.function.Supplier)" resolve="computeReadAction" />
                      <node concept="1bVj0M" id="3R$mY2QcI6K" role="37wK5m">
                        <node concept="3clFbS" id="3R$mY2QcI6L" role="1bW5cS">
                          <node concept="3clFbF" id="3R$mY2QcI6M" role="3cqZAp">
                            <node concept="1rXfSq" id="3R$mY2QcI6N" role="3clFbG">
                              <ref role="37wK5l" node="3R$mY2Q9ID9" resolve="referenceFingerprint" />
                              <node concept="37vLTw" id="3R$mY2QcI6O" role="37wK5m">
                                <ref role="3cqZAo" node="3R$mY2QcHVb" resolve="root" />
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
            <node concept="2OqwBi" id="3R$mY2QcI2l" role="3uHU7w">
              <node concept="37vLTw" id="3R$mY2QcHZf" role="2Oq$k0">
                <ref role="3cqZAo" node="3R$mY2QcHVC" resolve="textBefore" />
              </node>
              <node concept="liA8E" id="3R$mY2QcI2m" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                <node concept="1rXfSq" id="3R$mY2QcI2n" role="37wK5m">
                  <ref role="37wK5l" node="54cyhNXDh5E" resolve="exportLf" />
                  <node concept="37vLTw" id="3R$mY2QcI2o" role="37wK5m">
                    <ref role="3cqZAo" node="3R$mY2QcHV1" resolve="project" />
                  </node>
                  <node concept="37vLTw" id="3R$mY2QcI2p" role="37wK5m">
                    <ref role="3cqZAo" node="3R$mY2QcHVb" resolve="root" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3R$mY2QcHWE" role="1B3o_S" />
      <node concept="10P_77" id="3R$mY2QcHWF" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="3R$mY2QerQZ" role="jymVt">
      <property role="TrG5h" value="editorTextDoesNotContain" />
      <node concept="37vLTG" id="3R$mY2QerR0" role="3clF46">
        <property role="TrG5h" value="editor" />
        <node concept="3uibUv" id="3R$mY2QerR1" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorComponent" resolve="jetbrains.mps.openapi.editor.EditorComponent" />
        </node>
      </node>
      <node concept="37vLTG" id="3R$mY2QerR2" role="3clF46">
        <property role="TrG5h" value="fragment" />
        <node concept="3uibUv" id="3R$mY2QerR3" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3clFbS" id="3R$mY2QerR4" role="3clF47">
        <node concept="3cpWs6" id="3R$mY2QerR5" role="3cqZAp">
          <node concept="3fqX7Q" id="3R$mY2QerR6" role="3cqZAk">
            <node concept="2OqwBi" id="3R$mY2QerRB" role="3fr31v">
              <node concept="1rXfSq" id="3R$mY2QerR8" role="2Oq$k0">
                <ref role="37wK5l" node="3R$mY2Q6Jnt" resolve="editorText" />
                <node concept="37vLTw" id="3R$mY2QerR9" role="37wK5m">
                  <ref role="3cqZAo" node="3R$mY2QerR0" resolve="editor" />
                </node>
              </node>
              <node concept="liA8E" id="3R$mY2QerRC" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                <node concept="37vLTw" id="3R$mY2QerRD" role="37wK5m">
                  <ref role="3cqZAo" node="3R$mY2QerR2" resolve="fragment" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3R$mY2QerRb" role="1B3o_S" />
      <node concept="10P_77" id="3R$mY2QerRc" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="3R$mY2Qhw8R" role="jymVt">
      <property role="TrG5h" value="selectMatrixNoteCell" />
      <node concept="37vLTG" id="3R$mY2Qhw8S" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="3R$mY2Qhw8T" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="jetbrains.mps.project.Project" />
        </node>
      </node>
      <node concept="37vLTG" id="3R$mY2Qhw8U" role="3clF46">
        <property role="TrG5h" value="editor" />
        <node concept="3uibUv" id="3R$mY2Qhw8V" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorComponent" resolve="jetbrains.mps.openapi.editor.EditorComponent" />
        </node>
      </node>
      <node concept="3clFbS" id="3R$mY2Qhw8W" role="3clF47">
        <node concept="3cpWs8" id="3R$mY2Qhw8Y" role="3cqZAp">
          <node concept="3cpWsn" id="3R$mY2Qhw8X" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="state" />
            <node concept="3uibUv" id="3R$mY2Qhw8Z" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="org.jetbrains.mps.openapi.model.SNode" />
            </node>
            <node concept="2OqwBi" id="3R$mY2Qhwee" role="33vP2m">
              <node concept="2OqwBi" id="3R$mY2QhwcA" role="2Oq$k0">
                <node concept="37vLTw" id="3R$mY2Qhwaj" role="2Oq$k0">
                  <ref role="3cqZAo" node="3R$mY2Qhw8S" resolve="project" />
                </node>
                <node concept="liA8E" id="3R$mY2QhwcB" role="2OqNvi">
                  <ref role="37wK5l" to="z1c3:~Project.getModelAccess()" resolve="getModelAccess" />
                </node>
              </node>
              <node concept="liA8E" id="3R$mY2Qhwef" role="2OqNvi">
                <ref role="37wK5l" to="lui2:~ModelAccess.computeReadAction(java.util.function.Supplier)" resolve="computeReadAction" />
                <node concept="1bVj0M" id="3R$mY2Qhweg" role="37wK5m">
                  <node concept="3clFbS" id="3R$mY2Qhweh" role="1bW5cS">
                    <node concept="3clFbF" id="3R$mY2Qhwei" role="3cqZAp">
                      <node concept="2OqwBi" id="3R$mY2QhwjA" role="3clFbG">
                        <node concept="2OqwBi" id="3R$mY2Qhwh6" role="2Oq$k0">
                          <node concept="2OqwBi" id="3R$mY2Qhwfk" role="2Oq$k0">
                            <node concept="2OqwBi" id="3R$mY2Qhwem" role="2Oq$k0">
                              <node concept="37vLTw" id="3R$mY2Qhwen" role="2Oq$k0">
                                <ref role="3cqZAo" node="3R$mY2Qhw8U" resolve="editor" />
                              </node>
                              <node concept="liA8E" id="3R$mY2Qhweo" role="2OqNvi">
                                <ref role="37wK5l" to="cj4x:~EditorComponent.getEditedNode()" resolve="getEditedNode" />
                              </node>
                            </node>
                            <node concept="liA8E" id="3R$mY2Qhwfl" role="2OqNvi">
                              <ref role="37wK5l" to="mhbf:~SNode.getChildren(org.jetbrains.mps.openapi.language.SContainmentLink)" resolve="getChildren" />
                              <node concept="Xl_RD" id="3R$mY2Qhwfm" role="37wK5m">
                                <property role="Xl_RC" value="states" />
                              </node>
                            </node>
                          </node>
                          <node concept="liA8E" id="3R$mY2Qhwh7" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~Iterable.iterator()" resolve="iterator" />
                          </node>
                        </node>
                        <node concept="liA8E" id="3R$mY2QhwjB" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~Iterator.next()" resolve="next" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3R$mY2Qhw9b" role="3cqZAp">
          <node concept="3cpWsn" id="3R$mY2Qhw9a" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="target" />
            <node concept="10Q1$e" id="3R$mY2Qhw9d" role="1tU5fm">
              <node concept="3uibUv" id="3R$mY2Qhw9c" role="10Q1$1">
                <ref role="3uigEE" to="f4zo:~EditorCell" resolve="jetbrains.mps.openapi.editor.cells.EditorCell" />
              </node>
            </node>
            <node concept="2ShNRf" id="3R$mY2Qhw9i" role="33vP2m">
              <node concept="3$_iS1" id="3R$mY2Qhw9g" role="2ShVmc">
                <node concept="3$GHV9" id="3R$mY2Qhw9h" role="3$GQph">
                  <node concept="3cmrfG" id="3R$mY2Qhw9f" role="3$I4v7">
                    <property role="3cmrfH" value="1" />
                  </node>
                </node>
                <node concept="3uibUv" id="3R$mY2Qhw9e" role="3$_nBY">
                  <ref role="3uigEE" to="f4zo:~EditorCell" resolve="jetbrains.mps.openapi.editor.cells.EditorCell" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="3R$mY2Qhw9Y" role="3cqZAp">
          <node concept="3uVAMA" id="3R$mY2Qhw9Z" role="1zxBo5">
            <node concept="3clFbS" id="3R$mY2Qhw9U" role="1zc67A">
              <node concept="YS8fn" id="3R$mY2Qhw9X" role="3cqZAp">
                <node concept="2ShNRf" id="3R$mY2QhwaM" role="YScLw">
                  <node concept="1pGfFk" id="3R$mY2QhwbL" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.Throwable)" resolve="RuntimeException" />
                    <node concept="37vLTw" id="3R$mY2QhwbM" role="37wK5m">
                      <ref role="3cqZAo" node="3R$mY2Qhw9Q" resolve="e" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="XOnhg" id="3R$mY2Qhw9Q" role="1zc67B">
              <property role="TrG5h" value="e" />
              <node concept="nSUau" id="3R$mY2Qhw9S" role="1tU5fm">
                <node concept="3uibUv" id="3R$mY2Qhw9R" role="nSUat">
                  <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="3R$mY2Qhw9k" role="1zxBo7">
            <node concept="3clFbF" id="3R$mY2Qhw9l" role="3cqZAp">
              <node concept="2YIFZM" id="3R$mY2QhwbQ" role="3clFbG">
                <ref role="1Pybhc" to="dxuu:~SwingUtilities" resolve="SwingUtilities" />
                <ref role="37wK5l" to="dxuu:~SwingUtilities.invokeAndWait(java.lang.Runnable)" resolve="invokeAndWait" />
                <node concept="1bVj0M" id="3R$mY2QhwbR" role="37wK5m">
                  <node concept="3clFbS" id="3R$mY2QhwbS" role="1bW5cS">
                    <node concept="9aQIb" id="3R$mY2QhwbT" role="3cqZAp">
                      <node concept="3clFbS" id="3R$mY2QhwbU" role="9aQI4">
                        <node concept="3clFbF" id="3R$mY2QhwbV" role="3cqZAp">
                          <node concept="37vLTI" id="3R$mY2QhwbW" role="3clFbG">
                            <node concept="AH0OO" id="3R$mY2QhwbX" role="37vLTJ">
                              <node concept="37vLTw" id="3R$mY2QhwbY" role="AHHXb">
                                <ref role="3cqZAo" node="3R$mY2Qhw9a" resolve="target" />
                              </node>
                              <node concept="3cmrfG" id="3R$mY2QhwbZ" role="AHEQo">
                                <property role="3cmrfH" value="0" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="3R$mY2Qhwez" role="37vLTx">
                              <node concept="37vLTw" id="3R$mY2Qhwde" role="2Oq$k0">
                                <ref role="3cqZAo" node="3R$mY2Qhw8U" resolve="editor" />
                              </node>
                              <node concept="liA8E" id="3R$mY2Qhwe$" role="2OqNvi">
                                <ref role="37wK5l" to="cj4x:~EditorComponent.findCellWithId(org.jetbrains.mps.openapi.model.SNode,java.lang.String)" resolve="findCellWithId" />
                                <node concept="37vLTw" id="3R$mY2Qhwe_" role="37wK5m">
                                  <ref role="3cqZAo" node="3R$mY2Qhw8X" resolve="state" />
                                </node>
                                <node concept="Xl_RD" id="3R$mY2QhweA" role="37wK5m">
                                  <property role="Xl_RC" value="property_matrixNote" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbJ" id="3R$mY2Qhwc3" role="3cqZAp">
                          <node concept="3y3z36" id="3R$mY2Qhwc4" role="3clFbw">
                            <node concept="AH0OO" id="3R$mY2Qhwc5" role="3uHU7B">
                              <node concept="37vLTw" id="3R$mY2Qhwc6" role="AHHXb">
                                <ref role="3cqZAo" node="3R$mY2Qhw9a" resolve="target" />
                              </node>
                              <node concept="3cmrfG" id="3R$mY2Qhwc7" role="AHEQo">
                                <property role="3cmrfH" value="0" />
                              </node>
                            </node>
                            <node concept="10Nm6u" id="3R$mY2Qhwc8" role="3uHU7w" />
                          </node>
                          <node concept="3clFbS" id="3R$mY2Qhwc9" role="3clFbx">
                            <node concept="3clFbF" id="3R$mY2Qhwca" role="3cqZAp">
                              <node concept="2OqwBi" id="3R$mY2QhweK" role="3clFbG">
                                <node concept="37vLTw" id="3R$mY2Qhwdl" role="2Oq$k0">
                                  <ref role="3cqZAo" node="3R$mY2Qhw8U" resolve="editor" />
                                </node>
                                <node concept="liA8E" id="3R$mY2QhweL" role="2OqNvi">
                                  <ref role="37wK5l" to="cj4x:~EditorComponent.changeSelection(jetbrains.mps.openapi.editor.cells.EditorCell)" resolve="changeSelection" />
                                  <node concept="AH0OO" id="3R$mY2QhweM" role="37wK5m">
                                    <node concept="37vLTw" id="3R$mY2QhweN" role="AHHXb">
                                      <ref role="3cqZAo" node="3R$mY2Qhw9a" resolve="target" />
                                    </node>
                                    <node concept="3cmrfG" id="3R$mY2QhweO" role="AHEQo">
                                      <property role="3cmrfH" value="0" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="3R$mY2Qhwcf" role="3cqZAp">
                              <node concept="2OqwBi" id="3R$mY2QhwdW" role="3clFbG">
                                <node concept="AH0OO" id="3R$mY2Qhwch" role="2Oq$k0">
                                  <node concept="37vLTw" id="3R$mY2Qhwci" role="AHHXb">
                                    <ref role="3cqZAo" node="3R$mY2Qhw9a" resolve="target" />
                                  </node>
                                  <node concept="3cmrfG" id="3R$mY2Qhwcj" role="AHEQo">
                                    <property role="3cmrfH" value="0" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="3R$mY2QhwdX" role="2OqNvi">
                                  <ref role="37wK5l" to="f4zo:~EditorCell.setCaretX(int)" resolve="setCaretX" />
                                  <node concept="3cmrfG" id="3R$mY2QhwdY" role="37wK5m">
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
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3R$mY2Qhwa0" role="3cqZAp">
          <node concept="3y3z36" id="3R$mY2Qhwa1" role="3cqZAk">
            <node concept="AH0OO" id="3R$mY2Qhwa2" role="3uHU7B">
              <node concept="37vLTw" id="3R$mY2Qhwa3" role="AHHXb">
                <ref role="3cqZAo" node="3R$mY2Qhw9a" resolve="target" />
              </node>
              <node concept="3cmrfG" id="3R$mY2Qhwa4" role="AHEQo">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
            <node concept="10Nm6u" id="3R$mY2Qhwa5" role="3uHU7w" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3R$mY2Qhwa6" role="1B3o_S" />
      <node concept="10P_77" id="3R$mY2Qhwa7" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="3R$mY2QkyXV" role="jymVt">
      <property role="TrG5h" value="selectTextStateCell" />
      <node concept="37vLTG" id="3R$mY2QkyXW" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="3R$mY2QkyXX" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="jetbrains.mps.project.Project" />
        </node>
      </node>
      <node concept="37vLTG" id="3R$mY2QkyXY" role="3clF46">
        <property role="TrG5h" value="editor" />
        <node concept="3uibUv" id="3R$mY2QkyXZ" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorComponent" resolve="jetbrains.mps.openapi.editor.EditorComponent" />
        </node>
      </node>
      <node concept="3clFbS" id="3R$mY2QkyY0" role="3clF47">
        <node concept="3cpWs8" id="3R$mY2QkyY2" role="3cqZAp">
          <node concept="3cpWsn" id="3R$mY2QkyY1" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="state" />
            <node concept="3uibUv" id="3R$mY2QkyY3" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="org.jetbrains.mps.openapi.model.SNode" />
            </node>
            <node concept="2OqwBi" id="3R$mY2Qkz3i" role="33vP2m">
              <node concept="2OqwBi" id="3R$mY2Qkz1E" role="2Oq$k0">
                <node concept="37vLTw" id="3R$mY2QkyZn" role="2Oq$k0">
                  <ref role="3cqZAo" node="3R$mY2QkyXW" resolve="project" />
                </node>
                <node concept="liA8E" id="3R$mY2Qkz1F" role="2OqNvi">
                  <ref role="37wK5l" to="z1c3:~Project.getModelAccess()" resolve="getModelAccess" />
                </node>
              </node>
              <node concept="liA8E" id="3R$mY2Qkz3j" role="2OqNvi">
                <ref role="37wK5l" to="lui2:~ModelAccess.computeReadAction(java.util.function.Supplier)" resolve="computeReadAction" />
                <node concept="1bVj0M" id="3R$mY2Qkz3k" role="37wK5m">
                  <node concept="3clFbS" id="3R$mY2Qkz3l" role="1bW5cS">
                    <node concept="3clFbF" id="3R$mY2Qkz3m" role="3cqZAp">
                      <node concept="2OqwBi" id="3R$mY2Qkz8E" role="3clFbG">
                        <node concept="2OqwBi" id="3R$mY2Qkz6a" role="2Oq$k0">
                          <node concept="2OqwBi" id="3R$mY2Qkz4o" role="2Oq$k0">
                            <node concept="2OqwBi" id="3R$mY2Qkz3q" role="2Oq$k0">
                              <node concept="37vLTw" id="3R$mY2Qkz3r" role="2Oq$k0">
                                <ref role="3cqZAo" node="3R$mY2QkyXY" resolve="editor" />
                              </node>
                              <node concept="liA8E" id="3R$mY2Qkz3s" role="2OqNvi">
                                <ref role="37wK5l" to="cj4x:~EditorComponent.getEditedNode()" resolve="getEditedNode" />
                              </node>
                            </node>
                            <node concept="liA8E" id="3R$mY2Qkz4p" role="2OqNvi">
                              <ref role="37wK5l" to="mhbf:~SNode.getChildren(org.jetbrains.mps.openapi.language.SContainmentLink)" resolve="getChildren" />
                              <node concept="Xl_RD" id="3R$mY2Qkz4q" role="37wK5m">
                                <property role="Xl_RC" value="states" />
                              </node>
                            </node>
                          </node>
                          <node concept="liA8E" id="3R$mY2Qkz6b" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~Iterable.iterator()" resolve="iterator" />
                          </node>
                        </node>
                        <node concept="liA8E" id="3R$mY2Qkz8F" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~Iterator.next()" resolve="next" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3R$mY2QkyYf" role="3cqZAp">
          <node concept="3cpWsn" id="3R$mY2QkyYe" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="target" />
            <node concept="10Q1$e" id="3R$mY2QkyYh" role="1tU5fm">
              <node concept="3uibUv" id="3R$mY2QkyYg" role="10Q1$1">
                <ref role="3uigEE" to="f4zo:~EditorCell" resolve="jetbrains.mps.openapi.editor.cells.EditorCell" />
              </node>
            </node>
            <node concept="2ShNRf" id="3R$mY2QkyYm" role="33vP2m">
              <node concept="3$_iS1" id="3R$mY2QkyYk" role="2ShVmc">
                <node concept="3$GHV9" id="3R$mY2QkyYl" role="3$GQph">
                  <node concept="3cmrfG" id="3R$mY2QkyYj" role="3$I4v7">
                    <property role="3cmrfH" value="1" />
                  </node>
                </node>
                <node concept="3uibUv" id="3R$mY2QkyYi" role="3$_nBY">
                  <ref role="3uigEE" to="f4zo:~EditorCell" resolve="jetbrains.mps.openapi.editor.cells.EditorCell" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="3R$mY2QkyZ2" role="3cqZAp">
          <node concept="3uVAMA" id="3R$mY2QkyZ3" role="1zxBo5">
            <node concept="3clFbS" id="3R$mY2QkyYY" role="1zc67A">
              <node concept="YS8fn" id="3R$mY2QkyZ1" role="3cqZAp">
                <node concept="2ShNRf" id="3R$mY2QkyZQ" role="YScLw">
                  <node concept="1pGfFk" id="3R$mY2Qkz0P" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.Throwable)" resolve="RuntimeException" />
                    <node concept="37vLTw" id="3R$mY2Qkz0Q" role="37wK5m">
                      <ref role="3cqZAo" node="3R$mY2QkyYU" resolve="e" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="XOnhg" id="3R$mY2QkyYU" role="1zc67B">
              <property role="TrG5h" value="e" />
              <node concept="nSUau" id="3R$mY2QkyYW" role="1tU5fm">
                <node concept="3uibUv" id="3R$mY2QkyYV" role="nSUat">
                  <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="3R$mY2QkyYo" role="1zxBo7">
            <node concept="3clFbF" id="3R$mY2QkyYp" role="3cqZAp">
              <node concept="2YIFZM" id="3R$mY2Qkz0U" role="3clFbG">
                <ref role="1Pybhc" to="dxuu:~SwingUtilities" resolve="SwingUtilities" />
                <ref role="37wK5l" to="dxuu:~SwingUtilities.invokeAndWait(java.lang.Runnable)" resolve="invokeAndWait" />
                <node concept="1bVj0M" id="3R$mY2Qkz0V" role="37wK5m">
                  <node concept="3clFbS" id="3R$mY2Qkz0W" role="1bW5cS">
                    <node concept="9aQIb" id="3R$mY2Qkz0X" role="3cqZAp">
                      <node concept="3clFbS" id="3R$mY2Qkz0Y" role="9aQI4">
                        <node concept="3clFbF" id="3R$mY2Qkz0Z" role="3cqZAp">
                          <node concept="37vLTI" id="3R$mY2Qkz10" role="3clFbG">
                            <node concept="AH0OO" id="3R$mY2Qkz11" role="37vLTJ">
                              <node concept="37vLTw" id="3R$mY2Qkz12" role="AHHXb">
                                <ref role="3cqZAo" node="3R$mY2QkyYe" resolve="target" />
                              </node>
                              <node concept="3cmrfG" id="3R$mY2Qkz13" role="AHEQo">
                                <property role="3cmrfH" value="0" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="3R$mY2Qkz3B" role="37vLTx">
                              <node concept="37vLTw" id="3R$mY2Qkz2i" role="2Oq$k0">
                                <ref role="3cqZAo" node="3R$mY2QkyXY" resolve="editor" />
                              </node>
                              <node concept="liA8E" id="3R$mY2Qkz3C" role="2OqNvi">
                                <ref role="37wK5l" to="cj4x:~EditorComponent.findCellWithId(org.jetbrains.mps.openapi.model.SNode,java.lang.String)" resolve="findCellWithId" />
                                <node concept="37vLTw" id="3R$mY2Qkz3D" role="37wK5m">
                                  <ref role="3cqZAo" node="3R$mY2QkyY1" resolve="state" />
                                </node>
                                <node concept="Xl_RD" id="3R$mY2Qkz3E" role="37wK5m">
                                  <property role="Xl_RC" value="property_identifier" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbJ" id="3R$mY2Qkz17" role="3cqZAp">
                          <node concept="3y3z36" id="3R$mY2Qkz18" role="3clFbw">
                            <node concept="AH0OO" id="3R$mY2Qkz19" role="3uHU7B">
                              <node concept="37vLTw" id="3R$mY2Qkz1a" role="AHHXb">
                                <ref role="3cqZAo" node="3R$mY2QkyYe" resolve="target" />
                              </node>
                              <node concept="3cmrfG" id="3R$mY2Qkz1b" role="AHEQo">
                                <property role="3cmrfH" value="0" />
                              </node>
                            </node>
                            <node concept="10Nm6u" id="3R$mY2Qkz1c" role="3uHU7w" />
                          </node>
                          <node concept="3clFbS" id="3R$mY2Qkz1d" role="3clFbx">
                            <node concept="3clFbF" id="3R$mY2Qkz1e" role="3cqZAp">
                              <node concept="2OqwBi" id="3R$mY2Qkz3O" role="3clFbG">
                                <node concept="37vLTw" id="3R$mY2Qkz2p" role="2Oq$k0">
                                  <ref role="3cqZAo" node="3R$mY2QkyXY" resolve="editor" />
                                </node>
                                <node concept="liA8E" id="3R$mY2Qkz3P" role="2OqNvi">
                                  <ref role="37wK5l" to="cj4x:~EditorComponent.changeSelection(jetbrains.mps.openapi.editor.cells.EditorCell)" resolve="changeSelection" />
                                  <node concept="AH0OO" id="3R$mY2Qkz3Q" role="37wK5m">
                                    <node concept="37vLTw" id="3R$mY2Qkz3R" role="AHHXb">
                                      <ref role="3cqZAo" node="3R$mY2QkyYe" resolve="target" />
                                    </node>
                                    <node concept="3cmrfG" id="3R$mY2Qkz3S" role="AHEQo">
                                      <property role="3cmrfH" value="0" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="3R$mY2Qkz1j" role="3cqZAp">
                              <node concept="2OqwBi" id="3R$mY2Qkz30" role="3clFbG">
                                <node concept="AH0OO" id="3R$mY2Qkz1l" role="2Oq$k0">
                                  <node concept="37vLTw" id="3R$mY2Qkz1m" role="AHHXb">
                                    <ref role="3cqZAo" node="3R$mY2QkyYe" resolve="target" />
                                  </node>
                                  <node concept="3cmrfG" id="3R$mY2Qkz1n" role="AHEQo">
                                    <property role="3cmrfH" value="0" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="3R$mY2Qkz31" role="2OqNvi">
                                  <ref role="37wK5l" to="f4zo:~EditorCell.setCaretX(int)" resolve="setCaretX" />
                                  <node concept="3cmrfG" id="3R$mY2Qkz32" role="37wK5m">
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
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3R$mY2QkyZ4" role="3cqZAp">
          <node concept="3y3z36" id="3R$mY2QkyZ5" role="3cqZAk">
            <node concept="AH0OO" id="3R$mY2QkyZ6" role="3uHU7B">
              <node concept="37vLTw" id="3R$mY2QkyZ7" role="AHHXb">
                <ref role="3cqZAo" node="3R$mY2QkyYe" resolve="target" />
              </node>
              <node concept="3cmrfG" id="3R$mY2QkyZ8" role="AHEQo">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
            <node concept="10Nm6u" id="3R$mY2QkyZ9" role="3uHU7w" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3R$mY2QkyZa" role="1B3o_S" />
      <node concept="10P_77" id="3R$mY2QkyZb" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="4WxdgwJk$GQ" role="jymVt">
      <property role="TrG5h" value="folding" />
      <node concept="37vLTG" id="4WxdgwJk$GR" role="3clF46">
        <property role="TrG5h" value="editor" />
        <node concept="3uibUv" id="4WxdgwJk$GS" role="1tU5fm">
          <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
        </node>
      </node>
      <node concept="3clFbS" id="4WxdgwJk$GT" role="3clF47">
        <node concept="3cpWs8" id="4WxdgwJk$GV" role="3cqZAp">
          <node concept="3cpWsn" id="4WxdgwJk$GU" role="3cpWs9">
            <property role="TrG5h" value="block" />
            <node concept="3uibUv" id="4WxdgwJk$GW" role="1tU5fm">
              <ref role="3uigEE" to="g51k:~EditorCell_Collection" resolve="EditorCell_Collection" />
            </node>
            <node concept="10QFUN" id="4WxdgwJk$GX" role="33vP2m">
              <node concept="2OqwBi" id="4WxdgwJk$I7" role="10QFUP">
                <node concept="37vLTw" id="4WxdgwJk$Hp" role="2Oq$k0">
                  <ref role="3cqZAo" node="4WxdgwJk$GR" resolve="editor" />
                </node>
                <node concept="liA8E" id="4WxdgwJk$I8" role="2OqNvi">
                  <ref role="37wK5l" to="exr9:~EditorComponent.findCellWithId(org.jetbrains.mps.openapi.model.SNode,java.lang.String)" resolve="findCellWithId" />
                  <node concept="2OqwBi" id="4WxdgwJk$JK" role="37wK5m">
                    <node concept="37vLTw" id="4WxdgwJk$Jq" role="2Oq$k0">
                      <ref role="3cqZAo" node="4WxdgwJk$GR" resolve="editor" />
                    </node>
                    <node concept="liA8E" id="4WxdgwJk$JL" role="2OqNvi">
                      <ref role="37wK5l" to="exr9:~EditorComponent.getEditedNode()" resolve="getEditedNode" />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="4WxdgwJk$Ia" role="37wK5m">
                    <property role="Xl_RC" value="block_statements" />
                  </node>
                </node>
              </node>
              <node concept="3uibUv" id="4WxdgwJk$H1" role="10QFUM">
                <ref role="3uigEE" to="g51k:~EditorCell_Collection" resolve="EditorCell_Collection" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4WxdgwJk$H2" role="3cqZAp">
          <node concept="3fqX7Q" id="4WxdgwJk$H3" role="3clFbw">
            <node concept="2OqwBi" id="4WxdgwJk$IA" role="3fr31v">
              <node concept="37vLTw" id="4WxdgwJk$Hw" role="2Oq$k0">
                <ref role="3cqZAo" node="4WxdgwJk$GU" resolve="block" />
              </node>
              <node concept="liA8E" id="4WxdgwJk$IB" role="2OqNvi">
                <ref role="37wK5l" to="g51k:~EditorCell_Collection.isCollapsed()" resolve="isCollapsed" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="4WxdgwJk$H7" role="3clFbx">
            <node concept="3cpWs6" id="4WxdgwJk$H5" role="3cqZAp">
              <node concept="Xl_RD" id="4WxdgwJk$H6" role="3cqZAk">
                <property role="Xl_RC" value="expanded" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4WxdgwJk$H9" role="3cqZAp">
          <node concept="3cpWsn" id="4WxdgwJk$H8" role="3cpWs9">
            <property role="TrG5h" value="summary" />
            <node concept="3uibUv" id="4WxdgwJk$Ha" role="1tU5fm">
              <ref role="3uigEE" to="g51k:~EditorCell_Label" resolve="EditorCell_Label" />
            </node>
            <node concept="10QFUN" id="4WxdgwJk$Hb" role="33vP2m">
              <node concept="2OqwBi" id="4WxdgwJk$J1" role="10QFUP">
                <node concept="37vLTw" id="4WxdgwJk$H_" role="2Oq$k0">
                  <ref role="3cqZAo" node="4WxdgwJk$GR" resolve="editor" />
                </node>
                <node concept="liA8E" id="4WxdgwJk$J2" role="2OqNvi">
                  <ref role="37wK5l" to="exr9:~EditorComponent.findCellWithId(org.jetbrains.mps.openapi.model.SNode,java.lang.String)" resolve="findCellWithId" />
                  <node concept="2OqwBi" id="4WxdgwJk$K1" role="37wK5m">
                    <node concept="37vLTw" id="4WxdgwJk$Jv" role="2Oq$k0">
                      <ref role="3cqZAo" node="4WxdgwJk$GR" resolve="editor" />
                    </node>
                    <node concept="liA8E" id="4WxdgwJk$K2" role="2OqNvi">
                      <ref role="37wK5l" to="exr9:~EditorComponent.getEditedNode()" resolve="getEditedNode" />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="4WxdgwJk$J4" role="37wK5m">
                    <property role="Xl_RC" value="folded_statements" />
                  </node>
                </node>
              </node>
              <node concept="3uibUv" id="4WxdgwJk$Hf" role="10QFUM">
                <ref role="3uigEE" to="g51k:~EditorCell_Label" resolve="EditorCell_Label" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4WxdgwJk$Hg" role="3cqZAp">
          <node concept="3cpWs3" id="4WxdgwJk$Hh" role="3cqZAk">
            <node concept="Xl_RD" id="4WxdgwJk$Hi" role="3uHU7B">
              <property role="Xl_RC" value="folded:" />
            </node>
            <node concept="2OqwBi" id="4WxdgwJk$Jl" role="3uHU7w">
              <node concept="37vLTw" id="4WxdgwJk$HG" role="2Oq$k0">
                <ref role="3cqZAo" node="4WxdgwJk$H8" resolve="summary" />
              </node>
              <node concept="liA8E" id="4WxdgwJk$Jm" role="2OqNvi">
                <ref role="37wK5l" to="g51k:~EditorCell_Label.getText()" resolve="getText" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4WxdgwJk$Hk" role="1B3o_S" />
      <node concept="3uibUv" id="4WxdgwJk$Hl" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="2YIFZL" id="3$fueB0rEzc" role="jymVt">
      <property role="TrG5h" value="paired" />
      <node concept="37vLTG" id="3$fueB0rEzd" role="3clF46">
        <property role="TrG5h" value="editor" />
        <node concept="3uibUv" id="3$fueB0rEze" role="1tU5fm">
          <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
        </node>
      </node>
      <node concept="3clFbS" id="3$fueB0rEzf" role="3clF47">
        <node concept="3cpWs8" id="3$fueB0rEzh" role="3cqZAp">
          <node concept="3cpWsn" id="3$fueB0rEzg" role="3cpWs9">
            <property role="TrG5h" value="owner" />
            <node concept="3uibUv" id="3$fueB0rEzi" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
            <node concept="2OqwBi" id="3$fueB0rECi" role="33vP2m">
              <node concept="2OqwBi" id="3$fueB0rEA2" role="2Oq$k0">
                <node concept="37vLTw" id="3$fueB0rE$p" role="2Oq$k0">
                  <ref role="3cqZAo" node="3$fueB0rEzd" resolve="editor" />
                </node>
                <node concept="liA8E" id="3$fueB0rEA3" role="2OqNvi">
                  <ref role="37wK5l" to="exr9:~EditorComponent.getSelectedCell()" resolve="getSelectedCell" />
                </node>
              </node>
              <node concept="liA8E" id="3$fueB0rECj" role="2OqNvi">
                <ref role="37wK5l" to="f4zo:~EditorCell.getSNode()" resolve="getSNode" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3$fueB0rEzm" role="3cqZAp">
          <node concept="3cpWsn" id="3$fueB0rEzl" role="3cpWs9">
            <property role="TrG5h" value="opening" />
            <node concept="3uibUv" id="3$fueB0rEzn" role="1tU5fm">
              <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
            </node>
            <node concept="2OqwBi" id="3$fueB0rEAt" role="33vP2m">
              <node concept="37vLTw" id="3$fueB0rE$u" role="2Oq$k0">
                <ref role="3cqZAo" node="3$fueB0rEzd" resolve="editor" />
              </node>
              <node concept="liA8E" id="3$fueB0rEAu" role="2OqNvi">
                <ref role="37wK5l" to="exr9:~EditorComponent.findCellWithId(org.jetbrains.mps.openapi.model.SNode,java.lang.String)" resolve="findCellWithId" />
                <node concept="37vLTw" id="3$fueB0rEAv" role="37wK5m">
                  <ref role="3cqZAo" node="3$fueB0rEzg" resolve="owner" />
                </node>
                <node concept="Xl_RD" id="3$fueB0rEAw" role="37wK5m">
                  <property role="Xl_RC" value="opening_statements" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3$fueB0rEzs" role="3cqZAp">
          <node concept="3cpWsn" id="3$fueB0rEzr" role="3cpWs9">
            <property role="TrG5h" value="closing" />
            <node concept="3uibUv" id="3$fueB0rEzt" role="1tU5fm">
              <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
            </node>
            <node concept="2OqwBi" id="3$fueB0rEAU" role="33vP2m">
              <node concept="37vLTw" id="3$fueB0rE$_" role="2Oq$k0">
                <ref role="3cqZAo" node="3$fueB0rEzd" resolve="editor" />
              </node>
              <node concept="liA8E" id="3$fueB0rEAV" role="2OqNvi">
                <ref role="37wK5l" to="exr9:~EditorComponent.findCellWithId(org.jetbrains.mps.openapi.model.SNode,java.lang.String)" resolve="findCellWithId" />
                <node concept="37vLTw" id="3$fueB0rEAW" role="37wK5m">
                  <ref role="3cqZAo" node="3$fueB0rEzg" resolve="owner" />
                </node>
                <node concept="Xl_RD" id="3$fueB0rEAX" role="37wK5m">
                  <property role="Xl_RC" value="closing_statements" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3$fueB0rEzx" role="3cqZAp">
          <node concept="1Wc70l" id="3$fueB0rEzy" role="3cqZAk">
            <node concept="2OqwBi" id="3$fueB0rE$R" role="3uHU7B">
              <node concept="Xl_RD" id="3$fueB0rEz$" role="2Oq$k0">
                <property role="Xl_RC" value="list_statements" />
              </node>
              <node concept="liA8E" id="3$fueB0rE$S" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                <node concept="2OqwBi" id="3$fueB0rEDY" role="37wK5m">
                  <node concept="2OqwBi" id="3$fueB0rECA" role="2Oq$k0">
                    <node concept="37vLTw" id="3$fueB0rEB9" role="2Oq$k0">
                      <ref role="3cqZAo" node="3$fueB0rEzl" resolve="opening" />
                    </node>
                    <node concept="liA8E" id="3$fueB0rECB" role="2OqNvi">
                      <ref role="37wK5l" to="f4zo:~EditorCell.getStyle()" resolve="getStyle" />
                    </node>
                  </node>
                  <node concept="liA8E" id="3$fueB0rEDZ" role="2OqNvi">
                    <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute)" resolve="get" />
                    <node concept="10M0yZ" id="3$fueB0rEE0" role="37wK5m">
                      <ref role="1PxDUh" to="5ueo:~StyleAttributes" resolve="StyleAttributes" />
                      <ref role="3cqZAo" to="5ueo:~StyleAttributes.MATCHING_LABEL" resolve="MATCHING_LABEL" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="3$fueB0rE_a" role="3uHU7w">
              <node concept="Xl_RD" id="3$fueB0rEzD" role="2Oq$k0">
                <property role="Xl_RC" value="list_statements" />
              </node>
              <node concept="liA8E" id="3$fueB0rE_b" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                <node concept="2OqwBi" id="3$fueB0rEF4" role="37wK5m">
                  <node concept="2OqwBi" id="3$fueB0rECU" role="2Oq$k0">
                    <node concept="37vLTw" id="3$fueB0rEBq" role="2Oq$k0">
                      <ref role="3cqZAo" node="3$fueB0rEzr" resolve="closing" />
                    </node>
                    <node concept="liA8E" id="3$fueB0rECV" role="2OqNvi">
                      <ref role="37wK5l" to="f4zo:~EditorCell.getStyle()" resolve="getStyle" />
                    </node>
                  </node>
                  <node concept="liA8E" id="3$fueB0rEF5" role="2OqNvi">
                    <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute)" resolve="get" />
                    <node concept="10M0yZ" id="3$fueB0rEF6" role="37wK5m">
                      <ref role="1PxDUh" to="5ueo:~StyleAttributes" resolve="StyleAttributes" />
                      <ref role="3cqZAo" to="5ueo:~StyleAttributes.MATCHING_LABEL" resolve="MATCHING_LABEL" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3$fueB0rEzH" role="1B3o_S" />
      <node concept="10P_77" id="3$fueB0rEzI" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="3$fueB0rEzJ" role="jymVt">
      <property role="TrG5h" value="triviaValidation" />
      <node concept="37vLTG" id="3$fueB0rEzK" role="3clF46">
        <property role="TrG5h" value="owner" />
        <node concept="3uibUv" id="3$fueB0rEzL" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="3clFbS" id="3$fueB0rEzM" role="3clF47">
        <node concept="3J1_TO" id="3$fueB0rE$9" role="3cqZAp">
          <node concept="3uVAMA" id="3$fueB0rE$a" role="1zxBo5">
            <node concept="3clFbS" id="3$fueB0rE$2" role="1zc67A">
              <node concept="3cpWs6" id="3$fueB0rE$3" role="3cqZAp">
                <node concept="2OqwBi" id="3$fueB0rEBI" role="3cqZAk">
                  <node concept="37vLTw" id="3$fueB0rE_i" role="2Oq$k0">
                    <ref role="3cqZAo" node="3$fueB0rEzV" resolve="ex" />
                  </node>
                  <node concept="liA8E" id="3$fueB0rEBJ" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Throwable.getMessage()" resolve="getMessage" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="XOnhg" id="3$fueB0rEzV" role="1zc67B">
              <property role="TrG5h" value="ex" />
              <node concept="nSUau" id="3$fueB0rEzX" role="1tU5fm">
                <node concept="3uibUv" id="3$fueB0rEzW" role="nSUat">
                  <ref role="3uigEE" to="wyt6:~IllegalArgumentException" resolve="IllegalArgumentException" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3uVAMA" id="3$fueB0rE$b" role="1zxBo5">
            <node concept="3clFbS" id="3$fueB0rE$6" role="1zc67A">
              <node concept="3cpWs6" id="3$fueB0rE$7" role="3cqZAp">
                <node concept="2OqwBi" id="3$fueB0rEBY" role="3cqZAk">
                  <node concept="37vLTw" id="3$fueB0rE_n" role="2Oq$k0">
                    <ref role="3cqZAo" node="3$fueB0rEzY" resolve="ex" />
                  </node>
                  <node concept="liA8E" id="3$fueB0rEBZ" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Throwable.getMessage()" resolve="getMessage" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="XOnhg" id="3$fueB0rEzY" role="1zc67B">
              <property role="TrG5h" value="ex" />
              <node concept="nSUau" id="3$fueB0rE$0" role="1tU5fm">
                <node concept="3uibUv" id="3$fueB0rEzZ" role="nSUat">
                  <ref role="3uigEE" to="wyt6:~IllegalStateException" resolve="IllegalStateException" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="3$fueB0rEzO" role="1zxBo7">
            <node concept="3clFbF" id="3$fueB0rEzP" role="3cqZAp">
              <node concept="2YIFZM" id="3$fueB0rE_s" role="3clFbG">
                <ref role="1Pybhc" to="9toz:~TargetTrivia" resolve="TargetTrivia" />
                <ref role="37wK5l" to="9toz:~TargetTrivia.validate(org.jetbrains.mps.openapi.model.SNode,java.lang.String)" resolve="validate" />
                <node concept="37vLTw" id="3$fueB0rE_t" role="37wK5m">
                  <ref role="3cqZAo" node="3$fueB0rEzK" resolve="owner" />
                </node>
                <node concept="Xl_RD" id="3$fueB0rE_u" role="37wK5m">
                  <property role="Xl_RC" value="statements" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="3$fueB0rEzT" role="3cqZAp">
              <node concept="Xl_RD" id="3$fueB0rEzU" role="3cqZAk">
                <property role="Xl_RC" value="accepted" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3$fueB0rE$c" role="1B3o_S" />
      <node concept="3uibUv" id="3$fueB0rE$d" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="39m6c$Kgtdp">
    <property role="TrG5h" value="FlagCompletion" />
    <property role="3YCmrE" value="Complete the generated keyword through the registered MPS completion action" />
    <node concept="3clFbS" id="39m6c$Kgtdq" role="LjaKd">
      <node concept="2HxZob" id="39m6c$KgtdD" role="3cqZAp">
        <node concept="3iKlGA" id="39m6c$KgtdE" role="3iKnsn">
          <property role="3iKnse" value="jetbrains.mps.ide.editor.actions.Complete_Action" />
        </node>
      </node>
      <node concept="yd1bK" id="39m6c$KgtdF" role="3cqZAp">
        <node concept="pLAjd" id="39m6c$KgtdG" role="yd6KS">
          <property role="pLAjf" value="VK_ENTER" />
        </node>
      </node>
      <node concept="3vlDli" id="39m6c$Kgtds" role="3cqZAp">
        <node concept="Xl_RD" id="39m6c$Kgtdt" role="3tpDZB">
          <property role="Xl_RC" value="publicitem" />
        </node>
        <node concept="2YIFZM" id="39m6c$Kgtdu" role="3tpDZA">
          <ref role="1Pybhc" node="39m6c$Kgt2e" resolve="InteractionAssertions" />
          <ref role="37wK5l" node="39m6c$Kgt2k" resolve="export" />
          <node concept="1jxXqW" id="39m6c$Kgtdv" role="37wK5m" />
          <node concept="2OqwBi" id="39m6c$Kgtdw" role="37wK5m">
            <node concept="369mXd" id="39m6c$Kgtdx" role="2Oq$k0" />
            <node concept="liA8E" id="39m6c$Kgtdy" role="2OqNvi">
              <ref role="37wK5l" to="exr9:~EditorComponent.getEditedNode()" resolve="getEditedNode" />
            </node>
          </node>
        </node>
        <node concept="3_1$Yv" id="39m6c$KjKrW" role="3_9lra">
          <node concept="Xl_RD" id="39m6c$KjKrX" role="3_1BAH">
            <property role="Xl_RC" value="FlagCompletion: expected exact exported syntax publicitem" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="39m6c$Kgtdz" role="25YQCW">
      <node concept="253Ayn" id="39m6c$Kgtd$" role="1qenE9">
        <property role="13FgS_" value="item" />
        <node concept="LIFWc" id="39m6c$Kgtd_" role="lGtFl">
          <property role="LIFWd" value="flag_public" />
          <property role="LIFWa" value="0" />
          <property role="p6zMq" value="0" />
          <property role="p6zMs" value="0" />
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="39m6c$KgtdA" role="25YQFr">
      <node concept="253Ayn" id="39m6c$KgtdB" role="1qenE9">
        <property role="1KDGnK" value="true" />
        <property role="13FgS_" value="item" />
        <node concept="LIFWc" id="39m6c$KgtdC" role="lGtFl">
          <property role="LIFWd" value="flag_public" />
          <property role="LIFWa" value="6" />
          <property role="p6zMq" value="6" />
          <property role="p6zMs" value="6" />
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="39m6c$KgtdH">
    <property role="TrG5h" value="FlagContextRemoval" />
    <property role="3YCmrE" value="Choose contextual remove completion; clear only the flag and restore its empty-cell caret" />
    <node concept="3clFbS" id="39m6c$KgtdI" role="LjaKd">
      <node concept="2HxZob" id="39m6c$Kgte8" role="3cqZAp">
        <node concept="3iKlGA" id="39m6c$Kgte9" role="3iKnsn">
          <property role="3iKnse" value="jetbrains.mps.ide.editor.actions.Complete_Action" />
        </node>
      </node>
      <node concept="yd1bK" id="39m6c$Kgteb" role="3cqZAp">
        <node concept="pLAjd" id="39m6c$Kgtea" role="yd6KS">
          <property role="pLAjf" value="VK_DOWN" />
        </node>
      </node>
      <node concept="yd1bK" id="39m6c$Kgted" role="3cqZAp">
        <node concept="pLAjd" id="39m6c$Kgtec" role="yd6KS">
          <property role="pLAjf" value="VK_ENTER" />
        </node>
      </node>
      <node concept="3vlDli" id="39m6c$KgtdV" role="3cqZAp">
        <node concept="Xl_RD" id="39m6c$KgtdW" role="3tpDZB">
          <property role="Xl_RC" value="item" />
        </node>
        <node concept="2YIFZM" id="39m6c$KgtdX" role="3tpDZA">
          <ref role="1Pybhc" node="39m6c$Kgt2e" resolve="InteractionAssertions" />
          <ref role="37wK5l" node="39m6c$Kgt2k" resolve="export" />
          <node concept="1jxXqW" id="39m6c$KgtdY" role="37wK5m" />
          <node concept="2OqwBi" id="39m6c$KgtdZ" role="37wK5m">
            <node concept="369mXd" id="39m6c$Kgte0" role="2Oq$k0" />
            <node concept="liA8E" id="39m6c$Kgte1" role="2OqNvi">
              <ref role="37wK5l" to="exr9:~EditorComponent.getEditedNode()" resolve="getEditedNode" />
            </node>
          </node>
        </node>
        <node concept="3_1$Yv" id="39m6c$KjKrY" role="3_9lra">
          <node concept="Xl_RD" id="39m6c$KjKrZ" role="3_1BAH">
            <property role="Xl_RC" value="FlagContextRemoval: expected exact exported syntax item" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="39m6c$Kgte2" role="25YQCW">
      <node concept="253Ayn" id="39m6c$Kgte3" role="1qenE9">
        <property role="1KDGnK" value="true" />
        <property role="13FgS_" value="item" />
        <node concept="LIFWc" id="39m6c$Kgte4" role="lGtFl">
          <property role="LIFWd" value="flag_public" />
          <property role="LIFWa" value="6" />
          <property role="p6zMq" value="6" />
          <property role="p6zMs" value="6" />
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="39m6c$Kgte5" role="25YQFr">
      <node concept="253Ayn" id="39m6c$Kgte6" role="1qenE9">
        <property role="13FgS_" value="item" />
        <node concept="LIFWc" id="39m6c$Kgte7" role="lGtFl">
          <property role="LIFWd" value="flag_public" />
          <property role="LIFWa" value="0" />
          <property role="p6zMq" value="0" />
          <property role="p6zMs" value="0" />
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="54cyhNXu0PT">
    <property role="TrG5h" value="BlockEmptyListTyping" />
    <property role="3YCmrE" value="Empty zero-or-more block list creates its first semantic element and exports delimiters" />
    <node concept="3clFbS" id="54cyhNXu0PU" role="LjaKd">
      <node concept="2HxZob" id="54cyhNXCrRn" role="3cqZAp">
        <node concept="3iKlGA" id="54cyhNXCrRo" role="3iKnsn">
          <property role="3iKnse" value="jetbrains.mps.ide.editor.actions.Complete_Action" />
        </node>
      </node>
      <node concept="yd1bK" id="54cyhNXCrRp" role="3cqZAp">
        <node concept="pLAjd" id="54cyhNXCrRq" role="yd6KS">
          <property role="pLAjf" value="VK_ENTER" />
        </node>
      </node>
      <node concept="3vlDli" id="54cyhNXD8X4" role="3cqZAp">
        <node concept="Xl_RD" id="54cyhNXD8X5" role="3tpDZB">
          <property role="Xl_RC" value="begin&#10;    skipend" />
        </node>
        <node concept="2YIFZM" id="54cyhNXD8X6" role="3tpDZA">
          <ref role="1Pybhc" node="39m6c$Kgt2e" resolve="InteractionAssertions" />
          <ref role="37wK5l" node="54cyhNXDh5E" resolve="exportLf" />
          <node concept="1jxXqW" id="54cyhNXD8X7" role="37wK5m" />
          <node concept="2OqwBi" id="54cyhNXD8X8" role="37wK5m">
            <node concept="369mXd" id="54cyhNXD8X9" role="2Oq$k0" />
            <node concept="liA8E" id="54cyhNXD8Xa" role="2OqNvi">
              <ref role="37wK5l" to="exr9:~EditorComponent.getEditedNode()" resolve="getEditedNode" />
            </node>
          </node>
        </node>
        <node concept="3_1$Yv" id="54cyhNXD8Xb" role="3_9lra">
          <node concept="Xl_RD" id="54cyhNXD8Xc" role="3_1BAH">
            <property role="Xl_RC" value="BlockEmptyListTyping: expected first statement between block delimiters" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="54cyhNXu0Q5" role="25YQCW">
      <node concept="hhWPR" id="54cyhNXu0Q6" role="1qenE9">
        <node concept="LIFWc" id="54cyhNXu0Q7" role="lGtFl">
          <property role="LIFWd" value="empty_statements" />
          <property role="LIFWa" value="0" />
          <property role="p6zMq" value="0" />
          <property role="p6zMs" value="0" />
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="54cyhNXu0Q8" role="25YQFr">
      <node concept="hhWPR" id="54cyhNXu0Q9" role="1qenE9">
        <node concept="2um2pr" id="54cyhNXu0Qa" role="336h3k" />
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="1pFy1Df1Q9y">
    <property role="TrG5h" value="BlockSeparatorInsertion" />
    <property role="3YCmrE" value="Separator followed by Enter inserts a second semantic statement in the block list" />
    <node concept="3clFbS" id="1pFy1Df1Q9z" role="LjaKd">
      <node concept="2HxZob" id="1pFy1Df1Q9$" role="3cqZAp">
        <node concept="3iKlGA" id="1pFy1Df1Q9_" role="3iKnsn">
          <property role="3iKnse" value="jetbrains.mps.ide.editor.actions.Complete_Action" />
        </node>
      </node>
      <node concept="yd1bK" id="1pFy1Df1Q9A" role="3cqZAp">
        <node concept="pLAjd" id="1pFy1Df1Q9B" role="yd6KS">
          <property role="pLAjf" value="VK_ENTER" />
        </node>
      </node>
      <node concept="2TK7Tu" id="1pFy1Df1Q9R" role="3cqZAp">
        <property role="2TTd_B" value=";" />
      </node>
      <node concept="2HxZob" id="1pFy1Df1Q9S" role="3cqZAp">
        <node concept="3iKlGA" id="1pFy1Df1Q9T" role="3iKnsn">
          <property role="3iKnse" value="jetbrains.mps.ide.editor.actions.Complete_Action" />
        </node>
      </node>
      <node concept="yd1bK" id="1pFy1Df1Q9U" role="3cqZAp">
        <node concept="pLAjd" id="1pFy1Df1Q9V" role="yd6KS">
          <property role="pLAjf" value="VK_ENTER" />
        </node>
      </node>
      <node concept="3vlDli" id="1pFy1Df1Q9C" role="3cqZAp">
        <node concept="Xl_RD" id="1pFy1Df1Q9D" role="3tpDZB">
          <property role="Xl_RC" value="begin&#10;    skip;skipend" />
        </node>
        <node concept="2YIFZM" id="1pFy1Df1Q9E" role="3tpDZA">
          <ref role="1Pybhc" node="39m6c$Kgt2e" resolve="InteractionAssertions" />
          <ref role="37wK5l" node="54cyhNXDh5E" resolve="exportLf" />
          <node concept="1jxXqW" id="1pFy1Df1Q9F" role="37wK5m" />
          <node concept="2OqwBi" id="1pFy1Df1Q9G" role="37wK5m">
            <node concept="369mXd" id="1pFy1Df1Q9H" role="2Oq$k0" />
            <node concept="liA8E" id="1pFy1Df1Q9I" role="2OqNvi">
              <ref role="37wK5l" to="exr9:~EditorComponent.getEditedNode()" resolve="getEditedNode" />
            </node>
          </node>
        </node>
        <node concept="3_1$Yv" id="1pFy1Df1Q9J" role="3_9lra">
          <node concept="Xl_RD" id="1pFy1Df1Q9K" role="3_1BAH">
            <property role="Xl_RC" value="BlockSeparatorInsertion: expected two statements between block delimiters" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="1pFy1Df1Q9L" role="25YQCW">
      <node concept="hhWPR" id="1pFy1Df1Q9M" role="1qenE9">
        <node concept="LIFWc" id="1pFy1Df1Q9N" role="lGtFl">
          <property role="LIFWd" value="empty_statements" />
          <property role="LIFWa" value="0" />
          <property role="p6zMq" value="0" />
          <property role="p6zMs" value="0" />
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="1pFy1Df1Q9O" role="25YQFr">
      <node concept="hhWPR" id="1pFy1Df1Q9P" role="1qenE9">
        <node concept="2um2pr" id="1pFy1Df1Q9Q" role="336h3k" />
        <node concept="2um2pr" id="1pFy1Df1Q9W" role="336h3k">
          <node concept="LIFWc" id="7p_iyh$9mHE" role="lGtFl">
            <property role="LIFWd" value="Constant_7h2wce_a0" />
            <property role="LIFWa" value="4" />
            <property role="p6zMq" value="4" />
            <property role="p6zMs" value="4" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="7p_iyh$9mHF">
    <property role="TrG5h" value="BlockLastStatementRemoval" />
    <property role="3YCmrE" value="Delete removes the final optional block statement and restores the empty-list placeholder" />
    <node concept="3clFbS" id="7p_iyh$9mHG" role="LjaKd">
      <node concept="2HxZob" id="7p_iyh$9mI7" role="3cqZAp">
        <node concept="3iKlGA" id="7p_iyh$9mI8" role="3iKnsn">
          <property role="3iKnse" value="jetbrains.mps.ide.editor.actions.Delete_Action" />
        </node>
      </node>
      <node concept="3vlDli" id="7p_iyh$9mHQ" role="3cqZAp">
        <node concept="Xl_RD" id="7p_iyh$9mHR" role="3tpDZB">
          <property role="Xl_RC" value="begin&#10;    end" />
        </node>
        <node concept="2YIFZM" id="7p_iyh$9mHS" role="3tpDZA">
          <ref role="1Pybhc" node="39m6c$Kgt2e" resolve="InteractionAssertions" />
          <ref role="37wK5l" node="54cyhNXDh5E" resolve="exportLf" />
          <node concept="1jxXqW" id="7p_iyh$9mHT" role="37wK5m" />
          <node concept="2OqwBi" id="7p_iyh$9mHU" role="37wK5m">
            <node concept="369mXd" id="7p_iyh$9mHV" role="2Oq$k0" />
            <node concept="liA8E" id="7p_iyh$9mHW" role="2OqNvi">
              <ref role="37wK5l" to="exr9:~EditorComponent.getEditedNode()" resolve="getEditedNode" />
            </node>
          </node>
        </node>
        <node concept="3_1$Yv" id="7p_iyh$9mHX" role="3_9lra">
          <node concept="Xl_RD" id="7p_iyh$9mHY" role="3_1BAH">
            <property role="Xl_RC" value="BlockLastStatementRemoval: expected the native Delete action to remove the final optional statement" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="7p_iyh$9mHZ" role="25YQCW">
      <node concept="hhWPR" id="7p_iyh$9mI0" role="1qenE9">
        <node concept="2um2pr" id="7p_iyh$9mI9" role="336h3k">
          <node concept="LIFWc" id="7p_iyh$9mIa" role="lGtFl">
            <property role="LIFWd" value="Constant_7h2wce_a0" />
            <property role="LIFWa" value="4" />
            <property role="p6zMq" value="4" />
            <property role="p6zMs" value="4" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="7p_iyh$9mI2" role="25YQFr">
      <node concept="hhWPR" id="7p_iyh$9mI3" role="1qenE9">
        <node concept="LIFWc" id="7p_iyh$9mIb" role="lGtFl">
          <property role="LIFWd" value="empty_statements" />
          <property role="LIFWa" value="0" />
          <property role="p6zMq" value="0" />
          <property role="p6zMs" value="0" />
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="7p_iyh$9mIc">
    <property role="TrG5h" value="BlockLastStatementRemovalUndo" />
    <property role="3YCmrE" value="Last block statement removal is restored by one Undo, including selection" />
    <node concept="3clFbS" id="7p_iyh$9mId" role="LjaKd">
      <node concept="2HxZob" id="7p_iyh$9mIC" role="3cqZAp">
        <node concept="3iKlGA" id="7p_iyh$9mID" role="3iKnsn">
          <property role="3iKnse" value="jetbrains.mps.ide.editor.actions.Backspace_Action" />
        </node>
      </node>
      <node concept="2HxZob" id="7p_iyh$9mIE" role="3cqZAp">
        <node concept="3iKlGA" id="7p_iyh$9mIF" role="3iKnsn">
          <property role="3iKnse" value="$Undo" />
        </node>
      </node>
      <node concept="3vlDli" id="7p_iyh$9mIn" role="3cqZAp">
        <node concept="Xl_RD" id="7p_iyh$9mIo" role="3tpDZB">
          <property role="Xl_RC" value="begin&#10;    skipend" />
        </node>
        <node concept="2YIFZM" id="7p_iyh$9mIp" role="3tpDZA">
          <ref role="1Pybhc" node="39m6c$Kgt2e" resolve="InteractionAssertions" />
          <ref role="37wK5l" node="54cyhNXDh5E" resolve="exportLf" />
          <node concept="1jxXqW" id="7p_iyh$9mIq" role="37wK5m" />
          <node concept="2OqwBi" id="7p_iyh$9mIr" role="37wK5m">
            <node concept="369mXd" id="7p_iyh$9mIs" role="2Oq$k0" />
            <node concept="liA8E" id="7p_iyh$9mIt" role="2OqNvi">
              <ref role="37wK5l" to="exr9:~EditorComponent.getEditedNode()" resolve="getEditedNode" />
            </node>
          </node>
        </node>
        <node concept="3_1$Yv" id="7p_iyh$9mIu" role="3_9lra">
          <node concept="Xl_RD" id="7p_iyh$9mIv" role="3_1BAH">
            <property role="Xl_RC" value="BlockLastStatementRemovalUndo: expected one statement after undo" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="7p_iyh$9mIw" role="25YQCW">
      <node concept="hhWPR" id="7p_iyh$9mIx" role="1qenE9">
        <node concept="2um2pr" id="7p_iyh$9mIG" role="336h3k">
          <node concept="LIFWc" id="7p_iyh$9mIH" role="lGtFl">
            <property role="LIFWd" value="Constant_7h2wce_a0" />
            <property role="LIFWa" value="4" />
            <property role="p6zMq" value="4" />
            <property role="p6zMs" value="4" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="7p_iyh$9mIz" role="25YQFr">
      <node concept="hhWPR" id="7p_iyh$9mI$" role="1qenE9">
        <node concept="2um2pr" id="7p_iyh$9mII" role="336h3k">
          <node concept="LIFWc" id="7p_iyh$9mIJ" role="lGtFl">
            <property role="LIFWd" value="Constant_7h2wce_a0" />
            <property role="LIFWa" value="4" />
            <property role="p6zMq" value="4" />
            <property role="p6zMs" value="4" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="1Z4N_lqNz5i">
    <property role="TrG5h" value="BlockNestedEmptyListTyping" />
    <property role="3YCmrE" value="Enter in a nested empty block creates a statement in that block only" />
    <node concept="3clFbS" id="1Z4N_lqNz5j" role="LjaKd">
      <node concept="2HxZob" id="1Z4N_lqNz5k" role="3cqZAp">
        <node concept="3iKlGA" id="1Z4N_lqNz5l" role="3iKnsn">
          <property role="3iKnse" value="jetbrains.mps.ide.editor.actions.Complete_Action" />
        </node>
      </node>
      <node concept="yd1bK" id="1Z4N_lqNz5m" role="3cqZAp">
        <node concept="pLAjd" id="1Z4N_lqNz5n" role="yd6KS">
          <property role="pLAjf" value="VK_ENTER" />
        </node>
      </node>
      <node concept="3vlDli" id="1Z4N_lqNz5o" role="3cqZAp">
        <node concept="Xl_RD" id="1Z4N_lqNz5p" role="3tpDZB">
          <property role="Xl_RC" value="begin&#10;    endbegin&#10;      skipend" />
        </node>
        <node concept="2YIFZM" id="1Z4N_lqNz5q" role="3tpDZA">
          <ref role="1Pybhc" node="39m6c$Kgt2e" resolve="InteractionAssertions" />
          <ref role="37wK5l" node="54cyhNXDh5E" resolve="exportLf" />
          <node concept="1jxXqW" id="1Z4N_lqNz5r" role="37wK5m" />
          <node concept="2OqwBi" id="1Z4N_lqNz5s" role="37wK5m">
            <node concept="369mXd" id="1Z4N_lqNz5t" role="2Oq$k0" />
            <node concept="liA8E" id="1Z4N_lqNz5u" role="2OqNvi">
              <ref role="37wK5l" to="exr9:~EditorComponent.getEditedNode()" resolve="getEditedNode" />
            </node>
          </node>
        </node>
        <node concept="3_1$Yv" id="1Z4N_lqNz5v" role="3_9lra">
          <node concept="Xl_RD" id="1Z4N_lqNz5w" role="3_1BAH">
            <property role="Xl_RC" value="BlockNestedEmptyListTyping: expected insertion inside the nested block" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="1Z4N_lqNz5x" role="25YQCW">
      <node concept="hhWPR" id="1Z4N_lqNz5y" role="1qenE9">
        <node concept="hhWPR" id="1Z4N_lqNz5B" role="2kTR_Y">
          <node concept="LIFWc" id="1Z4N_lqNz5z" role="lGtFl">
            <property role="LIFWd" value="empty_statements" />
            <property role="LIFWa" value="0" />
            <property role="p6zMq" value="0" />
            <property role="p6zMs" value="0" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="1Z4N_lqNz5$" role="25YQFr">
      <node concept="hhWPR" id="1Z4N_lqNz5_" role="1qenE9">
        <node concept="hhWPR" id="1Z4N_lqNz5C" role="2kTR_Y">
          <node concept="2um2pr" id="1Z4N_lqNz5D" role="336h3k">
            <node concept="LIFWc" id="1Z4N_lqNzcU" role="lGtFl">
              <property role="LIFWd" value="Constant_7h2wce_a0" />
              <property role="LIFWa" value="4" />
              <property role="p6zMq" value="4" />
              <property role="p6zMs" value="4" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="1Z4N_lqNDiR">
    <property role="TrG5h" value="BlockEndBoundaryInsertion" />
    <property role="3YCmrE" value="Enter at the last statement boundary inserts another statement without creating the optional child Block" />
    <node concept="3clFbS" id="1Z4N_lqNDiS" role="LjaKd">
      <node concept="2HxZob" id="1Z4N_lqNDiV" role="3cqZAp">
        <node concept="3iKlGA" id="1Z4N_lqNDiW" role="3iKnsn">
          <property role="3iKnse" value="jetbrains.mps.ide.editor.actions.Insert_Action" />
        </node>
      </node>
      <node concept="3vlDli" id="1Z4N_lqNDj2" role="3cqZAp">
        <node concept="Xl_RD" id="1Z4N_lqNDj3" role="3tpDZB">
          <property role="Xl_RC" value="begin&#10;    skip;skipend" />
        </node>
        <node concept="2YIFZM" id="1Z4N_lqNDj4" role="3tpDZA">
          <ref role="1Pybhc" node="39m6c$Kgt2e" resolve="InteractionAssertions" />
          <ref role="37wK5l" node="54cyhNXDh5E" resolve="exportLf" />
          <node concept="1jxXqW" id="1Z4N_lqNDj5" role="37wK5m" />
          <node concept="2OqwBi" id="1Z4N_lqNDj6" role="37wK5m">
            <node concept="369mXd" id="1Z4N_lqNDj7" role="2Oq$k0" />
            <node concept="liA8E" id="1Z4N_lqNDj8" role="2OqNvi">
              <ref role="37wK5l" to="exr9:~EditorComponent.getEditedNode()" resolve="getEditedNode" />
            </node>
          </node>
        </node>
        <node concept="3_1$Yv" id="1Z4N_lqNDj9" role="3_9lra">
          <node concept="Xl_RD" id="1Z4N_lqNDja" role="3_1BAH">
            <property role="Xl_RC" value="BlockEndBoundaryInsertion: expected a sibling statement and no optional child Block" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="1Z4N_lqNDjb" role="25YQCW">
      <node concept="hhWPR" id="1Z4N_lqNDjc" role="1qenE9">
        <node concept="2um2pr" id="1Z4N_lqNDjj" role="336h3k">
          <node concept="LIFWc" id="1Z4N_lqNDjk" role="lGtFl">
            <property role="LIFWd" value="Constant_7h2wce_a0" />
            <property role="LIFWa" value="4" />
            <property role="p6zMq" value="4" />
            <property role="p6zMs" value="4" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="1Z4N_lqNDje" role="25YQFr">
      <node concept="hhWPR" id="1Z4N_lqNDjf" role="1qenE9">
        <node concept="2um2pr" id="1Z4N_lqNDjg" role="336h3k" />
        <node concept="2um2pr" id="1Z4N_lqNDjh" role="336h3k">
          <node concept="LIFWc" id="1Z4N_lqNDji" role="lGtFl">
            <property role="LIFWd" value="Constant_7h2wce_a0" />
            <property role="LIFWa" value="4" />
            <property role="p6zMq" value="4" />
            <property role="p6zMs" value="4" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="3R$mY2PUvzl">
    <property role="TrG5h" value="StateMachineMatrixHint" />
    <property role="3YCmrE" value="Switch to the state/event editor hint, edit a state cell, export the shared AST and undo the edit" />
    <node concept="1qefOq" id="3R$mY2PUvzE" role="25YQCW">
      <node concept="2811m7" id="3R$mY2PUvzm" role="1qenE9">
        <property role="2811mb" value="Door" />
        <property role="TrG5h" value="Door" />
        <node concept="2811m8" id="3R$mY2PUvzn" role="2811mg">
          <property role="2811mc" value="open" />
        </node>
        <node concept="2811m8" id="3R$mY2PUvzo" role="2811mg">
          <property role="2811mc" value="close" />
        </node>
        <node concept="2811m9" id="3R$mY2PUvzp" role="2811mh">
          <property role="2811md" value="Closed" />
          <node concept="2811ma" id="3R$mY2PUvzq" role="2811mi">
            <property role="2811me" value="open" />
            <property role="2811mf" value="Open" />
          </node>
          <node concept="2811ma" id="3R$mY2PUvzr" role="2811mi">
            <property role="2811me" value="close" />
            <property role="2811mf" value="Closed" />
          </node>
          <node concept="LIFWc" id="3R$mY2PUvzv" role="lGtFl">
            <property role="LIFWd" value="property_identifier" />
            <property role="LIFWa" value="6" />
            <property role="p6zMq" value="6" />
            <property role="p6zMs" value="6" />
          </node>
        </node>
        <node concept="2811m9" id="3R$mY2PUvzs" role="2811mh">
          <property role="2811md" value="Open" />
          <node concept="2811ma" id="3R$mY2PUvzt" role="2811mi">
            <property role="2811me" value="open" />
            <property role="2811mf" value="Open" />
          </node>
          <node concept="2811ma" id="3R$mY2PUvzu" role="2811mi">
            <property role="2811me" value="close" />
            <property role="2811mf" value="Closed" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="3R$mY2PUvzF" role="25YQFr">
      <node concept="2811m7" id="3R$mY2PUvzw" role="1qenE9">
        <property role="2811mb" value="Door" />
        <property role="TrG5h" value="Door" />
        <node concept="2811m8" id="3R$mY2PUvzx" role="2811mg">
          <property role="2811mc" value="open" />
        </node>
        <node concept="2811m8" id="3R$mY2PUvzy" role="2811mg">
          <property role="2811mc" value="close" />
        </node>
        <node concept="2811m9" id="3R$mY2PUvzz" role="2811mh">
          <property role="2811md" value="Closed" />
          <node concept="2811ma" id="3R$mY2PUvz$" role="2811mi">
            <property role="2811me" value="open" />
            <property role="2811mf" value="Open" />
          </node>
          <node concept="2811ma" id="3R$mY2PUvz_" role="2811mi">
            <property role="2811me" value="close" />
            <property role="2811mf" value="Closed" />
          </node>
          <node concept="LIFWc" id="3R$mY2PUvzD" role="lGtFl">
            <property role="LIFWd" value="property_identifier" />
            <property role="LIFWa" value="6" />
            <property role="p6zMq" value="6" />
            <property role="p6zMs" value="6" />
          </node>
        </node>
        <node concept="2811m9" id="3R$mY2PUvzA" role="2811mh">
          <property role="2811md" value="Open" />
          <node concept="2811ma" id="3R$mY2PUvzB" role="2811mi">
            <property role="2811me" value="open" />
            <property role="2811mf" value="Open" />
          </node>
          <node concept="2811ma" id="3R$mY2PUvzC" role="2811mi">
            <property role="2811me" value="close" />
            <property role="2811mf" value="Closed" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="3R$mY2PUvzG" role="LjaKd">
      <node concept="3clFbF" id="3R$mY2PYsCw" role="3cqZAp">
        <node concept="2YIFZM" id="3R$mY2PYsCs" role="3clFbG">
          <ref role="37wK5l" node="3R$mY2Q3hFk" resolve="setMatrixHint" />
          <ref role="1Pybhc" node="39m6c$Kgt2e" resolve="InteractionAssertions" />
          <node concept="1jxXqW" id="3R$mY2PYsCt" role="37wK5m" />
          <node concept="369mXd" id="3R$mY2PYsCu" role="37wK5m" />
          <node concept="3clFbT" id="3R$mY2PYsCv" role="37wK5m">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="3vlDli" id="3R$mY2PUvzL" role="3cqZAp">
        <node concept="3clFbT" id="3R$mY2PUvzM" role="3tpDZB">
          <property role="3clFbU" value="true" />
        </node>
        <node concept="2YIFZM" id="3R$mY2PUvzN" role="3tpDZA">
          <ref role="37wK5l" node="3R$mY2PU9t3" resolve="matrixHintActive" />
          <ref role="1Pybhc" node="39m6c$Kgt2e" resolve="InteractionAssertions" />
          <node concept="369mXd" id="3R$mY2PUvzO" role="37wK5m" />
        </node>
        <node concept="3_1$Yv" id="3R$mY2PUvzP" role="3_9lra">
          <node concept="Xl_RD" id="3R$mY2PUvzQ" role="3_1BAH">
            <property role="Xl_RC" value="The active editor must be the state/event matrix" />
          </node>
        </node>
      </node>
      <node concept="2TK7Tu" id="3R$mY2PUvzR" role="3cqZAp">
        <property role="2TTd_B" value="X" />
      </node>
      <node concept="3vlDli" id="3R$mY2PUvzS" role="3cqZAp">
        <node concept="Xl_RD" id="3R$mY2PUvzT" role="3tpDZB">
          <property role="Xl_RC" value="machine Door&#10;events&#10;  event open, event close&#10;states&#10;  state ClosedX { on open -&gt; Open; on close -&gt; Closed }&#10;  state Open { on open -&gt; Open; on close -&gt; Closed }" />
        </node>
        <node concept="2YIFZM" id="3R$mY2PUvzU" role="3tpDZA">
          <ref role="1Pybhc" node="39m6c$Kgt2e" resolve="InteractionAssertions" />
          <ref role="37wK5l" node="54cyhNXDh5E" resolve="exportLf" />
          <node concept="1jxXqW" id="3R$mY2PUvzV" role="37wK5m" />
          <node concept="2OqwBi" id="3R$mY2PUvzW" role="37wK5m">
            <node concept="369mXd" id="3R$mY2PUvzX" role="2Oq$k0" />
            <node concept="liA8E" id="3R$mY2PUvzY" role="2OqNvi">
              <ref role="37wK5l" to="exr9:~EditorComponent.getEditedNode()" resolve="getEditedNode" />
            </node>
          </node>
        </node>
        <node concept="3_1$Yv" id="3R$mY2PUvzZ" role="3_9lra">
          <node concept="Xl_RD" id="3R$mY2PUv$0" role="3_1BAH">
            <property role="Xl_RC" value="The matrix edit must serialize through the shared TextGen mapping" />
          </node>
        </node>
      </node>
      <node concept="3clFbF" id="3R$mY2Q6JpO" role="3cqZAp">
        <node concept="2YIFZM" id="3R$mY2Q6JpS" role="3clFbG">
          <ref role="37wK5l" node="3R$mY2Q3hFk" resolve="setMatrixHint" />
          <ref role="1Pybhc" node="39m6c$Kgt2e" resolve="InteractionAssertions" />
          <node concept="1jxXqW" id="3R$mY2Q6JpP" role="37wK5m" />
          <node concept="369mXd" id="3R$mY2Q6JpQ" role="37wK5m" />
          <node concept="3clFbT" id="3R$mY2Q6JpR" role="37wK5m" />
        </node>
      </node>
      <node concept="3vlDli" id="3R$mY2Q6JpW" role="3cqZAp">
        <node concept="3clFbT" id="3R$mY2Q6JpV" role="3tpDZB" />
        <node concept="2YIFZM" id="3R$mY2Q6JpU" role="3tpDZA">
          <ref role="37wK5l" node="3R$mY2PU9t3" resolve="matrixHintActive" />
          <ref role="1Pybhc" node="39m6c$Kgt2e" resolve="InteractionAssertions" />
          <node concept="369mXd" id="3R$mY2Q6JpT" role="37wK5m" />
        </node>
        <node concept="3_1$Yv" id="3R$mY2Q6JpX" role="3_9lra">
          <node concept="Xl_RD" id="3R$mY2Q6JpY" role="3_1BAH">
            <property role="Xl_RC" value="Switching to the textual view must disable the matrix hint" />
          </node>
        </node>
      </node>
      <node concept="3vlDli" id="3R$mY2Q6Jq3" role="3cqZAp">
        <node concept="3clFbT" id="3R$mY2Q6Jq2" role="3tpDZB">
          <property role="3clFbU" value="true" />
        </node>
        <node concept="2YIFZM" id="3R$mY2Q6Jq1" role="3tpDZA">
          <ref role="37wK5l" node="3R$mY2Q6JnB" resolve="editorTextContains" />
          <ref role="1Pybhc" node="39m6c$Kgt2e" resolve="InteractionAssertions" />
          <node concept="369mXd" id="3R$mY2Q6JpZ" role="37wK5m" />
          <node concept="Xl_RD" id="3R$mY2Q6Jq0" role="37wK5m">
            <property role="Xl_RC" value="ClosedX" />
          </node>
        </node>
        <node concept="3_1$Yv" id="3R$mY2Q6Jq4" role="3_9lra">
          <node concept="Xl_RD" id="3R$mY2Q6Jq5" role="3_1BAH">
            <property role="Xl_RC" value="The edited state name must be visible in the textual projection" />
          </node>
        </node>
      </node>
      <node concept="2HxZob" id="3R$mY2PUv$1" role="3cqZAp">
        <node concept="3iKlGA" id="3R$mY2PUv$2" role="3iKnsn">
          <property role="3iKnse" value="$Undo" />
        </node>
      </node>
      <node concept="3vlDli" id="3R$mY2PUv$3" role="3cqZAp">
        <node concept="Xl_RD" id="3R$mY2PUv$4" role="3tpDZB">
          <property role="Xl_RC" value="machine Door&#10;events&#10;  event open, event close&#10;states&#10;  state Closed { on open -&gt; Open; on close -&gt; Closed }&#10;  state Open { on open -&gt; Open; on close -&gt; Closed }" />
        </node>
        <node concept="2YIFZM" id="3R$mY2PUv$5" role="3tpDZA">
          <ref role="1Pybhc" node="39m6c$Kgt2e" resolve="InteractionAssertions" />
          <ref role="37wK5l" node="54cyhNXDh5E" resolve="exportLf" />
          <node concept="1jxXqW" id="3R$mY2PUv$6" role="37wK5m" />
          <node concept="2OqwBi" id="3R$mY2PUv$7" role="37wK5m">
            <node concept="369mXd" id="3R$mY2PUv$8" role="2Oq$k0" />
            <node concept="liA8E" id="3R$mY2PUv$9" role="2OqNvi">
              <ref role="37wK5l" to="exr9:~EditorComponent.getEditedNode()" resolve="getEditedNode" />
            </node>
          </node>
        </node>
        <node concept="3_1$Yv" id="3R$mY2PUv$a" role="3_9lra">
          <node concept="Xl_RD" id="3R$mY2PUv$b" role="3_1BAH">
            <property role="Xl_RC" value="Undo must restore the shared AST serialization" />
          </node>
        </node>
      </node>
      <node concept="3vlDli" id="3R$mY2Q8f8m" role="3cqZAp">
        <node concept="3clFbT" id="3R$mY2Q8f8n" role="3tpDZB" />
        <node concept="2YIFZM" id="3R$mY2Q8f8j" role="3tpDZA">
          <ref role="37wK5l" node="3R$mY2Q6JnB" resolve="editorTextContains" />
          <ref role="1Pybhc" node="39m6c$Kgt2e" resolve="InteractionAssertions" />
          <node concept="369mXd" id="3R$mY2Q8f8l" role="37wK5m" />
          <node concept="Xl_RD" id="3R$mY2Q8f8k" role="37wK5m">
            <property role="Xl_RC" value="ClosedX" />
          </node>
        </node>
        <node concept="3_1$Yv" id="3R$mY2Q8f8o" role="3_9lra">
          <node concept="Xl_RD" id="3R$mY2Q8f8p" role="3_1BAH">
            <property role="Xl_RC" value="Undo must remove the edited value from the textual projection" />
          </node>
        </node>
      </node>
      <node concept="3clFbF" id="3R$mY2PYsC_" role="3cqZAp">
        <node concept="2YIFZM" id="3R$mY2PYsCx" role="3clFbG">
          <ref role="37wK5l" node="3R$mY2Q3hFk" resolve="setMatrixHint" />
          <ref role="1Pybhc" node="39m6c$Kgt2e" resolve="InteractionAssertions" />
          <node concept="1jxXqW" id="3R$mY2PYsCy" role="37wK5m" />
          <node concept="369mXd" id="3R$mY2PYsCz" role="37wK5m" />
          <node concept="3clFbT" id="3R$mY2PYsC$" role="37wK5m" />
        </node>
      </node>
      <node concept="3vlDli" id="3R$mY2Q4PM8" role="3cqZAp">
        <node concept="3clFbT" id="3R$mY2Q4PM9" role="3tpDZB" />
        <node concept="2YIFZM" id="3R$mY2Q4PMa" role="3tpDZA">
          <ref role="37wK5l" node="3R$mY2PU9t3" resolve="matrixHintActive" />
          <ref role="1Pybhc" node="39m6c$Kgt2e" resolve="InteractionAssertions" />
          <node concept="369mXd" id="3R$mY2Q4PMb" role="37wK5m" />
        </node>
        <node concept="3_1$Yv" id="3R$mY2Q4PMc" role="3_9lra">
          <node concept="Xl_RD" id="3R$mY2Q4PMd" role="3_1BAH">
            <property role="Xl_RC" value="The default textual editor must return after disabling the matrix hint" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="11IbrVuNFfz">
    <property role="TrG5h" value="ExpressionOperatorReplacementGrouping" />
    <property role="3YCmrE" value="Replacing a tighter operator with an equal-precedence one groups the right operand" />
    <node concept="3clFbS" id="11IbrVuNFf$" role="LjaKd">
      <node concept="2TK7Tu" id="11IbrVuNFf_" role="3cqZAp">
        <property role="2TTd_B" value="-" />
      </node>
      <node concept="3vlDli" id="11IbrVuNFfA" role="3cqZAp">
        <node concept="Xl_RD" id="11IbrVuNFfB" role="3tpDZB">
          <property role="Xl_RC" value="calc a+(b-c)" />
        </node>
        <node concept="2YIFZM" id="11IbrVuNFfC" role="3tpDZA">
          <ref role="1Pybhc" node="39m6c$Kgt2e" resolve="InteractionAssertions" />
          <ref role="37wK5l" node="54cyhNXDh5E" resolve="exportLf" />
          <node concept="1jxXqW" id="11IbrVuNFfD" role="37wK5m" />
          <node concept="2OqwBi" id="11IbrVuNFfE" role="37wK5m">
            <node concept="369mXd" id="11IbrVuNFfF" role="2Oq$k0" />
            <node concept="liA8E" id="11IbrVuNFfG" role="2OqNvi">
              <ref role="37wK5l" to="exr9:~EditorComponent.getEditedNode()" resolve="getEditedNode" />
            </node>
          </node>
        </node>
        <node concept="3_1$Yv" id="11IbrVuNFfH" role="3_9lra">
          <node concept="Xl_RD" id="11IbrVuNFfI" role="3_1BAH">
            <property role="Xl_RC" value="ExpressionOperatorReplacementGrouping: expected exact TextGen of the resulting expression" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="11IbrVuNFfJ" role="25YQCW">
      <node concept="w$042" id="11IbrVuNFfK" role="1qenE9">
        <node concept="w$02_" id="11IbrVuNFfL" role="w$043">
          <property role="w$02y" value="+" />
          <node concept="w$02B" id="11IbrVuNFfM" role="w$02z">
            <property role="w$02$" value="a" />
          </node>
          <node concept="w$02_" id="11IbrVuNFfN" role="w$02w">
            <property role="w$02y" value="*" />
            <node concept="w$02B" id="11IbrVuNFfO" role="w$02z">
              <property role="w$02$" value="b" />
            </node>
            <node concept="w$02B" id="11IbrVuNFfP" role="w$02w">
              <property role="w$02$" value="c" />
            </node>
            <node concept="LIFWc" id="11IbrVuNFfQ" role="lGtFl">
              <property role="LIFWd" value="operator" />
              <property role="LIFWa" value="1" />
              <property role="p6zMq" value="0" />
              <property role="p6zMs" value="1" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="11IbrVuNFfR" role="25YQFr">
      <node concept="w$042" id="11IbrVuNFfS" role="1qenE9">
        <node concept="w$02_" id="11IbrVuNFfT" role="w$043">
          <property role="w$02y" value="+" />
          <node concept="w$02B" id="11IbrVuNFfU" role="w$02z">
            <property role="w$02$" value="a" />
          </node>
          <node concept="w$02x" id="11IbrVuNFfV" role="w$02w">
            <node concept="w$02_" id="11IbrVuNFfW" role="w$02I">
              <property role="w$02y" value="-" />
              <node concept="w$02B" id="11IbrVuNFfX" role="w$02z">
                <property role="w$02$" value="b" />
              </node>
              <node concept="w$02B" id="11IbrVuNFfY" role="w$02w">
                <property role="w$02$" value="c" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="11IbrVuNFg0">
    <property role="TrG5h" value="ExpressionOperatorReplacementUndo" />
    <property role="3YCmrE" value="One Undo restores the operator and the original grouping" />
    <node concept="3clFbS" id="11IbrVuNFg1" role="LjaKd">
      <node concept="2TK7Tu" id="11IbrVuNFg2" role="3cqZAp">
        <property role="2TTd_B" value="-" />
      </node>
      <node concept="2HxZob" id="11IbrVuNFg3" role="3cqZAp">
        <node concept="3iKlGA" id="11IbrVuNFg4" role="3iKnsn">
          <property role="3iKnse" value="$Undo" />
        </node>
      </node>
      <node concept="3vlDli" id="11IbrVuNFg5" role="3cqZAp">
        <node concept="Xl_RD" id="11IbrVuNFg6" role="3tpDZB">
          <property role="Xl_RC" value="calc a+b*c" />
        </node>
        <node concept="2YIFZM" id="11IbrVuNFg7" role="3tpDZA">
          <ref role="1Pybhc" node="39m6c$Kgt2e" resolve="InteractionAssertions" />
          <ref role="37wK5l" node="54cyhNXDh5E" resolve="exportLf" />
          <node concept="1jxXqW" id="11IbrVuNFg8" role="37wK5m" />
          <node concept="2OqwBi" id="11IbrVuNFg9" role="37wK5m">
            <node concept="369mXd" id="11IbrVuNFga" role="2Oq$k0" />
            <node concept="liA8E" id="11IbrVuNFgb" role="2OqNvi">
              <ref role="37wK5l" to="exr9:~EditorComponent.getEditedNode()" resolve="getEditedNode" />
            </node>
          </node>
        </node>
        <node concept="3_1$Yv" id="11IbrVuNFgc" role="3_9lra">
          <node concept="Xl_RD" id="11IbrVuNFgd" role="3_1BAH">
            <property role="Xl_RC" value="ExpressionOperatorReplacementUndo: expected exact TextGen of the resulting expression" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="11IbrVuNFge" role="25YQCW">
      <node concept="w$042" id="11IbrVuNFgf" role="1qenE9">
        <node concept="w$02_" id="11IbrVuNFgg" role="w$043">
          <property role="w$02y" value="+" />
          <node concept="w$02B" id="11IbrVuNFgh" role="w$02z">
            <property role="w$02$" value="a" />
          </node>
          <node concept="w$02_" id="11IbrVuNFgi" role="w$02w">
            <property role="w$02y" value="*" />
            <node concept="w$02B" id="11IbrVuNFgj" role="w$02z">
              <property role="w$02$" value="b" />
            </node>
            <node concept="w$02B" id="11IbrVuNFgk" role="w$02w">
              <property role="w$02$" value="c" />
            </node>
            <node concept="LIFWc" id="11IbrVuNFgl" role="lGtFl">
              <property role="LIFWd" value="operator" />
              <property role="LIFWa" value="1" />
              <property role="p6zMq" value="0" />
              <property role="p6zMs" value="1" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="11IbrVuNFgm" role="25YQFr">
      <node concept="w$042" id="11IbrVuNFgn" role="1qenE9">
        <node concept="w$02_" id="11IbrVuNFgo" role="w$043">
          <property role="w$02y" value="+" />
          <node concept="w$02B" id="11IbrVuNFgp" role="w$02z">
            <property role="w$02$" value="a" />
          </node>
          <node concept="w$02_" id="11IbrVuNFgq" role="w$02w">
            <property role="w$02y" value="*" />
            <node concept="w$02B" id="11IbrVuNFgr" role="w$02z">
              <property role="w$02$" value="b" />
            </node>
            <node concept="w$02B" id="11IbrVuNFgs" role="w$02w">
              <property role="w$02$" value="c" />
            </node>
            <node concept="LIFWc" id="11IbrVuNFgt" role="lGtFl">
              <property role="LIFWd" value="operator" />
              <property role="LIFWa" value="1" />
              <property role="p6zMq" value="0" />
              <property role="p6zMs" value="1" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="11IbrVuNFgu">
    <property role="TrG5h" value="ExpressionGroupRemoval" />
    <property role="3YCmrE" value="Removing redundant grouping parentheses preserves the tree" />
    <node concept="3clFbS" id="11IbrVuNFgv" role="LjaKd">
      <node concept="2HxZob" id="11IbrVuNFgw" role="3cqZAp">
        <node concept="3iKlGA" id="11IbrVuNFgx" role="3iKnsn">
          <property role="3iKnse" value="jetbrains.mps.ide.editor.actions.Backspace_Action" />
        </node>
      </node>
      <node concept="3vlDli" id="11IbrVuNFgy" role="3cqZAp">
        <node concept="Xl_RD" id="11IbrVuNFgz" role="3tpDZB">
          <property role="Xl_RC" value="calc a+b*c" />
        </node>
        <node concept="2YIFZM" id="11IbrVuNFg$" role="3tpDZA">
          <ref role="1Pybhc" node="39m6c$Kgt2e" resolve="InteractionAssertions" />
          <ref role="37wK5l" node="54cyhNXDh5E" resolve="exportLf" />
          <node concept="1jxXqW" id="11IbrVuNFg_" role="37wK5m" />
          <node concept="2OqwBi" id="11IbrVuNFgA" role="37wK5m">
            <node concept="369mXd" id="11IbrVuNFgB" role="2Oq$k0" />
            <node concept="liA8E" id="11IbrVuNFgC" role="2OqNvi">
              <ref role="37wK5l" to="exr9:~EditorComponent.getEditedNode()" resolve="getEditedNode" />
            </node>
          </node>
        </node>
        <node concept="3_1$Yv" id="11IbrVuNFgD" role="3_9lra">
          <node concept="Xl_RD" id="11IbrVuNFgE" role="3_1BAH">
            <property role="Xl_RC" value="ExpressionGroupRemoval: expected exact TextGen of the resulting expression" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="11IbrVuNFgF" role="25YQCW">
      <node concept="w$042" id="11IbrVuNFgG" role="1qenE9">
        <node concept="w$02_" id="11IbrVuNFgH" role="w$043">
          <property role="w$02y" value="+" />
          <node concept="w$02B" id="11IbrVuNFgI" role="w$02z">
            <property role="w$02$" value="a" />
          </node>
          <node concept="w$02x" id="11IbrVuNFgJ" role="w$02w">
            <node concept="w$02_" id="11IbrVuNFgK" role="w$02I">
              <property role="w$02y" value="*" />
              <node concept="w$02B" id="11IbrVuNFgL" role="w$02z">
                <property role="w$02$" value="b" />
              </node>
              <node concept="w$02B" id="11IbrVuNFgM" role="w$02w">
                <property role="w$02$" value="c" />
              </node>
            </node>
            <node concept="LIFWc" id="11IbrVuNFgN" role="lGtFl">
              <property role="LIFWd" value="close" />
              <property role="LIFWa" value="1" />
              <property role="p6zMq" value="1" />
              <property role="p6zMs" value="1" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="11IbrVuNFgO" role="25YQFr">
      <node concept="w$042" id="11IbrVuNFgP" role="1qenE9">
        <node concept="w$02_" id="11IbrVuNFgQ" role="w$043">
          <property role="w$02y" value="+" />
          <node concept="w$02B" id="11IbrVuNFgR" role="w$02z">
            <property role="w$02$" value="a" />
          </node>
          <node concept="w$02_" id="11IbrVuNFgS" role="w$02w">
            <property role="w$02y" value="*" />
            <node concept="w$02B" id="11IbrVuNFgT" role="w$02z">
              <property role="w$02$" value="b" />
            </node>
            <node concept="w$02B" id="11IbrVuNFgU" role="w$02w">
              <property role="w$02$" value="c" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="11IbrVuNFgV">
    <property role="TrG5h" value="ExpressionGroupRemovalRefused" />
    <property role="3YCmrE" value="Grouping parentheses required by precedence are not removed" />
    <node concept="3clFbS" id="11IbrVuNFgW" role="LjaKd">
      <node concept="2HxZob" id="11IbrVuNFgX" role="3cqZAp">
        <node concept="3iKlGA" id="11IbrVuNFgY" role="3iKnsn">
          <property role="3iKnse" value="jetbrains.mps.ide.editor.actions.Backspace_Action" />
        </node>
      </node>
      <node concept="3vlDli" id="11IbrVuNFgZ" role="3cqZAp">
        <node concept="Xl_RD" id="11IbrVuNFh0" role="3tpDZB">
          <property role="Xl_RC" value="calc (a+b)*c" />
        </node>
        <node concept="2YIFZM" id="11IbrVuNFh1" role="3tpDZA">
          <ref role="1Pybhc" node="39m6c$Kgt2e" resolve="InteractionAssertions" />
          <ref role="37wK5l" node="54cyhNXDh5E" resolve="exportLf" />
          <node concept="1jxXqW" id="11IbrVuNFh2" role="37wK5m" />
          <node concept="2OqwBi" id="11IbrVuNFh3" role="37wK5m">
            <node concept="369mXd" id="11IbrVuNFh4" role="2Oq$k0" />
            <node concept="liA8E" id="11IbrVuNFh5" role="2OqNvi">
              <ref role="37wK5l" to="exr9:~EditorComponent.getEditedNode()" resolve="getEditedNode" />
            </node>
          </node>
        </node>
        <node concept="3_1$Yv" id="11IbrVuNFh6" role="3_9lra">
          <node concept="Xl_RD" id="11IbrVuNFh7" role="3_1BAH">
            <property role="Xl_RC" value="ExpressionGroupRemovalRefused: expected exact TextGen of the resulting expression" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="11IbrVuNFh8" role="25YQCW">
      <node concept="w$042" id="11IbrVuNFh9" role="1qenE9">
        <node concept="w$02_" id="11IbrVuNFha" role="w$043">
          <property role="w$02y" value="*" />
          <node concept="w$02x" id="11IbrVuNFhb" role="w$02z">
            <node concept="w$02_" id="11IbrVuNFhc" role="w$02I">
              <property role="w$02y" value="+" />
              <node concept="w$02B" id="11IbrVuNFhd" role="w$02z">
                <property role="w$02$" value="a" />
              </node>
              <node concept="w$02B" id="11IbrVuNFhe" role="w$02w">
                <property role="w$02$" value="b" />
              </node>
            </node>
            <node concept="LIFWc" id="11IbrVuNFhf" role="lGtFl">
              <property role="LIFWd" value="close" />
              <property role="LIFWa" value="1" />
              <property role="p6zMq" value="1" />
              <property role="p6zMs" value="1" />
            </node>
          </node>
          <node concept="w$02B" id="11IbrVuNFhg" role="w$02w">
            <property role="w$02$" value="c" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="11IbrVuNFhh" role="25YQFr">
      <node concept="w$042" id="11IbrVuNFhi" role="1qenE9">
        <node concept="w$02_" id="11IbrVuNFhj" role="w$043">
          <property role="w$02y" value="*" />
          <node concept="w$02x" id="11IbrVuNFhk" role="w$02z">
            <node concept="w$02_" id="11IbrVuNFhl" role="w$02I">
              <property role="w$02y" value="+" />
              <node concept="w$02B" id="11IbrVuNFhm" role="w$02z">
                <property role="w$02$" value="a" />
              </node>
              <node concept="w$02B" id="11IbrVuNFhn" role="w$02w">
                <property role="w$02$" value="b" />
              </node>
            </node>
            <node concept="LIFWc" id="11IbrVuNFho" role="lGtFl">
              <property role="LIFWd" value="close" />
              <property role="LIFWa" value="1" />
              <property role="p6zMq" value="1" />
              <property role="p6zMs" value="1" />
            </node>
          </node>
          <node concept="w$02B" id="11IbrVuNFhp" role="w$02w">
            <property role="w$02$" value="c" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="11IbrVuNFhq">
    <property role="TrG5h" value="ExpressionGroupRemovalUndo" />
    <property role="3YCmrE" value="One Undo restores removed grouping parentheses" />
    <node concept="3clFbS" id="11IbrVuNFhr" role="LjaKd">
      <node concept="2HxZob" id="11IbrVuNFhs" role="3cqZAp">
        <node concept="3iKlGA" id="11IbrVuNFht" role="3iKnsn">
          <property role="3iKnse" value="jetbrains.mps.ide.editor.actions.Backspace_Action" />
        </node>
      </node>
      <node concept="2HxZob" id="11IbrVuNFhu" role="3cqZAp">
        <node concept="3iKlGA" id="11IbrVuNFhv" role="3iKnsn">
          <property role="3iKnse" value="$Undo" />
        </node>
      </node>
      <node concept="3vlDli" id="11IbrVuNFhw" role="3cqZAp">
        <node concept="Xl_RD" id="11IbrVuNFhx" role="3tpDZB">
          <property role="Xl_RC" value="calc a+(b*c)" />
        </node>
        <node concept="2YIFZM" id="11IbrVuNFhy" role="3tpDZA">
          <ref role="1Pybhc" node="39m6c$Kgt2e" resolve="InteractionAssertions" />
          <ref role="37wK5l" node="54cyhNXDh5E" resolve="exportLf" />
          <node concept="1jxXqW" id="11IbrVuNFhz" role="37wK5m" />
          <node concept="2OqwBi" id="11IbrVuNFh$" role="37wK5m">
            <node concept="369mXd" id="11IbrVuNFh_" role="2Oq$k0" />
            <node concept="liA8E" id="11IbrVuNFhA" role="2OqNvi">
              <ref role="37wK5l" to="exr9:~EditorComponent.getEditedNode()" resolve="getEditedNode" />
            </node>
          </node>
        </node>
        <node concept="3_1$Yv" id="11IbrVuNFhB" role="3_9lra">
          <node concept="Xl_RD" id="11IbrVuNFhC" role="3_1BAH">
            <property role="Xl_RC" value="ExpressionGroupRemovalUndo: expected exact TextGen of the resulting expression" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="11IbrVuNFhD" role="25YQCW">
      <node concept="w$042" id="11IbrVuNFhE" role="1qenE9">
        <node concept="w$02_" id="11IbrVuNFhF" role="w$043">
          <property role="w$02y" value="+" />
          <node concept="w$02B" id="11IbrVuNFhG" role="w$02z">
            <property role="w$02$" value="a" />
          </node>
          <node concept="w$02x" id="11IbrVuNFhH" role="w$02w">
            <node concept="w$02_" id="11IbrVuNFhI" role="w$02I">
              <property role="w$02y" value="*" />
              <node concept="w$02B" id="11IbrVuNFhJ" role="w$02z">
                <property role="w$02$" value="b" />
              </node>
              <node concept="w$02B" id="11IbrVuNFhK" role="w$02w">
                <property role="w$02$" value="c" />
              </node>
            </node>
            <node concept="LIFWc" id="11IbrVuNFhL" role="lGtFl">
              <property role="LIFWd" value="close" />
              <property role="LIFWa" value="1" />
              <property role="p6zMq" value="1" />
              <property role="p6zMs" value="1" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="11IbrVuNFhM" role="25YQFr">
      <node concept="w$042" id="11IbrVuNFhN" role="1qenE9">
        <node concept="w$02_" id="11IbrVuNFhO" role="w$043">
          <property role="w$02y" value="+" />
          <node concept="w$02B" id="11IbrVuNFhP" role="w$02z">
            <property role="w$02$" value="a" />
          </node>
          <node concept="w$02x" id="11IbrVuNFhQ" role="w$02w">
            <node concept="w$02_" id="11IbrVuNFhR" role="w$02I">
              <property role="w$02y" value="*" />
              <node concept="w$02B" id="11IbrVuNFhS" role="w$02z">
                <property role="w$02$" value="b" />
              </node>
              <node concept="w$02B" id="11IbrVuNFhT" role="w$02w">
                <property role="w$02$" value="c" />
              </node>
            </node>
            <node concept="LIFWc" id="11IbrVuNFhU" role="lGtFl">
              <property role="LIFWd" value="close" />
              <property role="LIFWa" value="1" />
              <property role="p6zMq" value="1" />
              <property role="p6zMs" value="1" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="11IbrVuTsF2">
    <property role="TrG5h" value="ExpressionLeftOperandInsertion" />
    <property role="3YCmrE" value="Appending to a left operand nests the new operand under that operand" />
    <node concept="3clFbS" id="11IbrVuTsF3" role="LjaKd">
      <node concept="2HxZob" id="11IbrVuTsF4" role="3cqZAp">
        <node concept="3iKlGA" id="11IbrVuTsF5" role="3iKnsn">
          <property role="3iKnse" value="jetbrains.mps.ide.editor.actions.Insert_Action" />
        </node>
      </node>
      <node concept="2TK7Tu" id="11IbrVuTsF6" role="3cqZAp">
        <property role="2TTd_B" value="c" />
      </node>
      <node concept="3vlDli" id="11IbrVuTsF7" role="3cqZAp">
        <node concept="Xl_RD" id="11IbrVuTsF8" role="3tpDZB">
          <property role="Xl_RC" value="calc a+c+b" />
        </node>
        <node concept="2YIFZM" id="11IbrVuTsF9" role="3tpDZA">
          <ref role="1Pybhc" node="39m6c$Kgt2e" resolve="InteractionAssertions" />
          <ref role="37wK5l" node="54cyhNXDh5E" resolve="exportLf" />
          <node concept="1jxXqW" id="11IbrVuTsFa" role="37wK5m" />
          <node concept="2OqwBi" id="11IbrVuTsFb" role="37wK5m">
            <node concept="369mXd" id="11IbrVuTsFc" role="2Oq$k0" />
            <node concept="liA8E" id="11IbrVuTsFd" role="2OqNvi">
              <ref role="37wK5l" to="exr9:~EditorComponent.getEditedNode()" resolve="getEditedNode" />
            </node>
          </node>
        </node>
        <node concept="3_1$Yv" id="11IbrVuTsFe" role="3_9lra">
          <node concept="Xl_RD" id="11IbrVuTsFf" role="3_1BAH">
            <property role="Xl_RC" value="ExpressionLeftOperandInsertion: expected exact TextGen of the resulting expression" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="11IbrVuTsFg" role="25YQCW">
      <node concept="w$042" id="11IbrVuTsFh" role="1qenE9">
        <node concept="w$02_" id="11IbrVuTsFi" role="w$043">
          <property role="w$02y" value="+" />
          <node concept="w$02B" id="11IbrVuTsFj" role="w$02z">
            <property role="w$02$" value="a" />
            <node concept="LIFWc" id="11IbrVuTsFk" role="lGtFl">
              <property role="LIFWd" value="property_name" />
              <property role="LIFWa" value="1" />
              <property role="p6zMq" value="1" />
              <property role="p6zMs" value="1" />
            </node>
          </node>
          <node concept="w$02B" id="11IbrVuTsFl" role="w$02w">
            <property role="w$02$" value="b" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="11IbrVuTsFm" role="25YQFr">
      <node concept="w$042" id="11IbrVuTsFn" role="1qenE9">
        <node concept="w$02_" id="11IbrVuTsFo" role="w$043">
          <property role="w$02y" value="+" />
          <node concept="w$02_" id="11IbrVuTsFp" role="w$02z">
            <property role="w$02y" value="+" />
            <node concept="w$02B" id="11IbrVuTsFq" role="w$02z">
              <property role="w$02$" value="a" />
            </node>
            <node concept="w$02B" id="11IbrVuTsFr" role="w$02w">
              <property role="w$02$" value="c" />
              <node concept="LIFWc" id="11IbrVuTsFs" role="lGtFl">
                <property role="LIFWd" value="property_name" />
                <property role="LIFWa" value="1" />
                <property role="p6zMq" value="1" />
                <property role="p6zMs" value="1" />
              </node>
            </node>
          </node>
          <node concept="w$02B" id="11IbrVuTsFt" role="w$02w">
            <property role="w$02$" value="b" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="11IbrVuWD4$">
    <property role="TrG5h" value="ExpressionOperandInsertion" />
    <property role="3YCmrE" value="Insert at the end of an expression appends an operand to the whole expression" />
    <node concept="3clFbS" id="11IbrVuWD4_" role="LjaKd">
      <node concept="2HxZob" id="11IbrVuWD4A" role="3cqZAp">
        <node concept="3iKlGA" id="11IbrVuWD4B" role="3iKnsn">
          <property role="3iKnse" value="jetbrains.mps.ide.editor.actions.Insert_Action" />
        </node>
      </node>
      <node concept="2TK7Tu" id="11IbrVuWD4C" role="3cqZAp">
        <property role="2TTd_B" value="b" />
      </node>
      <node concept="2HxZob" id="11IbrVuWD4D" role="3cqZAp">
        <node concept="3iKlGA" id="11IbrVuWD4E" role="3iKnsn">
          <property role="3iKnse" value="jetbrains.mps.ide.editor.actions.Insert_Action" />
        </node>
      </node>
      <node concept="2TK7Tu" id="11IbrVuWD4F" role="3cqZAp">
        <property role="2TTd_B" value="c" />
      </node>
      <node concept="3vlDli" id="11IbrVuWD4G" role="3cqZAp">
        <node concept="Xl_RD" id="11IbrVuWD4H" role="3tpDZB">
          <property role="Xl_RC" value="calc a+b+c" />
        </node>
        <node concept="2YIFZM" id="11IbrVuWD4I" role="3tpDZA">
          <ref role="1Pybhc" node="39m6c$Kgt2e" resolve="InteractionAssertions" />
          <ref role="37wK5l" node="54cyhNXDh5E" resolve="exportLf" />
          <node concept="1jxXqW" id="11IbrVuWD4J" role="37wK5m" />
          <node concept="2OqwBi" id="11IbrVuWD4K" role="37wK5m">
            <node concept="369mXd" id="11IbrVuWD4L" role="2Oq$k0" />
            <node concept="liA8E" id="11IbrVuWD4M" role="2OqNvi">
              <ref role="37wK5l" to="exr9:~EditorComponent.getEditedNode()" resolve="getEditedNode" />
            </node>
          </node>
        </node>
        <node concept="3_1$Yv" id="11IbrVuWD4N" role="3_9lra">
          <node concept="Xl_RD" id="11IbrVuWD4O" role="3_1BAH">
            <property role="Xl_RC" value="ExpressionOperandInsertion: expected exact TextGen of the resulting expression" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="11IbrVuWD4P" role="25YQCW">
      <node concept="w$042" id="11IbrVuWD4Q" role="1qenE9">
        <node concept="w$02B" id="11IbrVuWD4R" role="w$043">
          <property role="w$02$" value="a" />
          <node concept="LIFWc" id="11IbrVuWD4S" role="lGtFl">
            <property role="LIFWd" value="property_name" />
            <property role="LIFWa" value="1" />
            <property role="p6zMq" value="1" />
            <property role="p6zMs" value="1" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="11IbrVuWD4T" role="25YQFr">
      <node concept="w$042" id="11IbrVuWD4U" role="1qenE9">
        <node concept="w$02_" id="11IbrVuWD4V" role="w$043">
          <property role="w$02y" value="+" />
          <node concept="w$02_" id="11IbrVuWD4W" role="w$02z">
            <property role="w$02y" value="+" />
            <node concept="w$02B" id="11IbrVuWD4X" role="w$02z">
              <property role="w$02$" value="a" />
            </node>
            <node concept="w$02B" id="11IbrVuWD4Y" role="w$02w">
              <property role="w$02$" value="b" />
            </node>
          </node>
          <node concept="w$02B" id="11IbrVuWD4Z" role="w$02w">
            <property role="w$02$" value="c" />
            <node concept="LIFWc" id="11IbrVuWD50" role="lGtFl">
              <property role="LIFWd" value="property_name" />
              <property role="LIFWa" value="1" />
              <property role="p6zMq" value="1" />
              <property role="p6zMs" value="1" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="11IbrVuYiex">
    <property role="TrG5h" value="ExpressionInsertionGrouping" />
    <property role="3YCmrE" value="Insert at an operand of a tighter operator groups the new lower-precedence operation" />
    <node concept="3clFbS" id="11IbrVuYiey" role="LjaKd">
      <node concept="2HxZob" id="11IbrVuYiez" role="3cqZAp">
        <node concept="3iKlGA" id="11IbrVuYie$" role="3iKnsn">
          <property role="3iKnse" value="jetbrains.mps.ide.editor.actions.Insert_Action" />
        </node>
      </node>
      <node concept="2TK7Tu" id="11IbrVuYie_" role="3cqZAp">
        <property role="2TTd_B" value="d" />
      </node>
      <node concept="3vlDli" id="11IbrVuYieA" role="3cqZAp">
        <node concept="Xl_RD" id="11IbrVuYieB" role="3tpDZB">
          <property role="Xl_RC" value="calc (a+d)*b" />
        </node>
        <node concept="2YIFZM" id="11IbrVuYieC" role="3tpDZA">
          <ref role="1Pybhc" node="39m6c$Kgt2e" resolve="InteractionAssertions" />
          <ref role="37wK5l" node="54cyhNXDh5E" resolve="exportLf" />
          <node concept="1jxXqW" id="11IbrVuYieD" role="37wK5m" />
          <node concept="2OqwBi" id="11IbrVuYieE" role="37wK5m">
            <node concept="369mXd" id="11IbrVuYieF" role="2Oq$k0" />
            <node concept="liA8E" id="11IbrVuYieG" role="2OqNvi">
              <ref role="37wK5l" to="exr9:~EditorComponent.getEditedNode()" resolve="getEditedNode" />
            </node>
          </node>
        </node>
        <node concept="3_1$Yv" id="11IbrVuYieH" role="3_9lra">
          <node concept="Xl_RD" id="11IbrVuYieI" role="3_1BAH">
            <property role="Xl_RC" value="ExpressionInsertionGrouping: expected exact TextGen of the resulting expression" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="11IbrVuYieJ" role="25YQCW">
      <node concept="w$042" id="11IbrVuYieK" role="1qenE9">
        <node concept="w$02_" id="11IbrVuYieL" role="w$043">
          <property role="w$02y" value="*" />
          <node concept="w$02B" id="11IbrVuYieM" role="w$02z">
            <property role="w$02$" value="a" />
            <node concept="LIFWc" id="11IbrVuYieN" role="lGtFl">
              <property role="LIFWd" value="property_name" />
              <property role="LIFWa" value="1" />
              <property role="p6zMq" value="1" />
              <property role="p6zMs" value="1" />
            </node>
          </node>
          <node concept="w$02B" id="11IbrVuYieO" role="w$02w">
            <property role="w$02$" value="b" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="11IbrVuYieP" role="25YQFr">
      <node concept="w$042" id="11IbrVuYieQ" role="1qenE9">
        <node concept="w$02_" id="11IbrVuYieR" role="w$043">
          <property role="w$02y" value="*" />
          <node concept="w$02x" id="11IbrVuYieS" role="w$02z">
            <node concept="w$02_" id="11IbrVuYieT" role="w$02I">
              <property role="w$02y" value="+" />
              <node concept="w$02B" id="11IbrVuYieU" role="w$02z">
                <property role="w$02$" value="a" />
              </node>
              <node concept="w$02B" id="11IbrVuYieV" role="w$02w">
                <property role="w$02$" value="d" />
                <node concept="LIFWc" id="11IbrVuYieW" role="lGtFl">
                  <property role="LIFWd" value="property_name" />
                  <property role="LIFWa" value="1" />
                  <property role="p6zMq" value="1" />
                  <property role="p6zMs" value="1" />
                </node>
              </node>
            </node>
          </node>
          <node concept="w$02B" id="11IbrVuYieX" role="w$02w">
            <property role="w$02$" value="b" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="3R$mY2Q9Jis">
    <property role="TrG5h" value="StateMachineProjectionSwitchNoChange" />
    <property role="3YCmrE" value="Switch editor projections without changing the AST, references, or TextGen output" />
    <node concept="1qefOq" id="3R$mY2Q9Jit" role="25YQCW">
      <node concept="2811m7" id="3R$mY2Q9Jiu" role="1qenE9">
        <property role="2811mb" value="Door" />
        <property role="TrG5h" value="Door" />
        <node concept="2811m8" id="3R$mY2Q9Jiv" role="2811mg">
          <property role="2811mc" value="open" />
        </node>
        <node concept="2811m8" id="3R$mY2Q9Jiw" role="2811mg">
          <property role="2811mc" value="close" />
        </node>
        <node concept="2811m9" id="3R$mY2Q9Jix" role="2811mh">
          <property role="2811md" value="Closed" />
          <node concept="2811ma" id="3R$mY2Q9Jiy" role="2811mi">
            <property role="2811me" value="open" />
            <property role="2811mf" value="Open" />
          </node>
          <node concept="2811ma" id="3R$mY2Q9Jiz" role="2811mi">
            <property role="2811me" value="close" />
            <property role="2811mf" value="Closed" />
          </node>
          <node concept="LIFWc" id="3R$mY2Qbe$Z" role="lGtFl">
            <property role="LIFWd" value="property_identifier" />
            <property role="LIFWa" value="0" />
            <property role="p6zMq" value="0" />
            <property role="p6zMs" value="0" />
          </node>
        </node>
        <node concept="2811m9" id="3R$mY2Q9Ji$" role="2811mh">
          <property role="2811md" value="Open" />
          <node concept="2811ma" id="3R$mY2Q9Ji_" role="2811mi">
            <property role="2811me" value="open" />
            <property role="2811mf" value="Open" />
          </node>
          <node concept="2811ma" id="3R$mY2Q9JiA" role="2811mi">
            <property role="2811me" value="close" />
            <property role="2811mf" value="Closed" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="3R$mY2Q9JiB" role="25YQFr">
      <node concept="2811m7" id="3R$mY2Q9JiC" role="1qenE9">
        <property role="2811mb" value="Door" />
        <property role="TrG5h" value="Door" />
        <node concept="2811m8" id="3R$mY2Q9JiD" role="2811mg">
          <property role="2811mc" value="open" />
        </node>
        <node concept="2811m8" id="3R$mY2Q9JiE" role="2811mg">
          <property role="2811mc" value="close" />
        </node>
        <node concept="2811m9" id="3R$mY2Q9JiF" role="2811mh">
          <property role="2811md" value="Closed" />
          <node concept="2811ma" id="3R$mY2Q9JiG" role="2811mi">
            <property role="2811me" value="open" />
            <property role="2811mf" value="Open" />
          </node>
          <node concept="2811ma" id="3R$mY2Q9JiH" role="2811mi">
            <property role="2811me" value="close" />
            <property role="2811mf" value="Closed" />
          </node>
          <node concept="LIFWc" id="3R$mY2Qbe_0" role="lGtFl">
            <property role="LIFWd" value="property_identifier" />
            <property role="LIFWa" value="0" />
            <property role="p6zMq" value="0" />
            <property role="p6zMs" value="0" />
          </node>
        </node>
        <node concept="2811m9" id="3R$mY2Q9JiI" role="2811mh">
          <property role="2811md" value="Open" />
          <node concept="2811ma" id="3R$mY2Q9JiJ" role="2811mi">
            <property role="2811me" value="open" />
            <property role="2811mf" value="Open" />
          </node>
          <node concept="2811ma" id="3R$mY2Q9JiK" role="2811mi">
            <property role="2811me" value="close" />
            <property role="2811mf" value="Closed" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="3R$mY2Q9JiL" role="LjaKd">
      <node concept="3vlDli" id="3R$mY2Q9JiM" role="3cqZAp">
        <node concept="3clFbT" id="3R$mY2Q9JiN" role="3tpDZB">
          <property role="3clFbU" value="true" />
        </node>
        <node concept="2YIFZM" id="3R$mY2Q9JiO" role="3tpDZA">
          <ref role="37wK5l" node="3R$mY2QcHV0" resolve="projectionSwitchPreservesModelRead" />
          <ref role="1Pybhc" node="39m6c$Kgt2e" resolve="InteractionAssertions" />
          <node concept="1jxXqW" id="3R$mY2Q9JiP" role="37wK5m" />
          <node concept="369mXd" id="3R$mY2Q9JiQ" role="37wK5m" />
        </node>
        <node concept="3_1$Yv" id="3R$mY2Q9JiR" role="3_9lra">
          <node concept="Xl_RD" id="3R$mY2Q9JiS" role="3_1BAH">
            <property role="Xl_RC" value="Switching hints must leave every AST property, reference target, and TextGen byte unchanged" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="3R$mY2QerRE">
    <property role="TrG5h" value="StateMachineMatrixLocalChoice" />
    <property role="3YCmrE" value="Choose a matrix-only note and preserve the textual projection and exported syntax" />
    <node concept="1qefOq" id="3R$mY2QerRZ" role="25YQCW">
      <node concept="2811m7" id="3R$mY2QerRF" role="1qenE9">
        <property role="2811mb" value="Door" />
        <property role="TrG5h" value="Door" />
        <node concept="2811m8" id="3R$mY2QerRG" role="2811mg">
          <property role="2811mc" value="open" />
        </node>
        <node concept="2811m8" id="3R$mY2QerRH" role="2811mg">
          <property role="2811mc" value="close" />
        </node>
        <node concept="2811m9" id="3R$mY2QerRI" role="2811mh">
          <property role="2811md" value="Closed" />
          <node concept="2811ma" id="3R$mY2QerRJ" role="2811mi">
            <property role="2811me" value="open" />
            <property role="2811mf" value="Open" />
          </node>
          <node concept="2811ma" id="3R$mY2QerRK" role="2811mi">
            <property role="2811me" value="close" />
            <property role="2811mf" value="Closed" />
          </node>
          <node concept="LIFWc" id="3R$mY2QerRO" role="lGtFl">
            <property role="LIFWd" value="property_identifier" />
            <property role="LIFWa" value="0" />
            <property role="p6zMq" value="0" />
            <property role="p6zMs" value="0" />
          </node>
        </node>
        <node concept="2811m9" id="3R$mY2QerRL" role="2811mh">
          <property role="2811md" value="Open" />
          <node concept="2811ma" id="3R$mY2QerRM" role="2811mi">
            <property role="2811me" value="open" />
            <property role="2811mf" value="Open" />
          </node>
          <node concept="2811ma" id="3R$mY2QerRN" role="2811mi">
            <property role="2811me" value="close" />
            <property role="2811mf" value="Closed" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="3R$mY2QerS0" role="25YQFr">
      <node concept="2811m7" id="3R$mY2QerRP" role="1qenE9">
        <property role="2811mb" value="Door" />
        <property role="TrG5h" value="Door" />
        <node concept="2811m8" id="3R$mY2QerRQ" role="2811mg">
          <property role="2811mc" value="open" />
        </node>
        <node concept="2811m8" id="3R$mY2QerRR" role="2811mg">
          <property role="2811mc" value="close" />
        </node>
        <node concept="2811m9" id="3R$mY2QerRS" role="2811mh">
          <property role="2811md" value="Closed" />
          <property role="2bL6Rd" value="X" />
          <node concept="2811ma" id="3R$mY2QerRT" role="2811mi">
            <property role="2811me" value="open" />
            <property role="2811mf" value="Open" />
          </node>
          <node concept="2811ma" id="3R$mY2QerRU" role="2811mi">
            <property role="2811me" value="close" />
            <property role="2811mf" value="Closed" />
          </node>
          <node concept="LIFWc" id="3R$mY2QerRY" role="lGtFl">
            <property role="LIFWd" value="property_identifier" />
            <property role="LIFWa" value="0" />
            <property role="p6zMq" value="0" />
            <property role="p6zMs" value="0" />
          </node>
        </node>
        <node concept="2811m9" id="3R$mY2QerRV" role="2811mh">
          <property role="2811md" value="Open" />
          <node concept="2811ma" id="3R$mY2QerRW" role="2811mi">
            <property role="2811me" value="open" />
            <property role="2811mf" value="Open" />
          </node>
          <node concept="2811ma" id="3R$mY2QerRX" role="2811mi">
            <property role="2811me" value="close" />
            <property role="2811mf" value="Closed" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="3R$mY2QerS1" role="LjaKd">
      <node concept="3clFbF" id="3R$mY2QerS2" role="3cqZAp">
        <node concept="2YIFZM" id="3R$mY2QerS6" role="3clFbG">
          <ref role="37wK5l" node="3R$mY2Q3hFk" resolve="setMatrixHint" />
          <ref role="1Pybhc" node="39m6c$Kgt2e" resolve="InteractionAssertions" />
          <node concept="1jxXqW" id="3R$mY2QerS3" role="37wK5m" />
          <node concept="369mXd" id="3R$mY2QerS4" role="37wK5m" />
          <node concept="3clFbT" id="3R$mY2QerS5" role="37wK5m">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="3vlDli" id="3R$mY2QerSa" role="3cqZAp">
        <node concept="3clFbT" id="3R$mY2QerS9" role="3tpDZB">
          <property role="3clFbU" value="true" />
        </node>
        <node concept="2YIFZM" id="3R$mY2QerS8" role="3tpDZA">
          <ref role="37wK5l" node="3R$mY2PU9t3" resolve="matrixHintActive" />
          <ref role="1Pybhc" node="39m6c$Kgt2e" resolve="InteractionAssertions" />
          <node concept="369mXd" id="3R$mY2QerS7" role="37wK5m" />
        </node>
        <node concept="3_1$Yv" id="3R$mY2QerSb" role="3_9lra">
          <node concept="Xl_RD" id="3R$mY2QerSc" role="3_1BAH">
            <property role="Xl_RC" value="The matrix projection must be active before editing its local note" />
          </node>
        </node>
      </node>
      <node concept="3vlDli" id="3R$mY2QhwjG" role="3cqZAp">
        <node concept="3clFbT" id="3R$mY2QhwjH" role="3tpDZB">
          <property role="3clFbU" value="true" />
        </node>
        <node concept="2YIFZM" id="3R$mY2QhwjD" role="3tpDZA">
          <ref role="37wK5l" node="3R$mY2Qhw8R" resolve="selectMatrixNoteCell" />
          <ref role="1Pybhc" node="39m6c$Kgt2e" resolve="InteractionAssertions" />
          <node concept="1jxXqW" id="3R$mY2QhwjE" role="37wK5m" />
          <node concept="369mXd" id="3R$mY2QhwjF" role="37wK5m" />
        </node>
        <node concept="3_1$Yv" id="3R$mY2QhwjI" role="3_9lra">
          <node concept="Xl_RD" id="3R$mY2QhwjJ" role="3_1BAH">
            <property role="Xl_RC" value="The matrix-only note cell must be selectable after switching projections" />
          </node>
        </node>
      </node>
      <node concept="2TK7Tu" id="3R$mY2QerSd" role="3cqZAp">
        <property role="2TTd_B" value="X" />
      </node>
      <node concept="3vlDli" id="3R$mY2QerSi" role="3cqZAp">
        <node concept="3clFbT" id="3R$mY2QerSh" role="3tpDZB">
          <property role="3clFbU" value="true" />
        </node>
        <node concept="2YIFZM" id="3R$mY2QerSg" role="3tpDZA">
          <ref role="37wK5l" node="3R$mY2Q6JnB" resolve="editorTextContains" />
          <ref role="1Pybhc" node="39m6c$Kgt2e" resolve="InteractionAssertions" />
          <node concept="369mXd" id="3R$mY2QerSe" role="37wK5m" />
          <node concept="Xl_RD" id="3R$mY2QerSf" role="37wK5m">
            <property role="Xl_RC" value="X" />
          </node>
        </node>
        <node concept="3_1$Yv" id="3R$mY2QerSj" role="3_9lra">
          <node concept="Xl_RD" id="3R$mY2QerSk" role="3_1BAH">
            <property role="Xl_RC" value="The matrix projection must display its explicit note choice" />
          </node>
        </node>
      </node>
      <node concept="3vlDli" id="3R$mY2QerSl" role="3cqZAp">
        <node concept="Xl_RD" id="3R$mY2QerSm" role="3tpDZB">
          <property role="Xl_RC" value="machine Door&#10;events&#10;  event open, event close&#10;states&#10;  state Closed { on open -&gt; Open; on close -&gt; Closed }&#10;  state Open { on open -&gt; Open; on close -&gt; Closed }" />
        </node>
        <node concept="2YIFZM" id="3R$mY2QerSn" role="3tpDZA">
          <ref role="1Pybhc" node="39m6c$Kgt2e" resolve="InteractionAssertions" />
          <ref role="37wK5l" node="54cyhNXDh5E" resolve="exportLf" />
          <node concept="1jxXqW" id="3R$mY2QerSo" role="37wK5m" />
          <node concept="2OqwBi" id="3R$mY2QerSp" role="37wK5m">
            <node concept="369mXd" id="3R$mY2QerSq" role="2Oq$k0" />
            <node concept="liA8E" id="3R$mY2QerSr" role="2OqNvi">
              <ref role="37wK5l" to="exr9:~EditorComponent.getEditedNode()" resolve="getEditedNode" />
            </node>
          </node>
        </node>
        <node concept="3_1$Yv" id="3R$mY2QerSs" role="3_9lra">
          <node concept="Xl_RD" id="3R$mY2QerSt" role="3_1BAH">
            <property role="Xl_RC" value="The matrix-only note must not change exported textual syntax" />
          </node>
        </node>
      </node>
      <node concept="3clFbF" id="3R$mY2QerSu" role="3cqZAp">
        <node concept="2YIFZM" id="3R$mY2QerSy" role="3clFbG">
          <ref role="37wK5l" node="3R$mY2Q3hFk" resolve="setMatrixHint" />
          <ref role="1Pybhc" node="39m6c$Kgt2e" resolve="InteractionAssertions" />
          <node concept="1jxXqW" id="3R$mY2QerSv" role="37wK5m" />
          <node concept="369mXd" id="3R$mY2QerSw" role="37wK5m" />
          <node concept="3clFbT" id="3R$mY2QerSx" role="37wK5m" />
        </node>
      </node>
      <node concept="3vlDli" id="3R$mY2Qkz8K" role="3cqZAp">
        <node concept="3clFbT" id="3R$mY2Qkz8L" role="3tpDZB">
          <property role="3clFbU" value="true" />
        </node>
        <node concept="2YIFZM" id="3R$mY2Qkz8H" role="3tpDZA">
          <ref role="37wK5l" node="3R$mY2QkyXV" resolve="selectTextStateCell" />
          <ref role="1Pybhc" node="39m6c$Kgt2e" resolve="InteractionAssertions" />
          <node concept="1jxXqW" id="3R$mY2Qkz8I" role="37wK5m" />
          <node concept="369mXd" id="3R$mY2Qkz8J" role="37wK5m" />
        </node>
        <node concept="3_1$Yv" id="3R$mY2Qkz8M" role="3_9lra">
          <node concept="Xl_RD" id="3R$mY2Qkz8N" role="3_1BAH">
            <property role="Xl_RC" value="The textual projection must regain its state-cell selection" />
          </node>
        </node>
      </node>
      <node concept="3vlDli" id="3R$mY2QerSA" role="3cqZAp">
        <node concept="3clFbT" id="3R$mY2QerS_" role="3tpDZB" />
        <node concept="2YIFZM" id="3R$mY2QerS$" role="3tpDZA">
          <ref role="37wK5l" node="3R$mY2PU9t3" resolve="matrixHintActive" />
          <ref role="1Pybhc" node="39m6c$Kgt2e" resolve="InteractionAssertions" />
          <node concept="369mXd" id="3R$mY2QerSz" role="37wK5m" />
        </node>
        <node concept="3_1$Yv" id="3R$mY2QerSB" role="3_9lra">
          <node concept="Xl_RD" id="3R$mY2QerSC" role="3_1BAH">
            <property role="Xl_RC" value="The textual projection must be active after switching" />
          </node>
        </node>
      </node>
      <node concept="3vlDli" id="3R$mY2QerSH" role="3cqZAp">
        <node concept="3clFbT" id="3R$mY2QerSG" role="3tpDZB">
          <property role="3clFbU" value="true" />
        </node>
        <node concept="2YIFZM" id="3R$mY2QerSF" role="3tpDZA">
          <ref role="37wK5l" node="3R$mY2QerQZ" resolve="editorTextDoesNotContain" />
          <ref role="1Pybhc" node="39m6c$Kgt2e" resolve="InteractionAssertions" />
          <node concept="369mXd" id="3R$mY2QerSD" role="37wK5m" />
          <node concept="Xl_RD" id="3R$mY2QerSE" role="37wK5m">
            <property role="Xl_RC" value="X" />
          </node>
        </node>
        <node concept="3_1$Yv" id="3R$mY2QerSI" role="3_9lra">
          <node concept="Xl_RD" id="3R$mY2QerSJ" role="3_1BAH">
            <property role="Xl_RC" value="The matrix-only note must not appear in the textual editor" />
          </node>
        </node>
      </node>
      <node concept="3vlDli" id="3R$mY2QerSK" role="3cqZAp">
        <node concept="Xl_RD" id="3R$mY2QerSL" role="3tpDZB">
          <property role="Xl_RC" value="machine Door&#10;events&#10;  event open, event close&#10;states&#10;  state Closed { on open -&gt; Open; on close -&gt; Closed }&#10;  state Open { on open -&gt; Open; on close -&gt; Closed }" />
        </node>
        <node concept="2YIFZM" id="3R$mY2QerSM" role="3tpDZA">
          <ref role="1Pybhc" node="39m6c$Kgt2e" resolve="InteractionAssertions" />
          <ref role="37wK5l" node="54cyhNXDh5E" resolve="exportLf" />
          <node concept="1jxXqW" id="3R$mY2QerSN" role="37wK5m" />
          <node concept="2OqwBi" id="3R$mY2QerSO" role="37wK5m">
            <node concept="369mXd" id="3R$mY2QerSP" role="2Oq$k0" />
            <node concept="liA8E" id="3R$mY2QerSQ" role="2OqNvi">
              <ref role="37wK5l" to="exr9:~EditorComponent.getEditedNode()" resolve="getEditedNode" />
            </node>
          </node>
        </node>
        <node concept="3_1$Yv" id="3R$mY2QerSR" role="3_9lra">
          <node concept="Xl_RD" id="3R$mY2QerSS" role="3_1BAH">
            <property role="Xl_RC" value="Switching to text must preserve syntax choices and TextGen output" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="2HLwPyRZvlf">
    <property role="TrG5h" value="BlockPersistenceFacts" />
    <node concept="3Tm1VV" id="2HLwPyRZvlg" role="1B3o_S" />
    <node concept="2YIFZL" id="2HLwPyRZvlh" role="jymVt">
      <property role="TrG5h" value="children" />
      <node concept="37vLTG" id="2HLwPyRZvli" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="2HLwPyRZzTQ" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2HLwPyRZvlk" role="3clF46">
        <property role="TrG5h" value="role" />
        <node concept="17QB3L" id="2HLwPyS18r1" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="2HLwPyRZvlm" role="3clF47">
        <node concept="3cpWs8" id="2HLwPyRZvlo" role="3cqZAp">
          <node concept="3cpWsn" id="2HLwPyRZvln" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="3uibUv" id="2HLwPyRZvlp" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3Tqbb2" id="2HLwPyRZzTR" role="11_B2D" />
            </node>
            <node concept="2ShNRf" id="2HLwPyRZxwt" role="33vP2m">
              <node concept="1pGfFk" id="2HLwPyRZxwy" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                <node concept="3Tqbb2" id="2HLwPyRZzTS" role="1pMfVU" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="2HLwPyRZvlt" role="3cqZAp">
          <node concept="2OqwBi" id="2HLwPyRZzkX" role="1DdaDG">
            <node concept="liA8E" id="2HLwPyRZzkY" role="2OqNvi">
              <ref role="37wK5l" to="c17a:~SAbstractConcept.getContainmentLinks()" resolve="getContainmentLinks" />
            </node>
            <node concept="2JrnkZ" id="2HLwPyRZzTG" role="2Oq$k0">
              <node concept="2OqwBi" id="2HLwPyRZxX6" role="2JrQYb">
                <node concept="liA8E" id="2HLwPyRZxX7" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                </node>
                <node concept="2JrnkZ" id="2HLwPyRZzTF" role="2Oq$k0">
                  <node concept="37vLTw" id="2HLwPyRZxwI" role="2JrQYb">
                    <ref role="3cqZAo" node="2HLwPyRZvli" resolve="node" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="2HLwPyRZvlI" role="1Duv9x">
            <property role="TrG5h" value="link" />
            <node concept="3uibUv" id="2HLwPyRZvlK" role="1tU5fm">
              <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
            </node>
          </node>
          <node concept="3clFbS" id="2HLwPyRZvlv" role="2LFqv$">
            <node concept="3clFbJ" id="2HLwPyRZvlw" role="3cqZAp">
              <node concept="2OqwBi" id="2HLwPyRZzaa" role="3clFbw">
                <node concept="37vLTw" id="2HLwPyRZxwM" role="2Oq$k0">
                  <ref role="3cqZAo" node="2HLwPyRZvlk" resolve="role" />
                </node>
                <node concept="liA8E" id="2HLwPyRZzab" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                  <node concept="2OqwBi" id="2HLwPyRZzn2" role="37wK5m">
                    <node concept="37vLTw" id="2HLwPyRZzl1" role="2Oq$k0">
                      <ref role="3cqZAo" node="2HLwPyRZvlI" resolve="link" />
                    </node>
                    <node concept="liA8E" id="2HLwPyRZzn3" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="2HLwPyRZvlH" role="3clFbx">
                <node concept="1DcWWT" id="2HLwPyRZvlz" role="3cqZAp">
                  <node concept="2OqwBi" id="2HLwPyRZzam" role="1DdaDG">
                    <node concept="liA8E" id="2HLwPyRZzan" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.getChildren(org.jetbrains.mps.openapi.language.SContainmentLink)" resolve="getChildren" />
                      <node concept="37vLTw" id="2HLwPyRZzao" role="37wK5m">
                        <ref role="3cqZAo" node="2HLwPyRZvlI" resolve="link" />
                      </node>
                    </node>
                    <node concept="2JrnkZ" id="2HLwPyRZzTH" role="2Oq$k0">
                      <node concept="37vLTw" id="2HLwPyRZxwR" role="2JrQYb">
                        <ref role="3cqZAo" node="2HLwPyRZvli" resolve="node" />
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWsn" id="2HLwPyRZvlC" role="1Duv9x">
                    <property role="TrG5h" value="child" />
                    <node concept="3Tqbb2" id="2HLwPyRZzTT" role="1tU5fm" />
                  </node>
                  <node concept="3clFbS" id="2HLwPyRZvlB" role="2LFqv$">
                    <node concept="3clFbF" id="2HLwPyRZvl$" role="3cqZAp">
                      <node concept="2OqwBi" id="2HLwPyRZzcF" role="3clFbG">
                        <node concept="37vLTw" id="2HLwPyRZxwW" role="2Oq$k0">
                          <ref role="3cqZAo" node="2HLwPyRZvln" resolve="result" />
                        </node>
                        <node concept="liA8E" id="2HLwPyRZzcG" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                          <node concept="37vLTw" id="2HLwPyRZzcH" role="37wK5m">
                            <ref role="3cqZAo" node="2HLwPyRZvlC" resolve="child" />
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
        <node concept="3cpWs6" id="2HLwPyRZvlN" role="3cqZAp">
          <node concept="37vLTw" id="2HLwPyRZvlO" role="3cqZAk">
            <ref role="3cqZAo" node="2HLwPyRZvln" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="2HLwPyRZvlP" role="1B3o_S" />
      <node concept="3uibUv" id="2HLwPyRZvlQ" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3Tqbb2" id="2HLwPyRZzTU" role="11_B2D" />
      </node>
    </node>
    <node concept="2YIFZL" id="2HLwPyRZvlS" role="jymVt">
      <property role="TrG5h" value="facts" />
      <node concept="37vLTG" id="2HLwPyRZvlT" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="2HLwPyRZzTV" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="2HLwPyRZvlV" role="3clF47">
        <node concept="3cpWs8" id="2HLwPyRZvlX" role="3cqZAp">
          <node concept="3cpWsn" id="2HLwPyRZvlW" role="3cpWs9">
            <property role="TrG5h" value="nested" />
            <node concept="3uibUv" id="2HLwPyRZvlY" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3Tqbb2" id="2HLwPyRZzTW" role="11_B2D" />
            </node>
            <node concept="1rXfSq" id="2HLwPyRZvm0" role="33vP2m">
              <ref role="37wK5l" node="2HLwPyRZvlh" resolve="children" />
              <node concept="37vLTw" id="2HLwPyRZvm1" role="37wK5m">
                <ref role="3cqZAo" node="2HLwPyRZvlT" resolve="node" />
              </node>
              <node concept="Xl_RD" id="2HLwPyRZvm2" role="37wK5m">
                <property role="Xl_RC" value="child" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2HLwPyRZvm3" role="3cqZAp">
          <node concept="3cpWs3" id="2HLwPyRZvm4" role="3cqZAk">
            <node concept="3cpWs3" id="2HLwPyRZvm5" role="3uHU7B">
              <node concept="3cpWs3" id="2HLwPyRZvm6" role="3uHU7B">
                <node concept="Xl_RD" id="2HLwPyRZvm7" role="3uHU7B">
                  <property role="Xl_RC" value="statements=" />
                </node>
                <node concept="2OqwBi" id="2HLwPyRZxzA" role="3uHU7w">
                  <node concept="1rXfSq" id="2HLwPyRZvm9" role="2Oq$k0">
                    <ref role="37wK5l" node="2HLwPyRZvlh" resolve="children" />
                    <node concept="37vLTw" id="2HLwPyRZvma" role="37wK5m">
                      <ref role="3cqZAo" node="2HLwPyRZvlT" resolve="node" />
                    </node>
                    <node concept="Xl_RD" id="2HLwPyRZvmb" role="37wK5m">
                      <property role="Xl_RC" value="statements" />
                    </node>
                  </node>
                  <node concept="liA8E" id="2HLwPyRZxzB" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="2HLwPyRZvmc" role="3uHU7w">
                <property role="Xl_RC" value=";child=" />
              </node>
            </node>
            <node concept="1eOMI4" id="2HLwPyRZvmn" role="3uHU7w">
              <node concept="3K4zz7" id="2HLwPyRZvmm" role="1eOMHV">
                <node concept="2OqwBi" id="2HLwPyRZzf0" role="3K4Cdx">
                  <node concept="37vLTw" id="2HLwPyRZxzE" role="2Oq$k0">
                    <ref role="3cqZAo" node="2HLwPyRZvlW" resolve="nested" />
                  </node>
                  <node concept="liA8E" id="2HLwPyRZzf1" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.isEmpty()" resolve="isEmpty" />
                  </node>
                </node>
                <node concept="Xl_RD" id="2HLwPyRZvme" role="3K4E3e">
                  <property role="Xl_RC" value="absent" />
                </node>
                <node concept="3cpWs3" id="2HLwPyRZvmf" role="3K4GZi">
                  <node concept="3cpWs3" id="2HLwPyRZvmg" role="3uHU7B">
                    <node concept="Xl_RD" id="2HLwPyRZvmh" role="3uHU7B">
                      <property role="Xl_RC" value="[" />
                    </node>
                    <node concept="1rXfSq" id="2HLwPyRZvmi" role="3uHU7w">
                      <ref role="37wK5l" node="2HLwPyRZvlS" resolve="facts" />
                      <node concept="2OqwBi" id="2HLwPyRZzhk" role="37wK5m">
                        <node concept="37vLTw" id="2HLwPyRZxzI" role="2Oq$k0">
                          <ref role="3cqZAo" node="2HLwPyRZvlW" resolve="nested" />
                        </node>
                        <node concept="liA8E" id="2HLwPyRZzhl" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                          <node concept="3cmrfG" id="2HLwPyRZzhm" role="37wK5m">
                            <property role="3cmrfH" value="0" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Xl_RD" id="2HLwPyRZvml" role="3uHU7w">
                    <property role="Xl_RC" value="]" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2HLwPyRZvmo" role="1B3o_S" />
      <node concept="17QB3L" id="2HLwPyS18r2" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="2HLwPyRZvmq" role="jymVt">
      <property role="TrG5h" value="reload" />
      <node concept="37vLTG" id="2HLwPyRZvmr" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="2HLwPyRZvms" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="37vLTG" id="2HLwPyRZvmt" role="3clF46">
        <property role="TrG5h" value="fixture" />
        <node concept="3Tqbb2" id="2HLwPyRZzTX" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="2HLwPyRZvmv" role="Sfmx6">
        <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
      </node>
      <node concept="3clFbS" id="2HLwPyRZvmw" role="3clF47">
        <node concept="3cpWs8" id="2HLwPyRZvmy" role="3cqZAp">
          <node concept="3cpWsn" id="2HLwPyRZvmx" role="3cpWs9">
            <property role="TrG5h" value="instances" />
            <node concept="H_c77" id="2HLwPyRZzTY" role="1tU5fm" />
            <node concept="2OqwBi" id="2HLwPyRZzhx" role="33vP2m">
              <node concept="2YIFZM" id="2HLwPyRZxIA" role="2Oq$k0">
                <ref role="1Pybhc" to="tqvn:~TemporaryModels" resolve="TemporaryModels" />
                <ref role="37wK5l" to="tqvn:~TemporaryModels.getInstance()" resolve="getInstance" />
              </node>
              <node concept="liA8E" id="2HLwPyRZzhy" role="2OqNvi">
                <ref role="37wK5l" to="tqvn:~TemporaryModels.create(boolean,boolean,java.lang.String,jetbrains.mps.smodel.tempmodel.TempModuleOptions)" resolve="create" />
                <node concept="3clFbT" id="2HLwPyRZzhz" role="37wK5m" />
                <node concept="3clFbT" id="2HLwPyRZzh$" role="37wK5m" />
                <node concept="Xl_RD" id="2HLwPyRZzh_" role="37wK5m">
                  <property role="Xl_RC" value="block.instances" />
                </node>
                <node concept="2YIFZM" id="2HLwPyRZzhA" role="37wK5m">
                  <ref role="1Pybhc" to="tqvn:~TempModuleOptions" resolve="TempModuleOptions" />
                  <ref role="37wK5l" to="tqvn:~TempModuleOptions.forNewModule(org.jetbrains.mps.openapi.module.SRepository,org.jetbrains.mps.openapi.module.SModuleFacet...)" resolve="forNewModule" />
                  <node concept="2OqwBi" id="2HLwPyRZzT6" role="37wK5m">
                    <node concept="liA8E" id="2HLwPyRZzT7" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SModel.getRepository()" resolve="getRepository" />
                    </node>
                    <node concept="2JrnkZ" id="2HLwPyRZzTJ" role="2Oq$k0">
                      <node concept="2OqwBi" id="2HLwPyRZznl" role="2JrQYb">
                        <node concept="liA8E" id="2HLwPyRZznm" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SNode.getModel()" resolve="getModel" />
                        </node>
                        <node concept="2JrnkZ" id="2HLwPyRZzTI" role="2Oq$k0">
                          <node concept="37vLTw" id="2HLwPyRZzld" role="2JrQYb">
                            <ref role="3cqZAo" node="2HLwPyRZvmt" resolve="fixture" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2ShNRf" id="2HLwPyRZzhD" role="37wK5m">
                    <node concept="3$_iS1" id="2HLwPyRZzhE" role="2ShVmc">
                      <node concept="3$GHV9" id="2HLwPyRZzhF" role="3$GQph">
                        <node concept="3cmrfG" id="2HLwPyRZzhG" role="3$I4v7">
                          <property role="3cmrfH" value="0" />
                        </node>
                      </node>
                      <node concept="3uibUv" id="2HLwPyRZzhH" role="3$_nBY">
                        <ref role="3uigEE" to="lui2:~SModuleFacet" resolve="SModuleFacet" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2HLwPyRZvmL" role="3cqZAp">
          <node concept="2OqwBi" id="2HLwPyRZzhU" role="3clFbG">
            <node concept="2ShNRf" id="2HLwPyRZxIT" role="2Oq$k0">
              <node concept="1pGfFk" id="2HLwPyRZxJ4" role="2ShVmc">
                <ref role="37wK5l" to="w1kc:~ModelImports.&lt;init&gt;(org.jetbrains.mps.openapi.model.SModel)" resolve="ModelImports" />
                <node concept="37vLTw" id="2HLwPyRZxJ5" role="37wK5m">
                  <ref role="3cqZAo" node="2HLwPyRZvmx" resolve="instances" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="2HLwPyRZzhV" role="2OqNvi">
              <ref role="37wK5l" to="w1kc:~ModelImports.addUsedLanguage(org.jetbrains.mps.openapi.language.SLanguage)" resolve="addUsedLanguage" />
              <node concept="2OqwBi" id="2HLwPyRZznA" role="37wK5m">
                <node concept="liA8E" id="2HLwPyRZznB" role="2OqNvi">
                  <ref role="37wK5l" to="c17a:~SAbstractConcept.getLanguage()" resolve="getLanguage" />
                </node>
                <node concept="2JrnkZ" id="2HLwPyRZzTL" role="2Oq$k0">
                  <node concept="2OqwBi" id="2HLwPyRZzlw" role="2JrQYb">
                    <node concept="liA8E" id="2HLwPyRZzlx" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                    </node>
                    <node concept="2JrnkZ" id="2HLwPyRZzTK" role="2Oq$k0">
                      <node concept="37vLTw" id="2HLwPyRZzhY" role="2JrQYb">
                        <ref role="3cqZAo" node="2HLwPyRZvmt" resolve="fixture" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2HLwPyRZvmS" role="3cqZAp">
          <node concept="3cpWsn" id="2HLwPyRZvmR" role="3cpWs9">
            <property role="TrG5h" value="copy" />
            <node concept="3Tqbb2" id="2HLwPyRZzTZ" role="1tU5fm" />
            <node concept="2YIFZM" id="2HLwPyRZxJk" role="33vP2m">
              <ref role="1Pybhc" to="w1kc:~CopyUtil" resolve="CopyUtil" />
              <ref role="37wK5l" to="w1kc:~CopyUtil.copy(org.jetbrains.mps.openapi.model.SNode)" resolve="copy" />
              <node concept="37vLTw" id="2HLwPyRZxJl" role="37wK5m">
                <ref role="3cqZAo" node="2HLwPyRZvmt" resolve="fixture" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2HLwPyRZvmW" role="3cqZAp">
          <node concept="2OqwBi" id="2HLwPyRZzi9" role="3clFbG">
            <node concept="liA8E" id="2HLwPyRZzia" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SModel.addRootNode(org.jetbrains.mps.openapi.model.SNode)" resolve="addRootNode" />
              <node concept="37vLTw" id="2HLwPyRZzib" role="37wK5m">
                <ref role="3cqZAo" node="2HLwPyRZvmR" resolve="copy" />
              </node>
            </node>
            <node concept="2JrnkZ" id="2HLwPyRZzTM" role="2Oq$k0">
              <node concept="37vLTw" id="2HLwPyRZxJo" role="2JrQYb">
                <ref role="3cqZAo" node="2HLwPyRZvmx" resolve="instances" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2HLwPyRZvn0" role="3cqZAp">
          <node concept="3cpWsn" id="2HLwPyRZvmZ" role="3cpWs9">
            <property role="TrG5h" value="directory" />
            <node concept="3uibUv" id="2HLwPyRZvn1" role="1tU5fm">
              <ref role="3uigEE" to="eoo2:~Path" resolve="Path" />
            </node>
            <node concept="2YIFZM" id="2HLwPyRZxJt" role="33vP2m">
              <ref role="1Pybhc" to="eoo2:~Paths" resolve="Paths" />
              <ref role="37wK5l" to="eoo2:~Paths.get(java.lang.String,java.lang.String...)" resolve="get" />
              <node concept="Xl_RD" id="2HLwPyRZxJu" role="37wK5m">
                <property role="Xl_RC" value="build" />
              </node>
              <node concept="Xl_RD" id="2HLwPyRZxJv" role="37wK5m">
                <property role="Xl_RC" value="list-block" />
              </node>
              <node concept="Xl_RD" id="2HLwPyRZxJw" role="37wK5m">
                <property role="Xl_RC" value="persistence" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2HLwPyRZvn6" role="3cqZAp">
          <node concept="2YIFZM" id="2HLwPyRZxJz" role="3clFbG">
            <ref role="1Pybhc" to="eoo2:~Files" resolve="Files" />
            <ref role="37wK5l" to="eoo2:~Files.createDirectories(java.nio.file.Path,java.nio.file.attribute.FileAttribute...)" resolve="createDirectories" />
            <node concept="37vLTw" id="2HLwPyRZxJ$" role="37wK5m">
              <ref role="3cqZAo" node="2HLwPyRZvmZ" resolve="directory" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2HLwPyRZvna" role="3cqZAp">
          <node concept="3cpWsn" id="2HLwPyRZvn9" role="3cpWs9">
            <property role="TrG5h" value="file" />
            <node concept="3uibUv" id="2HLwPyRZvnb" role="1tU5fm">
              <ref role="3uigEE" to="eoo2:~Path" resolve="Path" />
            </node>
            <node concept="2YIFZM" id="2HLwPyRZxJB" role="33vP2m">
              <ref role="1Pybhc" to="eoo2:~Files" resolve="Files" />
              <ref role="37wK5l" to="eoo2:~Files.createTempFile(java.nio.file.Path,java.lang.String,java.lang.String,java.nio.file.attribute.FileAttribute...)" resolve="createTempFile" />
              <node concept="37vLTw" id="2HLwPyRZxJC" role="37wK5m">
                <ref role="3cqZAo" node="2HLwPyRZvmZ" resolve="directory" />
              </node>
              <node concept="Xl_RD" id="2HLwPyRZxJD" role="37wK5m">
                <property role="Xl_RC" value="block-" />
              </node>
              <node concept="Xl_RD" id="2HLwPyRZxJE" role="37wK5m">
                <property role="Xl_RC" value=".mps" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2HLwPyRZvnh" role="3cqZAp">
          <node concept="3cpWsn" id="2HLwPyRZvng" role="3cpWs9">
            <property role="TrG5h" value="restored" />
            <node concept="H_c77" id="2HLwPyRZzU0" role="1tU5fm" />
            <node concept="10Nm6u" id="2HLwPyRZvnj" role="33vP2m" />
          </node>
        </node>
        <node concept="3J1_TO" id="2HLwPyRZvoB" role="3cqZAp">
          <node concept="1wplmZ" id="2HLwPyRZvoC" role="1zxBo6">
            <node concept="3clFbS" id="2HLwPyRZvoo" role="1wplMD">
              <node concept="3clFbJ" id="2HLwPyRZvop" role="3cqZAp">
                <node concept="3y3z36" id="2HLwPyRZvoq" role="3clFbw">
                  <node concept="37vLTw" id="2HLwPyRZvor" role="3uHU7B">
                    <ref role="3cqZAo" node="2HLwPyRZvng" resolve="restored" />
                  </node>
                  <node concept="10Nm6u" id="2HLwPyRZvos" role="3uHU7w" />
                </node>
                <node concept="3clFbS" id="2HLwPyRZvov" role="3clFbx">
                  <node concept="3clFbF" id="2HLwPyRZvot" role="3cqZAp">
                    <node concept="2OqwBi" id="2HLwPyRZzim" role="3clFbG">
                      <node concept="liA8E" id="2HLwPyRZzin" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SModel.unload()" resolve="unload" />
                      </node>
                      <node concept="2JrnkZ" id="2HLwPyRZzTN" role="2Oq$k0">
                        <node concept="37vLTw" id="2HLwPyRZxJH" role="2JrQYb">
                          <ref role="3cqZAo" node="2HLwPyRZvng" resolve="restored" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="2HLwPyRZvow" role="3cqZAp">
                <node concept="2OqwBi" id="2HLwPyRZziy" role="3clFbG">
                  <node concept="2YIFZM" id="2HLwPyRZxJT" role="2Oq$k0">
                    <ref role="1Pybhc" to="tqvn:~TemporaryModels" resolve="TemporaryModels" />
                    <ref role="37wK5l" to="tqvn:~TemporaryModels.getInstance()" resolve="getInstance" />
                  </node>
                  <node concept="liA8E" id="2HLwPyRZziz" role="2OqNvi">
                    <ref role="37wK5l" to="tqvn:~TemporaryModels.dispose(org.jetbrains.mps.openapi.model.SModel)" resolve="dispose" />
                    <node concept="37vLTw" id="2HLwPyRZzi$" role="37wK5m">
                      <ref role="3cqZAo" node="2HLwPyRZvmx" resolve="instances" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="2HLwPyRZvo$" role="3cqZAp">
                <node concept="2YIFZM" id="2HLwPyRZxJW" role="3clFbG">
                  <ref role="1Pybhc" to="eoo2:~Files" resolve="Files" />
                  <ref role="37wK5l" to="eoo2:~Files.deleteIfExists(java.nio.file.Path)" resolve="deleteIfExists" />
                  <node concept="37vLTw" id="2HLwPyRZxJX" role="37wK5m">
                    <ref role="3cqZAo" node="2HLwPyRZvn9" resolve="file" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="2HLwPyRZvnl" role="1zxBo7">
            <node concept="3cpWs8" id="2HLwPyRZvnn" role="3cqZAp">
              <node concept="3cpWsn" id="2HLwPyRZvnm" role="3cpWs9">
                <property role="TrG5h" value="vfs" />
                <node concept="3uibUv" id="2HLwPyRZvno" role="1tU5fm">
                  <ref role="3uigEE" to="3ju5:~VFSManager" resolve="VFSManager" />
                </node>
                <node concept="2OqwBi" id="2HLwPyRZzlL" role="33vP2m">
                  <node concept="2OqwBi" id="2HLwPyRZziQ" role="2Oq$k0">
                    <node concept="37vLTw" id="2HLwPyRZxK8" role="2Oq$k0">
                      <ref role="3cqZAo" node="2HLwPyRZvmr" resolve="project" />
                    </node>
                    <node concept="liA8E" id="2HLwPyRZziR" role="2OqNvi">
                      <ref role="37wK5l" to="z1c3:~Project.getPlatform()" resolve="getPlatform" />
                    </node>
                  </node>
                  <node concept="liA8E" id="2HLwPyRZzlM" role="2OqNvi">
                    <ref role="37wK5l" to="wyuk:~ComponentHost.findComponent(java.lang.Class)" resolve="findComponent" />
                    <node concept="3VsKOn" id="2HLwPyRZzlN" role="37wK5m">
                      <ref role="3VsUkX" to="3ju5:~VFSManager" resolve="VFSManager" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="2HLwPyRZvnu" role="3cqZAp">
              <node concept="3cpWsn" id="2HLwPyRZvnt" role="3cpWs9">
                <property role="TrG5h" value="data" />
                <node concept="3uibUv" id="2HLwPyRZvnv" role="1tU5fm">
                  <ref role="3uigEE" to="ends:~FileDataSource" resolve="FileDataSource" />
                </node>
                <node concept="2ShNRf" id="2HLwPyRZxKa" role="33vP2m">
                  <node concept="1pGfFk" id="2HLwPyRZxPO" role="2ShVmc">
                    <ref role="37wK5l" to="ends:~FileDataSource.&lt;init&gt;(jetbrains.mps.vfs.IFile)" resolve="FileDataSource" />
                    <node concept="2OqwBi" id="2HLwPyRZzSr" role="37wK5m">
                      <node concept="2OqwBi" id="2HLwPyRZzm5" role="2Oq$k0">
                        <node concept="37vLTw" id="2HLwPyRZzj2" role="2Oq$k0">
                          <ref role="3cqZAo" node="2HLwPyRZvnm" resolve="vfs" />
                        </node>
                        <node concept="liA8E" id="2HLwPyRZzm6" role="2OqNvi">
                          <ref role="37wK5l" to="3ju5:~VFSManager.getFileSystem(java.lang.String)" resolve="getFileSystem" />
                          <node concept="10M0yZ" id="2HLwPyRZzTa" role="37wK5m">
                            <ref role="1PxDUh" to="3ju5:~VFSManager" resolve="VFSManager" />
                            <ref role="3cqZAo" to="3ju5:~VFSManager.JAVA_IO_FILE_FS" resolve="JAVA_IO_FILE_FS" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="2HLwPyRZzSs" role="2OqNvi">
                        <ref role="37wK5l" to="3ju5:~IFileSystem.getFile(java.io.File)" resolve="getFile" />
                        <node concept="2OqwBi" id="2HLwPyRZzSt" role="37wK5m">
                          <node concept="37vLTw" id="2HLwPyRZzSu" role="2Oq$k0">
                            <ref role="3cqZAo" node="2HLwPyRZvn9" resolve="file" />
                          </node>
                          <node concept="liA8E" id="2HLwPyRZzSv" role="2OqNvi">
                            <ref role="37wK5l" to="eoo2:~Path.toFile()" resolve="toFile" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="2HLwPyRZvnA" role="3cqZAp">
              <node concept="3cpWsn" id="2HLwPyRZvn_" role="3cpWs9">
                <property role="TrG5h" value="factory" />
                <node concept="3uibUv" id="2HLwPyRZvnB" role="1tU5fm">
                  <ref role="3uigEE" to="dush:~ModelFactory" resolve="ModelFactory" />
                </node>
                <node concept="2OqwBi" id="2HLwPyRZzjj" role="33vP2m">
                  <node concept="2YIFZM" id="2HLwPyRZxQ3" role="2Oq$k0">
                    <ref role="1Pybhc" to="dush:~PersistenceFacade" resolve="PersistenceFacade" />
                    <ref role="37wK5l" to="dush:~PersistenceFacade.getInstance()" resolve="getInstance" />
                  </node>
                  <node concept="liA8E" id="2HLwPyRZzjk" role="2OqNvi">
                    <ref role="37wK5l" to="dush:~PersistenceFacade.getModelFactory(org.jetbrains.mps.openapi.persistence.datasource.DataSourceType)" resolve="getModelFactory" />
                    <node concept="2OqwBi" id="2HLwPyRZzmJ" role="37wK5m">
                      <node concept="37vLTw" id="2HLwPyRZzjm" role="2Oq$k0">
                        <ref role="3cqZAo" node="2HLwPyRZvnt" resolve="data" />
                      </node>
                      <node concept="liA8E" id="2HLwPyRZzmK" role="2OqNvi">
                        <ref role="37wK5l" to="ends:~FileDataSource.getType()" resolve="getType" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2HLwPyRZvnF" role="3cqZAp">
              <node concept="2OqwBi" id="2HLwPyRZzjx" role="3clFbG">
                <node concept="37vLTw" id="2HLwPyRZxQa" role="2Oq$k0">
                  <ref role="3cqZAo" node="2HLwPyRZvn_" resolve="factory" />
                </node>
                <node concept="liA8E" id="2HLwPyRZzjy" role="2OqNvi">
                  <ref role="37wK5l" to="dush:~ModelFactory.save(org.jetbrains.mps.openapi.model.SModel,org.jetbrains.mps.openapi.persistence.DataSource,org.jetbrains.mps.openapi.persistence.ModelSaveOption...)" resolve="save" />
                  <node concept="37vLTw" id="2HLwPyRZzjz" role="37wK5m">
                    <ref role="3cqZAo" node="2HLwPyRZvmx" resolve="instances" />
                  </node>
                  <node concept="37vLTw" id="2HLwPyRZzj$" role="37wK5m">
                    <ref role="3cqZAo" node="2HLwPyRZvnt" resolve="data" />
                  </node>
                  <node concept="2ShNRf" id="2HLwPyRZzj_" role="37wK5m">
                    <node concept="3$_iS1" id="2HLwPyRZzjA" role="2ShVmc">
                      <node concept="3$GHV9" id="2HLwPyRZzjB" role="3$GQph">
                        <node concept="3cmrfG" id="2HLwPyRZzjC" role="3$I4v7">
                          <property role="3cmrfH" value="0" />
                        </node>
                      </node>
                      <node concept="3uibUv" id="2HLwPyRZzjD" role="3$_nBY">
                        <ref role="3uigEE" to="dush:~ModelSaveOption" resolve="ModelSaveOption" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2HLwPyRZvnO" role="3cqZAp">
              <node concept="37vLTI" id="2HLwPyRZvnP" role="3clFbG">
                <node concept="37vLTw" id="2HLwPyRZvnQ" role="37vLTJ">
                  <ref role="3cqZAo" node="2HLwPyRZvng" resolve="restored" />
                </node>
                <node concept="2OqwBi" id="2HLwPyRZzjO" role="37vLTx">
                  <node concept="37vLTw" id="2HLwPyRZxQl" role="2Oq$k0">
                    <ref role="3cqZAo" node="2HLwPyRZvn_" resolve="factory" />
                  </node>
                  <node concept="liA8E" id="2HLwPyRZzjP" role="2OqNvi">
                    <ref role="37wK5l" to="dush:~ModelFactory.load(org.jetbrains.mps.openapi.persistence.DataSource,org.jetbrains.mps.openapi.persistence.ModelLoadingOption...)" resolve="load" />
                    <node concept="37vLTw" id="2HLwPyRZzjQ" role="37wK5m">
                      <ref role="3cqZAo" node="2HLwPyRZvnt" resolve="data" />
                    </node>
                    <node concept="2ShNRf" id="2HLwPyRZzjR" role="37wK5m">
                      <node concept="3$_iS1" id="2HLwPyRZzjS" role="2ShVmc">
                        <node concept="3$GHV9" id="2HLwPyRZzjT" role="3$GQph">
                          <node concept="3cmrfG" id="2HLwPyRZzjU" role="3$I4v7">
                            <property role="3cmrfH" value="0" />
                          </node>
                        </node>
                        <node concept="3uibUv" id="2HLwPyRZzjV" role="3$_nBY">
                          <ref role="3uigEE" to="dush:~ModelLoadingOption" resolve="ModelLoadingOption" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="2HLwPyRZvnZ" role="3cqZAp">
              <node concept="3cpWsn" id="2HLwPyRZvnY" role="3cpWs9">
                <property role="TrG5h" value="root" />
                <node concept="3Tqbb2" id="2HLwPyRZzU1" role="1tU5fm" />
                <node concept="2OqwBi" id="2HLwPyRZzk6" role="33vP2m">
                  <node concept="liA8E" id="2HLwPyRZzk7" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SModel.getNode(org.jetbrains.mps.openapi.model.SNodeId)" resolve="getNode" />
                    <node concept="2OqwBi" id="2HLwPyRZzSE" role="37wK5m">
                      <node concept="liA8E" id="2HLwPyRZzSF" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                      </node>
                      <node concept="2JrnkZ" id="2HLwPyRZzTP" role="2Oq$k0">
                        <node concept="37vLTw" id="2HLwPyRZzmN" role="2JrQYb">
                          <ref role="3cqZAo" node="2HLwPyRZvmR" resolve="copy" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2JrnkZ" id="2HLwPyRZzTO" role="2Oq$k0">
                    <node concept="37vLTw" id="2HLwPyRZxQv" role="2JrQYb">
                      <ref role="3cqZAo" node="2HLwPyRZvng" resolve="restored" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="2HLwPyRZvo3" role="3cqZAp">
              <node concept="3clFbC" id="2HLwPyRZvo4" role="3clFbw">
                <node concept="37vLTw" id="2HLwPyRZvo5" role="3uHU7B">
                  <ref role="3cqZAo" node="2HLwPyRZvnY" resolve="root" />
                </node>
                <node concept="10Nm6u" id="2HLwPyRZvo6" role="3uHU7w" />
              </node>
              <node concept="3clFbS" id="2HLwPyRZvoa" role="3clFbx">
                <node concept="YS8fn" id="2HLwPyRZvo9" role="3cqZAp">
                  <node concept="2ShNRf" id="2HLwPyRZxQy" role="YScLw">
                    <node concept="1pGfFk" id="2HLwPyRZxWA" role="2ShVmc">
                      <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
                      <node concept="Xl_RD" id="2HLwPyRZxWB" role="37wK5m">
                        <property role="Xl_RC" value="Lost block identity" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="2HLwPyRZvob" role="3cqZAp">
              <node concept="3cpWs3" id="2HLwPyRZvoc" role="3cqZAk">
                <node concept="3cpWs3" id="2HLwPyRZvod" role="3uHU7B">
                  <node concept="1rXfSq" id="2HLwPyRZvoe" role="3uHU7B">
                    <ref role="37wK5l" node="2HLwPyRZvlS" resolve="facts" />
                    <node concept="37vLTw" id="2HLwPyRZvof" role="37wK5m">
                      <ref role="3cqZAo" node="2HLwPyRZvnY" resolve="root" />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="2HLwPyRZvog" role="3uHU7w">
                    <property role="Xl_RC" value="|" />
                  </node>
                </node>
                <node concept="2OqwBi" id="2HLwPyRZzkE" role="3uHU7w">
                  <node concept="2YIFZM" id="2HLwPyRZxWM" role="2Oq$k0">
                    <ref role="1Pybhc" to="ao3:~TextGeneratorEngine" resolve="TextGeneratorEngine" />
                    <ref role="37wK5l" to="ao3:~TextGeneratorEngine.generateText(jetbrains.mps.components.ComponentHost,org.jetbrains.mps.openapi.model.SNode)" resolve="generateText" />
                    <node concept="2OqwBi" id="2HLwPyRZzSP" role="37wK5m">
                      <node concept="37vLTw" id="2HLwPyRZzmR" role="2Oq$k0">
                        <ref role="3cqZAo" node="2HLwPyRZvmr" resolve="project" />
                      </node>
                      <node concept="liA8E" id="2HLwPyRZzSQ" role="2OqNvi">
                        <ref role="37wK5l" to="z1c3:~Project.getPlatform()" resolve="getPlatform" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="2HLwPyRZxWO" role="37wK5m">
                      <ref role="3cqZAo" node="2HLwPyRZvnY" resolve="root" />
                    </node>
                  </node>
                  <node concept="liA8E" id="2HLwPyRZzkF" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.replace(java.lang.CharSequence,java.lang.CharSequence)" resolve="replace" />
                    <node concept="Xl_RD" id="2HLwPyRZzkG" role="37wK5m">
                      <property role="Xl_RC" value="\r\n" />
                    </node>
                    <node concept="Xl_RD" id="2HLwPyRZzkH" role="37wK5m">
                      <property role="Xl_RC" value="\n" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2HLwPyRZvoD" role="1B3o_S" />
      <node concept="17QB3L" id="2HLwPyS18r3" role="3clF45" />
    </node>
  </node>
  <node concept="1lH9Xt" id="2HLwPyRZzU2">
    <property role="TrG5h" value="BlockPersistence" />
    <node concept="1qefOq" id="2HLwPyRZzU6" role="1SKRRt">
      <node concept="hhWPR" id="2HLwPyRZzU3" role="1qenE9">
        <node concept="3xLA65" id="2HLwPyRZzU5" role="lGtFl">
          <property role="TrG5h" value="emptyBlockReloadFixture" />
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="2HLwPyRZzU7" role="1SL9yI">
      <property role="TrG5h" value="emptyBlockReload" />
      <node concept="3cqZAl" id="2HLwPyRZzU8" role="3clF45" />
      <node concept="3clFbS" id="2HLwPyRZzU9" role="3clF47">
        <node concept="3vlDli" id="2HLwPyRZzUe" role="3cqZAp">
          <node concept="2YIFZM" id="2HLwPyRZzUb" role="3tpDZA">
            <ref role="1Pybhc" node="2HLwPyRZvlf" resolve="BlockPersistenceFacts" />
            <ref role="37wK5l" node="2HLwPyRZvmq" resolve="reload" />
            <node concept="1jxXqW" id="2HLwPyRZzUc" role="37wK5m" />
            <node concept="3xONca" id="2HLwPyRZzUd" role="37wK5m">
              <ref role="3xOPvv" node="2HLwPyRZzU5" resolve="emptyBlockReloadFixture" />
            </node>
          </node>
          <node concept="Xl_RD" id="2HLwPyRZzUf" role="3tpDZB">
            <property role="Xl_RC" value="statements=0;child=absent|begin&#10;    end" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="2HLwPyRZzUa" role="Sfmx6">
        <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
      </node>
    </node>
    <node concept="1qefOq" id="2HLwPyRZzUl" role="1SKRRt">
      <node concept="hhWPR" id="2HLwPyRZzUg" role="1qenE9">
        <node concept="2um2pr" id="2HLwPyRZzUh" role="336h3k" />
        <node concept="2um2pr" id="2HLwPyRZzUi" role="336h3k" />
        <node concept="3xLA65" id="2HLwPyRZzUk" role="lGtFl">
          <property role="TrG5h" value="populatedBlockReloadFixture" />
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="2HLwPyRZzUm" role="1SL9yI">
      <property role="TrG5h" value="populatedBlockReload" />
      <node concept="3cqZAl" id="2HLwPyRZzUn" role="3clF45" />
      <node concept="3clFbS" id="2HLwPyRZzUo" role="3clF47">
        <node concept="3vlDli" id="2HLwPyRZzUt" role="3cqZAp">
          <node concept="2YIFZM" id="2HLwPyRZzUq" role="3tpDZA">
            <ref role="1Pybhc" node="2HLwPyRZvlf" resolve="BlockPersistenceFacts" />
            <ref role="37wK5l" node="2HLwPyRZvmq" resolve="reload" />
            <node concept="1jxXqW" id="2HLwPyRZzUr" role="37wK5m" />
            <node concept="3xONca" id="2HLwPyRZzUs" role="37wK5m">
              <ref role="3xOPvv" node="2HLwPyRZzUk" resolve="populatedBlockReloadFixture" />
            </node>
          </node>
          <node concept="Xl_RD" id="2HLwPyRZzUu" role="3tpDZB">
            <property role="Xl_RC" value="statements=2;child=absent|begin&#10;    skip;skipend" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="2HLwPyRZzUp" role="Sfmx6">
        <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
      </node>
    </node>
    <node concept="1qefOq" id="2HLwPyRZzU$" role="1SKRRt">
      <node concept="hhWPR" id="2HLwPyRZzUv" role="1qenE9">
        <node concept="hhWPR" id="2HLwPyRZzUw" role="2kTR_Y">
          <node concept="2um2pr" id="2HLwPyRZzUx" role="336h3k" />
        </node>
        <node concept="3xLA65" id="2HLwPyRZzUz" role="lGtFl">
          <property role="TrG5h" value="nestedBlockReloadFixture" />
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="2HLwPyRZzU_" role="1SL9yI">
      <property role="TrG5h" value="nestedBlockReload" />
      <node concept="3cqZAl" id="2HLwPyRZzUA" role="3clF45" />
      <node concept="3clFbS" id="2HLwPyRZzUB" role="3clF47">
        <node concept="3vlDli" id="2HLwPyRZzUG" role="3cqZAp">
          <node concept="2YIFZM" id="2HLwPyRZzUD" role="3tpDZA">
            <ref role="1Pybhc" node="2HLwPyRZvlf" resolve="BlockPersistenceFacts" />
            <ref role="37wK5l" node="2HLwPyRZvmq" resolve="reload" />
            <node concept="1jxXqW" id="2HLwPyRZzUE" role="37wK5m" />
            <node concept="3xONca" id="2HLwPyRZzUF" role="37wK5m">
              <ref role="3xOPvv" node="2HLwPyRZzUz" resolve="nestedBlockReloadFixture" />
            </node>
          </node>
          <node concept="Xl_RD" id="2HLwPyRZzUH" role="3tpDZB">
            <property role="Xl_RC" value="statements=0;child=[statements=1;child=absent]|begin&#10;    endbegin&#10;      skipend" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="2HLwPyRZzUC" role="Sfmx6">
        <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="4WxdgwJk$Kt">
    <property role="TrG5h" value="BlockTriviaTyping" />
    <property role="3YCmrE" value="Generated list/block policy: native editor actions, independent AST, selection and syntax assertions" />
    <node concept="1qefOq" id="4WxdgwJk$Ku" role="25YQCW">
      <node concept="hhWPR" id="4WxdgwJk$K3" role="1qenE9">
        <node concept="2um2pr" id="4WxdgwJk$K4" role="336h3k" />
        <node concept="2um2pr" id="4WxdgwJk$K5" role="336h3k" />
        <node concept="2juEzV" id="1_rOk2kk6qK" role="lGtFl">
          <property role="2juEzW" value="statements" />
          <node concept="2juEzX" id="1_rOk2kk6qJ" role="2juEzL">
            <property role="2juEzY" value="first" />
            <ref role="2juEzK" node="4WxdgwJk$K4" />
            <node concept="LIFWc" id="4WxdgwJk$Kh" role="lGtFl">
              <property role="LIFWd" value="property_text" />
              <property role="LIFWa" value="5" />
              <property role="p6zMq" value="5" />
              <property role="p6zMs" value="5" />
            </node>
          </node>
          <node concept="2juEzX" id="1_rOk2kk6qI" role="2juEzL">
            <property role="2juEzY" value="" />
            <property role="2juEzZ" value="true" />
            <ref role="2juEzK" node="4WxdgwJk$K5" />
          </node>
          <node concept="2juEzX" id="1_rOk2kk6qH" role="2juEzL">
            <property role="2juEzY" value="tail" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="4WxdgwJk$Kv" role="25YQFr">
      <node concept="hhWPR" id="4WxdgwJk$Ka" role="1qenE9">
        <node concept="2um2pr" id="4WxdgwJk$Kb" role="336h3k" />
        <node concept="2um2pr" id="4WxdgwJk$Kc" role="336h3k" />
        <node concept="2juEzV" id="1_rOk2kk6qG" role="lGtFl">
          <property role="2juEzW" value="statements" />
          <node concept="2juEzX" id="1_rOk2kk6qF" role="2juEzL">
            <property role="2juEzY" value="first!" />
            <ref role="2juEzK" node="4WxdgwJk$Kb" />
            <node concept="LIFWc" id="4WxdgwJk$Ki" role="lGtFl">
              <property role="LIFWd" value="property_text" />
              <property role="LIFWa" value="6" />
              <property role="p6zMq" value="6" />
              <property role="p6zMs" value="6" />
            </node>
          </node>
          <node concept="2juEzX" id="1_rOk2kk6qE" role="2juEzL">
            <property role="2juEzY" value="" />
            <property role="2juEzZ" value="true" />
            <ref role="2juEzK" node="4WxdgwJk$Kc" />
          </node>
          <node concept="2juEzX" id="1_rOk2kk6qD" role="2juEzL">
            <property role="2juEzY" value="tail" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="4WxdgwJk$Kw" role="LjaKd">
      <node concept="2TK7Tu" id="4WxdgwJk$Kj" role="3cqZAp">
        <property role="2TTd_B" value="!" />
      </node>
      <node concept="3vlDli" id="4WxdgwJk$Kk" role="3cqZAp">
        <node concept="Xl_RD" id="4WxdgwJk$Kl" role="3tpDZB">
          <property role="Xl_RC" value="begin&#10;    // first!&#10;    skip;&#10;    &#10;    skip&#10;    // tail&#10;end" />
        </node>
        <node concept="2YIFZM" id="4WxdgwJk$Km" role="3tpDZA">
          <ref role="1Pybhc" node="39m6c$Kgt2e" resolve="InteractionAssertions" />
          <ref role="37wK5l" node="54cyhNXDh5E" resolve="exportLf" />
          <node concept="1jxXqW" id="4WxdgwJk$Kn" role="37wK5m" />
          <node concept="2OqwBi" id="4WxdgwJk$Ko" role="37wK5m">
            <node concept="369mXd" id="4WxdgwJk$Kp" role="2Oq$k0" />
            <node concept="liA8E" id="4WxdgwJk$Kq" role="2OqNvi">
              <ref role="37wK5l" to="exr9:~EditorComponent.getEditedNode()" resolve="getEditedNode" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="4WxdgwJk$KX">
    <property role="TrG5h" value="BlockTriviaTypingUndo" />
    <property role="3YCmrE" value="Generated list/block policy: native editor actions, independent AST, selection and syntax assertions" />
    <node concept="1qefOq" id="4WxdgwJk$KY" role="25YQCW">
      <node concept="hhWPR" id="4WxdgwJk$Kx" role="1qenE9">
        <node concept="2um2pr" id="4WxdgwJk$Ky" role="336h3k" />
        <node concept="2um2pr" id="4WxdgwJk$Kz" role="336h3k" />
        <node concept="2juEzV" id="1_rOk2kk6qC" role="lGtFl">
          <property role="2juEzW" value="statements" />
          <node concept="2juEzX" id="1_rOk2kk6qB" role="2juEzL">
            <property role="2juEzY" value="first" />
            <ref role="2juEzK" node="4WxdgwJk$Ky" />
            <node concept="LIFWc" id="4WxdgwJk$KJ" role="lGtFl">
              <property role="LIFWd" value="property_text" />
              <property role="LIFWa" value="5" />
              <property role="p6zMq" value="5" />
              <property role="p6zMs" value="5" />
            </node>
          </node>
          <node concept="2juEzX" id="1_rOk2kk6qA" role="2juEzL">
            <property role="2juEzY" value="" />
            <property role="2juEzZ" value="true" />
            <ref role="2juEzK" node="4WxdgwJk$Kz" />
          </node>
          <node concept="2juEzX" id="1_rOk2kk6q_" role="2juEzL">
            <property role="2juEzY" value="tail" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="4WxdgwJk$KZ" role="25YQFr">
      <node concept="hhWPR" id="4WxdgwJk$KC" role="1qenE9">
        <node concept="2um2pr" id="4WxdgwJk$KD" role="336h3k" />
        <node concept="2um2pr" id="4WxdgwJk$KE" role="336h3k" />
        <node concept="2juEzV" id="1_rOk2kk6q$" role="lGtFl">
          <property role="2juEzW" value="statements" />
          <node concept="2juEzX" id="1_rOk2kk6qz" role="2juEzL">
            <property role="2juEzY" value="first" />
            <ref role="2juEzK" node="4WxdgwJk$KD" />
            <node concept="LIFWc" id="4WxdgwJk$KK" role="lGtFl">
              <property role="LIFWd" value="property_text" />
              <property role="LIFWa" value="5" />
              <property role="p6zMq" value="5" />
              <property role="p6zMs" value="5" />
            </node>
          </node>
          <node concept="2juEzX" id="1_rOk2kk6qy" role="2juEzL">
            <property role="2juEzY" value="" />
            <property role="2juEzZ" value="true" />
            <ref role="2juEzK" node="4WxdgwJk$KE" />
          </node>
          <node concept="2juEzX" id="1_rOk2kk6qx" role="2juEzL">
            <property role="2juEzY" value="tail" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="4WxdgwJk$L0" role="LjaKd">
      <node concept="2TK7Tu" id="4WxdgwJk$KL" role="3cqZAp">
        <property role="2TTd_B" value="!" />
      </node>
      <node concept="2HxZob" id="4WxdgwJk$KM" role="3cqZAp">
        <node concept="3iKlGA" id="4WxdgwJk$KN" role="3iKnsn">
          <property role="3iKnse" value="$Undo" />
        </node>
      </node>
      <node concept="3vlDli" id="4WxdgwJk$KO" role="3cqZAp">
        <node concept="Xl_RD" id="4WxdgwJk$KP" role="3tpDZB">
          <property role="Xl_RC" value="begin&#10;    // first&#10;    skip;&#10;    &#10;    skip&#10;    // tail&#10;end" />
        </node>
        <node concept="2YIFZM" id="4WxdgwJk$KQ" role="3tpDZA">
          <ref role="1Pybhc" node="39m6c$Kgt2e" resolve="InteractionAssertions" />
          <ref role="37wK5l" node="54cyhNXDh5E" resolve="exportLf" />
          <node concept="1jxXqW" id="4WxdgwJk$KR" role="37wK5m" />
          <node concept="2OqwBi" id="4WxdgwJk$KS" role="37wK5m">
            <node concept="369mXd" id="4WxdgwJk$KT" role="2Oq$k0" />
            <node concept="liA8E" id="4WxdgwJk$KU" role="2OqNvi">
              <ref role="37wK5l" to="exr9:~EditorComponent.getEditedNode()" resolve="getEditedNode" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="4WxdgwJk$Lm">
    <property role="TrG5h" value="BlockTriviaRemovalReanchors" />
    <property role="3YCmrE" value="Generated list/block policy: native editor actions, independent AST, selection and syntax assertions" />
    <node concept="1qefOq" id="4WxdgwJk$Ln" role="25YQCW">
      <node concept="hhWPR" id="4WxdgwJk$L1" role="1qenE9">
        <node concept="2um2pr" id="4WxdgwJk$L2" role="336h3k">
          <node concept="LIFWc" id="4WxdgwJk$La" role="lGtFl">
            <property role="LIFWd" value="Constant_7h2wce_a0" />
            <property role="LIFWa" value="4" />
            <property role="p6zMq" value="4" />
            <property role="p6zMs" value="4" />
          </node>
        </node>
        <node concept="2juEzV" id="1_rOk2kk6qw" role="lGtFl">
          <property role="2juEzW" value="statements" />
          <node concept="2juEzX" id="1_rOk2kk6qv" role="2juEzL">
            <property role="2juEzY" value="keep" />
            <ref role="2juEzK" node="4WxdgwJk$L2" />
          </node>
          <node concept="2juEzX" id="1_rOk2kk6qu" role="2juEzL">
            <property role="2juEzY" value="tail" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="4WxdgwJk$Lo" role="25YQFr">
      <node concept="hhWPR" id="4WxdgwJk$L6" role="1qenE9">
        <node concept="2juEzV" id="1_rOk2kk6qt" role="lGtFl">
          <property role="2juEzW" value="statements" />
          <node concept="2juEzX" id="1_rOk2kk6qs" role="2juEzL">
            <property role="2juEzY" value="keep" />
          </node>
          <node concept="2juEzX" id="1_rOk2kk6qr" role="2juEzL">
            <property role="2juEzY" value="tail" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="4WxdgwJk$Lp" role="LjaKd">
      <node concept="2HxZob" id="4WxdgwJk$Lb" role="3cqZAp">
        <node concept="3iKlGA" id="4WxdgwJk$Lc" role="3iKnsn">
          <property role="3iKnse" value="jetbrains.mps.ide.editor.actions.Delete_Action" />
        </node>
      </node>
      <node concept="3vlDli" id="4WxdgwJk$Ld" role="3cqZAp">
        <node concept="Xl_RD" id="4WxdgwJk$Le" role="3tpDZB">
          <property role="Xl_RC" value="begin&#10;    // keep&#10;    // tail&#10;end" />
        </node>
        <node concept="2YIFZM" id="4WxdgwJk$Lf" role="3tpDZA">
          <ref role="1Pybhc" node="39m6c$Kgt2e" resolve="InteractionAssertions" />
          <ref role="37wK5l" node="54cyhNXDh5E" resolve="exportLf" />
          <node concept="1jxXqW" id="4WxdgwJk$Lg" role="37wK5m" />
          <node concept="2OqwBi" id="4WxdgwJk$Lh" role="37wK5m">
            <node concept="369mXd" id="4WxdgwJk$Li" role="2Oq$k0" />
            <node concept="liA8E" id="4WxdgwJk$Lj" role="2OqNvi">
              <ref role="37wK5l" to="exr9:~EditorComponent.getEditedNode()" resolve="getEditedNode" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="4WxdgwJk$LM">
    <property role="TrG5h" value="BlockTriviaRemovalUndo" />
    <property role="3YCmrE" value="Generated list/block policy: native editor actions, independent AST, selection and syntax assertions" />
    <node concept="1qefOq" id="4WxdgwJk$LN" role="25YQCW">
      <node concept="hhWPR" id="4WxdgwJk$Lq" role="1qenE9">
        <node concept="2um2pr" id="4WxdgwJk$Lr" role="336h3k">
          <node concept="LIFWc" id="4WxdgwJk$L$" role="lGtFl">
            <property role="LIFWd" value="Constant_7h2wce_a0" />
            <property role="LIFWa" value="4" />
            <property role="p6zMq" value="4" />
            <property role="p6zMs" value="4" />
          </node>
        </node>
        <node concept="2juEzV" id="1_rOk2kk6qq" role="lGtFl">
          <property role="2juEzW" value="statements" />
          <node concept="2juEzX" id="1_rOk2kk6qp" role="2juEzL">
            <property role="2juEzY" value="keep" />
            <ref role="2juEzK" node="4WxdgwJk$Lr" />
          </node>
          <node concept="2juEzX" id="1_rOk2kk6qo" role="2juEzL">
            <property role="2juEzY" value="tail" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="4WxdgwJk$LO" role="25YQFr">
      <node concept="hhWPR" id="4WxdgwJk$Lv" role="1qenE9">
        <node concept="2um2pr" id="4WxdgwJk$Lw" role="336h3k" />
        <node concept="2juEzV" id="1_rOk2kk6qn" role="lGtFl">
          <property role="2juEzW" value="statements" />
          <node concept="2juEzX" id="1_rOk2kk6qm" role="2juEzL">
            <property role="2juEzY" value="keep" />
            <ref role="2juEzK" node="4WxdgwJk$Lw" />
          </node>
          <node concept="2juEzX" id="1_rOk2kk6ql" role="2juEzL">
            <property role="2juEzY" value="tail" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="4WxdgwJk$LP" role="LjaKd">
      <node concept="2HxZob" id="4WxdgwJk$L_" role="3cqZAp">
        <node concept="3iKlGA" id="4WxdgwJk$LA" role="3iKnsn">
          <property role="3iKnse" value="jetbrains.mps.ide.editor.actions.Delete_Action" />
        </node>
      </node>
      <node concept="2HxZob" id="4WxdgwJk$LB" role="3cqZAp">
        <node concept="3iKlGA" id="4WxdgwJk$LC" role="3iKnsn">
          <property role="3iKnse" value="$Undo" />
        </node>
      </node>
      <node concept="3vlDli" id="4WxdgwJk$LD" role="3cqZAp">
        <node concept="Xl_RD" id="4WxdgwJk$LE" role="3tpDZB">
          <property role="Xl_RC" value="begin&#10;    // keep&#10;    skip&#10;    // tail&#10;end" />
        </node>
        <node concept="2YIFZM" id="4WxdgwJk$LF" role="3tpDZA">
          <ref role="1Pybhc" node="39m6c$Kgt2e" resolve="InteractionAssertions" />
          <ref role="37wK5l" node="54cyhNXDh5E" resolve="exportLf" />
          <node concept="1jxXqW" id="4WxdgwJk$LG" role="37wK5m" />
          <node concept="2OqwBi" id="4WxdgwJk$LH" role="37wK5m">
            <node concept="369mXd" id="4WxdgwJk$LI" role="2Oq$k0" />
            <node concept="liA8E" id="4WxdgwJk$LJ" role="2OqNvi">
              <ref role="37wK5l" to="exr9:~EditorComponent.getEditedNode()" resolve="getEditedNode" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="4WxdgwJk$Mg">
    <property role="TrG5h" value="BlockTriviaReorder" />
    <property role="3YCmrE" value="Generated list/block policy: native editor actions, independent AST, selection and syntax assertions" />
    <node concept="1qefOq" id="4WxdgwJk$Mh" role="25YQCW">
      <node concept="hhWPR" id="4WxdgwJk$LQ" role="1qenE9">
        <node concept="2um2pr" id="4WxdgwJk$LR" role="336h3k">
          <node concept="LIFWc" id="4WxdgwJk$M4" role="lGtFl">
            <property role="LIFWd" value="Constant_7h2wce_a0" />
            <property role="LIFWa" value="4" />
            <property role="p6zMq" value="4" />
            <property role="p6zMs" value="4" />
          </node>
        </node>
        <node concept="2um2pr" id="4WxdgwJk$LS" role="336h3k" />
        <node concept="2juEzV" id="1_rOk2kk6qk" role="lGtFl">
          <property role="2juEzW" value="statements" />
          <node concept="2juEzX" id="1_rOk2kk6qj" role="2juEzL">
            <property role="2juEzY" value="first" />
            <ref role="2juEzK" node="4WxdgwJk$LR" />
          </node>
          <node concept="2juEzX" id="1_rOk2kk6qi" role="2juEzL">
            <property role="2juEzY" value="" />
            <property role="2juEzZ" value="true" />
            <ref role="2juEzK" node="4WxdgwJk$LS" />
          </node>
          <node concept="2juEzX" id="1_rOk2kk6qh" role="2juEzL">
            <property role="2juEzY" value="tail" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="4WxdgwJk$Mi" role="25YQFr">
      <node concept="hhWPR" id="4WxdgwJk$LX" role="1qenE9">
        <node concept="2um2pr" id="4WxdgwJk$LY" role="336h3k" />
        <node concept="2um2pr" id="4WxdgwJk$LZ" role="336h3k" />
        <node concept="2juEzV" id="1_rOk2kk6qg" role="lGtFl">
          <property role="2juEzW" value="statements" />
          <node concept="2juEzX" id="1_rOk2kk6qf" role="2juEzL">
            <property role="2juEzY" value="first" />
            <ref role="2juEzK" node="4WxdgwJk$LZ" />
          </node>
          <node concept="2juEzX" id="1_rOk2kk6qe" role="2juEzL">
            <property role="2juEzY" value="" />
            <property role="2juEzZ" value="true" />
            <ref role="2juEzK" node="4WxdgwJk$LY" />
          </node>
          <node concept="2juEzX" id="1_rOk2kk6qd" role="2juEzL">
            <property role="2juEzY" value="tail" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="4WxdgwJk$Mj" role="LjaKd">
      <node concept="2HxZob" id="4WxdgwJk$M5" role="3cqZAp">
        <node concept="3iKlGA" id="4WxdgwJk$M6" role="3iKnsn">
          <property role="3iKnse" value="jetbrains.mps.ide.editor.actions.MoveElementsDown_Action" />
        </node>
      </node>
      <node concept="3vlDli" id="4WxdgwJk$M7" role="3cqZAp">
        <node concept="Xl_RD" id="4WxdgwJk$M8" role="3tpDZB">
          <property role="Xl_RC" value="begin&#10;    &#10;    skip;&#10;    // first&#10;    skip&#10;    // tail&#10;end" />
        </node>
        <node concept="2YIFZM" id="4WxdgwJk$M9" role="3tpDZA">
          <ref role="1Pybhc" node="39m6c$Kgt2e" resolve="InteractionAssertions" />
          <ref role="37wK5l" node="54cyhNXDh5E" resolve="exportLf" />
          <node concept="1jxXqW" id="4WxdgwJk$Ma" role="37wK5m" />
          <node concept="2OqwBi" id="4WxdgwJk$Mb" role="37wK5m">
            <node concept="369mXd" id="4WxdgwJk$Mc" role="2Oq$k0" />
            <node concept="liA8E" id="4WxdgwJk$Md" role="2OqNvi">
              <ref role="37wK5l" to="exr9:~EditorComponent.getEditedNode()" resolve="getEditedNode" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="4WxdgwJk$M_">
    <property role="TrG5h" value="BlockClosingBoundaryNavigation" />
    <property role="3YCmrE" value="Generated list/block policy: native editor actions, independent AST, selection and syntax assertions" />
    <node concept="1qefOq" id="4WxdgwJk$MA" role="25YQCW">
      <node concept="hhWPR" id="4WxdgwJk$Mk" role="1qenE9">
        <node concept="2um2pr" id="4WxdgwJk$Ml" role="336h3k">
          <node concept="LIFWc" id="4WxdgwJk$Mo" role="lGtFl">
            <property role="LIFWd" value="Constant_7h2wce_a0" />
            <property role="LIFWa" value="4" />
            <property role="p6zMq" value="4" />
            <property role="p6zMs" value="4" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="4WxdgwJk$MB" role="25YQFr">
      <node concept="hhWPR" id="4WxdgwJk$Mm" role="1qenE9">
        <node concept="2um2pr" id="4WxdgwJk$Mn" role="336h3k" />
        <node concept="LIFWc" id="4WxdgwJk$Mp" role="lGtFl">
          <property role="LIFWd" value="closing_statements" />
          <property role="LIFWa" value="0" />
          <property role="p6zMq" value="0" />
          <property role="p6zMs" value="0" />
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="4WxdgwJk$MC" role="LjaKd">
      <node concept="2HxZob" id="4WxdgwJk$Mq" role="3cqZAp">
        <node concept="3iKlGA" id="4WxdgwJk$Mr" role="3iKnsn">
          <property role="3iKnse" value="jetbrains.mps.ide.editor.actions.MoveRight_Action" />
        </node>
      </node>
      <node concept="3vlDli" id="3$fueB0rEFd" role="3cqZAp">
        <node concept="3clFbT" id="3$fueB0rEFe" role="3tpDZB">
          <property role="3clFbU" value="true" />
        </node>
        <node concept="2YIFZM" id="3$fueB0rEFf" role="3tpDZA">
          <ref role="1Pybhc" node="39m6c$Kgt2e" resolve="InteractionAssertions" />
          <ref role="37wK5l" node="3$fueB0rEzc" resolve="paired" />
          <node concept="369mXd" id="3$fueB0rEFg" role="37wK5m" />
        </node>
      </node>
      <node concept="3vlDli" id="4WxdgwJk$Ms" role="3cqZAp">
        <node concept="Xl_RD" id="4WxdgwJk$Mt" role="3tpDZB">
          <property role="Xl_RC" value="begin&#10;    skipend" />
        </node>
        <node concept="2YIFZM" id="4WxdgwJk$Mu" role="3tpDZA">
          <ref role="1Pybhc" node="39m6c$Kgt2e" resolve="InteractionAssertions" />
          <ref role="37wK5l" node="54cyhNXDh5E" resolve="exportLf" />
          <node concept="1jxXqW" id="4WxdgwJk$Mv" role="37wK5m" />
          <node concept="2OqwBi" id="4WxdgwJk$Mw" role="37wK5m">
            <node concept="369mXd" id="4WxdgwJk$Mx" role="2Oq$k0" />
            <node concept="liA8E" id="4WxdgwJk$My" role="2OqNvi">
              <ref role="37wK5l" to="exr9:~EditorComponent.getEditedNode()" resolve="getEditedNode" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="4WxdgwJk$MW">
    <property role="TrG5h" value="BlockNestedClosingBoundaryNavigation" />
    <property role="3YCmrE" value="Generated list/block policy: native editor actions, independent AST, selection and syntax assertions" />
    <node concept="1qefOq" id="4WxdgwJk$MX" role="25YQCW">
      <node concept="hhWPR" id="4WxdgwJk$MD" role="1qenE9">
        <node concept="hhWPR" id="4WxdgwJk$MF" role="2kTR_Y">
          <node concept="2um2pr" id="4WxdgwJk$MG" role="336h3k">
            <node concept="LIFWc" id="4WxdgwJk$MJ" role="lGtFl">
              <property role="LIFWd" value="Constant_7h2wce_a0" />
              <property role="LIFWa" value="4" />
              <property role="p6zMq" value="4" />
              <property role="p6zMs" value="4" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="4WxdgwJk$MY" role="25YQFr">
      <node concept="hhWPR" id="4WxdgwJk$ME" role="1qenE9">
        <node concept="hhWPR" id="4WxdgwJk$MH" role="2kTR_Y">
          <node concept="2um2pr" id="4WxdgwJk$MI" role="336h3k" />
          <node concept="LIFWc" id="4WxdgwJk$MK" role="lGtFl">
            <property role="LIFWd" value="closing_statements" />
            <property role="LIFWa" value="0" />
            <property role="p6zMq" value="0" />
            <property role="p6zMs" value="0" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="4WxdgwJk$MZ" role="LjaKd">
      <node concept="2HxZob" id="4WxdgwJk$ML" role="3cqZAp">
        <node concept="3iKlGA" id="4WxdgwJk$MM" role="3iKnsn">
          <property role="3iKnse" value="jetbrains.mps.ide.editor.actions.MoveRight_Action" />
        </node>
      </node>
      <node concept="3vlDli" id="3$fueB0rEFh" role="3cqZAp">
        <node concept="3clFbT" id="3$fueB0rEFi" role="3tpDZB">
          <property role="3clFbU" value="true" />
        </node>
        <node concept="2YIFZM" id="3$fueB0rEFj" role="3tpDZA">
          <ref role="1Pybhc" node="39m6c$Kgt2e" resolve="InteractionAssertions" />
          <ref role="37wK5l" node="3$fueB0rEzc" resolve="paired" />
          <node concept="369mXd" id="3$fueB0rEFk" role="37wK5m" />
        </node>
      </node>
      <node concept="3vlDli" id="4WxdgwJk$MN" role="3cqZAp">
        <node concept="Xl_RD" id="4WxdgwJk$MO" role="3tpDZB">
          <property role="Xl_RC" value="begin&#10;    endbegin&#10;      skipend" />
        </node>
        <node concept="2YIFZM" id="4WxdgwJk$MP" role="3tpDZA">
          <ref role="1Pybhc" node="39m6c$Kgt2e" resolve="InteractionAssertions" />
          <ref role="37wK5l" node="54cyhNXDh5E" resolve="exportLf" />
          <node concept="1jxXqW" id="4WxdgwJk$MQ" role="37wK5m" />
          <node concept="2OqwBi" id="4WxdgwJk$MR" role="37wK5m">
            <node concept="369mXd" id="4WxdgwJk$MS" role="2Oq$k0" />
            <node concept="liA8E" id="4WxdgwJk$MT" role="2OqNvi">
              <ref role="37wK5l" to="exr9:~EditorComponent.getEditedNode()" resolve="getEditedNode" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="4WxdgwJk$Nq">
    <property role="TrG5h" value="BlockFolding" />
    <property role="3YCmrE" value="Generated list/block policy: native editor actions, independent AST, selection and syntax assertions" />
    <node concept="1qefOq" id="4WxdgwJk$Nr" role="25YQCW">
      <node concept="hhWPR" id="4WxdgwJk$N0" role="1qenE9">
        <node concept="2um2pr" id="4WxdgwJk$N1" role="336h3k">
          <node concept="LIFWc" id="4WxdgwJk$N4" role="lGtFl">
            <property role="LIFWd" value="Constant_7h2wce_a0" />
            <property role="LIFWa" value="4" />
            <property role="p6zMq" value="4" />
            <property role="p6zMs" value="4" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="4WxdgwJk$Ns" role="25YQFr">
      <node concept="hhWPR" id="4WxdgwJk$N2" role="1qenE9">
        <node concept="2um2pr" id="4WxdgwJk$N3" role="336h3k" />
      </node>
    </node>
    <node concept="3clFbS" id="4WxdgwJk$Nt" role="LjaKd">
      <node concept="2HxZob" id="4WxdgwJk$N5" role="3cqZAp">
        <node concept="3iKlGA" id="4WxdgwJk$N6" role="3iKnsn">
          <property role="3iKnse" value="jetbrains.mps.ide.editor.actions.Collapse_Action" />
        </node>
      </node>
      <node concept="3vlDli" id="4WxdgwJk$N7" role="3cqZAp">
        <node concept="Xl_RD" id="4WxdgwJk$N8" role="3tpDZB">
          <property role="Xl_RC" value="folded:begin ... end" />
        </node>
        <node concept="2YIFZM" id="4WxdgwJk$N9" role="3tpDZA">
          <ref role="1Pybhc" node="39m6c$Kgt2e" resolve="InteractionAssertions" />
          <ref role="37wK5l" node="4WxdgwJk$GQ" resolve="folding" />
          <node concept="369mXd" id="4WxdgwJk$Na" role="37wK5m" />
        </node>
      </node>
      <node concept="2HxZob" id="4WxdgwJk$Nb" role="3cqZAp">
        <node concept="3iKlGA" id="4WxdgwJk$Nc" role="3iKnsn">
          <property role="3iKnse" value="jetbrains.mps.ide.editor.actions.Expand_Action" />
        </node>
      </node>
      <node concept="3vlDli" id="4WxdgwJk$Nd" role="3cqZAp">
        <node concept="Xl_RD" id="4WxdgwJk$Ne" role="3tpDZB">
          <property role="Xl_RC" value="expanded" />
        </node>
        <node concept="2YIFZM" id="4WxdgwJk$Nf" role="3tpDZA">
          <ref role="1Pybhc" node="39m6c$Kgt2e" resolve="InteractionAssertions" />
          <ref role="37wK5l" node="4WxdgwJk$GQ" resolve="folding" />
          <node concept="369mXd" id="4WxdgwJk$Ng" role="37wK5m" />
        </node>
      </node>
      <node concept="3vlDli" id="4WxdgwJk$Nh" role="3cqZAp">
        <node concept="Xl_RD" id="4WxdgwJk$Ni" role="3tpDZB">
          <property role="Xl_RC" value="begin&#10;    skipend" />
        </node>
        <node concept="2YIFZM" id="4WxdgwJk$Nj" role="3tpDZA">
          <ref role="1Pybhc" node="39m6c$Kgt2e" resolve="InteractionAssertions" />
          <ref role="37wK5l" node="54cyhNXDh5E" resolve="exportLf" />
          <node concept="1jxXqW" id="4WxdgwJk$Nk" role="37wK5m" />
          <node concept="2OqwBi" id="4WxdgwJk$Nl" role="37wK5m">
            <node concept="369mXd" id="4WxdgwJk$Nm" role="2Oq$k0" />
            <node concept="liA8E" id="4WxdgwJk$Nn" role="2OqNvi">
              <ref role="37wK5l" to="exr9:~EditorComponent.getEditedNode()" resolve="getEditedNode" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="4WxdgwJk$NJ">
    <property role="TrG5h" value="TryBodyStatementBoundaryInsertion" />
    <property role="3YCmrE" value="Generated list/block policy: native editor actions, independent AST, selection and syntax assertions" />
    <node concept="1qefOq" id="4WxdgwJk$NK" role="25YQCW">
      <node concept="3nZI$l" id="4WxdgwJk$Nu" role="1qenE9">
        <node concept="hhWPR" id="4WxdgwJk$Nv" role="2uj4aY">
          <node concept="2um2pr" id="4WxdgwJk$Nw" role="336h3k">
            <node concept="LIFWc" id="4WxdgwJk$NF" role="lGtFl">
              <property role="LIFWd" value="Constant_7h2wce_a0" />
              <property role="LIFWa" value="4" />
              <property role="p6zMq" value="4" />
              <property role="p6zMs" value="4" />
            </node>
          </node>
        </node>
        <node concept="2se23U" id="4WxdgwJk$Nx" role="pHV$$">
          <node concept="hhWPR" id="4WxdgwJk$Ny" role="3MVAyh">
            <node concept="2um2pr" id="4WxdgwJk$Nz" role="336h3k" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="4WxdgwJk$NL" role="25YQFr">
      <node concept="3nZI$l" id="4WxdgwJk$N$" role="1qenE9">
        <node concept="hhWPR" id="4WxdgwJk$N_" role="2uj4aY">
          <node concept="2um2pr" id="4WxdgwJk$NA" role="336h3k" />
          <node concept="2um2pr" id="4WxdgwJk$NB" role="336h3k">
            <node concept="LIFWc" id="4WxdgwJk$NG" role="lGtFl">
              <property role="LIFWd" value="Constant_7h2wce_a0" />
              <property role="LIFWa" value="4" />
              <property role="p6zMq" value="4" />
              <property role="p6zMs" value="4" />
            </node>
          </node>
        </node>
        <node concept="2se23U" id="4WxdgwJk$NC" role="pHV$$">
          <node concept="hhWPR" id="4WxdgwJk$ND" role="3MVAyh">
            <node concept="2um2pr" id="4WxdgwJk$NE" role="336h3k" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="4WxdgwJk$NM" role="LjaKd">
      <node concept="2HxZob" id="4WxdgwJk$NH" role="3cqZAp">
        <node concept="3iKlGA" id="4WxdgwJk$NI" role="3iKnsn">
          <property role="3iKnse" value="jetbrains.mps.ide.editor.actions.Insert_Action" />
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="4WxdgwJk$O3">
    <property role="TrG5h" value="TryBodyBoundaryEnter" />
    <property role="3YCmrE" value="Generated list/block policy: native editor actions, independent AST, selection and syntax assertions" />
    <node concept="1qefOq" id="4WxdgwJk$O4" role="25YQCW">
      <node concept="3nZI$l" id="4WxdgwJk$NN" role="1qenE9">
        <node concept="hhWPR" id="4WxdgwJk$NO" role="2uj4aY">
          <node concept="2um2pr" id="4WxdgwJk$NP" role="336h3k" />
          <node concept="LIFWc" id="4WxdgwJk$NZ" role="lGtFl">
            <property role="LIFWd" value="closing_statements" />
            <property role="LIFWa" value="3" />
            <property role="p6zMq" value="3" />
            <property role="p6zMs" value="3" />
          </node>
        </node>
        <node concept="2se23U" id="4WxdgwJk$NQ" role="pHV$$">
          <node concept="hhWPR" id="4WxdgwJk$NR" role="3MVAyh">
            <node concept="2um2pr" id="4WxdgwJk$NS" role="336h3k" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="4WxdgwJk$O5" role="25YQFr">
      <node concept="3nZI$l" id="4WxdgwJk$NT" role="1qenE9">
        <node concept="hhWPR" id="4WxdgwJk$NU" role="2uj4aY">
          <node concept="2um2pr" id="4WxdgwJk$NV" role="336h3k" />
          <node concept="LIFWc" id="4WxdgwJk$O0" role="lGtFl">
            <property role="LIFWd" value="closing_statements" />
            <property role="LIFWa" value="3" />
            <property role="p6zMq" value="3" />
            <property role="p6zMs" value="3" />
          </node>
        </node>
        <node concept="2se23U" id="4WxdgwJk$NW" role="pHV$$">
          <node concept="hhWPR" id="4WxdgwJk$NX" role="3MVAyh">
            <node concept="2um2pr" id="4WxdgwJk$NY" role="336h3k" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="4WxdgwJk$O6" role="LjaKd">
      <node concept="2HxZob" id="4WxdgwJk$O1" role="3cqZAp">
        <node concept="3iKlGA" id="4WxdgwJk$O2" role="3iKnsn">
          <property role="3iKnse" value="jetbrains.mps.ide.editor.actions.Insert_Action" />
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="4WxdgwJk$Of">
    <property role="TrG5h" value="EmptyClauseBoundaryEnter" />
    <property role="3YCmrE" value="Generated list/block policy: native editor actions, independent AST, selection and syntax assertions" />
    <node concept="1qefOq" id="4WxdgwJk$Og" role="25YQCW">
      <node concept="3nZI$l" id="4WxdgwJk$O7" role="1qenE9">
        <node concept="hhWPR" id="4WxdgwJk$O8" role="2uj4aY">
          <node concept="LIFWc" id="4WxdgwJk$Ob" role="lGtFl">
            <property role="LIFWd" value="closing_statements" />
            <property role="LIFWa" value="3" />
            <property role="p6zMq" value="3" />
            <property role="p6zMs" value="3" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="4WxdgwJk$Oh" role="25YQFr">
      <node concept="3nZI$l" id="4WxdgwJk$O9" role="1qenE9">
        <node concept="hhWPR" id="4WxdgwJk$Oa" role="2uj4aY">
          <node concept="LIFWc" id="4WxdgwJk$Oc" role="lGtFl">
            <property role="LIFWd" value="closing_statements" />
            <property role="LIFWa" value="3" />
            <property role="p6zMq" value="3" />
            <property role="p6zMs" value="3" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="4WxdgwJk$Oi" role="LjaKd">
      <node concept="2HxZob" id="4WxdgwJk$Od" role="3cqZAp">
        <node concept="3iKlGA" id="4WxdgwJk$Oe" role="3iKnsn">
          <property role="3iKnse" value="jetbrains.mps.ide.editor.actions.Insert_Action" />
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="4WxdgwJk$Oz">
    <property role="TrG5h" value="ClauseBoundaryEnter" />
    <property role="3YCmrE" value="Generated list/block policy: native editor actions, independent AST, selection and syntax assertions" />
    <node concept="1qefOq" id="4WxdgwJk$O$" role="25YQCW">
      <node concept="3nZI$l" id="4WxdgwJk$Oj" role="1qenE9">
        <node concept="hhWPR" id="4WxdgwJk$Ok" role="2uj4aY">
          <node concept="2um2pr" id="4WxdgwJk$Ol" role="336h3k" />
        </node>
        <node concept="2se23U" id="4WxdgwJk$Om" role="pHV$$">
          <node concept="hhWPR" id="4WxdgwJk$On" role="3MVAyh">
            <node concept="2um2pr" id="4WxdgwJk$Oo" role="336h3k" />
            <node concept="LIFWc" id="4WxdgwJk$Ov" role="lGtFl">
              <property role="LIFWd" value="closing_statements" />
              <property role="LIFWa" value="3" />
              <property role="p6zMq" value="3" />
              <property role="p6zMs" value="3" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="4WxdgwJk$O_" role="25YQFr">
      <node concept="3nZI$l" id="4WxdgwJk$Op" role="1qenE9">
        <node concept="hhWPR" id="4WxdgwJk$Oq" role="2uj4aY">
          <node concept="2um2pr" id="4WxdgwJk$Or" role="336h3k" />
        </node>
        <node concept="2se23U" id="4WxdgwJk$Os" role="pHV$$">
          <node concept="hhWPR" id="4WxdgwJk$Ot" role="3MVAyh">
            <node concept="2um2pr" id="4WxdgwJk$Ou" role="336h3k" />
            <node concept="LIFWc" id="4WxdgwJk$Ow" role="lGtFl">
              <property role="LIFWd" value="closing_statements" />
              <property role="LIFWa" value="3" />
              <property role="p6zMq" value="3" />
              <property role="p6zMs" value="3" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="4WxdgwJk$OA" role="LjaKd">
      <node concept="2HxZob" id="4WxdgwJk$Ox" role="3cqZAp">
        <node concept="3iKlGA" id="4WxdgwJk$Oy" role="3iKnsn">
          <property role="3iKnse" value="jetbrains.mps.ide.editor.actions.Insert_Action" />
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="4WxdgwJk$OS">
    <property role="TrG5h" value="ClauseBodyBoundaryInsertion" />
    <property role="3YCmrE" value="Generated list/block policy: native editor actions, independent AST, selection and syntax assertions" />
    <node concept="1qefOq" id="4WxdgwJk$OT" role="25YQCW">
      <node concept="3nZI$l" id="4WxdgwJk$OB" role="1qenE9">
        <node concept="hhWPR" id="4WxdgwJk$OC" role="2uj4aY">
          <node concept="2um2pr" id="4WxdgwJk$OD" role="336h3k" />
        </node>
        <node concept="2se23U" id="4WxdgwJk$OE" role="pHV$$">
          <node concept="hhWPR" id="4WxdgwJk$OF" role="3MVAyh">
            <node concept="2um2pr" id="4WxdgwJk$OG" role="336h3k">
              <node concept="LIFWc" id="4WxdgwJk$OO" role="lGtFl">
                <property role="LIFWd" value="Constant_7h2wce_a0" />
                <property role="LIFWa" value="4" />
                <property role="p6zMq" value="4" />
                <property role="p6zMs" value="4" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="4WxdgwJk$OU" role="25YQFr">
      <node concept="3nZI$l" id="4WxdgwJk$OH" role="1qenE9">
        <node concept="hhWPR" id="4WxdgwJk$OI" role="2uj4aY">
          <node concept="2um2pr" id="4WxdgwJk$OJ" role="336h3k" />
        </node>
        <node concept="2se23U" id="4WxdgwJk$OK" role="pHV$$">
          <node concept="hhWPR" id="4WxdgwJk$OL" role="3MVAyh">
            <node concept="2um2pr" id="4WxdgwJk$OM" role="336h3k" />
            <node concept="2um2pr" id="4WxdgwJk$ON" role="336h3k">
              <node concept="LIFWc" id="4WxdgwJk$OP" role="lGtFl">
                <property role="LIFWd" value="Constant_7h2wce_a0" />
                <property role="LIFWa" value="4" />
                <property role="p6zMq" value="4" />
                <property role="p6zMs" value="4" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="4WxdgwJk$OV" role="LjaKd">
      <node concept="2HxZob" id="4WxdgwJk$OQ" role="3cqZAp">
        <node concept="3iKlGA" id="4WxdgwJk$OR" role="3iKnsn">
          <property role="3iKnse" value="jetbrains.mps.ide.editor.actions.Insert_Action" />
        </node>
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="4WxdgwJk$OW">
    <property role="TrG5h" value="BlockTriviaPersistence" />
    <node concept="1qefOq" id="4WxdgwJk$P5" role="1SKRRt">
      <node concept="hhWPR" id="4WxdgwJk$OX" role="1qenE9">
        <node concept="2um2pr" id="4WxdgwJk$OY" role="336h3k" />
        <node concept="2um2pr" id="4WxdgwJk$OZ" role="336h3k" />
        <node concept="2juEzV" id="1_rOk2kk6qc" role="lGtFl">
          <property role="2juEzW" value="statements" />
          <node concept="2juEzX" id="1_rOk2kk6qb" role="2juEzL">
            <property role="2juEzY" value="first" />
            <ref role="2juEzK" node="4WxdgwJk$OY" />
          </node>
          <node concept="2juEzX" id="1_rOk2kk6qa" role="2juEzL">
            <property role="2juEzY" value="" />
            <property role="2juEzZ" value="true" />
            <ref role="2juEzK" node="4WxdgwJk$OZ" />
          </node>
          <node concept="2juEzX" id="1_rOk2kk6q9" role="2juEzL">
            <property role="2juEzY" value="tail" />
          </node>
        </node>
        <node concept="3xLA65" id="4WxdgwJk$P4" role="lGtFl">
          <property role="TrG5h" value="commentsAndBlankLinesReloadFixture" />
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="4WxdgwJk$P6" role="1SL9yI">
      <property role="TrG5h" value="commentsAndBlankLinesReload" />
      <node concept="3cqZAl" id="4WxdgwJk$P7" role="3clF45" />
      <node concept="3clFbS" id="4WxdgwJk$P8" role="3clF47">
        <node concept="3vlDli" id="4WxdgwJk$Pa" role="3cqZAp">
          <node concept="Xl_RD" id="4WxdgwJk$Pb" role="3tpDZB">
            <property role="Xl_RC" value="statements=2;child=absent|begin&#10;    // first&#10;    skip;&#10;    &#10;    skip&#10;    // tail&#10;end" />
          </node>
          <node concept="2YIFZM" id="4WxdgwJk$Pc" role="3tpDZA">
            <ref role="1Pybhc" node="2HLwPyRZvlf" resolve="BlockPersistenceFacts" />
            <ref role="37wK5l" node="2HLwPyRZvmq" resolve="reload" />
            <node concept="1jxXqW" id="4WxdgwJk$Pd" role="37wK5m" />
            <node concept="3xONca" id="4WxdgwJk$Pe" role="37wK5m">
              <ref role="3xOPvv" node="4WxdgwJk$P4" resolve="commentsAndBlankLinesReloadFixture" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="4WxdgwJk$P9" role="Sfmx6">
        <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
      </node>
    </node>
    <node concept="1qefOq" id="4WxdgwJk$Pn" role="1SKRRt">
      <node concept="hhWPR" id="4WxdgwJk$Pf" role="1qenE9">
        <node concept="2um2pr" id="4WxdgwJk$Pg" role="336h3k" />
        <node concept="2um2pr" id="4WxdgwJk$Ph" role="336h3k" />
        <node concept="2juEzV" id="1_rOk2kk6q8" role="lGtFl">
          <property role="2juEzW" value="statements" />
          <node concept="2juEzX" id="1_rOk2kk6q7" role="2juEzL">
            <property role="2juEzY" value="first" />
            <ref role="2juEzK" node="4WxdgwJk$Ph" />
          </node>
          <node concept="2juEzX" id="1_rOk2kk6q6" role="2juEzL">
            <property role="2juEzY" value="" />
            <property role="2juEzZ" value="true" />
            <ref role="2juEzK" node="4WxdgwJk$Pg" />
          </node>
          <node concept="2juEzX" id="1_rOk2kk6q5" role="2juEzL">
            <property role="2juEzY" value="tail" />
          </node>
        </node>
        <node concept="3xLA65" id="4WxdgwJk$Pm" role="lGtFl">
          <property role="TrG5h" value="referenceAnchorsReloadAfterReorderFixture" />
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="4WxdgwJk$Po" role="1SL9yI">
      <property role="TrG5h" value="referenceAnchorsReloadAfterReorder" />
      <node concept="3cqZAl" id="4WxdgwJk$Pp" role="3clF45" />
      <node concept="3clFbS" id="4WxdgwJk$Pq" role="3clF47">
        <node concept="3vlDli" id="4WxdgwJk$Ps" role="3cqZAp">
          <node concept="Xl_RD" id="4WxdgwJk$Pt" role="3tpDZB">
            <property role="Xl_RC" value="statements=2;child=absent|begin&#10;    &#10;    skip;&#10;    // first&#10;    skip&#10;    // tail&#10;end" />
          </node>
          <node concept="2YIFZM" id="4WxdgwJk$Pu" role="3tpDZA">
            <ref role="1Pybhc" node="2HLwPyRZvlf" resolve="BlockPersistenceFacts" />
            <ref role="37wK5l" node="2HLwPyRZvmq" resolve="reload" />
            <node concept="1jxXqW" id="4WxdgwJk$Pv" role="37wK5m" />
            <node concept="3xONca" id="4WxdgwJk$Pw" role="37wK5m">
              <ref role="3xOPvv" node="4WxdgwJk$Pm" resolve="referenceAnchorsReloadAfterReorderFixture" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="4WxdgwJk$Pr" role="Sfmx6">
        <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="3$fueB0rEFl">
    <property role="TrG5h" value="BlockEmptyListEnter" />
    <property role="3YCmrE" value="Native Insert_Action uses the opted-in semantic element factory, not grammar trivia" />
    <node concept="3clFbS" id="3$fueB0rEFm" role="LjaKd">
      <node concept="2HxZob" id="3$fueB0rEFE" role="3cqZAp">
        <node concept="3iKlGA" id="3$fueB0rEFF" role="3iKnsn">
          <property role="3iKnse" value="jetbrains.mps.ide.editor.actions.Insert_Action" />
        </node>
      </node>
      <node concept="3vlDli" id="3$fueB0rEFr" role="3cqZAp">
        <node concept="Xl_RD" id="3$fueB0rEFs" role="3tpDZB">
          <property role="Xl_RC" value="begin&#10;    skipend" />
        </node>
        <node concept="2YIFZM" id="3$fueB0rEFt" role="3tpDZA">
          <ref role="1Pybhc" node="39m6c$Kgt2e" resolve="InteractionAssertions" />
          <ref role="37wK5l" node="54cyhNXDh5E" resolve="exportLf" />
          <node concept="1jxXqW" id="3$fueB0rEFu" role="37wK5m" />
          <node concept="2OqwBi" id="3$fueB0rEFv" role="37wK5m">
            <node concept="369mXd" id="3$fueB0rEFw" role="2Oq$k0" />
            <node concept="liA8E" id="3$fueB0rEFx" role="2OqNvi">
              <ref role="37wK5l" to="exr9:~EditorComponent.getEditedNode()" resolve="getEditedNode" />
            </node>
          </node>
        </node>
        <node concept="3_1$Yv" id="3$fueB0rEFy" role="3_9lra">
          <node concept="Xl_RD" id="3$fueB0rEFz" role="3_1BAH">
            <property role="Xl_RC" value="BlockEmptyListTyping: expected first statement between block delimiters" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="3$fueB0rEF$" role="25YQCW">
      <node concept="hhWPR" id="3$fueB0rEF_" role="1qenE9">
        <node concept="LIFWc" id="3$fueB0rEFA" role="lGtFl">
          <property role="LIFWd" value="empty_statements" />
          <property role="LIFWa" value="0" />
          <property role="p6zMq" value="0" />
          <property role="p6zMs" value="0" />
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="3$fueB0rEFB" role="25YQFr">
      <node concept="hhWPR" id="3$fueB0rEFC" role="1qenE9">
        <node concept="2um2pr" id="3$fueB0rEFD" role="336h3k" />
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="3$fueB0rEFG">
    <property role="TrG5h" value="BlockTriviaValidation" />
    <node concept="1qefOq" id="3$fueB0rEFO" role="1SKRRt">
      <node concept="hhWPR" id="3$fueB0rEFH" role="1qenE9">
        <node concept="2um2pr" id="3$fueB0rEFI" role="336h3k" />
        <node concept="2juEzV" id="3$fueB0rEFJ" role="lGtFl">
          <property role="2juEzW" value="statements" />
          <node concept="2juEzX" id="3$fueB0rEFK" role="2juEzL">
            <property role="2juEzY" value="not empty" />
            <ref role="2juEzK" node="3$fueB0rEFM" />
          </node>
        </node>
        <node concept="hhWPR" id="3$fueB0rEFL" role="2kTR_Y">
          <node concept="2um2pr" id="3$fueB0rEFM" role="336h3k" />
        </node>
        <node concept="3xLA65" id="3$fueB0rEFN" role="lGtFl">
          <property role="TrG5h" value="foreignAnchorIsRejectedFixture" />
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="3$fueB0rEFP" role="1SL9yI">
      <property role="TrG5h" value="foreignAnchorIsRejected" />
      <node concept="3cqZAl" id="3$fueB0rEFQ" role="3clF45" />
      <node concept="3clFbS" id="3$fueB0rEFR" role="3clF47">
        <node concept="3vlDli" id="3$fueB0rEFS" role="3cqZAp">
          <node concept="Xl_RD" id="3$fueB0rEFT" role="3tpDZB">
            <property role="Xl_RC" value="Trivia anchor must be an element of its owner's designated list" />
          </node>
          <node concept="2YIFZM" id="3$fueB0rEFU" role="3tpDZA">
            <ref role="1Pybhc" node="39m6c$Kgt2e" resolve="InteractionAssertions" />
            <ref role="37wK5l" node="3$fueB0rEzJ" resolve="triviaValidation" />
            <node concept="3xONca" id="3$fueB0rEFV" role="37wK5m">
              <ref role="3xOPvv" node="3$fueB0rEFN" resolve="foreignAnchorIsRejectedFixture" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="3$fueB0rEG1" role="1SKRRt">
      <node concept="hhWPR" id="3$fueB0rEFW" role="1qenE9">
        <node concept="2um2pr" id="3$fueB0rEFX" role="336h3k" />
        <node concept="2juEzV" id="3$fueB0rEFY" role="lGtFl">
          <property role="2juEzW" value="statements" />
          <node concept="2juEzX" id="3$fueB0rEFZ" role="2juEzL">
            <property role="2juEzY" value="first&#10;second" />
            <ref role="2juEzK" node="3$fueB0rEFX" />
          </node>
        </node>
        <node concept="3xLA65" id="3$fueB0rEG0" role="lGtFl">
          <property role="TrG5h" value="multilineCommentIsRejectedFixture" />
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="3$fueB0rEG2" role="1SL9yI">
      <property role="TrG5h" value="multilineCommentIsRejected" />
      <node concept="3cqZAl" id="3$fueB0rEG3" role="3clF45" />
      <node concept="3clFbS" id="3$fueB0rEG4" role="3clF47">
        <node concept="3vlDli" id="3$fueB0rEG5" role="3cqZAp">
          <node concept="Xl_RD" id="3$fueB0rEG6" role="3tpDZB">
            <property role="Xl_RC" value="Use one comment line per chunk; blank-line chunks have empty text" />
          </node>
          <node concept="2YIFZM" id="3$fueB0rEG7" role="3tpDZA">
            <ref role="1Pybhc" node="39m6c$Kgt2e" resolve="InteractionAssertions" />
            <ref role="37wK5l" node="3$fueB0rEzJ" resolve="triviaValidation" />
            <node concept="3xONca" id="3$fueB0rEG8" role="37wK5m">
              <ref role="3xOPvv" node="3$fueB0rEG0" resolve="multilineCommentIsRejectedFixture" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="3$fueB0rEGe" role="1SKRRt">
      <node concept="hhWPR" id="3$fueB0rEG9" role="1qenE9">
        <node concept="2um2pr" id="3$fueB0rEGa" role="336h3k" />
        <node concept="2juEzV" id="3$fueB0rEGb" role="lGtFl">
          <property role="2juEzW" value="statements" />
          <node concept="2juEzX" id="3$fueB0rEGc" role="2juEzL">
            <property role="2juEzY" value="not empty" />
            <property role="2juEzZ" value="true" />
            <ref role="2juEzK" node="3$fueB0rEGa" />
          </node>
        </node>
        <node concept="3xLA65" id="3$fueB0rEGd" role="lGtFl">
          <property role="TrG5h" value="nonemptyBlankLineIsRejectedFixture" />
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="3$fueB0rEGf" role="1SL9yI">
      <property role="TrG5h" value="nonemptyBlankLineIsRejected" />
      <node concept="3cqZAl" id="3$fueB0rEGg" role="3clF45" />
      <node concept="3clFbS" id="3$fueB0rEGh" role="3clF47">
        <node concept="3vlDli" id="3$fueB0rEGi" role="3cqZAp">
          <node concept="Xl_RD" id="3$fueB0rEGj" role="3tpDZB">
            <property role="Xl_RC" value="Use one comment line per chunk; blank-line chunks have empty text" />
          </node>
          <node concept="2YIFZM" id="3$fueB0rEGk" role="3tpDZA">
            <ref role="1Pybhc" node="39m6c$Kgt2e" resolve="InteractionAssertions" />
            <ref role="37wK5l" node="3$fueB0rEzJ" resolve="triviaValidation" />
            <node concept="3xONca" id="3$fueB0rEGl" role="37wK5m">
              <ref role="3xOPvv" node="3$fueB0rEGd" resolve="nonemptyBlankLineIsRejectedFixture" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

