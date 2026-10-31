<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:c627b3b6-dfdb-4f8a-bb6a-92d59196d8fd(metabnf.editor.tests.usability@tests)">
  <persistence version="9" />
  <languages>
    <use id="8585453e-6bfb-4d80-98de-b16074f1d86c" name="jetbrains.mps.lang.test" version="6" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest" version="1" />
    <use id="9c03c641-469f-49e7-aeed-44a3d19b7253" name="metabnf" version="0" />
    <use id="711aebfa-a9db-4765-b49c-bbdc45921ab7" name="DemoUsability" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
    <devkit ref="c58990b8-665e-4423-bdd8-0d527a8266cb(jetbrains.mps.devkit.tests)" />
  </languages>
  <imports>
    <import index="9toz" ref="9c03c641-469f-49e7-aeed-44a3d19b7253/java:metabnf.usability(metabnf/)" />
    <import index="53k3" ref="r:011bf063-59a8-47cb-ac0b-13bb2393ad50(metabnf.aspectgen.generation)" />
    <import index="6o2a" ref="r:0fbcf19f-c60b-479b-81cb-094b5b2b9f1d(metabnf.structure)" />
    <import index="n2m4" ref="r:29df74a9-1ef8-4ba0-9f28-0451ab1e71a4(DemoUsability.structure)" />
    <import index="tpc2" ref="r:00000000-0000-4000-0000-011c8959029e(jetbrains.mps.lang.editor.structure)" />
    <import index="f55a" ref="r:8598bcb3-b739-42c2-b1fc-32c367683d7c(jetbrains.mps.lang.editor.forms.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="dush" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.persistence(MPS.OpenAPI/)" />
    <import index="ap4t" ref="215c4c45-ba99-49f5-9ab7-4b6901a63cfd/java:jetbrains.mps.generator(MPS.Generator/)" />
    <import index="3ju5" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.vfs(MPS.Core/)" />
    <import index="ends" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.extapi.persistence(MPS.Core/)" />
    <import index="eoo2" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.nio.file(JDK/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="et5u" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.messages(MPS.Core/)" />
    <import index="g3l6" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.extapi.model(MPS.Core/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="tqvn" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.tempmodel(MPS.Core/)" />
    <import index="ao3" ref="7124e466-fc92-4803-a656-d7a6b7eb3910/java:jetbrains.mps.text(MPS.TextGen/)" />
    <import index="fwk" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.textgen.trace(MPS.Core/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="mk8z" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.progress(MPS.Core/)" />
    <import index="18ew" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.util(MPS.Core/)" />
    <import index="wyuk" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.components(MPS.Core/)" />
  </imports>
  <registry>
    <language id="8585453e-6bfb-4d80-98de-b16074f1d86c" name="jetbrains.mps.lang.test">
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
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="8118189177080264853" name="jetbrains.mps.baseLanguage.structure.AlternativeType" flags="ig" index="nSUau">
        <child id="8118189177080264854" name="alternative" index="nSUat" />
      </concept>
      <concept id="1239714755177" name="jetbrains.mps.baseLanguage.structure.AbstractUnaryNumberOperation" flags="nn" index="2$Kvd9">
        <child id="1239714902950" name="expression" index="2$L3a6" />
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
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="4952749571008284462" name="jetbrains.mps.baseLanguage.structure.CatchVariable" flags="ng" index="XOnhg" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
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
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_" />
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
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
      <concept id="8064396509828172209" name="jetbrains.mps.baseLanguage.structure.UnaryMinus" flags="nn" index="1ZRNhn" />
    </language>
    <language id="9c03c641-469f-49e7-aeed-44a3d19b7253" name="metabnf">
      <concept id="4939832016427306382" name="metabnf.structure.Flag" flags="ng" index="2DNoa5" />
      <concept id="656738873848441252" name="metabnf.structure.UsabilityAnnotation" flags="ng" index="2WW1Oy">
        <property id="656738873848441254" name="suppressed" index="2WW1Ow" />
        <property id="656738873848441255" name="evidence" index="2WW1Ox" />
        <property id="656738873848441253" name="origin" index="2WW1Oz" />
      </concept>
      <concept id="656738873848441251" name="metabnf.structure.UsabilityAnnotations" flags="ng" index="2WW1O_">
        <reference id="656738873848441256" name="grammar" index="2WW1OI" />
        <child id="656738873848441257" name="annotations" index="2WW1OJ" />
      </concept>
      <concept id="656738873848441262" name="metabnf.structure.OptionalGroupAnnotation" flags="ng" index="2WW1OC">
        <property id="656738873848441266" name="distinguishEmpty" index="2WW1OO" />
        <reference id="656738873848441263" name="owner" index="2WW1OD" />
        <reference id="656738873848441264" name="first" index="2WW1OQ" />
        <reference id="656738873848441265" name="last" index="2WW1OR" />
      </concept>
      <concept id="656738873848441260" name="metabnf.structure.ListAnnotation" flags="ng" index="2WW1OE">
        <reference id="656738873848441261" name="target" index="2WW1OF" />
      </concept>
      <concept id="656738873848441258" name="metabnf.structure.FlagAnnotation" flags="ng" index="2WW1OG">
        <reference id="656738873848441259" name="target" index="2WW1OH" />
      </concept>
      <concept id="1320136301544282198" name="metabnf.structure.StringProperty" flags="ng" index="3uXKyI" />
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
    </language>
    <language id="711aebfa-a9db-4765-b49c-bbdc45921ab7" name="DemoUsability">
      <concept id="131190632983854520" name="DemoUsability.structure.Declaration" flags="ng" index="253Ayn">
        <property id="425049498302749281" name="identifier" index="13FgS_" />
        <property id="747412491540730435" name="public" index="1KDGnK" />
        <child id="457787586736161879" name="clause" index="1ZD6sP" />
      </concept>
      <concept id="894050251499783735" name="DemoUsability.structure.ElseClause" flags="ng" index="2f_wJ0">
        <child id="541487496020076895" name="statements" index="X56_t" />
      </concept>
      <concept id="330703645346546541" name="DemoUsability.structure.Statement" flags="ng" index="2um2pr" />
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
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1143226024141" name="jetbrains.mps.lang.smodel.structure.SModelType" flags="in" index="H_c77" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1966870290088668512" name="jetbrains.mps.lang.smodel.structure.Enum_MemberLiteral" flags="ng" index="2ViDtV">
        <reference id="1966870290088668516" name="memberDeclaration" index="2ViDtZ" />
      </concept>
      <concept id="2644386474302386080" name="jetbrains.mps.lang.smodel.structure.PropertyIdRefExpression" flags="nn" index="355D3s">
        <reference id="2644386474302386081" name="conceptDeclaration" index="355D3t" />
        <reference id="2644386474302386082" name="propertyDeclaration" index="355D3u" />
      </concept>
      <concept id="2644386474301421077" name="jetbrains.mps.lang.smodel.structure.LinkIdRefExpression" flags="nn" index="359W_D">
        <reference id="2644386474301421078" name="conceptDeclaration" index="359W_E" />
        <reference id="2644386474301421079" name="linkDeclaration" index="359W_F" />
      </concept>
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="nn" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
      </concept>
      <concept id="6677504323281689838" name="jetbrains.mps.lang.smodel.structure.SConceptType" flags="in" index="3bZ5Sz" />
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2" />
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="5779574625830813396" name="jetbrains.mps.lang.smodel.structure.EnumerationIdRefExpression" flags="ng" index="1XH99k">
        <reference id="5779574625830813397" name="enumDeclaration" index="1XH99l" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="2RLAZYE0yUU">
    <property role="TrG5h" value="UsabilityScenario" />
    <property role="1EXbeo" value="true" />
    <node concept="3Tm1VV" id="2RLAZYE0yUV" role="1B3o_S" />
    <node concept="Wx3nA" id="2RLAZYE0yUW" role="jymVt">
      <property role="TrG5h" value="FLAG" />
      <property role="3TUv4t" value="true" />
      <node concept="3bZ5Sz" id="2RLAZYE0TrO" role="1tU5fm" />
      <node concept="3Tm6S6" id="2RLAZYE0yUZ" role="1B3o_S" />
      <node concept="35c_gC" id="2RLAZYE0DGp" role="33vP2m">
        <ref role="35c_gD" to="6o2a:4idNKJHg4Qe" resolve="Flag" />
      </node>
    </node>
    <node concept="Wx3nA" id="2RLAZYE0yV0" role="jymVt">
      <property role="TrG5h" value="GROUP" />
      <property role="3TUv4t" value="true" />
      <node concept="3bZ5Sz" id="2RLAZYE0TrP" role="1tU5fm" />
      <node concept="3Tm6S6" id="2RLAZYE0yV3" role="1B3o_S" />
      <node concept="35c_gC" id="2RLAZYE0DGq" role="33vP2m">
        <ref role="35c_gD" to="6o2a:$td8qPViAI" resolve="OptionalGroupAnnotation" />
      </node>
    </node>
    <node concept="Wx3nA" id="2RLAZYE0yV4" role="jymVt">
      <property role="TrG5h" value="REFERENCE" />
      <property role="3TUv4t" value="true" />
      <node concept="3bZ5Sz" id="2RLAZYE0TrQ" role="1tU5fm" />
      <node concept="3Tm6S6" id="2RLAZYE0yV7" role="1B3o_S" />
      <node concept="35c_gC" id="2RLAZYE0DGr" role="33vP2m">
        <ref role="35c_gD" to="6o2a:2b2ZYR3ypJF" resolve="NonterminalReference" />
      </node>
    </node>
    <node concept="Wx3nA" id="2RLAZYE0yV8" role="jymVt">
      <property role="TrG5h" value="EDITOR" />
      <property role="3TUv4t" value="true" />
      <node concept="3bZ5Sz" id="2RLAZYE0TrR" role="1tU5fm" />
      <node concept="3Tm6S6" id="2RLAZYE0yVb" role="1B3o_S" />
      <node concept="35c_gC" id="2RLAZYE0DGs" role="33vP2m">
        <ref role="35c_gD" to="tpc2:fA4kQeF" resolve="ConceptEditorDeclaration" />
      </node>
    </node>
    <node concept="Wx3nA" id="2RLAZYE0yVc" role="jymVt">
      <property role="TrG5h" value="ACCESS" />
      <property role="3TUv4t" value="true" />
      <node concept="3bZ5Sz" id="2RLAZYE0TrS" role="1tU5fm" />
      <node concept="3Tm6S6" id="2RLAZYE0yVf" role="1B3o_S" />
      <node concept="35c_gC" id="2RLAZYE0DGt" role="33vP2m">
        <ref role="35c_gD" to="tpc2:fCXafTX" resolve="CellModel_ModelAccess" />
      </node>
    </node>
    <node concept="Wx3nA" id="2RLAZYE0yVg" role="jymVt">
      <property role="TrG5h" value="CHECKBOX" />
      <property role="3TUv4t" value="true" />
      <node concept="3bZ5Sz" id="2RLAZYE0TrT" role="1tU5fm" />
      <node concept="3Tm6S6" id="2RLAZYE0yVj" role="1B3o_S" />
      <node concept="35c_gC" id="2RLAZYE0DGu" role="33vP2m">
        <ref role="35c_gD" to="f55a:hlYdQAfmdS" resolve="CellModel_Checkbox" />
      </node>
    </node>
    <node concept="Wx3nA" id="2RLAZYE0yVk" role="jymVt">
      <property role="TrG5h" value="DECLARATION" />
      <property role="3TUv4t" value="true" />
      <node concept="3bZ5Sz" id="2RLAZYE0TrU" role="1tU5fm" />
      <node concept="3Tm6S6" id="2RLAZYE0yVn" role="1B3o_S" />
      <node concept="35c_gC" id="2RLAZYE0DGv" role="33vP2m">
        <ref role="35c_gD" to="n2m4:dIPqnga0qR" resolve="Declaration" />
      </node>
    </node>
    <node concept="Wx3nA" id="2RLAZYE0yVs" role="jymVt">
      <property role="TrG5h" value="STATEMENT" />
      <property role="3TUv4t" value="true" />
      <node concept="3bZ5Sz" id="2RLAZYE0TrW" role="1tU5fm" />
      <node concept="3Tm6S6" id="2RLAZYE0yVv" role="1B3o_S" />
      <node concept="35c_gC" id="2RLAZYE0DGx" role="33vP2m">
        <ref role="35c_gD" to="n2m4:pokUpJQ$xE" resolve="Statement" />
      </node>
    </node>
    <node concept="Wx3nA" id="2RLAZYE0yVw" role="jymVt">
      <property role="TrG5h" value="NAME" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="2RLAZYE0yVx" role="1tU5fm">
        <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
      </node>
      <node concept="3Tm6S6" id="2RLAZYE0yVz" role="1B3o_S" />
      <node concept="355D3s" id="2RLAZYE0DGy" role="33vP2m">
        <ref role="355D3t" to="tpck:h0TrEE$" resolve="INamedConcept" />
        <ref role="355D3u" to="tpck:h0TrG11" resolve="name" />
      </node>
    </node>
    <node concept="Wx3nA" id="2RLAZYE0yV$" role="jymVt">
      <property role="TrG5h" value="FLAG_STATE" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="2RLAZYE0yV_" role="1tU5fm">
        <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
      </node>
      <node concept="3Tm6S6" id="2RLAZYE0yVB" role="1B3o_S" />
      <node concept="355D3s" id="2RLAZYE0DGz" role="33vP2m">
        <ref role="355D3t" to="n2m4:dIPqnga0qR" resolve="Declaration" />
        <ref role="355D3u" to="n2m4:27ycVzfuMb" resolve="public" />
      </node>
    </node>
    <node concept="Wx3nA" id="2RLAZYE0yVC" role="jymVt">
      <property role="TrG5h" value="IDENTIFIER" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="2RLAZYE0yVD" role="1tU5fm">
        <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
      </node>
      <node concept="3Tm6S6" id="2RLAZYE0yVF" role="1B3o_S" />
      <node concept="355D3s" id="2RLAZYE0DG$" role="33vP2m">
        <ref role="355D3t" to="n2m4:dIPqnga0qR" resolve="Declaration" />
        <ref role="355D3u" to="n2m4:kvdqv6tNUD" resolve="identifier" />
      </node>
    </node>
    <node concept="Wx3nA" id="2RLAZYE0yVG" role="jymVt">
      <property role="TrG5h" value="OWNER" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="2RLAZYE0yVH" role="1tU5fm">
        <ref role="3uigEE" to="c17a:~SReferenceLink" resolve="SReferenceLink" />
      </node>
      <node concept="3Tm6S6" id="2RLAZYE0yVJ" role="1B3o_S" />
      <node concept="359W_D" id="2RLAZYE0DG_" role="33vP2m">
        <ref role="359W_E" to="6o2a:$td8qPViAI" resolve="OptionalGroupAnnotation" />
        <ref role="359W_F" to="6o2a:$td8qPViAJ" resolve="owner" />
      </node>
    </node>
    <node concept="Wx3nA" id="2RLAZYE0yVK" role="jymVt">
      <property role="TrG5h" value="FIRST" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="2RLAZYE0yVL" role="1tU5fm">
        <ref role="3uigEE" to="c17a:~SReferenceLink" resolve="SReferenceLink" />
      </node>
      <node concept="3Tm6S6" id="2RLAZYE0yVN" role="1B3o_S" />
      <node concept="359W_D" id="2RLAZYE0DGA" role="33vP2m">
        <ref role="359W_E" to="6o2a:$td8qPViAI" resolve="OptionalGroupAnnotation" />
        <ref role="359W_F" to="6o2a:$td8qPViAK" resolve="first" />
      </node>
    </node>
    <node concept="Wx3nA" id="2RLAZYE0yVO" role="jymVt">
      <property role="TrG5h" value="LAST" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="2RLAZYE0yVP" role="1tU5fm">
        <ref role="3uigEE" to="c17a:~SReferenceLink" resolve="SReferenceLink" />
      </node>
      <node concept="3Tm6S6" id="2RLAZYE0yVR" role="1B3o_S" />
      <node concept="359W_D" id="2RLAZYE0DGB" role="33vP2m">
        <ref role="359W_E" to="6o2a:$td8qPViAI" resolve="OptionalGroupAnnotation" />
        <ref role="359W_F" to="6o2a:$td8qPViAL" resolve="last" />
      </node>
    </node>
    <node concept="Wx3nA" id="2RLAZYE0yVS" role="jymVt">
      <property role="TrG5h" value="RULE" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="2RLAZYE0yVT" role="1tU5fm">
        <ref role="3uigEE" to="c17a:~SReferenceLink" resolve="SReferenceLink" />
      </node>
      <node concept="3Tm6S6" id="2RLAZYE0yVV" role="1B3o_S" />
      <node concept="359W_D" id="2RLAZYE0DGC" role="33vP2m">
        <ref role="359W_E" to="6o2a:2b2ZYR3ypJF" resolve="NonterminalReference" />
        <ref role="359W_F" to="6o2a:2b2ZYR3ypJI" resolve="rule" />
      </node>
    </node>
    <node concept="Wx3nA" id="2RLAZYE0yVW" role="jymVt">
      <property role="TrG5h" value="EDITED_CONCEPT" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="2RLAZYE0yVX" role="1tU5fm">
        <ref role="3uigEE" to="c17a:~SReferenceLink" resolve="SReferenceLink" />
      </node>
      <node concept="3Tm6S6" id="2RLAZYE0yVZ" role="1B3o_S" />
      <node concept="359W_D" id="2RLAZYE0DGD" role="33vP2m">
        <ref role="359W_E" to="tpc2:gXXWOiD" resolve="AbstractComponent" />
        <ref role="359W_F" to="tpc2:gXXX56I" resolve="conceptDeclaration" />
      </node>
    </node>
    <node concept="Wx3nA" id="2RLAZYE0yW0" role="jymVt">
      <property role="TrG5h" value="CELL" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="2RLAZYE0yW1" role="1tU5fm">
        <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
      </node>
      <node concept="3Tm6S6" id="2RLAZYE0yW3" role="1B3o_S" />
      <node concept="359W_D" id="2RLAZYE0DGE" role="33vP2m">
        <ref role="359W_E" to="tpc2:fIwURLg" resolve="BaseEditorComponent" />
        <ref role="359W_F" to="tpc2:fIwV5gl" resolve="cellModel" />
      </node>
    </node>
    <node concept="Wx3nA" id="2RLAZYE0yW4" role="jymVt">
      <property role="TrG5h" value="INSPECTOR" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="2RLAZYE0yW5" role="1tU5fm">
        <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
      </node>
      <node concept="3Tm6S6" id="2RLAZYE0yW7" role="1B3o_S" />
      <node concept="359W_D" id="2RLAZYE0DGF" role="33vP2m">
        <ref role="359W_E" to="tpc2:fA4kQeF" resolve="ConceptEditorDeclaration" />
        <ref role="359W_F" to="tpc2:fG6VMW6" resolve="inspectedCellModel" />
      </node>
    </node>
    <node concept="Wx3nA" id="2RLAZYE0yW8" role="jymVt">
      <property role="TrG5h" value="CLAUSE_CHILD" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="2RLAZYE0yW9" role="1tU5fm">
        <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
      </node>
      <node concept="3Tm6S6" id="2RLAZYE0yWb" role="1B3o_S" />
      <node concept="359W_D" id="2RLAZYE0DGG" role="33vP2m">
        <ref role="359W_E" to="n2m4:dIPqnga0qR" resolve="Declaration" />
        <ref role="359W_F" to="n2m4:1sHbqs4rTK" resolve="clause" />
      </node>
    </node>
    <node concept="312cEg" id="2RLAZYE0yWg" role="jymVt">
      <property role="TrG5h" value="source" />
      <property role="3TUv4t" value="true" />
      <node concept="H_c77" id="2RLAZYE0TrX" role="1tU5fm" />
      <node concept="3Tm6S6" id="2RLAZYE0yWj" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="2RLAZYE0yWk" role="jymVt">
      <property role="TrG5h" value="copied" />
      <property role="3TUv4t" value="true" />
      <node concept="H_c77" id="2RLAZYE0TrY" role="1tU5fm" />
      <node concept="3Tm6S6" id="2RLAZYE0yWn" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="2RLAZYE0yWo" role="jymVt">
      <property role="TrG5h" value="grammar" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tqbb2" id="2RLAZYE0TrZ" role="1tU5fm" />
      <node concept="3Tm6S6" id="2RLAZYE0yWr" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="2RLAZYE0yWs" role="jymVt">
      <property role="TrG5h" value="annotations" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tqbb2" id="2RLAZYE0Ts0" role="1tU5fm" />
      <node concept="3Tm6S6" id="2RLAZYE0yWv" role="1B3o_S" />
    </node>
    <node concept="3clFbW" id="2RLAZYE0yWw" role="jymVt">
      <node concept="3cqZAl" id="2RLAZYE0yWx" role="3clF45" />
      <node concept="37vLTG" id="2RLAZYE0yWy" role="3clF46">
        <property role="TrG5h" value="grammarFixture" />
        <node concept="3Tqbb2" id="2RLAZYE0Ts1" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2RLAZYE0yW$" role="3clF46">
        <property role="TrG5h" value="annotationFixture" />
        <node concept="3Tqbb2" id="2RLAZYE0Ts2" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="2RLAZYE0yWA" role="3clF47">
        <node concept="3clFbF" id="2RLAZYE0yWB" role="3cqZAp">
          <node concept="37vLTI" id="2RLAZYE0yWC" role="3clFbG">
            <node concept="37vLTw" id="2RLAZYE0yWD" role="37vLTJ">
              <ref role="3cqZAo" node="2RLAZYE0yWg" resolve="source" />
            </node>
            <node concept="2OqwBi" id="2RLAZYE0BuJ" role="37vLTx">
              <node concept="2YIFZM" id="2RLAZYE0APh" role="2Oq$k0">
                <ref role="1Pybhc" to="tqvn:~TemporaryModels" resolve="TemporaryModels" />
                <ref role="37wK5l" to="tqvn:~TemporaryModels.getInstance()" resolve="getInstance" />
              </node>
              <node concept="liA8E" id="2RLAZYE0BuK" role="2OqNvi">
                <ref role="37wK5l" to="tqvn:~TemporaryModels.create(boolean,boolean,java.lang.String,jetbrains.mps.smodel.tempmodel.TempModuleOptions)" resolve="create" />
                <node concept="3clFbT" id="2RLAZYE0BuL" role="37wK5m" />
                <node concept="3clFbT" id="2RLAZYE0BuM" role="37wK5m" />
                <node concept="Xl_RD" id="2RLAZYE0BuN" role="37wK5m">
                  <property role="Xl_RC" value="usability.source" />
                </node>
                <node concept="2YIFZM" id="2RLAZYE0BuO" role="37wK5m">
                  <ref role="1Pybhc" to="tqvn:~TempModuleOptions" resolve="TempModuleOptions" />
                  <ref role="37wK5l" to="tqvn:~TempModuleOptions.forNewModule(org.jetbrains.mps.openapi.module.SRepository,org.jetbrains.mps.openapi.module.SModuleFacet...)" resolve="forNewModule" />
                  <node concept="2OqwBi" id="2RLAZYE0CSb" role="37wK5m">
                    <node concept="liA8E" id="2RLAZYE0CSc" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SModel.getRepository()" resolve="getRepository" />
                    </node>
                    <node concept="2JrnkZ" id="2RLAZYE0Tr3" role="2Oq$k0">
                      <node concept="2OqwBi" id="2RLAZYE0CJu" role="2JrQYb">
                        <node concept="liA8E" id="2RLAZYE0CJv" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SNode.getModel()" resolve="getModel" />
                        </node>
                        <node concept="2JrnkZ" id="2RLAZYE0Tr2" role="2Oq$k0">
                          <node concept="37vLTw" id="2RLAZYE0BPo" role="2JrQYb">
                            <ref role="3cqZAo" node="2RLAZYE0yWy" resolve="grammarFixture" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2ShNRf" id="2RLAZYE0BuR" role="37wK5m">
                    <node concept="3$_iS1" id="2RLAZYE0BuS" role="2ShVmc">
                      <node concept="3$GHV9" id="2RLAZYE0BuT" role="3$GQph">
                        <node concept="3cmrfG" id="2RLAZYE0BuU" role="3$I4v7">
                          <property role="3cmrfH" value="0" />
                        </node>
                      </node>
                      <node concept="3uibUv" id="2RLAZYE0BuV" role="3$_nBY">
                        <ref role="3uigEE" to="lui2:~SModuleFacet" resolve="SModuleFacet" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2RLAZYE0yWR" role="3cqZAp">
          <node concept="37vLTI" id="2RLAZYE0yWS" role="3clFbG">
            <node concept="37vLTw" id="2RLAZYE0yWT" role="37vLTJ">
              <ref role="3cqZAo" node="2RLAZYE0yWk" resolve="copied" />
            </node>
            <node concept="2OqwBi" id="2RLAZYE0Bv9" role="37vLTx">
              <node concept="2YIFZM" id="2RLAZYE0APA" role="2Oq$k0">
                <ref role="1Pybhc" to="tqvn:~TemporaryModels" resolve="TemporaryModels" />
                <ref role="37wK5l" to="tqvn:~TemporaryModels.getInstance()" resolve="getInstance" />
              </node>
              <node concept="liA8E" id="2RLAZYE0Bva" role="2OqNvi">
                <ref role="37wK5l" to="tqvn:~TemporaryModels.create(boolean,boolean,java.lang.String,jetbrains.mps.smodel.tempmodel.TempModuleOptions)" resolve="create" />
                <node concept="3clFbT" id="2RLAZYE0Bvb" role="37wK5m" />
                <node concept="3clFbT" id="2RLAZYE0Bvc" role="37wK5m" />
                <node concept="Xl_RD" id="2RLAZYE0Bvd" role="37wK5m">
                  <property role="Xl_RC" value="usability.copied" />
                </node>
                <node concept="2YIFZM" id="2RLAZYE0Bve" role="37wK5m">
                  <ref role="1Pybhc" to="tqvn:~TempModuleOptions" resolve="TempModuleOptions" />
                  <ref role="37wK5l" to="tqvn:~TempModuleOptions.forNewModule(org.jetbrains.mps.openapi.module.SRepository,org.jetbrains.mps.openapi.module.SModuleFacet...)" resolve="forNewModule" />
                  <node concept="2OqwBi" id="2RLAZYE0CSu" role="37wK5m">
                    <node concept="liA8E" id="2RLAZYE0CSv" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SModel.getRepository()" resolve="getRepository" />
                    </node>
                    <node concept="2JrnkZ" id="2RLAZYE0Tr5" role="2Oq$k0">
                      <node concept="2OqwBi" id="2RLAZYE0CJL" role="2JrQYb">
                        <node concept="liA8E" id="2RLAZYE0CJM" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SNode.getModel()" resolve="getModel" />
                        </node>
                        <node concept="2JrnkZ" id="2RLAZYE0Tr4" role="2Oq$k0">
                          <node concept="37vLTw" id="2RLAZYE0BP$" role="2JrQYb">
                            <ref role="3cqZAo" node="2RLAZYE0yWy" resolve="grammarFixture" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2ShNRf" id="2RLAZYE0Bvh" role="37wK5m">
                    <node concept="3$_iS1" id="2RLAZYE0Bvi" role="2ShVmc">
                      <node concept="3$GHV9" id="2RLAZYE0Bvj" role="3$GQph">
                        <node concept="3cmrfG" id="2RLAZYE0Bvk" role="3$I4v7">
                          <property role="3cmrfH" value="0" />
                        </node>
                      </node>
                      <node concept="3uibUv" id="2RLAZYE0Bvl" role="3$_nBY">
                        <ref role="3uigEE" to="lui2:~SModuleFacet" resolve="SModuleFacet" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2RLAZYE0yX8" role="3cqZAp">
          <node concept="3cpWsn" id="2RLAZYE0yX7" role="3cpWs9">
            <property role="TrG5h" value="roots" />
            <node concept="3uibUv" id="2RLAZYE0yX9" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3Tqbb2" id="2RLAZYE0Ts3" role="11_B2D" />
            </node>
            <node concept="2YIFZM" id="2RLAZYE0APN" role="33vP2m">
              <ref role="1Pybhc" to="w1kc:~CopyUtil" resolve="CopyUtil" />
              <ref role="37wK5l" to="w1kc:~CopyUtil.copy(java.util.List)" resolve="copy" />
              <node concept="2YIFZM" id="2RLAZYE0Bvp" role="37wK5m">
                <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
                <ref role="37wK5l" to="33ny:~Arrays.asList(java.lang.Object...)" resolve="asList" />
                <node concept="37vLTw" id="2RLAZYE0Bvq" role="37wK5m">
                  <ref role="3cqZAo" node="2RLAZYE0yWy" resolve="grammarFixture" />
                </node>
                <node concept="37vLTw" id="2RLAZYE0Bvr" role="37wK5m">
                  <ref role="3cqZAo" node="2RLAZYE0yW$" resolve="annotationFixture" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2RLAZYE0yXf" role="3cqZAp">
          <node concept="37vLTI" id="2RLAZYE0yXg" role="3clFbG">
            <node concept="37vLTw" id="2RLAZYE0yXh" role="37vLTJ">
              <ref role="3cqZAo" node="2RLAZYE0yWo" resolve="grammar" />
            </node>
            <node concept="2OqwBi" id="2RLAZYE0BxI" role="37vLTx">
              <node concept="37vLTw" id="2RLAZYE0APT" role="2Oq$k0">
                <ref role="3cqZAo" node="2RLAZYE0yX7" resolve="roots" />
              </node>
              <node concept="liA8E" id="2RLAZYE0BxJ" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                <node concept="3cmrfG" id="2RLAZYE0BxK" role="37wK5m">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2RLAZYE0yXk" role="3cqZAp">
          <node concept="37vLTI" id="2RLAZYE0yXl" role="3clFbG">
            <node concept="37vLTw" id="2RLAZYE0yXm" role="37vLTJ">
              <ref role="3cqZAo" node="2RLAZYE0yWs" resolve="annotations" />
            </node>
            <node concept="2OqwBi" id="2RLAZYE0B$3" role="37vLTx">
              <node concept="37vLTw" id="2RLAZYE0APY" role="2Oq$k0">
                <ref role="3cqZAo" node="2RLAZYE0yX7" resolve="roots" />
              </node>
              <node concept="liA8E" id="2RLAZYE0B$4" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                <node concept="3cmrfG" id="2RLAZYE0B$5" role="37wK5m">
                  <property role="3cmrfH" value="1" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2RLAZYE0yXp" role="3cqZAp">
          <node concept="2OqwBi" id="2RLAZYE0B$l" role="3clFbG">
            <node concept="liA8E" id="2RLAZYE0B$m" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SModel.addRootNode(org.jetbrains.mps.openapi.model.SNode)" resolve="addRootNode" />
              <node concept="37vLTw" id="2RLAZYE0B$n" role="37wK5m">
                <ref role="3cqZAo" node="2RLAZYE0yWo" resolve="grammar" />
              </node>
            </node>
            <node concept="2JrnkZ" id="2RLAZYE0Tr6" role="2Oq$k0">
              <node concept="37vLTw" id="2RLAZYE0AQ3" role="2JrQYb">
                <ref role="3cqZAo" node="2RLAZYE0yWg" resolve="source" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2RLAZYE0yXs" role="3cqZAp">
          <node concept="2OqwBi" id="2RLAZYE0B$B" role="3clFbG">
            <node concept="liA8E" id="2RLAZYE0B$C" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SModel.addRootNode(org.jetbrains.mps.openapi.model.SNode)" resolve="addRootNode" />
              <node concept="37vLTw" id="2RLAZYE0B$D" role="37wK5m">
                <ref role="3cqZAo" node="2RLAZYE0yWs" resolve="annotations" />
              </node>
            </node>
            <node concept="2JrnkZ" id="2RLAZYE0Tr7" role="2Oq$k0">
              <node concept="37vLTw" id="2RLAZYE0AQ8" role="2JrQYb">
                <ref role="3cqZAo" node="2RLAZYE0yWg" resolve="source" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2RLAZYE0yXv" role="1B3o_S" />
    </node>
    <node concept="3clFb_" id="2RLAZYE0yXw" role="jymVt">
      <property role="TrG5h" value="modifier" />
      <node concept="3clFbS" id="2RLAZYE0yXx" role="3clF47">
        <node concept="3cpWs8" id="2RLAZYE0yXz" role="3cqZAp">
          <node concept="3cpWsn" id="2RLAZYE0yXy" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="3Tqbb2" id="2RLAZYE0Ts4" role="1tU5fm" />
            <node concept="10Nm6u" id="2RLAZYE0yX_" role="33vP2m" />
          </node>
        </node>
        <node concept="1DcWWT" id="2RLAZYE0yXA" role="3cqZAp">
          <node concept="2YIFZM" id="2RLAZYE0AQd" role="1DdaDG">
            <ref role="1Pybhc" to="9toz:~ModelNodes" resolve="ModelNodes" />
            <ref role="37wK5l" to="9toz:~ModelNodes.tree(org.jetbrains.mps.openapi.model.SNode)" resolve="tree" />
            <node concept="37vLTw" id="2RLAZYE0AQe" role="37wK5m">
              <ref role="3cqZAo" node="2RLAZYE0yWo" resolve="grammar" />
            </node>
          </node>
          <node concept="3cpWsn" id="2RLAZYE0yXQ" role="1Duv9x">
            <property role="TrG5h" value="node" />
            <node concept="3Tqbb2" id="2RLAZYE0Ts5" role="1tU5fm" />
          </node>
          <node concept="3clFbS" id="2RLAZYE0yXC" role="2LFqv$">
            <node concept="3clFbJ" id="2RLAZYE0yXD" role="3cqZAp">
              <node concept="1Wc70l" id="2RLAZYE0yXE" role="3clFbw">
                <node concept="2OqwBi" id="2RLAZYE0B$S" role="3uHU7B">
                  <node concept="37vLTw" id="2RLAZYE0AQh" role="2Oq$k0">
                    <ref role="3cqZAo" node="2RLAZYE0yUW" resolve="FLAG" />
                  </node>
                  <node concept="liA8E" id="2RLAZYE0B$T" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                    <node concept="2OqwBi" id="2RLAZYE0CJW" role="37wK5m">
                      <node concept="liA8E" id="2RLAZYE0CJX" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                      </node>
                      <node concept="2JrnkZ" id="2RLAZYE0Tr8" role="2Oq$k0">
                        <node concept="37vLTw" id="2RLAZYE0BPC" role="2JrQYb">
                          <ref role="3cqZAo" node="2RLAZYE0yXQ" resolve="node" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="2RLAZYE0AQy" role="3uHU7w">
                  <node concept="Xl_RD" id="2RLAZYE0yXI" role="2Oq$k0">
                    <property role="Xl_RC" value="public" />
                  </node>
                  <node concept="liA8E" id="2RLAZYE0AQz" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                    <node concept="2OqwBi" id="2RLAZYE0BPN" role="37wK5m">
                      <node concept="liA8E" id="2RLAZYE0BPO" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getProperty(org.jetbrains.mps.openapi.language.SProperty)" resolve="getProperty" />
                        <node concept="37vLTw" id="2RLAZYE0BPP" role="37wK5m">
                          <ref role="3cqZAo" node="2RLAZYE0yVw" resolve="NAME" />
                        </node>
                      </node>
                      <node concept="2JrnkZ" id="2RLAZYE0Tr9" role="2Oq$k0">
                        <node concept="37vLTw" id="2RLAZYE0B$X" role="2JrQYb">
                          <ref role="3cqZAo" node="2RLAZYE0yXQ" resolve="node" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="2RLAZYE0yXP" role="3clFbx">
                <node concept="3clFbF" id="2RLAZYE0yXL" role="3cqZAp">
                  <node concept="37vLTI" id="2RLAZYE0yXM" role="3clFbG">
                    <node concept="37vLTw" id="2RLAZYE0yXN" role="37vLTJ">
                      <ref role="3cqZAo" node="2RLAZYE0yXy" resolve="result" />
                    </node>
                    <node concept="37vLTw" id="2RLAZYE0yXO" role="37vLTx">
                      <ref role="3cqZAo" node="2RLAZYE0yXQ" resolve="node" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2RLAZYE0yXV" role="3cqZAp">
          <node concept="2YIFZM" id="2RLAZYE0AQC" role="3cqZAk">
            <ref role="1Pybhc" to="33ny:~Objects" resolve="Objects" />
            <ref role="37wK5l" to="33ny:~Objects.requireNonNull(java.lang.Object,java.lang.String)" resolve="requireNonNull" />
            <node concept="37vLTw" id="2RLAZYE0AQD" role="37wK5m">
              <ref role="3cqZAo" node="2RLAZYE0yXy" resolve="result" />
            </node>
            <node concept="Xl_RD" id="2RLAZYE0AQE" role="37wK5m">
              <property role="Xl_RC" value="Missing authored public flag" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="2RLAZYE0yXZ" role="1B3o_S" />
      <node concept="3Tqbb2" id="2RLAZYE0Ts6" role="3clF45" />
    </node>
    <node concept="3clFb_" id="2RLAZYE0yY1" role="jymVt">
      <property role="TrG5h" value="group" />
      <node concept="3clFbS" id="2RLAZYE0yY2" role="3clF47">
        <node concept="3cpWs8" id="2RLAZYE0yY4" role="3cqZAp">
          <node concept="3cpWsn" id="2RLAZYE0yY3" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="3Tqbb2" id="2RLAZYE0Ts7" role="1tU5fm" />
            <node concept="10Nm6u" id="2RLAZYE0yY6" role="33vP2m" />
          </node>
        </node>
        <node concept="1DcWWT" id="2RLAZYE0yY7" role="3cqZAp">
          <node concept="2OqwBi" id="2RLAZYE0B_f" role="1DdaDG">
            <node concept="liA8E" id="2RLAZYE0B_g" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNode.getChildren()" resolve="getChildren" />
            </node>
            <node concept="2JrnkZ" id="2RLAZYE0Tra" role="2Oq$k0">
              <node concept="37vLTw" id="2RLAZYE0AQH" role="2JrQYb">
                <ref role="3cqZAo" node="2RLAZYE0yWs" resolve="annotations" />
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="2RLAZYE0yYp" role="1Duv9x">
            <property role="TrG5h" value="node" />
            <node concept="3Tqbb2" id="2RLAZYE0Ts8" role="1tU5fm" />
          </node>
          <node concept="3clFbS" id="2RLAZYE0yY9" role="2LFqv$">
            <node concept="3clFbJ" id="2RLAZYE0yYa" role="3cqZAp">
              <node concept="1Wc70l" id="2RLAZYE0yYb" role="3clFbw">
                <node concept="2OqwBi" id="2RLAZYE0B_v" role="3uHU7B">
                  <node concept="37vLTw" id="2RLAZYE0AQL" role="2Oq$k0">
                    <ref role="3cqZAo" node="2RLAZYE0yV0" resolve="GROUP" />
                  </node>
                  <node concept="liA8E" id="2RLAZYE0B_w" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                    <node concept="2OqwBi" id="2RLAZYE0CK7" role="37wK5m">
                      <node concept="liA8E" id="2RLAZYE0CK8" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                      </node>
                      <node concept="2JrnkZ" id="2RLAZYE0Trb" role="2Oq$k0">
                        <node concept="37vLTw" id="2RLAZYE0BPS" role="2JrQYb">
                          <ref role="3cqZAo" node="2RLAZYE0yYp" resolve="node" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="2RLAZYE0AR2" role="3uHU7w">
                  <node concept="Xl_RD" id="2RLAZYE0yYf" role="2Oq$k0">
                    <property role="Xl_RC" value="ElseClause" />
                  </node>
                  <node concept="liA8E" id="2RLAZYE0AR3" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                    <node concept="2OqwBi" id="2RLAZYE0CK$" role="37wK5m">
                      <node concept="liA8E" id="2RLAZYE0CK_" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getProperty(org.jetbrains.mps.openapi.language.SProperty)" resolve="getProperty" />
                        <node concept="37vLTw" id="2RLAZYE0CKA" role="37wK5m">
                          <ref role="3cqZAo" node="2RLAZYE0yVw" resolve="NAME" />
                        </node>
                      </node>
                      <node concept="2JrnkZ" id="2RLAZYE0Trd" role="2Oq$k0">
                        <node concept="2OqwBi" id="2RLAZYE0BQb" role="2JrQYb">
                          <node concept="liA8E" id="2RLAZYE0BQc" role="2OqNvi">
                            <ref role="37wK5l" to="mhbf:~SNode.getReferenceTarget(org.jetbrains.mps.openapi.language.SReferenceLink)" resolve="getReferenceTarget" />
                            <node concept="37vLTw" id="2RLAZYE0BQd" role="37wK5m">
                              <ref role="3cqZAo" node="2RLAZYE0yVG" resolve="OWNER" />
                            </node>
                          </node>
                          <node concept="2JrnkZ" id="2RLAZYE0Trc" role="2Oq$k0">
                            <node concept="37vLTw" id="2RLAZYE0B_G" role="2JrQYb">
                              <ref role="3cqZAo" node="2RLAZYE0yYp" resolve="node" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="2RLAZYE0yYo" role="3clFbx">
                <node concept="3clFbF" id="2RLAZYE0yYk" role="3cqZAp">
                  <node concept="37vLTI" id="2RLAZYE0yYl" role="3clFbG">
                    <node concept="37vLTw" id="2RLAZYE0yYm" role="37vLTJ">
                      <ref role="3cqZAo" node="2RLAZYE0yY3" resolve="result" />
                    </node>
                    <node concept="37vLTw" id="2RLAZYE0yYn" role="37vLTx">
                      <ref role="3cqZAo" node="2RLAZYE0yYp" resolve="node" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2RLAZYE0yYt" role="3cqZAp">
          <node concept="2YIFZM" id="2RLAZYE0ARa" role="3cqZAk">
            <ref role="1Pybhc" to="33ny:~Objects" resolve="Objects" />
            <ref role="37wK5l" to="33ny:~Objects.requireNonNull(java.lang.Object,java.lang.String)" resolve="requireNonNull" />
            <node concept="37vLTw" id="2RLAZYE0ARb" role="37wK5m">
              <ref role="3cqZAo" node="2RLAZYE0yY3" resolve="result" />
            </node>
            <node concept="Xl_RD" id="2RLAZYE0ARc" role="37wK5m">
              <property role="Xl_RC" value="Missing authored clause intent" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="2RLAZYE0yYx" role="1B3o_S" />
      <node concept="3Tqbb2" id="2RLAZYE0Ts9" role="3clF45" />
    </node>
    <node concept="3clFb_" id="2RLAZYE0yYz" role="jymVt">
      <property role="TrG5h" value="defaults" />
      <node concept="3clFbS" id="2RLAZYE0yY$" role="3clF47">
        <node concept="3cpWs6" id="2RLAZYE0yY_" role="3cqZAp">
          <node concept="3cpWs3" id="2RLAZYE0yYA" role="3cqZAk">
            <node concept="3cpWs3" id="2RLAZYE0yYB" role="3uHU7B">
              <node concept="2YIFZM" id="2RLAZYE0ARf" role="3uHU7B">
                <ref role="1Pybhc" to="53k3:2RLAZYDKbT8" resolve="UsabilityGeneration" />
                <ref role="37wK5l" to="53k3:2RLAZYDKbU6" resolve="flag" />
                <node concept="1rXfSq" id="2RLAZYE0ARg" role="37wK5m">
                  <ref role="37wK5l" node="2RLAZYE0yXw" resolve="modifier" />
                </node>
                <node concept="Xl_RD" id="2RLAZYE0ARh" role="37wK5m">
                  <property role="Xl_RC" value="Textual" />
                </node>
                <node concept="37vLTw" id="2RLAZYE0ARi" role="37wK5m">
                  <ref role="3cqZAo" node="2RLAZYE0yWg" resolve="source" />
                </node>
              </node>
              <node concept="Xl_RD" id="2RLAZYE0yYG" role="3uHU7w">
                <property role="Xl_RC" value="/" />
              </node>
            </node>
            <node concept="2YIFZM" id="2RLAZYE0ARl" role="3uHU7w">
              <ref role="1Pybhc" to="53k3:2RLAZYDKbT8" resolve="UsabilityGeneration" />
              <ref role="37wK5l" to="53k3:2RLAZYDKbU6" resolve="flag" />
              <node concept="1rXfSq" id="2RLAZYE0ARm" role="37wK5m">
                <ref role="37wK5l" node="2RLAZYE0yXw" resolve="modifier" />
              </node>
              <node concept="Xl_RD" id="2RLAZYE0ARn" role="37wK5m">
                <property role="Xl_RC" value="Form" />
              </node>
              <node concept="37vLTw" id="2RLAZYE0ARo" role="37wK5m">
                <ref role="3cqZAo" node="2RLAZYE0yWg" resolve="source" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2RLAZYE0yYL" role="1B3o_S" />
      <node concept="17QB3L" id="2RLAZYE0DVs" role="3clF45" />
    </node>
    <node concept="3clFb_" id="2RLAZYE0yYN" role="jymVt">
      <property role="TrG5h" value="overrideTiers" />
      <node concept="3clFbS" id="2RLAZYE0yYO" role="3clF47">
        <node concept="3cpWs8" id="2RLAZYE0yYQ" role="3cqZAp">
          <node concept="3cpWsn" id="2RLAZYE0yYP" role="3cpWs9">
            <property role="TrG5h" value="profile" />
            <node concept="3Tqbb2" id="2RLAZYE0Tsa" role="1tU5fm" />
            <node concept="2YIFZM" id="2RLAZYE0ARr" role="33vP2m">
              <ref role="1Pybhc" to="9toz:~GenerationProfiles" resolve="GenerationProfiles" />
              <ref role="37wK5l" to="9toz:~GenerationProfiles.createProfile(org.jetbrains.mps.openapi.model.SModel,org.jetbrains.mps.openapi.model.SNode,java.lang.String)" resolve="createProfile" />
              <node concept="37vLTw" id="2RLAZYE0ARs" role="37wK5m">
                <ref role="3cqZAo" node="2RLAZYE0yWg" resolve="source" />
              </node>
              <node concept="37vLTw" id="2RLAZYE0ARt" role="37wK5m">
                <ref role="3cqZAo" node="2RLAZYE0yWo" resolve="grammar" />
              </node>
              <node concept="Xl_RD" id="2RLAZYE0ARu" role="37wK5m">
                <property role="Xl_RC" value="vanilla" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2RLAZYE0yYW" role="3cqZAp">
          <node concept="2YIFZM" id="2RLAZYE0ARx" role="3clFbG">
            <ref role="1Pybhc" to="9toz:~GenerationProfiles" resolve="GenerationProfiles" />
            <ref role="37wK5l" to="9toz:~GenerationProfiles.select(org.jetbrains.mps.openapi.model.SNode,java.lang.String,org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String)" resolve="select" />
            <node concept="37vLTw" id="2RLAZYE0ARy" role="37wK5m">
              <ref role="3cqZAo" node="2RLAZYE0yYP" resolve="profile" />
            </node>
            <node concept="Xl_RD" id="2RLAZYE0ARz" role="37wK5m">
              <property role="Xl_RC" value="Pattern" />
            </node>
            <node concept="10Nm6u" id="2RLAZYE0AR$" role="37wK5m" />
            <node concept="Xl_RD" id="2RLAZYE0AR_" role="37wK5m">
              <property role="Xl_RC" value="Flag" />
            </node>
            <node concept="Xl_RD" id="2RLAZYE0ARA" role="37wK5m">
              <property role="Xl_RC" value="Textual" />
            </node>
            <node concept="Xl_RD" id="2RLAZYE0ARB" role="37wK5m">
              <property role="Xl_RC" value="vanilla.checkbox" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2RLAZYE0yZ4" role="3cqZAp">
          <node concept="2YIFZM" id="2RLAZYE0ARE" role="3clFbG">
            <ref role="1Pybhc" to="9toz:~GenerationProfiles" resolve="GenerationProfiles" />
            <ref role="37wK5l" to="9toz:~GenerationProfiles.select(org.jetbrains.mps.openapi.model.SNode,java.lang.String,org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String)" resolve="select" />
            <node concept="37vLTw" id="2RLAZYE0ARF" role="37wK5m">
              <ref role="3cqZAo" node="2RLAZYE0yYP" resolve="profile" />
            </node>
            <node concept="Xl_RD" id="2RLAZYE0ARG" role="37wK5m">
              <property role="Xl_RC" value="Occurrence" />
            </node>
            <node concept="1rXfSq" id="2RLAZYE0ARH" role="37wK5m">
              <ref role="37wK5l" node="2RLAZYE0yXw" resolve="modifier" />
            </node>
            <node concept="Xl_RD" id="2RLAZYE0ARI" role="37wK5m">
              <property role="Xl_RC" value="Flag" />
            </node>
            <node concept="Xl_RD" id="2RLAZYE0ARJ" role="37wK5m">
              <property role="Xl_RC" value="Textual" />
            </node>
            <node concept="Xl_RD" id="2RLAZYE0ARK" role="37wK5m">
              <property role="Xl_RC" value="auto" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2RLAZYE0yZd" role="3cqZAp">
          <node concept="3cpWsn" id="2RLAZYE0yZc" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="17QB3L" id="2RLAZYE0DVt" role="1tU5fm" />
            <node concept="2YIFZM" id="2RLAZYE0ARN" role="33vP2m">
              <ref role="1Pybhc" to="53k3:2RLAZYDKbT8" resolve="UsabilityGeneration" />
              <ref role="37wK5l" to="53k3:2RLAZYDKbU6" resolve="flag" />
              <node concept="1rXfSq" id="2RLAZYE0ARO" role="37wK5m">
                <ref role="37wK5l" node="2RLAZYE0yXw" resolve="modifier" />
              </node>
              <node concept="Xl_RD" id="2RLAZYE0ARP" role="37wK5m">
                <property role="Xl_RC" value="Textual" />
              </node>
              <node concept="37vLTw" id="2RLAZYE0ARQ" role="37wK5m">
                <ref role="3cqZAo" node="2RLAZYE0yWg" resolve="source" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2RLAZYE0yZj" role="3cqZAp">
          <node concept="2YIFZM" id="2RLAZYE0ART" role="3clFbG">
            <ref role="1Pybhc" to="9toz:~GenerationProfiles" resolve="GenerationProfiles" />
            <ref role="37wK5l" to="9toz:~GenerationProfiles.select(org.jetbrains.mps.openapi.model.SNode,java.lang.String,org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String)" resolve="select" />
            <node concept="37vLTw" id="2RLAZYE0ARU" role="37wK5m">
              <ref role="3cqZAo" node="2RLAZYE0yYP" resolve="profile" />
            </node>
            <node concept="Xl_RD" id="2RLAZYE0ARV" role="37wK5m">
              <property role="Xl_RC" value="Occurrence" />
            </node>
            <node concept="1rXfSq" id="2RLAZYE0ARW" role="37wK5m">
              <ref role="37wK5l" node="2RLAZYE0yXw" resolve="modifier" />
            </node>
            <node concept="Xl_RD" id="2RLAZYE0ARX" role="37wK5m">
              <property role="Xl_RC" value="Flag" />
            </node>
            <node concept="Xl_RD" id="2RLAZYE0ARY" role="37wK5m">
              <property role="Xl_RC" value="Textual" />
            </node>
            <node concept="Xl_RD" id="2RLAZYE0ARZ" role="37wK5m">
              <property role="Xl_RC" value="vanilla.keyword" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2RLAZYE0yZr" role="3cqZAp">
          <node concept="37vLTI" id="2RLAZYE0yZs" role="3clFbG">
            <node concept="37vLTw" id="2RLAZYE0yZt" role="37vLTJ">
              <ref role="3cqZAo" node="2RLAZYE0yZc" resolve="result" />
            </node>
            <node concept="3cpWs3" id="2RLAZYE0yZu" role="37vLTx">
              <node concept="3cpWs3" id="2RLAZYE0yZv" role="3uHU7B">
                <node concept="37vLTw" id="2RLAZYE0yZw" role="3uHU7B">
                  <ref role="3cqZAo" node="2RLAZYE0yZc" resolve="result" />
                </node>
                <node concept="Xl_RD" id="2RLAZYE0yZx" role="3uHU7w">
                  <property role="Xl_RC" value="|" />
                </node>
              </node>
              <node concept="2YIFZM" id="2RLAZYE0AS2" role="3uHU7w">
                <ref role="1Pybhc" to="53k3:2RLAZYDKbT8" resolve="UsabilityGeneration" />
                <ref role="37wK5l" to="53k3:2RLAZYDKbU6" resolve="flag" />
                <node concept="1rXfSq" id="2RLAZYE0AS3" role="37wK5m">
                  <ref role="37wK5l" node="2RLAZYE0yXw" resolve="modifier" />
                </node>
                <node concept="Xl_RD" id="2RLAZYE0AS4" role="37wK5m">
                  <property role="Xl_RC" value="Textual" />
                </node>
                <node concept="37vLTw" id="2RLAZYE0AS5" role="37wK5m">
                  <ref role="3cqZAo" node="2RLAZYE0yWg" resolve="source" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2RLAZYE0yZA" role="3cqZAp">
          <node concept="2YIFZM" id="2RLAZYE0AS8" role="3clFbG">
            <ref role="1Pybhc" to="9toz:~GenerationProfiles" resolve="GenerationProfiles" />
            <ref role="37wK5l" to="9toz:~GenerationProfiles.select(org.jetbrains.mps.openapi.model.SNode,java.lang.String,org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String)" resolve="select" />
            <node concept="37vLTw" id="2RLAZYE0AS9" role="37wK5m">
              <ref role="3cqZAo" node="2RLAZYE0yYP" resolve="profile" />
            </node>
            <node concept="Xl_RD" id="2RLAZYE0ASa" role="37wK5m">
              <property role="Xl_RC" value="Occurrence" />
            </node>
            <node concept="1rXfSq" id="2RLAZYE0ASb" role="37wK5m">
              <ref role="37wK5l" node="2RLAZYE0yXw" resolve="modifier" />
            </node>
            <node concept="Xl_RD" id="2RLAZYE0ASc" role="37wK5m">
              <property role="Xl_RC" value="Flag" />
            </node>
            <node concept="Xl_RD" id="2RLAZYE0ASd" role="37wK5m">
              <property role="Xl_RC" value="Textual" />
            </node>
            <node concept="Xl_RD" id="2RLAZYE0ASe" role="37wK5m">
              <property role="Xl_RC" value="auto" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2RLAZYE0yZI" role="3cqZAp">
          <node concept="3cpWs3" id="2RLAZYE0yZJ" role="3cqZAk">
            <node concept="3cpWs3" id="2RLAZYE0yZK" role="3uHU7B">
              <node concept="37vLTw" id="2RLAZYE0yZL" role="3uHU7B">
                <ref role="3cqZAo" node="2RLAZYE0yZc" resolve="result" />
              </node>
              <node concept="Xl_RD" id="2RLAZYE0yZM" role="3uHU7w">
                <property role="Xl_RC" value="|" />
              </node>
            </node>
            <node concept="1rXfSq" id="2RLAZYE0yZN" role="3uHU7w">
              <ref role="37wK5l" node="2RLAZYE0yYz" resolve="defaults" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2RLAZYE0yZO" role="1B3o_S" />
      <node concept="17QB3L" id="2RLAZYE0DVu" role="3clF45" />
    </node>
    <node concept="3clFb_" id="2RLAZYE0yZQ" role="jymVt">
      <property role="TrG5h" value="copiedOverride" />
      <node concept="3clFbS" id="2RLAZYE0yZR" role="3clF47">
        <node concept="3cpWs8" id="2RLAZYE0yZT" role="3cqZAp">
          <node concept="3cpWsn" id="2RLAZYE0yZS" role="3cpWs9">
            <property role="TrG5h" value="profile" />
            <node concept="3Tqbb2" id="2RLAZYE0Tsb" role="1tU5fm" />
            <node concept="2YIFZM" id="2RLAZYE0ASh" role="33vP2m">
              <ref role="1Pybhc" to="9toz:~GenerationProfiles" resolve="GenerationProfiles" />
              <ref role="37wK5l" to="9toz:~GenerationProfiles.createProfile(org.jetbrains.mps.openapi.model.SModel,org.jetbrains.mps.openapi.model.SNode,java.lang.String)" resolve="createProfile" />
              <node concept="37vLTw" id="2RLAZYE0ASi" role="37wK5m">
                <ref role="3cqZAo" node="2RLAZYE0yWg" resolve="source" />
              </node>
              <node concept="37vLTw" id="2RLAZYE0ASj" role="37wK5m">
                <ref role="3cqZAo" node="2RLAZYE0yWo" resolve="grammar" />
              </node>
              <node concept="Xl_RD" id="2RLAZYE0ASk" role="37wK5m">
                <property role="Xl_RC" value="vanilla" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2RLAZYE0z00" role="3cqZAp">
          <node concept="3cpWsn" id="2RLAZYE0yZZ" role="3cpWs9">
            <property role="TrG5h" value="original" />
            <node concept="3Tqbb2" id="2RLAZYE0Tsc" role="1tU5fm" />
            <node concept="1rXfSq" id="2RLAZYE0z02" role="33vP2m">
              <ref role="37wK5l" node="2RLAZYE0yXw" resolve="modifier" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2RLAZYE0z03" role="3cqZAp">
          <node concept="2YIFZM" id="2RLAZYE0ASn" role="3clFbG">
            <ref role="1Pybhc" to="9toz:~GenerationProfiles" resolve="GenerationProfiles" />
            <ref role="37wK5l" to="9toz:~GenerationProfiles.select(org.jetbrains.mps.openapi.model.SNode,java.lang.String,org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String)" resolve="select" />
            <node concept="37vLTw" id="2RLAZYE0ASo" role="37wK5m">
              <ref role="3cqZAo" node="2RLAZYE0yZS" resolve="profile" />
            </node>
            <node concept="Xl_RD" id="2RLAZYE0ASp" role="37wK5m">
              <property role="Xl_RC" value="Occurrence" />
            </node>
            <node concept="37vLTw" id="2RLAZYE0ASq" role="37wK5m">
              <ref role="3cqZAo" node="2RLAZYE0yZZ" resolve="original" />
            </node>
            <node concept="Xl_RD" id="2RLAZYE0ASr" role="37wK5m">
              <property role="Xl_RC" value="Flag" />
            </node>
            <node concept="Xl_RD" id="2RLAZYE0ASs" role="37wK5m">
              <property role="Xl_RC" value="Textual" />
            </node>
            <node concept="Xl_RD" id="2RLAZYE0ASt" role="37wK5m">
              <property role="Xl_RC" value="vanilla.checkbox" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2RLAZYE0z0c" role="3cqZAp">
          <node concept="3cpWsn" id="2RLAZYE0z0b" role="3cpWs9">
            <property role="TrG5h" value="clone" />
            <node concept="3Tqbb2" id="2RLAZYE0Tsd" role="1tU5fm" />
            <node concept="2YIFZM" id="2RLAZYE0ASw" role="33vP2m">
              <ref role="1Pybhc" to="w1kc:~CopyUtil" resolve="CopyUtil" />
              <ref role="37wK5l" to="w1kc:~CopyUtil.copy(org.jetbrains.mps.openapi.model.SNode)" resolve="copy" />
              <node concept="37vLTw" id="2RLAZYE0ASx" role="37wK5m">
                <ref role="3cqZAo" node="2RLAZYE0yZZ" resolve="original" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2RLAZYE0z0g" role="3cqZAp">
          <node concept="2OqwBi" id="2RLAZYE0B_Y" role="3clFbG">
            <node concept="liA8E" id="2RLAZYE0B_Z" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SModel.addRootNode(org.jetbrains.mps.openapi.model.SNode)" resolve="addRootNode" />
              <node concept="37vLTw" id="2RLAZYE0BA0" role="37wK5m">
                <ref role="3cqZAo" node="2RLAZYE0z0b" resolve="clone" />
              </node>
            </node>
            <node concept="2JrnkZ" id="2RLAZYE0Tre" role="2Oq$k0">
              <node concept="37vLTw" id="2RLAZYE0AS$" role="2JrQYb">
                <ref role="3cqZAo" node="2RLAZYE0yWk" resolve="copied" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2RLAZYE0z0j" role="3cqZAp">
          <node concept="2YIFZM" id="2RLAZYE0ASD" role="3clFbG">
            <ref role="1Pybhc" to="fwk:~TracingUtil" resolve="TracingUtil" />
            <ref role="37wK5l" to="fwk:~TracingUtil.putInputNode(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode)" resolve="putInputNode" />
            <node concept="37vLTw" id="2RLAZYE0ASE" role="37wK5m">
              <ref role="3cqZAo" node="2RLAZYE0z0b" resolve="clone" />
            </node>
            <node concept="37vLTw" id="2RLAZYE0ASF" role="37wK5m">
              <ref role="3cqZAo" node="2RLAZYE0yZZ" resolve="original" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2RLAZYE0z0n" role="3cqZAp">
          <node concept="3cpWs3" id="2RLAZYE0z0o" role="3cqZAk">
            <node concept="3cpWs3" id="2RLAZYE0z0p" role="3uHU7B">
              <node concept="1eOMI4" id="2RLAZYE0z0u" role="3uHU7B">
                <node concept="3fqX7Q" id="2RLAZYE0z0q" role="1eOMHV">
                  <node concept="2OqwBi" id="2RLAZYE0BRe" role="3fr31v">
                    <node concept="2OqwBi" id="2RLAZYE0BAj" role="2Oq$k0">
                      <node concept="liA8E" id="2RLAZYE0BAk" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                      </node>
                      <node concept="2JrnkZ" id="2RLAZYE0Trf" role="2Oq$k0">
                        <node concept="37vLTw" id="2RLAZYE0ASQ" role="2JrQYb">
                          <ref role="3cqZAo" node="2RLAZYE0z0b" resolve="clone" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="2RLAZYE0BRf" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                      <node concept="2OqwBi" id="2RLAZYE0BRg" role="37wK5m">
                        <node concept="liA8E" id="2RLAZYE0BRi" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                        </node>
                        <node concept="2JrnkZ" id="2RLAZYE0Trg" role="2Oq$k0">
                          <node concept="37vLTw" id="2RLAZYE0BRh" role="2JrQYb">
                            <ref role="3cqZAo" node="2RLAZYE0yZZ" resolve="original" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="2RLAZYE0z0v" role="3uHU7w">
                <property role="Xl_RC" value=":" />
              </node>
            </node>
            <node concept="2YIFZM" id="2RLAZYE0ASY" role="3uHU7w">
              <ref role="1Pybhc" to="53k3:2RLAZYDKbT8" resolve="UsabilityGeneration" />
              <ref role="37wK5l" to="53k3:2RLAZYDKbU6" resolve="flag" />
              <node concept="37vLTw" id="2RLAZYE0ASZ" role="37wK5m">
                <ref role="3cqZAo" node="2RLAZYE0z0b" resolve="clone" />
              </node>
              <node concept="Xl_RD" id="2RLAZYE0AT0" role="37wK5m">
                <property role="Xl_RC" value="Textual" />
              </node>
              <node concept="37vLTw" id="2RLAZYE0AT1" role="37wK5m">
                <ref role="3cqZAo" node="2RLAZYE0yWg" resolve="source" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2RLAZYE0z0$" role="1B3o_S" />
      <node concept="17QB3L" id="2RLAZYE0DVv" role="3clF45" />
    </node>
    <node concept="3clFb_" id="2RLAZYE0z0A" role="jymVt">
      <property role="TrG5h" value="unavailableBackend" />
      <node concept="3clFbS" id="2RLAZYE0z0B" role="3clF47">
        <node concept="3clFbF" id="2RLAZYE0z0C" role="3cqZAp">
          <node concept="2YIFZM" id="2RLAZYE0AT4" role="3clFbG">
            <ref role="1Pybhc" to="9toz:~GenerationProfiles" resolve="GenerationProfiles" />
            <ref role="37wK5l" to="9toz:~GenerationProfiles.createProfile(org.jetbrains.mps.openapi.model.SModel,org.jetbrains.mps.openapi.model.SNode,java.lang.String)" resolve="createProfile" />
            <node concept="37vLTw" id="2RLAZYE0AT5" role="37wK5m">
              <ref role="3cqZAo" node="2RLAZYE0yWg" resolve="source" />
            </node>
            <node concept="37vLTw" id="2RLAZYE0AT6" role="37wK5m">
              <ref role="3cqZAo" node="2RLAZYE0yWo" resolve="grammar" />
            </node>
            <node concept="Xl_RD" id="2RLAZYE0AT7" role="37wK5m">
              <property role="Xl_RC" value="grammar-cells" />
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="2RLAZYE0z0X" role="3cqZAp">
          <node concept="3uVAMA" id="2RLAZYE0z0Y" role="1zxBo5">
            <node concept="3clFbS" id="2RLAZYE0z0S" role="1zc67A">
              <node concept="3cpWs6" id="2RLAZYE0z0T" role="3cqZAp">
                <node concept="2OqwBi" id="2RLAZYE0BVE" role="3cqZAk">
                  <node concept="2OqwBi" id="2RLAZYE0BAR" role="2Oq$k0">
                    <node concept="37vLTw" id="2RLAZYE0ATi" role="2Oq$k0">
                      <ref role="3cqZAo" node="2RLAZYE0z0O" resolve="expected" />
                    </node>
                    <node concept="liA8E" id="2RLAZYE0BAS" role="2OqNvi">
                      <ref role="37wK5l" to="9toz:~UsabilityException.getDiagnostic()" resolve="getDiagnostic" />
                    </node>
                  </node>
                  <node concept="liA8E" id="2RLAZYE0BVF" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
                    <node concept="Xl_RD" id="2RLAZYE0BVG" role="37wK5m">
                      <property role="Xl_RC" value="code" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="XOnhg" id="2RLAZYE0z0O" role="1zc67B">
              <property role="TrG5h" value="expected" />
              <node concept="nSUau" id="2RLAZYE0z0Q" role="1tU5fm">
                <node concept="3uibUv" id="2RLAZYE0z0P" role="nSUat">
                  <ref role="3uigEE" to="9toz:~UsabilityException" resolve="UsabilityException" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="2RLAZYE0z0I" role="1zxBo7">
            <node concept="3clFbF" id="2RLAZYE0z0J" role="3cqZAp">
              <node concept="2YIFZM" id="2RLAZYE0ATm" role="3clFbG">
                <ref role="1Pybhc" to="53k3:2RLAZYDKbT8" resolve="UsabilityGeneration" />
                <ref role="37wK5l" to="53k3:2RLAZYDKbU6" resolve="flag" />
                <node concept="1rXfSq" id="2RLAZYE0ATn" role="37wK5m">
                  <ref role="37wK5l" node="2RLAZYE0yXw" resolve="modifier" />
                </node>
                <node concept="Xl_RD" id="2RLAZYE0ATo" role="37wK5m">
                  <property role="Xl_RC" value="Textual" />
                </node>
                <node concept="37vLTw" id="2RLAZYE0ATp" role="37wK5m">
                  <ref role="3cqZAo" node="2RLAZYE0yWg" resolve="source" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2RLAZYE0z0Z" role="3cqZAp">
          <node concept="Xl_RD" id="2RLAZYE0z10" role="3cqZAk">
            <property role="Xl_RC" value="ACCEPTED" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2RLAZYE0z11" role="1B3o_S" />
      <node concept="17QB3L" id="2RLAZYE0DVw" role="3clF45" />
    </node>
    <node concept="3clFb_" id="2RLAZYE0z13" role="jymVt">
      <property role="TrG5h" value="unsupportedProjection" />
      <node concept="3clFbS" id="2RLAZYE0z14" role="3clF47">
        <node concept="3J1_TO" id="2RLAZYE0z1l" role="3cqZAp">
          <node concept="3uVAMA" id="2RLAZYE0z1m" role="1zxBo5">
            <node concept="3clFbS" id="2RLAZYE0z1g" role="1zc67A">
              <node concept="3cpWs6" id="2RLAZYE0z1h" role="3cqZAp">
                <node concept="2OqwBi" id="2RLAZYE0C04" role="3cqZAk">
                  <node concept="2OqwBi" id="2RLAZYE0BBf" role="2Oq$k0">
                    <node concept="37vLTw" id="2RLAZYE0AT$" role="2Oq$k0">
                      <ref role="3cqZAo" node="2RLAZYE0z1c" resolve="expected" />
                    </node>
                    <node concept="liA8E" id="2RLAZYE0BBg" role="2OqNvi">
                      <ref role="37wK5l" to="9toz:~UsabilityException.getDiagnostic()" resolve="getDiagnostic" />
                    </node>
                  </node>
                  <node concept="liA8E" id="2RLAZYE0C05" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
                    <node concept="Xl_RD" id="2RLAZYE0C06" role="37wK5m">
                      <property role="Xl_RC" value="code" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="XOnhg" id="2RLAZYE0z1c" role="1zc67B">
              <property role="TrG5h" value="expected" />
              <node concept="nSUau" id="2RLAZYE0z1e" role="1tU5fm">
                <node concept="3uibUv" id="2RLAZYE0z1d" role="nSUat">
                  <ref role="3uigEE" to="9toz:~UsabilityException" resolve="UsabilityException" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="2RLAZYE0z16" role="1zxBo7">
            <node concept="3clFbF" id="2RLAZYE0z17" role="3cqZAp">
              <node concept="2YIFZM" id="2RLAZYE0ATC" role="3clFbG">
                <ref role="1Pybhc" to="53k3:2RLAZYDKbT8" resolve="UsabilityGeneration" />
                <ref role="37wK5l" to="53k3:2RLAZYDKbU6" resolve="flag" />
                <node concept="1rXfSq" id="2RLAZYE0ATD" role="37wK5m">
                  <ref role="37wK5l" node="2RLAZYE0yXw" resolve="modifier" />
                </node>
                <node concept="Xl_RD" id="2RLAZYE0ATE" role="37wK5m">
                  <property role="Xl_RC" value="Table" />
                </node>
                <node concept="37vLTw" id="2RLAZYE0ATF" role="37wK5m">
                  <ref role="3cqZAo" node="2RLAZYE0yWg" resolve="source" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2RLAZYE0z1n" role="3cqZAp">
          <node concept="Xl_RD" id="2RLAZYE0z1o" role="3cqZAk">
            <property role="Xl_RC" value="ACCEPTED" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2RLAZYE0z1p" role="1B3o_S" />
      <node concept="17QB3L" id="2RLAZYE0DVx" role="3clF45" />
    </node>
    <node concept="3clFb_" id="2RLAZYE0z1r" role="jymVt">
      <property role="TrG5h" value="existingOptionalChild" />
      <node concept="3clFbS" id="2RLAZYE0z1s" role="3clF47">
        <node concept="3cpWs6" id="2RLAZYE0z1t" role="3cqZAp">
          <node concept="2YIFZM" id="2RLAZYE0ATI" role="3cqZAk">
            <ref role="1Pybhc" to="53k3:2RLAZYDKbT8" resolve="UsabilityGeneration" />
            <ref role="37wK5l" to="53k3:2RLAZYDKbV2" resolve="validate" />
            <node concept="37vLTw" id="2RLAZYE0ATJ" role="37wK5m">
              <ref role="3cqZAo" node="2RLAZYE0yWo" resolve="grammar" />
            </node>
            <node concept="37vLTw" id="2RLAZYE0ATK" role="37wK5m">
              <ref role="3cqZAo" node="2RLAZYE0yWg" resolve="source" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2RLAZYE0z1x" role="1B3o_S" />
      <node concept="10P_77" id="2RLAZYE0z1y" role="3clF45" />
    </node>
    <node concept="3clFb_" id="2RLAZYE0z1z" role="jymVt">
      <property role="TrG5h" value="flatRange" />
      <node concept="3clFbS" id="2RLAZYE0z1$" role="3clF47">
        <node concept="3cpWs8" id="2RLAZYE0z1A" role="3cqZAp">
          <node concept="3cpWsn" id="2RLAZYE0z1_" role="3cpWs9">
            <property role="TrG5h" value="annotation" />
            <node concept="3Tqbb2" id="2RLAZYE0Tse" role="1tU5fm" />
            <node concept="1rXfSq" id="2RLAZYE0z1C" role="33vP2m">
              <ref role="37wK5l" node="2RLAZYE0yY1" resolve="group" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2RLAZYE0z1D" role="3cqZAp">
          <node concept="2OqwBi" id="2RLAZYE0BBr" role="3clFbG">
            <node concept="liA8E" id="2RLAZYE0BBs" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNode.setReferenceTarget(org.jetbrains.mps.openapi.language.SReferenceLink,org.jetbrains.mps.openapi.model.SNode)" resolve="setReferenceTarget" />
              <node concept="37vLTw" id="2RLAZYE0BBt" role="37wK5m">
                <ref role="3cqZAo" node="2RLAZYE0yVK" resolve="FIRST" />
              </node>
              <node concept="2OqwBi" id="2RLAZYE0CKL" role="37wK5m">
                <node concept="liA8E" id="2RLAZYE0CKM" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getReferenceTarget(org.jetbrains.mps.openapi.language.SReferenceLink)" resolve="getReferenceTarget" />
                  <node concept="37vLTw" id="2RLAZYE0CKN" role="37wK5m">
                    <ref role="3cqZAo" node="2RLAZYE0yVO" resolve="LAST" />
                  </node>
                </node>
                <node concept="2JrnkZ" id="2RLAZYE0Tri" role="2Oq$k0">
                  <node concept="37vLTw" id="2RLAZYE0C09" role="2JrQYb">
                    <ref role="3cqZAo" node="2RLAZYE0z1_" resolve="annotation" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2JrnkZ" id="2RLAZYE0Trh" role="2Oq$k0">
              <node concept="37vLTw" id="2RLAZYE0ATN" role="2JrQYb">
                <ref role="3cqZAo" node="2RLAZYE0z1_" resolve="annotation" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="2RLAZYE0z1X" role="3cqZAp">
          <node concept="3uVAMA" id="2RLAZYE0z1Y" role="1zxBo5">
            <node concept="3clFbS" id="2RLAZYE0z1S" role="1zc67A">
              <node concept="3cpWs6" id="2RLAZYE0z1T" role="3cqZAp">
                <node concept="2OqwBi" id="2RLAZYE0C4z" role="3cqZAk">
                  <node concept="2OqwBi" id="2RLAZYE0BBQ" role="2Oq$k0">
                    <node concept="37vLTw" id="2RLAZYE0AU2" role="2Oq$k0">
                      <ref role="3cqZAo" node="2RLAZYE0z1O" resolve="expected" />
                    </node>
                    <node concept="liA8E" id="2RLAZYE0BBR" role="2OqNvi">
                      <ref role="37wK5l" to="9toz:~UsabilityException.getDiagnostic()" resolve="getDiagnostic" />
                    </node>
                  </node>
                  <node concept="liA8E" id="2RLAZYE0C4$" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
                    <node concept="Xl_RD" id="2RLAZYE0C4_" role="37wK5m">
                      <property role="Xl_RC" value="code" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="XOnhg" id="2RLAZYE0z1O" role="1zc67B">
              <property role="TrG5h" value="expected" />
              <node concept="nSUau" id="2RLAZYE0z1Q" role="1tU5fm">
                <node concept="3uibUv" id="2RLAZYE0z1P" role="nSUat">
                  <ref role="3uigEE" to="9toz:~UsabilityException" resolve="UsabilityException" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="2RLAZYE0z1J" role="1zxBo7">
            <node concept="3clFbF" id="2RLAZYE0z1K" role="3cqZAp">
              <node concept="2YIFZM" id="2RLAZYE0AU6" role="3clFbG">
                <ref role="1Pybhc" to="53k3:2RLAZYDKbT8" resolve="UsabilityGeneration" />
                <ref role="37wK5l" to="53k3:2RLAZYDKbV2" resolve="validate" />
                <node concept="37vLTw" id="2RLAZYE0AU7" role="37wK5m">
                  <ref role="3cqZAo" node="2RLAZYE0yWo" resolve="grammar" />
                </node>
                <node concept="37vLTw" id="2RLAZYE0AU8" role="37wK5m">
                  <ref role="3cqZAo" node="2RLAZYE0yWg" resolve="source" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2RLAZYE0z1Z" role="3cqZAp">
          <node concept="Xl_RD" id="2RLAZYE0z20" role="3cqZAk">
            <property role="Xl_RC" value="ACCEPTED" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2RLAZYE0z21" role="1B3o_S" />
      <node concept="17QB3L" id="2RLAZYE0DVy" role="3clF45" />
    </node>
    <node concept="3clFb_" id="2RLAZYE0z23" role="jymVt">
      <property role="TrG5h" value="mandatoryChild" />
      <node concept="3clFbS" id="2RLAZYE0z24" role="3clF47">
        <node concept="3cpWs8" id="2RLAZYE0z26" role="3cqZAp">
          <node concept="3cpWsn" id="2RLAZYE0z25" role="3cpWs9">
            <property role="TrG5h" value="owner" />
            <node concept="3Tqbb2" id="2RLAZYE0Tsf" role="1tU5fm" />
            <node concept="2OqwBi" id="2RLAZYE0AUo" role="33vP2m">
              <node concept="liA8E" id="2RLAZYE0AUp" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getReferenceTarget(org.jetbrains.mps.openapi.language.SReferenceLink)" resolve="getReferenceTarget" />
                <node concept="37vLTw" id="2RLAZYE0AUq" role="37wK5m">
                  <ref role="3cqZAo" node="2RLAZYE0yVG" resolve="OWNER" />
                </node>
              </node>
              <node concept="2JrnkZ" id="2RLAZYE0Trj" role="2Oq$k0">
                <node concept="1rXfSq" id="2RLAZYE0z29" role="2JrQYb">
                  <ref role="37wK5l" node="2RLAZYE0yY1" resolve="group" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="2RLAZYE0z2b" role="3cqZAp">
          <node concept="2YIFZM" id="2RLAZYE0AUt" role="1DdaDG">
            <ref role="1Pybhc" to="9toz:~ModelNodes" resolve="ModelNodes" />
            <ref role="37wK5l" to="9toz:~ModelNodes.tree(org.jetbrains.mps.openapi.model.SNode)" resolve="tree" />
            <node concept="37vLTw" id="2RLAZYE0AUu" role="37wK5m">
              <ref role="3cqZAo" node="2RLAZYE0yWo" resolve="grammar" />
            </node>
          </node>
          <node concept="3cpWsn" id="2RLAZYE0z2t" role="1Duv9x">
            <property role="TrG5h" value="node" />
            <node concept="3Tqbb2" id="2RLAZYE0Tsg" role="1tU5fm" />
          </node>
          <node concept="3clFbS" id="2RLAZYE0z2d" role="2LFqv$">
            <node concept="3clFbJ" id="2RLAZYE0z2e" role="3cqZAp">
              <node concept="1Wc70l" id="2RLAZYE0z2f" role="3clFbw">
                <node concept="2OqwBi" id="2RLAZYE0BC6" role="3uHU7B">
                  <node concept="37vLTw" id="2RLAZYE0AUx" role="2Oq$k0">
                    <ref role="3cqZAo" node="2RLAZYE0yV4" resolve="REFERENCE" />
                  </node>
                  <node concept="liA8E" id="2RLAZYE0BC7" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                    <node concept="2OqwBi" id="2RLAZYE0CKX" role="37wK5m">
                      <node concept="liA8E" id="2RLAZYE0CKY" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                      </node>
                      <node concept="2JrnkZ" id="2RLAZYE0Trk" role="2Oq$k0">
                        <node concept="37vLTw" id="2RLAZYE0C4C" role="2JrQYb">
                          <ref role="3cqZAo" node="2RLAZYE0z2t" resolve="node" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="2RLAZYE0z2i" role="3uHU7w">
                  <node concept="2OqwBi" id="2RLAZYE0BCi" role="3uHU7B">
                    <node concept="liA8E" id="2RLAZYE0BCj" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.getReferenceTarget(org.jetbrains.mps.openapi.language.SReferenceLink)" resolve="getReferenceTarget" />
                      <node concept="37vLTw" id="2RLAZYE0BCk" role="37wK5m">
                        <ref role="3cqZAo" node="2RLAZYE0yVS" resolve="RULE" />
                      </node>
                    </node>
                    <node concept="2JrnkZ" id="2RLAZYE0Trl" role="2Oq$k0">
                      <node concept="37vLTw" id="2RLAZYE0AUA" role="2JrQYb">
                        <ref role="3cqZAo" node="2RLAZYE0z2t" resolve="node" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="2RLAZYE0z2l" role="3uHU7w">
                    <ref role="3cqZAo" node="2RLAZYE0z25" resolve="owner" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="2RLAZYE0z2n" role="3clFbx">
                <node concept="3clFbF" id="2RLAZYE0z2o" role="3cqZAp">
                  <node concept="37vLTI" id="2RLAZYE1Id6" role="3clFbG">
                    <node concept="2OqwBi" id="2RLAZYE1Id4" role="37vLTJ">
                      <node concept="1eOMI4" id="2RLAZYE1Id3" role="2Oq$k0">
                        <node concept="1PxgMI" id="2RLAZYE1Id2" role="1eOMHV">
                          <node concept="37vLTw" id="2RLAZYE0AUG" role="1m5AlR">
                            <ref role="3cqZAo" node="2RLAZYE0z2t" resolve="node" />
                          </node>
                          <node concept="chp4Y" id="2RLAZYE2810" role="3oSUPX">
                            <ref role="cht4Q" to="6o2a:2b2ZYR3ypJF" resolve="NonterminalReference" />
                          </node>
                        </node>
                      </node>
                      <node concept="3TrcHB" id="2RLAZYE1Id5" role="2OqNvi">
                        <ref role="3TsBF5" to="6o2a:21bD4dVyEsP" resolve="card" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="2RLAZYE2y6M" role="37vLTx">
                      <node concept="1XH99k" id="2RLAZYE2y6N" role="2Oq$k0">
                        <ref role="1XH99l" to="6o2a:21bD4dVyEsJ" resolve="RuleCardinality" />
                      </node>
                      <node concept="2ViDtV" id="2RLAZYE2y6O" role="2OqNvi">
                        <ref role="2ViDtZ" to="6o2a:21bD4dVyEsL" resolve="ExactlyOne" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="2RLAZYE0z2L" role="3cqZAp">
          <node concept="3uVAMA" id="2RLAZYE0z2M" role="1zxBo5">
            <node concept="3clFbS" id="2RLAZYE0z2G" role="1zc67A">
              <node concept="3cpWs6" id="2RLAZYE0z2H" role="3cqZAp">
                <node concept="2OqwBi" id="2RLAZYE0C91" role="3cqZAk">
                  <node concept="2OqwBi" id="2RLAZYE0BCF" role="2Oq$k0">
                    <node concept="37vLTw" id="2RLAZYE0AUT" role="2Oq$k0">
                      <ref role="3cqZAo" node="2RLAZYE0z2C" resolve="expected" />
                    </node>
                    <node concept="liA8E" id="2RLAZYE0BCG" role="2OqNvi">
                      <ref role="37wK5l" to="9toz:~UsabilityException.getDiagnostic()" resolve="getDiagnostic" />
                    </node>
                  </node>
                  <node concept="liA8E" id="2RLAZYE0C92" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
                    <node concept="Xl_RD" id="2RLAZYE0C93" role="37wK5m">
                      <property role="Xl_RC" value="code" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="XOnhg" id="2RLAZYE0z2C" role="1zc67B">
              <property role="TrG5h" value="expected" />
              <node concept="nSUau" id="2RLAZYE0z2E" role="1tU5fm">
                <node concept="3uibUv" id="2RLAZYE0z2D" role="nSUat">
                  <ref role="3uigEE" to="9toz:~UsabilityException" resolve="UsabilityException" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="2RLAZYE0z2z" role="1zxBo7">
            <node concept="3clFbF" id="2RLAZYE0z2$" role="3cqZAp">
              <node concept="2YIFZM" id="2RLAZYE0AUX" role="3clFbG">
                <ref role="1Pybhc" to="53k3:2RLAZYDKbT8" resolve="UsabilityGeneration" />
                <ref role="37wK5l" to="53k3:2RLAZYDKbV2" resolve="validate" />
                <node concept="37vLTw" id="2RLAZYE0AUY" role="37wK5m">
                  <ref role="3cqZAo" node="2RLAZYE0yWo" resolve="grammar" />
                </node>
                <node concept="37vLTw" id="2RLAZYE0AUZ" role="37wK5m">
                  <ref role="3cqZAo" node="2RLAZYE0yWg" resolve="source" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2RLAZYE0z2N" role="3cqZAp">
          <node concept="Xl_RD" id="2RLAZYE0z2O" role="3cqZAk">
            <property role="Xl_RC" value="ACCEPTED" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2RLAZYE0z2P" role="1B3o_S" />
      <node concept="17QB3L" id="2RLAZYE0DVz" role="3clF45" />
    </node>
    <node concept="3clFb_" id="2RLAZYE0z2R" role="jymVt">
      <property role="TrG5h" value="unapprovedIntent" />
      <node concept="3clFbS" id="2RLAZYE0z2S" role="3clF47">
        <node concept="3cpWs8" id="2RLAZYE0z2U" role="3cqZAp">
          <node concept="3cpWsn" id="2RLAZYE0z2T" role="3cpWs9">
            <property role="TrG5h" value="annotation" />
            <node concept="3Tqbb2" id="2RLAZYE0Tsh" role="1tU5fm" />
            <node concept="1rXfSq" id="2RLAZYE0z2W" role="33vP2m">
              <ref role="37wK5l" node="2RLAZYE0yY1" resolve="group" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2RLAZYE0z2X" role="3cqZAp">
          <node concept="2OqwBi" id="2RLAZYE0BCR" role="3clFbG">
            <node concept="liA8E" id="2RLAZYE0BCS" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNode.setReferenceTarget(org.jetbrains.mps.openapi.language.SReferenceLink,org.jetbrains.mps.openapi.model.SNode)" resolve="setReferenceTarget" />
              <node concept="37vLTw" id="2RLAZYE0BCT" role="37wK5m">
                <ref role="3cqZAo" node="2RLAZYE0yVK" resolve="FIRST" />
              </node>
              <node concept="2OqwBi" id="2RLAZYE0CL9" role="37wK5m">
                <node concept="liA8E" id="2RLAZYE0CLa" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getReferenceTarget(org.jetbrains.mps.openapi.language.SReferenceLink)" resolve="getReferenceTarget" />
                  <node concept="37vLTw" id="2RLAZYE0CLb" role="37wK5m">
                    <ref role="3cqZAo" node="2RLAZYE0yVO" resolve="LAST" />
                  </node>
                </node>
                <node concept="2JrnkZ" id="2RLAZYE0Trn" role="2Oq$k0">
                  <node concept="37vLTw" id="2RLAZYE0C96" role="2JrQYb">
                    <ref role="3cqZAo" node="2RLAZYE0z2T" resolve="annotation" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2JrnkZ" id="2RLAZYE0Trm" role="2Oq$k0">
              <node concept="37vLTw" id="2RLAZYE0AV2" role="2JrQYb">
                <ref role="3cqZAo" node="2RLAZYE0z2T" resolve="annotation" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2RLAZYE0z32" role="3cqZAp">
          <node concept="37vLTI" id="2RLAZYE1Idc" role="3clFbG">
            <node concept="2OqwBi" id="2RLAZYE1Ida" role="37vLTJ">
              <node concept="1eOMI4" id="2RLAZYE1Id9" role="2Oq$k0">
                <node concept="1PxgMI" id="2RLAZYE1Id8" role="1eOMHV">
                  <node concept="37vLTw" id="2RLAZYE0AVa" role="1m5AlR">
                    <ref role="3cqZAo" node="2RLAZYE0z2T" resolve="annotation" />
                  </node>
                  <node concept="chp4Y" id="2RLAZYE2811" role="3oSUPX">
                    <ref role="cht4Q" to="6o2a:$td8qPViA$" resolve="UsabilityAnnotation" />
                  </node>
                </node>
              </node>
              <node concept="3TrcHB" id="2RLAZYE1Idb" role="2OqNvi">
                <ref role="3TsBF5" to="6o2a:$td8qPViA_" resolve="origin" />
              </node>
            </node>
            <node concept="2OqwBi" id="2RLAZYE2y6P" role="37vLTx">
              <node concept="1XH99k" id="2RLAZYE2y6Q" role="2Oq$k0">
                <ref role="1XH99l" to="6o2a:$td8qPViAv" resolve="AnnotationOrigin" />
              </node>
              <node concept="2ViDtV" id="2RLAZYE2y6R" role="2OqNvi">
                <ref role="2ViDtZ" to="6o2a:$td8qPViAy" resolve="Suggested" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2RLAZYE0z37" role="3cqZAp">
          <node concept="37vLTI" id="2RLAZYE1Idi" role="3clFbG">
            <node concept="2OqwBi" id="2RLAZYE1Idg" role="37vLTJ">
              <node concept="1eOMI4" id="2RLAZYE1Idf" role="2Oq$k0">
                <node concept="1PxgMI" id="2RLAZYE1Ide" role="1eOMHV">
                  <node concept="37vLTw" id="2RLAZYE0AVg" role="1m5AlR">
                    <ref role="3cqZAo" node="2RLAZYE0z2T" resolve="annotation" />
                  </node>
                  <node concept="chp4Y" id="2RLAZYE2812" role="3oSUPX">
                    <ref role="cht4Q" to="6o2a:$td8qPViA$" resolve="UsabilityAnnotation" />
                  </node>
                </node>
              </node>
              <node concept="3TrcHB" id="2RLAZYE1Idh" role="2OqNvi">
                <ref role="3TsBF5" to="6o2a:$td8qPViAB" resolve="evidence" />
              </node>
            </node>
            <node concept="Xl_RD" id="2RLAZYE0AVi" role="37vLTx">
              <property role="Xl_RC" value="Needs an explicit storage decision" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2RLAZYE0z3c" role="3cqZAp">
          <node concept="2YIFZM" id="2RLAZYE0AVl" role="3cqZAk">
            <ref role="1Pybhc" to="53k3:2RLAZYDKbT8" resolve="UsabilityGeneration" />
            <ref role="37wK5l" to="53k3:2RLAZYDKbV2" resolve="validate" />
            <node concept="37vLTw" id="2RLAZYE0AVm" role="37wK5m">
              <ref role="3cqZAo" node="2RLAZYE0yWo" resolve="grammar" />
            </node>
            <node concept="37vLTw" id="2RLAZYE0AVn" role="37wK5m">
              <ref role="3cqZAo" node="2RLAZYE0yWg" resolve="source" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2RLAZYE0z3g" role="1B3o_S" />
      <node concept="10P_77" id="2RLAZYE0z3h" role="3clF45" />
    </node>
    <node concept="3clFb_" id="2RLAZYE0z3i" role="jymVt">
      <property role="TrG5h" value="generate" />
      <node concept="37vLTG" id="2RLAZYE0z3j" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="2RLAZYE0z3k" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="37vLTG" id="2RLAZYE0z3l" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="H_c77" id="2RLAZYE0Tsi" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2RLAZYE0z3n" role="3clF46">
        <property role="TrG5h" value="messages" />
        <node concept="3uibUv" id="2RLAZYE0z3o" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="2RLAZYE0z3p" role="11_B2D">
            <ref role="3uigEE" to="et5u:~IMessage" resolve="IMessage" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="2RLAZYE0z3q" role="3clF47">
        <node concept="3cpWs8" id="2RLAZYE0z3s" role="3cqZAp">
          <node concept="3cpWsn" id="2RLAZYE0z3r" role="3cpWs9">
            <property role="TrG5h" value="provider" />
            <node concept="3uibUv" id="2RLAZYE0z3t" role="1tU5fm">
              <ref role="3uigEE" to="ap4t:~TransientModelsProvider" resolve="TransientModelsProvider" />
            </node>
            <node concept="2OqwBi" id="2RLAZYE0BD5" role="33vP2m">
              <node concept="37vLTw" id="2RLAZYE0AVq" role="2Oq$k0">
                <ref role="3cqZAo" node="2RLAZYE0z3j" resolve="project" />
              </node>
              <node concept="liA8E" id="2RLAZYE0BD6" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~Project.getComponent(java.lang.Class)" resolve="getComponent" />
                <node concept="3VsKOn" id="2RLAZYE0BD7" role="37wK5m">
                  <ref role="3VsUkX" to="ap4t:~TransientModelsProvider" resolve="TransientModelsProvider" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2RLAZYE0z3x" role="3cqZAp">
          <node concept="2OqwBi" id="2RLAZYE0BDi" role="3clFbG">
            <node concept="37vLTw" id="2RLAZYE0AVv" role="2Oq$k0">
              <ref role="3cqZAo" node="2RLAZYE0z3r" resolve="provider" />
            </node>
            <node concept="liA8E" id="2RLAZYE0BDj" role="2OqNvi">
              <ref role="37wK5l" to="ap4t:~TransientModelsProvider.startGeneration(int)" resolve="startGeneration" />
              <node concept="3cmrfG" id="2RLAZYE0BDk" role="37wK5m">
                <property role="3cmrfH" value="100" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2RLAZYE1HNr" role="3cqZAp">
          <node concept="2OqwBi" id="2RLAZYE1HNR" role="3clFbG">
            <node concept="37vLTw" id="2RLAZYE1HNF" role="2Oq$k0">
              <ref role="3cqZAo" node="2RLAZYE0z3r" resolve="provider" />
            </node>
            <node concept="liA8E" id="2RLAZYE1HNS" role="2OqNvi">
              <ref role="37wK5l" to="ap4t:~TransientModelsProvider.initCheckpointModule()" resolve="initCheckpointModule" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2RLAZYE0z3_" role="3cqZAp">
          <node concept="3cpWsn" id="2RLAZYE0z3$" role="3cpWs9">
            <property role="TrG5h" value="collector" />
            <node concept="3uibUv" id="2RLAZYE0z3A" role="1tU5fm">
              <ref role="3uigEE" to="et5u:~MessageCollector" resolve="MessageCollector" />
            </node>
            <node concept="2ShNRf" id="2RLAZYE0AVy" role="33vP2m">
              <node concept="1pGfFk" id="2RLAZYE0B4T" role="2ShVmc">
                <ref role="37wK5l" to="et5u:~MessageCollector.&lt;init&gt;(java.util.Collection)" resolve="MessageCollector" />
                <node concept="37vLTw" id="2RLAZYE0B4U" role="37wK5m">
                  <ref role="3cqZAo" node="2RLAZYE0z3n" resolve="messages" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2RLAZYE0z3E" role="3cqZAp">
          <node concept="3cpWsn" id="2RLAZYE0z3D" role="3cpWs9">
            <property role="TrG5h" value="options" />
            <node concept="3uibUv" id="2RLAZYE0z3F" role="1tU5fm">
              <ref role="3uigEE" to="ap4t:~GenerationOptions$OptionsBuilder" resolve="GenerationOptions.OptionsBuilder" />
            </node>
            <node concept="2OqwBi" id="2RLAZYE0BDy" role="33vP2m">
              <node concept="2YIFZM" id="2RLAZYE0B55" role="2Oq$k0">
                <ref role="1Pybhc" to="ap4t:~GenerationOptions" resolve="GenerationOptions" />
                <ref role="37wK5l" to="ap4t:~GenerationOptions.getDefaults()" resolve="getDefaults" />
              </node>
              <node concept="liA8E" id="2RLAZYE0BDz" role="2OqNvi">
                <ref role="37wK5l" to="ap4t:~GenerationOptions$OptionsBuilder.saveTransientModels(boolean)" resolve="saveTransientModels" />
                <node concept="3clFbT" id="2RLAZYE0BD$" role="37wK5m">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2RLAZYE0z3J" role="3cqZAp">
          <node concept="2OqwBi" id="2RLAZYE0BDN" role="3clFbG">
            <node concept="2ShNRf" id="2RLAZYE0B5e" role="2Oq$k0">
              <node concept="1pGfFk" id="2RLAZYE0B5w" role="2ShVmc">
                <ref role="37wK5l" to="ap4t:~GenPlanExtractor.&lt;init&gt;(org.jetbrains.mps.openapi.module.SRepository,jetbrains.mps.generator.GenerationOptions$OptionsBuilder,jetbrains.mps.messages.IMessageHandler)" resolve="GenPlanExtractor" />
                <node concept="2OqwBi" id="2RLAZYE0CLl" role="37wK5m">
                  <node concept="37vLTw" id="2RLAZYE0C9b" role="2Oq$k0">
                    <ref role="3cqZAo" node="2RLAZYE0z3j" resolve="project" />
                  </node>
                  <node concept="liA8E" id="2RLAZYE0CLm" role="2OqNvi">
                    <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                  </node>
                </node>
                <node concept="37vLTw" id="2RLAZYE0B5y" role="37wK5m">
                  <ref role="3cqZAo" node="2RLAZYE0z3D" resolve="options" />
                </node>
                <node concept="37vLTw" id="2RLAZYE0B5z" role="37wK5m">
                  <ref role="3cqZAo" node="2RLAZYE0z3$" resolve="collector" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="2RLAZYE0BDO" role="2OqNvi">
              <ref role="37wK5l" to="ap4t:~GenPlanExtractor.configurePlanFor(org.jetbrains.mps.openapi.model.SModel)" resolve="configurePlanFor" />
              <node concept="37vLTw" id="2RLAZYE0BDP" role="37wK5m">
                <ref role="3cqZAo" node="2RLAZYE0z3l" resolve="model" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2RLAZYE0z3Q" role="3cqZAp">
          <node concept="2OqwBi" id="2RLAZYE0CNf" role="3cqZAk">
            <node concept="2OqwBi" id="2RLAZYE0CDL" role="2Oq$k0">
              <node concept="2OqwBi" id="2RLAZYE0BEj" role="2Oq$k0">
                <node concept="2ShNRf" id="2RLAZYE0B5W" role="2Oq$k0">
                  <node concept="1pGfFk" id="2RLAZYE0B69" role="2ShVmc">
                    <ref role="37wK5l" to="ap4t:~GenerationFacade.&lt;init&gt;(org.jetbrains.mps.openapi.module.SRepository,jetbrains.mps.generator.GenerationOptions)" resolve="GenerationFacade" />
                    <node concept="2OqwBi" id="2RLAZYE0CTr" role="37wK5m">
                      <node concept="37vLTw" id="2RLAZYE0CSy" role="2Oq$k0">
                        <ref role="3cqZAo" node="2RLAZYE0z3j" resolve="project" />
                      </node>
                      <node concept="liA8E" id="2RLAZYE0CTs" role="2OqNvi">
                        <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="2RLAZYE0CTA" role="37wK5m">
                      <node concept="37vLTw" id="2RLAZYE0CSA" role="2Oq$k0">
                        <ref role="3cqZAo" node="2RLAZYE0z3D" resolve="options" />
                      </node>
                      <node concept="liA8E" id="2RLAZYE0CTB" role="2OqNvi">
                        <ref role="37wK5l" to="ap4t:~GenerationOptions$OptionsBuilder.create()" resolve="create" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="2RLAZYE0BEk" role="2OqNvi">
                  <ref role="37wK5l" to="ap4t:~GenerationFacade.transients(jetbrains.mps.generator.TransientModelsProvider)" resolve="transients" />
                  <node concept="37vLTw" id="2RLAZYE0BEl" role="37wK5m">
                    <ref role="3cqZAo" node="2RLAZYE0z3r" resolve="provider" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="2RLAZYE0CDM" role="2OqNvi">
                <ref role="37wK5l" to="ap4t:~GenerationFacade.messages(jetbrains.mps.messages.IMessageHandler)" resolve="messages" />
                <node concept="37vLTw" id="2RLAZYE0CDN" role="37wK5m">
                  <ref role="3cqZAo" node="2RLAZYE0z3$" resolve="collector" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="2RLAZYE0CNg" role="2OqNvi">
              <ref role="37wK5l" to="ap4t:~GenerationFacade.process(org.jetbrains.mps.openapi.util.ProgressMonitor,org.jetbrains.mps.openapi.model.SModel)" resolve="process" />
              <node concept="2ShNRf" id="2RLAZYE0CNh" role="37wK5m">
                <node concept="1pGfFk" id="2RLAZYE0CNi" role="2ShVmc">
                  <ref role="37wK5l" to="mk8z:~EmptyProgressMonitor.&lt;init&gt;()" resolve="EmptyProgressMonitor" />
                </node>
              </node>
              <node concept="37vLTw" id="2RLAZYE0CNj" role="37wK5m">
                <ref role="3cqZAo" node="2RLAZYE0z3l" resolve="model" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="2RLAZYE0z41" role="1B3o_S" />
      <node concept="3uibUv" id="2RLAZYE0z42" role="3clF45">
        <ref role="3uigEE" to="ap4t:~GenerationStatus" resolve="GenerationStatus" />
      </node>
    </node>
    <node concept="3clFb_" id="2RLAZYE0z43" role="jymVt">
      <property role="TrG5h" value="count" />
      <node concept="37vLTG" id="2RLAZYE0z44" role="3clF46">
        <property role="TrG5h" value="root" />
        <node concept="3Tqbb2" id="2RLAZYE0Tsj" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2RLAZYE0z46" role="3clF46">
        <property role="TrG5h" value="concept" />
        <node concept="3bZ5Sz" id="2RLAZYE0Tsk" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="2RLAZYE0z48" role="3clF47">
        <node concept="3cpWs8" id="2RLAZYE0z4a" role="3cqZAp">
          <node concept="3cpWsn" id="2RLAZYE0z49" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="10Oyi0" id="2RLAZYE0z4b" role="1tU5fm" />
            <node concept="3cmrfG" id="2RLAZYE0z4c" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="2RLAZYE0z4d" role="3cqZAp">
          <node concept="2YIFZM" id="2RLAZYE0Bh_" role="1DdaDG">
            <ref role="1Pybhc" to="9toz:~ModelNodes" resolve="ModelNodes" />
            <ref role="37wK5l" to="9toz:~ModelNodes.tree(org.jetbrains.mps.openapi.model.SNode)" resolve="tree" />
            <node concept="37vLTw" id="2RLAZYE0BhA" role="37wK5m">
              <ref role="3cqZAo" node="2RLAZYE0z44" resolve="root" />
            </node>
          </node>
          <node concept="3cpWsn" id="2RLAZYE0z4m" role="1Duv9x">
            <property role="TrG5h" value="node" />
            <node concept="3Tqbb2" id="2RLAZYE0Tsl" role="1tU5fm" />
          </node>
          <node concept="3clFbS" id="2RLAZYE0z4l" role="2LFqv$">
            <node concept="3clFbJ" id="2RLAZYE0z4e" role="3cqZAp">
              <node concept="2OqwBi" id="2RLAZYE0BEv" role="3clFbw">
                <node concept="37vLTw" id="2RLAZYE0BhD" role="2Oq$k0">
                  <ref role="3cqZAo" node="2RLAZYE0z46" resolve="concept" />
                </node>
                <node concept="liA8E" id="2RLAZYE0BEw" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                  <node concept="2OqwBi" id="2RLAZYE0CNt" role="37wK5m">
                    <node concept="liA8E" id="2RLAZYE0CNu" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                    </node>
                    <node concept="2JrnkZ" id="2RLAZYE0Tro" role="2Oq$k0">
                      <node concept="37vLTw" id="2RLAZYE0CDQ" role="2JrQYb">
                        <ref role="3cqZAo" node="2RLAZYE0z4m" resolve="node" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="2RLAZYE0z4k" role="3clFbx">
                <node concept="3clFbF" id="2RLAZYE0z4h" role="3cqZAp">
                  <node concept="3uNrnE" id="2RLAZYE0z4i" role="3clFbG">
                    <node concept="37vLTw" id="2RLAZYE0z4j" role="2$L3a6">
                      <ref role="3cqZAo" node="2RLAZYE0z49" resolve="result" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2RLAZYE0z4r" role="3cqZAp">
          <node concept="37vLTw" id="2RLAZYE0z4s" role="3cqZAk">
            <ref role="3cqZAo" node="2RLAZYE0z49" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="2RLAZYE0z4t" role="1B3o_S" />
      <node concept="10Oyi0" id="2RLAZYE0z4u" role="3clF45" />
    </node>
    <node concept="3clFb_" id="2RLAZYE0z4v" role="jymVt">
      <property role="TrG5h" value="child" />
      <node concept="37vLTG" id="2RLAZYE0z4w" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="2RLAZYE0Tsm" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2RLAZYE0z4y" role="3clF46">
        <property role="TrG5h" value="link" />
        <node concept="3uibUv" id="2RLAZYE0z4z" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
        </node>
      </node>
      <node concept="3clFbS" id="2RLAZYE0z4$" role="3clF47">
        <node concept="1DcWWT" id="2RLAZYE0z4_" role="3cqZAp">
          <node concept="2OqwBi" id="2RLAZYE0BEF" role="1DdaDG">
            <node concept="liA8E" id="2RLAZYE0BEG" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNode.getChildren(org.jetbrains.mps.openapi.language.SContainmentLink)" resolve="getChildren" />
              <node concept="37vLTw" id="2RLAZYE0BEH" role="37wK5m">
                <ref role="3cqZAo" node="2RLAZYE0z4y" resolve="link" />
              </node>
            </node>
            <node concept="2JrnkZ" id="2RLAZYE0Trp" role="2Oq$k0">
              <node concept="37vLTw" id="2RLAZYE0BhI" role="2JrQYb">
                <ref role="3cqZAo" node="2RLAZYE0z4w" resolve="node" />
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="2RLAZYE0z4D" role="1Duv9x">
            <property role="TrG5h" value="result" />
            <node concept="3Tqbb2" id="2RLAZYE0Tsn" role="1tU5fm" />
          </node>
          <node concept="3clFbS" id="2RLAZYE0z4C" role="2LFqv$">
            <node concept="3cpWs6" id="2RLAZYE0z4A" role="3cqZAp">
              <node concept="37vLTw" id="2RLAZYE0z4B" role="3cqZAk">
                <ref role="3cqZAo" node="2RLAZYE0z4D" resolve="result" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2RLAZYE0z4I" role="3cqZAp">
          <node concept="10Nm6u" id="2RLAZYE0z4J" role="3cqZAk" />
        </node>
      </node>
      <node concept="3Tm6S6" id="2RLAZYE0z4K" role="1B3o_S" />
      <node concept="3Tqbb2" id="2RLAZYE0Tso" role="3clF45" />
    </node>
    <node concept="3clFb_" id="2RLAZYE0z4M" role="jymVt">
      <property role="TrG5h" value="generatedShape" />
      <node concept="37vLTG" id="2RLAZYE0z4N" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="2RLAZYE0z4O" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="37vLTG" id="2RLAZYE0z4P" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="H_c77" id="2RLAZYE0Tsp" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="2RLAZYE0z4R" role="3clF47">
        <node concept="3cpWs8" id="2RLAZYE0z4T" role="3cqZAp">
          <node concept="3cpWsn" id="2RLAZYE0z4S" role="3cpWs9">
            <property role="TrG5h" value="messages" />
            <node concept="3uibUv" id="2RLAZYE0z4U" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="2RLAZYE0z4V" role="11_B2D">
                <ref role="3uigEE" to="et5u:~IMessage" resolve="IMessage" />
              </node>
            </node>
            <node concept="2ShNRf" id="2RLAZYE0BhL" role="33vP2m">
              <node concept="1pGfFk" id="2RLAZYE0BhQ" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                <node concept="3uibUv" id="2RLAZYE0BhR" role="1pMfVU">
                  <ref role="3uigEE" to="et5u:~IMessage" resolve="IMessage" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2RLAZYE0z4Z" role="3cqZAp">
          <node concept="3cpWsn" id="2RLAZYE0z4Y" role="3cpWs9">
            <property role="TrG5h" value="status" />
            <node concept="3uibUv" id="2RLAZYE0z50" role="1tU5fm">
              <ref role="3uigEE" to="ap4t:~GenerationStatus" resolve="GenerationStatus" />
            </node>
            <node concept="1rXfSq" id="2RLAZYE0z51" role="33vP2m">
              <ref role="37wK5l" node="2RLAZYE0z3i" resolve="generate" />
              <node concept="37vLTw" id="2RLAZYE0z52" role="37wK5m">
                <ref role="3cqZAo" node="2RLAZYE0z4N" resolve="project" />
              </node>
              <node concept="37vLTw" id="2RLAZYE0z53" role="37wK5m">
                <ref role="3cqZAo" node="2RLAZYE0z4P" resolve="model" />
              </node>
              <node concept="37vLTw" id="2RLAZYE0z54" role="37wK5m">
                <ref role="3cqZAo" node="2RLAZYE0z4S" resolve="messages" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3vlDli" id="2RLAZYE0DVp" role="3cqZAp">
          <node concept="3clFbT" id="2RLAZYE0BhV" role="3tpDZB">
            <property role="3clFbU" value="true" />
          </node>
          <node concept="2OqwBi" id="2RLAZYE0CE3" role="3tpDZA">
            <node concept="37vLTw" id="2RLAZYE0BEK" role="2Oq$k0">
              <ref role="3cqZAo" node="2RLAZYE0z4Y" resolve="status" />
            </node>
            <node concept="liA8E" id="2RLAZYE0CE4" role="2OqNvi">
              <ref role="37wK5l" to="18ew:~IStatus.isOk()" resolve="isOk" />
            </node>
          </node>
          <node concept="3_1$Yv" id="2RLAZYE0DVq" role="3_9lra">
            <node concept="2YIFZM" id="2RLAZYE1HNo" role="3_1BAH">
              <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
              <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object)" resolve="valueOf" />
              <node concept="37vLTw" id="2RLAZYE1HNp" role="37wK5m">
                <ref role="3cqZAo" node="2RLAZYE0z4S" resolve="messages" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2RLAZYE0z5a" role="3cqZAp">
          <node concept="3cpWsn" id="2RLAZYE0z59" role="3cpWs9">
            <property role="TrG5h" value="declarationEditor" />
            <node concept="3Tqbb2" id="2RLAZYE0Tsq" role="1tU5fm" />
            <node concept="10Nm6u" id="2RLAZYE0z5c" role="33vP2m" />
          </node>
        </node>
        <node concept="1DcWWT" id="2RLAZYE0z5d" role="3cqZAp">
          <node concept="2OqwBi" id="2RLAZYE0CF9" role="1DdaDG">
            <node concept="liA8E" id="2RLAZYE0CFa" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SModel.getRootNodes()" resolve="getRootNodes" />
            </node>
            <node concept="2JrnkZ" id="2RLAZYE0Trq" role="2Oq$k0">
              <node concept="2OqwBi" id="2RLAZYE0BF3" role="2JrQYb">
                <node concept="37vLTw" id="2RLAZYE0Bi7" role="2Oq$k0">
                  <ref role="3cqZAo" node="2RLAZYE0z4Y" resolve="status" />
                </node>
                <node concept="liA8E" id="2RLAZYE0BF4" role="2OqNvi">
                  <ref role="37wK5l" to="ap4t:~GenerationStatus.getOutputModel()" resolve="getOutputModel" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="2RLAZYE0z5w" role="1Duv9x">
            <property role="TrG5h" value="root" />
            <node concept="3Tqbb2" id="2RLAZYE0Tsr" role="1tU5fm" />
          </node>
          <node concept="3clFbS" id="2RLAZYE0z5f" role="2LFqv$">
            <node concept="3clFbJ" id="2RLAZYE0z5g" role="3cqZAp">
              <node concept="1Wc70l" id="2RLAZYE0z5h" role="3clFbw">
                <node concept="2OqwBi" id="2RLAZYE0BFj" role="3uHU7B">
                  <node concept="37vLTw" id="2RLAZYE0Bib" role="2Oq$k0">
                    <ref role="3cqZAo" node="2RLAZYE0yV8" resolve="EDITOR" />
                  </node>
                  <node concept="liA8E" id="2RLAZYE0BFk" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                    <node concept="2OqwBi" id="2RLAZYE0CNC" role="37wK5m">
                      <node concept="liA8E" id="2RLAZYE0CND" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                      </node>
                      <node concept="2JrnkZ" id="2RLAZYE0Trr" role="2Oq$k0">
                        <node concept="37vLTw" id="2RLAZYE0CFd" role="2JrQYb">
                          <ref role="3cqZAo" node="2RLAZYE0z5w" resolve="root" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="2RLAZYE0Bis" role="3uHU7w">
                  <node concept="Xl_RD" id="2RLAZYE0z5l" role="2Oq$k0">
                    <property role="Xl_RC" value="Declaration" />
                  </node>
                  <node concept="liA8E" id="2RLAZYE0Bit" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                    <node concept="2OqwBi" id="2RLAZYE0CO5" role="37wK5m">
                      <node concept="liA8E" id="2RLAZYE0CO6" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getProperty(org.jetbrains.mps.openapi.language.SProperty)" resolve="getProperty" />
                        <node concept="37vLTw" id="2RLAZYE0CO7" role="37wK5m">
                          <ref role="3cqZAo" node="2RLAZYE0yVw" resolve="NAME" />
                        </node>
                      </node>
                      <node concept="2JrnkZ" id="2RLAZYE0Trt" role="2Oq$k0">
                        <node concept="2OqwBi" id="2RLAZYE0CFw" role="2JrQYb">
                          <node concept="liA8E" id="2RLAZYE0CFx" role="2OqNvi">
                            <ref role="37wK5l" to="mhbf:~SNode.getReferenceTarget(org.jetbrains.mps.openapi.language.SReferenceLink)" resolve="getReferenceTarget" />
                            <node concept="37vLTw" id="2RLAZYE0CFy" role="37wK5m">
                              <ref role="3cqZAo" node="2RLAZYE0yVW" resolve="EDITED_CONCEPT" />
                            </node>
                          </node>
                          <node concept="2JrnkZ" id="2RLAZYE0Trs" role="2Oq$k0">
                            <node concept="37vLTw" id="2RLAZYE0BFw" role="2JrQYb">
                              <ref role="3cqZAo" node="2RLAZYE0z5w" resolve="root" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="2RLAZYE0z5r" role="3clFbx">
                <node concept="3clFbF" id="2RLAZYE0z5s" role="3cqZAp">
                  <node concept="37vLTI" id="2RLAZYE0z5t" role="3clFbG">
                    <node concept="37vLTw" id="2RLAZYE0z5u" role="37vLTJ">
                      <ref role="3cqZAo" node="2RLAZYE0z59" resolve="declarationEditor" />
                    </node>
                    <node concept="37vLTw" id="2RLAZYE0z5v" role="37vLTx">
                      <ref role="3cqZAo" node="2RLAZYE0z5w" resolve="root" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2RLAZYE0z5_" role="3cqZAp">
          <node concept="37vLTI" id="2RLAZYE0z5A" role="3clFbG">
            <node concept="37vLTw" id="2RLAZYE0z5B" role="37vLTJ">
              <ref role="3cqZAo" node="2RLAZYE0z59" resolve="declarationEditor" />
            </node>
            <node concept="2YIFZM" id="2RLAZYE0Bi$" role="37vLTx">
              <ref role="1Pybhc" to="33ny:~Objects" resolve="Objects" />
              <ref role="37wK5l" to="33ny:~Objects.requireNonNull(java.lang.Object,java.lang.String)" resolve="requireNonNull" />
              <node concept="37vLTw" id="2RLAZYE0Bi_" role="37wK5m">
                <ref role="3cqZAo" node="2RLAZYE0z59" resolve="declarationEditor" />
              </node>
              <node concept="Xl_RD" id="2RLAZYE0BiA" role="37wK5m">
                <property role="Xl_RC" value="Missing real generated Declaration editor" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2RLAZYE0z5G" role="3cqZAp">
          <node concept="3cpWsn" id="2RLAZYE0z5F" role="3cpWs9">
            <property role="TrG5h" value="textual" />
            <node concept="3Tqbb2" id="2RLAZYE0Tss" role="1tU5fm" />
            <node concept="2YIFZM" id="2RLAZYE0BiD" role="33vP2m">
              <ref role="1Pybhc" to="33ny:~Objects" resolve="Objects" />
              <ref role="37wK5l" to="33ny:~Objects.requireNonNull(java.lang.Object,java.lang.String)" resolve="requireNonNull" />
              <node concept="1rXfSq" id="2RLAZYE0BiE" role="37wK5m">
                <ref role="37wK5l" node="2RLAZYE0z4v" resolve="child" />
                <node concept="37vLTw" id="2RLAZYE0BiF" role="37wK5m">
                  <ref role="3cqZAo" node="2RLAZYE0z59" resolve="declarationEditor" />
                </node>
                <node concept="37vLTw" id="2RLAZYE0BiG" role="37wK5m">
                  <ref role="3cqZAo" node="2RLAZYE0yW0" resolve="CELL" />
                </node>
              </node>
              <node concept="Xl_RD" id="2RLAZYE0BiH" role="37wK5m">
                <property role="Xl_RC" value="Missing textual editor" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2RLAZYE0z5O" role="3cqZAp">
          <node concept="3cpWsn" id="2RLAZYE0z5N" role="3cpWs9">
            <property role="TrG5h" value="form" />
            <node concept="3Tqbb2" id="2RLAZYE0Tst" role="1tU5fm" />
            <node concept="2YIFZM" id="2RLAZYE0BiK" role="33vP2m">
              <ref role="1Pybhc" to="33ny:~Objects" resolve="Objects" />
              <ref role="37wK5l" to="33ny:~Objects.requireNonNull(java.lang.Object,java.lang.String)" resolve="requireNonNull" />
              <node concept="1rXfSq" id="2RLAZYE0BiL" role="37wK5m">
                <ref role="37wK5l" node="2RLAZYE0z4v" resolve="child" />
                <node concept="37vLTw" id="2RLAZYE0BiM" role="37wK5m">
                  <ref role="3cqZAo" node="2RLAZYE0z59" resolve="declarationEditor" />
                </node>
                <node concept="37vLTw" id="2RLAZYE0BiN" role="37wK5m">
                  <ref role="3cqZAo" node="2RLAZYE0yW4" resolve="INSPECTOR" />
                </node>
              </node>
              <node concept="Xl_RD" id="2RLAZYE0BiO" role="37wK5m">
                <property role="Xl_RC" value="Missing form editor" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2RLAZYE0z5V" role="3cqZAp">
          <node concept="3cpWs3" id="2RLAZYE0z5W" role="3cqZAk">
            <node concept="3cpWs3" id="2RLAZYE0z5X" role="3uHU7B">
              <node concept="3cpWs3" id="2RLAZYE0z5Y" role="3uHU7B">
                <node concept="3cpWs3" id="2RLAZYE0z5Z" role="3uHU7B">
                  <node concept="3cpWs3" id="2RLAZYE0z60" role="3uHU7B">
                    <node concept="3cpWs3" id="2RLAZYE0z61" role="3uHU7B">
                      <node concept="1rXfSq" id="2RLAZYE0z62" role="3uHU7B">
                        <ref role="37wK5l" node="2RLAZYE0z43" resolve="count" />
                        <node concept="37vLTw" id="2RLAZYE0z63" role="37wK5m">
                          <ref role="3cqZAo" node="2RLAZYE0z5F" resolve="textual" />
                        </node>
                        <node concept="37vLTw" id="2RLAZYE0z64" role="37wK5m">
                          <ref role="3cqZAo" node="2RLAZYE0yVc" resolve="ACCESS" />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="2RLAZYE0z65" role="3uHU7w">
                        <property role="Xl_RC" value=":" />
                      </node>
                    </node>
                    <node concept="1rXfSq" id="2RLAZYE0z66" role="3uHU7w">
                      <ref role="37wK5l" node="2RLAZYE0z43" resolve="count" />
                      <node concept="37vLTw" id="2RLAZYE0z67" role="37wK5m">
                        <ref role="3cqZAo" node="2RLAZYE0z5F" resolve="textual" />
                      </node>
                      <node concept="37vLTw" id="2RLAZYE0z68" role="37wK5m">
                        <ref role="3cqZAo" node="2RLAZYE0yVg" resolve="CHECKBOX" />
                      </node>
                    </node>
                  </node>
                  <node concept="Xl_RD" id="2RLAZYE0z69" role="3uHU7w">
                    <property role="Xl_RC" value="/" />
                  </node>
                </node>
                <node concept="1rXfSq" id="2RLAZYE0z6a" role="3uHU7w">
                  <ref role="37wK5l" node="2RLAZYE0z43" resolve="count" />
                  <node concept="37vLTw" id="2RLAZYE0z6b" role="37wK5m">
                    <ref role="3cqZAo" node="2RLAZYE0z5N" resolve="form" />
                  </node>
                  <node concept="37vLTw" id="2RLAZYE0z6c" role="37wK5m">
                    <ref role="3cqZAo" node="2RLAZYE0yVc" resolve="ACCESS" />
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="2RLAZYE0z6d" role="3uHU7w">
                <property role="Xl_RC" value=":" />
              </node>
            </node>
            <node concept="1rXfSq" id="2RLAZYE0z6e" role="3uHU7w">
              <ref role="37wK5l" node="2RLAZYE0z43" resolve="count" />
              <node concept="37vLTw" id="2RLAZYE0z6f" role="37wK5m">
                <ref role="3cqZAo" node="2RLAZYE0z5N" resolve="form" />
              </node>
              <node concept="37vLTw" id="2RLAZYE0z6g" role="37wK5m">
                <ref role="3cqZAo" node="2RLAZYE0yVg" resolve="CHECKBOX" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="2RLAZYE0z6h" role="1B3o_S" />
      <node concept="17QB3L" id="2RLAZYE0DV$" role="3clF45" />
    </node>
    <node concept="3clFb_" id="2RLAZYE0z6j" role="jymVt">
      <property role="TrG5h" value="interactive" />
      <node concept="37vLTG" id="2RLAZYE0z6k" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="2RLAZYE0z6l" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="3clFbS" id="2RLAZYE0z6m" role="3clF47">
        <node concept="3cpWs6" id="2RLAZYE0z6n" role="3cqZAp">
          <node concept="2YIFZM" id="2RLAZYE0BiR" role="3cqZAk">
            <ref role="1Pybhc" to="33ny:~Objects" resolve="Objects" />
            <ref role="37wK5l" to="33ny:~Objects.requireNonNull(java.lang.Object,java.lang.String)" resolve="requireNonNull" />
            <node concept="2OqwBi" id="2RLAZYE0COA" role="37wK5m">
              <node concept="2OqwBi" id="2RLAZYE0CFR" role="2Oq$k0">
                <node concept="2YIFZM" id="2RLAZYE0BFP" role="2Oq$k0">
                  <ref role="1Pybhc" to="dush:~PersistenceFacade" resolve="PersistenceFacade" />
                  <ref role="37wK5l" to="dush:~PersistenceFacade.getInstance()" resolve="getInstance" />
                </node>
                <node concept="liA8E" id="2RLAZYE0CFS" role="2OqNvi">
                  <ref role="37wK5l" to="dush:~PersistenceFacade.createModelReference(java.lang.String)" resolve="createModelReference" />
                  <node concept="Xl_RD" id="2RLAZYE0CFT" role="37wK5m">
                    <property role="Xl_RC" value="r:2655fdd9-5e4e-4901-8b30-fc4c402d27e1(mbnf.sandbox.InteractiveFixture)" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="2RLAZYE0COB" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SModelReference.resolve(org.jetbrains.mps.openapi.module.SRepository)" resolve="resolve" />
                <node concept="2OqwBi" id="2RLAZYE0COC" role="37wK5m">
                  <node concept="37vLTw" id="2RLAZYE0COD" role="2Oq$k0">
                    <ref role="3cqZAo" node="2RLAZYE0z6k" resolve="project" />
                  </node>
                  <node concept="liA8E" id="2RLAZYE0COE" role="2OqNvi">
                    <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="Xl_RD" id="2RLAZYE0BiX" role="37wK5m">
              <property role="Xl_RC" value="Missing isolated interactive grammar fixture" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="2RLAZYE0z6v" role="1B3o_S" />
      <node concept="H_c77" id="2RLAZYE0Tsu" role="3clF45" />
    </node>
    <node concept="3clFb_" id="2RLAZYE0z6x" role="jymVt">
      <property role="TrG5h" value="actualProfileGeneration" />
      <node concept="37vLTG" id="2RLAZYE0z6y" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="2RLAZYE0z6z" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="3clFbS" id="2RLAZYE0z6$" role="3clF47">
        <node concept="3cpWs8" id="2RLAZYE0z6A" role="3cqZAp">
          <node concept="3cpWsn" id="2RLAZYE0z6_" role="3cpWs9">
            <property role="TrG5h" value="model" />
            <node concept="H_c77" id="2RLAZYE0Tsv" role="1tU5fm" />
            <node concept="1rXfSq" id="2RLAZYE0z6C" role="33vP2m">
              <ref role="37wK5l" node="2RLAZYE0z6j" resolve="interactive" />
              <node concept="37vLTw" id="2RLAZYE0z6D" role="37wK5m">
                <ref role="3cqZAo" node="2RLAZYE0z6y" resolve="project" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2RLAZYE0z6F" role="3cqZAp">
          <node concept="3cpWsn" id="2RLAZYE0z6E" role="3cpWs9">
            <property role="TrG5h" value="originalGrammar" />
            <node concept="3Tqbb2" id="2RLAZYE0Tsw" role="1tU5fm" />
            <node concept="10Nm6u" id="2RLAZYE0z6H" role="33vP2m" />
          </node>
        </node>
        <node concept="1DcWWT" id="2RLAZYE0z6I" role="3cqZAp">
          <node concept="2OqwBi" id="2RLAZYE0BG4" role="1DdaDG">
            <node concept="liA8E" id="2RLAZYE0BG5" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SModel.getRootNodes()" resolve="getRootNodes" />
            </node>
            <node concept="2JrnkZ" id="2RLAZYE0Tru" role="2Oq$k0">
              <node concept="37vLTw" id="2RLAZYE0Bj0" role="2JrQYb">
                <ref role="3cqZAo" node="2RLAZYE0z6_" resolve="model" />
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="2RLAZYE0z6U" role="1Duv9x">
            <property role="TrG5h" value="root" />
            <node concept="3Tqbb2" id="2RLAZYE0Tsx" role="1tU5fm" />
          </node>
          <node concept="3clFbS" id="2RLAZYE0z6T" role="2LFqv$">
            <node concept="3clFbJ" id="2RLAZYE0z6J" role="3cqZAp">
              <node concept="2OqwBi" id="2RLAZYE0Bjg" role="3clFbw">
                <node concept="Xl_RD" id="2RLAZYE0z6L" role="2Oq$k0">
                  <property role="Xl_RC" value="DemoUsability" />
                </node>
                <node concept="liA8E" id="2RLAZYE0Bjh" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                  <node concept="2OqwBi" id="2RLAZYE0CGe" role="37wK5m">
                    <node concept="liA8E" id="2RLAZYE0CGf" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.getProperty(org.jetbrains.mps.openapi.language.SProperty)" resolve="getProperty" />
                      <node concept="37vLTw" id="2RLAZYE0CGg" role="37wK5m">
                        <ref role="3cqZAo" node="2RLAZYE0yVw" resolve="NAME" />
                      </node>
                    </node>
                    <node concept="2JrnkZ" id="2RLAZYE0Trv" role="2Oq$k0">
                      <node concept="37vLTw" id="2RLAZYE0BG8" role="2JrQYb">
                        <ref role="3cqZAo" node="2RLAZYE0z6U" resolve="root" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="2RLAZYE0z6S" role="3clFbx">
                <node concept="3clFbF" id="2RLAZYE0z6O" role="3cqZAp">
                  <node concept="37vLTI" id="2RLAZYE0z6P" role="3clFbG">
                    <node concept="37vLTw" id="2RLAZYE0z6Q" role="37vLTJ">
                      <ref role="3cqZAo" node="2RLAZYE0z6E" resolve="originalGrammar" />
                    </node>
                    <node concept="37vLTw" id="2RLAZYE0z6R" role="37vLTx">
                      <ref role="3cqZAo" node="2RLAZYE0z6U" resolve="root" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2RLAZYE0z6Y" role="3cqZAp">
          <node concept="37vLTI" id="2RLAZYE0z6Z" role="3clFbG">
            <node concept="37vLTw" id="2RLAZYE0z70" role="37vLTJ">
              <ref role="3cqZAo" node="2RLAZYE0z6E" resolve="originalGrammar" />
            </node>
            <node concept="2YIFZM" id="2RLAZYE0Bjm" role="37vLTx">
              <ref role="1Pybhc" to="33ny:~Objects" resolve="Objects" />
              <ref role="37wK5l" to="33ny:~Objects.requireNonNull(java.lang.Object,java.lang.String)" resolve="requireNonNull" />
              <node concept="37vLTw" id="2RLAZYE0Bjn" role="37wK5m">
                <ref role="3cqZAo" node="2RLAZYE0z6E" resolve="originalGrammar" />
              </node>
              <node concept="Xl_RD" id="2RLAZYE0Bjo" role="37wK5m">
                <property role="Xl_RC" value="Missing interactive grammar" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2RLAZYE0z75" role="3cqZAp">
          <node concept="3cpWsn" id="2RLAZYE0z74" role="3cpWs9">
            <property role="TrG5h" value="flag" />
            <node concept="3Tqbb2" id="2RLAZYE0Tsy" role="1tU5fm" />
            <node concept="10Nm6u" id="2RLAZYE0z77" role="33vP2m" />
          </node>
        </node>
        <node concept="1DcWWT" id="2RLAZYE0z78" role="3cqZAp">
          <node concept="2YIFZM" id="2RLAZYE0Bjr" role="1DdaDG">
            <ref role="1Pybhc" to="9toz:~ModelNodes" resolve="ModelNodes" />
            <ref role="37wK5l" to="9toz:~ModelNodes.tree(org.jetbrains.mps.openapi.model.SNode)" resolve="tree" />
            <node concept="37vLTw" id="2RLAZYE0Bjs" role="37wK5m">
              <ref role="3cqZAo" node="2RLAZYE0z6E" resolve="originalGrammar" />
            </node>
          </node>
          <node concept="3cpWsn" id="2RLAZYE0z7o" role="1Duv9x">
            <property role="TrG5h" value="node" />
            <node concept="3Tqbb2" id="2RLAZYE0Tsz" role="1tU5fm" />
          </node>
          <node concept="3clFbS" id="2RLAZYE0z7a" role="2LFqv$">
            <node concept="3clFbJ" id="2RLAZYE0z7b" role="3cqZAp">
              <node concept="1Wc70l" id="2RLAZYE0z7c" role="3clFbw">
                <node concept="2OqwBi" id="2RLAZYE0BGp" role="3uHU7B">
                  <node concept="37vLTw" id="2RLAZYE0Bjv" role="2Oq$k0">
                    <ref role="3cqZAo" node="2RLAZYE0yUW" resolve="FLAG" />
                  </node>
                  <node concept="liA8E" id="2RLAZYE0BGq" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                    <node concept="2OqwBi" id="2RLAZYE0COO" role="37wK5m">
                      <node concept="liA8E" id="2RLAZYE0COP" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                      </node>
                      <node concept="2JrnkZ" id="2RLAZYE0Trw" role="2Oq$k0">
                        <node concept="37vLTw" id="2RLAZYE0CGj" role="2JrQYb">
                          <ref role="3cqZAo" node="2RLAZYE0z7o" resolve="node" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="2RLAZYE0BjK" role="3uHU7w">
                  <node concept="Xl_RD" id="2RLAZYE0z7g" role="2Oq$k0">
                    <property role="Xl_RC" value="public" />
                  </node>
                  <node concept="liA8E" id="2RLAZYE0BjL" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                    <node concept="2OqwBi" id="2RLAZYE0CGu" role="37wK5m">
                      <node concept="liA8E" id="2RLAZYE0CGv" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getProperty(org.jetbrains.mps.openapi.language.SProperty)" resolve="getProperty" />
                        <node concept="37vLTw" id="2RLAZYE0CGw" role="37wK5m">
                          <ref role="3cqZAo" node="2RLAZYE0yVw" resolve="NAME" />
                        </node>
                      </node>
                      <node concept="2JrnkZ" id="2RLAZYE0Trx" role="2Oq$k0">
                        <node concept="37vLTw" id="2RLAZYE0BGu" role="2JrQYb">
                          <ref role="3cqZAo" node="2RLAZYE0z7o" resolve="node" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="2RLAZYE0z7n" role="3clFbx">
                <node concept="3clFbF" id="2RLAZYE0z7j" role="3cqZAp">
                  <node concept="37vLTI" id="2RLAZYE0z7k" role="3clFbG">
                    <node concept="37vLTw" id="2RLAZYE0z7l" role="37vLTJ">
                      <ref role="3cqZAo" node="2RLAZYE0z74" resolve="flag" />
                    </node>
                    <node concept="37vLTw" id="2RLAZYE0z7m" role="37vLTx">
                      <ref role="3cqZAo" node="2RLAZYE0z7o" resolve="node" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2RLAZYE0z7t" role="3cqZAp">
          <node concept="37vLTI" id="2RLAZYE0z7u" role="3clFbG">
            <node concept="37vLTw" id="2RLAZYE0z7v" role="37vLTJ">
              <ref role="3cqZAo" node="2RLAZYE0z74" resolve="flag" />
            </node>
            <node concept="2YIFZM" id="2RLAZYE0BjQ" role="37vLTx">
              <ref role="1Pybhc" to="33ny:~Objects" resolve="Objects" />
              <ref role="37wK5l" to="33ny:~Objects.requireNonNull(java.lang.Object,java.lang.String)" resolve="requireNonNull" />
              <node concept="37vLTw" id="2RLAZYE0BjR" role="37wK5m">
                <ref role="3cqZAo" node="2RLAZYE0z74" resolve="flag" />
              </node>
              <node concept="Xl_RD" id="2RLAZYE0BjS" role="37wK5m">
                <property role="Xl_RC" value="Missing public occurrence" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2RLAZYE0z7$" role="3cqZAp">
          <node concept="3cpWsn" id="2RLAZYE0z7z" role="3cpWs9">
            <property role="TrG5h" value="profile" />
            <node concept="3Tqbb2" id="2RLAZYE0Ts$" role="1tU5fm" />
            <node concept="2YIFZM" id="2RLAZYE0BjV" role="33vP2m">
              <ref role="1Pybhc" to="9toz:~GenerationProfiles" resolve="GenerationProfiles" />
              <ref role="37wK5l" to="9toz:~GenerationProfiles.createProfile(org.jetbrains.mps.openapi.model.SModel,org.jetbrains.mps.openapi.model.SNode,java.lang.String)" resolve="createProfile" />
              <node concept="37vLTw" id="2RLAZYE0BjW" role="37wK5m">
                <ref role="3cqZAo" node="2RLAZYE0z6_" resolve="model" />
              </node>
              <node concept="37vLTw" id="2RLAZYE0BjX" role="37wK5m">
                <ref role="3cqZAo" node="2RLAZYE0z6E" resolve="originalGrammar" />
              </node>
              <node concept="Xl_RD" id="2RLAZYE0BjY" role="37wK5m">
                <property role="Xl_RC" value="vanilla" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="2RLAZYE0z8D" role="3cqZAp">
          <node concept="1wplmZ" id="2RLAZYE0z8E" role="1zxBo6">
            <node concept="3clFbS" id="2RLAZYE0z8_" role="1wplMD">
              <node concept="3clFbF" id="2RLAZYE0z8A" role="3cqZAp">
                <node concept="2OqwBi" id="2RLAZYE0BGF" role="3clFbG">
                  <node concept="liA8E" id="2RLAZYE0BGG" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SModel.removeRootNode(org.jetbrains.mps.openapi.model.SNode)" resolve="removeRootNode" />
                    <node concept="37vLTw" id="2RLAZYE0BGH" role="37wK5m">
                      <ref role="3cqZAo" node="2RLAZYE0z7z" resolve="profile" />
                    </node>
                  </node>
                  <node concept="2JrnkZ" id="2RLAZYE0Try" role="2Oq$k0">
                    <node concept="37vLTw" id="2RLAZYE0Bk1" role="2JrQYb">
                      <ref role="3cqZAo" node="2RLAZYE0z6_" resolve="model" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="2RLAZYE0z7F" role="1zxBo7">
            <node concept="3cpWs8" id="2RLAZYE0z7H" role="3cqZAp">
              <node concept="3cpWsn" id="2RLAZYE0z7G" role="3cpWs9">
                <property role="TrG5h" value="result" />
                <node concept="17QB3L" id="2RLAZYE0DV_" role="1tU5fm" />
                <node concept="1rXfSq" id="2RLAZYE0z7J" role="33vP2m">
                  <ref role="37wK5l" node="2RLAZYE0z4M" resolve="generatedShape" />
                  <node concept="37vLTw" id="2RLAZYE0z7K" role="37wK5m">
                    <ref role="3cqZAo" node="2RLAZYE0z6y" resolve="project" />
                  </node>
                  <node concept="37vLTw" id="2RLAZYE0z7L" role="37wK5m">
                    <ref role="3cqZAo" node="2RLAZYE0z6_" resolve="model" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2RLAZYE0z7M" role="3cqZAp">
              <node concept="2YIFZM" id="2RLAZYE0Bk6" role="3clFbG">
                <ref role="1Pybhc" to="9toz:~GenerationProfiles" resolve="GenerationProfiles" />
                <ref role="37wK5l" to="9toz:~GenerationProfiles.select(org.jetbrains.mps.openapi.model.SNode,java.lang.String,org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String)" resolve="select" />
                <node concept="37vLTw" id="2RLAZYE0Bk7" role="37wK5m">
                  <ref role="3cqZAo" node="2RLAZYE0z7z" resolve="profile" />
                </node>
                <node concept="Xl_RD" id="2RLAZYE0Bk8" role="37wK5m">
                  <property role="Xl_RC" value="Occurrence" />
                </node>
                <node concept="37vLTw" id="2RLAZYE0Bk9" role="37wK5m">
                  <ref role="3cqZAo" node="2RLAZYE0z74" resolve="flag" />
                </node>
                <node concept="Xl_RD" id="2RLAZYE0Bka" role="37wK5m">
                  <property role="Xl_RC" value="Flag" />
                </node>
                <node concept="Xl_RD" id="2RLAZYE0Bkb" role="37wK5m">
                  <property role="Xl_RC" value="Textual" />
                </node>
                <node concept="Xl_RD" id="2RLAZYE0Bkc" role="37wK5m">
                  <property role="Xl_RC" value="vanilla.checkbox" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2RLAZYE0z7U" role="3cqZAp">
              <node concept="2YIFZM" id="2RLAZYE0Bkf" role="3clFbG">
                <ref role="1Pybhc" to="9toz:~GenerationProfiles" resolve="GenerationProfiles" />
                <ref role="37wK5l" to="9toz:~GenerationProfiles.select(org.jetbrains.mps.openapi.model.SNode,java.lang.String,org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String)" resolve="select" />
                <node concept="37vLTw" id="2RLAZYE0Bkg" role="37wK5m">
                  <ref role="3cqZAo" node="2RLAZYE0z7z" resolve="profile" />
                </node>
                <node concept="Xl_RD" id="2RLAZYE0Bkh" role="37wK5m">
                  <property role="Xl_RC" value="Occurrence" />
                </node>
                <node concept="37vLTw" id="2RLAZYE0Bki" role="37wK5m">
                  <ref role="3cqZAo" node="2RLAZYE0z74" resolve="flag" />
                </node>
                <node concept="Xl_RD" id="2RLAZYE0Bkj" role="37wK5m">
                  <property role="Xl_RC" value="Flag" />
                </node>
                <node concept="Xl_RD" id="2RLAZYE0Bkk" role="37wK5m">
                  <property role="Xl_RC" value="Form" />
                </node>
                <node concept="Xl_RD" id="2RLAZYE0Bkl" role="37wK5m">
                  <property role="Xl_RC" value="vanilla.keyword" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2RLAZYE0z82" role="3cqZAp">
              <node concept="37vLTI" id="2RLAZYE0z83" role="3clFbG">
                <node concept="37vLTw" id="2RLAZYE0z84" role="37vLTJ">
                  <ref role="3cqZAo" node="2RLAZYE0z7G" resolve="result" />
                </node>
                <node concept="3cpWs3" id="2RLAZYE0z85" role="37vLTx">
                  <node concept="3cpWs3" id="2RLAZYE0z86" role="3uHU7B">
                    <node concept="37vLTw" id="2RLAZYE0z87" role="3uHU7B">
                      <ref role="3cqZAo" node="2RLAZYE0z7G" resolve="result" />
                    </node>
                    <node concept="Xl_RD" id="2RLAZYE0z88" role="3uHU7w">
                      <property role="Xl_RC" value="|" />
                    </node>
                  </node>
                  <node concept="1rXfSq" id="2RLAZYE0z89" role="3uHU7w">
                    <ref role="37wK5l" node="2RLAZYE0z4M" resolve="generatedShape" />
                    <node concept="37vLTw" id="2RLAZYE0z8a" role="37wK5m">
                      <ref role="3cqZAo" node="2RLAZYE0z6y" resolve="project" />
                    </node>
                    <node concept="37vLTw" id="2RLAZYE0z8b" role="37wK5m">
                      <ref role="3cqZAo" node="2RLAZYE0z6_" resolve="model" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2RLAZYE0z8c" role="3cqZAp">
              <node concept="2YIFZM" id="2RLAZYE0Bko" role="3clFbG">
                <ref role="1Pybhc" to="9toz:~GenerationProfiles" resolve="GenerationProfiles" />
                <ref role="37wK5l" to="9toz:~GenerationProfiles.select(org.jetbrains.mps.openapi.model.SNode,java.lang.String,org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String)" resolve="select" />
                <node concept="37vLTw" id="2RLAZYE0Bkp" role="37wK5m">
                  <ref role="3cqZAo" node="2RLAZYE0z7z" resolve="profile" />
                </node>
                <node concept="Xl_RD" id="2RLAZYE0Bkq" role="37wK5m">
                  <property role="Xl_RC" value="Occurrence" />
                </node>
                <node concept="37vLTw" id="2RLAZYE0Bkr" role="37wK5m">
                  <ref role="3cqZAo" node="2RLAZYE0z74" resolve="flag" />
                </node>
                <node concept="Xl_RD" id="2RLAZYE0Bks" role="37wK5m">
                  <property role="Xl_RC" value="Flag" />
                </node>
                <node concept="Xl_RD" id="2RLAZYE0Bkt" role="37wK5m">
                  <property role="Xl_RC" value="Textual" />
                </node>
                <node concept="Xl_RD" id="2RLAZYE0Bku" role="37wK5m">
                  <property role="Xl_RC" value="auto" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2RLAZYE0z8k" role="3cqZAp">
              <node concept="2YIFZM" id="2RLAZYE0Bkx" role="3clFbG">
                <ref role="1Pybhc" to="9toz:~GenerationProfiles" resolve="GenerationProfiles" />
                <ref role="37wK5l" to="9toz:~GenerationProfiles.select(org.jetbrains.mps.openapi.model.SNode,java.lang.String,org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String)" resolve="select" />
                <node concept="37vLTw" id="2RLAZYE0Bky" role="37wK5m">
                  <ref role="3cqZAo" node="2RLAZYE0z7z" resolve="profile" />
                </node>
                <node concept="Xl_RD" id="2RLAZYE0Bkz" role="37wK5m">
                  <property role="Xl_RC" value="Occurrence" />
                </node>
                <node concept="37vLTw" id="2RLAZYE0Bk$" role="37wK5m">
                  <ref role="3cqZAo" node="2RLAZYE0z74" resolve="flag" />
                </node>
                <node concept="Xl_RD" id="2RLAZYE0Bk_" role="37wK5m">
                  <property role="Xl_RC" value="Flag" />
                </node>
                <node concept="Xl_RD" id="2RLAZYE0BkA" role="37wK5m">
                  <property role="Xl_RC" value="Form" />
                </node>
                <node concept="Xl_RD" id="2RLAZYE0BkB" role="37wK5m">
                  <property role="Xl_RC" value="auto" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="2RLAZYE0z8s" role="3cqZAp">
              <node concept="3cpWs3" id="2RLAZYE0z8t" role="3cqZAk">
                <node concept="3cpWs3" id="2RLAZYE0z8u" role="3uHU7B">
                  <node concept="37vLTw" id="2RLAZYE0z8v" role="3uHU7B">
                    <ref role="3cqZAo" node="2RLAZYE0z7G" resolve="result" />
                  </node>
                  <node concept="Xl_RD" id="2RLAZYE0z8w" role="3uHU7w">
                    <property role="Xl_RC" value="|" />
                  </node>
                </node>
                <node concept="1rXfSq" id="2RLAZYE0z8x" role="3uHU7w">
                  <ref role="37wK5l" node="2RLAZYE0z4M" resolve="generatedShape" />
                  <node concept="37vLTw" id="2RLAZYE0z8y" role="37wK5m">
                    <ref role="3cqZAo" node="2RLAZYE0z6y" resolve="project" />
                  </node>
                  <node concept="37vLTw" id="2RLAZYE0z8z" role="37wK5m">
                    <ref role="3cqZAo" node="2RLAZYE0z6_" resolve="model" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2RLAZYE0z8F" role="1B3o_S" />
      <node concept="17QB3L" id="2RLAZYE0DVA" role="3clF45" />
    </node>
    <node concept="3clFb_" id="2RLAZYE0z8H" role="jymVt">
      <property role="TrG5h" value="persistence" />
      <node concept="37vLTG" id="2RLAZYE0z8I" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="2RLAZYE0z8J" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="3uibUv" id="2RLAZYE0z8K" role="Sfmx6">
        <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
      </node>
      <node concept="3clFbS" id="2RLAZYE0z8L" role="3clF47">
        <node concept="3cpWs8" id="2RLAZYE0z8N" role="3cqZAp">
          <node concept="3cpWsn" id="2RLAZYE0z8M" role="3cpWs9">
            <property role="TrG5h" value="instances" />
            <node concept="H_c77" id="2RLAZYE0Ts_" role="1tU5fm" />
            <node concept="2OqwBi" id="2RLAZYE0BGU" role="33vP2m">
              <node concept="2YIFZM" id="2RLAZYE0BkM" role="2Oq$k0">
                <ref role="1Pybhc" to="tqvn:~TemporaryModels" resolve="TemporaryModels" />
                <ref role="37wK5l" to="tqvn:~TemporaryModels.getInstance()" resolve="getInstance" />
              </node>
              <node concept="liA8E" id="2RLAZYE0BGV" role="2OqNvi">
                <ref role="37wK5l" to="tqvn:~TemporaryModels.create(boolean,boolean,java.lang.String,jetbrains.mps.smodel.tempmodel.TempModuleOptions)" resolve="create" />
                <node concept="3clFbT" id="2RLAZYE0BGW" role="37wK5m" />
                <node concept="3clFbT" id="2RLAZYE0BGX" role="37wK5m" />
                <node concept="Xl_RD" id="2RLAZYE0BGY" role="37wK5m">
                  <property role="Xl_RC" value="usability.instances" />
                </node>
                <node concept="2YIFZM" id="2RLAZYE0BGZ" role="37wK5m">
                  <ref role="1Pybhc" to="tqvn:~TempModuleOptions" resolve="TempModuleOptions" />
                  <ref role="37wK5l" to="tqvn:~TempModuleOptions.forNewModule(org.jetbrains.mps.openapi.module.SRepository,org.jetbrains.mps.openapi.module.SModuleFacet...)" resolve="forNewModule" />
                  <node concept="2OqwBi" id="2RLAZYE0CP5" role="37wK5m">
                    <node concept="liA8E" id="2RLAZYE0CP6" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SModel.getRepository()" resolve="getRepository" />
                    </node>
                    <node concept="2JrnkZ" id="2RLAZYE0Trz" role="2Oq$k0">
                      <node concept="37vLTw" id="2RLAZYE0CGz" role="2JrQYb">
                        <ref role="3cqZAo" node="2RLAZYE0yWg" resolve="source" />
                      </node>
                    </node>
                  </node>
                  <node concept="2ShNRf" id="2RLAZYE0BH1" role="37wK5m">
                    <node concept="3$_iS1" id="2RLAZYE0BH2" role="2ShVmc">
                      <node concept="3$GHV9" id="2RLAZYE0BH3" role="3$GQph">
                        <node concept="3cmrfG" id="2RLAZYE0BH4" role="3$I4v7">
                          <property role="3cmrfH" value="0" />
                        </node>
                      </node>
                      <node concept="3uibUv" id="2RLAZYE0BH5" role="3$_nBY">
                        <ref role="3uigEE" to="lui2:~SModuleFacet" resolve="SModuleFacet" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2RLAZYE0z91" role="3cqZAp">
          <node concept="2OqwBi" id="2RLAZYE0BHi" role="3clFbG">
            <node concept="2ShNRf" id="2RLAZYE0Bl4" role="2Oq$k0">
              <node concept="1pGfFk" id="2RLAZYE0Blf" role="2ShVmc">
                <ref role="37wK5l" to="w1kc:~ModelImports.&lt;init&gt;(org.jetbrains.mps.openapi.model.SModel)" resolve="ModelImports" />
                <node concept="37vLTw" id="2RLAZYE0Blg" role="37wK5m">
                  <ref role="3cqZAo" node="2RLAZYE0z8M" resolve="instances" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="2RLAZYE0BHj" role="2OqNvi">
              <ref role="37wK5l" to="w1kc:~ModelImports.addUsedLanguage(org.jetbrains.mps.openapi.language.SLanguage)" resolve="addUsedLanguage" />
              <node concept="2OqwBi" id="2RLAZYE0CGJ" role="37wK5m">
                <node concept="liA8E" id="2RLAZYE0CGK" role="2OqNvi">
                  <ref role="37wK5l" to="c17a:~SAbstractConcept.getLanguage()" resolve="getLanguage" />
                </node>
                <node concept="2JrnkZ" id="2RLAZYE0Tr$" role="2Oq$k0">
                  <node concept="37vLTw" id="2RLAZYE0BHl" role="2JrQYb">
                    <ref role="3cqZAo" node="2RLAZYE0yVk" resolve="DECLARATION" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2RLAZYE0z97" role="3cqZAp">
          <node concept="3cpWsn" id="2RLAZYE0z96" role="3cpWs9">
            <property role="TrG5h" value="ids" />
            <node concept="3uibUv" id="2RLAZYE0z98" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="2RLAZYE0z99" role="11_B2D">
                <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
              </node>
            </node>
            <node concept="2ShNRf" id="2RLAZYE0Bll" role="33vP2m">
              <node concept="1pGfFk" id="2RLAZYE0Blq" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                <node concept="3uibUv" id="2RLAZYE0Blr" role="1pMfVU">
                  <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="2RLAZYE1amx" role="3cqZAp">
          <node concept="2YIFZM" id="2RLAZYE1an0" role="1DdaDG">
            <ref role="1Pybhc" to="w1kc:~CopyUtil" resolve="CopyUtil" />
            <ref role="37wK5l" to="w1kc:~CopyUtil.copy(java.util.List)" resolve="copy" />
            <node concept="2YIFZM" id="2RLAZYE1anP" role="37wK5m">
              <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
              <ref role="37wK5l" to="33ny:~Arrays.asList(java.lang.Object...)" resolve="asList" />
              <node concept="37vLTw" id="2RLAZYE1anQ" role="37wK5m">
                <ref role="3cqZAo" node="2RLAZYE1amb" resolve="absent" />
              </node>
              <node concept="37vLTw" id="2RLAZYE1anR" role="37wK5m">
                <ref role="3cqZAo" node="2RLAZYE1ami" resolve="empty" />
              </node>
              <node concept="37vLTw" id="2RLAZYE1anS" role="37wK5m">
                <ref role="3cqZAo" node="2RLAZYE1amr" resolve="populated" />
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="2RLAZYE1amE" role="1Duv9x">
            <property role="TrG5h" value="declaration" />
            <node concept="3Tqbb2" id="2RLAZYE1siM" role="1tU5fm" />
          </node>
          <node concept="3clFbS" id="2RLAZYE1amz" role="2LFqv$">
            <node concept="3clFbF" id="2RLAZYE1am$" role="3cqZAp">
              <node concept="2OqwBi" id="2RLAZYE1siI" role="3clFbG">
                <node concept="liA8E" id="2RLAZYE1siJ" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SModel.addRootNode(org.jetbrains.mps.openapi.model.SNode)" resolve="addRootNode" />
                  <node concept="37vLTw" id="2RLAZYE1anl" role="37wK5m">
                    <ref role="3cqZAo" node="2RLAZYE1amE" resolve="declaration" />
                  </node>
                </node>
                <node concept="2JrnkZ" id="2RLAZYE1siK" role="2Oq$k0">
                  <node concept="37vLTw" id="2RLAZYE1anj" role="2JrQYb">
                    <ref role="3cqZAo" node="2RLAZYE0z8M" resolve="instances" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2RLAZYE1amB" role="3cqZAp">
              <node concept="2OqwBi" id="2RLAZYE1aqk" role="3clFbG">
                <node concept="37vLTw" id="2RLAZYE1an$" role="2Oq$k0">
                  <ref role="3cqZAo" node="2RLAZYE0z96" resolve="ids" />
                </node>
                <node concept="liA8E" id="2RLAZYE1aql" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                  <node concept="2OqwBi" id="2RLAZYE1ar2" role="37wK5m">
                    <node concept="liA8E" id="2RLAZYE1ar3" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                    </node>
                    <node concept="2JrnkZ" id="2RLAZYE1siL" role="2Oq$k0">
                      <node concept="37vLTw" id="2RLAZYE1aqI" role="2JrQYb">
                        <ref role="3cqZAo" node="2RLAZYE1amE" resolve="declaration" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2RLAZYE0zat" role="3cqZAp">
          <node concept="3cpWsn" id="2RLAZYE0zas" role="3cpWs9">
            <property role="TrG5h" value="directory" />
            <node concept="3uibUv" id="2RLAZYE0zau" role="1tU5fm">
              <ref role="3uigEE" to="eoo2:~Path" resolve="Path" />
            </node>
            <node concept="2YIFZM" id="2RLAZYE0Bmu" role="33vP2m">
              <ref role="1Pybhc" to="eoo2:~Files" resolve="Files" />
              <ref role="37wK5l" to="eoo2:~Files.createTempDirectory(java.lang.String,java.nio.file.attribute.FileAttribute...)" resolve="createTempDirectory" />
              <node concept="Xl_RD" id="2RLAZYE0Bmv" role="37wK5m">
                <property role="Xl_RC" value="metabnf-interactive-persistence-" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2RLAZYE0zay" role="3cqZAp">
          <node concept="3cpWsn" id="2RLAZYE0zax" role="3cpWs9">
            <property role="TrG5h" value="file" />
            <node concept="3uibUv" id="2RLAZYE0zaz" role="1tU5fm">
              <ref role="3uigEE" to="eoo2:~Path" resolve="Path" />
            </node>
            <node concept="2OqwBi" id="2RLAZYE0BLW" role="33vP2m">
              <node concept="37vLTw" id="2RLAZYE0Bmy" role="2Oq$k0">
                <ref role="3cqZAo" node="2RLAZYE0zas" resolve="directory" />
              </node>
              <node concept="liA8E" id="2RLAZYE0BLX" role="2OqNvi">
                <ref role="37wK5l" to="eoo2:~Path.resolve(java.lang.String)" resolve="resolve" />
                <node concept="Xl_RD" id="2RLAZYE0BLY" role="37wK5m">
                  <property role="Xl_RC" value="cases.mps" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2RLAZYE0zaB" role="3cqZAp">
          <node concept="3cpWsn" id="2RLAZYE0zaA" role="3cpWs9">
            <property role="TrG5h" value="restored" />
            <node concept="H_c77" id="2RLAZYE0TsC" role="1tU5fm" />
            <node concept="10Nm6u" id="2RLAZYE0zaD" role="33vP2m" />
          </node>
        </node>
        <node concept="3J1_TO" id="2RLAZYE0zcM" role="3cqZAp">
          <node concept="1wplmZ" id="2RLAZYE0zcN" role="1zxBo6">
            <node concept="3clFbS" id="2RLAZYE0zcs" role="1wplMD">
              <node concept="3clFbJ" id="2RLAZYE0DG2" role="3cqZAp">
                <node concept="3y3z36" id="2RLAZYE0DG3" role="3clFbw">
                  <node concept="37vLTw" id="2RLAZYE0DG4" role="3uHU7B">
                    <ref role="3cqZAo" node="2RLAZYE0zaA" resolve="restored" />
                  </node>
                  <node concept="10Nm6u" id="2RLAZYE0DG5" role="3uHU7w" />
                </node>
                <node concept="3clFbS" id="2RLAZYE0DG8" role="3clFbx">
                  <node concept="3clFbF" id="2RLAZYE0DG6" role="3cqZAp">
                    <node concept="2OqwBi" id="2RLAZYE0DGn" role="3clFbG">
                      <node concept="liA8E" id="2RLAZYE0DGo" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SModel.unload()" resolve="unload" />
                      </node>
                      <node concept="2JrnkZ" id="2RLAZYE0TrK" role="2Oq$k0">
                        <node concept="37vLTw" id="2RLAZYE0DGb" role="2JrQYb">
                          <ref role="3cqZAo" node="2RLAZYE0zaA" resolve="restored" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="2RLAZYE0zcC" role="3cqZAp">
                <node concept="2OqwBi" id="2RLAZYE0BMM" role="3clFbG">
                  <node concept="2YIFZM" id="2RLAZYE0Bnm" role="2Oq$k0">
                    <ref role="1Pybhc" to="tqvn:~TemporaryModels" resolve="TemporaryModels" />
                    <ref role="37wK5l" to="tqvn:~TemporaryModels.getInstance()" resolve="getInstance" />
                  </node>
                  <node concept="liA8E" id="2RLAZYE0BMN" role="2OqNvi">
                    <ref role="37wK5l" to="tqvn:~TemporaryModels.dispose(org.jetbrains.mps.openapi.model.SModel)" resolve="dispose" />
                    <node concept="37vLTw" id="2RLAZYE0BMO" role="37wK5m">
                      <ref role="3cqZAo" node="2RLAZYE0z8M" resolve="instances" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="2RLAZYE0zcG" role="3cqZAp">
                <node concept="2YIFZM" id="2RLAZYE0Bnp" role="3clFbG">
                  <ref role="1Pybhc" to="eoo2:~Files" resolve="Files" />
                  <ref role="37wK5l" to="eoo2:~Files.deleteIfExists(java.nio.file.Path)" resolve="deleteIfExists" />
                  <node concept="37vLTw" id="2RLAZYE0Bnq" role="37wK5m">
                    <ref role="3cqZAo" node="2RLAZYE0zax" resolve="file" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="2RLAZYE0zcJ" role="3cqZAp">
                <node concept="2YIFZM" id="2RLAZYE0Bnt" role="3clFbG">
                  <ref role="1Pybhc" to="eoo2:~Files" resolve="Files" />
                  <ref role="37wK5l" to="eoo2:~Files.deleteIfExists(java.nio.file.Path)" resolve="deleteIfExists" />
                  <node concept="37vLTw" id="2RLAZYE0Bnu" role="37wK5m">
                    <ref role="3cqZAo" node="2RLAZYE0zas" resolve="directory" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="2RLAZYE0zaF" role="1zxBo7">
            <node concept="3cpWs8" id="2RLAZYE0zaH" role="3cqZAp">
              <node concept="3cpWsn" id="2RLAZYE0zaG" role="3cpWs9">
                <property role="TrG5h" value="vfs" />
                <node concept="3uibUv" id="2RLAZYE0zaI" role="1tU5fm">
                  <ref role="3uigEE" to="3ju5:~VFSManager" resolve="VFSManager" />
                </node>
                <node concept="2YIFZM" id="2RLAZYE0Bnx" role="33vP2m">
                  <ref role="1Pybhc" to="33ny:~Objects" resolve="Objects" />
                  <ref role="37wK5l" to="33ny:~Objects.requireNonNull(java.lang.Object)" resolve="requireNonNull" />
                  <node concept="2OqwBi" id="2RLAZYE0CQ_" role="37wK5m">
                    <node concept="2OqwBi" id="2RLAZYE0CHR" role="2Oq$k0">
                      <node concept="37vLTw" id="2RLAZYE0BMZ" role="2Oq$k0">
                        <ref role="3cqZAo" node="2RLAZYE0z8I" resolve="project" />
                      </node>
                      <node concept="liA8E" id="2RLAZYE0CHS" role="2OqNvi">
                        <ref role="37wK5l" to="z1c3:~Project.getPlatform()" resolve="getPlatform" />
                      </node>
                    </node>
                    <node concept="liA8E" id="2RLAZYE0CQA" role="2OqNvi">
                      <ref role="37wK5l" to="wyuk:~ComponentHost.findComponent(java.lang.Class)" resolve="findComponent" />
                      <node concept="3VsKOn" id="2RLAZYE0CQB" role="37wK5m">
                        <ref role="3VsUkX" to="3ju5:~VFSManager" resolve="VFSManager" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="2RLAZYE0zaP" role="3cqZAp">
              <node concept="3cpWsn" id="2RLAZYE0zaO" role="3cpWs9">
                <property role="TrG5h" value="dataSource" />
                <node concept="3uibUv" id="2RLAZYE0zaQ" role="1tU5fm">
                  <ref role="3uigEE" to="ends:~FileDataSource" resolve="FileDataSource" />
                </node>
                <node concept="2ShNRf" id="2RLAZYE0Bn_" role="33vP2m">
                  <node concept="1pGfFk" id="2RLAZYE0Btf" role="2ShVmc">
                    <ref role="37wK5l" to="ends:~FileDataSource.&lt;init&gt;(jetbrains.mps.vfs.IFile)" resolve="FileDataSource" />
                    <node concept="2OqwBi" id="2RLAZYE0CRP" role="37wK5m">
                      <node concept="2OqwBi" id="2RLAZYE0CIa" role="2Oq$k0">
                        <node concept="37vLTw" id="2RLAZYE0BNb" role="2Oq$k0">
                          <ref role="3cqZAo" node="2RLAZYE0zaG" resolve="vfs" />
                        </node>
                        <node concept="liA8E" id="2RLAZYE0CIb" role="2OqNvi">
                          <ref role="37wK5l" to="3ju5:~VFSManager.getFileSystem(java.lang.String)" resolve="getFileSystem" />
                          <node concept="10M0yZ" id="2RLAZYE0CTh" role="37wK5m">
                            <ref role="1PxDUh" to="3ju5:~VFSManager" resolve="VFSManager" />
                            <ref role="3cqZAo" to="3ju5:~VFSManager.JAVA_IO_FILE_FS" resolve="JAVA_IO_FILE_FS" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="2RLAZYE0CRQ" role="2OqNvi">
                        <ref role="37wK5l" to="3ju5:~IFileSystem.getFile(java.io.File)" resolve="getFile" />
                        <node concept="2OqwBi" id="2RLAZYE0CRR" role="37wK5m">
                          <node concept="37vLTw" id="2RLAZYE0CRS" role="2Oq$k0">
                            <ref role="3cqZAo" node="2RLAZYE0zax" resolve="file" />
                          </node>
                          <node concept="liA8E" id="2RLAZYE0CRT" role="2OqNvi">
                            <ref role="37wK5l" to="eoo2:~Path.toFile()" resolve="toFile" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="2RLAZYE0zaX" role="3cqZAp">
              <node concept="3cpWsn" id="2RLAZYE0zaW" role="3cpWs9">
                <property role="TrG5h" value="factory" />
                <node concept="3uibUv" id="2RLAZYE0zaY" role="1tU5fm">
                  <ref role="3uigEE" to="dush:~ModelFactory" resolve="ModelFactory" />
                </node>
                <node concept="2YIFZM" id="2RLAZYE1siN" role="33vP2m">
                  <ref role="1Pybhc" to="33ny:~Objects" resolve="Objects" />
                  <ref role="37wK5l" to="33ny:~Objects.requireNonNull(java.lang.Object)" resolve="requireNonNull" />
                  <node concept="2OqwBi" id="2RLAZYE0BNu" role="37wK5m">
                    <node concept="2YIFZM" id="2RLAZYE0Btu" role="2Oq$k0">
                      <ref role="1Pybhc" to="dush:~PersistenceFacade" resolve="PersistenceFacade" />
                      <ref role="37wK5l" to="dush:~PersistenceFacade.getInstance()" resolve="getInstance" />
                    </node>
                    <node concept="liA8E" id="2RLAZYE0BNv" role="2OqNvi">
                      <ref role="37wK5l" to="dush:~PersistenceFacade.getModelFactory(org.jetbrains.mps.openapi.persistence.datasource.DataSourceType)" resolve="getModelFactory" />
                      <node concept="2OqwBi" id="2RLAZYE0TqZ" role="37wK5m">
                        <node concept="37vLTw" id="2RLAZYE0Tr0" role="2Oq$k0">
                          <ref role="3cqZAo" node="2RLAZYE0zaO" resolve="dataSource" />
                        </node>
                        <node concept="liA8E" id="2RLAZYE0Tr1" role="2OqNvi">
                          <ref role="37wK5l" to="ends:~FileDataSource.getType()" resolve="getType" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2RLAZYE0zb1" role="3cqZAp">
              <node concept="2OqwBi" id="2RLAZYE0BNE" role="3clFbG">
                <node concept="37vLTw" id="2RLAZYE0Btx" role="2Oq$k0">
                  <ref role="3cqZAo" node="2RLAZYE0zaW" resolve="factory" />
                </node>
                <node concept="liA8E" id="2RLAZYE0BNF" role="2OqNvi">
                  <ref role="37wK5l" to="dush:~ModelFactory.save(org.jetbrains.mps.openapi.model.SModel,org.jetbrains.mps.openapi.persistence.DataSource,org.jetbrains.mps.openapi.persistence.ModelSaveOption...)" resolve="save" />
                  <node concept="37vLTw" id="2RLAZYE0BNG" role="37wK5m">
                    <ref role="3cqZAo" node="2RLAZYE0z8M" resolve="instances" />
                  </node>
                  <node concept="37vLTw" id="2RLAZYE0BNH" role="37wK5m">
                    <ref role="3cqZAo" node="2RLAZYE0zaO" resolve="dataSource" />
                  </node>
                  <node concept="2ShNRf" id="2RLAZYE0BNI" role="37wK5m">
                    <node concept="3$_iS1" id="2RLAZYE0BNJ" role="2ShVmc">
                      <node concept="3$GHV9" id="2RLAZYE0BNK" role="3$GQph">
                        <node concept="3cmrfG" id="2RLAZYE0BNL" role="3$I4v7">
                          <property role="3cmrfH" value="0" />
                        </node>
                      </node>
                      <node concept="3uibUv" id="2RLAZYE0BNM" role="3$_nBY">
                        <ref role="3uigEE" to="dush:~ModelSaveOption" resolve="ModelSaveOption" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2RLAZYE0zba" role="3cqZAp">
              <node concept="37vLTI" id="2RLAZYE0zbb" role="3clFbG">
                <node concept="37vLTw" id="2RLAZYE0zbc" role="37vLTJ">
                  <ref role="3cqZAo" node="2RLAZYE0zaA" resolve="restored" />
                </node>
                <node concept="2OqwBi" id="2RLAZYE0BNX" role="37vLTx">
                  <node concept="37vLTw" id="2RLAZYE0BtG" role="2Oq$k0">
                    <ref role="3cqZAo" node="2RLAZYE0zaW" resolve="factory" />
                  </node>
                  <node concept="liA8E" id="2RLAZYE0BNY" role="2OqNvi">
                    <ref role="37wK5l" to="dush:~ModelFactory.load(org.jetbrains.mps.openapi.persistence.DataSource,org.jetbrains.mps.openapi.persistence.ModelLoadingOption...)" resolve="load" />
                    <node concept="37vLTw" id="2RLAZYE0BNZ" role="37wK5m">
                      <ref role="3cqZAo" node="2RLAZYE0zaO" resolve="dataSource" />
                    </node>
                    <node concept="2ShNRf" id="2RLAZYE0BO0" role="37wK5m">
                      <node concept="3$_iS1" id="2RLAZYE0BO1" role="2ShVmc">
                        <node concept="3$GHV9" id="2RLAZYE0BO2" role="3$GQph">
                          <node concept="3cmrfG" id="2RLAZYE0BO3" role="3$I4v7">
                            <property role="3cmrfH" value="0" />
                          </node>
                        </node>
                        <node concept="3uibUv" id="2RLAZYE0BO4" role="3$_nBY">
                          <ref role="3uigEE" to="dush:~ModelLoadingOption" resolve="ModelLoadingOption" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="2RLAZYE0zbl" role="3cqZAp">
              <node concept="3cpWsn" id="2RLAZYE0zbk" role="3cpWs9">
                <property role="TrG5h" value="result" />
                <node concept="17QB3L" id="2RLAZYE0DVD" role="1tU5fm" />
                <node concept="Xl_RD" id="2RLAZYE0zbn" role="33vP2m">
                  <property role="Xl_RC" value="" />
                </node>
              </node>
            </node>
            <node concept="1DcWWT" id="2RLAZYE0zbo" role="3cqZAp">
              <node concept="37vLTw" id="2RLAZYE0zco" role="1DdaDG">
                <ref role="3cqZAo" node="2RLAZYE0z96" resolve="ids" />
              </node>
              <node concept="3cpWsn" id="2RLAZYE0zcl" role="1Duv9x">
                <property role="TrG5h" value="id" />
                <node concept="3uibUv" id="2RLAZYE0zcn" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
                </node>
              </node>
              <node concept="3clFbS" id="2RLAZYE0zbq" role="2LFqv$">
                <node concept="3cpWs8" id="2RLAZYE0zbs" role="3cqZAp">
                  <node concept="3cpWsn" id="2RLAZYE0zbr" role="3cpWs9">
                    <property role="TrG5h" value="declaration" />
                    <node concept="3Tqbb2" id="2RLAZYE0TsD" role="1tU5fm" />
                    <node concept="2YIFZM" id="2RLAZYE0BtQ" role="33vP2m">
                      <ref role="1Pybhc" to="33ny:~Objects" resolve="Objects" />
                      <ref role="37wK5l" to="33ny:~Objects.requireNonNull(java.lang.Object,java.lang.String)" resolve="requireNonNull" />
                      <node concept="2OqwBi" id="2RLAZYE0CIM" role="37wK5m">
                        <node concept="liA8E" id="2RLAZYE0CIN" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SModel.getNode(org.jetbrains.mps.openapi.model.SNodeId)" resolve="getNode" />
                          <node concept="37vLTw" id="2RLAZYE0CIO" role="37wK5m">
                            <ref role="3cqZAo" node="2RLAZYE0zcl" resolve="id" />
                          </node>
                        </node>
                        <node concept="2JrnkZ" id="2RLAZYE0TrL" role="2Oq$k0">
                          <node concept="37vLTw" id="2RLAZYE0BO7" role="2JrQYb">
                            <ref role="3cqZAo" node="2RLAZYE0zaA" resolve="restored" />
                          </node>
                        </node>
                      </node>
                      <node concept="Xl_RD" id="2RLAZYE0BtT" role="37wK5m">
                        <property role="Xl_RC" value="Lost persisted node identity" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="2RLAZYE0zbz" role="3cqZAp">
                  <node concept="3cpWsn" id="2RLAZYE0zby" role="3cpWs9">
                    <property role="TrG5h" value="clause" />
                    <node concept="3Tqbb2" id="2RLAZYE0TsE" role="1tU5fm" />
                    <node concept="1rXfSq" id="2RLAZYE0zb_" role="33vP2m">
                      <ref role="37wK5l" node="2RLAZYE0z4v" resolve="child" />
                      <node concept="37vLTw" id="2RLAZYE0zbA" role="37wK5m">
                        <ref role="3cqZAo" node="2RLAZYE0zbr" resolve="declaration" />
                      </node>
                      <node concept="37vLTw" id="2RLAZYE0zbB" role="37wK5m">
                        <ref role="3cqZAo" node="2RLAZYE0yW8" resolve="CLAUSE_CHILD" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="2RLAZYE0zbD" role="3cqZAp">
                  <node concept="3cpWsn" id="2RLAZYE0zbC" role="3cpWs9">
                    <property role="TrG5h" value="size" />
                    <node concept="10Oyi0" id="2RLAZYE0zbE" role="1tU5fm" />
                    <node concept="3K4zz7" id="2RLAZYE0zbN" role="33vP2m">
                      <node concept="3clFbC" id="2RLAZYE0zbF" role="3K4Cdx">
                        <node concept="37vLTw" id="2RLAZYE0zbG" role="3uHU7B">
                          <ref role="3cqZAo" node="2RLAZYE0zby" resolve="clause" />
                        </node>
                        <node concept="10Nm6u" id="2RLAZYE0zbH" role="3uHU7w" />
                      </node>
                      <node concept="1ZRNhn" id="2RLAZYE0zbI" role="3K4E3e">
                        <node concept="3cmrfG" id="2RLAZYE0zbJ" role="2$L3a6">
                          <property role="3cmrfH" value="1" />
                        </node>
                      </node>
                      <node concept="1rXfSq" id="2RLAZYE0zbK" role="3K4GZi">
                        <ref role="37wK5l" node="2RLAZYE0z43" resolve="count" />
                        <node concept="37vLTw" id="2RLAZYE0zbL" role="37wK5m">
                          <ref role="3cqZAo" node="2RLAZYE0zby" resolve="clause" />
                        </node>
                        <node concept="37vLTw" id="2RLAZYE0zbM" role="37wK5m">
                          <ref role="3cqZAo" node="2RLAZYE0yVs" resolve="STATEMENT" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="2RLAZYE0zbO" role="3cqZAp">
                  <node concept="3fqX7Q" id="2RLAZYE0zbP" role="3clFbw">
                    <node concept="2OqwBi" id="2RLAZYE0BOo" role="3fr31v">
                      <node concept="37vLTw" id="2RLAZYE0BtW" role="2Oq$k0">
                        <ref role="3cqZAo" node="2RLAZYE0zbk" resolve="result" />
                      </node>
                      <node concept="liA8E" id="2RLAZYE0BOp" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.isEmpty()" resolve="isEmpty" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="2RLAZYE0zbX" role="3clFbx">
                    <node concept="3clFbF" id="2RLAZYE0zbR" role="3cqZAp">
                      <node concept="37vLTI" id="2RLAZYE0zbS" role="3clFbG">
                        <node concept="37vLTw" id="2RLAZYE0zbT" role="37vLTJ">
                          <ref role="3cqZAo" node="2RLAZYE0zbk" resolve="result" />
                        </node>
                        <node concept="3cpWs3" id="2RLAZYE0zbU" role="37vLTx">
                          <node concept="37vLTw" id="2RLAZYE0zbV" role="3uHU7B">
                            <ref role="3cqZAo" node="2RLAZYE0zbk" resolve="result" />
                          </node>
                          <node concept="Xl_RD" id="2RLAZYE0zbW" role="3uHU7w">
                            <property role="Xl_RC" value="|" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="2RLAZYE0zbY" role="3cqZAp">
                  <node concept="37vLTI" id="2RLAZYE0zbZ" role="3clFbG">
                    <node concept="37vLTw" id="2RLAZYE0zc0" role="37vLTJ">
                      <ref role="3cqZAo" node="2RLAZYE0zbk" resolve="result" />
                    </node>
                    <node concept="3cpWs3" id="2RLAZYE0zc1" role="37vLTx">
                      <node concept="3cpWs3" id="2RLAZYE0zc2" role="3uHU7B">
                        <node concept="3cpWs3" id="2RLAZYE0zc3" role="3uHU7B">
                          <node concept="3cpWs3" id="2RLAZYE0zc4" role="3uHU7B">
                            <node concept="3cpWs3" id="2RLAZYE0zc5" role="3uHU7B">
                              <node concept="3cpWs3" id="2RLAZYE0zc6" role="3uHU7B">
                                <node concept="3cpWs3" id="2RLAZYE0zc7" role="3uHU7B">
                                  <node concept="37vLTw" id="2RLAZYE0zc8" role="3uHU7B">
                                    <ref role="3cqZAo" node="2RLAZYE0zbk" resolve="result" />
                                  </node>
                                  <node concept="2OqwBi" id="2RLAZYE0BO$" role="3uHU7w">
                                    <node concept="liA8E" id="2RLAZYE0BO_" role="2OqNvi">
                                      <ref role="37wK5l" to="mhbf:~SNode.getProperty(org.jetbrains.mps.openapi.language.SProperty)" resolve="getProperty" />
                                      <node concept="37vLTw" id="2RLAZYE0BOA" role="37wK5m">
                                        <ref role="3cqZAo" node="2RLAZYE0yVC" resolve="IDENTIFIER" />
                                      </node>
                                    </node>
                                    <node concept="2JrnkZ" id="2RLAZYE0TrM" role="2Oq$k0">
                                      <node concept="37vLTw" id="2RLAZYE0Bu0" role="2JrQYb">
                                        <ref role="3cqZAo" node="2RLAZYE0zbr" resolve="declaration" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="Xl_RD" id="2RLAZYE0zcb" role="3uHU7w">
                                  <property role="Xl_RC" value=":" />
                                </node>
                              </node>
                              <node concept="2YIFZM" id="2RLAZYE0Bu5" role="3uHU7w">
                                <ref role="1Pybhc" to="wyt6:~Boolean" resolve="Boolean" />
                                <ref role="37wK5l" to="wyt6:~Boolean.parseBoolean(java.lang.String)" resolve="parseBoolean" />
                                <node concept="2OqwBi" id="2RLAZYE0CIZ" role="37wK5m">
                                  <node concept="liA8E" id="2RLAZYE0CJ0" role="2OqNvi">
                                    <ref role="37wK5l" to="mhbf:~SNode.getProperty(org.jetbrains.mps.openapi.language.SProperty)" resolve="getProperty" />
                                    <node concept="37vLTw" id="2RLAZYE0CJ1" role="37wK5m">
                                      <ref role="3cqZAo" node="2RLAZYE0yV$" resolve="FLAG_STATE" />
                                    </node>
                                  </node>
                                  <node concept="2JrnkZ" id="2RLAZYE0TrN" role="2Oq$k0">
                                    <node concept="37vLTw" id="2RLAZYE0BOD" role="2JrQYb">
                                      <ref role="3cqZAo" node="2RLAZYE0zbr" resolve="declaration" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="Xl_RD" id="2RLAZYE0zcf" role="3uHU7w">
                              <property role="Xl_RC" value=":" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="2RLAZYE0zcg" role="3uHU7w">
                            <ref role="3cqZAo" node="2RLAZYE0zbC" resolve="size" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="2RLAZYE0zch" role="3uHU7w">
                          <property role="Xl_RC" value=":" />
                        </node>
                      </node>
                      <node concept="2YIFZM" id="2RLAZYE0Bua" role="3uHU7w">
                        <ref role="1Pybhc" to="ao3:~TextGeneratorEngine" resolve="TextGeneratorEngine" />
                        <ref role="37wK5l" to="ao3:~TextGeneratorEngine.generateText(jetbrains.mps.components.ComponentHost,org.jetbrains.mps.openapi.model.SNode)" resolve="generateText" />
                        <node concept="2OqwBi" id="2RLAZYE0CJb" role="37wK5m">
                          <node concept="37vLTw" id="2RLAZYE0BOI" role="2Oq$k0">
                            <ref role="3cqZAo" node="2RLAZYE0z8I" resolve="project" />
                          </node>
                          <node concept="liA8E" id="2RLAZYE0CJc" role="2OqNvi">
                            <ref role="37wK5l" to="z1c3:~Project.getPlatform()" resolve="getPlatform" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="2RLAZYE0Buc" role="37wK5m">
                          <ref role="3cqZAo" node="2RLAZYE0zbr" resolve="declaration" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="2RLAZYE0zcp" role="3cqZAp">
              <node concept="37vLTw" id="2RLAZYE0zcq" role="3cqZAk">
                <ref role="3cqZAo" node="2RLAZYE0zbk" resolve="result" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2RLAZYE0zcO" role="1B3o_S" />
      <node concept="17QB3L" id="2RLAZYE0DVE" role="3clF45" />
      <node concept="37vLTG" id="2RLAZYE1amb" role="3clF46">
        <property role="TrG5h" value="absent" />
        <node concept="3Tqbb2" id="2RLAZYE1amc" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2RLAZYE1ami" role="3clF46">
        <property role="TrG5h" value="empty" />
        <node concept="3Tqbb2" id="2RLAZYE1amj" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2RLAZYE1amr" role="3clF46">
        <property role="TrG5h" value="populated" />
        <node concept="3Tqbb2" id="2RLAZYE1ams" role="1tU5fm" />
      </node>
    </node>
    <node concept="3clFb_" id="2RLAZYE0zcQ" role="jymVt">
      <property role="TrG5h" value="dispose" />
      <node concept="3clFbS" id="2RLAZYE0zcR" role="3clF47">
        <node concept="3clFbF" id="2RLAZYE0zcS" role="3cqZAp">
          <node concept="2OqwBi" id="2RLAZYE0BOW" role="3clFbG">
            <node concept="2YIFZM" id="2RLAZYE0Bun" role="2Oq$k0">
              <ref role="1Pybhc" to="tqvn:~TemporaryModels" resolve="TemporaryModels" />
              <ref role="37wK5l" to="tqvn:~TemporaryModels.getInstance()" resolve="getInstance" />
            </node>
            <node concept="liA8E" id="2RLAZYE0BOX" role="2OqNvi">
              <ref role="37wK5l" to="tqvn:~TemporaryModels.dispose(org.jetbrains.mps.openapi.model.SModel)" resolve="dispose" />
              <node concept="37vLTw" id="2RLAZYE0BOY" role="37wK5m">
                <ref role="3cqZAo" node="2RLAZYE0yWk" resolve="copied" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2RLAZYE0zcW" role="3cqZAp">
          <node concept="2OqwBi" id="2RLAZYE0BPb" role="3clFbG">
            <node concept="2YIFZM" id="2RLAZYE0Buy" role="2Oq$k0">
              <ref role="1Pybhc" to="tqvn:~TemporaryModels" resolve="TemporaryModels" />
              <ref role="37wK5l" to="tqvn:~TemporaryModels.getInstance()" resolve="getInstance" />
            </node>
            <node concept="liA8E" id="2RLAZYE0BPc" role="2OqNvi">
              <ref role="37wK5l" to="tqvn:~TemporaryModels.dispose(org.jetbrains.mps.openapi.model.SModel)" resolve="dispose" />
              <node concept="37vLTw" id="2RLAZYE0BPd" role="37wK5m">
                <ref role="3cqZAo" node="2RLAZYE0yWg" resolve="source" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2RLAZYE0zd0" role="1B3o_S" />
      <node concept="3cqZAl" id="2RLAZYE0zd1" role="3clF45" />
    </node>
    <node concept="3clFb_" id="2RLAZYE4ZXX" role="jymVt">
      <property role="TrG5h" value="ruleOverrides" />
      <node concept="3clFbS" id="2RLAZYE4ZXY" role="3clF47">
        <node concept="3cpWs8" id="2RLAZYE4ZY0" role="3cqZAp">
          <node concept="3cpWsn" id="2RLAZYE4ZXZ" role="3cpWs9">
            <property role="TrG5h" value="flag" />
            <node concept="3Tqbb2" id="2RLAZYE50Ha" role="1tU5fm" />
            <node concept="1rXfSq" id="2RLAZYE4ZY2" role="33vP2m">
              <ref role="37wK5l" node="2RLAZYE0yXw" resolve="modifier" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2RLAZYE4ZY4" role="3cqZAp">
          <node concept="3cpWsn" id="2RLAZYE4ZY3" role="3cpWs9">
            <property role="TrG5h" value="profile" />
            <node concept="3Tqbb2" id="2RLAZYE50Hb" role="1tU5fm" />
            <node concept="2YIFZM" id="2RLAZYE507z" role="33vP2m">
              <ref role="1Pybhc" to="9toz:~GenerationProfiles" resolve="GenerationProfiles" />
              <ref role="37wK5l" to="9toz:~GenerationProfiles.createProfile(org.jetbrains.mps.openapi.model.SModel,org.jetbrains.mps.openapi.model.SNode,java.lang.String)" resolve="createProfile" />
              <node concept="37vLTw" id="2RLAZYE507$" role="37wK5m">
                <ref role="3cqZAo" node="2RLAZYE0yWg" resolve="source" />
              </node>
              <node concept="37vLTw" id="2RLAZYE507_" role="37wK5m">
                <ref role="3cqZAo" node="2RLAZYE0yWo" resolve="grammar" />
              </node>
              <node concept="Xl_RD" id="2RLAZYE507A" role="37wK5m">
                <property role="Xl_RC" value="vanilla" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2RLAZYE4ZYa" role="3cqZAp">
          <node concept="2YIFZM" id="2RLAZYE507P" role="3clFbG">
            <ref role="1Pybhc" to="9toz:~GenerationProfiles" resolve="GenerationProfiles" />
            <ref role="37wK5l" to="9toz:~GenerationProfiles.select(org.jetbrains.mps.openapi.model.SNode,java.lang.String,org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String)" resolve="select" />
            <node concept="37vLTw" id="2RLAZYE507Q" role="37wK5m">
              <ref role="3cqZAo" node="2RLAZYE4ZY3" resolve="profile" />
            </node>
            <node concept="Xl_RD" id="2RLAZYE507R" role="37wK5m">
              <property role="Xl_RC" value="Pattern" />
            </node>
            <node concept="10Nm6u" id="2RLAZYE507S" role="37wK5m" />
            <node concept="Xl_RD" id="2RLAZYE507T" role="37wK5m">
              <property role="Xl_RC" value="Flag" />
            </node>
            <node concept="Xl_RD" id="2RLAZYE507U" role="37wK5m">
              <property role="Xl_RC" value="Textual" />
            </node>
            <node concept="Xl_RD" id="2RLAZYE507V" role="37wK5m">
              <property role="Xl_RC" value="vanilla.checkbox" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2RLAZYE4ZYi" role="3cqZAp">
          <node concept="2YIFZM" id="2RLAZYE508a" role="3clFbG">
            <ref role="1Pybhc" to="9toz:~GenerationProfiles" resolve="GenerationProfiles" />
            <ref role="37wK5l" to="9toz:~GenerationProfiles.select(org.jetbrains.mps.openapi.model.SNode,java.lang.String,org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String)" resolve="select" />
            <node concept="37vLTw" id="2RLAZYE508b" role="37wK5m">
              <ref role="3cqZAo" node="2RLAZYE4ZY3" resolve="profile" />
            </node>
            <node concept="Xl_RD" id="2RLAZYE508c" role="37wK5m">
              <property role="Xl_RC" value="Rule" />
            </node>
            <node concept="2OqwBi" id="2RLAZYE50sG" role="37wK5m">
              <node concept="liA8E" id="2RLAZYE50sH" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getParent()" resolve="getParent" />
              </node>
              <node concept="2JrnkZ" id="2RLAZYE50GW" role="2Oq$k0">
                <node concept="37vLTw" id="2RLAZYE50h4" role="2JrQYb">
                  <ref role="3cqZAo" node="2RLAZYE4ZXZ" resolve="flag" />
                </node>
              </node>
            </node>
            <node concept="Xl_RD" id="2RLAZYE508e" role="37wK5m">
              <property role="Xl_RC" value="Flag" />
            </node>
            <node concept="Xl_RD" id="2RLAZYE508f" role="37wK5m">
              <property role="Xl_RC" value="Textual" />
            </node>
            <node concept="Xl_RD" id="2RLAZYE508g" role="37wK5m">
              <property role="Xl_RC" value="vanilla.keyword" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2RLAZYE4ZYr" role="3cqZAp">
          <node concept="3cpWsn" id="2RLAZYE4ZYq" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="17QB3L" id="2RLAZYE50Hc" role="1tU5fm" />
            <node concept="2YIFZM" id="2RLAZYE508v" role="33vP2m">
              <ref role="1Pybhc" to="53k3:2RLAZYDKbT8" resolve="UsabilityGeneration" />
              <ref role="37wK5l" to="53k3:2RLAZYDKbU6" resolve="flag" />
              <node concept="37vLTw" id="2RLAZYE508w" role="37wK5m">
                <ref role="3cqZAo" node="2RLAZYE4ZXZ" resolve="flag" />
              </node>
              <node concept="Xl_RD" id="2RLAZYE508x" role="37wK5m">
                <property role="Xl_RC" value="Textual" />
              </node>
              <node concept="37vLTw" id="2RLAZYE508y" role="37wK5m">
                <ref role="3cqZAo" node="2RLAZYE0yWg" resolve="source" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2RLAZYE4ZYx" role="3cqZAp">
          <node concept="2YIFZM" id="2RLAZYE508L" role="3clFbG">
            <ref role="1Pybhc" to="9toz:~GenerationProfiles" resolve="GenerationProfiles" />
            <ref role="37wK5l" to="9toz:~GenerationProfiles.select(org.jetbrains.mps.openapi.model.SNode,java.lang.String,org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String)" resolve="select" />
            <node concept="37vLTw" id="2RLAZYE508M" role="37wK5m">
              <ref role="3cqZAo" node="2RLAZYE4ZY3" resolve="profile" />
            </node>
            <node concept="Xl_RD" id="2RLAZYE508N" role="37wK5m">
              <property role="Xl_RC" value="Occurrence" />
            </node>
            <node concept="37vLTw" id="2RLAZYE508O" role="37wK5m">
              <ref role="3cqZAo" node="2RLAZYE4ZXZ" resolve="flag" />
            </node>
            <node concept="Xl_RD" id="2RLAZYE508P" role="37wK5m">
              <property role="Xl_RC" value="Flag" />
            </node>
            <node concept="Xl_RD" id="2RLAZYE508Q" role="37wK5m">
              <property role="Xl_RC" value="Textual" />
            </node>
            <node concept="Xl_RD" id="2RLAZYE508R" role="37wK5m">
              <property role="Xl_RC" value="vanilla.checkbox" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2RLAZYE4ZYD" role="3cqZAp">
          <node concept="37vLTI" id="2RLAZYE4ZYE" role="3clFbG">
            <node concept="37vLTw" id="2RLAZYE4ZYF" role="37vLTJ">
              <ref role="3cqZAo" node="2RLAZYE4ZYq" resolve="result" />
            </node>
            <node concept="3cpWs3" id="2RLAZYE4ZYG" role="37vLTx">
              <node concept="3cpWs3" id="2RLAZYE4ZYH" role="3uHU7B">
                <node concept="37vLTw" id="2RLAZYE4ZYI" role="3uHU7B">
                  <ref role="3cqZAo" node="2RLAZYE4ZYq" resolve="result" />
                </node>
                <node concept="Xl_RD" id="2RLAZYE4ZYJ" role="3uHU7w">
                  <property role="Xl_RC" value="|" />
                </node>
              </node>
              <node concept="2YIFZM" id="2RLAZYE5096" role="3uHU7w">
                <ref role="1Pybhc" to="53k3:2RLAZYDKbT8" resolve="UsabilityGeneration" />
                <ref role="37wK5l" to="53k3:2RLAZYDKbU6" resolve="flag" />
                <node concept="37vLTw" id="2RLAZYE5097" role="37wK5m">
                  <ref role="3cqZAo" node="2RLAZYE4ZXZ" resolve="flag" />
                </node>
                <node concept="Xl_RD" id="2RLAZYE5098" role="37wK5m">
                  <property role="Xl_RC" value="Textual" />
                </node>
                <node concept="37vLTw" id="2RLAZYE5099" role="37wK5m">
                  <ref role="3cqZAo" node="2RLAZYE0yWg" resolve="source" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2RLAZYE4ZYO" role="3cqZAp">
          <node concept="2YIFZM" id="2RLAZYE509o" role="3clFbG">
            <ref role="1Pybhc" to="9toz:~GenerationProfiles" resolve="GenerationProfiles" />
            <ref role="37wK5l" to="9toz:~GenerationProfiles.select(org.jetbrains.mps.openapi.model.SNode,java.lang.String,org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String)" resolve="select" />
            <node concept="37vLTw" id="2RLAZYE509p" role="37wK5m">
              <ref role="3cqZAo" node="2RLAZYE4ZY3" resolve="profile" />
            </node>
            <node concept="Xl_RD" id="2RLAZYE509q" role="37wK5m">
              <property role="Xl_RC" value="Occurrence" />
            </node>
            <node concept="37vLTw" id="2RLAZYE509r" role="37wK5m">
              <ref role="3cqZAo" node="2RLAZYE4ZXZ" resolve="flag" />
            </node>
            <node concept="Xl_RD" id="2RLAZYE509s" role="37wK5m">
              <property role="Xl_RC" value="Flag" />
            </node>
            <node concept="Xl_RD" id="2RLAZYE509t" role="37wK5m">
              <property role="Xl_RC" value="Textual" />
            </node>
            <node concept="Xl_RD" id="2RLAZYE509u" role="37wK5m">
              <property role="Xl_RC" value="auto" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2RLAZYE4ZYW" role="3cqZAp">
          <node concept="37vLTI" id="2RLAZYE4ZYX" role="3clFbG">
            <node concept="37vLTw" id="2RLAZYE4ZYY" role="37vLTJ">
              <ref role="3cqZAo" node="2RLAZYE4ZYq" resolve="result" />
            </node>
            <node concept="3cpWs3" id="2RLAZYE4ZYZ" role="37vLTx">
              <node concept="3cpWs3" id="2RLAZYE4ZZ0" role="3uHU7B">
                <node concept="37vLTw" id="2RLAZYE4ZZ1" role="3uHU7B">
                  <ref role="3cqZAo" node="2RLAZYE4ZYq" resolve="result" />
                </node>
                <node concept="Xl_RD" id="2RLAZYE4ZZ2" role="3uHU7w">
                  <property role="Xl_RC" value="|" />
                </node>
              </node>
              <node concept="2YIFZM" id="2RLAZYE509H" role="3uHU7w">
                <ref role="1Pybhc" to="53k3:2RLAZYDKbT8" resolve="UsabilityGeneration" />
                <ref role="37wK5l" to="53k3:2RLAZYDKbU6" resolve="flag" />
                <node concept="37vLTw" id="2RLAZYE509I" role="37wK5m">
                  <ref role="3cqZAo" node="2RLAZYE4ZXZ" resolve="flag" />
                </node>
                <node concept="Xl_RD" id="2RLAZYE509J" role="37wK5m">
                  <property role="Xl_RC" value="Textual" />
                </node>
                <node concept="37vLTw" id="2RLAZYE509K" role="37wK5m">
                  <ref role="3cqZAo" node="2RLAZYE0yWg" resolve="source" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2RLAZYE4ZZ7" role="3cqZAp">
          <node concept="2YIFZM" id="2RLAZYE509Z" role="3clFbG">
            <ref role="1Pybhc" to="9toz:~GenerationProfiles" resolve="GenerationProfiles" />
            <ref role="37wK5l" to="9toz:~GenerationProfiles.select(org.jetbrains.mps.openapi.model.SNode,java.lang.String,org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String)" resolve="select" />
            <node concept="37vLTw" id="2RLAZYE50a0" role="37wK5m">
              <ref role="3cqZAo" node="2RLAZYE4ZY3" resolve="profile" />
            </node>
            <node concept="Xl_RD" id="2RLAZYE50a1" role="37wK5m">
              <property role="Xl_RC" value="Rule" />
            </node>
            <node concept="2OqwBi" id="2RLAZYE50sS" role="37wK5m">
              <node concept="liA8E" id="2RLAZYE50sT" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getParent()" resolve="getParent" />
              </node>
              <node concept="2JrnkZ" id="2RLAZYE50GX" role="2Oq$k0">
                <node concept="37vLTw" id="2RLAZYE50hk" role="2JrQYb">
                  <ref role="3cqZAo" node="2RLAZYE4ZXZ" resolve="flag" />
                </node>
              </node>
            </node>
            <node concept="Xl_RD" id="2RLAZYE50a3" role="37wK5m">
              <property role="Xl_RC" value="Flag" />
            </node>
            <node concept="Xl_RD" id="2RLAZYE50a4" role="37wK5m">
              <property role="Xl_RC" value="Textual" />
            </node>
            <node concept="Xl_RD" id="2RLAZYE50a5" role="37wK5m">
              <property role="Xl_RC" value="auto" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2RLAZYE4ZZf" role="3cqZAp">
          <node concept="3cpWs3" id="2RLAZYE4ZZg" role="3cqZAk">
            <node concept="3cpWs3" id="2RLAZYE4ZZh" role="3uHU7B">
              <node concept="37vLTw" id="2RLAZYE4ZZi" role="3uHU7B">
                <ref role="3cqZAo" node="2RLAZYE4ZYq" resolve="result" />
              </node>
              <node concept="Xl_RD" id="2RLAZYE4ZZj" role="3uHU7w">
                <property role="Xl_RC" value="|" />
              </node>
            </node>
            <node concept="1rXfSq" id="2RLAZYE4ZZk" role="3uHU7w">
              <ref role="37wK5l" node="2RLAZYE0yYz" resolve="defaults" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2RLAZYE4ZZl" role="1B3o_S" />
      <node concept="17QB3L" id="2RLAZYE50Hd" role="3clF45" />
    </node>
    <node concept="3clFb_" id="2RLAZYE4ZZn" role="jymVt">
      <property role="TrG5h" value="invalidSuppression" />
      <node concept="3clFbS" id="2RLAZYE4ZZo" role="3clF47">
        <node concept="3cpWs8" id="2RLAZYE4ZZq" role="3cqZAp">
          <node concept="3cpWsn" id="2RLAZYE4ZZp" role="3cpWs9">
            <property role="TrG5h" value="annotation" />
            <node concept="3Tqbb2" id="2RLAZYE50He" role="1tU5fm" />
            <node concept="1rXfSq" id="2RLAZYE4ZZs" role="33vP2m">
              <ref role="37wK5l" node="2RLAZYE0yY1" resolve="group" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2RLAZYE4ZZt" role="3cqZAp">
          <node concept="37vLTI" id="2RLAZYE50GU" role="3clFbG">
            <node concept="2OqwBi" id="2RLAZYE50GS" role="37vLTJ">
              <node concept="1eOMI4" id="2RLAZYE50GR" role="2Oq$k0">
                <node concept="1PxgMI" id="2RLAZYE50GP" role="1eOMHV">
                  <node concept="chp4Y" id="2RLAZYE50GQ" role="3oSUPX">
                    <ref role="cht4Q" to="6o2a:$td8qPViA$" resolve="UsabilityAnnotation" />
                  </node>
                  <node concept="37vLTw" id="2RLAZYE50al" role="1m5AlR">
                    <ref role="3cqZAo" node="2RLAZYE4ZZp" resolve="annotation" />
                  </node>
                </node>
              </node>
              <node concept="3TrcHB" id="2RLAZYE50GT" role="2OqNvi">
                <ref role="3TsBF5" to="6o2a:$td8qPViAA" resolve="suppressed" />
              </node>
            </node>
            <node concept="3clFbT" id="2RLAZYE50GV" role="37vLTx">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="2RLAZYE4ZZL" role="3cqZAp">
          <node concept="3uVAMA" id="2RLAZYE4ZZM" role="1zxBo5">
            <node concept="3clFbS" id="2RLAZYE4ZZG" role="1zc67A">
              <node concept="3cpWs6" id="2RLAZYE4ZZH" role="3cqZAp">
                <node concept="2OqwBi" id="2RLAZYE50xh" role="3cqZAk">
                  <node concept="2OqwBi" id="2RLAZYE50hG" role="2Oq$k0">
                    <node concept="37vLTw" id="2RLAZYE50aI" role="2Oq$k0">
                      <ref role="3cqZAo" node="2RLAZYE4ZZC" resolve="expected" />
                    </node>
                    <node concept="liA8E" id="2RLAZYE50hH" role="2OqNvi">
                      <ref role="37wK5l" to="9toz:~UsabilityException.getDiagnostic()" resolve="getDiagnostic" />
                    </node>
                  </node>
                  <node concept="liA8E" id="2RLAZYE50xi" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
                    <node concept="Xl_RD" id="2RLAZYE50xj" role="37wK5m">
                      <property role="Xl_RC" value="code" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="XOnhg" id="2RLAZYE4ZZC" role="1zc67B">
              <property role="TrG5h" value="expected" />
              <node concept="nSUau" id="2RLAZYE4ZZE" role="1tU5fm">
                <node concept="3uibUv" id="2RLAZYE4ZZD" role="nSUat">
                  <ref role="3uigEE" to="9toz:~UsabilityException" resolve="UsabilityException" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="2RLAZYE4ZZz" role="1zxBo7">
            <node concept="3clFbF" id="2RLAZYE4ZZ$" role="3cqZAp">
              <node concept="2YIFZM" id="2RLAZYE50aY" role="3clFbG">
                <ref role="1Pybhc" to="53k3:2RLAZYDKbT8" resolve="UsabilityGeneration" />
                <ref role="37wK5l" to="53k3:2RLAZYDKbV2" resolve="validate" />
                <node concept="37vLTw" id="2RLAZYE50aZ" role="37wK5m">
                  <ref role="3cqZAo" node="2RLAZYE0yWo" resolve="grammar" />
                </node>
                <node concept="37vLTw" id="2RLAZYE50b0" role="37wK5m">
                  <ref role="3cqZAo" node="2RLAZYE0yWg" resolve="source" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2RLAZYE4ZZN" role="3cqZAp">
          <node concept="Xl_RD" id="2RLAZYE4ZZO" role="3cqZAk">
            <property role="Xl_RC" value="ACCEPTED" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2RLAZYE4ZZP" role="1B3o_S" />
      <node concept="17QB3L" id="2RLAZYE50Hf" role="3clF45" />
    </node>
    <node concept="3clFb_" id="2RLAZYE4ZZR" role="jymVt">
      <property role="TrG5h" value="actualGenerationRejections" />
      <node concept="37vLTG" id="2RLAZYE4ZZS" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="2RLAZYE4ZZT" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="3clFbS" id="2RLAZYE4ZZU" role="3clF47">
        <node concept="3cpWs8" id="2RLAZYE4ZZW" role="3cqZAp">
          <node concept="3cpWsn" id="2RLAZYE4ZZV" role="3cpWs9">
            <property role="TrG5h" value="model" />
            <node concept="H_c77" id="2RLAZYE50Hg" role="1tU5fm" />
            <node concept="1rXfSq" id="2RLAZYE4ZZY" role="33vP2m">
              <ref role="37wK5l" node="2RLAZYE0z6j" resolve="interactive" />
              <node concept="37vLTw" id="2RLAZYE4ZZZ" role="37wK5m">
                <ref role="3cqZAo" node="2RLAZYE4ZZS" resolve="project" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2RLAZYE5001" role="3cqZAp">
          <node concept="3cpWsn" id="2RLAZYE5000" role="3cpWs9">
            <property role="TrG5h" value="authoredGrammar" />
            <node concept="3Tqbb2" id="2RLAZYE50Hh" role="1tU5fm" />
            <node concept="10Nm6u" id="2RLAZYE5003" role="33vP2m" />
          </node>
        </node>
        <node concept="3cpWs8" id="2RLAZYE5005" role="3cqZAp">
          <node concept="3cpWsn" id="2RLAZYE5004" role="3cpWs9">
            <property role="TrG5h" value="flag" />
            <node concept="3Tqbb2" id="2RLAZYE50Hi" role="1tU5fm" />
            <node concept="10Nm6u" id="2RLAZYE5007" role="33vP2m" />
          </node>
        </node>
        <node concept="3cpWs8" id="2RLAZYE5009" role="3cqZAp">
          <node concept="3cpWsn" id="2RLAZYE5008" role="3cpWs9">
            <property role="TrG5h" value="group" />
            <node concept="3Tqbb2" id="2RLAZYE50Hj" role="1tU5fm" />
            <node concept="10Nm6u" id="2RLAZYE500b" role="33vP2m" />
          </node>
        </node>
        <node concept="1DcWWT" id="2RLAZYE500c" role="3cqZAp">
          <node concept="2OqwBi" id="2RLAZYE50hS" role="1DdaDG">
            <node concept="liA8E" id="2RLAZYE50hT" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SModel.getRootNodes()" resolve="getRootNodes" />
            </node>
            <node concept="2JrnkZ" id="2RLAZYE50GY" role="2Oq$k0">
              <node concept="37vLTw" id="2RLAZYE50bf" role="2JrQYb">
                <ref role="3cqZAo" node="2RLAZYE4ZZV" resolve="model" />
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="2RLAZYE500X" role="1Duv9x">
            <property role="TrG5h" value="root" />
            <node concept="3Tqbb2" id="2RLAZYE50Hk" role="1tU5fm" />
          </node>
          <node concept="3clFbS" id="2RLAZYE500e" role="2LFqv$">
            <node concept="3clFbJ" id="2RLAZYE500f" role="3cqZAp">
              <node concept="2OqwBi" id="2RLAZYE50bv" role="3clFbw">
                <node concept="Xl_RD" id="2RLAZYE500h" role="2Oq$k0">
                  <property role="Xl_RC" value="DemoUsability" />
                </node>
                <node concept="liA8E" id="2RLAZYE50bw" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                  <node concept="2OqwBi" id="2RLAZYE50xt" role="37wK5m">
                    <node concept="liA8E" id="2RLAZYE50xu" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.getProperty(org.jetbrains.mps.openapi.language.SProperty)" resolve="getProperty" />
                      <node concept="37vLTw" id="2RLAZYE50xv" role="37wK5m">
                        <ref role="3cqZAo" node="2RLAZYE0yVw" resolve="NAME" />
                      </node>
                    </node>
                    <node concept="2JrnkZ" id="2RLAZYE50GZ" role="2Oq$k0">
                      <node concept="37vLTw" id="2RLAZYE50i8" role="2JrQYb">
                        <ref role="3cqZAo" node="2RLAZYE500X" resolve="root" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="2RLAZYE500o" role="3clFbx">
                <node concept="3clFbF" id="2RLAZYE500k" role="3cqZAp">
                  <node concept="37vLTI" id="2RLAZYE500l" role="3clFbG">
                    <node concept="37vLTw" id="2RLAZYE500m" role="37vLTJ">
                      <ref role="3cqZAo" node="2RLAZYE5000" resolve="authoredGrammar" />
                    </node>
                    <node concept="37vLTw" id="2RLAZYE500n" role="37vLTx">
                      <ref role="3cqZAo" node="2RLAZYE500X" resolve="root" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1DcWWT" id="2RLAZYE500p" role="3cqZAp">
              <node concept="2YIFZM" id="2RLAZYE50bL" role="1DdaDG">
                <ref role="1Pybhc" to="9toz:~ModelNodes" resolve="ModelNodes" />
                <ref role="37wK5l" to="9toz:~ModelNodes.tree(org.jetbrains.mps.openapi.model.SNode)" resolve="tree" />
                <node concept="37vLTw" id="2RLAZYE50bM" role="37wK5m">
                  <ref role="3cqZAo" node="2RLAZYE500X" resolve="root" />
                </node>
              </node>
              <node concept="3cpWsn" id="2RLAZYE500S" role="1Duv9x">
                <property role="TrG5h" value="node" />
                <node concept="3Tqbb2" id="2RLAZYE50Hl" role="1tU5fm" />
              </node>
              <node concept="3clFbS" id="2RLAZYE500r" role="2LFqv$">
                <node concept="3clFbJ" id="2RLAZYE500s" role="3cqZAp">
                  <node concept="1Wc70l" id="2RLAZYE500t" role="3clFbw">
                    <node concept="2OqwBi" id="2RLAZYE50iN" role="3uHU7B">
                      <node concept="37vLTw" id="2RLAZYE50c1" role="2Oq$k0">
                        <ref role="3cqZAo" node="2RLAZYE0yUW" resolve="FLAG" />
                      </node>
                      <node concept="liA8E" id="2RLAZYE50iO" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                        <node concept="2OqwBi" id="2RLAZYE50$q" role="37wK5m">
                          <node concept="liA8E" id="2RLAZYE50$r" role="2OqNvi">
                            <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                          </node>
                          <node concept="2JrnkZ" id="2RLAZYE50H0" role="2Oq$k0">
                            <node concept="37vLTw" id="2RLAZYE50xG" role="2JrQYb">
                              <ref role="3cqZAo" node="2RLAZYE500S" resolve="node" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="2RLAZYE50ci" role="3uHU7w">
                      <node concept="Xl_RD" id="2RLAZYE500x" role="2Oq$k0">
                        <property role="Xl_RC" value="public" />
                      </node>
                      <node concept="liA8E" id="2RLAZYE50cj" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                        <node concept="2OqwBi" id="2RLAZYE50xR" role="37wK5m">
                          <node concept="liA8E" id="2RLAZYE50xS" role="2OqNvi">
                            <ref role="37wK5l" to="mhbf:~SNode.getProperty(org.jetbrains.mps.openapi.language.SProperty)" resolve="getProperty" />
                            <node concept="37vLTw" id="2RLAZYE50xT" role="37wK5m">
                              <ref role="3cqZAo" node="2RLAZYE0yVw" resolve="NAME" />
                            </node>
                          </node>
                          <node concept="2JrnkZ" id="2RLAZYE50H1" role="2Oq$k0">
                            <node concept="37vLTw" id="2RLAZYE50j2" role="2JrQYb">
                              <ref role="3cqZAo" node="2RLAZYE500S" resolve="node" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="2RLAZYE500C" role="3clFbx">
                    <node concept="3clFbF" id="2RLAZYE500$" role="3cqZAp">
                      <node concept="37vLTI" id="2RLAZYE500_" role="3clFbG">
                        <node concept="37vLTw" id="2RLAZYE500A" role="37vLTJ">
                          <ref role="3cqZAo" node="2RLAZYE5004" resolve="flag" />
                        </node>
                        <node concept="37vLTw" id="2RLAZYE500B" role="37vLTx">
                          <ref role="3cqZAo" node="2RLAZYE500S" resolve="node" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="2RLAZYE500D" role="3cqZAp">
                  <node concept="1Wc70l" id="2RLAZYE500E" role="3clFbw">
                    <node concept="2OqwBi" id="2RLAZYE50jD" role="3uHU7B">
                      <node concept="37vLTw" id="2RLAZYE50c$" role="2Oq$k0">
                        <ref role="3cqZAo" node="2RLAZYE0yV0" resolve="GROUP" />
                      </node>
                      <node concept="liA8E" id="2RLAZYE50jE" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                        <node concept="2OqwBi" id="2RLAZYE50$_" role="37wK5m">
                          <node concept="liA8E" id="2RLAZYE50$A" role="2OqNvi">
                            <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                          </node>
                          <node concept="2JrnkZ" id="2RLAZYE50H2" role="2Oq$k0">
                            <node concept="37vLTw" id="2RLAZYE50y6" role="2JrQYb">
                              <ref role="3cqZAo" node="2RLAZYE500S" resolve="node" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="2RLAZYE50cP" role="3uHU7w">
                      <node concept="Xl_RD" id="2RLAZYE500I" role="2Oq$k0">
                        <property role="Xl_RC" value="ElseClause" />
                      </node>
                      <node concept="liA8E" id="2RLAZYE50cQ" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                        <node concept="2OqwBi" id="2RLAZYE50_2" role="37wK5m">
                          <node concept="liA8E" id="2RLAZYE50_3" role="2OqNvi">
                            <ref role="37wK5l" to="mhbf:~SNode.getProperty(org.jetbrains.mps.openapi.language.SProperty)" resolve="getProperty" />
                            <node concept="37vLTw" id="2RLAZYE50_4" role="37wK5m">
                              <ref role="3cqZAo" node="2RLAZYE0yVw" resolve="NAME" />
                            </node>
                          </node>
                          <node concept="2JrnkZ" id="2RLAZYE50H4" role="2Oq$k0">
                            <node concept="2OqwBi" id="2RLAZYE50yp" role="2JrQYb">
                              <node concept="liA8E" id="2RLAZYE50yq" role="2OqNvi">
                                <ref role="37wK5l" to="mhbf:~SNode.getReferenceTarget(org.jetbrains.mps.openapi.language.SReferenceLink)" resolve="getReferenceTarget" />
                                <node concept="37vLTw" id="2RLAZYE50yr" role="37wK5m">
                                  <ref role="3cqZAo" node="2RLAZYE0yVG" resolve="OWNER" />
                                </node>
                              </node>
                              <node concept="2JrnkZ" id="2RLAZYE50H3" role="2Oq$k0">
                                <node concept="37vLTw" id="2RLAZYE50k0" role="2JrQYb">
                                  <ref role="3cqZAo" node="2RLAZYE500S" resolve="node" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="2RLAZYE500R" role="3clFbx">
                    <node concept="3clFbF" id="2RLAZYE500N" role="3cqZAp">
                      <node concept="37vLTI" id="2RLAZYE500O" role="3clFbG">
                        <node concept="37vLTw" id="2RLAZYE500P" role="37vLTJ">
                          <ref role="3cqZAo" node="2RLAZYE5008" resolve="group" />
                        </node>
                        <node concept="37vLTw" id="2RLAZYE500Q" role="37vLTx">
                          <ref role="3cqZAo" node="2RLAZYE500S" resolve="node" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2RLAZYE5011" role="3cqZAp">
          <node concept="37vLTI" id="2RLAZYE5012" role="3clFbG">
            <node concept="37vLTw" id="2RLAZYE5013" role="37vLTJ">
              <ref role="3cqZAo" node="2RLAZYE5008" resolve="group" />
            </node>
            <node concept="2YIFZM" id="2RLAZYE50d9" role="37vLTx">
              <ref role="1Pybhc" to="33ny:~Objects" resolve="Objects" />
              <ref role="37wK5l" to="33ny:~Objects.requireNonNull(java.lang.Object,java.lang.String)" resolve="requireNonNull" />
              <node concept="37vLTw" id="2RLAZYE50da" role="37wK5m">
                <ref role="3cqZAo" node="2RLAZYE5008" resolve="group" />
              </node>
              <node concept="Xl_RD" id="2RLAZYE50db" role="37wK5m">
                <property role="Xl_RC" value="Missing authored optional-clause intent" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2RLAZYE5018" role="3cqZAp">
          <node concept="3cpWsn" id="2RLAZYE5017" role="3cpWs9">
            <property role="TrG5h" value="last" />
            <node concept="3Tqbb2" id="2RLAZYE50Hm" role="1tU5fm" />
            <node concept="2OqwBi" id="2RLAZYE50kd" role="33vP2m">
              <node concept="liA8E" id="2RLAZYE50ke" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getReferenceTarget(org.jetbrains.mps.openapi.language.SReferenceLink)" resolve="getReferenceTarget" />
                <node concept="37vLTw" id="2RLAZYE50kf" role="37wK5m">
                  <ref role="3cqZAo" node="2RLAZYE0yVO" resolve="LAST" />
                </node>
              </node>
              <node concept="2JrnkZ" id="2RLAZYE50H5" role="2Oq$k0">
                <node concept="37vLTw" id="2RLAZYE50dq" role="2JrQYb">
                  <ref role="3cqZAo" node="2RLAZYE5008" resolve="group" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2RLAZYE501d" role="3cqZAp">
          <node concept="3cpWsn" id="2RLAZYE501c" role="3cpWs9">
            <property role="TrG5h" value="profile" />
            <node concept="3Tqbb2" id="2RLAZYE50Hn" role="1tU5fm" />
            <node concept="2YIFZM" id="2RLAZYE50dF" role="33vP2m">
              <ref role="1Pybhc" to="9toz:~GenerationProfiles" resolve="GenerationProfiles" />
              <ref role="37wK5l" to="9toz:~GenerationProfiles.createProfile(org.jetbrains.mps.openapi.model.SModel,org.jetbrains.mps.openapi.model.SNode,java.lang.String)" resolve="createProfile" />
              <node concept="37vLTw" id="2RLAZYE50dG" role="37wK5m">
                <ref role="3cqZAo" node="2RLAZYE4ZZV" resolve="model" />
              </node>
              <node concept="37vLTw" id="2RLAZYE50dH" role="37wK5m">
                <ref role="3cqZAo" node="2RLAZYE5000" resolve="authoredGrammar" />
              </node>
              <node concept="Xl_RD" id="2RLAZYE50dI" role="37wK5m">
                <property role="Xl_RC" value="vanilla" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="2RLAZYE502v" role="3cqZAp">
          <node concept="1wplmZ" id="2RLAZYE502w" role="1zxBo6">
            <node concept="3clFbS" id="2RLAZYE502n" role="1wplMD">
              <node concept="3clFbF" id="2RLAZYE502o" role="3cqZAp">
                <node concept="2OqwBi" id="2RLAZYE50kq" role="3clFbG">
                  <node concept="liA8E" id="2RLAZYE50kr" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SNode.setReferenceTarget(org.jetbrains.mps.openapi.language.SReferenceLink,org.jetbrains.mps.openapi.model.SNode)" resolve="setReferenceTarget" />
                    <node concept="37vLTw" id="2RLAZYE50ks" role="37wK5m">
                      <ref role="3cqZAo" node="2RLAZYE0yVO" resolve="LAST" />
                    </node>
                    <node concept="37vLTw" id="2RLAZYE50kt" role="37wK5m">
                      <ref role="3cqZAo" node="2RLAZYE5017" resolve="last" />
                    </node>
                  </node>
                  <node concept="2JrnkZ" id="2RLAZYE50H6" role="2Oq$k0">
                    <node concept="37vLTw" id="2RLAZYE50dX" role="2JrQYb">
                      <ref role="3cqZAo" node="2RLAZYE5008" resolve="group" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="2RLAZYE502s" role="3cqZAp">
                <node concept="2OqwBi" id="2RLAZYE50kC" role="3clFbG">
                  <node concept="liA8E" id="2RLAZYE50kD" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SModel.removeRootNode(org.jetbrains.mps.openapi.model.SNode)" resolve="removeRootNode" />
                    <node concept="37vLTw" id="2RLAZYE50kE" role="37wK5m">
                      <ref role="3cqZAo" node="2RLAZYE501c" resolve="profile" />
                    </node>
                  </node>
                  <node concept="2JrnkZ" id="2RLAZYE50H7" role="2Oq$k0">
                    <node concept="37vLTw" id="2RLAZYE50ef" role="2JrQYb">
                      <ref role="3cqZAo" node="2RLAZYE4ZZV" resolve="model" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="2RLAZYE501k" role="1zxBo7">
            <node concept="3clFbF" id="2RLAZYE501l" role="3cqZAp">
              <node concept="2YIFZM" id="2RLAZYE50ew" role="3clFbG">
                <ref role="1Pybhc" to="9toz:~GenerationProfiles" resolve="GenerationProfiles" />
                <ref role="37wK5l" to="9toz:~GenerationProfiles.select(org.jetbrains.mps.openapi.model.SNode,java.lang.String,org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String)" resolve="select" />
                <node concept="37vLTw" id="2RLAZYE50ex" role="37wK5m">
                  <ref role="3cqZAo" node="2RLAZYE501c" resolve="profile" />
                </node>
                <node concept="Xl_RD" id="2RLAZYE50ey" role="37wK5m">
                  <property role="Xl_RC" value="Occurrence" />
                </node>
                <node concept="37vLTw" id="2RLAZYE50ez" role="37wK5m">
                  <ref role="3cqZAo" node="2RLAZYE5004" resolve="flag" />
                </node>
                <node concept="Xl_RD" id="2RLAZYE50e$" role="37wK5m">
                  <property role="Xl_RC" value="Flag" />
                </node>
                <node concept="Xl_RD" id="2RLAZYE50e_" role="37wK5m">
                  <property role="Xl_RC" value="Textual" />
                </node>
                <node concept="Xl_RD" id="2RLAZYE50eA" role="37wK5m">
                  <property role="Xl_RC" value="grammar-cells.flag" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="2RLAZYE501u" role="3cqZAp">
              <node concept="3cpWsn" id="2RLAZYE501t" role="3cpWs9">
                <property role="TrG5h" value="messages" />
                <node concept="3uibUv" id="2RLAZYE501v" role="1tU5fm">
                  <ref role="3uigEE" to="33ny:~List" resolve="List" />
                  <node concept="3uibUv" id="2RLAZYE501w" role="11_B2D">
                    <ref role="3uigEE" to="et5u:~IMessage" resolve="IMessage" />
                  </node>
                </node>
                <node concept="2ShNRf" id="2RLAZYE50eB" role="33vP2m">
                  <node concept="1pGfFk" id="2RLAZYE50eG" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                    <node concept="3uibUv" id="2RLAZYE50eH" role="1pMfVU">
                      <ref role="3uigEE" to="et5u:~IMessage" resolve="IMessage" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="2RLAZYE501$" role="3cqZAp">
              <node concept="3cpWsn" id="2RLAZYE501z" role="3cpWs9">
                <property role="TrG5h" value="status" />
                <node concept="3uibUv" id="2RLAZYE501_" role="1tU5fm">
                  <ref role="3uigEE" to="ap4t:~GenerationStatus" resolve="GenerationStatus" />
                </node>
                <node concept="1rXfSq" id="2RLAZYE501A" role="33vP2m">
                  <ref role="37wK5l" node="2RLAZYE0z3i" resolve="generate" />
                  <node concept="37vLTw" id="2RLAZYE501B" role="37wK5m">
                    <ref role="3cqZAo" node="2RLAZYE4ZZS" resolve="project" />
                  </node>
                  <node concept="37vLTw" id="2RLAZYE501C" role="37wK5m">
                    <ref role="3cqZAo" node="2RLAZYE4ZZV" resolve="model" />
                  </node>
                  <node concept="37vLTw" id="2RLAZYE501D" role="37wK5m">
                    <ref role="3cqZAo" node="2RLAZYE501t" resolve="messages" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="2RLAZYE501F" role="3cqZAp">
              <node concept="3cpWsn" id="2RLAZYE501E" role="3cpWs9">
                <property role="TrG5h" value="result" />
                <node concept="17QB3L" id="2RLAZYE50Ho" role="1tU5fm" />
                <node concept="3cpWs3" id="2RLAZYE501H" role="33vP2m">
                  <node concept="3cpWs3" id="2RLAZYE501I" role="3uHU7B">
                    <node concept="2OqwBi" id="2RLAZYE50kQ" role="3uHU7B">
                      <node concept="37vLTw" id="2RLAZYE50eW" role="2Oq$k0">
                        <ref role="3cqZAo" node="2RLAZYE501z" resolve="status" />
                      </node>
                      <node concept="liA8E" id="2RLAZYE50kR" role="2OqNvi">
                        <ref role="37wK5l" to="18ew:~IStatus.isOk()" resolve="isOk" />
                      </node>
                    </node>
                    <node concept="Xl_RD" id="2RLAZYE501K" role="3uHU7w">
                      <property role="Xl_RC" value=":" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="2RLAZYE50zc" role="3uHU7w">
                    <node concept="2OqwBi" id="2RLAZYE50nj" role="2Oq$k0">
                      <node concept="37vLTw" id="2RLAZYE50fk" role="2Oq$k0">
                        <ref role="3cqZAo" node="2RLAZYE501t" resolve="messages" />
                      </node>
                      <node concept="liA8E" id="2RLAZYE50nk" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                      </node>
                    </node>
                    <node concept="liA8E" id="2RLAZYE50zd" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                      <node concept="Xl_RD" id="2RLAZYE50ze" role="37wK5m">
                        <property role="Xl_RC" value="MBNF_INCOMPATIBLE_SELECTION" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2RLAZYE501O" role="3cqZAp">
              <node concept="2YIFZM" id="2RLAZYE50f$" role="3clFbG">
                <ref role="1Pybhc" to="9toz:~GenerationProfiles" resolve="GenerationProfiles" />
                <ref role="37wK5l" to="9toz:~GenerationProfiles.select(org.jetbrains.mps.openapi.model.SNode,java.lang.String,org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String)" resolve="select" />
                <node concept="37vLTw" id="2RLAZYE50f_" role="37wK5m">
                  <ref role="3cqZAo" node="2RLAZYE501c" resolve="profile" />
                </node>
                <node concept="Xl_RD" id="2RLAZYE50fA" role="37wK5m">
                  <property role="Xl_RC" value="Occurrence" />
                </node>
                <node concept="37vLTw" id="2RLAZYE50fB" role="37wK5m">
                  <ref role="3cqZAo" node="2RLAZYE5004" resolve="flag" />
                </node>
                <node concept="Xl_RD" id="2RLAZYE50fC" role="37wK5m">
                  <property role="Xl_RC" value="Flag" />
                </node>
                <node concept="Xl_RD" id="2RLAZYE50fD" role="37wK5m">
                  <property role="Xl_RC" value="Textual" />
                </node>
                <node concept="Xl_RD" id="2RLAZYE50fE" role="37wK5m">
                  <property role="Xl_RC" value="auto" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2RLAZYE501W" role="3cqZAp">
              <node concept="2OqwBi" id="2RLAZYE50nv" role="3clFbG">
                <node concept="liA8E" id="2RLAZYE50nw" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.setReferenceTarget(org.jetbrains.mps.openapi.language.SReferenceLink,org.jetbrains.mps.openapi.model.SNode)" resolve="setReferenceTarget" />
                  <node concept="37vLTw" id="2RLAZYE50nx" role="37wK5m">
                    <ref role="3cqZAo" node="2RLAZYE0yVO" resolve="LAST" />
                  </node>
                  <node concept="2OqwBi" id="2RLAZYE50_f" role="37wK5m">
                    <node concept="liA8E" id="2RLAZYE50_g" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.getReferenceTarget(org.jetbrains.mps.openapi.language.SReferenceLink)" resolve="getReferenceTarget" />
                      <node concept="37vLTw" id="2RLAZYE50_h" role="37wK5m">
                        <ref role="3cqZAo" node="2RLAZYE0yVK" resolve="FIRST" />
                      </node>
                    </node>
                    <node concept="2JrnkZ" id="2RLAZYE50H9" role="2Oq$k0">
                      <node concept="37vLTw" id="2RLAZYE50zr" role="2JrQYb">
                        <ref role="3cqZAo" node="2RLAZYE5008" resolve="group" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2JrnkZ" id="2RLAZYE50H8" role="2Oq$k0">
                  <node concept="37vLTw" id="2RLAZYE50fT" role="2JrQYb">
                    <ref role="3cqZAo" node="2RLAZYE5008" resolve="group" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2RLAZYE5021" role="3cqZAp">
              <node concept="2OqwBi" id="2RLAZYE50pQ" role="3clFbG">
                <node concept="37vLTw" id="2RLAZYE50gc" role="2Oq$k0">
                  <ref role="3cqZAo" node="2RLAZYE501t" resolve="messages" />
                </node>
                <node concept="liA8E" id="2RLAZYE50pR" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.clear()" resolve="clear" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2RLAZYE5023" role="3cqZAp">
              <node concept="37vLTI" id="2RLAZYE5024" role="3clFbG">
                <node concept="37vLTw" id="2RLAZYE5025" role="37vLTJ">
                  <ref role="3cqZAo" node="2RLAZYE501z" resolve="status" />
                </node>
                <node concept="1rXfSq" id="2RLAZYE5026" role="37vLTx">
                  <ref role="37wK5l" node="2RLAZYE0z3i" resolve="generate" />
                  <node concept="37vLTw" id="2RLAZYE5027" role="37wK5m">
                    <ref role="3cqZAo" node="2RLAZYE4ZZS" resolve="project" />
                  </node>
                  <node concept="37vLTw" id="2RLAZYE5028" role="37wK5m">
                    <ref role="3cqZAo" node="2RLAZYE4ZZV" resolve="model" />
                  </node>
                  <node concept="37vLTw" id="2RLAZYE5029" role="37wK5m">
                    <ref role="3cqZAo" node="2RLAZYE501t" resolve="messages" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="2RLAZYE502a" role="3cqZAp">
              <node concept="3cpWs3" id="2RLAZYE502b" role="3cqZAk">
                <node concept="3cpWs3" id="2RLAZYE502c" role="3uHU7B">
                  <node concept="3cpWs3" id="2RLAZYE502d" role="3uHU7B">
                    <node concept="3cpWs3" id="2RLAZYE502e" role="3uHU7B">
                      <node concept="37vLTw" id="2RLAZYE502f" role="3uHU7B">
                        <ref role="3cqZAo" node="2RLAZYE501E" resolve="result" />
                      </node>
                      <node concept="Xl_RD" id="2RLAZYE502g" role="3uHU7w">
                        <property role="Xl_RC" value="|" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="2RLAZYE50q3" role="3uHU7w">
                      <node concept="37vLTw" id="2RLAZYE50gs" role="2Oq$k0">
                        <ref role="3cqZAo" node="2RLAZYE501z" resolve="status" />
                      </node>
                      <node concept="liA8E" id="2RLAZYE50q4" role="2OqNvi">
                        <ref role="37wK5l" to="18ew:~IStatus.isOk()" resolve="isOk" />
                      </node>
                    </node>
                  </node>
                  <node concept="Xl_RD" id="2RLAZYE502i" role="3uHU7w">
                    <property role="Xl_RC" value=":" />
                  </node>
                </node>
                <node concept="2OqwBi" id="2RLAZYE50$e" role="3uHU7w">
                  <node concept="2OqwBi" id="2RLAZYE50sw" role="2Oq$k0">
                    <node concept="37vLTw" id="2RLAZYE50gO" role="2Oq$k0">
                      <ref role="3cqZAo" node="2RLAZYE501t" resolve="messages" />
                    </node>
                    <node concept="liA8E" id="2RLAZYE50sx" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                    </node>
                  </node>
                  <node concept="liA8E" id="2RLAZYE50$f" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                    <node concept="Xl_RD" id="2RLAZYE50$g" role="37wK5m">
                      <property role="Xl_RC" value="MBNF_GROUP_REQUIRES_LOWERING" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2RLAZYE502x" role="1B3o_S" />
      <node concept="17QB3L" id="2RLAZYE50Hp" role="3clF45" />
    </node>
  </node>
  <node concept="1lH9Xt" id="2RLAZYE0DH4">
    <property role="TrG5h" value="InteractiveGeneration" />
    <node concept="1qefOq" id="2RLAZYE0DH5" role="1SKRRt">
      <node concept="3xJwxZ" id="2RLAZYE0DGI" role="1qenE9">
        <property role="TrG5h" value="DemoUsability" />
        <ref role="3xJMYq" node="2RLAZYE0DGJ" resolve="Program" />
        <node concept="3xhzZY" id="2RLAZYE0DGJ" role="3xJMYo">
          <property role="TrG5h" value="Program" />
          <node concept="3xhzXc" id="2RLAZYE0DGK" role="3xhzZr">
            <property role="TrG5h" value="program" />
          </node>
          <node concept="2DNoa5" id="2RLAZYE0DGL" role="3xhzZr">
            <property role="TrG5h" value="static" />
          </node>
          <node concept="3xiQg6" id="2RLAZYE0DGM" role="3xhzZr">
            <property role="TrG5h" value="statements" />
            <property role="3xj4NX" value="2b2ZYR3yDpO/AtleastOne" />
            <ref role="3xiQg3" node="2RLAZYE0DGP" resolve="Statement" />
          </node>
          <node concept="3xhzXc" id="2RLAZYE0DGN" role="3xhzZr">
            <property role="TrG5h" value="else" />
          </node>
          <node concept="3xiQg6" id="2RLAZYE0DGO" role="3xhzZr">
            <property role="TrG5h" value="elseStatements" />
            <property role="3xj4NX" value="2b2ZYR3yDpO/AtleastOne" />
            <ref role="3xiQg3" node="2RLAZYE0DGP" resolve="Statement" />
          </node>
        </node>
        <node concept="3xhzZY" id="2RLAZYE0DGP" role="3xJMYo">
          <property role="TrG5h" value="Statement" />
          <node concept="3xhzXc" id="2RLAZYE0DGQ" role="3xhzZr">
            <property role="TrG5h" value="skip" />
          </node>
        </node>
        <node concept="3xhzZY" id="2RLAZYE0DGR" role="3xJMYo">
          <property role="TrG5h" value="Declaration" />
          <node concept="2DNoa5" id="2RLAZYE0DGS" role="3xhzZr">
            <property role="TrG5h" value="public" />
          </node>
          <node concept="3uXKyI" id="2RLAZYE0DGT" role="3xhzZr">
            <property role="TrG5h" value="identifier" />
          </node>
          <node concept="3xiQg6" id="2RLAZYE0DGU" role="3xhzZr">
            <property role="TrG5h" value="clause" />
            <property role="3xj4NX" value="2b2ZYR3yDpL/AtMostOne" />
            <ref role="3xiQg3" node="2RLAZYE0DGV" resolve="ElseClause" />
          </node>
        </node>
        <node concept="3xhzZY" id="2RLAZYE0DGV" role="3xJMYo">
          <property role="TrG5h" value="ElseClause" />
          <node concept="3xhzXc" id="2RLAZYE0DGW" role="3xhzZr">
            <property role="TrG5h" value="else" />
          </node>
          <node concept="3xiQg6" id="2RLAZYE0DGX" role="3xhzZr">
            <property role="TrG5h" value="statements" />
            <property role="3xj4NX" value="2b2ZYR3yDpK/ZeroOrMore" />
            <ref role="3xiQg3" node="2RLAZYE0DGP" resolve="Statement" />
          </node>
        </node>
        <node concept="3xLA65" id="2RLAZYE0DH6" role="lGtFl">
          <property role="TrG5h" value="GrammarFixture" />
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="2RLAZYE0DH7" role="1SKRRt">
      <node concept="2WW1O_" id="2RLAZYE0DGY" role="1qenE9">
        <ref role="2WW1OI" node="2RLAZYE0DGI" resolve="DemoUsability" />
        <node concept="2WW1OG" id="2RLAZYE0DGZ" role="2WW1OJ">
          <property role="2WW1Ox" value="Demonstrates reuse of the existing Flag term" />
          <ref role="2WW1OH" node="2RLAZYE0DGL" resolve="static" />
        </node>
        <node concept="2WW1OE" id="2RLAZYE0DH0" role="2WW1OJ">
          <property role="2WW1Oz" value="$td8qPViAx/Inferred" />
          <property role="2WW1Ox" value="Reference has one-or-more cardinality" />
          <ref role="2WW1OF" node="2RLAZYE0DGM" resolve="statements" />
        </node>
        <node concept="2WW1OC" id="2RLAZYE0DH1" role="2WW1OJ">
          <property role="2WW1Oz" value="$td8qPViAy/Suggested" />
          <property role="2WW1Ox" value="Keyword-led clause; author has suppressed optional interpretation" />
          <property role="2WW1Ow" value="true" />
          <property role="2WW1OO" value="true" />
          <ref role="2WW1OD" node="2RLAZYE0DGJ" resolve="Program" />
          <ref role="2WW1OQ" node="2RLAZYE0DGN" resolve="else" />
          <ref role="2WW1OR" node="2RLAZYE0DGO" resolve="elseStatements" />
        </node>
        <node concept="2WW1OG" id="2RLAZYE0DH2" role="2WW1OJ">
          <ref role="2WW1OH" node="2RLAZYE0DGS" resolve="public" />
        </node>
        <node concept="2WW1OC" id="2RLAZYE0DH3" role="2WW1OJ">
          <property role="2WW1OO" value="true" />
          <ref role="2WW1OD" node="2RLAZYE0DGV" resolve="ElseClause" />
          <ref role="2WW1OQ" node="2RLAZYE0DGW" resolve="else" />
          <ref role="2WW1OR" node="2RLAZYE0DGX" resolve="statements" />
        </node>
        <node concept="3xLA65" id="2RLAZYE0DH8" role="lGtFl">
          <property role="TrG5h" value="IntentFixture" />
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="2RLAZYE0DH9" role="1SL9yI">
      <property role="TrG5h" value="implicitFlagRoutes" />
      <node concept="3cqZAl" id="2RLAZYE0DHa" role="3clF45" />
      <node concept="3clFbS" id="2RLAZYE0DHb" role="3clF47">
        <node concept="3cpWs8" id="2RLAZYE0DHe" role="3cqZAp">
          <node concept="3cpWsn" id="2RLAZYE0DHd" role="3cpWs9">
            <property role="TrG5h" value="s" />
            <node concept="3uibUv" id="2RLAZYE0DHf" role="1tU5fm">
              <ref role="3uigEE" node="2RLAZYE0yUU" resolve="UsabilityScenario" />
            </node>
            <node concept="2ShNRf" id="2RLAZYE0DHv" role="33vP2m">
              <node concept="1pGfFk" id="2RLAZYE0DHF" role="2ShVmc">
                <ref role="37wK5l" node="2RLAZYE0yWw" resolve="UsabilityScenario" />
                <node concept="3xONca" id="2RLAZYE0DIm" role="37wK5m">
                  <ref role="3xOPvv" node="2RLAZYE0DH6" resolve="GrammarFixture" />
                </node>
                <node concept="3xONca" id="2RLAZYE0DIn" role="37wK5m">
                  <ref role="3xOPvv" node="2RLAZYE0DH8" resolve="IntentFixture" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="2RLAZYE0DHt" role="3cqZAp">
          <node concept="1wplmZ" id="2RLAZYE0DHu" role="1zxBo6">
            <node concept="3clFbS" id="2RLAZYE0DHq" role="1wplMD">
              <node concept="3clFbF" id="2RLAZYE0DHr" role="3cqZAp">
                <node concept="2OqwBi" id="2RLAZYE0DHX" role="3clFbG">
                  <node concept="37vLTw" id="2RLAZYE0DHI" role="2Oq$k0">
                    <ref role="3cqZAo" node="2RLAZYE0DHd" resolve="s" />
                  </node>
                  <node concept="liA8E" id="2RLAZYE0DHY" role="2OqNvi">
                    <ref role="37wK5l" node="2RLAZYE0zcQ" resolve="dispose" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="2RLAZYE0DHk" role="1zxBo7">
            <node concept="3vlDli" id="2RLAZYE0DIo" role="3cqZAp">
              <node concept="Xl_RD" id="2RLAZYE0DHL" role="3tpDZB">
                <property role="Xl_RC" value="vanilla.keyword/vanilla.checkbox" />
              </node>
              <node concept="2OqwBi" id="2RLAZYE0DIb" role="3tpDZA">
                <node concept="37vLTw" id="2RLAZYE0DHZ" role="2Oq$k0">
                  <ref role="3cqZAo" node="2RLAZYE0DHd" resolve="s" />
                </node>
                <node concept="liA8E" id="2RLAZYE0DIc" role="2OqNvi">
                  <ref role="37wK5l" node="2RLAZYE0yYz" resolve="defaults" />
                </node>
              </node>
              <node concept="3_1$Yv" id="2RLAZYE0DIp" role="3_9lra">
                <node concept="Xl_RD" id="2RLAZYE0DIq" role="3_1BAH">
                  <property role="Xl_RC" value="InteractiveGeneration.implicitFlagRoutes: expected vanilla.keyword/vanilla.checkbox" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="2RLAZYE0DIr" role="1SL9yI">
      <property role="TrG5h" value="autoReleasesExplicitOverride" />
      <node concept="3cqZAl" id="2RLAZYE0DIs" role="3clF45" />
      <node concept="3clFbS" id="2RLAZYE0DIt" role="3clF47">
        <node concept="3cpWs8" id="2RLAZYE0DIw" role="3cqZAp">
          <node concept="3cpWsn" id="2RLAZYE0DIv" role="3cpWs9">
            <property role="TrG5h" value="s" />
            <node concept="3uibUv" id="2RLAZYE0DIx" role="1tU5fm">
              <ref role="3uigEE" node="2RLAZYE0yUU" resolve="UsabilityScenario" />
            </node>
            <node concept="2ShNRf" id="2RLAZYE0DIL" role="33vP2m">
              <node concept="1pGfFk" id="2RLAZYE0DIX" role="2ShVmc">
                <ref role="37wK5l" node="2RLAZYE0yWw" resolve="UsabilityScenario" />
                <node concept="3xONca" id="2RLAZYE0DJC" role="37wK5m">
                  <ref role="3xOPvv" node="2RLAZYE0DH6" resolve="GrammarFixture" />
                </node>
                <node concept="3xONca" id="2RLAZYE0DJD" role="37wK5m">
                  <ref role="3xOPvv" node="2RLAZYE0DH8" resolve="IntentFixture" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="2RLAZYE0DIJ" role="3cqZAp">
          <node concept="1wplmZ" id="2RLAZYE0DIK" role="1zxBo6">
            <node concept="3clFbS" id="2RLAZYE0DIG" role="1wplMD">
              <node concept="3clFbF" id="2RLAZYE0DIH" role="3cqZAp">
                <node concept="2OqwBi" id="2RLAZYE0DJf" role="3clFbG">
                  <node concept="37vLTw" id="2RLAZYE0DJ0" role="2Oq$k0">
                    <ref role="3cqZAo" node="2RLAZYE0DIv" resolve="s" />
                  </node>
                  <node concept="liA8E" id="2RLAZYE0DJg" role="2OqNvi">
                    <ref role="37wK5l" node="2RLAZYE0zcQ" resolve="dispose" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="2RLAZYE0DIA" role="1zxBo7">
            <node concept="3vlDli" id="2RLAZYE0DJE" role="3cqZAp">
              <node concept="Xl_RD" id="2RLAZYE0DJ3" role="3tpDZB">
                <property role="Xl_RC" value="vanilla.checkbox|vanilla.keyword|vanilla.checkbox/vanilla.checkbox" />
              </node>
              <node concept="2OqwBi" id="2RLAZYE0DJt" role="3tpDZA">
                <node concept="37vLTw" id="2RLAZYE0DJh" role="2Oq$k0">
                  <ref role="3cqZAo" node="2RLAZYE0DIv" resolve="s" />
                </node>
                <node concept="liA8E" id="2RLAZYE0DJu" role="2OqNvi">
                  <ref role="37wK5l" node="2RLAZYE0yYN" resolve="overrideTiers" />
                </node>
              </node>
              <node concept="3_1$Yv" id="2RLAZYE0DJF" role="3_9lra">
                <node concept="Xl_RD" id="2RLAZYE0DJG" role="3_1BAH">
                  <property role="Xl_RC" value="InteractiveGeneration.autoReleasesExplicitOverride: expected vanilla.checkbox|vanilla.keyword|vanilla.checkbox/vanilla.checkbox" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="2RLAZYE0DJH" role="1SL9yI">
      <property role="TrG5h" value="copiedOccurrenceUsesSourceTrace" />
      <node concept="3cqZAl" id="2RLAZYE0DJI" role="3clF45" />
      <node concept="3clFbS" id="2RLAZYE0DJJ" role="3clF47">
        <node concept="3cpWs8" id="2RLAZYE0DJM" role="3cqZAp">
          <node concept="3cpWsn" id="2RLAZYE0DJL" role="3cpWs9">
            <property role="TrG5h" value="s" />
            <node concept="3uibUv" id="2RLAZYE0DJN" role="1tU5fm">
              <ref role="3uigEE" node="2RLAZYE0yUU" resolve="UsabilityScenario" />
            </node>
            <node concept="2ShNRf" id="2RLAZYE0DK3" role="33vP2m">
              <node concept="1pGfFk" id="2RLAZYE0DKf" role="2ShVmc">
                <ref role="37wK5l" node="2RLAZYE0yWw" resolve="UsabilityScenario" />
                <node concept="3xONca" id="2RLAZYE0DKU" role="37wK5m">
                  <ref role="3xOPvv" node="2RLAZYE0DH6" resolve="GrammarFixture" />
                </node>
                <node concept="3xONca" id="2RLAZYE0DKV" role="37wK5m">
                  <ref role="3xOPvv" node="2RLAZYE0DH8" resolve="IntentFixture" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="2RLAZYE0DK1" role="3cqZAp">
          <node concept="1wplmZ" id="2RLAZYE0DK2" role="1zxBo6">
            <node concept="3clFbS" id="2RLAZYE0DJY" role="1wplMD">
              <node concept="3clFbF" id="2RLAZYE0DJZ" role="3cqZAp">
                <node concept="2OqwBi" id="2RLAZYE0DKx" role="3clFbG">
                  <node concept="37vLTw" id="2RLAZYE0DKi" role="2Oq$k0">
                    <ref role="3cqZAo" node="2RLAZYE0DJL" resolve="s" />
                  </node>
                  <node concept="liA8E" id="2RLAZYE0DKy" role="2OqNvi">
                    <ref role="37wK5l" node="2RLAZYE0zcQ" resolve="dispose" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="2RLAZYE0DJS" role="1zxBo7">
            <node concept="3vlDli" id="2RLAZYE0DKW" role="3cqZAp">
              <node concept="Xl_RD" id="2RLAZYE0DKl" role="3tpDZB">
                <property role="Xl_RC" value="true:vanilla.checkbox" />
              </node>
              <node concept="2OqwBi" id="2RLAZYE0DKJ" role="3tpDZA">
                <node concept="37vLTw" id="2RLAZYE0DKz" role="2Oq$k0">
                  <ref role="3cqZAo" node="2RLAZYE0DJL" resolve="s" />
                </node>
                <node concept="liA8E" id="2RLAZYE0DKK" role="2OqNvi">
                  <ref role="37wK5l" node="2RLAZYE0yZQ" resolve="copiedOverride" />
                </node>
              </node>
              <node concept="3_1$Yv" id="2RLAZYE0DKX" role="3_9lra">
                <node concept="Xl_RD" id="2RLAZYE0DKY" role="3_1BAH">
                  <property role="Xl_RC" value="InteractiveGeneration.copiedOccurrenceUsesSourceTrace: expected true:vanilla.checkbox" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="2RLAZYE0DKZ" role="1SL9yI">
      <property role="TrG5h" value="unavailableBackendIsRejected" />
      <node concept="3cqZAl" id="2RLAZYE0DL0" role="3clF45" />
      <node concept="3clFbS" id="2RLAZYE0DL1" role="3clF47">
        <node concept="3cpWs8" id="2RLAZYE0DL4" role="3cqZAp">
          <node concept="3cpWsn" id="2RLAZYE0DL3" role="3cpWs9">
            <property role="TrG5h" value="s" />
            <node concept="3uibUv" id="2RLAZYE0DL5" role="1tU5fm">
              <ref role="3uigEE" node="2RLAZYE0yUU" resolve="UsabilityScenario" />
            </node>
            <node concept="2ShNRf" id="2RLAZYE0DLl" role="33vP2m">
              <node concept="1pGfFk" id="2RLAZYE0DLx" role="2ShVmc">
                <ref role="37wK5l" node="2RLAZYE0yWw" resolve="UsabilityScenario" />
                <node concept="3xONca" id="2RLAZYE0DMc" role="37wK5m">
                  <ref role="3xOPvv" node="2RLAZYE0DH6" resolve="GrammarFixture" />
                </node>
                <node concept="3xONca" id="2RLAZYE0DMd" role="37wK5m">
                  <ref role="3xOPvv" node="2RLAZYE0DH8" resolve="IntentFixture" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="2RLAZYE0DLj" role="3cqZAp">
          <node concept="1wplmZ" id="2RLAZYE0DLk" role="1zxBo6">
            <node concept="3clFbS" id="2RLAZYE0DLg" role="1wplMD">
              <node concept="3clFbF" id="2RLAZYE0DLh" role="3cqZAp">
                <node concept="2OqwBi" id="2RLAZYE0DLN" role="3clFbG">
                  <node concept="37vLTw" id="2RLAZYE0DL$" role="2Oq$k0">
                    <ref role="3cqZAo" node="2RLAZYE0DL3" resolve="s" />
                  </node>
                  <node concept="liA8E" id="2RLAZYE0DLO" role="2OqNvi">
                    <ref role="37wK5l" node="2RLAZYE0zcQ" resolve="dispose" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="2RLAZYE0DLa" role="1zxBo7">
            <node concept="3vlDli" id="2RLAZYE0DMe" role="3cqZAp">
              <node concept="Xl_RD" id="2RLAZYE0DLB" role="3tpDZB">
                <property role="Xl_RC" value="MBNF_BACKEND_UNAVAILABLE" />
              </node>
              <node concept="2OqwBi" id="2RLAZYE0DM1" role="3tpDZA">
                <node concept="37vLTw" id="2RLAZYE0DLP" role="2Oq$k0">
                  <ref role="3cqZAo" node="2RLAZYE0DL3" resolve="s" />
                </node>
                <node concept="liA8E" id="2RLAZYE0DM2" role="2OqNvi">
                  <ref role="37wK5l" node="2RLAZYE0z0A" resolve="unavailableBackend" />
                </node>
              </node>
              <node concept="3_1$Yv" id="2RLAZYE0DMf" role="3_9lra">
                <node concept="Xl_RD" id="2RLAZYE0DMg" role="3_1BAH">
                  <property role="Xl_RC" value="InteractiveGeneration.unavailableBackendIsRejected: expected MBNF_BACKEND_UNAVAILABLE" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="2RLAZYE0DMh" role="1SL9yI">
      <property role="TrG5h" value="unimplementedProjectionIsRejected" />
      <node concept="3cqZAl" id="2RLAZYE0DMi" role="3clF45" />
      <node concept="3clFbS" id="2RLAZYE0DMj" role="3clF47">
        <node concept="3cpWs8" id="2RLAZYE0DMm" role="3cqZAp">
          <node concept="3cpWsn" id="2RLAZYE0DMl" role="3cpWs9">
            <property role="TrG5h" value="s" />
            <node concept="3uibUv" id="2RLAZYE0DMn" role="1tU5fm">
              <ref role="3uigEE" node="2RLAZYE0yUU" resolve="UsabilityScenario" />
            </node>
            <node concept="2ShNRf" id="2RLAZYE0DMB" role="33vP2m">
              <node concept="1pGfFk" id="2RLAZYE0DMN" role="2ShVmc">
                <ref role="37wK5l" node="2RLAZYE0yWw" resolve="UsabilityScenario" />
                <node concept="3xONca" id="2RLAZYE0DNu" role="37wK5m">
                  <ref role="3xOPvv" node="2RLAZYE0DH6" resolve="GrammarFixture" />
                </node>
                <node concept="3xONca" id="2RLAZYE0DNv" role="37wK5m">
                  <ref role="3xOPvv" node="2RLAZYE0DH8" resolve="IntentFixture" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="2RLAZYE0DM_" role="3cqZAp">
          <node concept="1wplmZ" id="2RLAZYE0DMA" role="1zxBo6">
            <node concept="3clFbS" id="2RLAZYE0DMy" role="1wplMD">
              <node concept="3clFbF" id="2RLAZYE0DMz" role="3cqZAp">
                <node concept="2OqwBi" id="2RLAZYE0DN5" role="3clFbG">
                  <node concept="37vLTw" id="2RLAZYE0DMQ" role="2Oq$k0">
                    <ref role="3cqZAo" node="2RLAZYE0DMl" resolve="s" />
                  </node>
                  <node concept="liA8E" id="2RLAZYE0DN6" role="2OqNvi">
                    <ref role="37wK5l" node="2RLAZYE0zcQ" resolve="dispose" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="2RLAZYE0DMs" role="1zxBo7">
            <node concept="3vlDli" id="2RLAZYE0DNw" role="3cqZAp">
              <node concept="Xl_RD" id="2RLAZYE0DMT" role="3tpDZB">
                <property role="Xl_RC" value="MBNF_PROJECTION_NOT_GENERATED" />
              </node>
              <node concept="2OqwBi" id="2RLAZYE0DNj" role="3tpDZA">
                <node concept="37vLTw" id="2RLAZYE0DN7" role="2Oq$k0">
                  <ref role="3cqZAo" node="2RLAZYE0DMl" resolve="s" />
                </node>
                <node concept="liA8E" id="2RLAZYE0DNk" role="2OqNvi">
                  <ref role="37wK5l" node="2RLAZYE0z13" resolve="unsupportedProjection" />
                </node>
              </node>
              <node concept="3_1$Yv" id="2RLAZYE0DNx" role="3_9lra">
                <node concept="Xl_RD" id="2RLAZYE0DNy" role="3_1BAH">
                  <property role="Xl_RC" value="InteractiveGeneration.unimplementedProjectionIsRejected: expected MBNF_PROJECTION_NOT_GENERATED" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="2RLAZYE0DNz" role="1SL9yI">
      <property role="TrG5h" value="existingOptionalChildIsAccepted" />
      <node concept="3cqZAl" id="2RLAZYE0DN$" role="3clF45" />
      <node concept="3clFbS" id="2RLAZYE0DN_" role="3clF47">
        <node concept="3cpWs8" id="2RLAZYE0DNC" role="3cqZAp">
          <node concept="3cpWsn" id="2RLAZYE0DNB" role="3cpWs9">
            <property role="TrG5h" value="s" />
            <node concept="3uibUv" id="2RLAZYE0DND" role="1tU5fm">
              <ref role="3uigEE" node="2RLAZYE0yUU" resolve="UsabilityScenario" />
            </node>
            <node concept="2ShNRf" id="2RLAZYE0DNT" role="33vP2m">
              <node concept="1pGfFk" id="2RLAZYE0DO5" role="2ShVmc">
                <ref role="37wK5l" node="2RLAZYE0yWw" resolve="UsabilityScenario" />
                <node concept="3xONca" id="2RLAZYE0DOK" role="37wK5m">
                  <ref role="3xOPvv" node="2RLAZYE0DH6" resolve="GrammarFixture" />
                </node>
                <node concept="3xONca" id="2RLAZYE0DOL" role="37wK5m">
                  <ref role="3xOPvv" node="2RLAZYE0DH8" resolve="IntentFixture" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="2RLAZYE0DNR" role="3cqZAp">
          <node concept="1wplmZ" id="2RLAZYE0DNS" role="1zxBo6">
            <node concept="3clFbS" id="2RLAZYE0DNO" role="1wplMD">
              <node concept="3clFbF" id="2RLAZYE0DNP" role="3cqZAp">
                <node concept="2OqwBi" id="2RLAZYE0DOn" role="3clFbG">
                  <node concept="37vLTw" id="2RLAZYE0DO8" role="2Oq$k0">
                    <ref role="3cqZAo" node="2RLAZYE0DNB" resolve="s" />
                  </node>
                  <node concept="liA8E" id="2RLAZYE0DOo" role="2OqNvi">
                    <ref role="37wK5l" node="2RLAZYE0zcQ" resolve="dispose" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="2RLAZYE0DNI" role="1zxBo7">
            <node concept="3vlDli" id="2RLAZYE0DOM" role="3cqZAp">
              <node concept="3clFbT" id="2RLAZYE0DOb" role="3tpDZB">
                <property role="3clFbU" value="true" />
              </node>
              <node concept="2OqwBi" id="2RLAZYE0DO_" role="3tpDZA">
                <node concept="37vLTw" id="2RLAZYE0DOp" role="2Oq$k0">
                  <ref role="3cqZAo" node="2RLAZYE0DNB" resolve="s" />
                </node>
                <node concept="liA8E" id="2RLAZYE0DOA" role="2OqNvi">
                  <ref role="37wK5l" node="2RLAZYE0z1r" resolve="existingOptionalChild" />
                </node>
              </node>
              <node concept="3_1$Yv" id="2RLAZYE0DON" role="3_9lra">
                <node concept="Xl_RD" id="2RLAZYE0DOO" role="3_1BAH">
                  <property role="Xl_RC" value="InteractiveGeneration.existingOptionalChildIsAccepted: expected true" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="2RLAZYE0DOP" role="1SL9yI">
      <property role="TrG5h" value="flatRangeNeedsExplicitLowering" />
      <node concept="3cqZAl" id="2RLAZYE0DOQ" role="3clF45" />
      <node concept="3clFbS" id="2RLAZYE0DOR" role="3clF47">
        <node concept="3cpWs8" id="2RLAZYE0DOU" role="3cqZAp">
          <node concept="3cpWsn" id="2RLAZYE0DOT" role="3cpWs9">
            <property role="TrG5h" value="s" />
            <node concept="3uibUv" id="2RLAZYE0DOV" role="1tU5fm">
              <ref role="3uigEE" node="2RLAZYE0yUU" resolve="UsabilityScenario" />
            </node>
            <node concept="2ShNRf" id="2RLAZYE0DPb" role="33vP2m">
              <node concept="1pGfFk" id="2RLAZYE0DPn" role="2ShVmc">
                <ref role="37wK5l" node="2RLAZYE0yWw" resolve="UsabilityScenario" />
                <node concept="3xONca" id="2RLAZYE0DQ2" role="37wK5m">
                  <ref role="3xOPvv" node="2RLAZYE0DH6" resolve="GrammarFixture" />
                </node>
                <node concept="3xONca" id="2RLAZYE0DQ3" role="37wK5m">
                  <ref role="3xOPvv" node="2RLAZYE0DH8" resolve="IntentFixture" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="2RLAZYE0DP9" role="3cqZAp">
          <node concept="1wplmZ" id="2RLAZYE0DPa" role="1zxBo6">
            <node concept="3clFbS" id="2RLAZYE0DP6" role="1wplMD">
              <node concept="3clFbF" id="2RLAZYE0DP7" role="3cqZAp">
                <node concept="2OqwBi" id="2RLAZYE0DPD" role="3clFbG">
                  <node concept="37vLTw" id="2RLAZYE0DPq" role="2Oq$k0">
                    <ref role="3cqZAo" node="2RLAZYE0DOT" resolve="s" />
                  </node>
                  <node concept="liA8E" id="2RLAZYE0DPE" role="2OqNvi">
                    <ref role="37wK5l" node="2RLAZYE0zcQ" resolve="dispose" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="2RLAZYE0DP0" role="1zxBo7">
            <node concept="3vlDli" id="2RLAZYE0DQ4" role="3cqZAp">
              <node concept="Xl_RD" id="2RLAZYE0DPt" role="3tpDZB">
                <property role="Xl_RC" value="MBNF_GROUP_REQUIRES_LOWERING" />
              </node>
              <node concept="2OqwBi" id="2RLAZYE0DPR" role="3tpDZA">
                <node concept="37vLTw" id="2RLAZYE0DPF" role="2Oq$k0">
                  <ref role="3cqZAo" node="2RLAZYE0DOT" resolve="s" />
                </node>
                <node concept="liA8E" id="2RLAZYE0DPS" role="2OqNvi">
                  <ref role="37wK5l" node="2RLAZYE0z1z" resolve="flatRange" />
                </node>
              </node>
              <node concept="3_1$Yv" id="2RLAZYE0DQ5" role="3_9lra">
                <node concept="Xl_RD" id="2RLAZYE0DQ6" role="3_1BAH">
                  <property role="Xl_RC" value="InteractiveGeneration.flatRangeNeedsExplicitLowering: expected MBNF_GROUP_REQUIRES_LOWERING" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="2RLAZYE0DQ7" role="1SL9yI">
      <property role="TrG5h" value="mandatoryChildIsNotOptionalStorage" />
      <node concept="3cqZAl" id="2RLAZYE0DQ8" role="3clF45" />
      <node concept="3clFbS" id="2RLAZYE0DQ9" role="3clF47">
        <node concept="3cpWs8" id="2RLAZYE0DQc" role="3cqZAp">
          <node concept="3cpWsn" id="2RLAZYE0DQb" role="3cpWs9">
            <property role="TrG5h" value="s" />
            <node concept="3uibUv" id="2RLAZYE0DQd" role="1tU5fm">
              <ref role="3uigEE" node="2RLAZYE0yUU" resolve="UsabilityScenario" />
            </node>
            <node concept="2ShNRf" id="2RLAZYE0DQt" role="33vP2m">
              <node concept="1pGfFk" id="2RLAZYE0DQD" role="2ShVmc">
                <ref role="37wK5l" node="2RLAZYE0yWw" resolve="UsabilityScenario" />
                <node concept="3xONca" id="2RLAZYE0DRk" role="37wK5m">
                  <ref role="3xOPvv" node="2RLAZYE0DH6" resolve="GrammarFixture" />
                </node>
                <node concept="3xONca" id="2RLAZYE0DRl" role="37wK5m">
                  <ref role="3xOPvv" node="2RLAZYE0DH8" resolve="IntentFixture" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="2RLAZYE0DQr" role="3cqZAp">
          <node concept="1wplmZ" id="2RLAZYE0DQs" role="1zxBo6">
            <node concept="3clFbS" id="2RLAZYE0DQo" role="1wplMD">
              <node concept="3clFbF" id="2RLAZYE0DQp" role="3cqZAp">
                <node concept="2OqwBi" id="2RLAZYE0DQV" role="3clFbG">
                  <node concept="37vLTw" id="2RLAZYE0DQG" role="2Oq$k0">
                    <ref role="3cqZAo" node="2RLAZYE0DQb" resolve="s" />
                  </node>
                  <node concept="liA8E" id="2RLAZYE0DQW" role="2OqNvi">
                    <ref role="37wK5l" node="2RLAZYE0zcQ" resolve="dispose" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="2RLAZYE0DQi" role="1zxBo7">
            <node concept="3vlDli" id="2RLAZYE0DRm" role="3cqZAp">
              <node concept="Xl_RD" id="2RLAZYE0DQJ" role="3tpDZB">
                <property role="Xl_RC" value="MBNF_GROUP_REQUIRES_LOWERING" />
              </node>
              <node concept="2OqwBi" id="2RLAZYE0DR9" role="3tpDZA">
                <node concept="37vLTw" id="2RLAZYE0DQX" role="2Oq$k0">
                  <ref role="3cqZAo" node="2RLAZYE0DQb" resolve="s" />
                </node>
                <node concept="liA8E" id="2RLAZYE0DRa" role="2OqNvi">
                  <ref role="37wK5l" node="2RLAZYE0z23" resolve="mandatoryChild" />
                </node>
              </node>
              <node concept="3_1$Yv" id="2RLAZYE0DRn" role="3_9lra">
                <node concept="Xl_RD" id="2RLAZYE0DRo" role="3_1BAH">
                  <property role="Xl_RC" value="InteractiveGeneration.mandatoryChildIsNotOptionalStorage: expected MBNF_GROUP_REQUIRES_LOWERING" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="2RLAZYE0DRp" role="1SL9yI">
      <property role="TrG5h" value="unapprovedIntentDoesNotLower" />
      <node concept="3cqZAl" id="2RLAZYE0DRq" role="3clF45" />
      <node concept="3clFbS" id="2RLAZYE0DRr" role="3clF47">
        <node concept="3cpWs8" id="2RLAZYE0DRu" role="3cqZAp">
          <node concept="3cpWsn" id="2RLAZYE0DRt" role="3cpWs9">
            <property role="TrG5h" value="s" />
            <node concept="3uibUv" id="2RLAZYE0DRv" role="1tU5fm">
              <ref role="3uigEE" node="2RLAZYE0yUU" resolve="UsabilityScenario" />
            </node>
            <node concept="2ShNRf" id="2RLAZYE0DRJ" role="33vP2m">
              <node concept="1pGfFk" id="2RLAZYE0DRV" role="2ShVmc">
                <ref role="37wK5l" node="2RLAZYE0yWw" resolve="UsabilityScenario" />
                <node concept="3xONca" id="2RLAZYE0DSA" role="37wK5m">
                  <ref role="3xOPvv" node="2RLAZYE0DH6" resolve="GrammarFixture" />
                </node>
                <node concept="3xONca" id="2RLAZYE0DSB" role="37wK5m">
                  <ref role="3xOPvv" node="2RLAZYE0DH8" resolve="IntentFixture" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="2RLAZYE0DRH" role="3cqZAp">
          <node concept="1wplmZ" id="2RLAZYE0DRI" role="1zxBo6">
            <node concept="3clFbS" id="2RLAZYE0DRE" role="1wplMD">
              <node concept="3clFbF" id="2RLAZYE0DRF" role="3cqZAp">
                <node concept="2OqwBi" id="2RLAZYE0DSd" role="3clFbG">
                  <node concept="37vLTw" id="2RLAZYE0DRY" role="2Oq$k0">
                    <ref role="3cqZAo" node="2RLAZYE0DRt" resolve="s" />
                  </node>
                  <node concept="liA8E" id="2RLAZYE0DSe" role="2OqNvi">
                    <ref role="37wK5l" node="2RLAZYE0zcQ" resolve="dispose" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="2RLAZYE0DR$" role="1zxBo7">
            <node concept="3vlDli" id="2RLAZYE0DSC" role="3cqZAp">
              <node concept="3clFbT" id="2RLAZYE0DS1" role="3tpDZB">
                <property role="3clFbU" value="true" />
              </node>
              <node concept="2OqwBi" id="2RLAZYE0DSr" role="3tpDZA">
                <node concept="37vLTw" id="2RLAZYE0DSf" role="2Oq$k0">
                  <ref role="3cqZAo" node="2RLAZYE0DRt" resolve="s" />
                </node>
                <node concept="liA8E" id="2RLAZYE0DSs" role="2OqNvi">
                  <ref role="37wK5l" node="2RLAZYE0z2R" resolve="unapprovedIntent" />
                </node>
              </node>
              <node concept="3_1$Yv" id="2RLAZYE0DSD" role="3_9lra">
                <node concept="Xl_RD" id="2RLAZYE0DSE" role="3_1BAH">
                  <property role="Xl_RC" value="InteractiveGeneration.unapprovedIntentDoesNotLower: expected true" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="2RLAZYE0DSF" role="1SL9yI">
      <property role="TrG5h" value="actualGeneratedProfileControls" />
      <node concept="3cqZAl" id="2RLAZYE0DSG" role="3clF45" />
      <node concept="3clFbS" id="2RLAZYE0DSH" role="3clF47">
        <node concept="3cpWs8" id="2RLAZYE0DSK" role="3cqZAp">
          <node concept="3cpWsn" id="2RLAZYE0DSJ" role="3cpWs9">
            <property role="TrG5h" value="s" />
            <node concept="3uibUv" id="2RLAZYE0DSL" role="1tU5fm">
              <ref role="3uigEE" node="2RLAZYE0yUU" resolve="UsabilityScenario" />
            </node>
            <node concept="2ShNRf" id="2RLAZYE0DT2" role="33vP2m">
              <node concept="1pGfFk" id="2RLAZYE0DTe" role="2ShVmc">
                <ref role="37wK5l" node="2RLAZYE0yWw" resolve="UsabilityScenario" />
                <node concept="3xONca" id="2RLAZYE0DTW" role="37wK5m">
                  <ref role="3xOPvv" node="2RLAZYE0DH6" resolve="GrammarFixture" />
                </node>
                <node concept="3xONca" id="2RLAZYE0DTX" role="37wK5m">
                  <ref role="3xOPvv" node="2RLAZYE0DH8" resolve="IntentFixture" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="2RLAZYE0DT0" role="3cqZAp">
          <node concept="1wplmZ" id="2RLAZYE0DT1" role="1zxBo6">
            <node concept="3clFbS" id="2RLAZYE0DSX" role="1wplMD">
              <node concept="3clFbF" id="2RLAZYE0DSY" role="3cqZAp">
                <node concept="2OqwBi" id="2RLAZYE0DTx" role="3clFbG">
                  <node concept="37vLTw" id="2RLAZYE0DTh" role="2Oq$k0">
                    <ref role="3cqZAo" node="2RLAZYE0DSJ" resolve="s" />
                  </node>
                  <node concept="liA8E" id="2RLAZYE0DTy" role="2OqNvi">
                    <ref role="37wK5l" node="2RLAZYE0zcQ" resolve="dispose" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="2RLAZYE0DSQ" role="1zxBo7">
            <node concept="3vlDli" id="2RLAZYE0DTZ" role="3cqZAp">
              <node concept="Xl_RD" id="2RLAZYE0DTk" role="3tpDZB">
                <property role="Xl_RC" value="1:0/0:1|0:1/1:0|1:0/0:1" />
              </node>
              <node concept="2OqwBi" id="2RLAZYE0DTK" role="3tpDZA">
                <node concept="37vLTw" id="2RLAZYE0DTz" role="2Oq$k0">
                  <ref role="3cqZAo" node="2RLAZYE0DSJ" resolve="s" />
                </node>
                <node concept="liA8E" id="2RLAZYE0DTL" role="2OqNvi">
                  <ref role="37wK5l" node="2RLAZYE0z6x" resolve="actualProfileGeneration" />
                  <node concept="1jxXqW" id="2RLAZYE0DTY" role="37wK5m" />
                </node>
              </node>
              <node concept="3_1$Yv" id="2RLAZYE0DU0" role="3_9lra">
                <node concept="Xl_RD" id="2RLAZYE0DU1" role="3_1BAH">
                  <property role="Xl_RC" value="InteractiveGeneration.actualGeneratedProfileControls: expected 1:0/0:1|0:1/1:0|1:0/0:1" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="2RLAZYE0DU2" role="1SL9yI">
      <property role="TrG5h" value="nativePersistenceRetainsFlagAndEmptyClause" />
      <node concept="3cqZAl" id="2RLAZYE0DU3" role="3clF45" />
      <node concept="3clFbS" id="2RLAZYE0DU4" role="3clF47">
        <node concept="3cpWs8" id="2RLAZYE0DU7" role="3cqZAp">
          <node concept="3cpWsn" id="2RLAZYE0DU6" role="3cpWs9">
            <property role="TrG5h" value="s" />
            <node concept="3uibUv" id="2RLAZYE0DU8" role="1tU5fm">
              <ref role="3uigEE" node="2RLAZYE0yUU" resolve="UsabilityScenario" />
            </node>
            <node concept="2ShNRf" id="2RLAZYE0DUp" role="33vP2m">
              <node concept="1pGfFk" id="2RLAZYE0DU_" role="2ShVmc">
                <ref role="37wK5l" node="2RLAZYE0yWw" resolve="UsabilityScenario" />
                <node concept="3xONca" id="2RLAZYE0DVj" role="37wK5m">
                  <ref role="3xOPvv" node="2RLAZYE0DH6" resolve="GrammarFixture" />
                </node>
                <node concept="3xONca" id="2RLAZYE0DVk" role="37wK5m">
                  <ref role="3xOPvv" node="2RLAZYE0DH8" resolve="IntentFixture" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="2RLAZYE0DUn" role="3cqZAp">
          <node concept="1wplmZ" id="2RLAZYE0DUo" role="1zxBo6">
            <node concept="3clFbS" id="2RLAZYE0DUk" role="1wplMD">
              <node concept="3clFbF" id="2RLAZYE0DUl" role="3cqZAp">
                <node concept="2OqwBi" id="2RLAZYE0DUS" role="3clFbG">
                  <node concept="37vLTw" id="2RLAZYE0DUC" role="2Oq$k0">
                    <ref role="3cqZAo" node="2RLAZYE0DU6" resolve="s" />
                  </node>
                  <node concept="liA8E" id="2RLAZYE0DUT" role="2OqNvi">
                    <ref role="37wK5l" node="2RLAZYE0zcQ" resolve="dispose" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="2RLAZYE0DUd" role="1zxBo7">
            <node concept="3vlDli" id="2RLAZYE0DVm" role="3cqZAp">
              <node concept="Xl_RD" id="2RLAZYE0DUF" role="3tpDZB">
                <property role="Xl_RC" value="absent:false:-1:absent|empty:true:0:publicemptyelse|populated:false:2:populatedelseskipskip" />
              </node>
              <node concept="2OqwBi" id="2RLAZYE0DV7" role="3tpDZA">
                <node concept="37vLTw" id="2RLAZYE0DUU" role="2Oq$k0">
                  <ref role="3cqZAo" node="2RLAZYE0DU6" resolve="s" />
                </node>
                <node concept="liA8E" id="2RLAZYE0DV8" role="2OqNvi">
                  <ref role="37wK5l" node="2RLAZYE0z8H" resolve="persistence" />
                  <node concept="1jxXqW" id="2RLAZYE0DVl" role="37wK5m" />
                  <node concept="3xONca" id="2RLAZYE1amt" role="37wK5m">
                    <ref role="3xOPvv" node="2RLAZYE1ama" resolve="absentDeclaration" />
                  </node>
                  <node concept="3xONca" id="2RLAZYE1amu" role="37wK5m">
                    <ref role="3xOPvv" node="2RLAZYE1amh" resolve="emptyDeclaration" />
                  </node>
                  <node concept="3xONca" id="2RLAZYE1amv" role="37wK5m">
                    <ref role="3xOPvv" node="2RLAZYE1amq" resolve="populatedDeclaration" />
                  </node>
                </node>
              </node>
              <node concept="3_1$Yv" id="2RLAZYE0DVn" role="3_9lra">
                <node concept="Xl_RD" id="2RLAZYE0DVo" role="3_1BAH">
                  <property role="Xl_RC" value="InteractiveGeneration.nativePersistenceRetainsFlagAndEmptyClause: expected absent:false:-1:absent|empty:true:0:publicemptyelse|populated:false:2:populatedelseskipskip" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="2RLAZYE0TqY" role="Sfmx6">
        <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
      </node>
    </node>
    <node concept="1qefOq" id="2RLAZYE1am9" role="1SKRRt">
      <node concept="253Ayn" id="2RLAZYE1am7" role="1qenE9">
        <property role="13FgS_" value="absent" />
        <node concept="3xLA65" id="2RLAZYE1ama" role="lGtFl">
          <property role="TrG5h" value="absentDeclaration" />
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="2RLAZYE1amg" role="1SKRRt">
      <node concept="253Ayn" id="2RLAZYE1amd" role="1qenE9">
        <property role="1KDGnK" value="true" />
        <property role="13FgS_" value="empty" />
        <node concept="2f_wJ0" id="2RLAZYE1ame" role="1ZD6sP" />
        <node concept="3xLA65" id="2RLAZYE1amh" role="lGtFl">
          <property role="TrG5h" value="emptyDeclaration" />
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="2RLAZYE1amp" role="1SKRRt">
      <node concept="253Ayn" id="2RLAZYE1amk" role="1qenE9">
        <property role="13FgS_" value="populated" />
        <node concept="2f_wJ0" id="2RLAZYE1aml" role="1ZD6sP">
          <node concept="2um2pr" id="2RLAZYE1amm" role="X56_t" />
          <node concept="2um2pr" id="2RLAZYE1amn" role="X56_t" />
        </node>
        <node concept="3xLA65" id="2RLAZYE1amq" role="lGtFl">
          <property role="TrG5h" value="populatedDeclaration" />
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="2RLAZYE50FD" role="1SL9yI">
      <property role="TrG5h" value="ruleOverridesRemainProjectionLocal" />
      <node concept="3cqZAl" id="2RLAZYE50FE" role="3clF45" />
      <node concept="3clFbS" id="2RLAZYE50FF" role="3clF47">
        <node concept="3cpWs8" id="2RLAZYE50FG" role="3cqZAp">
          <node concept="3cpWsn" id="2RLAZYE50FH" role="3cpWs9">
            <property role="TrG5h" value="s" />
            <node concept="3uibUv" id="2RLAZYE50FI" role="1tU5fm">
              <ref role="3uigEE" node="2RLAZYE0yUU" resolve="UsabilityScenario" />
            </node>
            <node concept="2ShNRf" id="2RLAZYE50FJ" role="33vP2m">
              <node concept="1pGfFk" id="2RLAZYE50FK" role="2ShVmc">
                <ref role="37wK5l" node="2RLAZYE0yWw" resolve="UsabilityScenario" />
                <node concept="3xONca" id="2RLAZYE50FL" role="37wK5m">
                  <ref role="3xOPvv" node="2RLAZYE0DH6" resolve="GrammarFixture" />
                </node>
                <node concept="3xONca" id="2RLAZYE50FM" role="37wK5m">
                  <ref role="3xOPvv" node="2RLAZYE0DH8" resolve="IntentFixture" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="2RLAZYE50FN" role="3cqZAp">
          <node concept="1wplmZ" id="2RLAZYE50FO" role="1zxBo6">
            <node concept="3clFbS" id="2RLAZYE50FP" role="1wplMD">
              <node concept="3clFbF" id="2RLAZYE50FQ" role="3cqZAp">
                <node concept="2OqwBi" id="2RLAZYE50FR" role="3clFbG">
                  <node concept="37vLTw" id="2RLAZYE50FS" role="2Oq$k0">
                    <ref role="3cqZAo" node="2RLAZYE50FH" resolve="s" />
                  </node>
                  <node concept="liA8E" id="2RLAZYE50FT" role="2OqNvi">
                    <ref role="37wK5l" node="2RLAZYE0zcQ" resolve="dispose" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="2RLAZYE50FU" role="1zxBo7">
            <node concept="3vlDli" id="2RLAZYE50FV" role="3cqZAp">
              <node concept="Xl_RD" id="2RLAZYE50FW" role="3tpDZB">
                <property role="Xl_RC" value="vanilla.keyword|vanilla.checkbox|vanilla.keyword|vanilla.checkbox/vanilla.checkbox" />
              </node>
              <node concept="2OqwBi" id="2RLAZYE50FX" role="3tpDZA">
                <node concept="37vLTw" id="2RLAZYE50FY" role="2Oq$k0">
                  <ref role="3cqZAo" node="2RLAZYE50FH" resolve="s" />
                </node>
                <node concept="liA8E" id="2RLAZYE50FZ" role="2OqNvi">
                  <ref role="37wK5l" node="2RLAZYE4ZXX" resolve="ruleOverrides" />
                </node>
              </node>
              <node concept="3_1$Yv" id="2RLAZYE50G0" role="3_9lra">
                <node concept="Xl_RD" id="2RLAZYE50G1" role="3_1BAH">
                  <property role="Xl_RC" value="InteractiveGeneration.ruleOverridesRemainProjectionLocal: expected vanilla.keyword|vanilla.checkbox|vanilla.keyword|vanilla.checkbox/vanilla.checkbox" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="2RLAZYE50G2" role="1SL9yI">
      <property role="TrG5h" value="suppressionCannotHideInvalidAuthoredMetadata" />
      <node concept="3cqZAl" id="2RLAZYE50G3" role="3clF45" />
      <node concept="3clFbS" id="2RLAZYE50G4" role="3clF47">
        <node concept="3cpWs8" id="2RLAZYE50G5" role="3cqZAp">
          <node concept="3cpWsn" id="2RLAZYE50G6" role="3cpWs9">
            <property role="TrG5h" value="s" />
            <node concept="3uibUv" id="2RLAZYE50G7" role="1tU5fm">
              <ref role="3uigEE" node="2RLAZYE0yUU" resolve="UsabilityScenario" />
            </node>
            <node concept="2ShNRf" id="2RLAZYE50G8" role="33vP2m">
              <node concept="1pGfFk" id="2RLAZYE50G9" role="2ShVmc">
                <ref role="37wK5l" node="2RLAZYE0yWw" resolve="UsabilityScenario" />
                <node concept="3xONca" id="2RLAZYE50Ga" role="37wK5m">
                  <ref role="3xOPvv" node="2RLAZYE0DH6" resolve="GrammarFixture" />
                </node>
                <node concept="3xONca" id="2RLAZYE50Gb" role="37wK5m">
                  <ref role="3xOPvv" node="2RLAZYE0DH8" resolve="IntentFixture" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="2RLAZYE50Gc" role="3cqZAp">
          <node concept="1wplmZ" id="2RLAZYE50Gd" role="1zxBo6">
            <node concept="3clFbS" id="2RLAZYE50Ge" role="1wplMD">
              <node concept="3clFbF" id="2RLAZYE50Gf" role="3cqZAp">
                <node concept="2OqwBi" id="2RLAZYE50Gg" role="3clFbG">
                  <node concept="37vLTw" id="2RLAZYE50Gh" role="2Oq$k0">
                    <ref role="3cqZAo" node="2RLAZYE50G6" resolve="s" />
                  </node>
                  <node concept="liA8E" id="2RLAZYE50Gi" role="2OqNvi">
                    <ref role="37wK5l" node="2RLAZYE0zcQ" resolve="dispose" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="2RLAZYE50Gj" role="1zxBo7">
            <node concept="3vlDli" id="2RLAZYE50Gk" role="3cqZAp">
              <node concept="Xl_RD" id="2RLAZYE50Gl" role="3tpDZB">
                <property role="Xl_RC" value="MBNF_INVALID_SUPPRESSION" />
              </node>
              <node concept="2OqwBi" id="2RLAZYE50Gm" role="3tpDZA">
                <node concept="37vLTw" id="2RLAZYE50Gn" role="2Oq$k0">
                  <ref role="3cqZAo" node="2RLAZYE50G6" resolve="s" />
                </node>
                <node concept="liA8E" id="2RLAZYE50Go" role="2OqNvi">
                  <ref role="37wK5l" node="2RLAZYE4ZZn" resolve="invalidSuppression" />
                </node>
              </node>
              <node concept="3_1$Yv" id="2RLAZYE50Gp" role="3_9lra">
                <node concept="Xl_RD" id="2RLAZYE50Gq" role="3_1BAH">
                  <property role="Xl_RC" value="InteractiveGeneration.suppressionCannotHideInvalidAuthoredMetadata: expected MBNF_INVALID_SUPPRESSION" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="2RLAZYE50Gr" role="1SL9yI">
      <property role="TrG5h" value="actualGenerationRejectsUnsupportedBackendAndFlatRange" />
      <node concept="3cqZAl" id="2RLAZYE50Gs" role="3clF45" />
      <node concept="3clFbS" id="2RLAZYE50Gt" role="3clF47">
        <node concept="3cpWs8" id="2RLAZYE50Gu" role="3cqZAp">
          <node concept="3cpWsn" id="2RLAZYE50Gv" role="3cpWs9">
            <property role="TrG5h" value="s" />
            <node concept="3uibUv" id="2RLAZYE50Gw" role="1tU5fm">
              <ref role="3uigEE" node="2RLAZYE0yUU" resolve="UsabilityScenario" />
            </node>
            <node concept="2ShNRf" id="2RLAZYE50Gx" role="33vP2m">
              <node concept="1pGfFk" id="2RLAZYE50Gy" role="2ShVmc">
                <ref role="37wK5l" node="2RLAZYE0yWw" resolve="UsabilityScenario" />
                <node concept="3xONca" id="2RLAZYE50Gz" role="37wK5m">
                  <ref role="3xOPvv" node="2RLAZYE0DH6" resolve="GrammarFixture" />
                </node>
                <node concept="3xONca" id="2RLAZYE50G$" role="37wK5m">
                  <ref role="3xOPvv" node="2RLAZYE0DH8" resolve="IntentFixture" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="2RLAZYE50G_" role="3cqZAp">
          <node concept="1wplmZ" id="2RLAZYE50GA" role="1zxBo6">
            <node concept="3clFbS" id="2RLAZYE50GB" role="1wplMD">
              <node concept="3clFbF" id="2RLAZYE50GC" role="3cqZAp">
                <node concept="2OqwBi" id="2RLAZYE50GD" role="3clFbG">
                  <node concept="37vLTw" id="2RLAZYE50GE" role="2Oq$k0">
                    <ref role="3cqZAo" node="2RLAZYE50Gv" resolve="s" />
                  </node>
                  <node concept="liA8E" id="2RLAZYE50GF" role="2OqNvi">
                    <ref role="37wK5l" node="2RLAZYE0zcQ" resolve="dispose" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="2RLAZYE50GG" role="1zxBo7">
            <node concept="3vlDli" id="2RLAZYE50GH" role="3cqZAp">
              <node concept="Xl_RD" id="2RLAZYE50GI" role="3tpDZB">
                <property role="Xl_RC" value="false:true|false:true" />
              </node>
              <node concept="2OqwBi" id="2RLAZYE50GJ" role="3tpDZA">
                <node concept="37vLTw" id="2RLAZYE50GK" role="2Oq$k0">
                  <ref role="3cqZAo" node="2RLAZYE50Gv" resolve="s" />
                </node>
                <node concept="liA8E" id="2RLAZYE50GL" role="2OqNvi">
                  <ref role="37wK5l" node="2RLAZYE4ZZR" resolve="actualGenerationRejections" />
                  <node concept="1jxXqW" id="2RLAZYE50GO" role="37wK5m" />
                </node>
              </node>
              <node concept="3_1$Yv" id="2RLAZYE50GM" role="3_9lra">
                <node concept="Xl_RD" id="2RLAZYE50GN" role="3_1BAH">
                  <property role="Xl_RC" value="InteractiveGeneration.actualGenerationRejectsUnsupportedBackendAndFlatRange: expected false:true|false:true" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

