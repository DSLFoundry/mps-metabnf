<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:9a947759-24bc-45ec-bd35-1e66f54676c6(metabnf.editor.tests.regeneration@tests)">
  <persistence version="9" />
  <languages>
    <use id="8585453e-6bfb-4d80-98de-b16074f1d86c" name="jetbrains.mps.lang.test" version="6" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest" version="1" />
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="9" />
    <use id="daafa647-f1f7-4b0b-b096-69cd7c8408c0" name="jetbrains.mps.baseLanguage.regexp" version="0" />
    <use id="9c03c641-469f-49e7-aeed-44a3d19b7253" name="metabnf" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
    <devkit ref="c58990b8-665e-4423-bdd8-0d527a8266cb(jetbrains.mps.devkit.tests)" />
  </languages>
  <imports>
    <import index="gzg6" ref="r:bd169fc2-8807-4d2c-b3fa-cc287f3c07b0(metabnf.regeneration)" />
    <import index="6o2a" ref="r:0fbcf19f-c60b-479b-81cb-094b5b2b9f1d(metabnf.structure)" />
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="tqvn" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.tempmodel(MPS.Core/)" />
    <import index="fwk" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.textgen.trace(MPS.Core/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="zejt" ref="r:2338345e-d246-468d-922d-9f8162ca4e3b(Demo.structure)" />
    <import index="tpfp" ref="r:00000000-0000-4000-0000-011c89590519(jetbrains.mps.baseLanguage.regexp.jetbrains.mps.regexp.accessory)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="9toz" ref="9c03c641-469f-49e7-aeed-44a3d19b7253/java:metabnf.usability(metabnf/)" />
  </imports>
  <registry>
    <language id="8585453e-6bfb-4d80-98de-b16074f1d86c" name="jetbrains.mps.lang.test">
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
      <concept id="1164991038168" name="jetbrains.mps.baseLanguage.structure.ThrowStatement" flags="nn" index="YS8fn">
        <child id="1164991057263" name="throwable" index="YScLw" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
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
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
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
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="9c03c641-469f-49e7-aeed-44a3d19b7253" name="metabnf">
      <concept id="2738052631436817608" name="metabnf.structure.TerminalReference" flags="ng" index="2GSJ2k">
        <reference id="2738052631437369572" name="rule" index="2GQAiS" />
      </concept>
      <concept id="2504845739424006163" name="metabnf.structure.NonterminalRule" flags="ng" index="3xhzZY">
        <child id="2504845739424006198" name="terms" index="3xhzZr" />
      </concept>
      <concept id="2504845739423496082" name="metabnf.structure.grammar" flags="ng" index="3xJwxZ">
        <reference id="2504845739423551607" name="start" index="3xJMYq" />
        <child id="2504845739423551605" name="rules" index="3xJMYo" />
      </concept>
      <concept id="2504845739423561976" name="metabnf.structure.TerminalRule" flags="ng" index="3xJKsl">
        <child id="2861244223630461677" name="regexp" index="q_eir" />
      </concept>
    </language>
    <language id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest">
      <concept id="1171931690126" name="jetbrains.mps.baseLanguage.unitTest.structure.TestMethod" flags="ig" index="3s$Bmu">
        <property id="1171931690128" name="methodName" index="3s$Bm0" />
      </concept>
      <concept id="1171931851043" name="jetbrains.mps.baseLanguage.unitTest.structure.BTestCase" flags="ig" index="3s_ewN">
        <property id="1171931851045" name="testCaseName" index="3s_ewP" />
        <child id="1171931851044" name="testMethodList" index="3s_ewO" />
      </concept>
      <concept id="1171931858461" name="jetbrains.mps.baseLanguage.unitTest.structure.TestMethodList" flags="ng" index="3s_gsd">
        <child id="1171931858462" name="testMethod" index="3s_gse" />
      </concept>
      <concept id="8427750732757990717" name="jetbrains.mps.baseLanguage.unitTest.structure.BinaryAssert" flags="nn" index="3tpDYu">
        <child id="8427750732757990725" name="actual" index="3tpDZA" />
        <child id="8427750732757990724" name="expected" index="3tpDZB" />
      </concept>
      <concept id="1171978097730" name="jetbrains.mps.baseLanguage.unitTest.structure.AssertEquals" flags="nn" index="3vlDli" />
      <concept id="1172069869612" name="jetbrains.mps.baseLanguage.unitTest.structure.AssertThrows" flags="nn" index="3$NI$W">
        <child id="1172070029086" name="statement" index="3$Oloe" />
        <child id="1172070532815" name="exceptionType" index="3$Qgvv" />
      </concept>
      <concept id="1172073500303" name="jetbrains.mps.baseLanguage.unitTest.structure.Message" flags="ng" index="3_1$Yv">
        <child id="1172073511101" name="message" index="3_1BAH" />
      </concept>
      <concept id="1172075514136" name="jetbrains.mps.baseLanguage.unitTest.structure.MessageHolder" flags="ngI" index="3_9gw8">
        <child id="1172075534298" name="message" index="3_9lra" />
      </concept>
    </language>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
        <property id="1587916991969465369" name="intConceptId" index="1pbfSe" />
        <child id="1071489727084" name="propertyDeclaration" index="1TKVEl" />
      </concept>
      <concept id="1169127622168" name="jetbrains.mps.lang.structure.structure.InterfaceConceptReference" flags="ig" index="PrWs8">
        <reference id="1169127628841" name="intfc" index="PrY4T" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
        <child id="1169129564478" name="implements" index="PzmwI" />
      </concept>
      <concept id="1071489288299" name="jetbrains.mps.lang.structure.structure.PropertyDeclaration" flags="ig" index="1TJgyi">
        <property id="241647608299431129" name="propertyId" index="IQ2nx" />
        <reference id="1082985295845" name="dataType" index="AX2Wp" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1143226024141" name="jetbrains.mps.lang.smodel.structure.SModelType" flags="in" index="H_c77" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="2644386474302386080" name="jetbrains.mps.lang.smodel.structure.PropertyIdRefExpression" flags="nn" index="355D3s">
        <reference id="2644386474302386081" name="conceptDeclaration" index="355D3t" />
        <reference id="2644386474302386082" name="propertyDeclaration" index="355D3u" />
      </concept>
      <concept id="2644386474301421077" name="jetbrains.mps.lang.smodel.structure.LinkIdRefExpression" flags="nn" index="359W_D">
        <reference id="2644386474301421078" name="conceptDeclaration" index="359W_E" />
        <reference id="2644386474301421079" name="linkDeclaration" index="359W_F" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="daafa647-f1f7-4b0b-b096-69cd7c8408c0" name="jetbrains.mps.baseLanguage.regexp">
      <concept id="1174482808826" name="jetbrains.mps.baseLanguage.regexp.structure.StarRegexp" flags="ng" index="1OCmVF" />
      <concept id="1174485235885" name="jetbrains.mps.baseLanguage.regexp.structure.UnaryRegexp" flags="ng" index="1OLBAW">
        <child id="1174485243418" name="regexp" index="1OLDsb" />
      </concept>
      <concept id="1174510540317" name="jetbrains.mps.baseLanguage.regexp.structure.InlineRegexpExpression" flags="nn" index="1Qi9sc">
        <child id="1174510571016" name="regexp" index="1QigWp" />
      </concept>
      <concept id="1174555732504" name="jetbrains.mps.baseLanguage.regexp.structure.PredefinedSymbolClassRegexp" flags="ng" index="1SYyG9">
        <reference id="1174555843709" name="symbolClass" index="1SYXPG" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="7Q_67PUKggd">
    <property role="TrG5h" value="RegenerationScenario" />
    <node concept="3Tm1VV" id="7Q_67PUKgge" role="1B3o_S" />
    <node concept="Wx3nA" id="7Q_67PUKggf" role="jymVt">
      <property role="TrG5h" value="NAME" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="7Q_67PUKggg" role="1tU5fm">
        <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
      </node>
      <node concept="3Tm6S6" id="7Q_67PUKggi" role="1B3o_S" />
      <node concept="355D3s" id="7Q_67PUKh4r" role="33vP2m">
        <ref role="355D3t" to="tpck:h0TrEE$" resolve="INamedConcept" />
        <ref role="355D3u" to="tpck:h0TrG11" resolve="name" />
      </node>
    </node>
    <node concept="Wx3nA" id="7Q_67PUKggj" role="jymVt">
      <property role="TrG5h" value="PACKAGE" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="7Q_67PUKggk" role="1tU5fm">
        <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
      </node>
      <node concept="3Tm6S6" id="7Q_67PUKggm" role="1B3o_S" />
      <node concept="355D3s" id="7Q_67PUKh4s" role="33vP2m">
        <ref role="355D3t" to="tpck:gw2VY9q" resolve="BaseConcept" />
        <ref role="355D3u" to="tpck:hnGE5uv" resolve="virtualPackage" />
      </node>
    </node>
    <node concept="Wx3nA" id="7Q_67PUKggn" role="jymVt">
      <property role="TrG5h" value="MEMBERS" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="7Q_67PUKggo" role="1tU5fm">
        <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
      </node>
      <node concept="3Tm6S6" id="7Q_67PUKggq" role="1B3o_S" />
      <node concept="359W_D" id="7Q_67PUKh4t" role="33vP2m">
        <ref role="359W_E" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
        <ref role="359W_F" to="tpce:f_TKVDG" resolve="propertyDeclaration" />
      </node>
    </node>
    <node concept="312cEg" id="7Q_67PUKggr" role="jymVt">
      <property role="TrG5h" value="sourceModel" />
      <property role="3TUv4t" value="true" />
      <node concept="H_c77" id="7Q_67PUKhQh" role="1tU5fm" />
      <node concept="3Tm6S6" id="7Q_67PUKggu" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="7Q_67PUKggv" role="jymVt">
      <property role="TrG5h" value="generatedModel" />
      <property role="3TUv4t" value="true" />
      <node concept="H_c77" id="7Q_67PUKhQi" role="1tU5fm" />
      <node concept="3Tm6S6" id="7Q_67PUKggy" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="7Q_67PUKggz" role="jymVt">
      <property role="TrG5h" value="targetModel" />
      <property role="3TUv4t" value="true" />
      <node concept="H_c77" id="7Q_67PUKhQj" role="1tU5fm" />
      <node concept="3Tm6S6" id="7Q_67PUKggA" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="7Q_67PUKggB" role="jymVt">
      <property role="TrG5h" value="grammar" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tqbb2" id="7Q_67PUKhQk" role="1tU5fm" />
      <node concept="3Tm6S6" id="7Q_67PUKggE" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="7Q_67PUKggF" role="jymVt">
      <property role="TrG5h" value="generated" />
      <node concept="3Tqbb2" id="7Q_67PUKhQl" role="1tU5fm" />
      <node concept="3Tm6S6" id="7Q_67PUKggI" role="1B3o_S" />
    </node>
    <node concept="3clFbW" id="7Q_67PUKggJ" role="jymVt">
      <node concept="3cqZAl" id="7Q_67PUKggK" role="3clF45" />
      <node concept="37vLTG" id="7Q_67PUKggL" role="3clF46">
        <property role="TrG5h" value="grammarFixture" />
        <node concept="3Tqbb2" id="7Q_67PUKhQm" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7Q_67PUKggN" role="3clF46">
        <property role="TrG5h" value="conceptFixture" />
        <node concept="3Tqbb2" id="7Q_67PUKhQn" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7Q_67PUKggP" role="3clF46">
        <property role="TrG5h" value="adopt" />
        <node concept="10P_77" id="7Q_67PUKggQ" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="7Q_67PUKggR" role="3clF47">
        <node concept="3clFbF" id="7Q_67PUKggS" role="3cqZAp">
          <node concept="37vLTI" id="7Q_67PUKggT" role="3clFbG">
            <node concept="37vLTw" id="7Q_67PUKggU" role="37vLTJ">
              <ref role="3cqZAo" node="7Q_67PUKggr" resolve="sourceModel" />
            </node>
            <node concept="2OqwBi" id="7Q_67PUKgFP" role="37vLTx">
              <node concept="2YIFZM" id="7Q_67PUKgw7" role="2Oq$k0">
                <ref role="1Pybhc" to="tqvn:~TemporaryModels" resolve="TemporaryModels" />
                <ref role="37wK5l" to="tqvn:~TemporaryModels.getInstance()" resolve="getInstance" />
              </node>
              <node concept="liA8E" id="7Q_67PUKgFQ" role="2OqNvi">
                <ref role="37wK5l" to="tqvn:~TemporaryModels.create(boolean,boolean,java.lang.String,jetbrains.mps.smodel.tempmodel.TempModuleOptions)" resolve="create" />
                <node concept="3clFbT" id="7Q_67PUKgFR" role="37wK5m" />
                <node concept="3clFbT" id="7Q_67PUKgFS" role="37wK5m" />
                <node concept="Xl_RD" id="7Q_67PUKgFT" role="37wK5m">
                  <property role="Xl_RC" value="ownership.source" />
                </node>
                <node concept="2YIFZM" id="7Q_67PUO7a5" role="37wK5m">
                  <ref role="1Pybhc" to="tqvn:~TempModuleOptions" resolve="TempModuleOptions" />
                  <ref role="37wK5l" to="tqvn:~TempModuleOptions.forNewModule(org.jetbrains.mps.openapi.module.SRepository,org.jetbrains.mps.openapi.module.SModuleFacet...)" resolve="forNewModule" />
                  <node concept="2OqwBi" id="7Q_67PUKgTD" role="37wK5m">
                    <node concept="liA8E" id="7Q_67PUKgTE" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SModel.getRepository()" resolve="getRepository" />
                    </node>
                    <node concept="2JrnkZ" id="7Q_67PUKhPJ" role="2Oq$k0">
                      <node concept="2OqwBi" id="7Q_67PUKgQk" role="2JrQYb">
                        <node concept="liA8E" id="7Q_67PUKgQl" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SNode.getModel()" resolve="getModel" />
                        </node>
                        <node concept="2JrnkZ" id="7Q_67PUKhPI" role="2Oq$k0">
                          <node concept="37vLTw" id="7Q_67PUKgO7" role="2JrQYb">
                            <ref role="3cqZAo" node="7Q_67PUKggL" resolve="grammarFixture" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2ShNRf" id="7Q_67PUO7a7" role="37wK5m">
                    <node concept="3$_iS1" id="7Q_67PUO7a8" role="2ShVmc">
                      <node concept="3$GHV9" id="7Q_67PUO7a9" role="3$GQph">
                        <node concept="3cmrfG" id="7Q_67PUO7aa" role="3$I4v7">
                          <property role="3cmrfH" value="0" />
                        </node>
                      </node>
                      <node concept="3uibUv" id="7Q_67PUO7ab" role="3$_nBY">
                        <ref role="3uigEE" to="lui2:~SModuleFacet" resolve="SModuleFacet" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7Q_67PUKgh3" role="3cqZAp">
          <node concept="37vLTI" id="7Q_67PUKgh4" role="3clFbG">
            <node concept="37vLTw" id="7Q_67PUKgh5" role="37vLTJ">
              <ref role="3cqZAo" node="7Q_67PUKggv" resolve="generatedModel" />
            </node>
            <node concept="2OqwBi" id="7Q_67PUKgG8" role="37vLTx">
              <node concept="2YIFZM" id="7Q_67PUKgwn" role="2Oq$k0">
                <ref role="1Pybhc" to="tqvn:~TemporaryModels" resolve="TemporaryModels" />
                <ref role="37wK5l" to="tqvn:~TemporaryModels.getInstance()" resolve="getInstance" />
              </node>
              <node concept="liA8E" id="7Q_67PUKgG9" role="2OqNvi">
                <ref role="37wK5l" to="tqvn:~TemporaryModels.create(boolean,boolean,java.lang.String,jetbrains.mps.smodel.tempmodel.TempModuleOptions)" resolve="create" />
                <node concept="3clFbT" id="7Q_67PUKgGa" role="37wK5m" />
                <node concept="3clFbT" id="7Q_67PUKgGb" role="37wK5m" />
                <node concept="Xl_RD" id="7Q_67PUKgGc" role="37wK5m">
                  <property role="Xl_RC" value="ownership.generated" />
                </node>
                <node concept="2YIFZM" id="7Q_67PUO7ac" role="37wK5m">
                  <ref role="1Pybhc" to="tqvn:~TempModuleOptions" resolve="TempModuleOptions" />
                  <ref role="37wK5l" to="tqvn:~TempModuleOptions.forNewModule(org.jetbrains.mps.openapi.module.SRepository,org.jetbrains.mps.openapi.module.SModuleFacet...)" resolve="forNewModule" />
                  <node concept="2OqwBi" id="7Q_67PUKgTU" role="37wK5m">
                    <node concept="liA8E" id="7Q_67PUKgTV" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SModel.getRepository()" resolve="getRepository" />
                    </node>
                    <node concept="2JrnkZ" id="7Q_67PUKhPL" role="2Oq$k0">
                      <node concept="2OqwBi" id="7Q_67PUKgQB" role="2JrQYb">
                        <node concept="liA8E" id="7Q_67PUKgQC" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SNode.getModel()" resolve="getModel" />
                        </node>
                        <node concept="2JrnkZ" id="7Q_67PUKhPK" role="2Oq$k0">
                          <node concept="37vLTw" id="7Q_67PUKgOj" role="2JrQYb">
                            <ref role="3cqZAo" node="7Q_67PUKggL" resolve="grammarFixture" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2ShNRf" id="7Q_67PUO7ae" role="37wK5m">
                    <node concept="3$_iS1" id="7Q_67PUO7af" role="2ShVmc">
                      <node concept="3$GHV9" id="7Q_67PUO7ag" role="3$GQph">
                        <node concept="3cmrfG" id="7Q_67PUO7ah" role="3$I4v7">
                          <property role="3cmrfH" value="0" />
                        </node>
                      </node>
                      <node concept="3uibUv" id="7Q_67PUO7ai" role="3$_nBY">
                        <ref role="3uigEE" to="lui2:~SModuleFacet" resolve="SModuleFacet" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7Q_67PUKghe" role="3cqZAp">
          <node concept="37vLTI" id="7Q_67PUKghf" role="3clFbG">
            <node concept="37vLTw" id="7Q_67PUKghg" role="37vLTJ">
              <ref role="3cqZAo" node="7Q_67PUKggz" resolve="targetModel" />
            </node>
            <node concept="2OqwBi" id="7Q_67PUKgGr" role="37vLTx">
              <node concept="2YIFZM" id="7Q_67PUKgwB" role="2Oq$k0">
                <ref role="1Pybhc" to="tqvn:~TemporaryModels" resolve="TemporaryModels" />
                <ref role="37wK5l" to="tqvn:~TemporaryModels.getInstance()" resolve="getInstance" />
              </node>
              <node concept="liA8E" id="7Q_67PUKgGs" role="2OqNvi">
                <ref role="37wK5l" to="tqvn:~TemporaryModels.create(boolean,boolean,java.lang.String,jetbrains.mps.smodel.tempmodel.TempModuleOptions)" resolve="create" />
                <node concept="3clFbT" id="7Q_67PUKgGt" role="37wK5m" />
                <node concept="3clFbT" id="7Q_67PUKgGu" role="37wK5m" />
                <node concept="Xl_RD" id="7Q_67PUKgGv" role="37wK5m">
                  <property role="Xl_RC" value="ownership.structure" />
                </node>
                <node concept="2YIFZM" id="7Q_67PUO7aj" role="37wK5m">
                  <ref role="1Pybhc" to="tqvn:~TempModuleOptions" resolve="TempModuleOptions" />
                  <ref role="37wK5l" to="tqvn:~TempModuleOptions.forNewModule(org.jetbrains.mps.openapi.module.SRepository,org.jetbrains.mps.openapi.module.SModuleFacet...)" resolve="forNewModule" />
                  <node concept="2OqwBi" id="7Q_67PUKgUb" role="37wK5m">
                    <node concept="liA8E" id="7Q_67PUKgUc" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SModel.getRepository()" resolve="getRepository" />
                    </node>
                    <node concept="2JrnkZ" id="7Q_67PUKhPN" role="2Oq$k0">
                      <node concept="2OqwBi" id="7Q_67PUKgQU" role="2JrQYb">
                        <node concept="liA8E" id="7Q_67PUKgQV" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SNode.getModel()" resolve="getModel" />
                        </node>
                        <node concept="2JrnkZ" id="7Q_67PUKhPM" role="2Oq$k0">
                          <node concept="37vLTw" id="7Q_67PUKgOv" role="2JrQYb">
                            <ref role="3cqZAo" node="7Q_67PUKggL" resolve="grammarFixture" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2ShNRf" id="7Q_67PUO7al" role="37wK5m">
                    <node concept="3$_iS1" id="7Q_67PUO7am" role="2ShVmc">
                      <node concept="3$GHV9" id="7Q_67PUO7an" role="3$GQph">
                        <node concept="3cmrfG" id="7Q_67PUO7ao" role="3$I4v7">
                          <property role="3cmrfH" value="0" />
                        </node>
                      </node>
                      <node concept="3uibUv" id="7Q_67PUO7ap" role="3$_nBY">
                        <ref role="3uigEE" to="lui2:~SModuleFacet" resolve="SModuleFacet" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7Q_67PUKghp" role="3cqZAp">
          <node concept="37vLTI" id="7Q_67PUKghq" role="3clFbG">
            <node concept="37vLTw" id="7Q_67PUKghr" role="37vLTJ">
              <ref role="3cqZAo" node="7Q_67PUKggB" resolve="grammar" />
            </node>
            <node concept="2YIFZM" id="7Q_67PUKgwJ" role="37vLTx">
              <ref role="1Pybhc" to="w1kc:~CopyUtil" resolve="CopyUtil" />
              <ref role="37wK5l" to="w1kc:~CopyUtil.copy(org.jetbrains.mps.openapi.model.SNode)" resolve="copy" />
              <node concept="37vLTw" id="7Q_67PUKgwK" role="37wK5m">
                <ref role="3cqZAo" node="7Q_67PUKggL" resolve="grammarFixture" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7Q_67PUKghu" role="3cqZAp">
          <node concept="2OqwBi" id="7Q_67PUKgGN" role="3clFbG">
            <node concept="liA8E" id="7Q_67PUKgGO" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SModel.addRootNode(org.jetbrains.mps.openapi.model.SNode)" resolve="addRootNode" />
              <node concept="37vLTw" id="7Q_67PUKgGP" role="37wK5m">
                <ref role="3cqZAo" node="7Q_67PUKggB" resolve="grammar" />
              </node>
            </node>
            <node concept="2JrnkZ" id="7Q_67PUKhPO" role="2Oq$k0">
              <node concept="37vLTw" id="7Q_67PUKgwN" role="2JrQYb">
                <ref role="3cqZAo" node="7Q_67PUKggr" resolve="sourceModel" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7Q_67PUKghx" role="3cqZAp">
          <node concept="37vLTI" id="7Q_67PUKghy" role="3clFbG">
            <node concept="37vLTw" id="7Q_67PUKghz" role="37vLTJ">
              <ref role="3cqZAo" node="7Q_67PUKggF" resolve="generated" />
            </node>
            <node concept="2YIFZM" id="7Q_67PUKgwS" role="37vLTx">
              <ref role="1Pybhc" to="w1kc:~CopyUtil" resolve="CopyUtil" />
              <ref role="37wK5l" to="w1kc:~CopyUtil.copy(org.jetbrains.mps.openapi.model.SNode)" resolve="copy" />
              <node concept="37vLTw" id="7Q_67PUKgwT" role="37wK5m">
                <ref role="3cqZAo" node="7Q_67PUKggN" resolve="conceptFixture" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7Q_67PUKghA" role="3cqZAp">
          <node concept="2OqwBi" id="7Q_67PUKgH5" role="3clFbG">
            <node concept="liA8E" id="7Q_67PUKgH6" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNode.setProperty(org.jetbrains.mps.openapi.language.SProperty,java.lang.String)" resolve="setProperty" />
              <node concept="37vLTw" id="7Q_67PUKgH7" role="37wK5m">
                <ref role="3cqZAo" node="7Q_67PUKggj" resolve="PACKAGE" />
              </node>
              <node concept="2OqwBi" id="7Q_67PUKgUx" role="37wK5m">
                <node concept="2OqwBi" id="7Q_67PUKgRj" role="2Oq$k0">
                  <node concept="liA8E" id="7Q_67PUKgRk" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SModel.getName()" resolve="getName" />
                  </node>
                  <node concept="2JrnkZ" id="7Q_67PUKhPQ" role="2Oq$k0">
                    <node concept="37vLTw" id="7Q_67PUKgOF" role="2JrQYb">
                      <ref role="3cqZAo" node="7Q_67PUKggz" resolve="targetModel" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="7Q_67PUKgUy" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SModelName.getValue()" resolve="getValue" />
                </node>
              </node>
            </node>
            <node concept="2JrnkZ" id="7Q_67PUKhPP" role="2Oq$k0">
              <node concept="37vLTw" id="7Q_67PUKgwW" role="2JrQYb">
                <ref role="3cqZAo" node="7Q_67PUKggF" resolve="generated" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7Q_67PUKghF" role="3cqZAp">
          <node concept="2OqwBi" id="7Q_67PUKgHp" role="3clFbG">
            <node concept="liA8E" id="7Q_67PUKgHq" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SModel.addRootNode(org.jetbrains.mps.openapi.model.SNode)" resolve="addRootNode" />
              <node concept="37vLTw" id="7Q_67PUKgHr" role="37wK5m">
                <ref role="3cqZAo" node="7Q_67PUKggF" resolve="generated" />
              </node>
            </node>
            <node concept="2JrnkZ" id="7Q_67PUKhPR" role="2Oq$k0">
              <node concept="37vLTw" id="7Q_67PUKgx3" role="2JrQYb">
                <ref role="3cqZAo" node="7Q_67PUKggv" resolve="generatedModel" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7Q_67PUKghI" role="3cqZAp">
          <node concept="2YIFZM" id="7Q_67PUKgx8" role="3clFbG">
            <ref role="1Pybhc" to="fwk:~TracingUtil" resolve="TracingUtil" />
            <ref role="37wK5l" to="fwk:~TracingUtil.putInputNode(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode)" resolve="putInputNode" />
            <node concept="37vLTw" id="7Q_67PUKgx9" role="37wK5m">
              <ref role="3cqZAo" node="7Q_67PUKggF" resolve="generated" />
            </node>
            <node concept="37vLTw" id="7Q_67PUKgxa" role="37wK5m">
              <ref role="3cqZAo" node="7Q_67PUKggB" resolve="grammar" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7Q_67PUKghM" role="3cqZAp">
          <node concept="37vLTw" id="7Q_67PUKghN" role="3clFbw">
            <ref role="3cqZAo" node="7Q_67PUKggP" resolve="adopt" />
          </node>
          <node concept="3clFbS" id="7Q_67PUKghP" role="3clFbx">
            <node concept="3cpWs8" id="7Q_67PUKghR" role="3cqZAp">
              <node concept="3cpWsn" id="7Q_67PUKghQ" role="3cpWs9">
                <property role="TrG5h" value="existing" />
                <node concept="3Tqbb2" id="7Q_67PUKhQo" role="1tU5fm" />
                <node concept="2YIFZM" id="7Q_67PUKgxd" role="33vP2m">
                  <ref role="1Pybhc" to="w1kc:~CopyUtil" resolve="CopyUtil" />
                  <ref role="37wK5l" to="w1kc:~CopyUtil.copy(org.jetbrains.mps.openapi.model.SNode)" resolve="copy" />
                  <node concept="37vLTw" id="7Q_67PUKgxe" role="37wK5m">
                    <ref role="3cqZAo" node="7Q_67PUKggN" resolve="conceptFixture" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7Q_67PUKghV" role="3cqZAp">
              <node concept="2OqwBi" id="7Q_67PUKgHA" role="3clFbG">
                <node concept="liA8E" id="7Q_67PUKgHB" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.setProperty(org.jetbrains.mps.openapi.language.SProperty,java.lang.String)" resolve="setProperty" />
                  <node concept="37vLTw" id="7Q_67PUKgHC" role="37wK5m">
                    <ref role="3cqZAo" node="7Q_67PUKggj" resolve="PACKAGE" />
                  </node>
                  <node concept="Xl_RD" id="7Q_67PUKgHD" role="37wK5m">
                    <property role="Xl_RC" value="" />
                  </node>
                </node>
                <node concept="2JrnkZ" id="7Q_67PUKhPS" role="2Oq$k0">
                  <node concept="37vLTw" id="7Q_67PUKgxh" role="2JrQYb">
                    <ref role="3cqZAo" node="7Q_67PUKghQ" resolve="existing" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7Q_67PUKghZ" role="3cqZAp">
              <node concept="2OqwBi" id="7Q_67PUKgHT" role="3clFbG">
                <node concept="liA8E" id="7Q_67PUKgHU" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SModel.addRootNode(org.jetbrains.mps.openapi.model.SNode)" resolve="addRootNode" />
                  <node concept="37vLTw" id="7Q_67PUKgHV" role="37wK5m">
                    <ref role="3cqZAo" node="7Q_67PUKghQ" resolve="existing" />
                  </node>
                </node>
                <node concept="2JrnkZ" id="7Q_67PUKhPT" role="2Oq$k0">
                  <node concept="37vLTw" id="7Q_67PUKgxn" role="2JrQYb">
                    <ref role="3cqZAo" node="7Q_67PUKggz" resolve="targetModel" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7Q_67PUKgi2" role="1B3o_S" />
    </node>
    <node concept="3clFb_" id="7Q_67PUKgi3" role="jymVt">
      <property role="TrG5h" value="preview" />
      <node concept="3clFbS" id="7Q_67PUKgi4" role="3clF47">
        <node concept="3cpWs6" id="7Q_67PUKgi5" role="3cqZAp">
          <node concept="2YIFZM" id="7Q_67PUKgxs" role="3cqZAk">
            <ref role="1Pybhc" to="gzg6:7Q_67PUJ1Pd" resolve="ProtectedRegeneration" />
            <ref role="37wK5l" to="gzg6:7Q_67PUJ1TP" resolve="preview" />
            <node concept="37vLTw" id="7Q_67PUKgxt" role="37wK5m">
              <ref role="3cqZAo" node="7Q_67PUKggB" resolve="grammar" />
            </node>
            <node concept="2YIFZM" id="7Q_67PUKgHY" role="37wK5m">
              <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
              <ref role="37wK5l" to="33ny:~Collections.singletonList(java.lang.Object)" resolve="singletonList" />
              <node concept="37vLTw" id="7Q_67PUKgHZ" role="37wK5m">
                <ref role="3cqZAo" node="7Q_67PUKggF" resolve="generated" />
              </node>
            </node>
            <node concept="2YIFZM" id="7Q_67PUKgI2" role="37wK5m">
              <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
              <ref role="37wK5l" to="33ny:~Collections.singletonList(java.lang.Object)" resolve="singletonList" />
              <node concept="37vLTw" id="7Q_67PUKgI3" role="37wK5m">
                <ref role="3cqZAo" node="7Q_67PUKggz" resolve="targetModel" />
              </node>
            </node>
            <node concept="10Nm6u" id="7Q_67PUKgxy" role="37wK5m" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7Q_67PUKgid" role="1B3o_S" />
      <node concept="3uibUv" id="7Q_67PUKgie" role="3clF45">
        <ref role="3uigEE" to="gzg6:7Q_67PUJ1Pf" resolve="ProtectedRegeneration.Preview" />
      </node>
    </node>
    <node concept="3clFb_" id="7Q_67PUKgif" role="jymVt">
      <property role="TrG5h" value="apply" />
      <node concept="37vLTG" id="7Q_67PUKgig" role="3clF46">
        <property role="TrG5h" value="plan" />
        <node concept="3uibUv" id="7Q_67PUKgih" role="1tU5fm">
          <ref role="3uigEE" to="gzg6:7Q_67PUJ1Pf" resolve="ProtectedRegeneration.Preview" />
        </node>
      </node>
      <node concept="3clFbS" id="7Q_67PUKgii" role="3clF47">
        <node concept="3clFbF" id="7Q_67PUKgij" role="3cqZAp">
          <node concept="2YIFZM" id="7Q_67PUKgx_" role="3clFbG">
            <ref role="1Pybhc" to="gzg6:7Q_67PUJ1Pd" resolve="ProtectedRegeneration" />
            <ref role="37wK5l" to="gzg6:7Q_67PUJ20g" resolve="apply" />
            <node concept="37vLTw" id="7Q_67PUKgxA" role="37wK5m">
              <ref role="3cqZAo" node="7Q_67PUKgig" resolve="plan" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7Q_67PUKgim" role="1B3o_S" />
      <node concept="3cqZAl" id="7Q_67PUKgin" role="3clF45" />
    </node>
    <node concept="3clFb_" id="7Q_67PUKgio" role="jymVt">
      <property role="TrG5h" value="root" />
      <node concept="3clFbS" id="7Q_67PUKgip" role="3clF47">
        <node concept="3cpWs8" id="7Q_67PUKgir" role="3cqZAp">
          <node concept="3cpWsn" id="7Q_67PUKgiq" role="3cpWs9">
            <property role="TrG5h" value="generatedName" />
            <node concept="3uibUv" id="7Q_67PUKgis" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
            <node concept="2OqwBi" id="7Q_67PUKgIj" role="33vP2m">
              <node concept="liA8E" id="7Q_67PUKgIk" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getName()" resolve="getName" />
              </node>
              <node concept="2JrnkZ" id="7Q_67PUKhPU" role="2Oq$k0">
                <node concept="37vLTw" id="7Q_67PUKgxD" role="2JrQYb">
                  <ref role="3cqZAo" node="7Q_67PUKggF" resolve="generated" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7Q_67PUKgiu" role="3cqZAp">
          <node concept="3clFbC" id="7Q_67PUKgiv" role="3clFbw">
            <node concept="37vLTw" id="7Q_67PUKgiw" role="3uHU7B">
              <ref role="3cqZAo" node="7Q_67PUKgiq" resolve="generatedName" />
            </node>
            <node concept="10Nm6u" id="7Q_67PUKgix" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="7Q_67PUKgiz" role="3clFbx">
            <node concept="YS8fn" id="7Q_67PUKgiA" role="3cqZAp">
              <node concept="2ShNRf" id="7Q_67PUKgxF" role="YScLw">
                <node concept="1pGfFk" id="7Q_67PUKgBJ" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
                  <node concept="Xl_RD" id="7Q_67PUKgBK" role="37wK5m">
                    <property role="Xl_RC" value="A named generated concept fixture is required" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="7Q_67PUKgiB" role="3cqZAp">
          <node concept="2OqwBi" id="7Q_67PUKgI$" role="1DdaDG">
            <node concept="liA8E" id="7Q_67PUKgI_" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SModel.getRootNodes()" resolve="getRootNodes" />
            </node>
            <node concept="2JrnkZ" id="7Q_67PUKhPV" role="2Oq$k0">
              <node concept="37vLTw" id="7Q_67PUKgBN" role="2JrQYb">
                <ref role="3cqZAo" node="7Q_67PUKggz" resolve="targetModel" />
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="7Q_67PUKgiP" role="1Duv9x">
            <property role="TrG5h" value="root" />
            <node concept="3Tqbb2" id="7Q_67PUKhQp" role="1tU5fm" />
          </node>
          <node concept="3clFbS" id="7Q_67PUKgiD" role="2LFqv$">
            <node concept="3clFbJ" id="7Q_67PUKgiE" role="3cqZAp">
              <node concept="1Wc70l" id="7Q_67PUKgiF" role="3clFbw">
                <node concept="2OqwBi" id="7Q_67PUKgOW" role="3uHU7B">
                  <node concept="2OqwBi" id="7Q_67PUKgIR" role="2Oq$k0">
                    <node concept="liA8E" id="7Q_67PUKgIS" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                    </node>
                    <node concept="2JrnkZ" id="7Q_67PUKhPW" role="2Oq$k0">
                      <node concept="37vLTw" id="7Q_67PUKgBZ" role="2JrQYb">
                        <ref role="3cqZAo" node="7Q_67PUKgiP" resolve="root" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="7Q_67PUKgOX" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                    <node concept="2OqwBi" id="7Q_67PUKgOY" role="37wK5m">
                      <node concept="liA8E" id="7Q_67PUKgP0" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                      </node>
                      <node concept="2JrnkZ" id="7Q_67PUKhPX" role="2Oq$k0">
                        <node concept="37vLTw" id="7Q_67PUKgOZ" role="2JrQYb">
                          <ref role="3cqZAo" node="7Q_67PUKggF" resolve="generated" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="7Q_67PUKgJo" role="3uHU7w">
                  <node concept="37vLTw" id="7Q_67PUKgC7" role="2Oq$k0">
                    <ref role="3cqZAo" node="7Q_67PUKgiq" resolve="generatedName" />
                  </node>
                  <node concept="liA8E" id="7Q_67PUKgJp" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                    <node concept="2OqwBi" id="7Q_67PUKgRu" role="37wK5m">
                      <node concept="liA8E" id="7Q_67PUKgRv" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getName()" resolve="getName" />
                      </node>
                      <node concept="2JrnkZ" id="7Q_67PUKhPY" role="2Oq$k0">
                        <node concept="37vLTw" id="7Q_67PUKgP5" role="2JrQYb">
                          <ref role="3cqZAo" node="7Q_67PUKgiP" resolve="root" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="7Q_67PUKgiM" role="3clFbx">
                <node concept="3cpWs6" id="7Q_67PUKgiN" role="3cqZAp">
                  <node concept="37vLTw" id="7Q_67PUKgiO" role="3cqZAk">
                    <ref role="3cqZAo" node="7Q_67PUKgiP" resolve="root" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="YS8fn" id="7Q_67PUKgiV" role="3cqZAp">
          <node concept="2ShNRf" id="7Q_67PUKgCa" role="YScLw">
            <node concept="1pGfFk" id="7Q_67PUKgCp" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
              <node concept="Xl_RD" id="7Q_67PUKgCq" role="37wK5m">
                <property role="Xl_RC" value="The generated target root is missing" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7Q_67PUKgiW" role="1B3o_S" />
      <node concept="3Tqbb2" id="7Q_67PUKhQq" role="3clF45" />
    </node>
    <node concept="3clFb_" id="7Q_67PUKgiY" role="jymVt">
      <property role="TrG5h" value="rootReference" />
      <node concept="3clFbS" id="7Q_67PUKgiZ" role="3clF47">
        <node concept="3cpWs6" id="7Q_67PUKgj0" role="3cqZAp">
          <node concept="2OqwBi" id="7Q_67PUKgCC" role="3cqZAk">
            <node concept="liA8E" id="7Q_67PUKgCD" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNode.getReference()" resolve="getReference" />
            </node>
            <node concept="2JrnkZ" id="7Q_67PUKhPZ" role="2Oq$k0">
              <node concept="1rXfSq" id="7Q_67PUKgj2" role="2JrQYb">
                <ref role="37wK5l" node="7Q_67PUKgio" resolve="root" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7Q_67PUKgj3" role="1B3o_S" />
      <node concept="3uibUv" id="7Q_67PUKgj4" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
      </node>
    </node>
    <node concept="3clFb_" id="7Q_67PUKgj5" role="jymVt">
      <property role="TrG5h" value="state" />
      <node concept="3clFbS" id="7Q_67PUKgj6" role="3clF47">
        <node concept="3cpWs8" id="7Q_67PUKgj8" role="3cqZAp">
          <node concept="3cpWsn" id="7Q_67PUKgj7" role="3cpWs9">
            <property role="TrG5h" value="state" />
            <node concept="3uibUv" id="7Q_67PUKgj9" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
            <node concept="Xl_RD" id="7Q_67PUKgja" role="33vP2m">
              <property role="Xl_RC" value="" />
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="7Q_67PUKgjb" role="3cqZAp">
          <node concept="2OqwBi" id="7Q_67PUKgJE" role="1DdaDG">
            <node concept="liA8E" id="7Q_67PUKgJF" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SModel.getRootNodes()" resolve="getRootNodes" />
            </node>
            <node concept="2JrnkZ" id="7Q_67PUKhQ0" role="2Oq$k0">
              <node concept="37vLTw" id="7Q_67PUKgCG" role="2JrQYb">
                <ref role="3cqZAo" node="7Q_67PUKggz" resolve="targetModel" />
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="7Q_67PUKgjm" role="1Duv9x">
            <property role="TrG5h" value="root" />
            <node concept="3Tqbb2" id="7Q_67PUKhQr" role="1tU5fm" />
          </node>
          <node concept="3clFbS" id="7Q_67PUKgjd" role="2LFqv$">
            <node concept="3clFbF" id="7Q_67PUKgje" role="3cqZAp">
              <node concept="37vLTI" id="7Q_67PUKgjf" role="3clFbG">
                <node concept="37vLTw" id="7Q_67PUKgjg" role="37vLTJ">
                  <ref role="3cqZAo" node="7Q_67PUKgj7" resolve="state" />
                </node>
                <node concept="3cpWs3" id="7Q_67PUKgjh" role="37vLTx">
                  <node concept="37vLTw" id="7Q_67PUKgji" role="3uHU7B">
                    <ref role="3cqZAo" node="7Q_67PUKgj7" resolve="state" />
                  </node>
                  <node concept="2YIFZM" id="7Q_67PUKgCK" role="3uHU7w">
                    <ref role="1Pybhc" to="gzg6:7Q_67PUJ1Pd" resolve="ProtectedRegeneration" />
                    <ref role="37wK5l" to="gzg6:7Q_67PUJ2c0" resolve="snapshot" />
                    <node concept="37vLTw" id="7Q_67PUKgCL" role="37wK5m">
                      <ref role="3cqZAo" node="7Q_67PUKgjm" resolve="root" />
                    </node>
                    <node concept="3clFbT" id="7Q_67PUKgCM" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7Q_67PUKgjq" role="3cqZAp">
          <node concept="37vLTw" id="7Q_67PUKgjr" role="3cqZAk">
            <ref role="3cqZAo" node="7Q_67PUKgj7" resolve="state" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7Q_67PUKgjs" role="1B3o_S" />
      <node concept="3uibUv" id="7Q_67PUKgjt" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="3clFb_" id="7Q_67PUKgju" role="jymVt">
      <property role="TrG5h" value="sourceState" />
      <node concept="3clFbS" id="7Q_67PUKgjv" role="3clF47">
        <node concept="3cpWs8" id="7Q_67PUKgjx" role="3cqZAp">
          <node concept="3cpWsn" id="7Q_67PUKgjw" role="3cpWs9">
            <property role="TrG5h" value="state" />
            <node concept="3uibUv" id="7Q_67PUKgjy" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
            <node concept="Xl_RD" id="7Q_67PUKgjz" role="33vP2m">
              <property role="Xl_RC" value="" />
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="7Q_67PUKgj$" role="3cqZAp">
          <node concept="2OqwBi" id="7Q_67PUKgJV" role="1DdaDG">
            <node concept="liA8E" id="7Q_67PUKgJW" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SModel.getRootNodes()" resolve="getRootNodes" />
            </node>
            <node concept="2JrnkZ" id="7Q_67PUKhQ1" role="2Oq$k0">
              <node concept="37vLTw" id="7Q_67PUKgCP" role="2JrQYb">
                <ref role="3cqZAo" node="7Q_67PUKggr" resolve="sourceModel" />
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="7Q_67PUKgjJ" role="1Duv9x">
            <property role="TrG5h" value="root" />
            <node concept="3Tqbb2" id="7Q_67PUKhQs" role="1tU5fm" />
          </node>
          <node concept="3clFbS" id="7Q_67PUKgjA" role="2LFqv$">
            <node concept="3clFbF" id="7Q_67PUKgjB" role="3cqZAp">
              <node concept="37vLTI" id="7Q_67PUKgjC" role="3clFbG">
                <node concept="37vLTw" id="7Q_67PUKgjD" role="37vLTJ">
                  <ref role="3cqZAo" node="7Q_67PUKgjw" resolve="state" />
                </node>
                <node concept="3cpWs3" id="7Q_67PUKgjE" role="37vLTx">
                  <node concept="37vLTw" id="7Q_67PUKgjF" role="3uHU7B">
                    <ref role="3cqZAo" node="7Q_67PUKgjw" resolve="state" />
                  </node>
                  <node concept="2YIFZM" id="7Q_67PUKgCT" role="3uHU7w">
                    <ref role="1Pybhc" to="gzg6:7Q_67PUJ1Pd" resolve="ProtectedRegeneration" />
                    <ref role="37wK5l" to="gzg6:7Q_67PUJ2c0" resolve="snapshot" />
                    <node concept="37vLTw" id="7Q_67PUKgCU" role="37wK5m">
                      <ref role="3cqZAo" node="7Q_67PUKgjJ" resolve="root" />
                    </node>
                    <node concept="3clFbT" id="7Q_67PUKgCV" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7Q_67PUKgjN" role="3cqZAp">
          <node concept="37vLTw" id="7Q_67PUKgjO" role="3cqZAk">
            <ref role="3cqZAo" node="7Q_67PUKgjw" resolve="state" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7Q_67PUKgjP" role="1B3o_S" />
      <node concept="3uibUv" id="7Q_67PUKgjQ" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="3clFb_" id="7Q_67PUKgjR" role="jymVt">
      <property role="TrG5h" value="propertyIdentity" />
      <node concept="3clFbS" id="7Q_67PUKgjS" role="3clF47">
        <node concept="1DcWWT" id="7Q_67PUKgjT" role="3cqZAp">
          <node concept="2OqwBi" id="7Q_67PUKgD9" role="1DdaDG">
            <node concept="liA8E" id="7Q_67PUKgDa" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNode.getChildren(org.jetbrains.mps.openapi.language.SContainmentLink)" resolve="getChildren" />
              <node concept="37vLTw" id="7Q_67PUKgDb" role="37wK5m">
                <ref role="3cqZAo" node="7Q_67PUKggn" resolve="MEMBERS" />
              </node>
            </node>
            <node concept="2JrnkZ" id="7Q_67PUKhQ2" role="2Oq$k0">
              <node concept="1rXfSq" id="7Q_67PUKgk3" role="2JrQYb">
                <ref role="37wK5l" node="7Q_67PUKgio" resolve="root" />
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="7Q_67PUKgjZ" role="1Duv9x">
            <property role="TrG5h" value="member" />
            <node concept="3Tqbb2" id="7Q_67PUKhQt" role="1tU5fm" />
          </node>
          <node concept="3clFbS" id="7Q_67PUKgjV" role="2LFqv$">
            <node concept="3cpWs6" id="7Q_67PUKgjW" role="3cqZAp">
              <node concept="2OqwBi" id="7Q_67PUKgPn" role="3cqZAk">
                <node concept="2OqwBi" id="7Q_67PUKgKe" role="2Oq$k0">
                  <node concept="liA8E" id="7Q_67PUKgKf" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                  </node>
                  <node concept="2JrnkZ" id="7Q_67PUKhQ3" role="2Oq$k0">
                    <node concept="37vLTw" id="7Q_67PUKgDm" role="2JrQYb">
                      <ref role="3cqZAo" node="7Q_67PUKgjZ" resolve="member" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="7Q_67PUKgPo" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="YS8fn" id="7Q_67PUKgk7" role="3cqZAp">
          <node concept="2ShNRf" id="7Q_67PUKgDo" role="YScLw">
            <node concept="1pGfFk" id="7Q_67PUKgDB" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
              <node concept="Xl_RD" id="7Q_67PUKgDC" role="37wK5m">
                <property role="Xl_RC" value="A generated property is required" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7Q_67PUKgk8" role="1B3o_S" />
      <node concept="3uibUv" id="7Q_67PUKgk9" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="3clFb_" id="7Q_67PUKgka" role="jymVt">
      <property role="TrG5h" value="addGeneratedProperty" />
      <node concept="3clFbS" id="7Q_67PUKgkb" role="3clF47">
        <node concept="3cpWs8" id="7Q_67PUKgkd" role="3cqZAp">
          <node concept="3cpWsn" id="7Q_67PUKgkc" role="3cpWs9">
            <property role="TrG5h" value="property" />
            <node concept="3Tqbb2" id="7Q_67PUKhQu" role="1tU5fm" />
            <node concept="2YIFZM" id="7Q_67PUKgDF" role="33vP2m">
              <ref role="1Pybhc" to="w1kc:~CopyUtil" resolve="CopyUtil" />
              <ref role="37wK5l" to="w1kc:~CopyUtil.copy(org.jetbrains.mps.openapi.model.SNode)" resolve="copy" />
              <node concept="2OqwBi" id="7Q_67PUKgX2" role="37wK5m">
                <node concept="2OqwBi" id="7Q_67PUKgT7" role="2Oq$k0">
                  <node concept="2OqwBi" id="7Q_67PUKgPS" role="2Oq$k0">
                    <node concept="liA8E" id="7Q_67PUKgPT" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.getChildren(org.jetbrains.mps.openapi.language.SContainmentLink)" resolve="getChildren" />
                      <node concept="37vLTw" id="7Q_67PUKgPU" role="37wK5m">
                        <ref role="3cqZAo" node="7Q_67PUKggn" resolve="MEMBERS" />
                      </node>
                    </node>
                    <node concept="2JrnkZ" id="7Q_67PUKhQ4" role="2Oq$k0">
                      <node concept="37vLTw" id="7Q_67PUKgKy" role="2JrQYb">
                        <ref role="3cqZAo" node="7Q_67PUKggF" resolve="generated" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="7Q_67PUKgT8" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Iterable.iterator()" resolve="iterator" />
                  </node>
                </node>
                <node concept="liA8E" id="7Q_67PUKgX3" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Iterator.next()" resolve="next" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7Q_67PUKgkk" role="3cqZAp">
          <node concept="2OqwBi" id="7Q_67PUKgKJ" role="3clFbG">
            <node concept="liA8E" id="7Q_67PUKgKK" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNode.setProperty(org.jetbrains.mps.openapi.language.SProperty,java.lang.String)" resolve="setProperty" />
              <node concept="37vLTw" id="7Q_67PUKgKL" role="37wK5m">
                <ref role="3cqZAo" node="7Q_67PUKggf" resolve="NAME" />
              </node>
              <node concept="Xl_RD" id="7Q_67PUKgKM" role="37wK5m">
                <property role="Xl_RC" value="added" />
              </node>
            </node>
            <node concept="2JrnkZ" id="7Q_67PUKhQ5" role="2Oq$k0">
              <node concept="37vLTw" id="7Q_67PUKgDM" role="2JrQYb">
                <ref role="3cqZAo" node="7Q_67PUKgkc" resolve="property" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7Q_67PUKgko" role="3cqZAp">
          <node concept="2OqwBi" id="7Q_67PUKgL2" role="3clFbG">
            <node concept="liA8E" id="7Q_67PUKgL3" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNode.addChild(org.jetbrains.mps.openapi.language.SContainmentLink,org.jetbrains.mps.openapi.model.SNode)" resolve="addChild" />
              <node concept="37vLTw" id="7Q_67PUKgL4" role="37wK5m">
                <ref role="3cqZAo" node="7Q_67PUKggn" resolve="MEMBERS" />
              </node>
              <node concept="37vLTw" id="7Q_67PUKgL5" role="37wK5m">
                <ref role="3cqZAo" node="7Q_67PUKgkc" resolve="property" />
              </node>
            </node>
            <node concept="2JrnkZ" id="7Q_67PUKhQ6" role="2Oq$k0">
              <node concept="37vLTw" id="7Q_67PUKgDS" role="2JrQYb">
                <ref role="3cqZAo" node="7Q_67PUKggF" resolve="generated" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7Q_67PUKgks" role="1B3o_S" />
      <node concept="3cqZAl" id="7Q_67PUKgkt" role="3clF45" />
    </node>
    <node concept="3clFb_" id="7Q_67PUKgku" role="jymVt">
      <property role="TrG5h" value="editOwnedRoot" />
      <node concept="3clFbS" id="7Q_67PUKgkv" role="3clF47">
        <node concept="3clFbF" id="7Q_67PUKgkw" role="3cqZAp">
          <node concept="2OqwBi" id="7Q_67PUKgE9" role="3clFbG">
            <node concept="liA8E" id="7Q_67PUKgEa" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNode.setProperty(org.jetbrains.mps.openapi.language.SProperty,java.lang.String)" resolve="setProperty" />
              <node concept="37vLTw" id="7Q_67PUKgEb" role="37wK5m">
                <ref role="3cqZAo" node="7Q_67PUKggj" resolve="PACKAGE" />
              </node>
              <node concept="Xl_RD" id="7Q_67PUKgEc" role="37wK5m">
                <property role="Xl_RC" value="handwrittenChange" />
              </node>
            </node>
            <node concept="2JrnkZ" id="7Q_67PUKhQ7" role="2Oq$k0">
              <node concept="1rXfSq" id="7Q_67PUKgky" role="2JrQYb">
                <ref role="37wK5l" node="7Q_67PUKgio" resolve="root" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7Q_67PUKgk_" role="1B3o_S" />
      <node concept="3cqZAl" id="7Q_67PUKgkA" role="3clF45" />
    </node>
    <node concept="3clFb_" id="7Q_67PUKgkB" role="jymVt">
      <property role="TrG5h" value="editInput" />
      <node concept="3clFbS" id="7Q_67PUKgkC" role="3clF47">
        <node concept="3clFbF" id="7Q_67PUKgkD" role="3cqZAp">
          <node concept="2OqwBi" id="7Q_67PUKgLl" role="3clFbG">
            <node concept="liA8E" id="7Q_67PUKgLm" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNode.setProperty(org.jetbrains.mps.openapi.language.SProperty,java.lang.String)" resolve="setProperty" />
              <node concept="37vLTw" id="7Q_67PUKgLn" role="37wK5m">
                <ref role="3cqZAo" node="7Q_67PUKggf" resolve="NAME" />
              </node>
              <node concept="Xl_RD" id="7Q_67PUKgLo" role="37wK5m">
                <property role="Xl_RC" value="ChangedGrammar" />
              </node>
            </node>
            <node concept="2JrnkZ" id="7Q_67PUKhQ8" role="2Oq$k0">
              <node concept="37vLTw" id="7Q_67PUKgEf" role="2JrQYb">
                <ref role="3cqZAo" node="7Q_67PUKggB" resolve="grammar" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7Q_67PUKgkH" role="1B3o_S" />
      <node concept="3cqZAl" id="7Q_67PUKgkI" role="3clF45" />
    </node>
    <node concept="3clFb_" id="7Q_67PUKgkJ" role="jymVt">
      <property role="TrG5h" value="regenerate" />
      <node concept="3clFbS" id="7Q_67PUKgkK" role="3clF47">
        <node concept="3cpWs8" id="7Q_67PUKgkM" role="3cqZAp">
          <node concept="3cpWsn" id="7Q_67PUKgkL" role="3cpWs9">
            <property role="TrG5h" value="previous" />
            <node concept="3Tqbb2" id="7Q_67PUKhQv" role="1tU5fm" />
            <node concept="37vLTw" id="7Q_67PUKgkO" role="33vP2m">
              <ref role="3cqZAo" node="7Q_67PUKggF" resolve="generated" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7Q_67PUKgkP" role="3cqZAp">
          <node concept="37vLTI" id="7Q_67PUKgkQ" role="3clFbG">
            <node concept="37vLTw" id="7Q_67PUKgkR" role="37vLTJ">
              <ref role="3cqZAo" node="7Q_67PUKggF" resolve="generated" />
            </node>
            <node concept="2YIFZM" id="7Q_67PUKgEl" role="37vLTx">
              <ref role="1Pybhc" to="w1kc:~CopyUtil" resolve="CopyUtil" />
              <ref role="37wK5l" to="w1kc:~CopyUtil.copy(org.jetbrains.mps.openapi.model.SNode)" resolve="copy" />
              <node concept="37vLTw" id="7Q_67PUKgEm" role="37wK5m">
                <ref role="3cqZAo" node="7Q_67PUKgkL" resolve="previous" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7Q_67PUKgkU" role="3cqZAp">
          <node concept="2OqwBi" id="7Q_67PUKgLC" role="3clFbG">
            <node concept="liA8E" id="7Q_67PUKgLD" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SModel.removeRootNode(org.jetbrains.mps.openapi.model.SNode)" resolve="removeRootNode" />
              <node concept="37vLTw" id="7Q_67PUKgLE" role="37wK5m">
                <ref role="3cqZAo" node="7Q_67PUKgkL" resolve="previous" />
              </node>
            </node>
            <node concept="2JrnkZ" id="7Q_67PUKhQ9" role="2Oq$k0">
              <node concept="37vLTw" id="7Q_67PUKgEp" role="2JrQYb">
                <ref role="3cqZAo" node="7Q_67PUKggv" resolve="generatedModel" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7Q_67PUKgkX" role="3cqZAp">
          <node concept="2OqwBi" id="7Q_67PUKgLU" role="3clFbG">
            <node concept="liA8E" id="7Q_67PUKgLV" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SModel.addRootNode(org.jetbrains.mps.openapi.model.SNode)" resolve="addRootNode" />
              <node concept="37vLTw" id="7Q_67PUKgLW" role="37wK5m">
                <ref role="3cqZAo" node="7Q_67PUKggF" resolve="generated" />
              </node>
            </node>
            <node concept="2JrnkZ" id="7Q_67PUKhQa" role="2Oq$k0">
              <node concept="37vLTw" id="7Q_67PUKgEu" role="2JrQYb">
                <ref role="3cqZAo" node="7Q_67PUKggv" resolve="generatedModel" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7Q_67PUKgl0" role="3cqZAp">
          <node concept="2YIFZM" id="7Q_67PUKgEz" role="3clFbG">
            <ref role="1Pybhc" to="fwk:~TracingUtil" resolve="TracingUtil" />
            <ref role="37wK5l" to="fwk:~TracingUtil.putInputNode(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode)" resolve="putInputNode" />
            <node concept="37vLTw" id="7Q_67PUKgE$" role="37wK5m">
              <ref role="3cqZAo" node="7Q_67PUKggF" resolve="generated" />
            </node>
            <node concept="37vLTw" id="7Q_67PUKgE_" role="37wK5m">
              <ref role="3cqZAo" node="7Q_67PUKggB" resolve="grammar" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7Q_67PUKgl4" role="1B3o_S" />
      <node concept="3cqZAl" id="7Q_67PUKgl5" role="3clF45" />
    </node>
    <node concept="3clFb_" id="7Q_67PUKgl6" role="jymVt">
      <property role="TrG5h" value="duplicateCandidate" />
      <node concept="3clFbS" id="7Q_67PUKgl7" role="3clF47">
        <node concept="3clFbF" id="7Q_67PUKgl8" role="3cqZAp">
          <node concept="2OqwBi" id="7Q_67PUKgMc" role="3clFbG">
            <node concept="liA8E" id="7Q_67PUKgMd" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SModel.addRootNode(org.jetbrains.mps.openapi.model.SNode)" resolve="addRootNode" />
              <node concept="2YIFZM" id="7Q_67PUKgPX" role="37wK5m">
                <ref role="1Pybhc" to="w1kc:~CopyUtil" resolve="CopyUtil" />
                <ref role="37wK5l" to="w1kc:~CopyUtil.copy(org.jetbrains.mps.openapi.model.SNode)" resolve="copy" />
                <node concept="1rXfSq" id="7Q_67PUKgPY" role="37wK5m">
                  <ref role="37wK5l" node="7Q_67PUKgio" resolve="root" />
                </node>
              </node>
            </node>
            <node concept="2JrnkZ" id="7Q_67PUKhQb" role="2Oq$k0">
              <node concept="37vLTw" id="7Q_67PUKgEC" role="2JrQYb">
                <ref role="3cqZAo" node="7Q_67PUKggz" resolve="targetModel" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7Q_67PUKglc" role="1B3o_S" />
      <node concept="3cqZAl" id="7Q_67PUKgld" role="3clF45" />
    </node>
    <node concept="3clFb_" id="7Q_67PUKgle" role="jymVt">
      <property role="TrG5h" value="addExtension" />
      <node concept="3clFbS" id="7Q_67PUKglf" role="3clF47">
        <node concept="3cpWs8" id="7Q_67PUKglh" role="3cqZAp">
          <node concept="3cpWsn" id="7Q_67PUKglg" role="3cpWs9">
            <property role="TrG5h" value="extension" />
            <node concept="3Tqbb2" id="7Q_67PUKhQw" role="1tU5fm" />
            <node concept="2YIFZM" id="7Q_67PUKgEI" role="33vP2m">
              <ref role="1Pybhc" to="w1kc:~CopyUtil" resolve="CopyUtil" />
              <ref role="37wK5l" to="w1kc:~CopyUtil.copy(org.jetbrains.mps.openapi.model.SNode)" resolve="copy" />
              <node concept="37vLTw" id="7Q_67PUKgEJ" role="37wK5m">
                <ref role="3cqZAo" node="7Q_67PUKggF" resolve="generated" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7Q_67PUKgll" role="3cqZAp">
          <node concept="2OqwBi" id="7Q_67PUKgMq" role="3clFbG">
            <node concept="liA8E" id="7Q_67PUKgMr" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNode.setProperty(org.jetbrains.mps.openapi.language.SProperty,java.lang.String)" resolve="setProperty" />
              <node concept="37vLTw" id="7Q_67PUKgMs" role="37wK5m">
                <ref role="3cqZAo" node="7Q_67PUKggf" resolve="NAME" />
              </node>
              <node concept="Xl_RD" id="7Q_67PUKgMt" role="37wK5m">
                <property role="Xl_RC" value="HandwrittenExtension" />
              </node>
            </node>
            <node concept="2JrnkZ" id="7Q_67PUKhQc" role="2Oq$k0">
              <node concept="37vLTw" id="7Q_67PUKgEM" role="2JrQYb">
                <ref role="3cqZAo" node="7Q_67PUKglg" resolve="extension" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7Q_67PUKglp" role="3cqZAp">
          <node concept="2OqwBi" id="7Q_67PUKgMC" role="3clFbG">
            <node concept="liA8E" id="7Q_67PUKgMD" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNode.setProperty(org.jetbrains.mps.openapi.language.SProperty,java.lang.String)" resolve="setProperty" />
              <node concept="37vLTw" id="7Q_67PUKgME" role="37wK5m">
                <ref role="3cqZAo" node="7Q_67PUKggj" resolve="PACKAGE" />
              </node>
              <node concept="Xl_RD" id="7Q_67PUKgMF" role="37wK5m">
                <property role="Xl_RC" value="extensions" />
              </node>
            </node>
            <node concept="2JrnkZ" id="7Q_67PUKhQd" role="2Oq$k0">
              <node concept="37vLTw" id="7Q_67PUKgES" role="2JrQYb">
                <ref role="3cqZAo" node="7Q_67PUKglg" resolve="extension" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7Q_67PUKglt" role="3cqZAp">
          <node concept="2OqwBi" id="7Q_67PUKgMV" role="3clFbG">
            <node concept="liA8E" id="7Q_67PUKgMW" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SModel.addRootNode(org.jetbrains.mps.openapi.model.SNode)" resolve="addRootNode" />
              <node concept="37vLTw" id="7Q_67PUKgMX" role="37wK5m">
                <ref role="3cqZAo" node="7Q_67PUKglg" resolve="extension" />
              </node>
            </node>
            <node concept="2JrnkZ" id="7Q_67PUKhQe" role="2Oq$k0">
              <node concept="37vLTw" id="7Q_67PUKgEY" role="2JrQYb">
                <ref role="3cqZAo" node="7Q_67PUKggz" resolve="targetModel" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7Q_67PUKglw" role="3cqZAp">
          <node concept="2OqwBi" id="7Q_67PUKgN8" role="3cqZAk">
            <node concept="liA8E" id="7Q_67PUKgN9" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNode.getReference()" resolve="getReference" />
            </node>
            <node concept="2JrnkZ" id="7Q_67PUKhQf" role="2Oq$k0">
              <node concept="37vLTw" id="7Q_67PUKgF3" role="2JrQYb">
                <ref role="3cqZAo" node="7Q_67PUKglg" resolve="extension" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7Q_67PUKgly" role="1B3o_S" />
      <node concept="3uibUv" id="7Q_67PUKglz" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
      </node>
    </node>
    <node concept="3clFb_" id="7Q_67PUKgl$" role="jymVt">
      <property role="TrG5h" value="survives" />
      <node concept="37vLTG" id="7Q_67PUKgl_" role="3clF46">
        <property role="TrG5h" value="reference" />
        <node concept="3uibUv" id="7Q_67PUKglA" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
        </node>
      </node>
      <node concept="3clFbS" id="7Q_67PUKglB" role="3clF47">
        <node concept="3cpWs6" id="7Q_67PUKglC" role="3cqZAp">
          <node concept="3y3z36" id="7Q_67PUKglD" role="3cqZAk">
            <node concept="2OqwBi" id="7Q_67PUKgNj" role="3uHU7B">
              <node concept="37vLTw" id="7Q_67PUKgF7" role="2Oq$k0">
                <ref role="3cqZAo" node="7Q_67PUKgl_" resolve="reference" />
              </node>
              <node concept="liA8E" id="7Q_67PUKgNk" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNodeReference.resolve(org.jetbrains.mps.openapi.module.SRepository)" resolve="resolve" />
                <node concept="2OqwBi" id="7Q_67PUKgTo" role="37wK5m">
                  <node concept="liA8E" id="7Q_67PUKgTp" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SModel.getRepository()" resolve="getRepository" />
                  </node>
                  <node concept="2JrnkZ" id="7Q_67PUKhQg" role="2Oq$k0">
                    <node concept="37vLTw" id="7Q_67PUKgQ1" role="2JrQYb">
                      <ref role="3cqZAo" node="7Q_67PUKggz" resolve="targetModel" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="10Nm6u" id="7Q_67PUKglG" role="3uHU7w" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7Q_67PUKglH" role="1B3o_S" />
      <node concept="10P_77" id="7Q_67PUKglI" role="3clF45" />
    </node>
    <node concept="3clFb_" id="7Q_67PUKglJ" role="jymVt">
      <property role="TrG5h" value="dispose" />
      <node concept="3clFbS" id="7Q_67PUKglK" role="3clF47">
        <node concept="3clFbF" id="7Q_67PUKglL" role="3cqZAp">
          <node concept="2OqwBi" id="7Q_67PUKgNw" role="3clFbG">
            <node concept="2YIFZM" id="7Q_67PUKgFk" role="2Oq$k0">
              <ref role="1Pybhc" to="tqvn:~TemporaryModels" resolve="TemporaryModels" />
              <ref role="37wK5l" to="tqvn:~TemporaryModels.getInstance()" resolve="getInstance" />
            </node>
            <node concept="liA8E" id="7Q_67PUKgNx" role="2OqNvi">
              <ref role="37wK5l" to="tqvn:~TemporaryModels.dispose(org.jetbrains.mps.openapi.model.SModel)" resolve="dispose" />
              <node concept="37vLTw" id="7Q_67PUKgNy" role="37wK5m">
                <ref role="3cqZAo" node="7Q_67PUKggz" resolve="targetModel" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7Q_67PUKglP" role="3cqZAp">
          <node concept="2OqwBi" id="7Q_67PUKgNH" role="3clFbG">
            <node concept="2YIFZM" id="7Q_67PUKgFv" role="2Oq$k0">
              <ref role="1Pybhc" to="tqvn:~TemporaryModels" resolve="TemporaryModels" />
              <ref role="37wK5l" to="tqvn:~TemporaryModels.getInstance()" resolve="getInstance" />
            </node>
            <node concept="liA8E" id="7Q_67PUKgNI" role="2OqNvi">
              <ref role="37wK5l" to="tqvn:~TemporaryModels.dispose(org.jetbrains.mps.openapi.model.SModel)" resolve="dispose" />
              <node concept="37vLTw" id="7Q_67PUKgNJ" role="37wK5m">
                <ref role="3cqZAo" node="7Q_67PUKggv" resolve="generatedModel" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7Q_67PUKglT" role="3cqZAp">
          <node concept="2OqwBi" id="7Q_67PUKgNU" role="3clFbG">
            <node concept="2YIFZM" id="7Q_67PUKgFE" role="2Oq$k0">
              <ref role="1Pybhc" to="tqvn:~TemporaryModels" resolve="TemporaryModels" />
              <ref role="37wK5l" to="tqvn:~TemporaryModels.getInstance()" resolve="getInstance" />
            </node>
            <node concept="liA8E" id="7Q_67PUKgNV" role="2OqNvi">
              <ref role="37wK5l" to="tqvn:~TemporaryModels.dispose(org.jetbrains.mps.openapi.model.SModel)" resolve="dispose" />
              <node concept="37vLTw" id="7Q_67PUKgNW" role="37wK5m">
                <ref role="3cqZAo" node="7Q_67PUKggr" resolve="sourceModel" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7Q_67PUKglX" role="1B3o_S" />
      <node concept="3cqZAl" id="7Q_67PUKglY" role="3clF45" />
    </node>
    <node concept="3clFb_" id="694jTX_3lL4" role="jymVt">
      <property role="TrG5h" value="unavailableProfile" />
      <node concept="3clFbS" id="694jTX_3lL5" role="3clF47">
        <node concept="3cpWs8" id="694jTX_3lL7" role="3cqZAp">
          <node concept="3cpWsn" id="694jTX_3lL6" role="3cpWs9">
            <property role="TrG5h" value="profile" />
            <node concept="3Tqbb2" id="694jTX_3lVx" role="1tU5fm" />
            <node concept="2YIFZM" id="694jTX_3lU8" role="33vP2m">
              <ref role="1Pybhc" to="9toz:~GenerationProfiles" resolve="GenerationProfiles" />
              <ref role="37wK5l" to="9toz:~GenerationProfiles.createProfile(org.jetbrains.mps.openapi.model.SModel,org.jetbrains.mps.openapi.model.SNode,java.lang.String)" resolve="createProfile" />
              <node concept="37vLTw" id="694jTX_3lU9" role="37wK5m">
                <ref role="3cqZAo" node="7Q_67PUKggr" resolve="sourceModel" />
              </node>
              <node concept="37vLTw" id="694jTX_3lUa" role="37wK5m">
                <ref role="3cqZAo" node="7Q_67PUKggB" resolve="grammar" />
              </node>
              <node concept="Xl_RD" id="694jTX_3lUb" role="37wK5m">
                <property role="Xl_RC" value="grammar-cells" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="694jTX_3lLd" role="3cqZAp">
          <node concept="2YIFZM" id="694jTX_3lUe" role="3cqZAk">
            <ref role="1Pybhc" to="gzg6:7Q_67PUJ1Pd" resolve="ProtectedRegeneration" />
            <ref role="37wK5l" to="gzg6:7Q_67PUJ1TP" resolve="preview" />
            <node concept="37vLTw" id="694jTX_3lUf" role="37wK5m">
              <ref role="3cqZAo" node="7Q_67PUKggB" resolve="grammar" />
            </node>
            <node concept="2YIFZM" id="694jTX_3lUn" role="37wK5m">
              <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
              <ref role="37wK5l" to="33ny:~Collections.singletonList(java.lang.Object)" resolve="singletonList" />
              <node concept="37vLTw" id="694jTX_3lUo" role="37wK5m">
                <ref role="3cqZAo" node="7Q_67PUKggF" resolve="generated" />
              </node>
            </node>
            <node concept="2YIFZM" id="694jTX_3lUr" role="37wK5m">
              <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
              <ref role="37wK5l" to="33ny:~Collections.singletonList(java.lang.Object)" resolve="singletonList" />
              <node concept="37vLTw" id="694jTX_3lUs" role="37wK5m">
                <ref role="3cqZAo" node="7Q_67PUKggz" resolve="targetModel" />
              </node>
            </node>
            <node concept="37vLTw" id="694jTX_3lUk" role="37wK5m">
              <ref role="3cqZAo" node="694jTX_3lL6" resolve="profile" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="694jTX_3lLl" role="1B3o_S" />
      <node concept="3uibUv" id="694jTX_3lLm" role="3clF45">
        <ref role="3uigEE" to="gzg6:7Q_67PUJ1Pf" resolve="ProtectedRegeneration.Preview" />
      </node>
    </node>
    <node concept="3clFb_" id="694jTX_6eTv" role="jymVt">
      <property role="TrG5h" value="nonGrammarInput" />
      <node concept="3clFbS" id="694jTX_6eTw" role="3clF47">
        <node concept="3J1_TO" id="694jTX_6eTW" role="3cqZAp">
          <node concept="3uVAMA" id="694jTX_6eTX" role="1zxBo5">
            <node concept="3clFbS" id="694jTX_6eTJ" role="1zc67A">
              <node concept="3clFbJ" id="694jTX_6eTK" role="3cqZAp">
                <node concept="3fqX7Q" id="694jTX_6eTL" role="3clFbw">
                  <node concept="2OqwBi" id="694jTX_6eVN" role="3fr31v">
                    <node concept="2OqwBi" id="694jTX_6eV9" role="2Oq$k0">
                      <node concept="37vLTw" id="694jTX_6eUg" role="2Oq$k0">
                        <ref role="3cqZAo" node="694jTX_6eTF" resolve="error" />
                      </node>
                      <node concept="liA8E" id="694jTX_6eVa" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~Throwable.getMessage()" resolve="getMessage" />
                      </node>
                    </node>
                    <node concept="liA8E" id="694jTX_6eVO" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.startsWith(java.lang.String)" resolve="startsWith" />
                      <node concept="Xl_RD" id="694jTX_6eVP" role="37wK5m">
                        <property role="Xl_RC" value="MBNF_GENERATION_INPUT:" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="694jTX_6eTQ" role="3clFbx">
                  <node concept="YS8fn" id="694jTX_6eTT" role="3cqZAp">
                    <node concept="2ShNRf" id="694jTX_6eUi" role="YScLw">
                      <node concept="1pGfFk" id="694jTX_6eUC" role="2ShVmc">
                        <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;(java.lang.String)" resolve="IllegalArgumentException" />
                        <node concept="2OqwBi" id="694jTX_6eW4" role="37wK5m">
                          <node concept="37vLTw" id="694jTX_6eVd" role="2Oq$k0">
                            <ref role="3cqZAo" node="694jTX_6eTF" resolve="error" />
                          </node>
                          <node concept="liA8E" id="694jTX_6eW5" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~Throwable.getMessage()" resolve="getMessage" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="YS8fn" id="694jTX_6eTV" role="3cqZAp">
                <node concept="37vLTw" id="694jTX_6eTU" role="YScLw">
                  <ref role="3cqZAo" node="694jTX_6eTF" resolve="error" />
                </node>
              </node>
            </node>
            <node concept="XOnhg" id="694jTX_6eTF" role="1zc67B">
              <property role="TrG5h" value="error" />
              <node concept="nSUau" id="694jTX_6eTH" role="1tU5fm">
                <node concept="3uibUv" id="694jTX_6eTG" role="nSUat">
                  <ref role="3uigEE" to="wyt6:~IllegalStateException" resolve="IllegalStateException" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="694jTX_6eTy" role="1zxBo7">
            <node concept="3cpWs6" id="694jTX_6eTz" role="3cqZAp">
              <node concept="2YIFZM" id="694jTX_6eUG" role="3cqZAk">
                <ref role="1Pybhc" to="gzg6:7Q_67PUJ1Pd" resolve="ProtectedRegeneration" />
                <ref role="37wK5l" to="gzg6:7Q_67PUJ1TP" resolve="preview" />
                <node concept="37vLTw" id="694jTX_6eUH" role="37wK5m">
                  <ref role="3cqZAo" node="7Q_67PUKggF" resolve="generated" />
                </node>
                <node concept="2YIFZM" id="694jTX_6eVh" role="37wK5m">
                  <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                  <ref role="37wK5l" to="33ny:~Collections.singletonList(java.lang.Object)" resolve="singletonList" />
                  <node concept="37vLTw" id="694jTX_6eVi" role="37wK5m">
                    <ref role="3cqZAo" node="7Q_67PUKggF" resolve="generated" />
                  </node>
                </node>
                <node concept="2YIFZM" id="694jTX_6eVl" role="37wK5m">
                  <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                  <ref role="37wK5l" to="33ny:~Collections.singletonList(java.lang.Object)" resolve="singletonList" />
                  <node concept="37vLTw" id="694jTX_6eVm" role="37wK5m">
                    <ref role="3cqZAo" node="7Q_67PUKggz" resolve="targetModel" />
                  </node>
                </node>
                <node concept="10Nm6u" id="694jTX_6eUM" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="694jTX_6eTY" role="1B3o_S" />
      <node concept="3uibUv" id="694jTX_6eTZ" role="3clF45">
        <ref role="3uigEE" to="gzg6:7Q_67PUJ1Pf" resolve="ProtectedRegeneration.Preview" />
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="7Q_67PUKh4u">
    <property role="TrG5h" value="RegenerationOwnership" />
    <node concept="1qefOq" id="7Q_67PUKh5_" role="1SKRRt">
      <node concept="3xJwxZ" id="7Q_67PUKh4v" role="1qenE9">
        <property role="TrG5h" value="OwnershipFixture" />
        <ref role="3xJMYq" node="7Q_67PUKh4O" resolve="Number" />
        <node concept="3xJKsl" id="7Q_67PUKh4G" role="3xJMYo">
          <property role="TrG5h" value="NumberValue" />
          <node concept="1Qi9sc" id="7Q_67PUKh4H" role="q_eir">
            <node concept="1OCmVF" id="7Q_67PUKh4I" role="1QigWp">
              <node concept="1SYyG9" id="7Q_67PUKh4J" role="1OLDsb">
                <ref role="1SYXPG" to="tpfp:h5SV6x8" resolve="\p{Digit}" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3xhzZY" id="7Q_67PUKh4O" role="3xJMYo">
          <property role="TrG5h" value="Number" />
          <node concept="2GSJ2k" id="7Q_67PUKh4P" role="3xhzZr">
            <ref role="2GQAiS" node="7Q_67PUKh4G" resolve="NumberValue" />
          </node>
        </node>
        <node concept="3xLA65" id="7Q_67PUKh5A" role="lGtFl">
          <property role="TrG5h" value="OwnershipFixture" />
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="7Q_67PUKh5B" role="1SKRRt">
      <node concept="1TIwiD" id="7Q_67PUKh5y" role="1qenE9">
        <property role="1pbfSe" value="405467652" />
        <property role="TrG5h" value="OwnedNumber" />
        <property role="EcuMT" value="5054346797381394432" />
        <property role="3GE5qa" value="" />
        <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
        <node concept="1TJgyi" id="7Q_67PUKh5z" role="1TKVEl">
          <property role="TrG5h" value="NumberValue" />
          <property role="IQ2nx" value="1458547674486468608" />
          <ref role="AX2Wp" to="zejt:6LRoTum0v0P" resolve="NumberValue" />
        </node>
        <node concept="PrWs8" id="7Q_67PUKh5$" role="PzmwI">
          <ref role="PrY4T" to="zejt:6LRoTum0v0Y" resolve="Expression" />
        </node>
        <node concept="3xLA65" id="7Q_67PUKh5C" role="lGtFl">
          <property role="TrG5h" value="OwnedNumber" />
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="7Q_67PUKmbd" role="1SL9yI">
      <property role="TrG5h" value="reviewedAdoptionPreservesIdentity" />
      <node concept="3cqZAl" id="7Q_67PUKh5E" role="3clF45" />
      <node concept="3clFbS" id="7Q_67PUKh5F" role="3clF47">
        <node concept="3cpWs8" id="7Q_67PUKh5I" role="3cqZAp">
          <node concept="3cpWsn" id="7Q_67PUKh5H" role="3cpWs9">
            <property role="TrG5h" value="s" />
            <node concept="3uibUv" id="7Q_67PUKh5J" role="1tU5fm">
              <ref role="3uigEE" node="7Q_67PUKggd" resolve="RegenerationScenario" />
            </node>
            <node concept="2ShNRf" id="7Q_67PUKh6w" role="33vP2m">
              <node concept="1pGfFk" id="7Q_67PUKh6G" role="2ShVmc">
                <ref role="37wK5l" node="7Q_67PUKggJ" resolve="RegenerationScenario" />
                <node concept="3xONca" id="7Q_67PUKhaq" role="37wK5m">
                  <ref role="3xOPvv" node="7Q_67PUKh5A" resolve="OwnershipFixture" />
                </node>
                <node concept="3xONca" id="7Q_67PUKhar" role="37wK5m">
                  <ref role="3xOPvv" node="7Q_67PUKh5C" resolve="OwnedNumber" />
                </node>
                <node concept="3clFbT" id="7Q_67PUKh6J" role="37wK5m">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="7Q_67PUKh6u" role="3cqZAp">
          <node concept="1wplmZ" id="7Q_67PUKh6v" role="1zxBo6">
            <node concept="3clFbS" id="7Q_67PUKh6r" role="1wplMD">
              <node concept="3clFbF" id="7Q_67PUKh6s" role="3cqZAp">
                <node concept="2OqwBi" id="7Q_67PUKh7m" role="3clFbG">
                  <node concept="37vLTw" id="7Q_67PUKh6K" role="2Oq$k0">
                    <ref role="3cqZAo" node="7Q_67PUKh5H" resolve="s" />
                  </node>
                  <node concept="liA8E" id="7Q_67PUKh7n" role="2OqNvi">
                    <ref role="37wK5l" node="7Q_67PUKglJ" resolve="dispose" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="7Q_67PUKh5P" role="1zxBo7">
            <node concept="3cpWs8" id="7Q_67PUKh5R" role="3cqZAp">
              <node concept="3cpWsn" id="7Q_67PUKh5Q" role="3cpWs9">
                <property role="TrG5h" value="original" />
                <node concept="3uibUv" id="7Q_67PUKh5S" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                </node>
                <node concept="2OqwBi" id="7Q_67PUKh7y" role="33vP2m">
                  <node concept="37vLTw" id="7Q_67PUKh6M" role="2Oq$k0">
                    <ref role="3cqZAo" node="7Q_67PUKh5H" resolve="s" />
                  </node>
                  <node concept="liA8E" id="7Q_67PUKh7z" role="2OqNvi">
                    <ref role="37wK5l" node="7Q_67PUKgiY" resolve="rootReference" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="7Q_67PUKh5V" role="3cqZAp">
              <node concept="3cpWsn" id="7Q_67PUKh5U" role="3cpWs9">
                <property role="TrG5h" value="initial" />
                <node concept="3uibUv" id="7Q_67PUKh5W" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
                <node concept="2OqwBi" id="7Q_67PUKh7I" role="33vP2m">
                  <node concept="37vLTw" id="7Q_67PUKh6O" role="2Oq$k0">
                    <ref role="3cqZAo" node="7Q_67PUKh5H" resolve="s" />
                  </node>
                  <node concept="liA8E" id="7Q_67PUKh7J" role="2OqNvi">
                    <ref role="37wK5l" node="7Q_67PUKgj5" resolve="state" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7Q_67PUKh5Y" role="3cqZAp">
              <node concept="2OqwBi" id="7Q_67PUKh7U" role="3clFbG">
                <node concept="37vLTw" id="7Q_67PUKh6Q" role="2Oq$k0">
                  <ref role="3cqZAo" node="7Q_67PUKh5H" resolve="s" />
                </node>
                <node concept="liA8E" id="7Q_67PUKh7V" role="2OqNvi">
                  <ref role="37wK5l" node="7Q_67PUKgif" resolve="apply" />
                  <node concept="2OqwBi" id="7Q_67PUKh9C" role="37wK5m">
                    <node concept="37vLTw" id="7Q_67PUKh8E" role="2Oq$k0">
                      <ref role="3cqZAo" node="7Q_67PUKh5H" resolve="s" />
                    </node>
                    <node concept="liA8E" id="7Q_67PUKh9D" role="2OqNvi">
                      <ref role="37wK5l" node="7Q_67PUKgi3" resolve="preview" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3vlDli" id="7Q_67PUKhas" role="3cqZAp">
              <node concept="37vLTw" id="7Q_67PUKh6U" role="3tpDZB">
                <ref role="3cqZAo" node="7Q_67PUKh5Q" resolve="original" />
              </node>
              <node concept="2OqwBi" id="7Q_67PUKh8Q" role="3tpDZA">
                <node concept="37vLTw" id="7Q_67PUKh7X" role="2Oq$k0">
                  <ref role="3cqZAo" node="7Q_67PUKh5H" resolve="s" />
                </node>
                <node concept="liA8E" id="7Q_67PUKh8R" role="2OqNvi">
                  <ref role="37wK5l" node="7Q_67PUKgiY" resolve="rootReference" />
                </node>
              </node>
              <node concept="3_1$Yv" id="7Q_67PUKhat" role="3_9lra">
                <node concept="Xl_RD" id="7Q_67PUKhau" role="3_1BAH">
                  <property role="Xl_RC" value="reviewedAdoptionPreservesIdentity: preserve ownership, identities, and unrelated content" />
                </node>
              </node>
            </node>
            <node concept="3vlDli" id="7Q_67PUKhav" role="3cqZAp">
              <node concept="37vLTw" id="7Q_67PUKh6X" role="3tpDZB">
                <ref role="3cqZAo" node="7Q_67PUKh5U" resolve="initial" />
              </node>
              <node concept="2OqwBi" id="7Q_67PUKh92" role="3tpDZA">
                <node concept="37vLTw" id="7Q_67PUKh7Z" role="2Oq$k0">
                  <ref role="3cqZAo" node="7Q_67PUKh5H" resolve="s" />
                </node>
                <node concept="liA8E" id="7Q_67PUKh93" role="2OqNvi">
                  <ref role="37wK5l" node="7Q_67PUKgj5" resolve="state" />
                </node>
              </node>
              <node concept="3_1$Yv" id="7Q_67PUKhaw" role="3_9lra">
                <node concept="Xl_RD" id="7Q_67PUKhax" role="3_1BAH">
                  <property role="Xl_RC" value="reviewedAdoptionPreservesIdentity: preserve ownership, identities, and unrelated content" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="7Q_67PUKh6a" role="3cqZAp">
              <node concept="3cpWsn" id="7Q_67PUKh69" role="3cpWs9">
                <property role="TrG5h" value="owned" />
                <node concept="3uibUv" id="7Q_67PUKh6b" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
                <node concept="2OqwBi" id="7Q_67PUKh8b" role="33vP2m">
                  <node concept="37vLTw" id="7Q_67PUKh6Z" role="2Oq$k0">
                    <ref role="3cqZAo" node="7Q_67PUKh5H" resolve="s" />
                  </node>
                  <node concept="liA8E" id="7Q_67PUKh8c" role="2OqNvi">
                    <ref role="37wK5l" node="7Q_67PUKgju" resolve="sourceState" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7Q_67PUKh6d" role="3cqZAp">
              <node concept="2OqwBi" id="7Q_67PUKh8n" role="3clFbG">
                <node concept="37vLTw" id="7Q_67PUKh71" role="2Oq$k0">
                  <ref role="3cqZAo" node="7Q_67PUKh5H" resolve="s" />
                </node>
                <node concept="liA8E" id="7Q_67PUKh8o" role="2OqNvi">
                  <ref role="37wK5l" node="7Q_67PUKgkJ" resolve="regenerate" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7Q_67PUKh6f" role="3cqZAp">
              <node concept="2OqwBi" id="7Q_67PUKh8z" role="3clFbG">
                <node concept="37vLTw" id="7Q_67PUKh73" role="2Oq$k0">
                  <ref role="3cqZAo" node="7Q_67PUKh5H" resolve="s" />
                </node>
                <node concept="liA8E" id="7Q_67PUKh8$" role="2OqNvi">
                  <ref role="37wK5l" node="7Q_67PUKgif" resolve="apply" />
                  <node concept="2OqwBi" id="7Q_67PUKh9O" role="37wK5m">
                    <node concept="37vLTw" id="7Q_67PUKh94" role="2Oq$k0">
                      <ref role="3cqZAo" node="7Q_67PUKh5H" resolve="s" />
                    </node>
                    <node concept="liA8E" id="7Q_67PUKh9P" role="2OqNvi">
                      <ref role="37wK5l" node="7Q_67PUKgi3" resolve="preview" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3vlDli" id="7Q_67PUKhay" role="3cqZAp">
              <node concept="37vLTw" id="7Q_67PUKh77" role="3tpDZB">
                <ref role="3cqZAo" node="7Q_67PUKh5U" resolve="initial" />
              </node>
              <node concept="2OqwBi" id="7Q_67PUKh9g" role="3tpDZA">
                <node concept="37vLTw" id="7Q_67PUKh8A" role="2Oq$k0">
                  <ref role="3cqZAo" node="7Q_67PUKh5H" resolve="s" />
                </node>
                <node concept="liA8E" id="7Q_67PUKh9h" role="2OqNvi">
                  <ref role="37wK5l" node="7Q_67PUKgj5" resolve="state" />
                </node>
              </node>
              <node concept="3_1$Yv" id="7Q_67PUKhaz" role="3_9lra">
                <node concept="Xl_RD" id="7Q_67PUKha$" role="3_1BAH">
                  <property role="Xl_RC" value="reviewedAdoptionPreservesIdentity: preserve ownership, identities, and unrelated content" />
                </node>
              </node>
            </node>
            <node concept="3vlDli" id="7Q_67PUKha_" role="3cqZAp">
              <node concept="37vLTw" id="7Q_67PUKh7a" role="3tpDZB">
                <ref role="3cqZAo" node="7Q_67PUKh69" resolve="owned" />
              </node>
              <node concept="2OqwBi" id="7Q_67PUKh9s" role="3tpDZA">
                <node concept="37vLTw" id="7Q_67PUKh8C" role="2Oq$k0">
                  <ref role="3cqZAo" node="7Q_67PUKh5H" resolve="s" />
                </node>
                <node concept="liA8E" id="7Q_67PUKh9t" role="2OqNvi">
                  <ref role="37wK5l" node="7Q_67PUKgju" resolve="sourceState" />
                </node>
              </node>
              <node concept="3_1$Yv" id="7Q_67PUKhaA" role="3_9lra">
                <node concept="Xl_RD" id="7Q_67PUKhaB" role="3_1BAH">
                  <property role="Xl_RC" value="reviewedAdoptionPreservesIdentity: preserve ownership, identities, and unrelated content" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="7Q_67PUKmbe" role="1SL9yI">
      <property role="TrG5h" value="stalePreviewRejectsBeforeMutation" />
      <node concept="3cqZAl" id="7Q_67PUKhaD" role="3clF45" />
      <node concept="3clFbS" id="7Q_67PUKhaE" role="3clF47">
        <node concept="3cpWs8" id="7Q_67PUKhaH" role="3cqZAp">
          <node concept="3cpWsn" id="7Q_67PUKhaG" role="3cpWs9">
            <property role="TrG5h" value="s" />
            <node concept="3uibUv" id="7Q_67PUKhaI" role="1tU5fm">
              <ref role="3uigEE" node="7Q_67PUKggd" resolve="RegenerationScenario" />
            </node>
            <node concept="2ShNRf" id="7Q_67PUKhbk" role="33vP2m">
              <node concept="1pGfFk" id="7Q_67PUKhbw" role="2ShVmc">
                <ref role="37wK5l" node="7Q_67PUKggJ" resolve="RegenerationScenario" />
                <node concept="3xONca" id="7Q_67PUKhdI" role="37wK5m">
                  <ref role="3xOPvv" node="7Q_67PUKh5A" resolve="OwnershipFixture" />
                </node>
                <node concept="3xONca" id="7Q_67PUKhdJ" role="37wK5m">
                  <ref role="3xOPvv" node="7Q_67PUKh5C" resolve="OwnedNumber" />
                </node>
                <node concept="3clFbT" id="7Q_67PUKhbz" role="37wK5m">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="7Q_67PUKhbi" role="3cqZAp">
          <node concept="1wplmZ" id="7Q_67PUKhbj" role="1zxBo6">
            <node concept="3clFbS" id="7Q_67PUKhbf" role="1wplMD">
              <node concept="3clFbF" id="7Q_67PUKhbg" role="3cqZAp">
                <node concept="2OqwBi" id="7Q_67PUKhc1" role="3clFbG">
                  <node concept="37vLTw" id="7Q_67PUKhb$" role="2Oq$k0">
                    <ref role="3cqZAo" node="7Q_67PUKhaG" resolve="s" />
                  </node>
                  <node concept="liA8E" id="7Q_67PUKhc2" role="2OqNvi">
                    <ref role="37wK5l" node="7Q_67PUKglJ" resolve="dispose" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="7Q_67PUKhaO" role="1zxBo7">
            <node concept="3cpWs8" id="7Q_67PUKhaQ" role="3cqZAp">
              <node concept="3cpWsn" id="7Q_67PUKhaP" role="3cpWs9">
                <property role="TrG5h" value="stale" />
                <node concept="3uibUv" id="7Q_67PUKhaR" role="1tU5fm">
                  <ref role="3uigEE" to="gzg6:7Q_67PUJ1Pf" resolve="ProtectedRegeneration.Preview" />
                </node>
                <node concept="2OqwBi" id="7Q_67PUKhcd" role="33vP2m">
                  <node concept="37vLTw" id="7Q_67PUKhbA" role="2Oq$k0">
                    <ref role="3cqZAo" node="7Q_67PUKhaG" resolve="s" />
                  </node>
                  <node concept="liA8E" id="7Q_67PUKhce" role="2OqNvi">
                    <ref role="37wK5l" node="7Q_67PUKgi3" resolve="preview" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7Q_67PUKhaT" role="3cqZAp">
              <node concept="2OqwBi" id="7Q_67PUKhcp" role="3clFbG">
                <node concept="37vLTw" id="7Q_67PUKhbC" role="2Oq$k0">
                  <ref role="3cqZAo" node="7Q_67PUKhaG" resolve="s" />
                </node>
                <node concept="liA8E" id="7Q_67PUKhcq" role="2OqNvi">
                  <ref role="37wK5l" node="7Q_67PUKgkB" resolve="editInput" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="7Q_67PUKhaW" role="3cqZAp">
              <node concept="3cpWsn" id="7Q_67PUKhaV" role="3cpWs9">
                <property role="TrG5h" value="initial" />
                <node concept="3uibUv" id="7Q_67PUKhaX" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
                <node concept="2OqwBi" id="7Q_67PUKhc_" role="33vP2m">
                  <node concept="37vLTw" id="7Q_67PUKhbE" role="2Oq$k0">
                    <ref role="3cqZAo" node="7Q_67PUKhaG" resolve="s" />
                  </node>
                  <node concept="liA8E" id="7Q_67PUKhcA" role="2OqNvi">
                    <ref role="37wK5l" node="7Q_67PUKgj5" resolve="state" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="7Q_67PUKhb0" role="3cqZAp">
              <node concept="3cpWsn" id="7Q_67PUKhaZ" role="3cpWs9">
                <property role="TrG5h" value="source" />
                <node concept="3uibUv" id="7Q_67PUKhb1" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
                <node concept="2OqwBi" id="7Q_67PUKhcL" role="33vP2m">
                  <node concept="37vLTw" id="7Q_67PUKhbG" role="2Oq$k0">
                    <ref role="3cqZAo" node="7Q_67PUKhaG" resolve="s" />
                  </node>
                  <node concept="liA8E" id="7Q_67PUKhcM" role="2OqNvi">
                    <ref role="37wK5l" node="7Q_67PUKgju" resolve="sourceState" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3$NI$W" id="7Q_67PUKhdQ" role="3cqZAp">
              <node concept="3clFbF" id="7Q_67PUKhb3" role="3$Oloe">
                <node concept="2OqwBi" id="7Q_67PUKhcX" role="3clFbG">
                  <node concept="37vLTw" id="7Q_67PUKhbI" role="2Oq$k0">
                    <ref role="3cqZAo" node="7Q_67PUKhaG" resolve="s" />
                  </node>
                  <node concept="liA8E" id="7Q_67PUKhcY" role="2OqNvi">
                    <ref role="37wK5l" node="7Q_67PUKgif" resolve="apply" />
                    <node concept="37vLTw" id="7Q_67PUKhcZ" role="37wK5m">
                      <ref role="3cqZAo" node="7Q_67PUKhaP" resolve="stale" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3uibUv" id="7Q_67PUKhdR" role="3$Qgvv">
                <ref role="3uigEE" to="wyt6:~IllegalStateException" resolve="IllegalStateException" />
              </node>
              <node concept="3_1$Yv" id="7Q_67PUKhdS" role="3_9lra">
                <node concept="Xl_RD" id="7Q_67PUKhdT" role="3_1BAH">
                  <property role="Xl_RC" value="stalePreviewRejectsBeforeMutation: unsafe application must fail before mutation" />
                </node>
              </node>
            </node>
            <node concept="3vlDli" id="7Q_67PUKhdK" role="3cqZAp">
              <node concept="37vLTw" id="7Q_67PUKhbM" role="3tpDZB">
                <ref role="3cqZAo" node="7Q_67PUKhaV" resolve="initial" />
              </node>
              <node concept="2OqwBi" id="7Q_67PUKhde" role="3tpDZA">
                <node concept="37vLTw" id="7Q_67PUKhd0" role="2Oq$k0">
                  <ref role="3cqZAo" node="7Q_67PUKhaG" resolve="s" />
                </node>
                <node concept="liA8E" id="7Q_67PUKhdf" role="2OqNvi">
                  <ref role="37wK5l" node="7Q_67PUKgj5" resolve="state" />
                </node>
              </node>
              <node concept="3_1$Yv" id="7Q_67PUKhdL" role="3_9lra">
                <node concept="Xl_RD" id="7Q_67PUKhdM" role="3_1BAH">
                  <property role="Xl_RC" value="stalePreviewRejectsBeforeMutation: preserve ownership, identities, and unrelated content" />
                </node>
              </node>
            </node>
            <node concept="3vlDli" id="7Q_67PUKhdN" role="3cqZAp">
              <node concept="37vLTw" id="7Q_67PUKhbP" role="3tpDZB">
                <ref role="3cqZAo" node="7Q_67PUKhaZ" resolve="source" />
              </node>
              <node concept="2OqwBi" id="7Q_67PUKhdq" role="3tpDZA">
                <node concept="37vLTw" id="7Q_67PUKhd2" role="2Oq$k0">
                  <ref role="3cqZAo" node="7Q_67PUKhaG" resolve="s" />
                </node>
                <node concept="liA8E" id="7Q_67PUKhdr" role="2OqNvi">
                  <ref role="37wK5l" node="7Q_67PUKgju" resolve="sourceState" />
                </node>
              </node>
              <node concept="3_1$Yv" id="7Q_67PUKhdO" role="3_9lra">
                <node concept="Xl_RD" id="7Q_67PUKhdP" role="3_1BAH">
                  <property role="Xl_RC" value="stalePreviewRejectsBeforeMutation: preserve ownership, identities, and unrelated content" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="7Q_67PUKmbf" role="1SL9yI">
      <property role="TrG5h" value="conflictingOwnedEditIsProtected" />
      <node concept="3cqZAl" id="7Q_67PUKhdV" role="3clF45" />
      <node concept="3clFbS" id="7Q_67PUKhdW" role="3clF47">
        <node concept="3cpWs8" id="7Q_67PUKhdZ" role="3cqZAp">
          <node concept="3cpWsn" id="7Q_67PUKhdY" role="3cpWs9">
            <property role="TrG5h" value="s" />
            <node concept="3uibUv" id="7Q_67PUKhe0" role="1tU5fm">
              <ref role="3uigEE" node="7Q_67PUKggd" resolve="RegenerationScenario" />
            </node>
            <node concept="2ShNRf" id="7Q_67PUKheH" role="33vP2m">
              <node concept="1pGfFk" id="7Q_67PUKheT" role="2ShVmc">
                <ref role="37wK5l" node="7Q_67PUKggJ" resolve="RegenerationScenario" />
                <node concept="3xONca" id="7Q_67PUKhmJ" role="37wK5m">
                  <ref role="3xOPvv" node="7Q_67PUKh5A" resolve="OwnershipFixture" />
                </node>
                <node concept="3xONca" id="7Q_67PUKhmK" role="37wK5m">
                  <ref role="3xOPvv" node="7Q_67PUKh5C" resolve="OwnedNumber" />
                </node>
                <node concept="3clFbT" id="7Q_67PUKheW" role="37wK5m">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="7Q_67PUKheF" role="3cqZAp">
          <node concept="1wplmZ" id="7Q_67PUKheG" role="1zxBo6">
            <node concept="3clFbS" id="7Q_67PUKheC" role="1wplMD">
              <node concept="3clFbF" id="7Q_67PUKheD" role="3cqZAp">
                <node concept="2OqwBi" id="7Q_67PUKhfy" role="3clFbG">
                  <node concept="37vLTw" id="7Q_67PUKheX" role="2Oq$k0">
                    <ref role="3cqZAo" node="7Q_67PUKhdY" resolve="s" />
                  </node>
                  <node concept="liA8E" id="7Q_67PUKhfz" role="2OqNvi">
                    <ref role="37wK5l" node="7Q_67PUKglJ" resolve="dispose" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="7Q_67PUKhe6" role="1zxBo7">
            <node concept="3clFbF" id="7Q_67PUKhe7" role="3cqZAp">
              <node concept="2OqwBi" id="7Q_67PUKhfI" role="3clFbG">
                <node concept="37vLTw" id="7Q_67PUKheZ" role="2Oq$k0">
                  <ref role="3cqZAo" node="7Q_67PUKhdY" resolve="s" />
                </node>
                <node concept="liA8E" id="7Q_67PUKhfJ" role="2OqNvi">
                  <ref role="37wK5l" node="7Q_67PUKgif" resolve="apply" />
                  <node concept="2OqwBi" id="7Q_67PUKhhS" role="37wK5m">
                    <node concept="37vLTw" id="7Q_67PUKhgS" role="2Oq$k0">
                      <ref role="3cqZAo" node="7Q_67PUKhdY" resolve="s" />
                    </node>
                    <node concept="liA8E" id="7Q_67PUKhhT" role="2OqNvi">
                      <ref role="37wK5l" node="7Q_67PUKgi3" resolve="preview" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7Q_67PUKhea" role="3cqZAp">
              <node concept="2OqwBi" id="7Q_67PUKhfV" role="3clFbG">
                <node concept="37vLTw" id="7Q_67PUKhf2" role="2Oq$k0">
                  <ref role="3cqZAo" node="7Q_67PUKhdY" resolve="s" />
                </node>
                <node concept="liA8E" id="7Q_67PUKhfW" role="2OqNvi">
                  <ref role="37wK5l" node="7Q_67PUKgku" resolve="editOwnedRoot" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="7Q_67PUKhed" role="3cqZAp">
              <node concept="3cpWsn" id="7Q_67PUKhec" role="3cpWs9">
                <property role="TrG5h" value="initial" />
                <node concept="3uibUv" id="7Q_67PUKhee" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
                <node concept="2OqwBi" id="7Q_67PUKhg7" role="33vP2m">
                  <node concept="37vLTw" id="7Q_67PUKhf4" role="2Oq$k0">
                    <ref role="3cqZAo" node="7Q_67PUKhdY" resolve="s" />
                  </node>
                  <node concept="liA8E" id="7Q_67PUKhg8" role="2OqNvi">
                    <ref role="37wK5l" node="7Q_67PUKgj5" resolve="state" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="7Q_67PUKheh" role="3cqZAp">
              <node concept="3cpWsn" id="7Q_67PUKheg" role="3cpWs9">
                <property role="TrG5h" value="conflict" />
                <node concept="3uibUv" id="7Q_67PUKhei" role="1tU5fm">
                  <ref role="3uigEE" to="gzg6:7Q_67PUJ1Pf" resolve="ProtectedRegeneration.Preview" />
                </node>
                <node concept="2OqwBi" id="7Q_67PUKhgj" role="33vP2m">
                  <node concept="37vLTw" id="7Q_67PUKhf6" role="2Oq$k0">
                    <ref role="3cqZAo" node="7Q_67PUKhdY" resolve="s" />
                  </node>
                  <node concept="liA8E" id="7Q_67PUKhgk" role="2OqNvi">
                    <ref role="37wK5l" node="7Q_67PUKgi3" resolve="preview" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3vlDli" id="7Q_67PUKhmL" role="3cqZAp">
              <node concept="3clFbT" id="7Q_67PUKhf9" role="3tpDZB" />
              <node concept="2OqwBi" id="7Q_67PUKhh4" role="3tpDZA">
                <node concept="37vLTw" id="7Q_67PUKhgl" role="2Oq$k0">
                  <ref role="3cqZAo" node="7Q_67PUKheg" resolve="conflict" />
                </node>
                <node concept="liA8E" id="7Q_67PUKhh5" role="2OqNvi">
                  <ref role="37wK5l" to="gzg6:7Q_67PUJ1Rd" resolve="applicable" />
                </node>
              </node>
              <node concept="3_1$Yv" id="7Q_67PUKhmM" role="3_9lra">
                <node concept="Xl_RD" id="7Q_67PUKhmN" role="3_1BAH">
                  <property role="Xl_RC" value="conflictingOwnedEditIsProtected: preserve ownership, identities, and unrelated content" />
                </node>
              </node>
            </node>
            <node concept="3vlDli" id="7Q_67PUKhmO" role="3cqZAp">
              <node concept="3clFbT" id="7Q_67PUKhfc" role="3tpDZB">
                <property role="3clFbU" value="true" />
              </node>
              <node concept="2OqwBi" id="7Q_67PUKhmh" role="3tpDZA">
                <node concept="2OqwBi" id="7Q_67PUKhkW" role="2Oq$k0">
                  <node concept="2OqwBi" id="7Q_67PUKhhw" role="2Oq$k0">
                    <node concept="37vLTw" id="7Q_67PUKhgB" role="2Oq$k0">
                      <ref role="3cqZAo" node="7Q_67PUKheg" resolve="conflict" />
                    </node>
                    <node concept="liA8E" id="7Q_67PUKhhx" role="2OqNvi">
                      <ref role="37wK5l" to="gzg6:7Q_67PUJ1R6" resolve="conflicts" />
                    </node>
                  </node>
                  <node concept="liA8E" id="7Q_67PUKhkX" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                    <node concept="3cmrfG" id="7Q_67PUKhkY" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="7Q_67PUKhmi" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.startsWith(java.lang.String)" resolve="startsWith" />
                  <node concept="Xl_RD" id="7Q_67PUKhmj" role="37wK5m">
                    <property role="Xl_RC" value="MBNF_GENERATED_EDIT:" />
                  </node>
                </node>
              </node>
              <node concept="3_1$Yv" id="7Q_67PUKhmP" role="3_9lra">
                <node concept="Xl_RD" id="7Q_67PUKhmQ" role="3_1BAH">
                  <property role="Xl_RC" value="conflictingOwnedEditIsProtected: preserve ownership, identities, and unrelated content" />
                </node>
              </node>
            </node>
            <node concept="3$NI$W" id="7Q_67PUKhmU" role="3cqZAp">
              <node concept="3clFbF" id="7Q_67PUKhew" role="3$Oloe">
                <node concept="2OqwBi" id="7Q_67PUKhgN" role="3clFbG">
                  <node concept="37vLTw" id="7Q_67PUKhfi" role="2Oq$k0">
                    <ref role="3cqZAo" node="7Q_67PUKhdY" resolve="s" />
                  </node>
                  <node concept="liA8E" id="7Q_67PUKhgO" role="2OqNvi">
                    <ref role="37wK5l" node="7Q_67PUKgif" resolve="apply" />
                    <node concept="37vLTw" id="7Q_67PUKhgP" role="37wK5m">
                      <ref role="3cqZAo" node="7Q_67PUKheg" resolve="conflict" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3uibUv" id="7Q_67PUKhmV" role="3$Qgvv">
                <ref role="3uigEE" to="wyt6:~IllegalStateException" resolve="IllegalStateException" />
              </node>
              <node concept="3_1$Yv" id="7Q_67PUKhmW" role="3_9lra">
                <node concept="Xl_RD" id="7Q_67PUKhmX" role="3_1BAH">
                  <property role="Xl_RC" value="conflictingOwnedEditIsProtected: unsafe application must fail before mutation" />
                </node>
              </node>
            </node>
            <node concept="3vlDli" id="7Q_67PUKhmR" role="3cqZAp">
              <node concept="37vLTw" id="7Q_67PUKhfm" role="3tpDZB">
                <ref role="3cqZAo" node="7Q_67PUKhec" resolve="initial" />
              </node>
              <node concept="2OqwBi" id="7Q_67PUKhhG" role="3tpDZA">
                <node concept="37vLTw" id="7Q_67PUKhgQ" role="2Oq$k0">
                  <ref role="3cqZAo" node="7Q_67PUKhdY" resolve="s" />
                </node>
                <node concept="liA8E" id="7Q_67PUKhhH" role="2OqNvi">
                  <ref role="37wK5l" node="7Q_67PUKgj5" resolve="state" />
                </node>
              </node>
              <node concept="3_1$Yv" id="7Q_67PUKhmS" role="3_9lra">
                <node concept="Xl_RD" id="7Q_67PUKhmT" role="3_1BAH">
                  <property role="Xl_RC" value="conflictingOwnedEditIsProtected: preserve ownership, identities, and unrelated content" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="7Q_67PUKmbg" role="1SL9yI">
      <property role="TrG5h" value="extensionSurvivesUpdate" />
      <node concept="3cqZAl" id="7Q_67PUKhmZ" role="3clF45" />
      <node concept="3clFbS" id="7Q_67PUKhn0" role="3clF47">
        <node concept="3cpWs8" id="7Q_67PUKhn3" role="3cqZAp">
          <node concept="3cpWsn" id="7Q_67PUKhn2" role="3cpWs9">
            <property role="TrG5h" value="s" />
            <node concept="3uibUv" id="7Q_67PUKhn4" role="1tU5fm">
              <ref role="3uigEE" node="7Q_67PUKggd" resolve="RegenerationScenario" />
            </node>
            <node concept="2ShNRf" id="7Q_67PUKho4" role="33vP2m">
              <node concept="1pGfFk" id="7Q_67PUKhog" role="2ShVmc">
                <ref role="37wK5l" node="7Q_67PUKggJ" resolve="RegenerationScenario" />
                <node concept="3xONca" id="7Q_67PUKhu6" role="37wK5m">
                  <ref role="3xOPvv" node="7Q_67PUKh5A" resolve="OwnershipFixture" />
                </node>
                <node concept="3xONca" id="7Q_67PUKhu7" role="37wK5m">
                  <ref role="3xOPvv" node="7Q_67PUKh5C" resolve="OwnedNumber" />
                </node>
                <node concept="3clFbT" id="7Q_67PUKhoj" role="37wK5m">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="7Q_67PUKho2" role="3cqZAp">
          <node concept="1wplmZ" id="7Q_67PUKho3" role="1zxBo6">
            <node concept="3clFbS" id="7Q_67PUKhnZ" role="1wplMD">
              <node concept="3clFbF" id="7Q_67PUKho0" role="3cqZAp">
                <node concept="2OqwBi" id="7Q_67PUKhp6" role="3clFbG">
                  <node concept="37vLTw" id="7Q_67PUKhok" role="2Oq$k0">
                    <ref role="3cqZAo" node="7Q_67PUKhn2" resolve="s" />
                  </node>
                  <node concept="liA8E" id="7Q_67PUKhp7" role="2OqNvi">
                    <ref role="37wK5l" node="7Q_67PUKglJ" resolve="dispose" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="7Q_67PUKhna" role="1zxBo7">
            <node concept="3clFbF" id="7Q_67PUKhnb" role="3cqZAp">
              <node concept="2OqwBi" id="7Q_67PUKhpi" role="3clFbG">
                <node concept="37vLTw" id="7Q_67PUKhom" role="2Oq$k0">
                  <ref role="3cqZAo" node="7Q_67PUKhn2" resolve="s" />
                </node>
                <node concept="liA8E" id="7Q_67PUKhpj" role="2OqNvi">
                  <ref role="37wK5l" node="7Q_67PUKgif" resolve="apply" />
                  <node concept="2OqwBi" id="7Q_67PUKhsv" role="37wK5m">
                    <node concept="37vLTw" id="7Q_67PUKhra" role="2Oq$k0">
                      <ref role="3cqZAo" node="7Q_67PUKhn2" resolve="s" />
                    </node>
                    <node concept="liA8E" id="7Q_67PUKhsw" role="2OqNvi">
                      <ref role="37wK5l" node="7Q_67PUKgi3" resolve="preview" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="7Q_67PUKhnf" role="3cqZAp">
              <node concept="3cpWsn" id="7Q_67PUKhne" role="3cpWs9">
                <property role="TrG5h" value="original" />
                <node concept="3uibUv" id="7Q_67PUKhng" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                </node>
                <node concept="2OqwBi" id="7Q_67PUKhpv" role="33vP2m">
                  <node concept="37vLTw" id="7Q_67PUKhop" role="2Oq$k0">
                    <ref role="3cqZAo" node="7Q_67PUKhn2" resolve="s" />
                  </node>
                  <node concept="liA8E" id="7Q_67PUKhpw" role="2OqNvi">
                    <ref role="37wK5l" node="7Q_67PUKgiY" resolve="rootReference" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="7Q_67PUKhnj" role="3cqZAp">
              <node concept="3cpWsn" id="7Q_67PUKhni" role="3cpWs9">
                <property role="TrG5h" value="property" />
                <node concept="3uibUv" id="7Q_67PUKhnk" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
                <node concept="2OqwBi" id="7Q_67PUKhpF" role="33vP2m">
                  <node concept="37vLTw" id="7Q_67PUKhor" role="2Oq$k0">
                    <ref role="3cqZAo" node="7Q_67PUKhn2" resolve="s" />
                  </node>
                  <node concept="liA8E" id="7Q_67PUKhpG" role="2OqNvi">
                    <ref role="37wK5l" node="7Q_67PUKgjR" resolve="propertyIdentity" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="7Q_67PUKhnn" role="3cqZAp">
              <node concept="3cpWsn" id="7Q_67PUKhnm" role="3cpWs9">
                <property role="TrG5h" value="extension" />
                <node concept="3uibUv" id="7Q_67PUKhno" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                </node>
                <node concept="2OqwBi" id="7Q_67PUKhpR" role="33vP2m">
                  <node concept="37vLTw" id="7Q_67PUKhot" role="2Oq$k0">
                    <ref role="3cqZAo" node="7Q_67PUKhn2" resolve="s" />
                  </node>
                  <node concept="liA8E" id="7Q_67PUKhpS" role="2OqNvi">
                    <ref role="37wK5l" node="7Q_67PUKgle" resolve="addExtension" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7Q_67PUKhnq" role="3cqZAp">
              <node concept="2OqwBi" id="7Q_67PUKhq3" role="3clFbG">
                <node concept="37vLTw" id="7Q_67PUKhov" role="2Oq$k0">
                  <ref role="3cqZAo" node="7Q_67PUKhn2" resolve="s" />
                </node>
                <node concept="liA8E" id="7Q_67PUKhq4" role="2OqNvi">
                  <ref role="37wK5l" node="7Q_67PUKgka" resolve="addGeneratedProperty" />
                </node>
              </node>
            </node>
            <node concept="3vlDli" id="7Q_67PUKhu8" role="3cqZAp">
              <node concept="3clFbT" id="7Q_67PUKhoy" role="3tpDZB">
                <property role="3clFbU" value="true" />
              </node>
              <node concept="2OqwBi" id="7Q_67PUKhsZ" role="3tpDZA">
                <node concept="2OqwBi" id="7Q_67PUKhru" role="2Oq$k0">
                  <node concept="37vLTw" id="7Q_67PUKhqd" role="2Oq$k0">
                    <ref role="3cqZAo" node="7Q_67PUKhn2" resolve="s" />
                  </node>
                  <node concept="liA8E" id="7Q_67PUKhrv" role="2OqNvi">
                    <ref role="37wK5l" node="7Q_67PUKgi3" resolve="preview" />
                  </node>
                </node>
                <node concept="liA8E" id="7Q_67PUKht0" role="2OqNvi">
                  <ref role="37wK5l" to="gzg6:7Q_67PUJ1Rd" resolve="applicable" />
                </node>
              </node>
              <node concept="3_1$Yv" id="7Q_67PUKhu9" role="3_9lra">
                <node concept="Xl_RD" id="7Q_67PUKhua" role="3_1BAH">
                  <property role="Xl_RC" value="extensionSurvivesUpdate: preserve ownership, identities, and unrelated content" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7Q_67PUKhnx" role="3cqZAp">
              <node concept="2OqwBi" id="7Q_67PUKhqp" role="3clFbG">
                <node concept="37vLTw" id="7Q_67PUKho_" role="2Oq$k0">
                  <ref role="3cqZAo" node="7Q_67PUKhn2" resolve="s" />
                </node>
                <node concept="liA8E" id="7Q_67PUKhqq" role="2OqNvi">
                  <ref role="37wK5l" node="7Q_67PUKgif" resolve="apply" />
                  <node concept="2OqwBi" id="7Q_67PUKhtb" role="37wK5m">
                    <node concept="37vLTw" id="7Q_67PUKhrw" role="2Oq$k0">
                      <ref role="3cqZAo" node="7Q_67PUKhn2" resolve="s" />
                    </node>
                    <node concept="liA8E" id="7Q_67PUKhtc" role="2OqNvi">
                      <ref role="37wK5l" node="7Q_67PUKgi3" resolve="preview" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3vlDli" id="7Q_67PUKhub" role="3cqZAp">
              <node concept="37vLTw" id="7Q_67PUKhoD" role="3tpDZB">
                <ref role="3cqZAo" node="7Q_67PUKhne" resolve="original" />
              </node>
              <node concept="2OqwBi" id="7Q_67PUKhrG" role="3tpDZA">
                <node concept="37vLTw" id="7Q_67PUKhqs" role="2Oq$k0">
                  <ref role="3cqZAo" node="7Q_67PUKhn2" resolve="s" />
                </node>
                <node concept="liA8E" id="7Q_67PUKhrH" role="2OqNvi">
                  <ref role="37wK5l" node="7Q_67PUKgiY" resolve="rootReference" />
                </node>
              </node>
              <node concept="3_1$Yv" id="7Q_67PUKhuc" role="3_9lra">
                <node concept="Xl_RD" id="7Q_67PUKhud" role="3_1BAH">
                  <property role="Xl_RC" value="extensionSurvivesUpdate: preserve ownership, identities, and unrelated content" />
                </node>
              </node>
            </node>
            <node concept="3vlDli" id="7Q_67PUKhue" role="3cqZAp">
              <node concept="37vLTw" id="7Q_67PUKhoG" role="3tpDZB">
                <ref role="3cqZAo" node="7Q_67PUKhni" resolve="property" />
              </node>
              <node concept="2OqwBi" id="7Q_67PUKhrS" role="3tpDZA">
                <node concept="37vLTw" id="7Q_67PUKhqu" role="2Oq$k0">
                  <ref role="3cqZAo" node="7Q_67PUKhn2" resolve="s" />
                </node>
                <node concept="liA8E" id="7Q_67PUKhrT" role="2OqNvi">
                  <ref role="37wK5l" node="7Q_67PUKgjR" resolve="propertyIdentity" />
                </node>
              </node>
              <node concept="3_1$Yv" id="7Q_67PUKhuf" role="3_9lra">
                <node concept="Xl_RD" id="7Q_67PUKhug" role="3_1BAH">
                  <property role="Xl_RC" value="extensionSurvivesUpdate: preserve ownership, identities, and unrelated content" />
                </node>
              </node>
            </node>
            <node concept="3vlDli" id="7Q_67PUKhuh" role="3cqZAp">
              <node concept="3clFbT" id="7Q_67PUKhoJ" role="3tpDZB">
                <property role="3clFbU" value="true" />
              </node>
              <node concept="2OqwBi" id="7Q_67PUKhs4" role="3tpDZA">
                <node concept="37vLTw" id="7Q_67PUKhqw" role="2Oq$k0">
                  <ref role="3cqZAo" node="7Q_67PUKhn2" resolve="s" />
                </node>
                <node concept="liA8E" id="7Q_67PUKhs5" role="2OqNvi">
                  <ref role="37wK5l" node="7Q_67PUKgl$" resolve="survives" />
                  <node concept="37vLTw" id="7Q_67PUKhs6" role="37wK5m">
                    <ref role="3cqZAo" node="7Q_67PUKhnm" resolve="extension" />
                  </node>
                </node>
              </node>
              <node concept="3_1$Yv" id="7Q_67PUKhui" role="3_9lra">
                <node concept="Xl_RD" id="7Q_67PUKhuj" role="3_1BAH">
                  <property role="Xl_RC" value="extensionSurvivesUpdate: preserve ownership, identities, and unrelated content" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="7Q_67PUKhnM" role="3cqZAp">
              <node concept="3cpWsn" id="7Q_67PUKhnL" role="3cpWs9">
                <property role="TrG5h" value="updated" />
                <node concept="3uibUv" id="7Q_67PUKhnN" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
                <node concept="2OqwBi" id="7Q_67PUKhqH" role="33vP2m">
                  <node concept="37vLTw" id="7Q_67PUKhoM" role="2Oq$k0">
                    <ref role="3cqZAo" node="7Q_67PUKhn2" resolve="s" />
                  </node>
                  <node concept="liA8E" id="7Q_67PUKhqI" role="2OqNvi">
                    <ref role="37wK5l" node="7Q_67PUKgj5" resolve="state" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7Q_67PUKhnP" role="3cqZAp">
              <node concept="2OqwBi" id="7Q_67PUKhqT" role="3clFbG">
                <node concept="37vLTw" id="7Q_67PUKhoO" role="2Oq$k0">
                  <ref role="3cqZAo" node="7Q_67PUKhn2" resolve="s" />
                </node>
                <node concept="liA8E" id="7Q_67PUKhqU" role="2OqNvi">
                  <ref role="37wK5l" node="7Q_67PUKgkJ" resolve="regenerate" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7Q_67PUKhnR" role="3cqZAp">
              <node concept="2OqwBi" id="7Q_67PUKhr5" role="3clFbG">
                <node concept="37vLTw" id="7Q_67PUKhoQ" role="2Oq$k0">
                  <ref role="3cqZAo" node="7Q_67PUKhn2" resolve="s" />
                </node>
                <node concept="liA8E" id="7Q_67PUKhr6" role="2OqNvi">
                  <ref role="37wK5l" node="7Q_67PUKgif" resolve="apply" />
                  <node concept="2OqwBi" id="7Q_67PUKhtn" role="37wK5m">
                    <node concept="37vLTw" id="7Q_67PUKhs7" role="2Oq$k0">
                      <ref role="3cqZAo" node="7Q_67PUKhn2" resolve="s" />
                    </node>
                    <node concept="liA8E" id="7Q_67PUKhto" role="2OqNvi">
                      <ref role="37wK5l" node="7Q_67PUKgi3" resolve="preview" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3vlDli" id="7Q_67PUKhuk" role="3cqZAp">
              <node concept="37vLTw" id="7Q_67PUKhoU" role="3tpDZB">
                <ref role="3cqZAo" node="7Q_67PUKhnL" resolve="updated" />
              </node>
              <node concept="2OqwBi" id="7Q_67PUKhsj" role="3tpDZA">
                <node concept="37vLTw" id="7Q_67PUKhr8" role="2Oq$k0">
                  <ref role="3cqZAo" node="7Q_67PUKhn2" resolve="s" />
                </node>
                <node concept="liA8E" id="7Q_67PUKhsk" role="2OqNvi">
                  <ref role="37wK5l" node="7Q_67PUKgj5" resolve="state" />
                </node>
              </node>
              <node concept="3_1$Yv" id="7Q_67PUKhul" role="3_9lra">
                <node concept="Xl_RD" id="7Q_67PUKhum" role="3_1BAH">
                  <property role="Xl_RC" value="extensionSurvivesUpdate: preserve ownership, identities, and unrelated content" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="7Q_67PUKmbh" role="1SL9yI">
      <property role="TrG5h" value="freshCreationIsStable" />
      <node concept="3cqZAl" id="7Q_67PUKhuo" role="3clF45" />
      <node concept="3clFbS" id="7Q_67PUKhup" role="3clF47">
        <node concept="3cpWs8" id="7Q_67PUKhus" role="3cqZAp">
          <node concept="3cpWsn" id="7Q_67PUKhur" role="3cpWs9">
            <property role="TrG5h" value="s" />
            <node concept="3uibUv" id="7Q_67PUKhut" role="1tU5fm">
              <ref role="3uigEE" node="7Q_67PUKggd" resolve="RegenerationScenario" />
            </node>
            <node concept="2ShNRf" id="7Q_67PUKhvc" role="33vP2m">
              <node concept="1pGfFk" id="7Q_67PUKhvo" role="2ShVmc">
                <ref role="37wK5l" node="7Q_67PUKggJ" resolve="RegenerationScenario" />
                <node concept="3xONca" id="7Q_67PUKh$q" role="37wK5m">
                  <ref role="3xOPvv" node="7Q_67PUKh5A" resolve="OwnershipFixture" />
                </node>
                <node concept="3xONca" id="7Q_67PUKh$r" role="37wK5m">
                  <ref role="3xOPvv" node="7Q_67PUKh5C" resolve="OwnedNumber" />
                </node>
                <node concept="3clFbT" id="7Q_67PUKhvr" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="7Q_67PUKhva" role="3cqZAp">
          <node concept="1wplmZ" id="7Q_67PUKhvb" role="1zxBo6">
            <node concept="3clFbS" id="7Q_67PUKhv7" role="1wplMD">
              <node concept="3clFbF" id="7Q_67PUKhv8" role="3cqZAp">
                <node concept="2OqwBi" id="7Q_67PUKhw2" role="3clFbG">
                  <node concept="37vLTw" id="7Q_67PUKhvs" role="2Oq$k0">
                    <ref role="3cqZAo" node="7Q_67PUKhur" resolve="s" />
                  </node>
                  <node concept="liA8E" id="7Q_67PUKhw3" role="2OqNvi">
                    <ref role="37wK5l" node="7Q_67PUKglJ" resolve="dispose" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="7Q_67PUKhuz" role="1zxBo7">
            <node concept="3vlDli" id="7Q_67PUKh$s" role="3cqZAp">
              <node concept="3clFbT" id="7Q_67PUKhvv" role="3tpDZB">
                <property role="3clFbU" value="true" />
              </node>
              <node concept="2OqwBi" id="7Q_67PUKhyW" role="3tpDZA">
                <node concept="2OqwBi" id="7Q_67PUKhxG" role="2Oq$k0">
                  <node concept="37vLTw" id="7Q_67PUKhwc" role="2Oq$k0">
                    <ref role="3cqZAo" node="7Q_67PUKhur" resolve="s" />
                  </node>
                  <node concept="liA8E" id="7Q_67PUKhxH" role="2OqNvi">
                    <ref role="37wK5l" node="7Q_67PUKgi3" resolve="preview" />
                  </node>
                </node>
                <node concept="liA8E" id="7Q_67PUKhyX" role="2OqNvi">
                  <ref role="37wK5l" to="gzg6:7Q_67PUJ1Rd" resolve="applicable" />
                </node>
              </node>
              <node concept="3_1$Yv" id="7Q_67PUKh$t" role="3_9lra">
                <node concept="Xl_RD" id="7Q_67PUKh$u" role="3_1BAH">
                  <property role="Xl_RC" value="freshCreationIsStable: preserve ownership, identities, and unrelated content" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7Q_67PUKhuD" role="3cqZAp">
              <node concept="2OqwBi" id="7Q_67PUKhwo" role="3clFbG">
                <node concept="37vLTw" id="7Q_67PUKhvy" role="2Oq$k0">
                  <ref role="3cqZAo" node="7Q_67PUKhur" resolve="s" />
                </node>
                <node concept="liA8E" id="7Q_67PUKhwp" role="2OqNvi">
                  <ref role="37wK5l" node="7Q_67PUKgif" resolve="apply" />
                  <node concept="2OqwBi" id="7Q_67PUKhz8" role="37wK5m">
                    <node concept="37vLTw" id="7Q_67PUKhxI" role="2Oq$k0">
                      <ref role="3cqZAo" node="7Q_67PUKhur" resolve="s" />
                    </node>
                    <node concept="liA8E" id="7Q_67PUKhz9" role="2OqNvi">
                      <ref role="37wK5l" node="7Q_67PUKgi3" resolve="preview" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="7Q_67PUKhuH" role="3cqZAp">
              <node concept="3cpWsn" id="7Q_67PUKhuG" role="3cpWs9">
                <property role="TrG5h" value="initial" />
                <node concept="3uibUv" id="7Q_67PUKhuI" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
                <node concept="2OqwBi" id="7Q_67PUKhw_" role="33vP2m">
                  <node concept="37vLTw" id="7Q_67PUKhv_" role="2Oq$k0">
                    <ref role="3cqZAo" node="7Q_67PUKhur" resolve="s" />
                  </node>
                  <node concept="liA8E" id="7Q_67PUKhwA" role="2OqNvi">
                    <ref role="37wK5l" node="7Q_67PUKgj5" resolve="state" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="7Q_67PUKhuL" role="3cqZAp">
              <node concept="3cpWsn" id="7Q_67PUKhuK" role="3cpWs9">
                <property role="TrG5h" value="source" />
                <node concept="3uibUv" id="7Q_67PUKhuM" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
                <node concept="2OqwBi" id="7Q_67PUKhwL" role="33vP2m">
                  <node concept="37vLTw" id="7Q_67PUKhvB" role="2Oq$k0">
                    <ref role="3cqZAo" node="7Q_67PUKhur" resolve="s" />
                  </node>
                  <node concept="liA8E" id="7Q_67PUKhwM" role="2OqNvi">
                    <ref role="37wK5l" node="7Q_67PUKgju" resolve="sourceState" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7Q_67PUKhuO" role="3cqZAp">
              <node concept="2OqwBi" id="7Q_67PUKhwX" role="3clFbG">
                <node concept="37vLTw" id="7Q_67PUKhvD" role="2Oq$k0">
                  <ref role="3cqZAo" node="7Q_67PUKhur" resolve="s" />
                </node>
                <node concept="liA8E" id="7Q_67PUKhwY" role="2OqNvi">
                  <ref role="37wK5l" node="7Q_67PUKgkJ" resolve="regenerate" />
                </node>
              </node>
            </node>
            <node concept="3vlDli" id="7Q_67PUKh$v" role="3cqZAp">
              <node concept="3clFbT" id="7Q_67PUKhvG" role="3tpDZB">
                <property role="3clFbU" value="true" />
              </node>
              <node concept="2OqwBi" id="7Q_67PUKhzC" role="3tpDZA">
                <node concept="2OqwBi" id="7Q_67PUKhy2" role="2Oq$k0">
                  <node concept="37vLTw" id="7Q_67PUKhx7" role="2Oq$k0">
                    <ref role="3cqZAo" node="7Q_67PUKhur" resolve="s" />
                  </node>
                  <node concept="liA8E" id="7Q_67PUKhy3" role="2OqNvi">
                    <ref role="37wK5l" node="7Q_67PUKgi3" resolve="preview" />
                  </node>
                </node>
                <node concept="liA8E" id="7Q_67PUKhzD" role="2OqNvi">
                  <ref role="37wK5l" to="gzg6:7Q_67PUJ1Rd" resolve="applicable" />
                </node>
              </node>
              <node concept="3_1$Yv" id="7Q_67PUKh$w" role="3_9lra">
                <node concept="Xl_RD" id="7Q_67PUKh$x" role="3_1BAH">
                  <property role="Xl_RC" value="freshCreationIsStable: preserve ownership, identities, and unrelated content" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7Q_67PUKhuV" role="3cqZAp">
              <node concept="2OqwBi" id="7Q_67PUKhxj" role="3clFbG">
                <node concept="37vLTw" id="7Q_67PUKhvJ" role="2Oq$k0">
                  <ref role="3cqZAo" node="7Q_67PUKhur" resolve="s" />
                </node>
                <node concept="liA8E" id="7Q_67PUKhxk" role="2OqNvi">
                  <ref role="37wK5l" node="7Q_67PUKgif" resolve="apply" />
                  <node concept="2OqwBi" id="7Q_67PUKhzO" role="37wK5m">
                    <node concept="37vLTw" id="7Q_67PUKhy4" role="2Oq$k0">
                      <ref role="3cqZAo" node="7Q_67PUKhur" resolve="s" />
                    </node>
                    <node concept="liA8E" id="7Q_67PUKhzP" role="2OqNvi">
                      <ref role="37wK5l" node="7Q_67PUKgi3" resolve="preview" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3vlDli" id="7Q_67PUKh$y" role="3cqZAp">
              <node concept="37vLTw" id="7Q_67PUKhvN" role="3tpDZB">
                <ref role="3cqZAo" node="7Q_67PUKhuG" resolve="initial" />
              </node>
              <node concept="2OqwBi" id="7Q_67PUKhyg" role="3tpDZA">
                <node concept="37vLTw" id="7Q_67PUKhxm" role="2Oq$k0">
                  <ref role="3cqZAo" node="7Q_67PUKhur" resolve="s" />
                </node>
                <node concept="liA8E" id="7Q_67PUKhyh" role="2OqNvi">
                  <ref role="37wK5l" node="7Q_67PUKgj5" resolve="state" />
                </node>
              </node>
              <node concept="3_1$Yv" id="7Q_67PUKh$z" role="3_9lra">
                <node concept="Xl_RD" id="7Q_67PUKh$$" role="3_1BAH">
                  <property role="Xl_RC" value="freshCreationIsStable: preserve ownership, identities, and unrelated content" />
                </node>
              </node>
            </node>
            <node concept="3vlDli" id="7Q_67PUKh$_" role="3cqZAp">
              <node concept="37vLTw" id="7Q_67PUKhvQ" role="3tpDZB">
                <ref role="3cqZAo" node="7Q_67PUKhuK" resolve="source" />
              </node>
              <node concept="2OqwBi" id="7Q_67PUKhys" role="3tpDZA">
                <node concept="37vLTw" id="7Q_67PUKhxo" role="2Oq$k0">
                  <ref role="3cqZAo" node="7Q_67PUKhur" resolve="s" />
                </node>
                <node concept="liA8E" id="7Q_67PUKhyt" role="2OqNvi">
                  <ref role="37wK5l" node="7Q_67PUKgju" resolve="sourceState" />
                </node>
              </node>
              <node concept="3_1$Yv" id="7Q_67PUKh$A" role="3_9lra">
                <node concept="Xl_RD" id="7Q_67PUKh$B" role="3_1BAH">
                  <property role="Xl_RC" value="freshCreationIsStable: preserve ownership, identities, and unrelated content" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="7Q_67PUKmbi" role="1SL9yI">
      <property role="TrG5h" value="ambiguousAdoptionIsBlocked" />
      <node concept="3cqZAl" id="7Q_67PUKh$D" role="3clF45" />
      <node concept="3clFbS" id="7Q_67PUKh$E" role="3clF47">
        <node concept="3cpWs8" id="7Q_67PUKh$H" role="3cqZAp">
          <node concept="3cpWsn" id="7Q_67PUKh$G" role="3cpWs9">
            <property role="TrG5h" value="s" />
            <node concept="3uibUv" id="7Q_67PUKh$I" role="1tU5fm">
              <ref role="3uigEE" node="7Q_67PUKggd" resolve="RegenerationScenario" />
            </node>
            <node concept="2ShNRf" id="7Q_67PUKh_o" role="33vP2m">
              <node concept="1pGfFk" id="7Q_67PUKh_$" role="2ShVmc">
                <ref role="37wK5l" node="7Q_67PUKggJ" resolve="RegenerationScenario" />
                <node concept="3xONca" id="7Q_67PUKhGW" role="37wK5m">
                  <ref role="3xOPvv" node="7Q_67PUKh5A" resolve="OwnershipFixture" />
                </node>
                <node concept="3xONca" id="7Q_67PUKhGX" role="37wK5m">
                  <ref role="3xOPvv" node="7Q_67PUKh5C" resolve="OwnedNumber" />
                </node>
                <node concept="3clFbT" id="7Q_67PUKh_B" role="37wK5m">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="7Q_67PUKh_m" role="3cqZAp">
          <node concept="1wplmZ" id="7Q_67PUKh_n" role="1zxBo6">
            <node concept="3clFbS" id="7Q_67PUKh_j" role="1wplMD">
              <node concept="3clFbF" id="7Q_67PUKh_k" role="3cqZAp">
                <node concept="2OqwBi" id="7Q_67PUKhAa" role="3clFbG">
                  <node concept="37vLTw" id="7Q_67PUKh_C" role="2Oq$k0">
                    <ref role="3cqZAo" node="7Q_67PUKh$G" resolve="s" />
                  </node>
                  <node concept="liA8E" id="7Q_67PUKhAb" role="2OqNvi">
                    <ref role="37wK5l" node="7Q_67PUKglJ" resolve="dispose" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="7Q_67PUKh$O" role="1zxBo7">
            <node concept="3clFbF" id="7Q_67PUKh$P" role="3cqZAp">
              <node concept="2OqwBi" id="7Q_67PUKhAm" role="3clFbG">
                <node concept="37vLTw" id="7Q_67PUKh_E" role="2Oq$k0">
                  <ref role="3cqZAo" node="7Q_67PUKh$G" resolve="s" />
                </node>
                <node concept="liA8E" id="7Q_67PUKhAn" role="2OqNvi">
                  <ref role="37wK5l" node="7Q_67PUKgl6" resolve="duplicateCandidate" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="7Q_67PUKh$S" role="3cqZAp">
              <node concept="3cpWsn" id="7Q_67PUKh$R" role="3cpWs9">
                <property role="TrG5h" value="initial" />
                <node concept="3uibUv" id="7Q_67PUKh$T" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
                <node concept="2OqwBi" id="7Q_67PUKhAy" role="33vP2m">
                  <node concept="37vLTw" id="7Q_67PUKh_G" role="2Oq$k0">
                    <ref role="3cqZAo" node="7Q_67PUKh$G" resolve="s" />
                  </node>
                  <node concept="liA8E" id="7Q_67PUKhAz" role="2OqNvi">
                    <ref role="37wK5l" node="7Q_67PUKgj5" resolve="state" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="7Q_67PUKh$W" role="3cqZAp">
              <node concept="3cpWsn" id="7Q_67PUKh$V" role="3cpWs9">
                <property role="TrG5h" value="ambiguous" />
                <node concept="3uibUv" id="7Q_67PUKh$X" role="1tU5fm">
                  <ref role="3uigEE" to="gzg6:7Q_67PUJ1Pf" resolve="ProtectedRegeneration.Preview" />
                </node>
                <node concept="2OqwBi" id="7Q_67PUKhAI" role="33vP2m">
                  <node concept="37vLTw" id="7Q_67PUKh_I" role="2Oq$k0">
                    <ref role="3cqZAo" node="7Q_67PUKh$G" resolve="s" />
                  </node>
                  <node concept="liA8E" id="7Q_67PUKhAJ" role="2OqNvi">
                    <ref role="37wK5l" node="7Q_67PUKgi3" resolve="preview" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3vlDli" id="7Q_67PUKhGY" role="3cqZAp">
              <node concept="3clFbT" id="7Q_67PUKh_L" role="3tpDZB" />
              <node concept="2OqwBi" id="7Q_67PUKhBt" role="3tpDZA">
                <node concept="37vLTw" id="7Q_67PUKhAK" role="2Oq$k0">
                  <ref role="3cqZAo" node="7Q_67PUKh$V" resolve="ambiguous" />
                </node>
                <node concept="liA8E" id="7Q_67PUKhBu" role="2OqNvi">
                  <ref role="37wK5l" to="gzg6:7Q_67PUJ1Rd" resolve="applicable" />
                </node>
              </node>
              <node concept="3_1$Yv" id="7Q_67PUKhGZ" role="3_9lra">
                <node concept="Xl_RD" id="7Q_67PUKhH0" role="3_1BAH">
                  <property role="Xl_RC" value="ambiguousAdoptionIsBlocked: preserve ownership, identities, and unrelated content" />
                </node>
              </node>
            </node>
            <node concept="3vlDli" id="7Q_67PUKhH1" role="3cqZAp">
              <node concept="3clFbT" id="7Q_67PUKh_O" role="3tpDZB">
                <property role="3clFbU" value="true" />
              </node>
              <node concept="2OqwBi" id="7Q_67PUKhGu" role="3tpDZA">
                <node concept="2OqwBi" id="7Q_67PUKhF9" role="2Oq$k0">
                  <node concept="2OqwBi" id="7Q_67PUKhBT" role="2Oq$k0">
                    <node concept="37vLTw" id="7Q_67PUKhB2" role="2Oq$k0">
                      <ref role="3cqZAo" node="7Q_67PUKh$V" resolve="ambiguous" />
                    </node>
                    <node concept="liA8E" id="7Q_67PUKhBU" role="2OqNvi">
                      <ref role="37wK5l" to="gzg6:7Q_67PUJ1R6" resolve="conflicts" />
                    </node>
                  </node>
                  <node concept="liA8E" id="7Q_67PUKhFa" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                    <node concept="3cmrfG" id="7Q_67PUKhFb" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="7Q_67PUKhGv" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.startsWith(java.lang.String)" resolve="startsWith" />
                  <node concept="Xl_RD" id="7Q_67PUKhGw" role="37wK5m">
                    <property role="Xl_RC" value="MBNF_AMBIGUOUS_ADOPTION:" />
                  </node>
                </node>
              </node>
              <node concept="3_1$Yv" id="7Q_67PUKhH2" role="3_9lra">
                <node concept="Xl_RD" id="7Q_67PUKhH3" role="3_1BAH">
                  <property role="Xl_RC" value="ambiguousAdoptionIsBlocked: preserve ownership, identities, and unrelated content" />
                </node>
              </node>
            </node>
            <node concept="3$NI$W" id="7Q_67PUKhH7" role="3cqZAp">
              <node concept="3clFbF" id="7Q_67PUKh_b" role="3$Oloe">
                <node concept="2OqwBi" id="7Q_67PUKhBe" role="3clFbG">
                  <node concept="37vLTw" id="7Q_67PUKh_U" role="2Oq$k0">
                    <ref role="3cqZAo" node="7Q_67PUKh$G" resolve="s" />
                  </node>
                  <node concept="liA8E" id="7Q_67PUKhBf" role="2OqNvi">
                    <ref role="37wK5l" node="7Q_67PUKgif" resolve="apply" />
                    <node concept="37vLTw" id="7Q_67PUKhBg" role="37wK5m">
                      <ref role="3cqZAo" node="7Q_67PUKh$V" resolve="ambiguous" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3uibUv" id="7Q_67PUKhH8" role="3$Qgvv">
                <ref role="3uigEE" to="wyt6:~IllegalStateException" resolve="IllegalStateException" />
              </node>
              <node concept="3_1$Yv" id="7Q_67PUKhH9" role="3_9lra">
                <node concept="Xl_RD" id="7Q_67PUKhHa" role="3_1BAH">
                  <property role="Xl_RC" value="ambiguousAdoptionIsBlocked: unsafe application must fail before mutation" />
                </node>
              </node>
            </node>
            <node concept="3vlDli" id="7Q_67PUKhH4" role="3cqZAp">
              <node concept="37vLTw" id="7Q_67PUKh_Y" role="3tpDZB">
                <ref role="3cqZAo" node="7Q_67PUKh$R" resolve="initial" />
              </node>
              <node concept="2OqwBi" id="7Q_67PUKhC5" role="3tpDZA">
                <node concept="37vLTw" id="7Q_67PUKhBh" role="2Oq$k0">
                  <ref role="3cqZAo" node="7Q_67PUKh$G" resolve="s" />
                </node>
                <node concept="liA8E" id="7Q_67PUKhC6" role="2OqNvi">
                  <ref role="37wK5l" node="7Q_67PUKgj5" resolve="state" />
                </node>
              </node>
              <node concept="3_1$Yv" id="7Q_67PUKhH5" role="3_9lra">
                <node concept="Xl_RD" id="7Q_67PUKhH6" role="3_1BAH">
                  <property role="Xl_RC" value="ambiguousAdoptionIsBlocked: preserve ownership, identities, and unrelated content" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="7Q_67PUKmbj" role="1SL9yI">
      <property role="TrG5h" value="legacyConflictIsBlocked" />
      <node concept="3cqZAl" id="7Q_67PUKhHc" role="3clF45" />
      <node concept="3clFbS" id="7Q_67PUKhHd" role="3clF47">
        <node concept="3cpWs8" id="7Q_67PUKhHg" role="3cqZAp">
          <node concept="3cpWsn" id="7Q_67PUKhHf" role="3cpWs9">
            <property role="TrG5h" value="s" />
            <node concept="3uibUv" id="7Q_67PUKhHh" role="1tU5fm">
              <ref role="3uigEE" node="7Q_67PUKggd" resolve="RegenerationScenario" />
            </node>
            <node concept="2ShNRf" id="7Q_67PUKhHV" role="33vP2m">
              <node concept="1pGfFk" id="7Q_67PUKhI7" role="2ShVmc">
                <ref role="37wK5l" node="7Q_67PUKggJ" resolve="RegenerationScenario" />
                <node concept="3xONca" id="7Q_67PUKhPv" role="37wK5m">
                  <ref role="3xOPvv" node="7Q_67PUKh5A" resolve="OwnershipFixture" />
                </node>
                <node concept="3xONca" id="7Q_67PUKhPw" role="37wK5m">
                  <ref role="3xOPvv" node="7Q_67PUKh5C" resolve="OwnedNumber" />
                </node>
                <node concept="3clFbT" id="7Q_67PUKhIa" role="37wK5m">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="7Q_67PUKhHT" role="3cqZAp">
          <node concept="1wplmZ" id="7Q_67PUKhHU" role="1zxBo6">
            <node concept="3clFbS" id="7Q_67PUKhHQ" role="1wplMD">
              <node concept="3clFbF" id="7Q_67PUKhHR" role="3cqZAp">
                <node concept="2OqwBi" id="7Q_67PUKhIH" role="3clFbG">
                  <node concept="37vLTw" id="7Q_67PUKhIb" role="2Oq$k0">
                    <ref role="3cqZAo" node="7Q_67PUKhHf" resolve="s" />
                  </node>
                  <node concept="liA8E" id="7Q_67PUKhII" role="2OqNvi">
                    <ref role="37wK5l" node="7Q_67PUKglJ" resolve="dispose" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="7Q_67PUKhHn" role="1zxBo7">
            <node concept="3clFbF" id="7Q_67PUKhHo" role="3cqZAp">
              <node concept="2OqwBi" id="7Q_67PUKhIT" role="3clFbG">
                <node concept="37vLTw" id="7Q_67PUKhId" role="2Oq$k0">
                  <ref role="3cqZAo" node="7Q_67PUKhHf" resolve="s" />
                </node>
                <node concept="liA8E" id="7Q_67PUKhIU" role="2OqNvi">
                  <ref role="37wK5l" node="7Q_67PUKgku" resolve="editOwnedRoot" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="7Q_67PUKhHr" role="3cqZAp">
              <node concept="3cpWsn" id="7Q_67PUKhHq" role="3cpWs9">
                <property role="TrG5h" value="initial" />
                <node concept="3uibUv" id="7Q_67PUKhHs" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
                <node concept="2OqwBi" id="7Q_67PUKhJ5" role="33vP2m">
                  <node concept="37vLTw" id="7Q_67PUKhIf" role="2Oq$k0">
                    <ref role="3cqZAo" node="7Q_67PUKhHf" resolve="s" />
                  </node>
                  <node concept="liA8E" id="7Q_67PUKhJ6" role="2OqNvi">
                    <ref role="37wK5l" node="7Q_67PUKgj5" resolve="state" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="7Q_67PUKhHv" role="3cqZAp">
              <node concept="3cpWsn" id="7Q_67PUKhHu" role="3cpWs9">
                <property role="TrG5h" value="conflict" />
                <node concept="3uibUv" id="7Q_67PUKhHw" role="1tU5fm">
                  <ref role="3uigEE" to="gzg6:7Q_67PUJ1Pf" resolve="ProtectedRegeneration.Preview" />
                </node>
                <node concept="2OqwBi" id="7Q_67PUKhJh" role="33vP2m">
                  <node concept="37vLTw" id="7Q_67PUKhIh" role="2Oq$k0">
                    <ref role="3cqZAo" node="7Q_67PUKhHf" resolve="s" />
                  </node>
                  <node concept="liA8E" id="7Q_67PUKhJi" role="2OqNvi">
                    <ref role="37wK5l" node="7Q_67PUKgi3" resolve="preview" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3vlDli" id="7Q_67PUKhPx" role="3cqZAp">
              <node concept="3clFbT" id="7Q_67PUKhIk" role="3tpDZB" />
              <node concept="2OqwBi" id="7Q_67PUKhK0" role="3tpDZA">
                <node concept="37vLTw" id="7Q_67PUKhJj" role="2Oq$k0">
                  <ref role="3cqZAo" node="7Q_67PUKhHu" resolve="conflict" />
                </node>
                <node concept="liA8E" id="7Q_67PUKhK1" role="2OqNvi">
                  <ref role="37wK5l" to="gzg6:7Q_67PUJ1Rd" resolve="applicable" />
                </node>
              </node>
              <node concept="3_1$Yv" id="7Q_67PUKhPy" role="3_9lra">
                <node concept="Xl_RD" id="7Q_67PUKhPz" role="3_1BAH">
                  <property role="Xl_RC" value="legacyConflictIsBlocked: preserve ownership, identities, and unrelated content" />
                </node>
              </node>
            </node>
            <node concept="3vlDli" id="7Q_67PUKhP$" role="3cqZAp">
              <node concept="3clFbT" id="7Q_67PUKhIn" role="3tpDZB">
                <property role="3clFbU" value="true" />
              </node>
              <node concept="2OqwBi" id="7Q_67PUKhP1" role="3tpDZA">
                <node concept="2OqwBi" id="7Q_67PUKhNG" role="2Oq$k0">
                  <node concept="2OqwBi" id="7Q_67PUKhKs" role="2Oq$k0">
                    <node concept="37vLTw" id="7Q_67PUKhJ_" role="2Oq$k0">
                      <ref role="3cqZAo" node="7Q_67PUKhHu" resolve="conflict" />
                    </node>
                    <node concept="liA8E" id="7Q_67PUKhKt" role="2OqNvi">
                      <ref role="37wK5l" to="gzg6:7Q_67PUJ1R6" resolve="conflicts" />
                    </node>
                  </node>
                  <node concept="liA8E" id="7Q_67PUKhNH" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                    <node concept="3cmrfG" id="7Q_67PUKhNI" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="7Q_67PUKhP2" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.startsWith(java.lang.String)" resolve="startsWith" />
                  <node concept="Xl_RD" id="7Q_67PUKhP3" role="37wK5m">
                    <property role="Xl_RC" value="MBNF_ADOPTION_CONFLICT:" />
                  </node>
                </node>
              </node>
              <node concept="3_1$Yv" id="7Q_67PUKhP_" role="3_9lra">
                <node concept="Xl_RD" id="7Q_67PUKhPA" role="3_1BAH">
                  <property role="Xl_RC" value="legacyConflictIsBlocked: preserve ownership, identities, and unrelated content" />
                </node>
              </node>
            </node>
            <node concept="3$NI$W" id="7Q_67PUKhPE" role="3cqZAp">
              <node concept="3clFbF" id="7Q_67PUKhHI" role="3$Oloe">
                <node concept="2OqwBi" id="7Q_67PUKhJL" role="3clFbG">
                  <node concept="37vLTw" id="7Q_67PUKhIt" role="2Oq$k0">
                    <ref role="3cqZAo" node="7Q_67PUKhHf" resolve="s" />
                  </node>
                  <node concept="liA8E" id="7Q_67PUKhJM" role="2OqNvi">
                    <ref role="37wK5l" node="7Q_67PUKgif" resolve="apply" />
                    <node concept="37vLTw" id="7Q_67PUKhJN" role="37wK5m">
                      <ref role="3cqZAo" node="7Q_67PUKhHu" resolve="conflict" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3uibUv" id="7Q_67PUKhPF" role="3$Qgvv">
                <ref role="3uigEE" to="wyt6:~IllegalStateException" resolve="IllegalStateException" />
              </node>
              <node concept="3_1$Yv" id="7Q_67PUKhPG" role="3_9lra">
                <node concept="Xl_RD" id="7Q_67PUKhPH" role="3_1BAH">
                  <property role="Xl_RC" value="legacyConflictIsBlocked: unsafe application must fail before mutation" />
                </node>
              </node>
            </node>
            <node concept="3vlDli" id="7Q_67PUKhPB" role="3cqZAp">
              <node concept="37vLTw" id="7Q_67PUKhIx" role="3tpDZB">
                <ref role="3cqZAo" node="7Q_67PUKhHq" resolve="initial" />
              </node>
              <node concept="2OqwBi" id="7Q_67PUKhKC" role="3tpDZA">
                <node concept="37vLTw" id="7Q_67PUKhJO" role="2Oq$k0">
                  <ref role="3cqZAo" node="7Q_67PUKhHf" resolve="s" />
                </node>
                <node concept="liA8E" id="7Q_67PUKhKD" role="2OqNvi">
                  <ref role="37wK5l" node="7Q_67PUKgj5" resolve="state" />
                </node>
              </node>
              <node concept="3_1$Yv" id="7Q_67PUKhPC" role="3_9lra">
                <node concept="Xl_RD" id="7Q_67PUKhPD" role="3_1BAH">
                  <property role="Xl_RC" value="legacyConflictIsBlocked: preserve ownership, identities, and unrelated content" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="694jTX_3lVy" role="1SL9yI">
      <property role="TrG5h" value="unavailableProfileIsRejected" />
      <node concept="3cqZAl" id="694jTX_3lVz" role="3clF45" />
      <node concept="3clFbS" id="694jTX_3lV$" role="3clF47">
        <node concept="3cpWs8" id="694jTX_3lV_" role="3cqZAp">
          <node concept="3cpWsn" id="694jTX_3lVA" role="3cpWs9">
            <property role="TrG5h" value="s" />
            <node concept="3uibUv" id="694jTX_3lVB" role="1tU5fm">
              <ref role="3uigEE" node="7Q_67PUKggd" resolve="RegenerationScenario" />
            </node>
            <node concept="2ShNRf" id="694jTX_3lVC" role="33vP2m">
              <node concept="1pGfFk" id="694jTX_3lVD" role="2ShVmc">
                <ref role="37wK5l" node="7Q_67PUKggJ" resolve="RegenerationScenario" />
                <node concept="3xONca" id="694jTX_3lVE" role="37wK5m">
                  <ref role="3xOPvv" node="7Q_67PUKh5A" resolve="OwnershipFixture" />
                </node>
                <node concept="3xONca" id="694jTX_3lVF" role="37wK5m">
                  <ref role="3xOPvv" node="7Q_67PUKh5C" resolve="OwnedNumber" />
                </node>
                <node concept="3clFbT" id="694jTX_3lVG" role="37wK5m">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="694jTX_3lVY" role="3cqZAp">
          <node concept="1wplmZ" id="694jTX_3lVZ" role="1zxBo6">
            <node concept="3clFbS" id="694jTX_3lVV" role="1wplMD">
              <node concept="3clFbF" id="694jTX_3lVW" role="3cqZAp">
                <node concept="2OqwBi" id="694jTX_3lWj" role="3clFbG">
                  <node concept="37vLTw" id="694jTX_3lW0" role="2Oq$k0">
                    <ref role="3cqZAo" node="694jTX_3lVA" resolve="s" />
                  </node>
                  <node concept="liA8E" id="694jTX_3lWk" role="2OqNvi">
                    <ref role="37wK5l" node="7Q_67PUKglJ" resolve="dispose" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="694jTX_3lVJ" role="1zxBo7">
            <node concept="3cpWs8" id="694jTX_3lVL" role="3cqZAp">
              <node concept="3cpWsn" id="694jTX_3lVK" role="3cpWs9">
                <property role="TrG5h" value="initial" />
                <node concept="3uibUv" id="694jTX_3lVM" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
                <node concept="2OqwBi" id="694jTX_3lWv" role="33vP2m">
                  <node concept="37vLTw" id="694jTX_3lW2" role="2Oq$k0">
                    <ref role="3cqZAo" node="694jTX_3lVA" resolve="s" />
                  </node>
                  <node concept="liA8E" id="694jTX_3lWw" role="2OqNvi">
                    <ref role="37wK5l" node="7Q_67PUKgj5" resolve="state" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3$NI$W" id="694jTX_3mt_" role="3cqZAp">
              <node concept="3clFbF" id="694jTX_3lVO" role="3$Oloe">
                <node concept="2OqwBi" id="694jTX_3lWF" role="3clFbG">
                  <node concept="37vLTw" id="694jTX_3lW4" role="2Oq$k0">
                    <ref role="3cqZAo" node="694jTX_3lVA" resolve="s" />
                  </node>
                  <node concept="liA8E" id="694jTX_3lWG" role="2OqNvi">
                    <ref role="37wK5l" node="694jTX_3lL4" resolve="unavailableProfile" />
                  </node>
                </node>
              </node>
              <node concept="3uibUv" id="694jTX_3mtA" role="3$Qgvv">
                <ref role="3uigEE" to="wyt6:~IllegalStateException" resolve="IllegalStateException" />
              </node>
              <node concept="3_1$Yv" id="694jTX_3mtB" role="3_9lra">
                <node concept="Xl_RD" id="694jTX_3mtC" role="3_1BAH">
                  <property role="Xl_RC" value="Invalid metadata or unavailable profile must be rejected" />
                </node>
              </node>
            </node>
            <node concept="3vlDli" id="694jTX_3mty" role="3cqZAp">
              <node concept="37vLTw" id="694jTX_3lW7" role="3tpDZB">
                <ref role="3cqZAo" node="694jTX_3lVK" resolve="initial" />
              </node>
              <node concept="2OqwBi" id="694jTX_3lWT" role="3tpDZA">
                <node concept="37vLTw" id="694jTX_3lWH" role="2Oq$k0">
                  <ref role="3cqZAo" node="694jTX_3lVA" resolve="s" />
                </node>
                <node concept="liA8E" id="694jTX_3lWU" role="2OqNvi">
                  <ref role="37wK5l" node="7Q_67PUKgj5" resolve="state" />
                </node>
              </node>
              <node concept="3_1$Yv" id="694jTX_3mtz" role="3_9lra">
                <node concept="Xl_RD" id="694jTX_3mt$" role="3_1BAH">
                  <property role="Xl_RC" value="Deterministic fingerprints and rejected profiles must preserve their explicit contract" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="694jTX_6eX9" role="1SL9yI">
      <property role="TrG5h" value="nonGrammarSourceIsRejected" />
      <node concept="3cqZAl" id="694jTX_6eXa" role="3clF45" />
      <node concept="3clFbS" id="694jTX_6eXb" role="3clF47">
        <node concept="3cpWs8" id="694jTX_6eXc" role="3cqZAp">
          <node concept="3cpWsn" id="694jTX_6eXd" role="3cpWs9">
            <property role="TrG5h" value="s" />
            <node concept="3uibUv" id="694jTX_6eXe" role="1tU5fm">
              <ref role="3uigEE" node="7Q_67PUKggd" resolve="RegenerationScenario" />
            </node>
            <node concept="2ShNRf" id="694jTX_6eXf" role="33vP2m">
              <node concept="1pGfFk" id="694jTX_6eXg" role="2ShVmc">
                <ref role="37wK5l" node="7Q_67PUKggJ" resolve="RegenerationScenario" />
                <node concept="3xONca" id="694jTX_6eXh" role="37wK5m">
                  <ref role="3xOPvv" node="7Q_67PUKh5A" resolve="OwnershipFixture" />
                </node>
                <node concept="3xONca" id="694jTX_6eXi" role="37wK5m">
                  <ref role="3xOPvv" node="7Q_67PUKh5C" resolve="OwnedNumber" />
                </node>
                <node concept="3clFbT" id="694jTX_6eXj" role="37wK5m">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="694jTX_6eXk" role="3cqZAp">
          <node concept="1wplmZ" id="694jTX_6eXl" role="1zxBo6">
            <node concept="3clFbS" id="694jTX_6eXm" role="1wplMD">
              <node concept="3clFbF" id="694jTX_6eXn" role="3cqZAp">
                <node concept="2OqwBi" id="694jTX_6eXo" role="3clFbG">
                  <node concept="37vLTw" id="694jTX_6eXp" role="2Oq$k0">
                    <ref role="3cqZAo" node="694jTX_6eXd" resolve="s" />
                  </node>
                  <node concept="liA8E" id="694jTX_6eXq" role="2OqNvi">
                    <ref role="37wK5l" node="7Q_67PUKglJ" resolve="dispose" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="694jTX_6eXr" role="1zxBo7">
            <node concept="3cpWs8" id="694jTX_6eXs" role="3cqZAp">
              <node concept="3cpWsn" id="694jTX_6eXt" role="3cpWs9">
                <property role="TrG5h" value="initial" />
                <node concept="3uibUv" id="694jTX_6eXu" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
                <node concept="2OqwBi" id="694jTX_6eXv" role="33vP2m">
                  <node concept="37vLTw" id="694jTX_6eXw" role="2Oq$k0">
                    <ref role="3cqZAo" node="694jTX_6eXd" resolve="s" />
                  </node>
                  <node concept="liA8E" id="694jTX_6eXx" role="2OqNvi">
                    <ref role="37wK5l" node="7Q_67PUKgj5" resolve="state" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3$NI$W" id="694jTX_6eXy" role="3cqZAp">
              <node concept="3clFbF" id="694jTX_6eXz" role="3$Oloe">
                <node concept="2OqwBi" id="694jTX_6eX$" role="3clFbG">
                  <node concept="37vLTw" id="694jTX_6eX_" role="2Oq$k0">
                    <ref role="3cqZAo" node="694jTX_6eXd" resolve="s" />
                  </node>
                  <node concept="liA8E" id="694jTX_6eXA" role="2OqNvi">
                    <ref role="37wK5l" node="694jTX_6eTv" resolve="nonGrammarInput" />
                  </node>
                </node>
              </node>
              <node concept="3uibUv" id="694jTX_6eXB" role="3$Qgvv">
                <ref role="3uigEE" to="wyt6:~IllegalStateException" resolve="IllegalStateException" />
              </node>
              <node concept="3_1$Yv" id="694jTX_6eXC" role="3_9lra">
                <node concept="Xl_RD" id="694jTX_6eXD" role="3_1BAH">
                  <property role="Xl_RC" value="Invalid metadata or unavailable profile must be rejected" />
                </node>
              </node>
            </node>
            <node concept="3vlDli" id="694jTX_6eXE" role="3cqZAp">
              <node concept="37vLTw" id="694jTX_6eXF" role="3tpDZB">
                <ref role="3cqZAo" node="694jTX_6eXt" resolve="initial" />
              </node>
              <node concept="2OqwBi" id="694jTX_6eXG" role="3tpDZA">
                <node concept="37vLTw" id="694jTX_6eXH" role="2Oq$k0">
                  <ref role="3cqZAo" node="694jTX_6eXd" resolve="s" />
                </node>
                <node concept="liA8E" id="694jTX_6eXI" role="2OqNvi">
                  <ref role="37wK5l" node="7Q_67PUKgj5" resolve="state" />
                </node>
              </node>
              <node concept="3_1$Yv" id="694jTX_6eXJ" role="3_9lra">
                <node concept="Xl_RD" id="694jTX_6eXK" role="3_1BAH">
                  <property role="Xl_RC" value="Deterministic fingerprints and rejected profiles must preserve their explicit contract" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3s_ewN" id="694jTX_3lX4">
    <property role="TrG5h" value="GenerationFingerprints" />
    <property role="3s_ewP" value="GenerationFingerprints" />
    <node concept="3Tm1VV" id="694jTX_3lX5" role="1B3o_S" />
    <node concept="3s_gsd" id="694jTX_3lX6" role="3s_ewO">
      <node concept="3s$Bmu" id="694jTX_3lX7" role="3s_gse">
        <property role="TrG5h" value="mapOrderIndependent" />
        <property role="3s$Bm0" value="mapOrderIndependent" />
        <node concept="3cqZAl" id="694jTX_3lX8" role="3clF45" />
        <node concept="3Tm1VV" id="694jTX_3lX9" role="1B3o_S" />
        <node concept="3clFbS" id="694jTX_3lXa" role="3clF47">
          <node concept="3cpWs8" id="694jTX_3lXd" role="3cqZAp">
            <node concept="3cpWsn" id="694jTX_3lXc" role="3cpWs9">
              <property role="TrG5h" value="first" />
              <node concept="3uibUv" id="694jTX_3lXe" role="1tU5fm">
                <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
                <node concept="3uibUv" id="694jTX_3lXf" role="11_B2D">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
                <node concept="3uibUv" id="694jTX_3lXg" role="11_B2D">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                </node>
              </node>
              <node concept="2ShNRf" id="694jTX_3lXQ" role="33vP2m">
                <node concept="1pGfFk" id="694jTX_3lXU" role="2ShVmc">
                  <property role="373rjd" value="true" />
                  <ref role="37wK5l" to="33ny:~LinkedHashMap.&lt;init&gt;()" resolve="LinkedHashMap" />
                  <node concept="3uibUv" id="694jTX_3lXV" role="1pMfVU">
                    <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                  </node>
                  <node concept="3uibUv" id="694jTX_3lXW" role="1pMfVU">
                    <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="694jTX_3lXk" role="3cqZAp">
            <node concept="2OqwBi" id="694jTX_3m2m" role="3clFbG">
              <node concept="37vLTw" id="694jTX_3lXZ" role="2Oq$k0">
                <ref role="3cqZAo" node="694jTX_3lXc" resolve="first" />
              </node>
              <node concept="liA8E" id="694jTX_3m2n" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
                <node concept="Xl_RD" id="694jTX_3m2o" role="37wK5m">
                  <property role="Xl_RC" value="one" />
                </node>
                <node concept="2YIFZM" id="694jTX_3me1" role="37wK5m">
                  <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
                  <ref role="37wK5l" to="33ny:~Arrays.asList(java.lang.Object...)" resolve="asList" />
                  <node concept="Xl_RD" id="694jTX_3me2" role="37wK5m">
                    <property role="Xl_RC" value="x" />
                  </node>
                  <node concept="3clFbT" id="694jTX_3me3" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="694jTX_3lXq" role="3cqZAp">
            <node concept="2OqwBi" id="694jTX_3m6b" role="3clFbG">
              <node concept="37vLTw" id="694jTX_3lY7" role="2Oq$k0">
                <ref role="3cqZAo" node="694jTX_3lXc" resolve="first" />
              </node>
              <node concept="liA8E" id="694jTX_3m6c" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
                <node concept="Xl_RD" id="694jTX_3m6d" role="37wK5m">
                  <property role="Xl_RC" value="two" />
                </node>
                <node concept="3cmrfG" id="694jTX_3m6e" role="37wK5m">
                  <property role="3cmrfH" value="2" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="694jTX_3lXv" role="3cqZAp">
            <node concept="3cpWsn" id="694jTX_3lXu" role="3cpWs9">
              <property role="TrG5h" value="second" />
              <node concept="3uibUv" id="694jTX_3lXw" role="1tU5fm">
                <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
                <node concept="3uibUv" id="694jTX_3lXx" role="11_B2D">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
                <node concept="3uibUv" id="694jTX_3lXy" role="11_B2D">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                </node>
              </node>
              <node concept="2ShNRf" id="694jTX_3lYb" role="33vP2m">
                <node concept="1pGfFk" id="694jTX_3lYf" role="2ShVmc">
                  <property role="373rjd" value="true" />
                  <ref role="37wK5l" to="33ny:~LinkedHashMap.&lt;init&gt;()" resolve="LinkedHashMap" />
                  <node concept="3uibUv" id="694jTX_3lYg" role="1pMfVU">
                    <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                  </node>
                  <node concept="3uibUv" id="694jTX_3lYh" role="1pMfVU">
                    <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="694jTX_3lXA" role="3cqZAp">
            <node concept="2OqwBi" id="694jTX_3m9Y" role="3clFbG">
              <node concept="37vLTw" id="694jTX_3lYk" role="2Oq$k0">
                <ref role="3cqZAo" node="694jTX_3lXu" resolve="second" />
              </node>
              <node concept="liA8E" id="694jTX_3m9Z" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
                <node concept="Xl_RD" id="694jTX_3ma0" role="37wK5m">
                  <property role="Xl_RC" value="two" />
                </node>
                <node concept="3cmrfG" id="694jTX_3ma1" role="37wK5m">
                  <property role="3cmrfH" value="2" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="694jTX_3lXE" role="3cqZAp">
            <node concept="2OqwBi" id="694jTX_3mdL" role="3clFbG">
              <node concept="37vLTw" id="694jTX_3lYq" role="2Oq$k0">
                <ref role="3cqZAo" node="694jTX_3lXu" resolve="second" />
              </node>
              <node concept="liA8E" id="694jTX_3mdM" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
                <node concept="Xl_RD" id="694jTX_3mdN" role="37wK5m">
                  <property role="Xl_RC" value="one" />
                </node>
                <node concept="2YIFZM" id="694jTX_3me6" role="37wK5m">
                  <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
                  <ref role="37wK5l" to="33ny:~Arrays.asList(java.lang.Object...)" resolve="asList" />
                  <node concept="Xl_RD" id="694jTX_3me7" role="37wK5m">
                    <property role="Xl_RC" value="x" />
                  </node>
                  <node concept="3clFbT" id="694jTX_3me8" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3vlDli" id="694jTX_3mtD" role="3cqZAp">
            <node concept="2YIFZM" id="694jTX_3mdT" role="3tpDZB">
              <ref role="1Pybhc" to="gzg6:7Q_67PUJ1Pd" resolve="ProtectedRegeneration" />
              <ref role="37wK5l" to="gzg6:694jTX$ZyXq" resolve="fingerprint" />
              <node concept="37vLTw" id="694jTX_3mdU" role="37wK5m">
                <ref role="3cqZAo" node="694jTX_3lXc" resolve="first" />
              </node>
            </node>
            <node concept="2YIFZM" id="694jTX_3mdX" role="3tpDZA">
              <ref role="1Pybhc" to="gzg6:7Q_67PUJ1Pd" resolve="ProtectedRegeneration" />
              <ref role="37wK5l" to="gzg6:694jTX$ZyXq" resolve="fingerprint" />
              <node concept="37vLTw" id="694jTX_3mdY" role="37wK5m">
                <ref role="3cqZAo" node="694jTX_3lXu" resolve="second" />
              </node>
            </node>
            <node concept="3_1$Yv" id="694jTX_3mtE" role="3_9lra">
              <node concept="Xl_RD" id="694jTX_3mtF" role="3_1BAH">
                <property role="Xl_RC" value="Deterministic fingerprints and rejected profiles must preserve their explicit contract" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="694jTX_3mgS" role="3s_gse">
        <property role="TrG5h" value="scalarTypesAreDistinct" />
        <property role="3s$Bm0" value="scalarTypesAreDistinct" />
        <node concept="3cqZAl" id="694jTX_3mgT" role="3clF45" />
        <node concept="3Tm1VV" id="694jTX_3mgU" role="1B3o_S" />
        <node concept="3clFbS" id="694jTX_3mgV" role="3clF47">
          <node concept="3vlDli" id="694jTX_3mtG" role="3cqZAp">
            <node concept="3clFbT" id="694jTX_3mhg" role="3tpDZB" />
            <node concept="2OqwBi" id="694jTX_3mjG" role="3tpDZA">
              <node concept="2YIFZM" id="694jTX_3mhD" role="2Oq$k0">
                <ref role="1Pybhc" to="gzg6:7Q_67PUJ1Pd" resolve="ProtectedRegeneration" />
                <ref role="37wK5l" to="gzg6:694jTX$ZyXq" resolve="fingerprint" />
                <node concept="Xl_RD" id="694jTX_3mhE" role="37wK5m">
                  <property role="Xl_RC" value="1" />
                </node>
              </node>
              <node concept="liA8E" id="694jTX_3mjH" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                <node concept="2YIFZM" id="694jTX_3mjI" role="37wK5m">
                  <ref role="1Pybhc" to="gzg6:7Q_67PUJ1Pd" resolve="ProtectedRegeneration" />
                  <ref role="37wK5l" to="gzg6:694jTX$ZyXq" resolve="fingerprint" />
                  <node concept="3cmrfG" id="694jTX_3mjJ" role="37wK5m">
                    <property role="3cmrfH" value="1" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3_1$Yv" id="694jTX_3mtH" role="3_9lra">
              <node concept="Xl_RD" id="694jTX_3mtI" role="3_1BAH">
                <property role="Xl_RC" value="Deterministic fingerprints and rejected profiles must preserve their explicit contract" />
              </node>
            </node>
          </node>
          <node concept="3vlDli" id="694jTX_3mtJ" role="3cqZAp">
            <node concept="3clFbT" id="694jTX_3mhp" role="3tpDZB" />
            <node concept="2OqwBi" id="694jTX_3mm8" role="3tpDZA">
              <node concept="2YIFZM" id="694jTX_3mhT" role="2Oq$k0">
                <ref role="1Pybhc" to="gzg6:7Q_67PUJ1Pd" resolve="ProtectedRegeneration" />
                <ref role="37wK5l" to="gzg6:694jTX$ZyXq" resolve="fingerprint" />
                <node concept="10Nm6u" id="694jTX_3mhU" role="37wK5m" />
              </node>
              <node concept="liA8E" id="694jTX_3mm9" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                <node concept="2YIFZM" id="694jTX_3mma" role="37wK5m">
                  <ref role="1Pybhc" to="gzg6:7Q_67PUJ1Pd" resolve="ProtectedRegeneration" />
                  <ref role="37wK5l" to="gzg6:694jTX$ZyXq" resolve="fingerprint" />
                  <node concept="Xl_RD" id="694jTX_3mmb" role="37wK5m">
                    <property role="Xl_RC" value="null;" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3_1$Yv" id="694jTX_3mtK" role="3_9lra">
              <node concept="Xl_RD" id="694jTX_3mtL" role="3_1BAH">
                <property role="Xl_RC" value="Deterministic fingerprints and rejected profiles must preserve their explicit contract" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="694jTX_3mov" role="3s_gse">
        <property role="TrG5h" value="invalidMapKeysAreRejected" />
        <property role="3s$Bm0" value="invalidMapKeysAreRejected" />
        <node concept="3cqZAl" id="694jTX_3mow" role="3clF45" />
        <node concept="3Tm1VV" id="694jTX_3mox" role="1B3o_S" />
        <node concept="3clFbS" id="694jTX_3moy" role="3clF47">
          <node concept="3cpWs8" id="694jTX_3mo_" role="3cqZAp">
            <node concept="3cpWsn" id="694jTX_3mo$" role="3cpWs9">
              <property role="TrG5h" value="invalid" />
              <node concept="3uibUv" id="694jTX_3moA" role="1tU5fm">
                <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
                <node concept="3uibUv" id="694jTX_3moB" role="11_B2D">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                </node>
                <node concept="3uibUv" id="694jTX_3moC" role="11_B2D">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                </node>
              </node>
              <node concept="2ShNRf" id="694jTX_3moN" role="33vP2m">
                <node concept="1pGfFk" id="694jTX_3moR" role="2ShVmc">
                  <property role="373rjd" value="true" />
                  <ref role="37wK5l" to="33ny:~LinkedHashMap.&lt;init&gt;()" resolve="LinkedHashMap" />
                  <node concept="3uibUv" id="694jTX_3moS" role="1pMfVU">
                    <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                  </node>
                  <node concept="3uibUv" id="694jTX_3moT" role="1pMfVU">
                    <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="694jTX_3moG" role="3cqZAp">
            <node concept="2OqwBi" id="694jTX_3msN" role="3clFbG">
              <node concept="37vLTw" id="694jTX_3moW" role="2Oq$k0">
                <ref role="3cqZAo" node="694jTX_3mo$" resolve="invalid" />
              </node>
              <node concept="liA8E" id="694jTX_3msO" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
                <node concept="3cmrfG" id="694jTX_3msP" role="37wK5m">
                  <property role="3cmrfH" value="1" />
                </node>
                <node concept="Xl_RD" id="694jTX_3msQ" role="37wK5m">
                  <property role="Xl_RC" value="value" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3$NI$W" id="694jTX_3mtM" role="3cqZAp">
            <node concept="3clFbF" id="694jTX_3moK" role="3$Oloe">
              <node concept="2YIFZM" id="694jTX_3mp2" role="3clFbG">
                <ref role="1Pybhc" to="gzg6:7Q_67PUJ1Pd" resolve="ProtectedRegeneration" />
                <ref role="37wK5l" to="gzg6:694jTX$ZyXq" resolve="fingerprint" />
                <node concept="37vLTw" id="694jTX_3mp3" role="37wK5m">
                  <ref role="3cqZAo" node="694jTX_3mo$" resolve="invalid" />
                </node>
              </node>
            </node>
            <node concept="3uibUv" id="694jTX_3mtN" role="3$Qgvv">
              <ref role="3uigEE" to="wyt6:~IllegalStateException" resolve="IllegalStateException" />
            </node>
            <node concept="3_1$Yv" id="694jTX_3mtO" role="3_9lra">
              <node concept="Xl_RD" id="694jTX_3mtP" role="3_1BAH">
                <property role="Xl_RC" value="Invalid metadata or unavailable profile must be rejected" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

