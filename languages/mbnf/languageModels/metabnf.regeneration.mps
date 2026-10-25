<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:bd169fc2-8807-4d2c-b3fa-cc287f3c07b0(metabnf.regeneration)">
  <persistence version="9" />
  <languages>
    <use id="acfc188d-d5d6-4598-b370-6f4a983f05b2" name="jetbrains.mps.baseLanguage.methodReferences" version="0" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core" version="2" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="6o2a" ref="r:0fbcf19f-c60b-479b-81cb-094b5b2b9f1d(metabnf.structure)" />
    <import index="g2mg" ref="r:9fcf4f6d-556d-4a58-8a23-ef62c198171f(metabnf.refactorings)" />
    <import index="9toz" ref="9c03c641-469f-49e7-aeed-44a3d19b7253/java:metabnf.usability(metabnf/)" />
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="jgjw" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.security(JDK/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="fwk" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.textgen.trace(MPS.Core/)" />
    <import index="dush" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.persistence(MPS.OpenAPI/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="7x5y" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.nio.charset(JDK/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="bd8o" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.application(MPS.IDEA/)" />
    <import index="e8bb" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.adapter.ids(MPS.Core/)" />
    <import index="zn9m" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.util(MPS.IDEA/)" />
    <import index="dxuu" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing(JDK/)" />
    <import index="z1c3" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.project(MPS.Platform/)" />
    <import index="z1c4" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="r791" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing.text(JDK/)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="8118189177080264853" name="jetbrains.mps.baseLanguage.structure.AlternativeType" flags="ig" index="nSUau">
        <child id="8118189177080264854" name="alternative" index="nSUat" />
      </concept>
      <concept id="1224500764161" name="jetbrains.mps.baseLanguage.structure.BitwiseAndExpression" flags="nn" index="pVHWs" />
      <concept id="1239714755177" name="jetbrains.mps.baseLanguage.structure.AbstractUnaryNumberOperation" flags="nn" index="2$Kvd9">
        <child id="1239714902950" name="expression" index="2$L3a6" />
      </concept>
      <concept id="1173175405605" name="jetbrains.mps.baseLanguage.structure.ArrayAccessExpression" flags="nn" index="AH0OO">
        <child id="1173175577737" name="index" index="AHEQo" />
        <child id="1173175590490" name="array" index="AHHXb" />
      </concept>
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ngI" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1197029447546" name="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation" flags="nn" index="2OwXpG">
        <reference id="1197029500499" name="fieldDeclaration" index="2Oxat5" />
      </concept>
      <concept id="1083260308424" name="jetbrains.mps.baseLanguage.structure.EnumConstantReference" flags="nn" index="Rm8GO">
        <reference id="1083260308426" name="enumConstantDeclaration" index="Rm8GQ" />
        <reference id="1144432896254" name="enumClass" index="1Px2BO" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="4952749571008284462" name="jetbrains.mps.baseLanguage.structure.CatchVariable" flags="ng" index="XOnhg" />
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1164991038168" name="jetbrains.mps.baseLanguage.structure.ThrowStatement" flags="nn" index="YS8fn">
        <child id="1164991057263" name="throwable" index="YScLw" />
      </concept>
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534604311" name="jetbrains.mps.baseLanguage.structure.ByteType" flags="in" index="10PrrI" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
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
      <concept id="1081506762703" name="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" flags="nn" index="3eOSWO" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
        <child id="4972241301747169160" name="typeArgument" index="3PaCim" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk">
        <child id="1212687122400" name="typeParameter" index="1pMfVU" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1171903607971" name="jetbrains.mps.baseLanguage.structure.WildCardType" flags="in" index="3qTvmN" />
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
        <child id="8276990574886367508" name="body" index="1zxBo7" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1082113931046" name="jetbrains.mps.baseLanguage.structure.ContinueStatement" flags="nn" index="3N13vt" />
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1200397529627" name="jetbrains.mps.baseLanguage.structure.CharConstant" flags="nn" index="1Xhbcc">
        <property id="1200397540847" name="charConstant" index="1XhdNS" />
      </concept>
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
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
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="nn" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
      </concept>
      <concept id="6677504323281689838" name="jetbrains.mps.lang.smodel.structure.SConceptType" flags="in" index="3bZ5Sz" />
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
      <concept id="4222318806802425298" name="jetbrains.mps.lang.core.structure.SuppressErrorsAnnotation" flags="ng" index="15s5l7">
        <property id="8575328350543493365" name="message" index="huDt6" />
        <property id="8575328350543493371" name="comment" index="huDt8" />
        <property id="2423417345669755629" name="filter" index="1eyWvh" />
      </concept>
    </language>
    <language id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text">
      <concept id="155656958578482948" name="jetbrains.mps.lang.text.structure.Word" flags="nn" index="3oM_SD">
        <property id="155656958578482949" name="value" index="3oM_SC" />
      </concept>
      <concept id="2535923850359271782" name="jetbrains.mps.lang.text.structure.Line" flags="nn" index="1PaTwC">
        <child id="2535923850359271783" name="elements" index="1PaTwD" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="7Q_67PUJ1Pd">
    <property role="TrG5h" value="ProtectedRegeneration" />
    <node concept="3Tm1VV" id="7Q_67PUJ1Pe" role="1B3o_S" />
    <node concept="Wx3nA" id="7Q_67PUJ1St" role="jymVt">
      <property role="TrG5h" value="VERSION" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="7Q_67PUJ1Su" role="1tU5fm">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="Xl_RD" id="7Q_67PUJ1Sv" role="33vP2m">
        <property role="Xl_RC" value="1" />
      </node>
      <node concept="3Tm1VV" id="7Q_67PUJ1Sw" role="1B3o_S" />
    </node>
    <node concept="Wx3nA" id="7Q_67PUJ1Sx" role="jymVt">
      <property role="TrG5h" value="GENERATOR" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="7Q_67PUJ1Sy" role="1tU5fm">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="Xl_RD" id="7Q_67PUJ1Sz" role="33vP2m">
        <property role="Xl_RC" value="metabnf.protected-import/1" />
      </node>
      <node concept="3Tm1VV" id="7Q_67PUJ1S$" role="1B3o_S" />
    </node>
    <node concept="Wx3nA" id="7Q_67PUJ1S_" role="jymVt">
      <property role="TrG5h" value="LEDGER" />
      <property role="3TUv4t" value="true" />
      <node concept="3bZ5Sz" id="7Q_67PUJ9YQ" role="1tU5fm" />
      <node concept="3Tm6S6" id="7Q_67PUJ1SC" role="1B3o_S" />
      <node concept="35c_gC" id="7Q_67PUJ9tn" role="33vP2m">
        <ref role="35c_gD" to="6o2a:7Q_67PU$yi5" resolve="GenerationLedger" />
      </node>
    </node>
    <node concept="Wx3nA" id="7Q_67PUJ1SD" role="jymVt">
      <property role="TrG5h" value="ARTIFACT" />
      <property role="3TUv4t" value="true" />
      <node concept="3bZ5Sz" id="7Q_67PUJ9YR" role="1tU5fm" />
      <node concept="3Tm6S6" id="7Q_67PUJ1SG" role="1B3o_S" />
      <node concept="35c_gC" id="7Q_67PUJ9to" role="33vP2m">
        <ref role="35c_gD" to="6o2a:7Q_67PU$yi6" resolve="GeneratedArtifact" />
      </node>
    </node>
    <node concept="Wx3nA" id="7Q_67PUJ1SH" role="jymVt">
      <property role="TrG5h" value="VIRTUAL_PACKAGE" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="7Q_67PUJ1SI" role="1tU5fm">
        <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
      </node>
      <node concept="3Tm6S6" id="7Q_67PUJ1SK" role="1B3o_S" />
      <node concept="355D3s" id="7Q_67PUJ9ta" role="33vP2m">
        <ref role="355D3t" to="tpck:gw2VY9q" resolve="BaseConcept" />
        <ref role="355D3u" to="tpck:hnGE5uv" resolve="virtualPackage" />
      </node>
    </node>
    <node concept="Wx3nA" id="7Q_67PUJ1SL" role="jymVt">
      <property role="TrG5h" value="CONCEPT_ID" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="7Q_67PUJ1SM" role="1tU5fm">
        <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
      </node>
      <node concept="3Tm6S6" id="7Q_67PUJ1SO" role="1B3o_S" />
      <node concept="355D3s" id="7Q_67PUJ9tb" role="33vP2m">
        <ref role="355D3t" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
        <ref role="355D3u" to="tpce:5OIo7_R7SN0" resolve="conceptId" />
      </node>
    </node>
    <node concept="Wx3nA" id="7Q_67PUJ1SP" role="jymVt">
      <property role="TrG5h" value="PROPERTY_ID" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="7Q_67PUJ1SQ" role="1tU5fm">
        <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
      </node>
      <node concept="3Tm6S6" id="7Q_67PUJ1SS" role="1B3o_S" />
      <node concept="355D3s" id="7Q_67PUJ9tc" role="33vP2m">
        <ref role="355D3t" to="tpce:f_TJgxF" resolve="PropertyDeclaration" />
        <ref role="355D3u" to="tpce:dqwjwHwEjp" resolve="propertyId" />
      </node>
    </node>
    <node concept="Wx3nA" id="7Q_67PUJ1ST" role="jymVt">
      <property role="TrG5h" value="LINK_ID" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="7Q_67PUJ1SU" role="1tU5fm">
        <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
      </node>
      <node concept="3Tm6S6" id="7Q_67PUJ1SW" role="1B3o_S" />
      <node concept="355D3s" id="7Q_67PUJ9td" role="33vP2m">
        <ref role="355D3t" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
        <ref role="355D3u" to="tpce:dqwjwHwEj$" resolve="linkId" />
      </node>
    </node>
    <node concept="Wx3nA" id="7Q_67PUJ1SX" role="jymVt">
      <property role="TrG5h" value="INT_CONCEPT_ID" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="7Q_67PUJ1SY" role="1tU5fm">
        <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
      </node>
      <node concept="3Tm6S6" id="7Q_67PUJ1T0" role="1B3o_S" />
      <node concept="355D3s" id="7Q_67PUJ9te" role="33vP2m">
        <ref role="355D3t" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
        <ref role="355D3u" to="tpce:1o9qxtf9pgp" resolve="intConceptId" />
      </node>
      <node concept="15s5l7" id="7Q_67PUJ9WD" role="lGtFl">
        <property role="1eyWvh" value="FLAVOUR_MESSAGE=&quot;intConceptId is deprecated&quot;;" />
        <property role="huDt6" value="intConceptId is deprecated" />
        <property role="huDt8" value="Legacy generated concepts persist this obsolete ID; ignore it only for semantic adoption comparisons." />
      </node>
    </node>
    <node concept="Wx3nA" id="7Q_67PUJ1T1" role="jymVt">
      <property role="TrG5h" value="LEDGER_VERSION" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="7Q_67PUJ1T2" role="1tU5fm">
        <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
      </node>
      <node concept="3Tm6S6" id="7Q_67PUJ1T4" role="1B3o_S" />
      <node concept="355D3s" id="7Q_67PUJ9tf" role="33vP2m">
        <ref role="355D3t" to="6o2a:7Q_67PU$yi5" resolve="GenerationLedger" />
        <ref role="355D3u" to="6o2a:7Q_67PU$yi7" resolve="version" />
      </node>
    </node>
    <node concept="Wx3nA" id="7Q_67PUJ1T5" role="jymVt">
      <property role="TrG5h" value="LEDGER_GENERATOR" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="7Q_67PUJ1T6" role="1tU5fm">
        <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
      </node>
      <node concept="3Tm6S6" id="7Q_67PUJ1T8" role="1B3o_S" />
      <node concept="355D3s" id="7Q_67PUJ9tg" role="33vP2m">
        <ref role="355D3t" to="6o2a:7Q_67PU$yi5" resolve="GenerationLedger" />
        <ref role="355D3u" to="6o2a:7Q_67PU$yi8" resolve="generatorVersion" />
      </node>
    </node>
    <node concept="Wx3nA" id="7Q_67PUJ1T9" role="jymVt">
      <property role="TrG5h" value="LEDGER_TOOLCHAIN" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="7Q_67PUJ1Ta" role="1tU5fm">
        <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
      </node>
      <node concept="3Tm6S6" id="7Q_67PUJ1Tc" role="1B3o_S" />
      <node concept="355D3s" id="7Q_67PUJ9th" role="33vP2m">
        <ref role="355D3t" to="6o2a:7Q_67PU$yi5" resolve="GenerationLedger" />
        <ref role="355D3u" to="6o2a:7Q_67PU$yi9" resolve="toolchain" />
      </node>
    </node>
    <node concept="Wx3nA" id="7Q_67PUJ1Td" role="jymVt">
      <property role="TrG5h" value="LEDGER_INPUT" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="7Q_67PUJ1Te" role="1tU5fm">
        <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
      </node>
      <node concept="3Tm6S6" id="7Q_67PUJ1Tg" role="1B3o_S" />
      <node concept="355D3s" id="7Q_67PUJ9ti" role="33vP2m">
        <ref role="355D3t" to="6o2a:7Q_67PU$yi5" resolve="GenerationLedger" />
        <ref role="355D3u" to="6o2a:7Q_67PU$yia" resolve="inputFingerprint" />
      </node>
    </node>
    <node concept="Wx3nA" id="7Q_67PUJ1Th" role="jymVt">
      <property role="TrG5h" value="LEDGER_PROFILE" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="7Q_67PUJ1Ti" role="1tU5fm">
        <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
      </node>
      <node concept="3Tm6S6" id="7Q_67PUJ1Tk" role="1B3o_S" />
      <node concept="355D3s" id="7Q_67PUJ9tj" role="33vP2m">
        <ref role="355D3t" to="6o2a:7Q_67PU$yi5" resolve="GenerationLedger" />
        <ref role="355D3u" to="6o2a:7Q_67PU$yib" resolve="profileFingerprint" />
      </node>
    </node>
    <node concept="Wx3nA" id="7Q_67PUJ1Tl" role="jymVt">
      <property role="TrG5h" value="ARTIFACT_KEY" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="7Q_67PUJ1Tm" role="1tU5fm">
        <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
      </node>
      <node concept="3Tm6S6" id="7Q_67PUJ1To" role="1B3o_S" />
      <node concept="355D3s" id="7Q_67PUJ9tk" role="33vP2m">
        <ref role="355D3t" to="6o2a:7Q_67PU$yi6" resolve="GeneratedArtifact" />
        <ref role="355D3u" to="6o2a:7Q_67PU$yic" resolve="artifactKey" />
      </node>
    </node>
    <node concept="Wx3nA" id="7Q_67PUJ1Tp" role="jymVt">
      <property role="TrG5h" value="ARTIFACT_BASELINE" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="7Q_67PUJ1Tq" role="1tU5fm">
        <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
      </node>
      <node concept="3Tm6S6" id="7Q_67PUJ1Ts" role="1B3o_S" />
      <node concept="355D3s" id="7Q_67PUJ9tl" role="33vP2m">
        <ref role="355D3t" to="6o2a:7Q_67PU$yi6" resolve="GeneratedArtifact" />
        <ref role="355D3u" to="6o2a:7Q_67PU$yid" resolve="baseline" />
      </node>
    </node>
    <node concept="Wx3nA" id="7Q_67PUJ1Tt" role="jymVt">
      <property role="TrG5h" value="ARTIFACT_DECISION" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="7Q_67PUJ1Tu" role="1tU5fm">
        <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
      </node>
      <node concept="3Tm6S6" id="7Q_67PUJ1Tw" role="1B3o_S" />
      <node concept="355D3s" id="7Q_67PUJ9tm" role="33vP2m">
        <ref role="355D3t" to="6o2a:7Q_67PU$yi6" resolve="GeneratedArtifact" />
        <ref role="355D3u" to="6o2a:7Q_67PU$yie" resolve="decision" />
      </node>
    </node>
    <node concept="Wx3nA" id="7Q_67PUJ1Tx" role="jymVt">
      <property role="TrG5h" value="ARTIFACTS" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="7Q_67PUJ1Ty" role="1tU5fm">
        <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
      </node>
      <node concept="3Tm6S6" id="7Q_67PUJ1T$" role="1B3o_S" />
      <node concept="359W_D" id="7Q_67PUJ9tp" role="33vP2m">
        <ref role="359W_E" to="6o2a:7Q_67PU$yi5" resolve="GenerationLedger" />
        <ref role="359W_F" to="6o2a:7Q_67PU$yig" resolve="artifacts" />
      </node>
    </node>
    <node concept="Wx3nA" id="7Q_67PUJ1T_" role="jymVt">
      <property role="TrG5h" value="GRAMMAR" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="7Q_67PUJ1TA" role="1tU5fm">
        <ref role="3uigEE" to="c17a:~SReferenceLink" resolve="SReferenceLink" />
      </node>
      <node concept="3Tm6S6" id="7Q_67PUJ1TC" role="1B3o_S" />
      <node concept="359W_D" id="7Q_67PUJ9tq" role="33vP2m">
        <ref role="359W_E" to="6o2a:7Q_67PU$yi5" resolve="GenerationLedger" />
        <ref role="359W_F" to="6o2a:7Q_67PU$yif" resolve="grammar" />
      </node>
    </node>
    <node concept="Wx3nA" id="7Q_67PUJ1TD" role="jymVt">
      <property role="TrG5h" value="SOURCE" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="7Q_67PUJ1TE" role="1tU5fm">
        <ref role="3uigEE" to="c17a:~SReferenceLink" resolve="SReferenceLink" />
      </node>
      <node concept="3Tm6S6" id="7Q_67PUJ1TG" role="1B3o_S" />
      <node concept="359W_D" id="7Q_67PUJ9tr" role="33vP2m">
        <ref role="359W_E" to="6o2a:7Q_67PU$yi6" resolve="GeneratedArtifact" />
        <ref role="359W_F" to="6o2a:7Q_67PU$yih" resolve="source" />
      </node>
    </node>
    <node concept="Wx3nA" id="7Q_67PUJ1TH" role="jymVt">
      <property role="TrG5h" value="TARGET" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="7Q_67PUJ1TI" role="1tU5fm">
        <ref role="3uigEE" to="c17a:~SReferenceLink" resolve="SReferenceLink" />
      </node>
      <node concept="3Tm6S6" id="7Q_67PUJ1TK" role="1B3o_S" />
      <node concept="359W_D" id="7Q_67PUJ9ts" role="33vP2m">
        <ref role="359W_E" to="6o2a:7Q_67PU$yi6" resolve="GeneratedArtifact" />
        <ref role="359W_F" to="6o2a:7Q_67PU$yii" resolve="target" />
      </node>
    </node>
    <node concept="Wx3nA" id="7Q_67PUJ1TL" role="jymVt">
      <property role="TrG5h" value="PROFILE_GRAMMAR" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="7Q_67PUJ1TM" role="1tU5fm">
        <ref role="3uigEE" to="c17a:~SReferenceLink" resolve="SReferenceLink" />
      </node>
      <node concept="3Tm6S6" id="7Q_67PUJ1TO" role="1B3o_S" />
      <node concept="359W_D" id="7Q_67PUJ9tt" role="33vP2m">
        <ref role="359W_E" to="6o2a:14wlUfKK6zf" resolve="GenerationProfile" />
        <ref role="359W_F" to="6o2a:14wlUfKK6zi" resolve="grammar" />
      </node>
    </node>
    <node concept="312cEu" id="7Q_67PUJ1Pf" role="jymVt">
      <property role="TrG5h" value="Preview" />
      <node concept="3Tm1VV" id="7Q_67PUJ1Pg" role="1B3o_S" />
      <node concept="312cEg" id="7Q_67PUJ1Ph" role="jymVt">
        <property role="TrG5h" value="grammar" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tqbb2" id="7Q_67PUJ9YS" role="1tU5fm" />
        <node concept="3Tm6S6" id="7Q_67PUJ1Pk" role="1B3o_S" />
      </node>
      <node concept="312cEg" id="7Q_67PUJ1Pl" role="jymVt">
        <property role="TrG5h" value="generated" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="7Q_67PUJ1Pn" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3Tqbb2" id="7Q_67PUJ9YT" role="11_B2D" />
        </node>
        <node concept="3Tm6S6" id="7Q_67PUJ1Pp" role="1B3o_S" />
      </node>
      <node concept="312cEg" id="7Q_67PUJ1Pq" role="jymVt">
        <property role="TrG5h" value="targets" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="7Q_67PUJ1Ps" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="H_c77" id="7Q_67PUJ9YU" role="11_B2D" />
        </node>
        <node concept="3Tm6S6" id="7Q_67PUJ1Pu" role="1B3o_S" />
      </node>
      <node concept="312cEg" id="7Q_67PUJ1Pv" role="jymVt">
        <property role="TrG5h" value="profile" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tqbb2" id="7Q_67PUJ9YV" role="1tU5fm" />
        <node concept="3Tm6S6" id="7Q_67PUJ1Py" role="1B3o_S" />
      </node>
      <node concept="312cEg" id="7Q_67PUJ1Pz" role="jymVt">
        <property role="TrG5h" value="fingerprint" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="7Q_67PUJ1P_" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
        <node concept="3Tm6S6" id="7Q_67PUJ1PA" role="1B3o_S" />
      </node>
      <node concept="312cEg" id="7Q_67PUJ1PB" role="jymVt">
        <property role="TrG5h" value="decisions" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="7Q_67PUJ1PD" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="7Q_67PUJ1PE" role="11_B2D">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          </node>
        </node>
        <node concept="3Tm6S6" id="7Q_67PUJ1PF" role="1B3o_S" />
      </node>
      <node concept="312cEg" id="7Q_67PUJ1PG" role="jymVt">
        <property role="TrG5h" value="conflicts" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="7Q_67PUJ1PI" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="7Q_67PUJ1PJ" role="11_B2D">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          </node>
        </node>
        <node concept="3Tm6S6" id="7Q_67PUJ1PK" role="1B3o_S" />
      </node>
      <node concept="3clFbW" id="7Q_67PUJ1PL" role="jymVt">
        <node concept="3cqZAl" id="7Q_67PUJ1PM" role="3clF45" />
        <node concept="37vLTG" id="7Q_67PUJ1PN" role="3clF46">
          <property role="TrG5h" value="grammar" />
          <node concept="3Tqbb2" id="7Q_67PUJ9YW" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="7Q_67PUJ1PP" role="3clF46">
          <property role="TrG5h" value="generated" />
          <node concept="3uibUv" id="7Q_67PUJ1PQ" role="1tU5fm">
            <ref role="3uigEE" to="33ny:~List" resolve="List" />
            <node concept="3Tqbb2" id="7Q_67PUJ9YX" role="11_B2D" />
          </node>
        </node>
        <node concept="37vLTG" id="7Q_67PUJ1PS" role="3clF46">
          <property role="TrG5h" value="targets" />
          <node concept="3uibUv" id="7Q_67PUJ1PT" role="1tU5fm">
            <ref role="3uigEE" to="33ny:~List" resolve="List" />
            <node concept="H_c77" id="7Q_67PUJ9YY" role="11_B2D" />
          </node>
        </node>
        <node concept="37vLTG" id="7Q_67PUJ1PV" role="3clF46">
          <property role="TrG5h" value="profile" />
          <node concept="3Tqbb2" id="7Q_67PUJ9YZ" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="7Q_67PUJ1PX" role="3clF46">
          <property role="TrG5h" value="fingerprint" />
          <node concept="3uibUv" id="7Q_67PUJ1PY" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          </node>
        </node>
        <node concept="37vLTG" id="7Q_67PUJ1PZ" role="3clF46">
          <property role="TrG5h" value="decisions" />
          <node concept="3uibUv" id="7Q_67PUJ1Q0" role="1tU5fm">
            <ref role="3uigEE" to="33ny:~List" resolve="List" />
            <node concept="3uibUv" id="7Q_67PUJ1Q1" role="11_B2D">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="7Q_67PUJ1Q2" role="3clF46">
          <property role="TrG5h" value="conflicts" />
          <node concept="3uibUv" id="7Q_67PUJ1Q3" role="1tU5fm">
            <ref role="3uigEE" to="33ny:~List" resolve="List" />
            <node concept="3uibUv" id="7Q_67PUJ1Q4" role="11_B2D">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="7Q_67PUJ1Q5" role="3clF47">
          <node concept="3clFbF" id="7Q_67PUJ1Q6" role="3cqZAp">
            <node concept="37vLTI" id="7Q_67PUJ1Q7" role="3clFbG">
              <node concept="2OqwBi" id="7Q_67PUJ1Q8" role="37vLTJ">
                <node concept="Xjq3P" id="7Q_67PUJ1Q9" role="2Oq$k0" />
                <node concept="2OwXpG" id="7Q_67PUJ1Qa" role="2OqNvi">
                  <ref role="2Oxat5" node="7Q_67PUJ1Ph" resolve="grammar" />
                </node>
              </node>
              <node concept="37vLTw" id="7Q_67PUJ1Qb" role="37vLTx">
                <ref role="3cqZAo" node="7Q_67PUJ1PN" resolve="grammar" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7Q_67PUJ1Qc" role="3cqZAp">
            <node concept="37vLTI" id="7Q_67PUJ1Qd" role="3clFbG">
              <node concept="2OqwBi" id="7Q_67PUJ1Qe" role="37vLTJ">
                <node concept="Xjq3P" id="7Q_67PUJ1Qf" role="2Oq$k0" />
                <node concept="2OwXpG" id="7Q_67PUJ1Qg" role="2OqNvi">
                  <ref role="2Oxat5" node="7Q_67PUJ1Pl" resolve="generated" />
                </node>
              </node>
              <node concept="2YIFZM" id="7Q_67PUJ2JH" role="37vLTx">
                <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                <ref role="37wK5l" to="33ny:~Collections.unmodifiableList(java.util.List)" resolve="unmodifiableList" />
                <node concept="2ShNRf" id="7Q_67PUJ3Gt" role="37wK5m">
                  <node concept="1pGfFk" id="7Q_67PUJ46t" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;(java.util.Collection)" resolve="ArrayList" />
                    <node concept="37vLTw" id="7Q_67PUJ46u" role="37wK5m">
                      <ref role="3cqZAo" node="7Q_67PUJ1PP" resolve="generated" />
                    </node>
                    <node concept="3Tqbb2" id="7Q_67PUJ9Z0" role="1pMfVU" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7Q_67PUJ1Ql" role="3cqZAp">
            <node concept="37vLTI" id="7Q_67PUJ1Qm" role="3clFbG">
              <node concept="2OqwBi" id="7Q_67PUJ1Qn" role="37vLTJ">
                <node concept="Xjq3P" id="7Q_67PUJ1Qo" role="2Oq$k0" />
                <node concept="2OwXpG" id="7Q_67PUJ1Qp" role="2OqNvi">
                  <ref role="2Oxat5" node="7Q_67PUJ1Pq" resolve="targets" />
                </node>
              </node>
              <node concept="2YIFZM" id="7Q_67PUJ2JP" role="37vLTx">
                <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                <ref role="37wK5l" to="33ny:~Collections.unmodifiableList(java.util.List)" resolve="unmodifiableList" />
                <node concept="2ShNRf" id="7Q_67PUJ46w" role="37wK5m">
                  <node concept="1pGfFk" id="7Q_67PUJ4sz" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;(java.util.Collection)" resolve="ArrayList" />
                    <node concept="37vLTw" id="7Q_67PUJ4s$" role="37wK5m">
                      <ref role="3cqZAo" node="7Q_67PUJ1PS" resolve="targets" />
                    </node>
                    <node concept="H_c77" id="7Q_67PUJ9Z1" role="1pMfVU" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7Q_67PUJ1Qu" role="3cqZAp">
            <node concept="37vLTI" id="7Q_67PUJ1Qv" role="3clFbG">
              <node concept="2OqwBi" id="7Q_67PUJ1Qw" role="37vLTJ">
                <node concept="Xjq3P" id="7Q_67PUJ1Qx" role="2Oq$k0" />
                <node concept="2OwXpG" id="7Q_67PUJ1Qy" role="2OqNvi">
                  <ref role="2Oxat5" node="7Q_67PUJ1Pv" resolve="profile" />
                </node>
              </node>
              <node concept="37vLTw" id="7Q_67PUJ1Qz" role="37vLTx">
                <ref role="3cqZAo" node="7Q_67PUJ1PV" resolve="profile" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7Q_67PUJ1Q$" role="3cqZAp">
            <node concept="37vLTI" id="7Q_67PUJ1Q_" role="3clFbG">
              <node concept="2OqwBi" id="7Q_67PUJ1QA" role="37vLTJ">
                <node concept="Xjq3P" id="7Q_67PUJ1QB" role="2Oq$k0" />
                <node concept="2OwXpG" id="7Q_67PUJ1QC" role="2OqNvi">
                  <ref role="2Oxat5" node="7Q_67PUJ1Pz" resolve="fingerprint" />
                </node>
              </node>
              <node concept="37vLTw" id="7Q_67PUJ1QD" role="37vLTx">
                <ref role="3cqZAo" node="7Q_67PUJ1PX" resolve="fingerprint" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7Q_67PUJ1QE" role="3cqZAp">
            <node concept="37vLTI" id="7Q_67PUJ1QF" role="3clFbG">
              <node concept="2OqwBi" id="7Q_67PUJ1QG" role="37vLTJ">
                <node concept="Xjq3P" id="7Q_67PUJ1QH" role="2Oq$k0" />
                <node concept="2OwXpG" id="7Q_67PUJ1QI" role="2OqNvi">
                  <ref role="2Oxat5" node="7Q_67PUJ1PB" resolve="decisions" />
                </node>
              </node>
              <node concept="2YIFZM" id="7Q_67PUJ2JX" role="37vLTx">
                <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                <ref role="37wK5l" to="33ny:~Collections.unmodifiableList(java.util.List)" resolve="unmodifiableList" />
                <node concept="37vLTw" id="7Q_67PUJ2JY" role="37wK5m">
                  <ref role="3cqZAo" node="7Q_67PUJ1PZ" resolve="decisions" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7Q_67PUJ1QL" role="3cqZAp">
            <node concept="37vLTI" id="7Q_67PUJ1QM" role="3clFbG">
              <node concept="2OqwBi" id="7Q_67PUJ1QN" role="37vLTJ">
                <node concept="Xjq3P" id="7Q_67PUJ1QO" role="2Oq$k0" />
                <node concept="2OwXpG" id="7Q_67PUJ1QP" role="2OqNvi">
                  <ref role="2Oxat5" node="7Q_67PUJ1PG" resolve="conflicts" />
                </node>
              </node>
              <node concept="2YIFZM" id="7Q_67PUJ2K3" role="37vLTx">
                <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                <ref role="37wK5l" to="33ny:~Collections.unmodifiableList(java.util.List)" resolve="unmodifiableList" />
                <node concept="37vLTw" id="7Q_67PUJ2K4" role="37wK5m">
                  <ref role="3cqZAo" node="7Q_67PUJ1Q2" resolve="conflicts" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm6S6" id="7Q_67PUJ1QS" role="1B3o_S" />
      </node>
      <node concept="3clFb_" id="7Q_67PUJ1QT" role="jymVt">
        <property role="TrG5h" value="fingerprint" />
        <node concept="3clFbS" id="7Q_67PUJ1QU" role="3clF47">
          <node concept="3cpWs6" id="7Q_67PUJ1QV" role="3cqZAp">
            <node concept="37vLTw" id="7Q_67PUJ1QW" role="3cqZAk">
              <ref role="3cqZAo" node="7Q_67PUJ1Pz" resolve="fingerprint" />
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="7Q_67PUJ1QX" role="1B3o_S" />
        <node concept="3uibUv" id="7Q_67PUJ1QY" role="3clF45">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3clFb_" id="7Q_67PUJ1QZ" role="jymVt">
        <property role="TrG5h" value="decisions" />
        <node concept="3clFbS" id="7Q_67PUJ1R0" role="3clF47">
          <node concept="3cpWs6" id="7Q_67PUJ1R1" role="3cqZAp">
            <node concept="37vLTw" id="7Q_67PUJ1R2" role="3cqZAk">
              <ref role="3cqZAo" node="7Q_67PUJ1PB" resolve="decisions" />
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="7Q_67PUJ1R3" role="1B3o_S" />
        <node concept="3uibUv" id="7Q_67PUJ1R4" role="3clF45">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="7Q_67PUJ1R5" role="11_B2D">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="7Q_67PUJ1R6" role="jymVt">
        <property role="TrG5h" value="conflicts" />
        <node concept="3clFbS" id="7Q_67PUJ1R7" role="3clF47">
          <node concept="3cpWs6" id="7Q_67PUJ1R8" role="3cqZAp">
            <node concept="37vLTw" id="7Q_67PUJ1R9" role="3cqZAk">
              <ref role="3cqZAo" node="7Q_67PUJ1PG" resolve="conflicts" />
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="7Q_67PUJ1Ra" role="1B3o_S" />
        <node concept="3uibUv" id="7Q_67PUJ1Rb" role="3clF45">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="7Q_67PUJ1Rc" role="11_B2D">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="7Q_67PUJ1Rd" role="jymVt">
        <property role="TrG5h" value="applicable" />
        <node concept="3clFbS" id="7Q_67PUJ1Re" role="3clF47">
          <node concept="3cpWs6" id="7Q_67PUJ1Rf" role="3cqZAp">
            <node concept="2OqwBi" id="7Q_67PUJ4v3" role="3cqZAk">
              <node concept="37vLTw" id="7Q_67PUJ2K9" role="2Oq$k0">
                <ref role="3cqZAo" node="7Q_67PUJ1PG" resolve="conflicts" />
              </node>
              <node concept="liA8E" id="7Q_67PUJ4v4" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.isEmpty()" resolve="isEmpty" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="7Q_67PUJ1Rh" role="1B3o_S" />
        <node concept="10P_77" id="7Q_67PUJ1Ri" role="3clF45" />
      </node>
    </node>
    <node concept="312cEu" id="7Q_67PUJ1Rj" role="jymVt">
      <property role="TrG5h" value="Candidate" />
      <node concept="3Tm6S6" id="7Q_67PUJ1Rk" role="1B3o_S" />
      <node concept="312cEg" id="7Q_67PUJ1Rl" role="jymVt">
        <property role="TrG5h" value="generated" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tqbb2" id="7Q_67PUJ9Z2" role="1tU5fm" />
        <node concept="3Tm6S6" id="7Q_67PUJ1Ro" role="1B3o_S" />
      </node>
      <node concept="312cEg" id="7Q_67PUJ1Rp" role="jymVt">
        <property role="TrG5h" value="target" />
        <property role="3TUv4t" value="true" />
        <node concept="H_c77" id="7Q_67PUJ9Z3" role="1tU5fm" />
        <node concept="3Tm6S6" id="7Q_67PUJ1Rs" role="1B3o_S" />
      </node>
      <node concept="312cEg" id="7Q_67PUJ1Rt" role="jymVt">
        <property role="TrG5h" value="source" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tqbb2" id="7Q_67PUJ9Z4" role="1tU5fm" />
        <node concept="3Tm6S6" id="7Q_67PUJ1Rw" role="1B3o_S" />
      </node>
      <node concept="312cEg" id="7Q_67PUJ1Rx" role="jymVt">
        <property role="TrG5h" value="key" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="7Q_67PUJ1Rz" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
        <node concept="3Tm6S6" id="7Q_67PUJ1R$" role="1B3o_S" />
      </node>
      <node concept="312cEg" id="7Q_67PUJ1R_" role="jymVt">
        <property role="TrG5h" value="existing" />
        <node concept="3Tqbb2" id="7Q_67PUJ9Z5" role="1tU5fm" />
        <node concept="3Tm6S6" id="7Q_67PUJ1RC" role="1B3o_S" />
      </node>
      <node concept="312cEg" id="7Q_67PUJ1RD" role="jymVt">
        <property role="TrG5h" value="record" />
        <node concept="3Tqbb2" id="7Q_67PUJ9Z6" role="1tU5fm" />
        <node concept="3Tm6S6" id="7Q_67PUJ1RG" role="1B3o_S" />
      </node>
      <node concept="312cEg" id="7Q_67PUJ1RH" role="jymVt">
        <property role="TrG5h" value="created" />
        <node concept="10P_77" id="7Q_67PUJ1RJ" role="1tU5fm" />
        <node concept="3Tm6S6" id="7Q_67PUJ1RK" role="1B3o_S" />
      </node>
      <node concept="312cEg" id="7Q_67PUJ1RL" role="jymVt">
        <property role="TrG5h" value="updated" />
        <node concept="10P_77" id="7Q_67PUJ1RN" role="1tU5fm" />
        <node concept="3Tm6S6" id="7Q_67PUJ1RO" role="1B3o_S" />
      </node>
      <node concept="312cEg" id="7Q_67PUJ1RP" role="jymVt">
        <property role="TrG5h" value="replacement" />
        <node concept="3Tqbb2" id="7Q_67PUJ9Z7" role="1tU5fm" />
        <node concept="3Tm6S6" id="7Q_67PUJ1RS" role="1B3o_S" />
      </node>
      <node concept="3clFbW" id="7Q_67PUJ1RT" role="jymVt">
        <node concept="3cqZAl" id="7Q_67PUJ1RU" role="3clF45" />
        <node concept="37vLTG" id="7Q_67PUJ1RV" role="3clF46">
          <property role="TrG5h" value="generated" />
          <node concept="3Tqbb2" id="7Q_67PUJ9Z8" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="7Q_67PUJ1RX" role="3clF46">
          <property role="TrG5h" value="target" />
          <node concept="H_c77" id="7Q_67PUJ9Z9" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="7Q_67PUJ1RZ" role="3clF46">
          <property role="TrG5h" value="source" />
          <node concept="3Tqbb2" id="7Q_67PUJ9Za" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="7Q_67PUJ1S1" role="3clF46">
          <property role="TrG5h" value="key" />
          <node concept="3uibUv" id="7Q_67PUJ1S2" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          </node>
        </node>
        <node concept="3clFbS" id="7Q_67PUJ1S3" role="3clF47">
          <node concept="3clFbF" id="7Q_67PUJ1S4" role="3cqZAp">
            <node concept="37vLTI" id="7Q_67PUJ1S5" role="3clFbG">
              <node concept="2OqwBi" id="7Q_67PUJ1S6" role="37vLTJ">
                <node concept="Xjq3P" id="7Q_67PUJ1S7" role="2Oq$k0" />
                <node concept="2OwXpG" id="7Q_67PUJ1S8" role="2OqNvi">
                  <ref role="2Oxat5" node="7Q_67PUJ1Rl" resolve="generated" />
                </node>
              </node>
              <node concept="37vLTw" id="7Q_67PUJ1S9" role="37vLTx">
                <ref role="3cqZAo" node="7Q_67PUJ1RV" resolve="generated" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7Q_67PUJ1Sa" role="3cqZAp">
            <node concept="37vLTI" id="7Q_67PUJ1Sb" role="3clFbG">
              <node concept="2OqwBi" id="7Q_67PUJ1Sc" role="37vLTJ">
                <node concept="Xjq3P" id="7Q_67PUJ1Sd" role="2Oq$k0" />
                <node concept="2OwXpG" id="7Q_67PUJ1Se" role="2OqNvi">
                  <ref role="2Oxat5" node="7Q_67PUJ1Rp" resolve="target" />
                </node>
              </node>
              <node concept="37vLTw" id="7Q_67PUJ1Sf" role="37vLTx">
                <ref role="3cqZAo" node="7Q_67PUJ1RX" resolve="target" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7Q_67PUJ1Sg" role="3cqZAp">
            <node concept="37vLTI" id="7Q_67PUJ1Sh" role="3clFbG">
              <node concept="2OqwBi" id="7Q_67PUJ1Si" role="37vLTJ">
                <node concept="Xjq3P" id="7Q_67PUJ1Sj" role="2Oq$k0" />
                <node concept="2OwXpG" id="7Q_67PUJ1Sk" role="2OqNvi">
                  <ref role="2Oxat5" node="7Q_67PUJ1Rt" resolve="source" />
                </node>
              </node>
              <node concept="37vLTw" id="7Q_67PUJ1Sl" role="37vLTx">
                <ref role="3cqZAo" node="7Q_67PUJ1RZ" resolve="source" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7Q_67PUJ1Sm" role="3cqZAp">
            <node concept="37vLTI" id="7Q_67PUJ1Sn" role="3clFbG">
              <node concept="2OqwBi" id="7Q_67PUJ1So" role="37vLTJ">
                <node concept="Xjq3P" id="7Q_67PUJ1Sp" role="2Oq$k0" />
                <node concept="2OwXpG" id="7Q_67PUJ1Sq" role="2OqNvi">
                  <ref role="2Oxat5" node="7Q_67PUJ1Rx" resolve="key" />
                </node>
              </node>
              <node concept="37vLTw" id="7Q_67PUJ1Sr" role="37vLTx">
                <ref role="3cqZAo" node="7Q_67PUJ1S1" resolve="key" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm6S6" id="7Q_67PUJ1Ss" role="1B3o_S" />
      </node>
    </node>
    <node concept="2YIFZL" id="7Q_67PUJ1TP" role="jymVt">
      <property role="TrG5h" value="preview" />
      <node concept="37vLTG" id="7Q_67PUJ1TQ" role="3clF46">
        <property role="TrG5h" value="grammar" />
        <node concept="3Tqbb2" id="7Q_67PUJ9Zb" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7Q_67PUJ1TS" role="3clF46">
        <property role="TrG5h" value="generated" />
        <node concept="3uibUv" id="7Q_67PUJ1TT" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3Tqbb2" id="7Q_67PUJ9Zc" role="11_B2D" />
        </node>
      </node>
      <node concept="37vLTG" id="7Q_67PUJ1TV" role="3clF46">
        <property role="TrG5h" value="targets" />
        <node concept="3uibUv" id="7Q_67PUJ1TW" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="H_c77" id="7Q_67PUJ9Zd" role="11_B2D" />
        </node>
      </node>
      <node concept="37vLTG" id="7Q_67PUJ1TY" role="3clF46">
        <property role="TrG5h" value="profile" />
        <node concept="3Tqbb2" id="7Q_67PUJ9Ze" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="7Q_67PUJ1U0" role="3clF47">
        <node concept="3clFbJ" id="7Q_67PUJ1U1" role="3cqZAp">
          <node concept="3clFbS" id="7Q_67PUJ1Ud" role="3clFbx">
            <node concept="YS8fn" id="7Q_67PUJ1Uh" role="3cqZAp">
              <node concept="1rXfSq" id="7Q_67PUJ1Ue" role="YScLw">
                <ref role="37wK5l" node="7Q_67PUJ2xZ" resolve="failure" />
                <node concept="Xl_RD" id="7Q_67PUJ1Uf" role="37wK5m">
                  <property role="Xl_RC" value="MBNF_GENERATION_INPUT" />
                </node>
                <node concept="Xl_RD" id="7Q_67PUJ1Ug" role="37wK5m">
                  <property role="Xl_RC" value="Choose an attached editable grammar" />
                </node>
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="694jTX_6eTu" role="3clFbw">
            <node concept="22lmx$" id="7Q_67PUJ1U2" role="3uHU7B">
              <node concept="22lmx$" id="7Q_67PUJ1U3" role="3uHU7B">
                <node concept="3clFbC" id="7Q_67PUJ1U4" role="3uHU7B">
                  <node concept="37vLTw" id="7Q_67PUJ1U5" role="3uHU7B">
                    <ref role="3cqZAo" node="7Q_67PUJ1TQ" resolve="grammar" />
                  </node>
                  <node concept="10Nm6u" id="7Q_67PUJ1U6" role="3uHU7w" />
                </node>
                <node concept="3clFbC" id="7Q_67PUJ1U7" role="3uHU7w">
                  <node concept="2OqwBi" id="7Q_67PUJ4ve" role="3uHU7B">
                    <node concept="liA8E" id="7Q_67PUJ4vf" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.getModel()" resolve="getModel" />
                    </node>
                    <node concept="2JrnkZ" id="7Q_67PUJ9WH" role="2Oq$k0">
                      <node concept="37vLTw" id="7Q_67PUJ2Kd" role="2JrQYb">
                        <ref role="3cqZAo" node="7Q_67PUJ1TQ" resolve="grammar" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="7Q_67PUJ1U9" role="3uHU7w" />
                </node>
              </node>
              <node concept="2OqwBi" id="7Q_67PUJ8iT" role="3uHU7w">
                <node concept="liA8E" id="7Q_67PUJ8iU" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SModel.isReadOnly()" resolve="isReadOnly" />
                </node>
                <node concept="2JrnkZ" id="7Q_67PUJ9WJ" role="2Oq$k0">
                  <node concept="2OqwBi" id="7Q_67PUJ4vx" role="2JrQYb">
                    <node concept="liA8E" id="7Q_67PUJ4vy" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.getModel()" resolve="getModel" />
                    </node>
                    <node concept="2JrnkZ" id="7Q_67PUJ9WI" role="2Oq$k0">
                      <node concept="37vLTw" id="7Q_67PUJ2Kp" role="2JrQYb">
                        <ref role="3cqZAo" node="7Q_67PUJ1TQ" resolve="grammar" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3fqX7Q" id="694jTX_6eRe" role="3uHU7w">
              <node concept="2OqwBi" id="694jTX_6eTo" role="3fr31v">
                <node concept="2OqwBi" id="694jTX_6eT5" role="2Oq$k0">
                  <node concept="2JrnkZ" id="694jTX_6eTr" role="2Oq$k0">
                    <node concept="37vLTw" id="694jTX_6eSM" role="2JrQYb">
                      <ref role="3cqZAo" node="7Q_67PUJ1TQ" resolve="grammar" />
                    </node>
                  </node>
                  <node concept="liA8E" id="694jTX_6eT6" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                  </node>
                </node>
                <node concept="liA8E" id="694jTX_6eTp" role="2OqNvi">
                  <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                  <node concept="35c_gC" id="694jTX_6eTt" role="37wK5m">
                    <ref role="35c_gD" to="6o2a:2b2ZYR3vfui" resolve="grammar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="694jTX$TyZ0" role="3cqZAp">
          <node concept="1rXfSq" id="694jTX$TyZ1" role="3clFbG">
            <ref role="37wK5l" node="7Q_67PURZx3" resolve="validateTarget" />
            <node concept="2OqwBi" id="694jTX$U3N4" role="37wK5m">
              <node concept="liA8E" id="694jTX$U3N5" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getModel()" resolve="getModel" />
              </node>
              <node concept="2JrnkZ" id="694jTX$U3N6" role="2Oq$k0">
                <node concept="37vLTw" id="694jTX$U3MT" role="2JrQYb">
                  <ref role="3cqZAo" node="7Q_67PUJ1TQ" resolve="grammar" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7Q_67PUJ1Ui" role="3cqZAp">
          <node concept="22lmx$" id="7Q_67PUJ1Uj" role="3clFbw">
            <node concept="2OqwBi" id="7Q_67PUJ4xO" role="3uHU7B">
              <node concept="37vLTw" id="7Q_67PUJ2Kt" role="2Oq$k0">
                <ref role="3cqZAo" node="7Q_67PUJ1TS" resolve="generated" />
              </node>
              <node concept="liA8E" id="7Q_67PUJ4xP" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.isEmpty()" resolve="isEmpty" />
              </node>
            </node>
            <node concept="2OqwBi" id="7Q_67PUJ4$7" role="3uHU7w">
              <node concept="37vLTw" id="7Q_67PUJ2Kx" role="2Oq$k0">
                <ref role="3cqZAo" node="7Q_67PUJ1TV" resolve="targets" />
              </node>
              <node concept="liA8E" id="7Q_67PUJ4$8" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.isEmpty()" resolve="isEmpty" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="7Q_67PUJ1Un" role="3clFbx">
            <node concept="YS8fn" id="7Q_67PUJ1Ur" role="3cqZAp">
              <node concept="1rXfSq" id="7Q_67PUJ1Uo" role="YScLw">
                <ref role="37wK5l" node="7Q_67PUJ2xZ" resolve="failure" />
                <node concept="Xl_RD" id="7Q_67PUJ1Up" role="37wK5m">
                  <property role="Xl_RC" value="MBNF_GENERATION_INPUT" />
                </node>
                <node concept="Xl_RD" id="7Q_67PUJ1Uq" role="37wK5m">
                  <property role="Xl_RC" value="Generated roots and target models must be nonempty" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7Q_67PUJ1Ut" role="3cqZAp">
          <node concept="3cpWsn" id="7Q_67PUJ1Us" role="3cpWs9">
            <property role="TrG5h" value="profileStamp" />
            <node concept="3uibUv" id="7Q_67PUJ1Uu" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
            <node concept="1rXfSq" id="7Q_67PUJ1Uv" role="33vP2m">
              <ref role="37wK5l" node="7Q_67PUJ2aP" resolve="profileStamp" />
              <node concept="37vLTw" id="7Q_67PUJ1Uw" role="37wK5m">
                <ref role="3cqZAo" node="7Q_67PUJ1TQ" resolve="grammar" />
              </node>
              <node concept="37vLTw" id="7Q_67PUJ1Ux" role="37wK5m">
                <ref role="3cqZAo" node="7Q_67PUJ1TY" resolve="profile" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7Q_67PUJ1Uz" role="3cqZAp">
          <node concept="3cpWsn" id="7Q_67PUJ1Uy" role="3cpWs9">
            <property role="TrG5h" value="decisions" />
            <node concept="3uibUv" id="7Q_67PUJ1U$" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="7Q_67PUJ1U_" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
            </node>
            <node concept="2ShNRf" id="7Q_67PUJ2Kz" role="33vP2m">
              <node concept="1pGfFk" id="7Q_67PUJ2KC" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                <node concept="3uibUv" id="7Q_67PUJ2KD" role="1pMfVU">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7Q_67PUJ1UD" role="3cqZAp">
          <node concept="3cpWsn" id="7Q_67PUJ1UC" role="3cpWs9">
            <property role="TrG5h" value="conflicts" />
            <node concept="3uibUv" id="7Q_67PUJ1UE" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="7Q_67PUJ1UF" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
            </node>
            <node concept="2ShNRf" id="7Q_67PUJ2KE" role="33vP2m">
              <node concept="1pGfFk" id="7Q_67PUJ2KJ" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                <node concept="3uibUv" id="7Q_67PUJ2KK" role="1pMfVU">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7Q_67PUJ1UJ" role="3cqZAp">
          <node concept="3cpWsn" id="7Q_67PUJ1UI" role="3cpWs9">
            <property role="TrG5h" value="candidates" />
            <node concept="3uibUv" id="7Q_67PUJ1UK" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="7Q_67PUJ1UL" role="11_B2D">
                <ref role="3uigEE" node="7Q_67PUJ1Rj" resolve="ProtectedRegeneration.Candidate" />
              </node>
            </node>
            <node concept="1rXfSq" id="7Q_67PUJ1UM" role="33vP2m">
              <ref role="37wK5l" node="7Q_67PUJ25F" resolve="candidates" />
              <node concept="37vLTw" id="7Q_67PUJ1UN" role="37wK5m">
                <ref role="3cqZAo" node="7Q_67PUJ1TQ" resolve="grammar" />
              </node>
              <node concept="37vLTw" id="7Q_67PUJ1UO" role="37wK5m">
                <ref role="3cqZAo" node="7Q_67PUJ1TS" resolve="generated" />
              </node>
              <node concept="37vLTw" id="7Q_67PUJ1UP" role="37wK5m">
                <ref role="3cqZAo" node="7Q_67PUJ1TV" resolve="targets" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7Q_67PUJ1UR" role="3cqZAp">
          <node concept="3cpWsn" id="7Q_67PUJ1UQ" role="3cpWs9">
            <property role="TrG5h" value="ledger" />
            <node concept="3Tqbb2" id="7Q_67PUJ9Zf" role="1tU5fm" />
            <node concept="1rXfSq" id="7Q_67PUJ1UT" role="33vP2m">
              <ref role="37wK5l" node="7Q_67PUJ2ye" resolve="ledger" />
              <node concept="37vLTw" id="7Q_67PUJ1UU" role="37wK5m">
                <ref role="3cqZAo" node="7Q_67PUJ1TQ" resolve="grammar" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7Q_67PUJ1UV" role="3cqZAp">
          <node concept="1Wc70l" id="7Q_67PUJ1UW" role="3clFbw">
            <node concept="3y3z36" id="7Q_67PUJ1UX" role="3uHU7B">
              <node concept="37vLTw" id="7Q_67PUJ1UY" role="3uHU7B">
                <ref role="3cqZAo" node="7Q_67PUJ1UQ" resolve="ledger" />
              </node>
              <node concept="10Nm6u" id="7Q_67PUJ1UZ" role="3uHU7w" />
            </node>
            <node concept="1eOMI4" id="7Q_67PUJ1V9" role="3uHU7w">
              <node concept="22lmx$" id="7Q_67PUJ1V0" role="1eOMHV">
                <node concept="3fqX7Q" id="7Q_67PUJ1V1" role="3uHU7B">
                  <node concept="2OqwBi" id="7Q_67PUJ4$r" role="3fr31v">
                    <node concept="37vLTw" id="7Q_67PUJ2KN" role="2Oq$k0">
                      <ref role="3cqZAo" node="7Q_67PUJ1St" resolve="VERSION" />
                    </node>
                    <node concept="liA8E" id="7Q_67PUJ4$s" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                      <node concept="2OqwBi" id="7Q_67PUJ8Oi" role="37wK5m">
                        <node concept="liA8E" id="7Q_67PUJ8Oj" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SNode.getProperty(org.jetbrains.mps.openapi.language.SProperty)" resolve="getProperty" />
                          <node concept="37vLTw" id="7Q_67PUJ8Ok" role="37wK5m">
                            <ref role="3cqZAo" node="7Q_67PUJ1T1" resolve="LEDGER_VERSION" />
                          </node>
                        </node>
                        <node concept="2JrnkZ" id="7Q_67PUJ9WK" role="2Oq$k0">
                          <node concept="37vLTw" id="7Q_67PUJ8iX" role="2JrQYb">
                            <ref role="3cqZAo" node="7Q_67PUJ1UQ" resolve="ledger" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3fqX7Q" id="7Q_67PUJ1V5" role="3uHU7w">
                  <node concept="2OqwBi" id="7Q_67PUJ4$L" role="3fr31v">
                    <node concept="37vLTw" id="7Q_67PUJ2KT" role="2Oq$k0">
                      <ref role="3cqZAo" node="7Q_67PUJ1Sx" resolve="GENERATOR" />
                    </node>
                    <node concept="liA8E" id="7Q_67PUJ4$M" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                      <node concept="2OqwBi" id="7Q_67PUJ8Ov" role="37wK5m">
                        <node concept="liA8E" id="7Q_67PUJ8Ow" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SNode.getProperty(org.jetbrains.mps.openapi.language.SProperty)" resolve="getProperty" />
                          <node concept="37vLTw" id="7Q_67PUJ8Ox" role="37wK5m">
                            <ref role="3cqZAo" node="7Q_67PUJ1T5" resolve="LEDGER_GENERATOR" />
                          </node>
                        </node>
                        <node concept="2JrnkZ" id="7Q_67PUJ9WL" role="2Oq$k0">
                          <node concept="37vLTw" id="7Q_67PUJ8j2" role="2JrQYb">
                            <ref role="3cqZAo" node="7Q_67PUJ1UQ" resolve="ledger" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="7Q_67PUJ1Vb" role="3clFbx">
            <node concept="3clFbF" id="7Q_67PUJ1Vc" role="3cqZAp">
              <node concept="2OqwBi" id="7Q_67PUJ4B7" role="3clFbG">
                <node concept="37vLTw" id="7Q_67PUJ2KZ" role="2Oq$k0">
                  <ref role="3cqZAo" node="7Q_67PUJ1UC" resolve="conflicts" />
                </node>
                <node concept="liA8E" id="7Q_67PUJ4B8" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                  <node concept="Xl_RD" id="7Q_67PUJ4B9" role="37wK5m">
                    <property role="Xl_RC" value="MBNF_LEDGER_VERSION: review unsupported ownership metadata" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7Q_67PUJ1Vf" role="3cqZAp">
          <node concept="1Wc70l" id="7Q_67PUJ1Vg" role="3clFbw">
            <node concept="3y3z36" id="7Q_67PUJ1Vh" role="3uHU7B">
              <node concept="37vLTw" id="7Q_67PUJ1Vi" role="3uHU7B">
                <ref role="3cqZAo" node="7Q_67PUJ1UQ" resolve="ledger" />
              </node>
              <node concept="10Nm6u" id="7Q_67PUJ1Vj" role="3uHU7w" />
            </node>
            <node concept="3fqX7Q" id="7Q_67PUJ1Vk" role="3uHU7w">
              <node concept="2OqwBi" id="7Q_67PUJ2Lg" role="3fr31v">
                <node concept="1rXfSq" id="7Q_67PUJ1Vm" role="2Oq$k0">
                  <ref role="37wK5l" node="7Q_67PUJ2bx" resolve="toolchain" />
                </node>
                <node concept="liA8E" id="7Q_67PUJ2Lh" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                  <node concept="2OqwBi" id="7Q_67PUJ8jf" role="37wK5m">
                    <node concept="liA8E" id="7Q_67PUJ8jg" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.getProperty(org.jetbrains.mps.openapi.language.SProperty)" resolve="getProperty" />
                      <node concept="37vLTw" id="7Q_67PUJ8jh" role="37wK5m">
                        <ref role="3cqZAo" node="7Q_67PUJ1T9" resolve="LEDGER_TOOLCHAIN" />
                      </node>
                    </node>
                    <node concept="2JrnkZ" id="7Q_67PUJ9WM" role="2Oq$k0">
                      <node concept="37vLTw" id="7Q_67PUJ4Bc" role="2JrQYb">
                        <ref role="3cqZAo" node="7Q_67PUJ1UQ" resolve="ledger" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="7Q_67PUJ1Vq" role="3clFbx">
            <node concept="3clFbF" id="7Q_67PUJ1Vr" role="3cqZAp">
              <node concept="2OqwBi" id="7Q_67PUJ4Dx" role="3clFbG">
                <node concept="37vLTw" id="7Q_67PUJ2Lm" role="2Oq$k0">
                  <ref role="3cqZAo" node="7Q_67PUJ1UC" resolve="conflicts" />
                </node>
                <node concept="liA8E" id="7Q_67PUJ4Dy" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                  <node concept="Xl_RD" id="7Q_67PUJ4Dz" role="37wK5m">
                    <property role="Xl_RC" value="MBNF_TOOLCHAIN_CHANGED: review migration before regenerating" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7Q_67PUJ1Vv" role="3cqZAp">
          <node concept="3cpWsn" id="7Q_67PUJ1Vu" role="3cpWs9">
            <property role="TrG5h" value="matched" />
            <node concept="3uibUv" id="7Q_67PUJ1Vw" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
              <node concept="3Tqbb2" id="7Q_67PUJ9Zg" role="11_B2D" />
            </node>
            <node concept="2ShNRf" id="7Q_67PUJ2Lp" role="33vP2m">
              <node concept="1pGfFk" id="7Q_67PUJ2Lt" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="33ny:~HashSet.&lt;init&gt;()" resolve="HashSet" />
                <node concept="3Tqbb2" id="7Q_67PUJ9Zh" role="1pMfVU" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="7Q_67PUJ1V$" role="3cqZAp">
          <node concept="37vLTw" id="7Q_67PUJ1YP" role="1DdaDG">
            <ref role="3cqZAo" node="7Q_67PUJ1UI" resolve="candidates" />
          </node>
          <node concept="3cpWsn" id="7Q_67PUJ1YM" role="1Duv9x">
            <property role="TrG5h" value="candidate" />
            <node concept="3uibUv" id="7Q_67PUJ1YO" role="1tU5fm">
              <ref role="3uigEE" node="7Q_67PUJ1Rj" resolve="ProtectedRegeneration.Candidate" />
            </node>
          </node>
          <node concept="3clFbS" id="7Q_67PUJ1VA" role="2LFqv$">
            <node concept="3cpWs8" id="7Q_67PUJ1VC" role="3cqZAp">
              <node concept="3cpWsn" id="7Q_67PUJ1VB" role="3cpWs9">
                <property role="TrG5h" value="matches" />
                <node concept="3uibUv" id="7Q_67PUJ1VD" role="1tU5fm">
                  <ref role="3uigEE" to="33ny:~List" resolve="List" />
                  <node concept="3Tqbb2" id="7Q_67PUJ9Zi" role="11_B2D" />
                </node>
                <node concept="2ShNRf" id="7Q_67PUJ2Lv" role="33vP2m">
                  <node concept="1pGfFk" id="7Q_67PUJ2L$" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                    <node concept="3Tqbb2" id="7Q_67PUJ9Zj" role="1pMfVU" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="7Q_67PUJ1VH" role="3cqZAp">
              <node concept="3y3z36" id="7Q_67PUJ1VI" role="3clFbw">
                <node concept="37vLTw" id="7Q_67PUJ1VJ" role="3uHU7B">
                  <ref role="3cqZAo" node="7Q_67PUJ1UQ" resolve="ledger" />
                </node>
                <node concept="10Nm6u" id="7Q_67PUJ1VK" role="3uHU7w" />
              </node>
              <node concept="3clFbS" id="7Q_67PUJ1VM" role="3clFbx">
                <node concept="1DcWWT" id="7Q_67PUJ1VN" role="3cqZAp">
                  <node concept="1rXfSq" id="7Q_67PUJ1W2" role="1DdaDG">
                    <ref role="37wK5l" node="7Q_67PUJ2zk" resolve="artifacts" />
                    <node concept="37vLTw" id="7Q_67PUJ1W3" role="37wK5m">
                      <ref role="3cqZAo" node="7Q_67PUJ1UQ" resolve="ledger" />
                    </node>
                  </node>
                  <node concept="3cpWsn" id="7Q_67PUJ1VZ" role="1Duv9x">
                    <property role="TrG5h" value="entry" />
                    <node concept="3Tqbb2" id="7Q_67PUJ9Zk" role="1tU5fm" />
                  </node>
                  <node concept="3clFbS" id="7Q_67PUJ1VP" role="2LFqv$">
                    <node concept="3clFbJ" id="7Q_67PUJ1VQ" role="3cqZAp">
                      <node concept="2OqwBi" id="7Q_67PUJ4DZ" role="3clFbw">
                        <node concept="2OqwBi" id="7Q_67PUJ2LD" role="2Oq$k0">
                          <node concept="37vLTw" id="7Q_67PUJ2LC" role="2Oq$k0">
                            <ref role="3cqZAo" node="7Q_67PUJ1YM" resolve="candidate" />
                          </node>
                          <node concept="2OwXpG" id="7Q_67PUJ2LE" role="2OqNvi">
                            <ref role="2Oxat5" node="7Q_67PUJ1Rx" resolve="key" />
                          </node>
                        </node>
                        <node concept="liA8E" id="7Q_67PUJ4E0" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                          <node concept="2OqwBi" id="7Q_67PUJ8OF" role="37wK5m">
                            <node concept="liA8E" id="7Q_67PUJ8OG" role="2OqNvi">
                              <ref role="37wK5l" to="mhbf:~SNode.getProperty(org.jetbrains.mps.openapi.language.SProperty)" resolve="getProperty" />
                              <node concept="37vLTw" id="7Q_67PUJ8OH" role="37wK5m">
                                <ref role="3cqZAo" node="7Q_67PUJ1Tl" resolve="ARTIFACT_KEY" />
                              </node>
                            </node>
                            <node concept="2JrnkZ" id="7Q_67PUJ9WN" role="2Oq$k0">
                              <node concept="37vLTw" id="7Q_67PUJ8jk" role="2JrQYb">
                                <ref role="3cqZAo" node="7Q_67PUJ1VZ" resolve="entry" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="7Q_67PUJ1VV" role="3clFbx">
                        <node concept="3clFbF" id="7Q_67PUJ1VW" role="3cqZAp">
                          <node concept="2OqwBi" id="7Q_67PUJ4Gl" role="3clFbG">
                            <node concept="37vLTw" id="7Q_67PUJ2LK" role="2Oq$k0">
                              <ref role="3cqZAo" node="7Q_67PUJ1VB" resolve="matches" />
                            </node>
                            <node concept="liA8E" id="7Q_67PUJ4Gm" role="2OqNvi">
                              <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                              <node concept="37vLTw" id="7Q_67PUJ4Gn" role="37wK5m">
                                <ref role="3cqZAo" node="7Q_67PUJ1VZ" resolve="entry" />
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
            <node concept="3clFbJ" id="7Q_67PUJ1W4" role="3cqZAp">
              <node concept="3eOSWO" id="7Q_67PUJ1W5" role="3clFbw">
                <node concept="2OqwBi" id="7Q_67PUJ4IE" role="3uHU7B">
                  <node concept="37vLTw" id="7Q_67PUJ2LP" role="2Oq$k0">
                    <ref role="3cqZAo" node="7Q_67PUJ1VB" resolve="matches" />
                  </node>
                  <node concept="liA8E" id="7Q_67PUJ4IF" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                  </node>
                </node>
                <node concept="3cmrfG" id="7Q_67PUJ1W7" role="3uHU7w">
                  <property role="3cmrfH" value="1" />
                </node>
              </node>
              <node concept="3clFbS" id="7Q_67PUJ1W9" role="3clFbx">
                <node concept="3clFbF" id="7Q_67PUJ1Wa" role="3cqZAp">
                  <node concept="2OqwBi" id="7Q_67PUJ4KY" role="3clFbG">
                    <node concept="37vLTw" id="7Q_67PUJ2LT" role="2Oq$k0">
                      <ref role="3cqZAo" node="7Q_67PUJ1UC" resolve="conflicts" />
                    </node>
                    <node concept="liA8E" id="7Q_67PUJ4KZ" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                      <node concept="3cpWs3" id="7Q_67PUJ4L0" role="37wK5m">
                        <node concept="Xl_RD" id="7Q_67PUJ4L1" role="3uHU7B">
                          <property role="Xl_RC" value="MBNF_AMBIGUOUS_ARTIFACT: " />
                        </node>
                        <node concept="2OqwBi" id="7Q_67PUJ8jq" role="3uHU7w">
                          <node concept="37vLTw" id="7Q_67PUJ8jp" role="2Oq$k0">
                            <ref role="3cqZAo" node="7Q_67PUJ1YM" resolve="candidate" />
                          </node>
                          <node concept="2OwXpG" id="7Q_67PUJ8jr" role="2OqNvi">
                            <ref role="2Oxat5" node="7Q_67PUJ1Rx" resolve="key" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3N13vt" id="7Q_67PUJ1Wf" role="3cqZAp" />
              </node>
            </node>
            <node concept="3clFbJ" id="7Q_67PUJ1Wg" role="3cqZAp">
              <node concept="3clFbC" id="7Q_67PUJ1Wh" role="3clFbw">
                <node concept="2OqwBi" id="7Q_67PUJ4Nl" role="3uHU7B">
                  <node concept="37vLTw" id="7Q_67PUJ2M0" role="2Oq$k0">
                    <ref role="3cqZAo" node="7Q_67PUJ1VB" resolve="matches" />
                  </node>
                  <node concept="liA8E" id="7Q_67PUJ4Nm" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                  </node>
                </node>
                <node concept="3cmrfG" id="7Q_67PUJ1Wj" role="3uHU7w">
                  <property role="3cmrfH" value="1" />
                </node>
              </node>
              <node concept="9aQIb" id="7Q_67PUJ1Xy" role="9aQIa">
                <node concept="3clFbS" id="7Q_67PUJ1Xz" role="9aQI4">
                  <node concept="1DcWWT" id="7Q_67PUJ1X$" role="3cqZAp">
                    <node concept="2OqwBi" id="7Q_67PUJ4NI" role="1DdaDG">
                      <node concept="liA8E" id="7Q_67PUJ4NJ" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SModel.getRootNodes()" resolve="getRootNodes" />
                      </node>
                      <node concept="2JrnkZ" id="7Q_67PUJ9WO" role="2Oq$k0">
                        <node concept="2OqwBi" id="7Q_67PUJ2M5" role="2JrQYb">
                          <node concept="37vLTw" id="7Q_67PUJ2M4" role="2Oq$k0">
                            <ref role="3cqZAo" node="7Q_67PUJ1YM" resolve="candidate" />
                          </node>
                          <node concept="2OwXpG" id="7Q_67PUJ2M6" role="2OqNvi">
                            <ref role="2Oxat5" node="7Q_67PUJ1Rp" resolve="target" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWsn" id="7Q_67PUJ1XQ" role="1Duv9x">
                      <property role="TrG5h" value="root" />
                      <node concept="3Tqbb2" id="7Q_67PUJ9Zl" role="1tU5fm" />
                    </node>
                    <node concept="3clFbS" id="7Q_67PUJ1XA" role="2LFqv$">
                      <node concept="3clFbJ" id="7Q_67PUJ1XB" role="3cqZAp">
                        <node concept="1Wc70l" id="7Q_67PUJ1XC" role="3clFbw">
                          <node concept="2OqwBi" id="7Q_67PUJ8jF" role="3uHU7B">
                            <node concept="2OqwBi" id="7Q_67PUJ4O1" role="2Oq$k0">
                              <node concept="liA8E" id="7Q_67PUJ4O2" role="2OqNvi">
                                <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                              </node>
                              <node concept="2JrnkZ" id="7Q_67PUJ9WP" role="2Oq$k0">
                                <node concept="37vLTw" id="7Q_67PUJ2Mi" role="2JrQYb">
                                  <ref role="3cqZAo" node="7Q_67PUJ1XQ" resolve="root" />
                                </node>
                              </node>
                            </node>
                            <node concept="liA8E" id="7Q_67PUJ8jG" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                              <node concept="2OqwBi" id="7Q_67PUJ8jH" role="37wK5m">
                                <node concept="liA8E" id="7Q_67PUJ8jL" role="2OqNvi">
                                  <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                                </node>
                                <node concept="2JrnkZ" id="7Q_67PUJ9WQ" role="2Oq$k0">
                                  <node concept="2OqwBi" id="7Q_67PUJ8jI" role="2JrQYb">
                                    <node concept="37vLTw" id="7Q_67PUJ8jJ" role="2Oq$k0">
                                      <ref role="3cqZAo" node="7Q_67PUJ1YM" resolve="candidate" />
                                    </node>
                                    <node concept="2OwXpG" id="7Q_67PUJ8jK" role="2OqNvi">
                                      <ref role="2Oxat5" node="7Q_67PUJ1Rl" resolve="generated" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2OqwBi" id="7Q_67PUJ4P0" role="3uHU7w">
                            <node concept="1rXfSq" id="7Q_67PUJ1XH" role="2Oq$k0">
                              <ref role="37wK5l" node="7Q_67PUJ2iU" resolve="legacyKey" />
                              <node concept="2OqwBi" id="7Q_67PUJ2Mv" role="37wK5m">
                                <node concept="37vLTw" id="7Q_67PUJ2Mu" role="2Oq$k0">
                                  <ref role="3cqZAo" node="7Q_67PUJ1YM" resolve="candidate" />
                                </node>
                                <node concept="2OwXpG" id="7Q_67PUJ2Mw" role="2OqNvi">
                                  <ref role="2Oxat5" node="7Q_67PUJ1Rl" resolve="generated" />
                                </node>
                              </node>
                            </node>
                            <node concept="liA8E" id="7Q_67PUJ4P1" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                              <node concept="1rXfSq" id="7Q_67PUJ4P2" role="37wK5m">
                                <ref role="37wK5l" node="7Q_67PUJ2iU" resolve="legacyKey" />
                                <node concept="37vLTw" id="7Q_67PUJ4P3" role="37wK5m">
                                  <ref role="3cqZAo" node="7Q_67PUJ1XQ" resolve="root" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbS" id="7Q_67PUJ1XM" role="3clFbx">
                          <node concept="3clFbF" id="7Q_67PUJ1XN" role="3cqZAp">
                            <node concept="2OqwBi" id="7Q_67PUJ4Rm" role="3clFbG">
                              <node concept="37vLTw" id="7Q_67PUJ2Mz" role="2Oq$k0">
                                <ref role="3cqZAo" node="7Q_67PUJ1VB" resolve="matches" />
                              </node>
                              <node concept="liA8E" id="7Q_67PUJ4Rn" role="2OqNvi">
                                <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                                <node concept="37vLTw" id="7Q_67PUJ4Ro" role="37wK5m">
                                  <ref role="3cqZAo" node="7Q_67PUJ1XQ" resolve="root" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="7Q_67PUJ1XU" role="3cqZAp">
                    <node concept="3eOSWO" id="7Q_67PUJ1XV" role="3clFbw">
                      <node concept="2OqwBi" id="7Q_67PUJ4TF" role="3uHU7B">
                        <node concept="37vLTw" id="7Q_67PUJ2MC" role="2Oq$k0">
                          <ref role="3cqZAo" node="7Q_67PUJ1VB" resolve="matches" />
                        </node>
                        <node concept="liA8E" id="7Q_67PUJ4TG" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                        </node>
                      </node>
                      <node concept="3cmrfG" id="7Q_67PUJ1XX" role="3uHU7w">
                        <property role="3cmrfH" value="1" />
                      </node>
                    </node>
                    <node concept="3clFbJ" id="7Q_67PUJ1Y5" role="9aQIa">
                      <node concept="3clFbC" id="7Q_67PUJ1Y6" role="3clFbw">
                        <node concept="2OqwBi" id="7Q_67PUJ4VZ" role="3uHU7B">
                          <node concept="37vLTw" id="7Q_67PUJ2MG" role="2Oq$k0">
                            <ref role="3cqZAo" node="7Q_67PUJ1VB" resolve="matches" />
                          </node>
                          <node concept="liA8E" id="7Q_67PUJ4W0" role="2OqNvi">
                            <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                          </node>
                        </node>
                        <node concept="3cmrfG" id="7Q_67PUJ1Y8" role="3uHU7w">
                          <property role="3cmrfH" value="1" />
                        </node>
                      </node>
                      <node concept="9aQIb" id="7Q_67PUJ1YF" role="9aQIa">
                        <node concept="3clFbS" id="7Q_67PUJ1YG" role="9aQI4">
                          <node concept="3clFbF" id="7Q_67PUJ1YH" role="3cqZAp">
                            <node concept="2OqwBi" id="7Q_67PUJ4Yj" role="3clFbG">
                              <node concept="37vLTw" id="7Q_67PUJ2MK" role="2Oq$k0">
                                <ref role="3cqZAo" node="7Q_67PUJ1Uy" resolve="decisions" />
                              </node>
                              <node concept="liA8E" id="7Q_67PUJ4Yk" role="2OqNvi">
                                <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                                <node concept="3cpWs3" id="7Q_67PUJ4Yl" role="37wK5m">
                                  <node concept="Xl_RD" id="7Q_67PUJ4Ym" role="3uHU7B">
                                    <property role="Xl_RC" value="CREATE " />
                                  </node>
                                  <node concept="2OqwBi" id="7Q_67PUJ8jY" role="3uHU7w">
                                    <node concept="37vLTw" id="7Q_67PUJ8jX" role="2Oq$k0">
                                      <ref role="3cqZAo" node="7Q_67PUJ1YM" resolve="candidate" />
                                    </node>
                                    <node concept="2OwXpG" id="7Q_67PUJ8jZ" role="2OqNvi">
                                      <ref role="2Oxat5" node="7Q_67PUJ1Rx" resolve="key" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="7Q_67PUJ1Ya" role="3clFbx">
                        <node concept="3clFbF" id="7Q_67PUJ1Yb" role="3cqZAp">
                          <node concept="37vLTI" id="7Q_67PUJ1Yc" role="3clFbG">
                            <node concept="2OqwBi" id="7Q_67PUJ2MS" role="37vLTJ">
                              <node concept="37vLTw" id="7Q_67PUJ2MR" role="2Oq$k0">
                                <ref role="3cqZAo" node="7Q_67PUJ1YM" resolve="candidate" />
                              </node>
                              <node concept="2OwXpG" id="7Q_67PUJ2MT" role="2OqNvi">
                                <ref role="2Oxat5" node="7Q_67PUJ1R_" resolve="existing" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="7Q_67PUJ50E" role="37vLTx">
                              <node concept="37vLTw" id="7Q_67PUJ2MW" role="2Oq$k0">
                                <ref role="3cqZAo" node="7Q_67PUJ1VB" resolve="matches" />
                              </node>
                              <node concept="liA8E" id="7Q_67PUJ50F" role="2OqNvi">
                                <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                                <node concept="3cmrfG" id="7Q_67PUJ50G" role="37wK5m">
                                  <property role="3cmrfH" value="0" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbJ" id="7Q_67PUJ1Yg" role="3cqZAp">
                          <node concept="3fqX7Q" id="7Q_67PUJ1Yh" role="3clFbw">
                            <node concept="2OqwBi" id="7Q_67PUJ52O" role="3fr31v">
                              <node concept="1rXfSq" id="7Q_67PUJ1Yj" role="2Oq$k0">
                                <ref role="37wK5l" node="7Q_67PUJ2cx" resolve="semanticSnapshot" />
                                <node concept="2OqwBi" id="7Q_67PUJ2Oe" role="37wK5m">
                                  <node concept="37vLTw" id="7Q_67PUJ2Od" role="2Oq$k0">
                                    <ref role="3cqZAo" node="7Q_67PUJ1YM" resolve="candidate" />
                                  </node>
                                  <node concept="2OwXpG" id="7Q_67PUJ2Of" role="2OqNvi">
                                    <ref role="2Oxat5" node="7Q_67PUJ1R_" resolve="existing" />
                                  </node>
                                </node>
                                <node concept="37vLTw" id="7Q_67PUJ1Yl" role="37wK5m">
                                  <ref role="3cqZAo" node="7Q_67PUJ1UI" resolve="candidates" />
                                </node>
                              </node>
                              <node concept="liA8E" id="7Q_67PUJ52P" role="2OqNvi">
                                <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                                <node concept="1rXfSq" id="7Q_67PUJ52Q" role="37wK5m">
                                  <ref role="37wK5l" node="7Q_67PUJ2cx" resolve="semanticSnapshot" />
                                  <node concept="2OqwBi" id="7Q_67PUJ52R" role="37wK5m">
                                    <node concept="37vLTw" id="7Q_67PUJ52S" role="2Oq$k0">
                                      <ref role="3cqZAo" node="7Q_67PUJ1YM" resolve="candidate" />
                                    </node>
                                    <node concept="2OwXpG" id="7Q_67PUJ52T" role="2OqNvi">
                                      <ref role="2Oxat5" node="7Q_67PUJ1Rl" resolve="generated" />
                                    </node>
                                  </node>
                                  <node concept="37vLTw" id="7Q_67PUJ52U" role="37wK5m">
                                    <ref role="3cqZAo" node="7Q_67PUJ1UI" resolve="candidates" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="9aQIb" id="7Q_67PUJ1Yy" role="9aQIa">
                            <node concept="3clFbS" id="7Q_67PUJ1Yz" role="9aQI4">
                              <node concept="3clFbF" id="7Q_67PUJ1Y$" role="3cqZAp">
                                <node concept="2OqwBi" id="7Q_67PUJ55m" role="3clFbG">
                                  <node concept="37vLTw" id="7Q_67PUJ2On" role="2Oq$k0">
                                    <ref role="3cqZAo" node="7Q_67PUJ1Uy" resolve="decisions" />
                                  </node>
                                  <node concept="liA8E" id="7Q_67PUJ55n" role="2OqNvi">
                                    <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                                    <node concept="3cpWs3" id="7Q_67PUJ55o" role="37wK5m">
                                      <node concept="3cpWs3" id="7Q_67PUJ55p" role="3uHU7B">
                                        <node concept="Xl_RD" id="7Q_67PUJ55q" role="3uHU7B">
                                          <property role="Xl_RC" value="ADOPT " />
                                        </node>
                                        <node concept="2OqwBi" id="7Q_67PUJ8k3" role="3uHU7w">
                                          <node concept="37vLTw" id="7Q_67PUJ8k2" role="2Oq$k0">
                                            <ref role="3cqZAo" node="7Q_67PUJ1YM" resolve="candidate" />
                                          </node>
                                          <node concept="2OwXpG" id="7Q_67PUJ8k4" role="2OqNvi">
                                            <ref role="2Oxat5" node="7Q_67PUJ1Rx" resolve="key" />
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="Xl_RD" id="7Q_67PUJ55s" role="3uHU7w">
                                        <property role="Xl_RC" value=" (retain all existing identities)" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbS" id="7Q_67PUJ1Yq" role="3clFbx">
                            <node concept="3clFbF" id="7Q_67PUJ1Yr" role="3cqZAp">
                              <node concept="2OqwBi" id="7Q_67PUJ57J" role="3clFbG">
                                <node concept="37vLTw" id="7Q_67PUJ2Ow" role="2Oq$k0">
                                  <ref role="3cqZAo" node="7Q_67PUJ1UC" resolve="conflicts" />
                                </node>
                                <node concept="liA8E" id="7Q_67PUJ57K" role="2OqNvi">
                                  <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                                  <node concept="3cpWs3" id="7Q_67PUJ57L" role="37wK5m">
                                    <node concept="3cpWs3" id="7Q_67PUJ57M" role="3uHU7B">
                                      <node concept="Xl_RD" id="7Q_67PUJ57N" role="3uHU7B">
                                        <property role="Xl_RC" value="MBNF_ADOPTION_CONFLICT: " />
                                      </node>
                                      <node concept="2OqwBi" id="7Q_67PUJ8k8" role="3uHU7w">
                                        <node concept="37vLTw" id="7Q_67PUJ8k7" role="2Oq$k0">
                                          <ref role="3cqZAo" node="7Q_67PUJ1YM" resolve="candidate" />
                                        </node>
                                        <node concept="2OwXpG" id="7Q_67PUJ8k9" role="2OqNvi">
                                          <ref role="2Oxat5" node="7Q_67PUJ1Rx" resolve="key" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="Xl_RD" id="7Q_67PUJ57P" role="3uHU7w">
                                      <property role="Xl_RC" value=" (legacy artifact differs from generated input)" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbS" id="7Q_67PUJ1XZ" role="3clFbx">
                      <node concept="3clFbF" id="7Q_67PUJ1Y0" role="3cqZAp">
                        <node concept="2OqwBi" id="7Q_67PUJ5a8" role="3clFbG">
                          <node concept="37vLTw" id="7Q_67PUJ2OD" role="2Oq$k0">
                            <ref role="3cqZAo" node="7Q_67PUJ1UC" resolve="conflicts" />
                          </node>
                          <node concept="liA8E" id="7Q_67PUJ5a9" role="2OqNvi">
                            <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                            <node concept="3cpWs3" id="7Q_67PUJ5aa" role="37wK5m">
                              <node concept="Xl_RD" id="7Q_67PUJ5ab" role="3uHU7B">
                                <property role="Xl_RC" value="MBNF_AMBIGUOUS_ADOPTION: " />
                              </node>
                              <node concept="2OqwBi" id="7Q_67PUJ8kd" role="3uHU7w">
                                <node concept="37vLTw" id="7Q_67PUJ8kc" role="2Oq$k0">
                                  <ref role="3cqZAo" node="7Q_67PUJ1YM" resolve="candidate" />
                                </node>
                                <node concept="2OwXpG" id="7Q_67PUJ8ke" role="2OqNvi">
                                  <ref role="2Oxat5" node="7Q_67PUJ1Rx" resolve="key" />
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
              <node concept="3clFbS" id="7Q_67PUJ1Wl" role="3clFbx">
                <node concept="3clFbF" id="7Q_67PUJ1Wm" role="3cqZAp">
                  <node concept="37vLTI" id="7Q_67PUJ1Wn" role="3clFbG">
                    <node concept="2OqwBi" id="7Q_67PUJ2OL" role="37vLTJ">
                      <node concept="37vLTw" id="7Q_67PUJ2OK" role="2Oq$k0">
                        <ref role="3cqZAo" node="7Q_67PUJ1YM" resolve="candidate" />
                      </node>
                      <node concept="2OwXpG" id="7Q_67PUJ2OM" role="2OqNvi">
                        <ref role="2Oxat5" node="7Q_67PUJ1RD" resolve="record" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="7Q_67PUJ5cv" role="37vLTx">
                      <node concept="37vLTw" id="7Q_67PUJ2OP" role="2Oq$k0">
                        <ref role="3cqZAo" node="7Q_67PUJ1VB" resolve="matches" />
                      </node>
                      <node concept="liA8E" id="7Q_67PUJ5cw" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                        <node concept="3cmrfG" id="7Q_67PUJ5cx" role="37wK5m">
                          <property role="3cmrfH" value="0" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="7Q_67PUJ1Wr" role="3cqZAp">
                  <node concept="2OqwBi" id="7Q_67PUJ5eB" role="3clFbG">
                    <node concept="37vLTw" id="7Q_67PUJ2OU" role="2Oq$k0">
                      <ref role="3cqZAo" node="7Q_67PUJ1Vu" resolve="matched" />
                    </node>
                    <node concept="liA8E" id="7Q_67PUJ5eC" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                      <node concept="2OqwBi" id="7Q_67PUJ8ki" role="37wK5m">
                        <node concept="37vLTw" id="7Q_67PUJ8kh" role="2Oq$k0">
                          <ref role="3cqZAo" node="7Q_67PUJ1YM" resolve="candidate" />
                        </node>
                        <node concept="2OwXpG" id="7Q_67PUJ8kj" role="2OqNvi">
                          <ref role="2Oxat5" node="7Q_67PUJ1RD" resolve="record" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="7Q_67PUJ1Wu" role="3cqZAp">
                  <node concept="37vLTI" id="7Q_67PUJ1Wv" role="3clFbG">
                    <node concept="2OqwBi" id="7Q_67PUJ2P0" role="37vLTJ">
                      <node concept="37vLTw" id="7Q_67PUJ2OZ" role="2Oq$k0">
                        <ref role="3cqZAo" node="7Q_67PUJ1YM" resolve="candidate" />
                      </node>
                      <node concept="2OwXpG" id="7Q_67PUJ2P1" role="2OqNvi">
                        <ref role="2Oxat5" node="7Q_67PUJ1R_" resolve="existing" />
                      </node>
                    </node>
                    <node concept="1rXfSq" id="7Q_67PUJ1Wx" role="37vLTx">
                      <ref role="37wK5l" node="7Q_67PUJ2zR" resolve="artifactTarget" />
                      <node concept="2OqwBi" id="7Q_67PUJ2P5" role="37wK5m">
                        <node concept="37vLTw" id="7Q_67PUJ2P4" role="2Oq$k0">
                          <ref role="3cqZAo" node="7Q_67PUJ1YM" resolve="candidate" />
                        </node>
                        <node concept="2OwXpG" id="7Q_67PUJ2P6" role="2OqNvi">
                          <ref role="2Oxat5" node="7Q_67PUJ1RD" resolve="record" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="7Q_67PUJ1Wz" role="3cqZAp">
                  <node concept="22lmx$" id="7Q_67PUJ1W$" role="3clFbw">
                    <node concept="3clFbC" id="7Q_67PUJ1W_" role="3uHU7B">
                      <node concept="2OqwBi" id="7Q_67PUJ2Pa" role="3uHU7B">
                        <node concept="37vLTw" id="7Q_67PUJ2P9" role="2Oq$k0">
                          <ref role="3cqZAo" node="7Q_67PUJ1YM" resolve="candidate" />
                        </node>
                        <node concept="2OwXpG" id="7Q_67PUJ2Pb" role="2OqNvi">
                          <ref role="2Oxat5" node="7Q_67PUJ1R_" resolve="existing" />
                        </node>
                      </node>
                      <node concept="10Nm6u" id="7Q_67PUJ1WB" role="3uHU7w" />
                    </node>
                    <node concept="3y3z36" id="7Q_67PUJ1WC" role="3uHU7w">
                      <node concept="2OqwBi" id="7Q_67PUJ5f1" role="3uHU7B">
                        <node concept="liA8E" id="7Q_67PUJ5f2" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SNode.getModel()" resolve="getModel" />
                        </node>
                        <node concept="2JrnkZ" id="7Q_67PUJ9WR" role="2Oq$k0">
                          <node concept="2OqwBi" id="7Q_67PUJ2Pf" role="2JrQYb">
                            <node concept="37vLTw" id="7Q_67PUJ2Pe" role="2Oq$k0">
                              <ref role="3cqZAo" node="7Q_67PUJ1YM" resolve="candidate" />
                            </node>
                            <node concept="2OwXpG" id="7Q_67PUJ2Pg" role="2OqNvi">
                              <ref role="2Oxat5" node="7Q_67PUJ1R_" resolve="existing" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="7Q_67PUJ2Pl" role="3uHU7w">
                        <node concept="37vLTw" id="7Q_67PUJ2Pk" role="2Oq$k0">
                          <ref role="3cqZAo" node="7Q_67PUJ1YM" resolve="candidate" />
                        </node>
                        <node concept="2OwXpG" id="7Q_67PUJ2Pm" role="2OqNvi">
                          <ref role="2Oxat5" node="7Q_67PUJ1Rp" resolve="target" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="7Q_67PUJ1WG" role="3clFbx">
                    <node concept="3clFbF" id="7Q_67PUJ1WH" role="3cqZAp">
                      <node concept="2OqwBi" id="7Q_67PUJ5hl" role="3clFbG">
                        <node concept="37vLTw" id="7Q_67PUJ2Pp" role="2Oq$k0">
                          <ref role="3cqZAo" node="7Q_67PUJ1UC" resolve="conflicts" />
                        </node>
                        <node concept="liA8E" id="7Q_67PUJ5hm" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                          <node concept="3cpWs3" id="7Q_67PUJ5hn" role="37wK5m">
                            <node concept="Xl_RD" id="7Q_67PUJ5ho" role="3uHU7B">
                              <property role="Xl_RC" value="MBNF_GENERATED_TARGET_MISSING: " />
                            </node>
                            <node concept="2OqwBi" id="7Q_67PUJ8kn" role="3uHU7w">
                              <node concept="37vLTw" id="7Q_67PUJ8km" role="2Oq$k0">
                                <ref role="3cqZAo" node="7Q_67PUJ1YM" resolve="candidate" />
                              </node>
                              <node concept="2OwXpG" id="7Q_67PUJ8ko" role="2OqNvi">
                                <ref role="2Oxat5" node="7Q_67PUJ1Rx" resolve="key" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3N13vt" id="7Q_67PUJ1WM" role="3cqZAp" />
                  </node>
                </node>
                <node concept="3clFbJ" id="7Q_67PUJ1WN" role="3cqZAp">
                  <node concept="3fqX7Q" id="7Q_67PUJ1WO" role="3clFbw">
                    <node concept="2OqwBi" id="7Q_67PUJ5i0" role="3fr31v">
                      <node concept="1rXfSq" id="7Q_67PUJ1WQ" role="2Oq$k0">
                        <ref role="37wK5l" node="7Q_67PUJ2c0" resolve="snapshot" />
                        <node concept="2OqwBi" id="7Q_67PUJ2P_" role="37wK5m">
                          <node concept="37vLTw" id="7Q_67PUJ2P$" role="2Oq$k0">
                            <ref role="3cqZAo" node="7Q_67PUJ1YM" resolve="candidate" />
                          </node>
                          <node concept="2OwXpG" id="7Q_67PUJ2PA" role="2OqNvi">
                            <ref role="2Oxat5" node="7Q_67PUJ1R_" resolve="existing" />
                          </node>
                        </node>
                        <node concept="3clFbT" id="7Q_67PUJ1WS" role="37wK5m" />
                      </node>
                      <node concept="liA8E" id="7Q_67PUJ5i1" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                        <node concept="2OqwBi" id="7Q_67PUJ8kB" role="37wK5m">
                          <node concept="liA8E" id="7Q_67PUJ8kC" role="2OqNvi">
                            <ref role="37wK5l" to="mhbf:~SNode.getProperty(org.jetbrains.mps.openapi.language.SProperty)" resolve="getProperty" />
                            <node concept="37vLTw" id="7Q_67PUJ8kD" role="37wK5m">
                              <ref role="3cqZAo" node="7Q_67PUJ1Tp" resolve="ARTIFACT_BASELINE" />
                            </node>
                          </node>
                          <node concept="2JrnkZ" id="7Q_67PUJ9WS" role="2Oq$k0">
                            <node concept="2OqwBi" id="7Q_67PUJ5i3" role="2JrQYb">
                              <node concept="37vLTw" id="7Q_67PUJ5i4" role="2Oq$k0">
                                <ref role="3cqZAo" node="7Q_67PUJ1YM" resolve="candidate" />
                              </node>
                              <node concept="2OwXpG" id="7Q_67PUJ5i5" role="2OqNvi">
                                <ref role="2Oxat5" node="7Q_67PUJ1RD" resolve="record" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="7Q_67PUJ1WW" role="3clFbx">
                    <node concept="3clFbF" id="7Q_67PUJ1WX" role="3cqZAp">
                      <node concept="2OqwBi" id="7Q_67PUJ5ky" role="3clFbG">
                        <node concept="37vLTw" id="7Q_67PUJ2PK" role="2Oq$k0">
                          <ref role="3cqZAo" node="7Q_67PUJ1UC" resolve="conflicts" />
                        </node>
                        <node concept="liA8E" id="7Q_67PUJ5kz" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                          <node concept="3cpWs3" id="7Q_67PUJ5k$" role="37wK5m">
                            <node concept="3cpWs3" id="7Q_67PUJ5k_" role="3uHU7B">
                              <node concept="Xl_RD" id="7Q_67PUJ5kA" role="3uHU7B">
                                <property role="Xl_RC" value="MBNF_GENERATED_EDIT: " />
                              </node>
                              <node concept="2OqwBi" id="7Q_67PUJ8kH" role="3uHU7w">
                                <node concept="37vLTw" id="7Q_67PUJ8kG" role="2Oq$k0">
                                  <ref role="3cqZAo" node="7Q_67PUJ1YM" resolve="candidate" />
                                </node>
                                <node concept="2OwXpG" id="7Q_67PUJ8kI" role="2OqNvi">
                                  <ref role="2Oxat5" node="7Q_67PUJ1Rx" resolve="key" />
                                </node>
                              </node>
                            </node>
                            <node concept="Xl_RD" id="7Q_67PUJ5kC" role="3uHU7w">
                              <property role="Xl_RC" value=" (restore or explicitly resolve owned edits)" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3N13vt" id="7Q_67PUJ1X4" role="3cqZAp" />
                  </node>
                </node>
                <node concept="3clFbJ" id="7Q_67PUJ1X5" role="3cqZAp">
                  <node concept="3fqX7Q" id="7Q_67PUJ1X6" role="3clFbw">
                    <node concept="2OqwBi" id="7Q_67PUJ5mK" role="3fr31v">
                      <node concept="1rXfSq" id="7Q_67PUJ1X8" role="2Oq$k0">
                        <ref role="37wK5l" node="7Q_67PUJ2cx" resolve="semanticSnapshot" />
                        <node concept="2OqwBi" id="7Q_67PUJ2R6" role="37wK5m">
                          <node concept="37vLTw" id="7Q_67PUJ2R5" role="2Oq$k0">
                            <ref role="3cqZAo" node="7Q_67PUJ1YM" resolve="candidate" />
                          </node>
                          <node concept="2OwXpG" id="7Q_67PUJ2R7" role="2OqNvi">
                            <ref role="2Oxat5" node="7Q_67PUJ1R_" resolve="existing" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="7Q_67PUJ1Xa" role="37wK5m">
                          <ref role="3cqZAo" node="7Q_67PUJ1UI" resolve="candidates" />
                        </node>
                      </node>
                      <node concept="liA8E" id="7Q_67PUJ5mL" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                        <node concept="1rXfSq" id="7Q_67PUJ5mM" role="37wK5m">
                          <ref role="37wK5l" node="7Q_67PUJ2cx" resolve="semanticSnapshot" />
                          <node concept="2OqwBi" id="7Q_67PUJ5mN" role="37wK5m">
                            <node concept="37vLTw" id="7Q_67PUJ5mO" role="2Oq$k0">
                              <ref role="3cqZAo" node="7Q_67PUJ1YM" resolve="candidate" />
                            </node>
                            <node concept="2OwXpG" id="7Q_67PUJ5mP" role="2OqNvi">
                              <ref role="2Oxat5" node="7Q_67PUJ1Rl" resolve="generated" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="7Q_67PUJ5mQ" role="37wK5m">
                            <ref role="3cqZAo" node="7Q_67PUJ1UI" resolve="candidates" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="9aQIb" id="7Q_67PUJ1Xr" role="9aQIa">
                    <node concept="3clFbS" id="7Q_67PUJ1Xs" role="9aQI4">
                      <node concept="3clFbF" id="7Q_67PUJ1Xt" role="3cqZAp">
                        <node concept="2OqwBi" id="7Q_67PUJ5pi" role="3clFbG">
                          <node concept="37vLTw" id="7Q_67PUJ2Rf" role="2Oq$k0">
                            <ref role="3cqZAo" node="7Q_67PUJ1Uy" resolve="decisions" />
                          </node>
                          <node concept="liA8E" id="7Q_67PUJ5pj" role="2OqNvi">
                            <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                            <node concept="3cpWs3" id="7Q_67PUJ5pk" role="37wK5m">
                              <node concept="Xl_RD" id="7Q_67PUJ5pl" role="3uHU7B">
                                <property role="Xl_RC" value="UNCHANGED " />
                              </node>
                              <node concept="2OqwBi" id="7Q_67PUJ8kM" role="3uHU7w">
                                <node concept="37vLTw" id="7Q_67PUJ8kL" role="2Oq$k0">
                                  <ref role="3cqZAo" node="7Q_67PUJ1YM" resolve="candidate" />
                                </node>
                                <node concept="2OwXpG" id="7Q_67PUJ8kN" role="2OqNvi">
                                  <ref role="2Oxat5" node="7Q_67PUJ1Rx" resolve="key" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="7Q_67PUJ1Xf" role="3clFbx">
                    <node concept="3clFbF" id="7Q_67PUJ1Xg" role="3cqZAp">
                      <node concept="37vLTI" id="7Q_67PUJ1Xh" role="3clFbG">
                        <node concept="2OqwBi" id="7Q_67PUJ2Rn" role="37vLTJ">
                          <node concept="37vLTw" id="7Q_67PUJ2Rm" role="2Oq$k0">
                            <ref role="3cqZAo" node="7Q_67PUJ1YM" resolve="candidate" />
                          </node>
                          <node concept="2OwXpG" id="7Q_67PUJ2Ro" role="2OqNvi">
                            <ref role="2Oxat5" node="7Q_67PUJ1RL" resolve="updated" />
                          </node>
                        </node>
                        <node concept="3clFbT" id="7Q_67PUJ1Xj" role="37vLTx">
                          <property role="3clFbU" value="true" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="7Q_67PUJ1Xk" role="3cqZAp">
                      <node concept="2OqwBi" id="7Q_67PUJ5rD" role="3clFbG">
                        <node concept="37vLTw" id="7Q_67PUJ2Rr" role="2Oq$k0">
                          <ref role="3cqZAo" node="7Q_67PUJ1Uy" resolve="decisions" />
                        </node>
                        <node concept="liA8E" id="7Q_67PUJ5rE" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                          <node concept="3cpWs3" id="7Q_67PUJ5rF" role="37wK5m">
                            <node concept="3cpWs3" id="7Q_67PUJ5rG" role="3uHU7B">
                              <node concept="Xl_RD" id="7Q_67PUJ5rH" role="3uHU7B">
                                <property role="Xl_RC" value="UPDATE " />
                              </node>
                              <node concept="2OqwBi" id="7Q_67PUJ8kR" role="3uHU7w">
                                <node concept="37vLTw" id="7Q_67PUJ8kQ" role="2Oq$k0">
                                  <ref role="3cqZAo" node="7Q_67PUJ1YM" resolve="candidate" />
                                </node>
                                <node concept="2OwXpG" id="7Q_67PUJ8kS" role="2OqNvi">
                                  <ref role="2Oxat5" node="7Q_67PUJ1Rx" resolve="key" />
                                </node>
                              </node>
                            </node>
                            <node concept="Xl_RD" id="7Q_67PUJ5rJ" role="3uHU7w">
                              <property role="Xl_RC" value=" (preserve corresponding declaration identities)" />
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
        <node concept="3clFbJ" id="7Q_67PUJ1YQ" role="3cqZAp">
          <node concept="3y3z36" id="7Q_67PUJ1YR" role="3clFbw">
            <node concept="37vLTw" id="7Q_67PUJ1YS" role="3uHU7B">
              <ref role="3cqZAo" node="7Q_67PUJ1UQ" resolve="ledger" />
            </node>
            <node concept="10Nm6u" id="7Q_67PUJ1YT" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="7Q_67PUJ1YV" role="3clFbx">
            <node concept="1DcWWT" id="7Q_67PUJ1YW" role="3cqZAp">
              <node concept="1rXfSq" id="7Q_67PUJ1ZG" role="1DdaDG">
                <ref role="37wK5l" node="7Q_67PUJ2zk" resolve="artifacts" />
                <node concept="37vLTw" id="7Q_67PUJ1ZH" role="37wK5m">
                  <ref role="3cqZAo" node="7Q_67PUJ1UQ" resolve="ledger" />
                </node>
              </node>
              <node concept="3cpWsn" id="7Q_67PUJ1ZD" role="1Duv9x">
                <property role="TrG5h" value="entry" />
                <node concept="3Tqbb2" id="7Q_67PUJ9Zm" role="1tU5fm" />
              </node>
              <node concept="3clFbS" id="7Q_67PUJ1YY" role="2LFqv$">
                <node concept="3cpWs8" id="7Q_67PUJ1Z0" role="3cqZAp">
                  <node concept="3cpWsn" id="7Q_67PUJ1YZ" role="3cpWs9">
                    <property role="TrG5h" value="target" />
                    <node concept="3Tqbb2" id="7Q_67PUJ9Zn" role="1tU5fm" />
                    <node concept="1rXfSq" id="7Q_67PUJ1Z2" role="33vP2m">
                      <ref role="37wK5l" node="7Q_67PUJ2zR" resolve="artifactTarget" />
                      <node concept="37vLTw" id="7Q_67PUJ1Z3" role="37wK5m">
                        <ref role="3cqZAo" node="7Q_67PUJ1ZD" resolve="entry" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="7Q_67PUJ1Z4" role="3cqZAp">
                  <node concept="1Wc70l" id="7Q_67PUJ1Z5" role="3clFbw">
                    <node concept="1Wc70l" id="7Q_67PUJ1Z6" role="3uHU7B">
                      <node concept="3fqX7Q" id="7Q_67PUJ1Z7" role="3uHU7B">
                        <node concept="2OqwBi" id="7Q_67PUJ5tP" role="3fr31v">
                          <node concept="37vLTw" id="7Q_67PUJ2R$" role="2Oq$k0">
                            <ref role="3cqZAo" node="7Q_67PUJ1Vu" resolve="matched" />
                          </node>
                          <node concept="liA8E" id="7Q_67PUJ5tQ" role="2OqNvi">
                            <ref role="37wK5l" to="33ny:~Set.contains(java.lang.Object)" resolve="contains" />
                            <node concept="37vLTw" id="7Q_67PUJ5tR" role="37wK5m">
                              <ref role="3cqZAo" node="7Q_67PUJ1ZD" resolve="entry" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3y3z36" id="7Q_67PUJ1Za" role="3uHU7w">
                        <node concept="37vLTw" id="7Q_67PUJ1Zb" role="3uHU7B">
                          <ref role="3cqZAo" node="7Q_67PUJ1YZ" resolve="target" />
                        </node>
                        <node concept="10Nm6u" id="7Q_67PUJ1Zc" role="3uHU7w" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="7Q_67PUJ5w9" role="3uHU7w">
                      <node concept="37vLTw" id="7Q_67PUJ2RD" role="2Oq$k0">
                        <ref role="3cqZAo" node="7Q_67PUJ1TV" resolve="targets" />
                      </node>
                      <node concept="liA8E" id="7Q_67PUJ5wa" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~List.contains(java.lang.Object)" resolve="contains" />
                        <node concept="2OqwBi" id="7Q_67PUJ8OS" role="37wK5m">
                          <node concept="liA8E" id="7Q_67PUJ8OT" role="2OqNvi">
                            <ref role="37wK5l" to="mhbf:~SNode.getModel()" resolve="getModel" />
                          </node>
                          <node concept="2JrnkZ" id="7Q_67PUJ9WT" role="2Oq$k0">
                            <node concept="37vLTw" id="7Q_67PUJ8kV" role="2JrQYb">
                              <ref role="3cqZAo" node="7Q_67PUJ1YZ" resolve="target" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="7Q_67PUJ1Zg" role="3clFbx">
                    <node concept="3clFbJ" id="7Q_67PUJ1Zh" role="3cqZAp">
                      <node concept="3fqX7Q" id="7Q_67PUJ1Zi" role="3clFbw">
                        <node concept="2OqwBi" id="7Q_67PUJ2Sf" role="3fr31v">
                          <node concept="1rXfSq" id="7Q_67PUJ1Zk" role="2Oq$k0">
                            <ref role="37wK5l" node="7Q_67PUJ2c0" resolve="snapshot" />
                            <node concept="37vLTw" id="7Q_67PUJ1Zl" role="37wK5m">
                              <ref role="3cqZAo" node="7Q_67PUJ1YZ" resolve="target" />
                            </node>
                            <node concept="3clFbT" id="7Q_67PUJ1Zm" role="37wK5m" />
                          </node>
                          <node concept="liA8E" id="7Q_67PUJ2Sg" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                            <node concept="2OqwBi" id="7Q_67PUJ8l6" role="37wK5m">
                              <node concept="liA8E" id="7Q_67PUJ8l7" role="2OqNvi">
                                <ref role="37wK5l" to="mhbf:~SNode.getProperty(org.jetbrains.mps.openapi.language.SProperty)" resolve="getProperty" />
                                <node concept="37vLTw" id="7Q_67PUJ8l8" role="37wK5m">
                                  <ref role="3cqZAo" node="7Q_67PUJ1Tp" resolve="ARTIFACT_BASELINE" />
                                </node>
                              </node>
                              <node concept="2JrnkZ" id="7Q_67PUJ9WU" role="2Oq$k0">
                                <node concept="37vLTw" id="7Q_67PUJ5we" role="2JrQYb">
                                  <ref role="3cqZAo" node="7Q_67PUJ1ZD" resolve="entry" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="9aQIb" id="7Q_67PUJ1Zx" role="9aQIa">
                        <node concept="3clFbS" id="7Q_67PUJ1Zy" role="9aQI4">
                          <node concept="3clFbF" id="7Q_67PUJ1Zz" role="3cqZAp">
                            <node concept="2OqwBi" id="7Q_67PUJ5yz" role="3clFbG">
                              <node concept="37vLTw" id="7Q_67PUJ2Sl" role="2Oq$k0">
                                <ref role="3cqZAo" node="7Q_67PUJ1Uy" resolve="decisions" />
                              </node>
                              <node concept="liA8E" id="7Q_67PUJ5y$" role="2OqNvi">
                                <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                                <node concept="3cpWs3" id="7Q_67PUJ5y_" role="37wK5m">
                                  <node concept="Xl_RD" id="7Q_67PUJ5yA" role="3uHU7B">
                                    <property role="Xl_RC" value="REMOVE " />
                                  </node>
                                  <node concept="2OqwBi" id="7Q_67PUJ8P3" role="3uHU7w">
                                    <node concept="liA8E" id="7Q_67PUJ8P4" role="2OqNvi">
                                      <ref role="37wK5l" to="mhbf:~SNode.getProperty(org.jetbrains.mps.openapi.language.SProperty)" resolve="getProperty" />
                                      <node concept="37vLTw" id="7Q_67PUJ8P5" role="37wK5m">
                                        <ref role="3cqZAo" node="7Q_67PUJ1Tl" resolve="ARTIFACT_KEY" />
                                      </node>
                                    </node>
                                    <node concept="2JrnkZ" id="7Q_67PUJ9WV" role="2Oq$k0">
                                      <node concept="37vLTw" id="7Q_67PUJ8lb" role="2JrQYb">
                                        <ref role="3cqZAo" node="7Q_67PUJ1ZD" resolve="entry" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="7Q_67PUJ1Zq" role="3clFbx">
                        <node concept="3clFbF" id="7Q_67PUJ1Zr" role="3cqZAp">
                          <node concept="2OqwBi" id="7Q_67PUJ5$V" role="3clFbG">
                            <node concept="37vLTw" id="7Q_67PUJ2St" role="2Oq$k0">
                              <ref role="3cqZAo" node="7Q_67PUJ1UC" resolve="conflicts" />
                            </node>
                            <node concept="liA8E" id="7Q_67PUJ5$W" role="2OqNvi">
                              <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                              <node concept="3cpWs3" id="7Q_67PUJ5$X" role="37wK5m">
                                <node concept="Xl_RD" id="7Q_67PUJ5$Y" role="3uHU7B">
                                  <property role="Xl_RC" value="MBNF_GENERATED_EDIT: " />
                                </node>
                                <node concept="2OqwBi" id="7Q_67PUJ8Pf" role="3uHU7w">
                                  <node concept="liA8E" id="7Q_67PUJ8Pg" role="2OqNvi">
                                    <ref role="37wK5l" to="mhbf:~SNode.getProperty(org.jetbrains.mps.openapi.language.SProperty)" resolve="getProperty" />
                                    <node concept="37vLTw" id="7Q_67PUJ8Ph" role="37wK5m">
                                      <ref role="3cqZAo" node="7Q_67PUJ1Tl" resolve="ARTIFACT_KEY" />
                                    </node>
                                  </node>
                                  <node concept="2JrnkZ" id="7Q_67PUJ9WW" role="2Oq$k0">
                                    <node concept="37vLTw" id="7Q_67PUJ8lg" role="2JrQYb">
                                      <ref role="3cqZAo" node="7Q_67PUJ1ZD" resolve="entry" />
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
        </node>
        <node concept="3clFbJ" id="7Q_67PUJ1ZI" role="3cqZAp">
          <node concept="2OqwBi" id="7Q_67PUJ5Bj" role="3clFbw">
            <node concept="37vLTw" id="7Q_67PUJ2S_" role="2Oq$k0">
              <ref role="3cqZAo" node="7Q_67PUJ1UC" resolve="conflicts" />
            </node>
            <node concept="liA8E" id="7Q_67PUJ5Bk" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.isEmpty()" resolve="isEmpty" />
            </node>
          </node>
          <node concept="3clFbS" id="7Q_67PUJ1ZL" role="3clFbx">
            <node concept="3clFbF" id="7Q_67PUJ1ZM" role="3cqZAp">
              <node concept="1rXfSq" id="7Q_67PUJ1ZN" role="3clFbG">
                <ref role="37wK5l" node="7Q_67PUJ2nX" resolve="preflight" />
                <node concept="37vLTw" id="7Q_67PUJ1ZO" role="37wK5m">
                  <ref role="3cqZAo" node="7Q_67PUJ1UI" resolve="candidates" />
                </node>
                <node concept="1rXfSq" id="7Q_67PUJ1ZP" role="37wK5m">
                  <ref role="37wK5l" node="7Q_67PUJ2ld" resolve="removedRecords" />
                  <node concept="37vLTw" id="7Q_67PUJ1ZQ" role="37wK5m">
                    <ref role="3cqZAo" node="7Q_67PUJ1UQ" resolve="ledger" />
                  </node>
                  <node concept="37vLTw" id="7Q_67PUJ1ZR" role="37wK5m">
                    <ref role="3cqZAo" node="7Q_67PUJ1UI" resolve="candidates" />
                  </node>
                  <node concept="37vLTw" id="7Q_67PUJ1ZS" role="37wK5m">
                    <ref role="3cqZAo" node="7Q_67PUJ1TV" resolve="targets" />
                  </node>
                </node>
                <node concept="37vLTw" id="7Q_67PUJ1ZT" role="37wK5m">
                  <ref role="3cqZAo" node="7Q_67PUJ1UC" resolve="conflicts" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7Q_67PUJ1ZU" role="3cqZAp">
          <node concept="2YIFZM" id="7Q_67PUJ2SD" role="3clFbG">
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            <ref role="37wK5l" to="33ny:~Collections.sort(java.util.List)" resolve="sort" />
            <node concept="37vLTw" id="7Q_67PUJ2SE" role="37wK5m">
              <ref role="3cqZAo" node="7Q_67PUJ1Uy" resolve="decisions" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7Q_67PUJ1ZX" role="3cqZAp">
          <node concept="2YIFZM" id="7Q_67PUJ2SH" role="3clFbG">
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            <ref role="37wK5l" to="33ny:~Collections.sort(java.util.List)" resolve="sort" />
            <node concept="37vLTw" id="7Q_67PUJ2SI" role="37wK5m">
              <ref role="3cqZAo" node="7Q_67PUJ1UC" resolve="conflicts" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7Q_67PUJ200" role="3cqZAp">
          <node concept="2ShNRf" id="7Q_67PUJ2SJ" role="3cqZAk">
            <node concept="1pGfFk" id="7Q_67PUJ2SU" role="2ShVmc">
              <ref role="37wK5l" node="7Q_67PUJ1PL" resolve="ProtectedRegeneration.Preview" />
              <node concept="37vLTw" id="7Q_67PUJ2SV" role="37wK5m">
                <ref role="3cqZAo" node="7Q_67PUJ1TQ" resolve="grammar" />
              </node>
              <node concept="37vLTw" id="7Q_67PUJ2SW" role="37wK5m">
                <ref role="3cqZAo" node="7Q_67PUJ1TS" resolve="generated" />
              </node>
              <node concept="37vLTw" id="7Q_67PUJ2SX" role="37wK5m">
                <ref role="3cqZAo" node="7Q_67PUJ1TV" resolve="targets" />
              </node>
              <node concept="37vLTw" id="7Q_67PUJ2SY" role="37wK5m">
                <ref role="3cqZAo" node="7Q_67PUJ1TY" resolve="profile" />
              </node>
              <node concept="1rXfSq" id="7Q_67PUJ2SZ" role="37wK5m">
                <ref role="37wK5l" node="7Q_67PUJ28N" resolve="inputStamp" />
                <node concept="37vLTw" id="7Q_67PUJ2T0" role="37wK5m">
                  <ref role="3cqZAo" node="7Q_67PUJ1TQ" resolve="grammar" />
                </node>
                <node concept="37vLTw" id="7Q_67PUJ2T1" role="37wK5m">
                  <ref role="3cqZAo" node="7Q_67PUJ1TS" resolve="generated" />
                </node>
                <node concept="37vLTw" id="7Q_67PUJ2T2" role="37wK5m">
                  <ref role="3cqZAo" node="7Q_67PUJ1TV" resolve="targets" />
                </node>
                <node concept="37vLTw" id="7Q_67PUJ2T3" role="37wK5m">
                  <ref role="3cqZAo" node="7Q_67PUJ1UQ" resolve="ledger" />
                </node>
                <node concept="37vLTw" id="7Q_67PUJ2T4" role="37wK5m">
                  <ref role="3cqZAo" node="7Q_67PUJ1Us" resolve="profileStamp" />
                </node>
              </node>
              <node concept="37vLTw" id="7Q_67PUJ2T5" role="37wK5m">
                <ref role="3cqZAo" node="7Q_67PUJ1Uy" resolve="decisions" />
              </node>
              <node concept="37vLTw" id="7Q_67PUJ2T6" role="37wK5m">
                <ref role="3cqZAo" node="7Q_67PUJ1UC" resolve="conflicts" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7Q_67PUJ20e" role="1B3o_S" />
      <node concept="3uibUv" id="7Q_67PUJ20f" role="3clF45">
        <ref role="3uigEE" node="7Q_67PUJ1Pf" resolve="ProtectedRegeneration.Preview" />
      </node>
    </node>
    <node concept="2YIFZL" id="7Q_67PUJ20g" role="jymVt">
      <property role="TrG5h" value="apply" />
      <node concept="37vLTG" id="7Q_67PUJ20h" role="3clF46">
        <property role="TrG5h" value="approved" />
        <node concept="3uibUv" id="7Q_67PUJ20i" role="1tU5fm">
          <ref role="3uigEE" node="7Q_67PUJ1Pf" resolve="ProtectedRegeneration.Preview" />
        </node>
      </node>
      <node concept="3clFbS" id="7Q_67PUJ20j" role="3clF47">
        <node concept="3clFbJ" id="7Q_67PUJ20k" role="3cqZAp">
          <node concept="3clFbC" id="7Q_67PUJ20l" role="3clFbw">
            <node concept="37vLTw" id="7Q_67PUJ20m" role="3uHU7B">
              <ref role="3cqZAo" node="7Q_67PUJ20h" resolve="approved" />
            </node>
            <node concept="10Nm6u" id="7Q_67PUJ20n" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="7Q_67PUJ20p" role="3clFbx">
            <node concept="YS8fn" id="7Q_67PUJ20t" role="3cqZAp">
              <node concept="1rXfSq" id="7Q_67PUJ20q" role="YScLw">
                <ref role="37wK5l" node="7Q_67PUJ2xZ" resolve="failure" />
                <node concept="Xl_RD" id="7Q_67PUJ20r" role="37wK5m">
                  <property role="Xl_RC" value="MBNF_GENERATION_INPUT" />
                </node>
                <node concept="Xl_RD" id="7Q_67PUJ20s" role="37wK5m">
                  <property role="Xl_RC" value="A reviewed preview is required" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7Q_67PUJ20v" role="3cqZAp">
          <node concept="3cpWsn" id="7Q_67PUJ20u" role="3cpWs9">
            <property role="TrG5h" value="current" />
            <node concept="3uibUv" id="7Q_67PUJ20w" role="1tU5fm">
              <ref role="3uigEE" node="7Q_67PUJ1Pf" resolve="ProtectedRegeneration.Preview" />
            </node>
            <node concept="1rXfSq" id="7Q_67PUJ20x" role="33vP2m">
              <ref role="37wK5l" node="7Q_67PUJ1TP" resolve="preview" />
              <node concept="2OqwBi" id="7Q_67PUJ2Ta" role="37wK5m">
                <node concept="37vLTw" id="7Q_67PUJ2T9" role="2Oq$k0">
                  <ref role="3cqZAo" node="7Q_67PUJ20h" resolve="approved" />
                </node>
                <node concept="2OwXpG" id="7Q_67PUJ2Tb" role="2OqNvi">
                  <ref role="2Oxat5" node="7Q_67PUJ1Ph" resolve="grammar" />
                </node>
              </node>
              <node concept="2OqwBi" id="7Q_67PUJ2Tf" role="37wK5m">
                <node concept="37vLTw" id="7Q_67PUJ2Te" role="2Oq$k0">
                  <ref role="3cqZAo" node="7Q_67PUJ20h" resolve="approved" />
                </node>
                <node concept="2OwXpG" id="7Q_67PUJ2Tg" role="2OqNvi">
                  <ref role="2Oxat5" node="7Q_67PUJ1Pl" resolve="generated" />
                </node>
              </node>
              <node concept="2OqwBi" id="7Q_67PUJ2Tk" role="37wK5m">
                <node concept="37vLTw" id="7Q_67PUJ2Tj" role="2Oq$k0">
                  <ref role="3cqZAo" node="7Q_67PUJ20h" resolve="approved" />
                </node>
                <node concept="2OwXpG" id="7Q_67PUJ2Tl" role="2OqNvi">
                  <ref role="2Oxat5" node="7Q_67PUJ1Pq" resolve="targets" />
                </node>
              </node>
              <node concept="2OqwBi" id="7Q_67PUJ2Tp" role="37wK5m">
                <node concept="37vLTw" id="7Q_67PUJ2To" role="2Oq$k0">
                  <ref role="3cqZAo" node="7Q_67PUJ20h" resolve="approved" />
                </node>
                <node concept="2OwXpG" id="7Q_67PUJ2Tq" role="2OqNvi">
                  <ref role="2Oxat5" node="7Q_67PUJ1Pv" resolve="profile" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7Q_67PUJ20A" role="3cqZAp">
          <node concept="3fqX7Q" id="7Q_67PUJ20B" role="3clFbw">
            <node concept="2OqwBi" id="7Q_67PUJ5BM" role="3fr31v">
              <node concept="2OqwBi" id="7Q_67PUJ2Tu" role="2Oq$k0">
                <node concept="37vLTw" id="7Q_67PUJ2Tt" role="2Oq$k0">
                  <ref role="3cqZAo" node="7Q_67PUJ20u" resolve="current" />
                </node>
                <node concept="2OwXpG" id="7Q_67PUJ2Tv" role="2OqNvi">
                  <ref role="2Oxat5" node="7Q_67PUJ1Pz" resolve="fingerprint" />
                </node>
              </node>
              <node concept="liA8E" id="7Q_67PUJ5BN" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                <node concept="2OqwBi" id="7Q_67PUJ8lm" role="37wK5m">
                  <node concept="37vLTw" id="7Q_67PUJ8ll" role="2Oq$k0">
                    <ref role="3cqZAo" node="7Q_67PUJ20h" resolve="approved" />
                  </node>
                  <node concept="2OwXpG" id="7Q_67PUJ8ln" role="2OqNvi">
                    <ref role="2Oxat5" node="7Q_67PUJ1Pz" resolve="fingerprint" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="7Q_67PUJ20F" role="3clFbx">
            <node concept="YS8fn" id="7Q_67PUJ20J" role="3cqZAp">
              <node concept="1rXfSq" id="7Q_67PUJ20G" role="YScLw">
                <ref role="37wK5l" node="7Q_67PUJ2xZ" resolve="failure" />
                <node concept="Xl_RD" id="7Q_67PUJ20H" role="37wK5m">
                  <property role="Xl_RC" value="MBNF_STALE_GENERATION_PREVIEW" />
                </node>
                <node concept="Xl_RD" id="7Q_67PUJ20I" role="37wK5m">
                  <property role="Xl_RC" value="Input changed; inspect a new preview" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7Q_67PUJ20K" role="3cqZAp">
          <node concept="3fqX7Q" id="7Q_67PUJ20L" role="3clFbw">
            <node concept="2OqwBi" id="7Q_67PUJ5BZ" role="3fr31v">
              <node concept="37vLTw" id="7Q_67PUJ2T$" role="2Oq$k0">
                <ref role="3cqZAo" node="7Q_67PUJ20u" resolve="current" />
              </node>
              <node concept="liA8E" id="7Q_67PUJ5C0" role="2OqNvi">
                <ref role="37wK5l" node="7Q_67PUJ1Rd" resolve="applicable" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="7Q_67PUJ20O" role="3clFbx">
            <node concept="YS8fn" id="7Q_67PUJ20S" role="3cqZAp">
              <node concept="1rXfSq" id="7Q_67PUJ20P" role="YScLw">
                <ref role="37wK5l" node="7Q_67PUJ2xZ" resolve="failure" />
                <node concept="Xl_RD" id="7Q_67PUJ20Q" role="37wK5m">
                  <property role="Xl_RC" value="MBNF_GENERATION_CONFLICT" />
                </node>
                <node concept="2OqwBi" id="7Q_67PUJ5Ez" role="37wK5m">
                  <node concept="2OqwBi" id="7Q_67PUJ2TD" role="2Oq$k0">
                    <node concept="37vLTw" id="7Q_67PUJ2TC" role="2Oq$k0">
                      <ref role="3cqZAo" node="7Q_67PUJ20u" resolve="current" />
                    </node>
                    <node concept="2OwXpG" id="7Q_67PUJ2TE" role="2OqNvi">
                      <ref role="2Oxat5" node="7Q_67PUJ1PG" resolve="conflicts" />
                    </node>
                  </node>
                  <node concept="liA8E" id="7Q_67PUJ5E$" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7Q_67PUJ20U" role="3cqZAp">
          <node concept="3cpWsn" id="7Q_67PUJ20T" role="3cpWs9">
            <property role="TrG5h" value="candidates" />
            <node concept="3uibUv" id="7Q_67PUJ20V" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="7Q_67PUJ20W" role="11_B2D">
                <ref role="3uigEE" node="7Q_67PUJ1Rj" resolve="ProtectedRegeneration.Candidate" />
              </node>
            </node>
            <node concept="1rXfSq" id="7Q_67PUJ20X" role="33vP2m">
              <ref role="37wK5l" node="7Q_67PUJ25F" resolve="candidates" />
              <node concept="2OqwBi" id="7Q_67PUJ2TJ" role="37wK5m">
                <node concept="37vLTw" id="7Q_67PUJ2TI" role="2Oq$k0">
                  <ref role="3cqZAo" node="7Q_67PUJ20h" resolve="approved" />
                </node>
                <node concept="2OwXpG" id="7Q_67PUJ2TK" role="2OqNvi">
                  <ref role="2Oxat5" node="7Q_67PUJ1Ph" resolve="grammar" />
                </node>
              </node>
              <node concept="2OqwBi" id="7Q_67PUJ2TO" role="37wK5m">
                <node concept="37vLTw" id="7Q_67PUJ2TN" role="2Oq$k0">
                  <ref role="3cqZAo" node="7Q_67PUJ20h" resolve="approved" />
                </node>
                <node concept="2OwXpG" id="7Q_67PUJ2TP" role="2OqNvi">
                  <ref role="2Oxat5" node="7Q_67PUJ1Pl" resolve="generated" />
                </node>
              </node>
              <node concept="2OqwBi" id="7Q_67PUJ2TT" role="37wK5m">
                <node concept="37vLTw" id="7Q_67PUJ2TS" role="2Oq$k0">
                  <ref role="3cqZAo" node="7Q_67PUJ20h" resolve="approved" />
                </node>
                <node concept="2OwXpG" id="7Q_67PUJ2TU" role="2OqNvi">
                  <ref role="2Oxat5" node="7Q_67PUJ1Pq" resolve="targets" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7Q_67PUJ212" role="3cqZAp">
          <node concept="3cpWsn" id="7Q_67PUJ211" role="3cpWs9">
            <property role="TrG5h" value="ledger" />
            <node concept="3Tqbb2" id="7Q_67PUJ9Zo" role="1tU5fm" />
            <node concept="1rXfSq" id="7Q_67PUJ214" role="33vP2m">
              <ref role="37wK5l" node="7Q_67PUJ2ye" resolve="ledger" />
              <node concept="2OqwBi" id="7Q_67PUJ2TY" role="37wK5m">
                <node concept="37vLTw" id="7Q_67PUJ2TX" role="2Oq$k0">
                  <ref role="3cqZAo" node="7Q_67PUJ20h" resolve="approved" />
                </node>
                <node concept="2OwXpG" id="7Q_67PUJ2TZ" role="2OqNvi">
                  <ref role="2Oxat5" node="7Q_67PUJ1Ph" resolve="grammar" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="7Q_67PUJ216" role="3cqZAp">
          <node concept="37vLTw" id="7Q_67PUJ22q" role="1DdaDG">
            <ref role="3cqZAo" node="7Q_67PUJ20T" resolve="candidates" />
          </node>
          <node concept="3cpWsn" id="7Q_67PUJ22n" role="1Duv9x">
            <property role="TrG5h" value="candidate" />
            <node concept="3uibUv" id="7Q_67PUJ22p" role="1tU5fm">
              <ref role="3uigEE" node="7Q_67PUJ1Rj" resolve="ProtectedRegeneration.Candidate" />
            </node>
          </node>
          <node concept="3clFbS" id="7Q_67PUJ218" role="2LFqv$">
            <node concept="3clFbJ" id="7Q_67PUJ219" role="3cqZAp">
              <node concept="3y3z36" id="7Q_67PUJ21a" role="3clFbw">
                <node concept="37vLTw" id="7Q_67PUJ21b" role="3uHU7B">
                  <ref role="3cqZAo" node="7Q_67PUJ211" resolve="ledger" />
                </node>
                <node concept="10Nm6u" id="7Q_67PUJ21c" role="3uHU7w" />
              </node>
              <node concept="3clFbS" id="7Q_67PUJ21e" role="3clFbx">
                <node concept="1DcWWT" id="7Q_67PUJ21f" role="3cqZAp">
                  <node concept="1rXfSq" id="7Q_67PUJ21$" role="1DdaDG">
                    <ref role="37wK5l" node="7Q_67PUJ2zk" resolve="artifacts" />
                    <node concept="37vLTw" id="7Q_67PUJ21_" role="37wK5m">
                      <ref role="3cqZAo" node="7Q_67PUJ211" resolve="ledger" />
                    </node>
                  </node>
                  <node concept="3cpWsn" id="7Q_67PUJ21x" role="1Duv9x">
                    <property role="TrG5h" value="entry" />
                    <node concept="3Tqbb2" id="7Q_67PUJ9Zp" role="1tU5fm" />
                  </node>
                  <node concept="3clFbS" id="7Q_67PUJ21h" role="2LFqv$">
                    <node concept="3clFbJ" id="7Q_67PUJ21i" role="3cqZAp">
                      <node concept="2OqwBi" id="7Q_67PUJ5F0" role="3clFbw">
                        <node concept="2OqwBi" id="7Q_67PUJ2U3" role="2Oq$k0">
                          <node concept="37vLTw" id="7Q_67PUJ2U2" role="2Oq$k0">
                            <ref role="3cqZAo" node="7Q_67PUJ22n" resolve="candidate" />
                          </node>
                          <node concept="2OwXpG" id="7Q_67PUJ2U4" role="2OqNvi">
                            <ref role="2Oxat5" node="7Q_67PUJ1Rx" resolve="key" />
                          </node>
                        </node>
                        <node concept="liA8E" id="7Q_67PUJ5F1" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                          <node concept="2OqwBi" id="7Q_67PUJ8Pr" role="37wK5m">
                            <node concept="liA8E" id="7Q_67PUJ8Ps" role="2OqNvi">
                              <ref role="37wK5l" to="mhbf:~SNode.getProperty(org.jetbrains.mps.openapi.language.SProperty)" resolve="getProperty" />
                              <node concept="37vLTw" id="7Q_67PUJ8Pt" role="37wK5m">
                                <ref role="3cqZAo" node="7Q_67PUJ1Tl" resolve="ARTIFACT_KEY" />
                              </node>
                            </node>
                            <node concept="2JrnkZ" id="7Q_67PUJ9WX" role="2Oq$k0">
                              <node concept="37vLTw" id="7Q_67PUJ8lq" role="2JrQYb">
                                <ref role="3cqZAo" node="7Q_67PUJ21x" resolve="entry" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="7Q_67PUJ21n" role="3clFbx">
                        <node concept="3clFbF" id="7Q_67PUJ21o" role="3cqZAp">
                          <node concept="37vLTI" id="7Q_67PUJ21p" role="3clFbG">
                            <node concept="2OqwBi" id="7Q_67PUJ2Ub" role="37vLTJ">
                              <node concept="37vLTw" id="7Q_67PUJ2Ua" role="2Oq$k0">
                                <ref role="3cqZAo" node="7Q_67PUJ22n" resolve="candidate" />
                              </node>
                              <node concept="2OwXpG" id="7Q_67PUJ2Uc" role="2OqNvi">
                                <ref role="2Oxat5" node="7Q_67PUJ1RD" resolve="record" />
                              </node>
                            </node>
                            <node concept="37vLTw" id="7Q_67PUJ21r" role="37vLTx">
                              <ref role="3cqZAo" node="7Q_67PUJ21x" resolve="entry" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="7Q_67PUJ21s" role="3cqZAp">
                          <node concept="37vLTI" id="7Q_67PUJ21t" role="3clFbG">
                            <node concept="2OqwBi" id="7Q_67PUJ2Ug" role="37vLTJ">
                              <node concept="37vLTw" id="7Q_67PUJ2Uf" role="2Oq$k0">
                                <ref role="3cqZAo" node="7Q_67PUJ22n" resolve="candidate" />
                              </node>
                              <node concept="2OwXpG" id="7Q_67PUJ2Uh" role="2OqNvi">
                                <ref role="2Oxat5" node="7Q_67PUJ1R_" resolve="existing" />
                              </node>
                            </node>
                            <node concept="1rXfSq" id="7Q_67PUJ21v" role="37vLTx">
                              <ref role="37wK5l" node="7Q_67PUJ2zR" resolve="artifactTarget" />
                              <node concept="37vLTw" id="7Q_67PUJ21w" role="37wK5m">
                                <ref role="3cqZAo" node="7Q_67PUJ21x" resolve="entry" />
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
            <node concept="3clFbJ" id="7Q_67PUJ21A" role="3cqZAp">
              <node concept="3clFbC" id="7Q_67PUJ21B" role="3clFbw">
                <node concept="2OqwBi" id="7Q_67PUJ2Ul" role="3uHU7B">
                  <node concept="37vLTw" id="7Q_67PUJ2Uk" role="2Oq$k0">
                    <ref role="3cqZAo" node="7Q_67PUJ22n" resolve="candidate" />
                  </node>
                  <node concept="2OwXpG" id="7Q_67PUJ2Um" role="2OqNvi">
                    <ref role="2Oxat5" node="7Q_67PUJ1R_" resolve="existing" />
                  </node>
                </node>
                <node concept="10Nm6u" id="7Q_67PUJ21D" role="3uHU7w" />
              </node>
              <node concept="3clFbS" id="7Q_67PUJ21F" role="3clFbx">
                <node concept="1DcWWT" id="7Q_67PUJ21G" role="3cqZAp">
                  <node concept="2OqwBi" id="7Q_67PUJ5Fr" role="1DdaDG">
                    <node concept="liA8E" id="7Q_67PUJ5Fs" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SModel.getRootNodes()" resolve="getRootNodes" />
                    </node>
                    <node concept="2JrnkZ" id="7Q_67PUJ9WY" role="2Oq$k0">
                      <node concept="2OqwBi" id="7Q_67PUJ2Uq" role="2JrQYb">
                        <node concept="37vLTw" id="7Q_67PUJ2Up" role="2Oq$k0">
                          <ref role="3cqZAo" node="7Q_67PUJ22n" resolve="candidate" />
                        </node>
                        <node concept="2OwXpG" id="7Q_67PUJ2Ur" role="2OqNvi">
                          <ref role="2Oxat5" node="7Q_67PUJ1Rp" resolve="target" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWsn" id="7Q_67PUJ21Z" role="1Duv9x">
                    <property role="TrG5h" value="root" />
                    <node concept="3Tqbb2" id="7Q_67PUJ9Zq" role="1tU5fm" />
                  </node>
                  <node concept="3clFbS" id="7Q_67PUJ21I" role="2LFqv$">
                    <node concept="3clFbJ" id="7Q_67PUJ21J" role="3cqZAp">
                      <node concept="1Wc70l" id="7Q_67PUJ21K" role="3clFbw">
                        <node concept="2OqwBi" id="7Q_67PUJ8lG" role="3uHU7B">
                          <node concept="2OqwBi" id="7Q_67PUJ5FI" role="2Oq$k0">
                            <node concept="liA8E" id="7Q_67PUJ5FJ" role="2OqNvi">
                              <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                            </node>
                            <node concept="2JrnkZ" id="7Q_67PUJ9WZ" role="2Oq$k0">
                              <node concept="37vLTw" id="7Q_67PUJ2UB" role="2JrQYb">
                                <ref role="3cqZAo" node="7Q_67PUJ21Z" resolve="root" />
                              </node>
                            </node>
                          </node>
                          <node concept="liA8E" id="7Q_67PUJ8lH" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                            <node concept="2OqwBi" id="7Q_67PUJ8lI" role="37wK5m">
                              <node concept="liA8E" id="7Q_67PUJ8lM" role="2OqNvi">
                                <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                              </node>
                              <node concept="2JrnkZ" id="7Q_67PUJ9X0" role="2Oq$k0">
                                <node concept="2OqwBi" id="7Q_67PUJ8lJ" role="2JrQYb">
                                  <node concept="37vLTw" id="7Q_67PUJ8lK" role="2Oq$k0">
                                    <ref role="3cqZAo" node="7Q_67PUJ22n" resolve="candidate" />
                                  </node>
                                  <node concept="2OwXpG" id="7Q_67PUJ8lL" role="2OqNvi">
                                    <ref role="2Oxat5" node="7Q_67PUJ1Rl" resolve="generated" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="7Q_67PUJ5GH" role="3uHU7w">
                          <node concept="1rXfSq" id="7Q_67PUJ21P" role="2Oq$k0">
                            <ref role="37wK5l" node="7Q_67PUJ2iU" resolve="legacyKey" />
                            <node concept="2OqwBi" id="7Q_67PUJ2UO" role="37wK5m">
                              <node concept="37vLTw" id="7Q_67PUJ2UN" role="2Oq$k0">
                                <ref role="3cqZAo" node="7Q_67PUJ22n" resolve="candidate" />
                              </node>
                              <node concept="2OwXpG" id="7Q_67PUJ2UP" role="2OqNvi">
                                <ref role="2Oxat5" node="7Q_67PUJ1Rl" resolve="generated" />
                              </node>
                            </node>
                          </node>
                          <node concept="liA8E" id="7Q_67PUJ5GI" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                            <node concept="1rXfSq" id="7Q_67PUJ5GJ" role="37wK5m">
                              <ref role="37wK5l" node="7Q_67PUJ2iU" resolve="legacyKey" />
                              <node concept="37vLTw" id="7Q_67PUJ5GK" role="37wK5m">
                                <ref role="3cqZAo" node="7Q_67PUJ21Z" resolve="root" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="7Q_67PUJ21U" role="3clFbx">
                        <node concept="3clFbF" id="7Q_67PUJ21V" role="3cqZAp">
                          <node concept="37vLTI" id="7Q_67PUJ21W" role="3clFbG">
                            <node concept="2OqwBi" id="7Q_67PUJ2UT" role="37vLTJ">
                              <node concept="37vLTw" id="7Q_67PUJ2US" role="2Oq$k0">
                                <ref role="3cqZAo" node="7Q_67PUJ22n" resolve="candidate" />
                              </node>
                              <node concept="2OwXpG" id="7Q_67PUJ2UU" role="2OqNvi">
                                <ref role="2Oxat5" node="7Q_67PUJ1R_" resolve="existing" />
                              </node>
                            </node>
                            <node concept="37vLTw" id="7Q_67PUJ21Y" role="37vLTx">
                              <ref role="3cqZAo" node="7Q_67PUJ21Z" resolve="root" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7Q_67PUJ223" role="3cqZAp">
              <node concept="37vLTI" id="7Q_67PUJ224" role="3clFbG">
                <node concept="2OqwBi" id="7Q_67PUJ2UY" role="37vLTJ">
                  <node concept="37vLTw" id="7Q_67PUJ2UX" role="2Oq$k0">
                    <ref role="3cqZAo" node="7Q_67PUJ22n" resolve="candidate" />
                  </node>
                  <node concept="2OwXpG" id="7Q_67PUJ2UZ" role="2OqNvi">
                    <ref role="2Oxat5" node="7Q_67PUJ1RH" resolve="created" />
                  </node>
                </node>
                <node concept="3clFbC" id="7Q_67PUJ226" role="37vLTx">
                  <node concept="2OqwBi" id="7Q_67PUJ2V3" role="3uHU7B">
                    <node concept="37vLTw" id="7Q_67PUJ2V2" role="2Oq$k0">
                      <ref role="3cqZAo" node="7Q_67PUJ22n" resolve="candidate" />
                    </node>
                    <node concept="2OwXpG" id="7Q_67PUJ2V4" role="2OqNvi">
                      <ref role="2Oxat5" node="7Q_67PUJ1R_" resolve="existing" />
                    </node>
                  </node>
                  <node concept="10Nm6u" id="7Q_67PUJ228" role="3uHU7w" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7Q_67PUJ229" role="3cqZAp">
              <node concept="37vLTI" id="7Q_67PUJ22a" role="3clFbG">
                <node concept="2OqwBi" id="7Q_67PUJ2V8" role="37vLTJ">
                  <node concept="37vLTw" id="7Q_67PUJ2V7" role="2Oq$k0">
                    <ref role="3cqZAo" node="7Q_67PUJ22n" resolve="candidate" />
                  </node>
                  <node concept="2OwXpG" id="7Q_67PUJ2V9" role="2OqNvi">
                    <ref role="2Oxat5" node="7Q_67PUJ1RL" resolve="updated" />
                  </node>
                </node>
                <node concept="1Wc70l" id="7Q_67PUJ22c" role="37vLTx">
                  <node concept="3fqX7Q" id="7Q_67PUJ22d" role="3uHU7B">
                    <node concept="2OqwBi" id="7Q_67PUJ2Vd" role="3fr31v">
                      <node concept="37vLTw" id="7Q_67PUJ2Vc" role="2Oq$k0">
                        <ref role="3cqZAo" node="7Q_67PUJ22n" resolve="candidate" />
                      </node>
                      <node concept="2OwXpG" id="7Q_67PUJ2Ve" role="2OqNvi">
                        <ref role="2Oxat5" node="7Q_67PUJ1RH" resolve="created" />
                      </node>
                    </node>
                  </node>
                  <node concept="3fqX7Q" id="7Q_67PUJ22f" role="3uHU7w">
                    <node concept="2OqwBi" id="7Q_67PUJ5Jz" role="3fr31v">
                      <node concept="1rXfSq" id="7Q_67PUJ22h" role="2Oq$k0">
                        <ref role="37wK5l" node="7Q_67PUJ2cx" resolve="semanticSnapshot" />
                        <node concept="2OqwBi" id="7Q_67PUJ2Vn" role="37wK5m">
                          <node concept="37vLTw" id="7Q_67PUJ2Vm" role="2Oq$k0">
                            <ref role="3cqZAo" node="7Q_67PUJ22n" resolve="candidate" />
                          </node>
                          <node concept="2OwXpG" id="7Q_67PUJ2Vo" role="2OqNvi">
                            <ref role="2Oxat5" node="7Q_67PUJ1R_" resolve="existing" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="7Q_67PUJ22j" role="37wK5m">
                          <ref role="3cqZAo" node="7Q_67PUJ20T" resolve="candidates" />
                        </node>
                      </node>
                      <node concept="liA8E" id="7Q_67PUJ5J$" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                        <node concept="1rXfSq" id="7Q_67PUJ5J_" role="37wK5m">
                          <ref role="37wK5l" node="7Q_67PUJ2cx" resolve="semanticSnapshot" />
                          <node concept="2OqwBi" id="7Q_67PUJ5JA" role="37wK5m">
                            <node concept="37vLTw" id="7Q_67PUJ5JB" role="2Oq$k0">
                              <ref role="3cqZAo" node="7Q_67PUJ22n" resolve="candidate" />
                            </node>
                            <node concept="2OwXpG" id="7Q_67PUJ5JC" role="2OqNvi">
                              <ref role="2Oxat5" node="7Q_67PUJ1Rl" resolve="generated" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="7Q_67PUJ5JD" role="37wK5m">
                            <ref role="3cqZAo" node="7Q_67PUJ20T" resolve="candidates" />
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
        <node concept="3cpWs8" id="7Q_67PUJ22s" role="3cqZAp">
          <node concept="3cpWsn" id="7Q_67PUJ22r" role="3cpWs9">
            <property role="TrG5h" value="removals" />
            <node concept="3uibUv" id="7Q_67PUJ22t" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3Tqbb2" id="7Q_67PUJ9Zr" role="11_B2D" />
            </node>
            <node concept="1rXfSq" id="7Q_67PUJ22v" role="33vP2m">
              <ref role="37wK5l" node="7Q_67PUJ2ld" resolve="removedRecords" />
              <node concept="37vLTw" id="7Q_67PUJ22w" role="37wK5m">
                <ref role="3cqZAo" node="7Q_67PUJ211" resolve="ledger" />
              </node>
              <node concept="37vLTw" id="7Q_67PUJ22x" role="37wK5m">
                <ref role="3cqZAo" node="7Q_67PUJ20T" resolve="candidates" />
              </node>
              <node concept="2OqwBi" id="7Q_67PUJ2Vx" role="37wK5m">
                <node concept="37vLTw" id="7Q_67PUJ2Vw" role="2Oq$k0">
                  <ref role="3cqZAo" node="7Q_67PUJ20h" resolve="approved" />
                </node>
                <node concept="2OwXpG" id="7Q_67PUJ2Vy" role="2OqNvi">
                  <ref role="2Oxat5" node="7Q_67PUJ1Pq" resolve="targets" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7Q_67PUJ22$" role="3cqZAp">
          <node concept="3cpWsn" id="7Q_67PUJ22z" role="3cpWs9">
            <property role="TrG5h" value="correspondence" />
            <node concept="3uibUv" id="7Q_67PUJ22_" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
              <node concept="3Tqbb2" id="7Q_67PUJ9Zs" role="11_B2D" />
              <node concept="3Tqbb2" id="7Q_67PUJ9Zt" role="11_B2D" />
            </node>
            <node concept="1rXfSq" id="7Q_67PUJ22C" role="33vP2m">
              <ref role="37wK5l" node="7Q_67PUJ2mp" resolve="prepare" />
              <node concept="37vLTw" id="7Q_67PUJ22D" role="37wK5m">
                <ref role="3cqZAo" node="7Q_67PUJ20T" resolve="candidates" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7Q_67PUJ22E" role="3cqZAp">
          <node concept="3clFbC" id="7Q_67PUJ22F" role="3clFbw">
            <node concept="37vLTw" id="7Q_67PUJ22G" role="3uHU7B">
              <ref role="3cqZAo" node="7Q_67PUJ211" resolve="ledger" />
            </node>
            <node concept="10Nm6u" id="7Q_67PUJ22H" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="7Q_67PUJ22J" role="3clFbx">
            <node concept="3clFbF" id="7Q_67PUJ22K" role="3cqZAp">
              <node concept="37vLTI" id="7Q_67PUJ22L" role="3clFbG">
                <node concept="37vLTw" id="7Q_67PUJ22M" role="37vLTJ">
                  <ref role="3cqZAo" node="7Q_67PUJ211" resolve="ledger" />
                </node>
                <node concept="1rXfSq" id="7Q_67PUJ22N" role="37vLTx">
                  <ref role="37wK5l" node="7Q_67PUJ2yW" resolve="newLedger" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7Q_67PUJ22O" role="3cqZAp">
              <node concept="1rXfSq" id="7Q_67PUJ22P" role="3clFbG">
                <ref role="37wK5l" node="7Q_67PUJ2$9" resolve="pointGrammar" />
                <node concept="37vLTw" id="7Q_67PUJ22Q" role="37wK5m">
                  <ref role="3cqZAo" node="7Q_67PUJ211" resolve="ledger" />
                </node>
                <node concept="2OqwBi" id="7Q_67PUJ2VA" role="37wK5m">
                  <node concept="37vLTw" id="7Q_67PUJ2V_" role="2Oq$k0">
                    <ref role="3cqZAo" node="7Q_67PUJ20h" resolve="approved" />
                  </node>
                  <node concept="2OwXpG" id="7Q_67PUJ2VB" role="2OqNvi">
                    <ref role="2Oxat5" node="7Q_67PUJ1Ph" resolve="grammar" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7Q_67PUJ22S" role="3cqZAp">
              <node concept="2OqwBi" id="7Q_67PUJ5JX" role="3clFbG">
                <node concept="liA8E" id="7Q_67PUJ5JY" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.setProperty(org.jetbrains.mps.openapi.language.SProperty,java.lang.String)" resolve="setProperty" />
                  <node concept="37vLTw" id="7Q_67PUJ5JZ" role="37wK5m">
                    <ref role="3cqZAo" node="7Q_67PUJ1T1" resolve="LEDGER_VERSION" />
                  </node>
                  <node concept="37vLTw" id="7Q_67PUJ5K0" role="37wK5m">
                    <ref role="3cqZAo" node="7Q_67PUJ1St" resolve="VERSION" />
                  </node>
                </node>
                <node concept="2JrnkZ" id="7Q_67PUJ9X1" role="2Oq$k0">
                  <node concept="37vLTw" id="7Q_67PUJ2VE" role="2JrQYb">
                    <ref role="3cqZAo" node="7Q_67PUJ211" resolve="ledger" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7Q_67PUJ22W" role="3cqZAp">
              <node concept="2OqwBi" id="7Q_67PUJ5Kb" role="3clFbG">
                <node concept="liA8E" id="7Q_67PUJ5Kc" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.setProperty(org.jetbrains.mps.openapi.language.SProperty,java.lang.String)" resolve="setProperty" />
                  <node concept="37vLTw" id="7Q_67PUJ5Kd" role="37wK5m">
                    <ref role="3cqZAo" node="7Q_67PUJ1T5" resolve="LEDGER_GENERATOR" />
                  </node>
                  <node concept="37vLTw" id="7Q_67PUJ5Ke" role="37wK5m">
                    <ref role="3cqZAo" node="7Q_67PUJ1Sx" resolve="GENERATOR" />
                  </node>
                </node>
                <node concept="2JrnkZ" id="7Q_67PUJ9X2" role="2Oq$k0">
                  <node concept="37vLTw" id="7Q_67PUJ2VK" role="2JrQYb">
                    <ref role="3cqZAo" node="7Q_67PUJ211" resolve="ledger" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7Q_67PUJ230" role="3cqZAp">
              <node concept="2OqwBi" id="7Q_67PUJ5Kp" role="3clFbG">
                <node concept="liA8E" id="7Q_67PUJ5Kq" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.setProperty(org.jetbrains.mps.openapi.language.SProperty,java.lang.String)" resolve="setProperty" />
                  <node concept="37vLTw" id="7Q_67PUJ5Kr" role="37wK5m">
                    <ref role="3cqZAo" node="7Q_67PUJ1T9" resolve="LEDGER_TOOLCHAIN" />
                  </node>
                  <node concept="1rXfSq" id="7Q_67PUJ5Ks" role="37wK5m">
                    <ref role="37wK5l" node="7Q_67PUJ2bx" resolve="toolchain" />
                  </node>
                </node>
                <node concept="2JrnkZ" id="7Q_67PUJ9X3" role="2Oq$k0">
                  <node concept="37vLTw" id="7Q_67PUJ2VQ" role="2JrQYb">
                    <ref role="3cqZAo" node="7Q_67PUJ211" resolve="ledger" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7Q_67PUJ234" role="3cqZAp">
              <node concept="2OqwBi" id="7Q_67PUJ8mq" role="3clFbG">
                <node concept="liA8E" id="7Q_67PUJ8mr" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SModel.addRootNode(org.jetbrains.mps.openapi.model.SNode)" resolve="addRootNode" />
                  <node concept="37vLTw" id="7Q_67PUJ8ms" role="37wK5m">
                    <ref role="3cqZAo" node="7Q_67PUJ211" resolve="ledger" />
                  </node>
                </node>
                <node concept="2JrnkZ" id="7Q_67PUJ9X5" role="2Oq$k0">
                  <node concept="2OqwBi" id="7Q_67PUJ5KW" role="2JrQYb">
                    <node concept="liA8E" id="7Q_67PUJ5KX" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.getModel()" resolve="getModel" />
                    </node>
                    <node concept="2JrnkZ" id="7Q_67PUJ9X4" role="2Oq$k0">
                      <node concept="2OqwBi" id="7Q_67PUJ2W5" role="2JrQYb">
                        <node concept="37vLTw" id="7Q_67PUJ2W4" role="2Oq$k0">
                          <ref role="3cqZAo" node="7Q_67PUJ20h" resolve="approved" />
                        </node>
                        <node concept="2OwXpG" id="7Q_67PUJ2W6" role="2OqNvi">
                          <ref role="2Oxat5" node="7Q_67PUJ1Ph" resolve="grammar" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="7Q_67PUJ238" role="3cqZAp">
          <node concept="37vLTw" id="7Q_67PUJ23l" role="1DdaDG">
            <ref role="3cqZAo" node="7Q_67PUJ20T" resolve="candidates" />
          </node>
          <node concept="3cpWsn" id="7Q_67PUJ23i" role="1Duv9x">
            <property role="TrG5h" value="candidate" />
            <node concept="3uibUv" id="7Q_67PUJ23k" role="1tU5fm">
              <ref role="3uigEE" node="7Q_67PUJ1Rj" resolve="ProtectedRegeneration.Candidate" />
            </node>
          </node>
          <node concept="3clFbS" id="7Q_67PUJ23a" role="2LFqv$">
            <node concept="3clFbJ" id="7Q_67PUJ23b" role="3cqZAp">
              <node concept="2OqwBi" id="7Q_67PUJ2Wb" role="3clFbw">
                <node concept="37vLTw" id="7Q_67PUJ2Wa" role="2Oq$k0">
                  <ref role="3cqZAo" node="7Q_67PUJ23i" resolve="candidate" />
                </node>
                <node concept="2OwXpG" id="7Q_67PUJ2Wc" role="2OqNvi">
                  <ref role="2Oxat5" node="7Q_67PUJ1RL" resolve="updated" />
                </node>
              </node>
              <node concept="3clFbS" id="7Q_67PUJ23e" role="3clFbx">
                <node concept="3clFbF" id="7Q_67PUJ23f" role="3cqZAp">
                  <node concept="2OqwBi" id="7Q_67PUJ5Ll" role="3clFbG">
                    <node concept="liA8E" id="7Q_67PUJ5Lm" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SModel.removeRootNode(org.jetbrains.mps.openapi.model.SNode)" resolve="removeRootNode" />
                      <node concept="2OqwBi" id="7Q_67PUJ8mw" role="37wK5m">
                        <node concept="37vLTw" id="7Q_67PUJ8mv" role="2Oq$k0">
                          <ref role="3cqZAo" node="7Q_67PUJ23i" resolve="candidate" />
                        </node>
                        <node concept="2OwXpG" id="7Q_67PUJ8mx" role="2OqNvi">
                          <ref role="2Oxat5" node="7Q_67PUJ1R_" resolve="existing" />
                        </node>
                      </node>
                    </node>
                    <node concept="2JrnkZ" id="7Q_67PUJ9X6" role="2Oq$k0">
                      <node concept="2OqwBi" id="7Q_67PUJ2Wg" role="2JrQYb">
                        <node concept="37vLTw" id="7Q_67PUJ2Wf" role="2Oq$k0">
                          <ref role="3cqZAo" node="7Q_67PUJ23i" resolve="candidate" />
                        </node>
                        <node concept="2OwXpG" id="7Q_67PUJ2Wh" role="2OqNvi">
                          <ref role="2Oxat5" node="7Q_67PUJ1Rp" resolve="target" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="7Q_67PUJ23m" role="3cqZAp">
          <node concept="37vLTw" id="7Q_67PUJ23C" role="1DdaDG">
            <ref role="3cqZAo" node="7Q_67PUJ22r" resolve="removals" />
          </node>
          <node concept="3cpWsn" id="7Q_67PUJ23_" role="1Duv9x">
            <property role="TrG5h" value="entry" />
            <node concept="3Tqbb2" id="7Q_67PUJ9Zu" role="1tU5fm" />
          </node>
          <node concept="3clFbS" id="7Q_67PUJ23o" role="2LFqv$">
            <node concept="3cpWs8" id="7Q_67PUJ23q" role="3cqZAp">
              <node concept="3cpWsn" id="7Q_67PUJ23p" role="3cpWs9">
                <property role="TrG5h" value="target" />
                <node concept="3Tqbb2" id="7Q_67PUJ9Zv" role="1tU5fm" />
                <node concept="1rXfSq" id="7Q_67PUJ23s" role="33vP2m">
                  <ref role="37wK5l" node="7Q_67PUJ2zR" resolve="artifactTarget" />
                  <node concept="37vLTw" id="7Q_67PUJ23t" role="37wK5m">
                    <ref role="3cqZAo" node="7Q_67PUJ23_" resolve="entry" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7Q_67PUJ23u" role="3cqZAp">
              <node concept="2OqwBi" id="7Q_67PUJ8mX" role="3clFbG">
                <node concept="liA8E" id="7Q_67PUJ8mY" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SModel.removeRootNode(org.jetbrains.mps.openapi.model.SNode)" resolve="removeRootNode" />
                  <node concept="37vLTw" id="7Q_67PUJ8mZ" role="37wK5m">
                    <ref role="3cqZAo" node="7Q_67PUJ23p" resolve="target" />
                  </node>
                </node>
                <node concept="2JrnkZ" id="7Q_67PUJ9X8" role="2Oq$k0">
                  <node concept="2OqwBi" id="7Q_67PUJ5LE" role="2JrQYb">
                    <node concept="liA8E" id="7Q_67PUJ5LF" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.getModel()" resolve="getModel" />
                    </node>
                    <node concept="2JrnkZ" id="7Q_67PUJ9X7" role="2Oq$k0">
                      <node concept="37vLTw" id="7Q_67PUJ2Wu" role="2JrQYb">
                        <ref role="3cqZAo" node="7Q_67PUJ23p" resolve="target" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7Q_67PUJ23y" role="3cqZAp">
              <node concept="2OqwBi" id="7Q_67PUJ5LQ" role="3clFbG">
                <node concept="liA8E" id="7Q_67PUJ5LR" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.removeChild(org.jetbrains.mps.openapi.model.SNode)" resolve="removeChild" />
                  <node concept="37vLTw" id="7Q_67PUJ5LS" role="37wK5m">
                    <ref role="3cqZAo" node="7Q_67PUJ23_" resolve="entry" />
                  </node>
                </node>
                <node concept="2JrnkZ" id="7Q_67PUJ9X9" role="2Oq$k0">
                  <node concept="37vLTw" id="7Q_67PUJ2Wy" role="2JrQYb">
                    <ref role="3cqZAo" node="7Q_67PUJ211" resolve="ledger" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="7Q_67PUJ23D" role="3cqZAp">
          <node concept="37vLTw" id="7Q_67PUJ23W" role="1DdaDG">
            <ref role="3cqZAo" node="7Q_67PUJ20T" resolve="candidates" />
          </node>
          <node concept="3cpWsn" id="7Q_67PUJ23T" role="1Duv9x">
            <property role="TrG5h" value="candidate" />
            <node concept="3uibUv" id="7Q_67PUJ23V" role="1tU5fm">
              <ref role="3uigEE" node="7Q_67PUJ1Rj" resolve="ProtectedRegeneration.Candidate" />
            </node>
          </node>
          <node concept="3clFbS" id="7Q_67PUJ23F" role="2LFqv$">
            <node concept="3clFbJ" id="7Q_67PUJ23G" role="3cqZAp">
              <node concept="22lmx$" id="7Q_67PUJ23H" role="3clFbw">
                <node concept="2OqwBi" id="7Q_67PUJ2WC" role="3uHU7B">
                  <node concept="37vLTw" id="7Q_67PUJ2WB" role="2Oq$k0">
                    <ref role="3cqZAo" node="7Q_67PUJ23T" resolve="candidate" />
                  </node>
                  <node concept="2OwXpG" id="7Q_67PUJ2WD" role="2OqNvi">
                    <ref role="2Oxat5" node="7Q_67PUJ1RH" resolve="created" />
                  </node>
                </node>
                <node concept="2OqwBi" id="7Q_67PUJ2WH" role="3uHU7w">
                  <node concept="37vLTw" id="7Q_67PUJ2WG" role="2Oq$k0">
                    <ref role="3cqZAo" node="7Q_67PUJ23T" resolve="candidate" />
                  </node>
                  <node concept="2OwXpG" id="7Q_67PUJ2WI" role="2OqNvi">
                    <ref role="2Oxat5" node="7Q_67PUJ1RL" resolve="updated" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="7Q_67PUJ23L" role="3clFbx">
                <node concept="3clFbF" id="7Q_67PUJ23M" role="3cqZAp">
                  <node concept="37vLTI" id="7Q_67PUJ23N" role="3clFbG">
                    <node concept="2OqwBi" id="7Q_67PUJ2WM" role="37vLTJ">
                      <node concept="37vLTw" id="7Q_67PUJ2WL" role="2Oq$k0">
                        <ref role="3cqZAo" node="7Q_67PUJ23T" resolve="candidate" />
                      </node>
                      <node concept="2OwXpG" id="7Q_67PUJ2WN" role="2OqNvi">
                        <ref role="2Oxat5" node="7Q_67PUJ1R_" resolve="existing" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="7Q_67PUJ2WR" role="37vLTx">
                      <node concept="37vLTw" id="7Q_67PUJ2WQ" role="2Oq$k0">
                        <ref role="3cqZAo" node="7Q_67PUJ23T" resolve="candidate" />
                      </node>
                      <node concept="2OwXpG" id="7Q_67PUJ2WS" role="2OqNvi">
                        <ref role="2Oxat5" node="7Q_67PUJ1RP" resolve="replacement" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="7Q_67PUJ23Q" role="3cqZAp">
                  <node concept="2OqwBi" id="7Q_67PUJ5Mg" role="3clFbG">
                    <node concept="liA8E" id="7Q_67PUJ5Mh" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SModel.addRootNode(org.jetbrains.mps.openapi.model.SNode)" resolve="addRootNode" />
                      <node concept="2OqwBi" id="7Q_67PUJ8n3" role="37wK5m">
                        <node concept="37vLTw" id="7Q_67PUJ8n2" role="2Oq$k0">
                          <ref role="3cqZAo" node="7Q_67PUJ23T" resolve="candidate" />
                        </node>
                        <node concept="2OwXpG" id="7Q_67PUJ8n4" role="2OqNvi">
                          <ref role="2Oxat5" node="7Q_67PUJ1R_" resolve="existing" />
                        </node>
                      </node>
                    </node>
                    <node concept="2JrnkZ" id="7Q_67PUJ9Xa" role="2Oq$k0">
                      <node concept="2OqwBi" id="7Q_67PUJ2WW" role="2JrQYb">
                        <node concept="37vLTw" id="7Q_67PUJ2WV" role="2Oq$k0">
                          <ref role="3cqZAo" node="7Q_67PUJ23T" resolve="candidate" />
                        </node>
                        <node concept="2OwXpG" id="7Q_67PUJ2WX" role="2OqNvi">
                          <ref role="2Oxat5" node="7Q_67PUJ1Rp" resolve="target" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="7Q_67PUJ23X" role="3cqZAp">
          <node concept="37vLTw" id="7Q_67PUJ24d" role="1DdaDG">
            <ref role="3cqZAo" node="7Q_67PUJ20T" resolve="candidates" />
          </node>
          <node concept="3cpWsn" id="7Q_67PUJ24a" role="1Duv9x">
            <property role="TrG5h" value="candidate" />
            <node concept="3uibUv" id="7Q_67PUJ24c" role="1tU5fm">
              <ref role="3uigEE" node="7Q_67PUJ1Rj" resolve="ProtectedRegeneration.Candidate" />
            </node>
          </node>
          <node concept="3clFbS" id="7Q_67PUJ23Z" role="2LFqv$">
            <node concept="3clFbJ" id="7Q_67PUJ240" role="3cqZAp">
              <node concept="22lmx$" id="7Q_67PUJ241" role="3clFbw">
                <node concept="2OqwBi" id="7Q_67PUJ2X3" role="3uHU7B">
                  <node concept="37vLTw" id="7Q_67PUJ2X2" role="2Oq$k0">
                    <ref role="3cqZAo" node="7Q_67PUJ24a" resolve="candidate" />
                  </node>
                  <node concept="2OwXpG" id="7Q_67PUJ2X4" role="2OqNvi">
                    <ref role="2Oxat5" node="7Q_67PUJ1RH" resolve="created" />
                  </node>
                </node>
                <node concept="2OqwBi" id="7Q_67PUJ2X8" role="3uHU7w">
                  <node concept="37vLTw" id="7Q_67PUJ2X7" role="2Oq$k0">
                    <ref role="3cqZAo" node="7Q_67PUJ24a" resolve="candidate" />
                  </node>
                  <node concept="2OwXpG" id="7Q_67PUJ2X9" role="2OqNvi">
                    <ref role="2Oxat5" node="7Q_67PUJ1RL" resolve="updated" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="7Q_67PUJ245" role="3clFbx">
                <node concept="3clFbF" id="7Q_67PUJ246" role="3cqZAp">
                  <node concept="1rXfSq" id="7Q_67PUJ247" role="3clFbG">
                    <ref role="37wK5l" node="7Q_67PUJ2u$" resolve="copyReferences" />
                    <node concept="2OqwBi" id="7Q_67PUJ2Xd" role="37wK5m">
                      <node concept="37vLTw" id="7Q_67PUJ2Xc" role="2Oq$k0">
                        <ref role="3cqZAo" node="7Q_67PUJ24a" resolve="candidate" />
                      </node>
                      <node concept="2OwXpG" id="7Q_67PUJ2Xe" role="2OqNvi">
                        <ref role="2Oxat5" node="7Q_67PUJ1Rl" resolve="generated" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="7Q_67PUJ249" role="37wK5m">
                      <ref role="3cqZAo" node="7Q_67PUJ22z" resolve="correspondence" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="7Q_67PUJ24e" role="3cqZAp">
          <node concept="37vLTw" id="7Q_67PUJ24P" role="1DdaDG">
            <ref role="3cqZAo" node="7Q_67PUJ20T" resolve="candidates" />
          </node>
          <node concept="3cpWsn" id="7Q_67PUJ24M" role="1Duv9x">
            <property role="TrG5h" value="candidate" />
            <node concept="3uibUv" id="7Q_67PUJ24O" role="1tU5fm">
              <ref role="3uigEE" node="7Q_67PUJ1Rj" resolve="ProtectedRegeneration.Candidate" />
            </node>
          </node>
          <node concept="3clFbS" id="7Q_67PUJ24g" role="2LFqv$">
            <node concept="3clFbJ" id="7Q_67PUJ24h" role="3cqZAp">
              <node concept="3clFbC" id="7Q_67PUJ24i" role="3clFbw">
                <node concept="2OqwBi" id="7Q_67PUJ2Xi" role="3uHU7B">
                  <node concept="37vLTw" id="7Q_67PUJ2Xh" role="2Oq$k0">
                    <ref role="3cqZAo" node="7Q_67PUJ24M" resolve="candidate" />
                  </node>
                  <node concept="2OwXpG" id="7Q_67PUJ2Xj" role="2OqNvi">
                    <ref role="2Oxat5" node="7Q_67PUJ1RD" resolve="record" />
                  </node>
                </node>
                <node concept="10Nm6u" id="7Q_67PUJ24k" role="3uHU7w" />
              </node>
              <node concept="3clFbS" id="7Q_67PUJ24m" role="3clFbx">
                <node concept="3clFbF" id="7Q_67PUJ24n" role="3cqZAp">
                  <node concept="37vLTI" id="7Q_67PUJ24o" role="3clFbG">
                    <node concept="2OqwBi" id="7Q_67PUJ2Xn" role="37vLTJ">
                      <node concept="37vLTw" id="7Q_67PUJ2Xm" role="2Oq$k0">
                        <ref role="3cqZAo" node="7Q_67PUJ24M" resolve="candidate" />
                      </node>
                      <node concept="2OwXpG" id="7Q_67PUJ2Xo" role="2OqNvi">
                        <ref role="2Oxat5" node="7Q_67PUJ1RD" resolve="record" />
                      </node>
                    </node>
                    <node concept="1rXfSq" id="7Q_67PUJ24q" role="37vLTx">
                      <ref role="37wK5l" node="7Q_67PUJ2z2" resolve="newArtifact" />
                      <node concept="37vLTw" id="7Q_67PUJ24r" role="37wK5m">
                        <ref role="3cqZAo" node="7Q_67PUJ211" resolve="ledger" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="7Q_67PUJ24s" role="3cqZAp">
                  <node concept="2OqwBi" id="7Q_67PUJ5ME" role="3clFbG">
                    <node concept="liA8E" id="7Q_67PUJ5MF" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.setProperty(org.jetbrains.mps.openapi.language.SProperty,java.lang.String)" resolve="setProperty" />
                      <node concept="37vLTw" id="7Q_67PUJ5MG" role="37wK5m">
                        <ref role="3cqZAo" node="7Q_67PUJ1Tl" resolve="ARTIFACT_KEY" />
                      </node>
                      <node concept="2OqwBi" id="7Q_67PUJ8n8" role="37wK5m">
                        <node concept="37vLTw" id="7Q_67PUJ8n7" role="2Oq$k0">
                          <ref role="3cqZAo" node="7Q_67PUJ24M" resolve="candidate" />
                        </node>
                        <node concept="2OwXpG" id="7Q_67PUJ8n9" role="2OqNvi">
                          <ref role="2Oxat5" node="7Q_67PUJ1Rx" resolve="key" />
                        </node>
                      </node>
                    </node>
                    <node concept="2JrnkZ" id="7Q_67PUJ9Xb" role="2Oq$k0">
                      <node concept="2OqwBi" id="7Q_67PUJ2Xs" role="2JrQYb">
                        <node concept="37vLTw" id="7Q_67PUJ2Xr" role="2Oq$k0">
                          <ref role="3cqZAo" node="7Q_67PUJ24M" resolve="candidate" />
                        </node>
                        <node concept="2OwXpG" id="7Q_67PUJ2Xt" role="2OqNvi">
                          <ref role="2Oxat5" node="7Q_67PUJ1RD" resolve="record" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="7Q_67PUJ24w" role="3cqZAp">
                  <node concept="2OqwBi" id="7Q_67PUJ5N5" role="3clFbG">
                    <node concept="liA8E" id="7Q_67PUJ5N6" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.setProperty(org.jetbrains.mps.openapi.language.SProperty,java.lang.String)" resolve="setProperty" />
                      <node concept="37vLTw" id="7Q_67PUJ5N7" role="37wK5m">
                        <ref role="3cqZAo" node="7Q_67PUJ1Tt" resolve="ARTIFACT_DECISION" />
                      </node>
                      <node concept="Xl_RD" id="7Q_67PUJ5N8" role="37wK5m">
                        <property role="Xl_RC" value="vanilla.generated-aspect; reviewed whole-root ownership" />
                      </node>
                    </node>
                    <node concept="2JrnkZ" id="7Q_67PUJ9Xc" role="2Oq$k0">
                      <node concept="2OqwBi" id="7Q_67PUJ2X$" role="2JrQYb">
                        <node concept="37vLTw" id="7Q_67PUJ2Xz" role="2Oq$k0">
                          <ref role="3cqZAo" node="7Q_67PUJ24M" resolve="candidate" />
                        </node>
                        <node concept="2OwXpG" id="7Q_67PUJ2X_" role="2OqNvi">
                          <ref role="2Oxat5" node="7Q_67PUJ1RD" resolve="record" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="7Q_67PUJ24$" role="3cqZAp">
                  <node concept="1rXfSq" id="7Q_67PUJ24_" role="3clFbG">
                    <ref role="37wK5l" node="7Q_67PUJ2$l" resolve="pointSource" />
                    <node concept="2OqwBi" id="7Q_67PUJ2XG" role="37wK5m">
                      <node concept="37vLTw" id="7Q_67PUJ2XF" role="2Oq$k0">
                        <ref role="3cqZAo" node="7Q_67PUJ24M" resolve="candidate" />
                      </node>
                      <node concept="2OwXpG" id="7Q_67PUJ2XH" role="2OqNvi">
                        <ref role="2Oxat5" node="7Q_67PUJ1RD" resolve="record" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="7Q_67PUJ2XL" role="37wK5m">
                      <node concept="37vLTw" id="7Q_67PUJ2XK" role="2Oq$k0">
                        <ref role="3cqZAo" node="7Q_67PUJ24M" resolve="candidate" />
                      </node>
                      <node concept="2OwXpG" id="7Q_67PUJ2XM" role="2OqNvi">
                        <ref role="2Oxat5" node="7Q_67PUJ1Rt" resolve="source" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7Q_67PUJ24C" role="3cqZAp">
              <node concept="1rXfSq" id="7Q_67PUJ24D" role="3clFbG">
                <ref role="37wK5l" node="7Q_67PUJ2$x" resolve="pointTarget" />
                <node concept="2OqwBi" id="7Q_67PUJ2XQ" role="37wK5m">
                  <node concept="37vLTw" id="7Q_67PUJ2XP" role="2Oq$k0">
                    <ref role="3cqZAo" node="7Q_67PUJ24M" resolve="candidate" />
                  </node>
                  <node concept="2OwXpG" id="7Q_67PUJ2XR" role="2OqNvi">
                    <ref role="2Oxat5" node="7Q_67PUJ1RD" resolve="record" />
                  </node>
                </node>
                <node concept="2OqwBi" id="7Q_67PUJ2XV" role="37wK5m">
                  <node concept="37vLTw" id="7Q_67PUJ2XU" role="2Oq$k0">
                    <ref role="3cqZAo" node="7Q_67PUJ24M" resolve="candidate" />
                  </node>
                  <node concept="2OwXpG" id="7Q_67PUJ2XW" role="2OqNvi">
                    <ref role="2Oxat5" node="7Q_67PUJ1R_" resolve="existing" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7Q_67PUJ24G" role="3cqZAp">
              <node concept="2OqwBi" id="7Q_67PUJ5Nw" role="3clFbG">
                <node concept="liA8E" id="7Q_67PUJ5Nx" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.setProperty(org.jetbrains.mps.openapi.language.SProperty,java.lang.String)" resolve="setProperty" />
                  <node concept="37vLTw" id="7Q_67PUJ5Ny" role="37wK5m">
                    <ref role="3cqZAo" node="7Q_67PUJ1Tp" resolve="ARTIFACT_BASELINE" />
                  </node>
                  <node concept="1rXfSq" id="7Q_67PUJ5Nz" role="37wK5m">
                    <ref role="37wK5l" node="7Q_67PUJ2c0" resolve="snapshot" />
                    <node concept="2OqwBi" id="7Q_67PUJ8nd" role="37wK5m">
                      <node concept="37vLTw" id="7Q_67PUJ8nc" role="2Oq$k0">
                        <ref role="3cqZAo" node="7Q_67PUJ24M" resolve="candidate" />
                      </node>
                      <node concept="2OwXpG" id="7Q_67PUJ8ne" role="2OqNvi">
                        <ref role="2Oxat5" node="7Q_67PUJ1R_" resolve="existing" />
                      </node>
                    </node>
                    <node concept="3clFbT" id="7Q_67PUJ5N_" role="37wK5m" />
                  </node>
                </node>
                <node concept="2JrnkZ" id="7Q_67PUJ9Xd" role="2Oq$k0">
                  <node concept="2OqwBi" id="7Q_67PUJ2Y0" role="2JrQYb">
                    <node concept="37vLTw" id="7Q_67PUJ2XZ" role="2Oq$k0">
                      <ref role="3cqZAo" node="7Q_67PUJ24M" resolve="candidate" />
                    </node>
                    <node concept="2OwXpG" id="7Q_67PUJ2Y1" role="2OqNvi">
                      <ref role="2Oxat5" node="7Q_67PUJ1RD" resolve="record" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="7Q_67PUJ24Q" role="3cqZAp">
          <node concept="2OqwBi" id="7Q_67PUJ2Ya" role="1DdaDG">
            <node concept="37vLTw" id="7Q_67PUJ2Y9" role="2Oq$k0">
              <ref role="3cqZAo" node="7Q_67PUJ20h" resolve="approved" />
            </node>
            <node concept="2OwXpG" id="7Q_67PUJ2Yb" role="2OqNvi">
              <ref role="2Oxat5" node="7Q_67PUJ1Pq" resolve="targets" />
            </node>
          </node>
          <node concept="3cpWsn" id="7Q_67PUJ254" role="1Duv9x">
            <property role="TrG5h" value="target" />
            <node concept="H_c77" id="7Q_67PUJ9Zw" role="1tU5fm" />
          </node>
          <node concept="3clFbS" id="7Q_67PUJ24S" role="2LFqv$">
            <node concept="3clFbF" id="7Q_67PUJ24T" role="3cqZAp">
              <node concept="2YIFZM" id="7Q_67PUJ2Ye" role="3clFbG">
                <ref role="1Pybhc" to="g2mg:7xBkNBCyneu" resolve="GeneratedAspectImporter" />
                <ref role="37wK5l" to="g2mg:7xBkNBCEcYt" resolve="cleanupTransientImports" />
                <node concept="37vLTw" id="7Q_67PUJ2Yf" role="37wK5m">
                  <ref role="3cqZAo" node="7Q_67PUJ254" resolve="target" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7Q_67PUJ24W" role="3cqZAp">
              <node concept="2OqwBi" id="7Q_67PUJ8Q9" role="3clFbG">
                <node concept="2OqwBi" id="7Q_67PUJ8nF" role="2Oq$k0">
                  <node concept="2OqwBi" id="7Q_67PUJ5O1" role="2Oq$k0">
                    <node concept="2ShNRf" id="7Q_67PUJ2YC" role="2Oq$k0">
                      <node concept="1pGfFk" id="7Q_67PUJ2YR" role="2ShVmc">
                        <ref role="37wK5l" to="w1kc:~ModelDependencyUpdate.&lt;init&gt;(org.jetbrains.mps.openapi.model.SModel)" resolve="ModelDependencyUpdate" />
                        <node concept="37vLTw" id="7Q_67PUJ2YS" role="37wK5m">
                          <ref role="3cqZAo" node="7Q_67PUJ254" resolve="target" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="7Q_67PUJ5O2" role="2OqNvi">
                      <ref role="37wK5l" to="w1kc:~ModelDependencyUpdate.updateUsedLanguages()" resolve="updateUsedLanguages" />
                    </node>
                  </node>
                  <node concept="liA8E" id="7Q_67PUJ8nG" role="2OqNvi">
                    <ref role="37wK5l" to="w1kc:~ModelDependencyUpdate.updateImportedModels(org.jetbrains.mps.openapi.module.SRepository)" resolve="updateImportedModels" />
                    <node concept="2OqwBi" id="7Q_67PUJ8nH" role="37wK5m">
                      <node concept="liA8E" id="7Q_67PUJ8nJ" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SModel.getRepository()" resolve="getRepository" />
                      </node>
                      <node concept="2JrnkZ" id="7Q_67PUJ9Xe" role="2Oq$k0">
                        <node concept="37vLTw" id="7Q_67PUJ8nI" role="2JrQYb">
                          <ref role="3cqZAo" node="7Q_67PUJ254" resolve="target" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="7Q_67PUJ8Qa" role="2OqNvi">
                  <ref role="37wK5l" to="w1kc:~ModelDependencyUpdate.updateModuleDependencies(org.jetbrains.mps.openapi.module.SRepository)" resolve="updateModuleDependencies" />
                  <node concept="2OqwBi" id="7Q_67PUJ8Qb" role="37wK5m">
                    <node concept="liA8E" id="7Q_67PUJ8Qd" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SModel.getRepository()" resolve="getRepository" />
                    </node>
                    <node concept="2JrnkZ" id="7Q_67PUJ9Xf" role="2Oq$k0">
                      <node concept="37vLTw" id="7Q_67PUJ8Qc" role="2JrQYb">
                        <ref role="3cqZAo" node="7Q_67PUJ254" resolve="target" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7Q_67PUJ259" role="3cqZAp">
          <node concept="3cpWsn" id="7Q_67PUJ258" role="3cpWs9">
            <property role="TrG5h" value="profile" />
            <node concept="3uibUv" id="7Q_67PUJ25a" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
            <node concept="1rXfSq" id="7Q_67PUJ25b" role="33vP2m">
              <ref role="37wK5l" node="7Q_67PUJ2aP" resolve="profileStamp" />
              <node concept="2OqwBi" id="7Q_67PUJ2Z4" role="37wK5m">
                <node concept="37vLTw" id="7Q_67PUJ2Z3" role="2Oq$k0">
                  <ref role="3cqZAo" node="7Q_67PUJ20h" resolve="approved" />
                </node>
                <node concept="2OwXpG" id="7Q_67PUJ2Z5" role="2OqNvi">
                  <ref role="2Oxat5" node="7Q_67PUJ1Ph" resolve="grammar" />
                </node>
              </node>
              <node concept="2OqwBi" id="7Q_67PUJ2Z9" role="37wK5m">
                <node concept="37vLTw" id="7Q_67PUJ2Z8" role="2Oq$k0">
                  <ref role="3cqZAo" node="7Q_67PUJ20h" resolve="approved" />
                </node>
                <node concept="2OwXpG" id="7Q_67PUJ2Za" role="2OqNvi">
                  <ref role="2Oxat5" node="7Q_67PUJ1Pv" resolve="profile" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7Q_67PUJ25f" role="3cqZAp">
          <node concept="3cpWsn" id="7Q_67PUJ25e" role="3cpWs9">
            <property role="TrG5h" value="source" />
            <node concept="3uibUv" id="7Q_67PUJ25g" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
            <node concept="1rXfSq" id="7Q_67PUJ25h" role="33vP2m">
              <ref role="37wK5l" node="7Q_67PUJ2ac" resolve="sourceStamp" />
              <node concept="2OqwBi" id="7Q_67PUJ2Ze" role="37wK5m">
                <node concept="37vLTw" id="7Q_67PUJ2Zd" role="2Oq$k0">
                  <ref role="3cqZAo" node="7Q_67PUJ20h" resolve="approved" />
                </node>
                <node concept="2OwXpG" id="7Q_67PUJ2Zf" role="2OqNvi">
                  <ref role="2Oxat5" node="7Q_67PUJ1Ph" resolve="grammar" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7Q_67PUJ25j" role="3cqZAp">
          <node concept="3fqX7Q" id="7Q_67PUJ25k" role="3clFbw">
            <node concept="2OqwBi" id="7Q_67PUJ5OB" role="3fr31v">
              <node concept="37vLTw" id="7Q_67PUJ2Zi" role="2Oq$k0">
                <ref role="3cqZAo" node="7Q_67PUJ25e" resolve="source" />
              </node>
              <node concept="liA8E" id="7Q_67PUJ5OC" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                <node concept="2OqwBi" id="7Q_67PUJ8Qo" role="37wK5m">
                  <node concept="liA8E" id="7Q_67PUJ8Qp" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SNode.getProperty(org.jetbrains.mps.openapi.language.SProperty)" resolve="getProperty" />
                    <node concept="37vLTw" id="7Q_67PUJ8Qq" role="37wK5m">
                      <ref role="3cqZAo" node="7Q_67PUJ1Td" resolve="LEDGER_INPUT" />
                    </node>
                  </node>
                  <node concept="2JrnkZ" id="7Q_67PUJ9Xg" role="2Oq$k0">
                    <node concept="37vLTw" id="7Q_67PUJ8nM" role="2JrQYb">
                      <ref role="3cqZAo" node="7Q_67PUJ211" resolve="ledger" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="7Q_67PUJ25p" role="3clFbx">
            <node concept="3clFbF" id="7Q_67PUJ25q" role="3cqZAp">
              <node concept="2OqwBi" id="7Q_67PUJ5OP" role="3clFbG">
                <node concept="liA8E" id="7Q_67PUJ5OQ" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.setProperty(org.jetbrains.mps.openapi.language.SProperty,java.lang.String)" resolve="setProperty" />
                  <node concept="37vLTw" id="7Q_67PUJ5OR" role="37wK5m">
                    <ref role="3cqZAo" node="7Q_67PUJ1Td" resolve="LEDGER_INPUT" />
                  </node>
                  <node concept="37vLTw" id="7Q_67PUJ5OS" role="37wK5m">
                    <ref role="3cqZAo" node="7Q_67PUJ25e" resolve="source" />
                  </node>
                </node>
                <node concept="2JrnkZ" id="7Q_67PUJ9Xh" role="2Oq$k0">
                  <node concept="37vLTw" id="7Q_67PUJ2Zo" role="2JrQYb">
                    <ref role="3cqZAo" node="7Q_67PUJ211" resolve="ledger" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7Q_67PUJ25u" role="3cqZAp">
          <node concept="3fqX7Q" id="7Q_67PUJ25v" role="3clFbw">
            <node concept="2OqwBi" id="7Q_67PUJ5P7" role="3fr31v">
              <node concept="37vLTw" id="7Q_67PUJ2Zu" role="2Oq$k0">
                <ref role="3cqZAo" node="7Q_67PUJ258" resolve="profile" />
              </node>
              <node concept="liA8E" id="7Q_67PUJ5P8" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                <node concept="2OqwBi" id="7Q_67PUJ8Q_" role="37wK5m">
                  <node concept="liA8E" id="7Q_67PUJ8QA" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SNode.getProperty(org.jetbrains.mps.openapi.language.SProperty)" resolve="getProperty" />
                    <node concept="37vLTw" id="7Q_67PUJ8QB" role="37wK5m">
                      <ref role="3cqZAo" node="7Q_67PUJ1Th" resolve="LEDGER_PROFILE" />
                    </node>
                  </node>
                  <node concept="2JrnkZ" id="7Q_67PUJ9Xi" role="2Oq$k0">
                    <node concept="37vLTw" id="7Q_67PUJ8nR" role="2JrQYb">
                      <ref role="3cqZAo" node="7Q_67PUJ211" resolve="ledger" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="7Q_67PUJ25$" role="3clFbx">
            <node concept="3clFbF" id="7Q_67PUJ25_" role="3cqZAp">
              <node concept="2OqwBi" id="7Q_67PUJ5Pl" role="3clFbG">
                <node concept="liA8E" id="7Q_67PUJ5Pm" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.setProperty(org.jetbrains.mps.openapi.language.SProperty,java.lang.String)" resolve="setProperty" />
                  <node concept="37vLTw" id="7Q_67PUJ5Pn" role="37wK5m">
                    <ref role="3cqZAo" node="7Q_67PUJ1Th" resolve="LEDGER_PROFILE" />
                  </node>
                  <node concept="37vLTw" id="7Q_67PUJ5Po" role="37wK5m">
                    <ref role="3cqZAo" node="7Q_67PUJ258" resolve="profile" />
                  </node>
                </node>
                <node concept="2JrnkZ" id="7Q_67PUJ9Xj" role="2Oq$k0">
                  <node concept="37vLTw" id="7Q_67PUJ2Z$" role="2JrQYb">
                    <ref role="3cqZAo" node="7Q_67PUJ211" resolve="ledger" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="694jTX$U3N7" role="3cqZAp">
          <node concept="2OqwBi" id="694jTX$U3N8" role="3clFbG">
            <node concept="2OqwBi" id="694jTX$U3N9" role="2Oq$k0">
              <node concept="2OqwBi" id="694jTX$U3Na" role="2Oq$k0">
                <node concept="2ShNRf" id="694jTX$U3Nb" role="2Oq$k0">
                  <node concept="1pGfFk" id="694jTX$U3Nc" role="2ShVmc">
                    <ref role="37wK5l" to="w1kc:~ModelDependencyUpdate.&lt;init&gt;(org.jetbrains.mps.openapi.model.SModel)" resolve="ModelDependencyUpdate" />
                    <node concept="2OqwBi" id="694jTX$U3Np" role="37wK5m">
                      <node concept="liA8E" id="694jTX$U3Nq" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getModel()" resolve="getModel" />
                      </node>
                      <node concept="2JrnkZ" id="694jTX$U3Nr" role="2Oq$k0">
                        <node concept="2OqwBi" id="694jTX$U3Ns" role="2JrQYb">
                          <node concept="37vLTw" id="694jTX$U3Nt" role="2Oq$k0">
                            <ref role="3cqZAo" node="7Q_67PUJ20h" resolve="approved" />
                          </node>
                          <node concept="2OwXpG" id="694jTX$U3Nu" role="2OqNvi">
                            <ref role="2Oxat5" node="7Q_67PUJ1Ph" resolve="grammar" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="694jTX$U3Ne" role="2OqNvi">
                  <ref role="37wK5l" to="w1kc:~ModelDependencyUpdate.updateUsedLanguages()" resolve="updateUsedLanguages" />
                </node>
              </node>
              <node concept="liA8E" id="694jTX$U3Nf" role="2OqNvi">
                <ref role="37wK5l" to="w1kc:~ModelDependencyUpdate.updateImportedModels(org.jetbrains.mps.openapi.module.SRepository)" resolve="updateImportedModels" />
                <node concept="2OqwBi" id="694jTX$U3Ng" role="37wK5m">
                  <node concept="liA8E" id="694jTX$U3Nh" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SModel.getRepository()" resolve="getRepository" />
                  </node>
                  <node concept="2JrnkZ" id="694jTX$U3Ni" role="2Oq$k0">
                    <node concept="2OqwBi" id="694jTX$U3Nv" role="2JrQYb">
                      <node concept="liA8E" id="694jTX$U3Nw" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getModel()" resolve="getModel" />
                      </node>
                      <node concept="2JrnkZ" id="694jTX$U3Nx" role="2Oq$k0">
                        <node concept="2OqwBi" id="694jTX$U3Ny" role="2JrQYb">
                          <node concept="37vLTw" id="694jTX$U3Nz" role="2Oq$k0">
                            <ref role="3cqZAo" node="7Q_67PUJ20h" resolve="approved" />
                          </node>
                          <node concept="2OwXpG" id="694jTX$U3N$" role="2OqNvi">
                            <ref role="2Oxat5" node="7Q_67PUJ1Ph" resolve="grammar" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="694jTX$U3Nk" role="2OqNvi">
              <ref role="37wK5l" to="w1kc:~ModelDependencyUpdate.updateModuleDependencies(org.jetbrains.mps.openapi.module.SRepository)" resolve="updateModuleDependencies" />
              <node concept="2OqwBi" id="694jTX$U3Nl" role="37wK5m">
                <node concept="liA8E" id="694jTX$U3Nm" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SModel.getRepository()" resolve="getRepository" />
                </node>
                <node concept="2JrnkZ" id="694jTX$U3Nn" role="2Oq$k0">
                  <node concept="2OqwBi" id="694jTX$U3N_" role="2JrQYb">
                    <node concept="liA8E" id="694jTX$U3NA" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.getModel()" resolve="getModel" />
                    </node>
                    <node concept="2JrnkZ" id="694jTX$U3NB" role="2Oq$k0">
                      <node concept="2OqwBi" id="694jTX$U3NC" role="2JrQYb">
                        <node concept="37vLTw" id="694jTX$U3ND" role="2Oq$k0">
                          <ref role="3cqZAo" node="7Q_67PUJ20h" resolve="approved" />
                        </node>
                        <node concept="2OwXpG" id="694jTX$U3NE" role="2OqNvi">
                          <ref role="2Oxat5" node="7Q_67PUJ1Ph" resolve="grammar" />
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
      <node concept="3Tm1VV" id="7Q_67PUJ25D" role="1B3o_S" />
      <node concept="3cqZAl" id="7Q_67PUJ25E" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="7Q_67PUJ25F" role="jymVt">
      <property role="TrG5h" value="candidates" />
      <node concept="37vLTG" id="7Q_67PUJ25G" role="3clF46">
        <property role="TrG5h" value="grammar" />
        <node concept="3Tqbb2" id="7Q_67PUJ9Zx" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7Q_67PUJ25I" role="3clF46">
        <property role="TrG5h" value="roots" />
        <node concept="3uibUv" id="7Q_67PUJ25J" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3Tqbb2" id="7Q_67PUJ9Zy" role="11_B2D" />
        </node>
      </node>
      <node concept="37vLTG" id="7Q_67PUJ25L" role="3clF46">
        <property role="TrG5h" value="targets" />
        <node concept="3uibUv" id="7Q_67PUJ25M" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="H_c77" id="7Q_67PUJ9Zz" role="11_B2D" />
        </node>
      </node>
      <node concept="3clFbS" id="7Q_67PUJ25O" role="3clF47">
        <node concept="3cpWs8" id="7Q_67PUJ25Q" role="3cqZAp">
          <node concept="3cpWsn" id="7Q_67PUJ25P" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="3uibUv" id="7Q_67PUJ25R" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="7Q_67PUJ25S" role="11_B2D">
                <ref role="3uigEE" node="7Q_67PUJ1Rj" resolve="ProtectedRegeneration.Candidate" />
              </node>
            </node>
            <node concept="2ShNRf" id="7Q_67PUJ2ZC" role="33vP2m">
              <node concept="1pGfFk" id="7Q_67PUJ2ZH" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                <node concept="3uibUv" id="7Q_67PUJ2ZI" role="1pMfVU">
                  <ref role="3uigEE" node="7Q_67PUJ1Rj" resolve="ProtectedRegeneration.Candidate" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7Q_67PUJ25W" role="3cqZAp">
          <node concept="3cpWsn" id="7Q_67PUJ25V" role="3cpWs9">
            <property role="TrG5h" value="keys" />
            <node concept="3uibUv" id="7Q_67PUJ25X" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
              <node concept="3uibUv" id="7Q_67PUJ25Y" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
            </node>
            <node concept="2ShNRf" id="7Q_67PUJ2ZJ" role="33vP2m">
              <node concept="1pGfFk" id="7Q_67PUJ2ZN" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="33ny:~HashSet.&lt;init&gt;()" resolve="HashSet" />
                <node concept="3uibUv" id="7Q_67PUJ2ZO" role="1pMfVU">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7Q_67PUJ262" role="3cqZAp">
          <node concept="3cpWsn" id="7Q_67PUJ261" role="3cpWs9">
            <property role="TrG5h" value="uniqueTargets" />
            <node concept="3uibUv" id="7Q_67PUJ263" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
              <node concept="H_c77" id="7Q_67PUJ9Z$" role="11_B2D" />
            </node>
            <node concept="2ShNRf" id="7Q_67PUJ2ZP" role="33vP2m">
              <node concept="1pGfFk" id="7Q_67PUJ2ZT" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="33ny:~HashSet.&lt;init&gt;()" resolve="HashSet" />
                <node concept="H_c77" id="7Q_67PUJ9Z_" role="1pMfVU" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="7Q_67PUJ267" role="3cqZAp">
          <node concept="37vLTw" id="7Q_67PUJ26y" role="1DdaDG">
            <ref role="3cqZAo" node="7Q_67PUJ25L" resolve="targets" />
          </node>
          <node concept="3cpWsn" id="7Q_67PUJ26v" role="1Duv9x">
            <property role="TrG5h" value="target" />
            <node concept="H_c77" id="7Q_67PUJ9ZA" role="1tU5fm" />
          </node>
          <node concept="3clFbS" id="7Q_67PUJ269" role="2LFqv$">
            <node concept="3clFbF" id="7Q_67PURZyX" role="3cqZAp">
              <node concept="2YIFZM" id="7Q_67PURZzF" role="3clFbG">
                <ref role="1Pybhc" node="7Q_67PUJ1Pd" resolve="ProtectedRegeneration" />
                <ref role="37wK5l" node="7Q_67PURZx3" resolve="validateTarget" />
                <node concept="37vLTw" id="7Q_67PURZzG" role="37wK5m">
                  <ref role="3cqZAo" node="7Q_67PUJ26v" resolve="target" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="7Q_67PUJ26a" role="3cqZAp">
              <node concept="22lmx$" id="7Q_67PUJ26b" role="3clFbw">
                <node concept="22lmx$" id="7Q_67PUJ26c" role="3uHU7B">
                  <node concept="22lmx$" id="7Q_67PUJ26d" role="3uHU7B">
                    <node concept="3clFbC" id="7Q_67PUJ26e" role="3uHU7B">
                      <node concept="37vLTw" id="7Q_67PUJ26f" role="3uHU7B">
                        <ref role="3cqZAo" node="7Q_67PUJ26v" resolve="target" />
                      </node>
                      <node concept="10Nm6u" id="7Q_67PUJ26g" role="3uHU7w" />
                    </node>
                    <node concept="2OqwBi" id="7Q_67PUJ5Py" role="3uHU7w">
                      <node concept="liA8E" id="7Q_67PUJ5Pz" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SModel.isReadOnly()" resolve="isReadOnly" />
                      </node>
                      <node concept="2JrnkZ" id="7Q_67PUJ9Xk" role="2Oq$k0">
                        <node concept="37vLTw" id="7Q_67PUJ2ZX" role="2JrQYb">
                          <ref role="3cqZAo" node="7Q_67PUJ26v" resolve="target" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3y3z36" id="7Q_67PUJ26i" role="3uHU7w">
                    <node concept="2OqwBi" id="7Q_67PUJ5PH" role="3uHU7B">
                      <node concept="liA8E" id="7Q_67PUJ5PI" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SModel.getRepository()" resolve="getRepository" />
                      </node>
                      <node concept="2JrnkZ" id="7Q_67PUJ9Xl" role="2Oq$k0">
                        <node concept="37vLTw" id="7Q_67PUJ301" role="2JrQYb">
                          <ref role="3cqZAo" node="7Q_67PUJ26v" resolve="target" />
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="7Q_67PUJ8o9" role="3uHU7w">
                      <node concept="liA8E" id="7Q_67PUJ8oa" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SModel.getRepository()" resolve="getRepository" />
                      </node>
                      <node concept="2JrnkZ" id="7Q_67PUJ9Xn" role="2Oq$k0">
                        <node concept="2OqwBi" id="7Q_67PUJ5Q0" role="2JrQYb">
                          <node concept="liA8E" id="7Q_67PUJ5Q1" role="2OqNvi">
                            <ref role="37wK5l" to="mhbf:~SNode.getModel()" resolve="getModel" />
                          </node>
                          <node concept="2JrnkZ" id="7Q_67PUJ9Xm" role="2Oq$k0">
                            <node concept="37vLTw" id="7Q_67PUJ30d" role="2JrQYb">
                              <ref role="3cqZAo" node="7Q_67PUJ25G" resolve="grammar" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3fqX7Q" id="7Q_67PUJ26m" role="3uHU7w">
                  <node concept="2OqwBi" id="7Q_67PUJ5S7" role="3fr31v">
                    <node concept="37vLTw" id="7Q_67PUJ30h" role="2Oq$k0">
                      <ref role="3cqZAo" node="7Q_67PUJ261" resolve="uniqueTargets" />
                    </node>
                    <node concept="liA8E" id="7Q_67PUJ5S8" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                      <node concept="37vLTw" id="7Q_67PUJ5S9" role="37wK5m">
                        <ref role="3cqZAo" node="7Q_67PUJ26v" resolve="target" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="7Q_67PUJ26q" role="3clFbx">
                <node concept="YS8fn" id="7Q_67PUJ26u" role="3cqZAp">
                  <node concept="1rXfSq" id="7Q_67PUJ26r" role="YScLw">
                    <ref role="37wK5l" node="7Q_67PUJ2xZ" resolve="failure" />
                    <node concept="Xl_RD" id="7Q_67PUJ26s" role="37wK5m">
                      <property role="Xl_RC" value="MBNF_GENERATION_TARGET" />
                    </node>
                    <node concept="Xl_RD" id="7Q_67PUJ26t" role="37wK5m">
                      <property role="Xl_RC" value="Targets must be distinct editable models in the grammar repository" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="7Q_67PUJ26z" role="3cqZAp">
          <node concept="37vLTw" id="7Q_67PUJ28_" role="1DdaDG">
            <ref role="3cqZAo" node="7Q_67PUJ25I" resolve="roots" />
          </node>
          <node concept="3cpWsn" id="7Q_67PUJ28y" role="1Duv9x">
            <property role="TrG5h" value="root" />
            <node concept="3Tqbb2" id="7Q_67PUJ9ZB" role="1tU5fm" />
          </node>
          <node concept="3clFbS" id="7Q_67PUJ26_" role="2LFqv$">
            <node concept="3cpWs8" id="7Q_67PUJ26B" role="3cqZAp">
              <node concept="3cpWsn" id="7Q_67PUJ26A" role="3cpWs9">
                <property role="TrG5h" value="namespace" />
                <node concept="3uibUv" id="7Q_67PUJ26C" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
                <node concept="2OqwBi" id="7Q_67PUJ5Sj" role="33vP2m">
                  <node concept="liA8E" id="7Q_67PUJ5Sk" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SNode.getProperty(org.jetbrains.mps.openapi.language.SProperty)" resolve="getProperty" />
                    <node concept="37vLTw" id="7Q_67PUJ5Sl" role="37wK5m">
                      <ref role="3cqZAo" node="7Q_67PUJ1SH" resolve="VIRTUAL_PACKAGE" />
                    </node>
                  </node>
                  <node concept="2JrnkZ" id="7Q_67PUJ9Xo" role="2Oq$k0">
                    <node concept="37vLTw" id="7Q_67PUJ30m" role="2JrQYb">
                      <ref role="3cqZAo" node="7Q_67PUJ28y" resolve="root" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="7Q_67PUJ26G" role="3cqZAp">
              <node concept="3cpWsn" id="7Q_67PUJ26F" role="3cpWs9">
                <property role="TrG5h" value="target" />
                <node concept="H_c77" id="7Q_67PUJ9ZC" role="1tU5fm" />
                <node concept="10Nm6u" id="7Q_67PUJ26I" role="33vP2m" />
              </node>
            </node>
            <node concept="1DcWWT" id="7Q_67PUJ26J" role="3cqZAp">
              <node concept="37vLTw" id="7Q_67PUJ27n" role="1DdaDG">
                <ref role="3cqZAo" node="7Q_67PUJ25L" resolve="targets" />
              </node>
              <node concept="3cpWsn" id="7Q_67PUJ27k" role="1Duv9x">
                <property role="TrG5h" value="option" />
                <node concept="H_c77" id="7Q_67PUJ9ZD" role="1tU5fm" />
              </node>
              <node concept="3clFbS" id="7Q_67PUJ26L" role="2LFqv$">
                <node concept="3cpWs8" id="7Q_67PUJ26N" role="3cqZAp">
                  <node concept="3cpWsn" id="7Q_67PUJ26M" role="3cpWs9">
                    <property role="TrG5h" value="name" />
                    <node concept="3uibUv" id="7Q_67PUJ26O" role="1tU5fm">
                      <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                    </node>
                    <node concept="2OqwBi" id="7Q_67PUJ8op" role="33vP2m">
                      <node concept="2OqwBi" id="7Q_67PUJ5SB" role="2Oq$k0">
                        <node concept="liA8E" id="7Q_67PUJ5SC" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SModel.getName()" resolve="getName" />
                        </node>
                        <node concept="2JrnkZ" id="7Q_67PUJ9Xp" role="2Oq$k0">
                          <node concept="37vLTw" id="7Q_67PUJ30z" role="2JrQYb">
                            <ref role="3cqZAo" node="7Q_67PUJ27k" resolve="option" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="7Q_67PUJ8oq" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SModelName.getValue()" resolve="getValue" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="7Q_67PUJ26R" role="3cqZAp">
                  <node concept="1Wc70l" id="7Q_67PUJ26S" role="3clFbw">
                    <node concept="3y3z36" id="7Q_67PUJ26T" role="3uHU7B">
                      <node concept="37vLTw" id="7Q_67PUJ26U" role="3uHU7B">
                        <ref role="3cqZAo" node="7Q_67PUJ26A" resolve="namespace" />
                      </node>
                      <node concept="10Nm6u" id="7Q_67PUJ26V" role="3uHU7w" />
                    </node>
                    <node concept="1eOMI4" id="7Q_67PUJ273" role="3uHU7w">
                      <node concept="22lmx$" id="7Q_67PUJ26W" role="1eOMHV">
                        <node concept="2OqwBi" id="7Q_67PUJ5SR" role="3uHU7B">
                          <node concept="37vLTw" id="7Q_67PUJ30B" role="2Oq$k0">
                            <ref role="3cqZAo" node="7Q_67PUJ26A" resolve="namespace" />
                          </node>
                          <node concept="liA8E" id="7Q_67PUJ5SS" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                            <node concept="37vLTw" id="7Q_67PUJ5ST" role="37wK5m">
                              <ref role="3cqZAo" node="7Q_67PUJ26M" resolve="name" />
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="7Q_67PUJ5T8" role="3uHU7w">
                          <node concept="37vLTw" id="7Q_67PUJ30G" role="2Oq$k0">
                            <ref role="3cqZAo" node="7Q_67PUJ26A" resolve="namespace" />
                          </node>
                          <node concept="liA8E" id="7Q_67PUJ5T9" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~String.startsWith(java.lang.String)" resolve="startsWith" />
                            <node concept="3cpWs3" id="7Q_67PUJ5Ta" role="37wK5m">
                              <node concept="37vLTw" id="7Q_67PUJ5Tb" role="3uHU7B">
                                <ref role="3cqZAo" node="7Q_67PUJ26M" resolve="name" />
                              </node>
                              <node concept="Xl_RD" id="7Q_67PUJ5Tc" role="3uHU7w">
                                <property role="Xl_RC" value="." />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="7Q_67PUJ275" role="3clFbx">
                    <node concept="3clFbJ" id="7Q_67PUJ276" role="3cqZAp">
                      <node concept="3y3z36" id="7Q_67PUJ277" role="3clFbw">
                        <node concept="37vLTw" id="7Q_67PUJ278" role="3uHU7B">
                          <ref role="3cqZAo" node="7Q_67PUJ26F" resolve="target" />
                        </node>
                        <node concept="10Nm6u" id="7Q_67PUJ279" role="3uHU7w" />
                      </node>
                      <node concept="3clFbS" id="7Q_67PUJ27b" role="3clFbx">
                        <node concept="YS8fn" id="7Q_67PUJ27f" role="3cqZAp">
                          <node concept="1rXfSq" id="7Q_67PUJ27c" role="YScLw">
                            <ref role="37wK5l" node="7Q_67PUJ2xZ" resolve="failure" />
                            <node concept="Xl_RD" id="7Q_67PUJ27d" role="37wK5m">
                              <property role="Xl_RC" value="MBNF_AMBIGUOUS_TARGET" />
                            </node>
                            <node concept="37vLTw" id="7Q_67PUJ27e" role="37wK5m">
                              <ref role="3cqZAo" node="7Q_67PUJ26A" resolve="namespace" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="7Q_67PUJ27g" role="3cqZAp">
                      <node concept="37vLTI" id="7Q_67PUJ27h" role="3clFbG">
                        <node concept="37vLTw" id="7Q_67PUJ27i" role="37vLTJ">
                          <ref role="3cqZAo" node="7Q_67PUJ26F" resolve="target" />
                        </node>
                        <node concept="37vLTw" id="7Q_67PUJ27j" role="37vLTx">
                          <ref role="3cqZAo" node="7Q_67PUJ27k" resolve="option" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="7Q_67PUJ27o" role="3cqZAp">
              <node concept="3clFbC" id="7Q_67PUJ27p" role="3clFbw">
                <node concept="37vLTw" id="7Q_67PUJ27q" role="3uHU7B">
                  <ref role="3cqZAo" node="7Q_67PUJ26F" resolve="target" />
                </node>
                <node concept="10Nm6u" id="7Q_67PUJ27r" role="3uHU7w" />
              </node>
              <node concept="3clFbS" id="7Q_67PUJ27t" role="3clFbx">
                <node concept="3N13vt" id="7Q_67PUJ27u" role="3cqZAp" />
              </node>
            </node>
            <node concept="3clFbJ" id="7Q_67PUJ27v" role="3cqZAp">
              <node concept="3clFbC" id="7Q_67PUJ27w" role="3clFbw">
                <node concept="1rXfSq" id="7Q_67PUJ27x" role="3uHU7B">
                  <ref role="37wK5l" node="7Q_67PUJ2iU" resolve="legacyKey" />
                  <node concept="37vLTw" id="7Q_67PUJ27y" role="37wK5m">
                    <ref role="3cqZAo" node="7Q_67PUJ28y" resolve="root" />
                  </node>
                </node>
                <node concept="10Nm6u" id="7Q_67PUJ27z" role="3uHU7w" />
              </node>
              <node concept="3clFbS" id="7Q_67PUJ27_" role="3clFbx">
                <node concept="YS8fn" id="7Q_67PUJ27D" role="3cqZAp">
                  <node concept="1rXfSq" id="7Q_67PUJ27A" role="YScLw">
                    <ref role="37wK5l" node="7Q_67PUJ2xZ" resolve="failure" />
                    <node concept="Xl_RD" id="7Q_67PUJ27B" role="37wK5m">
                      <property role="Xl_RC" value="MBNF_AMBIGUOUS_ADOPTION" />
                    </node>
                    <node concept="Xl_RD" id="7Q_67PUJ27C" role="37wK5m">
                      <property role="Xl_RC" value="An unnamed generated artifact needs explicit correspondence" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="7Q_67PUJ27F" role="3cqZAp">
              <node concept="3cpWsn" id="7Q_67PUJ27E" role="3cpWs9">
                <property role="TrG5h" value="source" />
                <node concept="3Tqbb2" id="7Q_67PUJ9ZE" role="1tU5fm" />
                <node concept="2YIFZM" id="7Q_67PUJ30N" role="33vP2m">
                  <ref role="1Pybhc" to="fwk:~TracingUtil" resolve="TracingUtil" />
                  <ref role="37wK5l" to="fwk:~TracingUtil.getInputNode(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.module.SRepository)" resolve="getInputNode" />
                  <node concept="37vLTw" id="7Q_67PUJ30O" role="37wK5m">
                    <ref role="3cqZAo" node="7Q_67PUJ28y" resolve="root" />
                  </node>
                  <node concept="2OqwBi" id="7Q_67PUJ8QR" role="37wK5m">
                    <node concept="liA8E" id="7Q_67PUJ8QS" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SModel.getRepository()" resolve="getRepository" />
                    </node>
                    <node concept="2JrnkZ" id="7Q_67PUJ9Xr" role="2Oq$k0">
                      <node concept="2OqwBi" id="7Q_67PUJ8oG" role="2JrQYb">
                        <node concept="liA8E" id="7Q_67PUJ8oH" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SNode.getModel()" resolve="getModel" />
                        </node>
                        <node concept="2JrnkZ" id="7Q_67PUJ9Xq" role="2Oq$k0">
                          <node concept="37vLTw" id="7Q_67PUJ5Tn" role="2JrQYb">
                            <ref role="3cqZAo" node="7Q_67PUJ25G" resolve="grammar" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="7Q_67PUJ27L" role="3cqZAp">
              <node concept="22lmx$" id="7Q_67PUJ27M" role="3clFbw">
                <node concept="3clFbC" id="7Q_67PUJ27N" role="3uHU7B">
                  <node concept="37vLTw" id="7Q_67PUJ27O" role="3uHU7B">
                    <ref role="3cqZAo" node="7Q_67PUJ27E" resolve="source" />
                  </node>
                  <node concept="10Nm6u" id="7Q_67PUJ27P" role="3uHU7w" />
                </node>
                <node concept="3y3z36" id="7Q_67PUJ27Q" role="3uHU7w">
                  <node concept="2OqwBi" id="7Q_67PUJ5Tz" role="3uHU7B">
                    <node concept="liA8E" id="7Q_67PUJ5T$" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.getContainingRoot()" resolve="getContainingRoot" />
                    </node>
                    <node concept="2JrnkZ" id="7Q_67PUJ9Xs" role="2Oq$k0">
                      <node concept="37vLTw" id="7Q_67PUJ30T" role="2JrQYb">
                        <ref role="3cqZAo" node="7Q_67PUJ27E" resolve="source" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="7Q_67PUJ27S" role="3uHU7w">
                    <ref role="3cqZAo" node="7Q_67PUJ25G" resolve="grammar" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="7Q_67PUJ27U" role="3clFbx">
                <node concept="YS8fn" id="7Q_67PUJ281" role="3cqZAp">
                  <node concept="1rXfSq" id="7Q_67PUJ27V" role="YScLw">
                    <ref role="37wK5l" node="7Q_67PUJ2xZ" resolve="failure" />
                    <node concept="Xl_RD" id="7Q_67PUJ27W" role="37wK5m">
                      <property role="Xl_RC" value="MBNF_SOURCE_TRACE_MISSING" />
                    </node>
                    <node concept="3cpWs3" id="7Q_67PUJ27X" role="37wK5m">
                      <node concept="Xl_RD" id="7Q_67PUJ27Y" role="3uHU7B">
                        <property role="Xl_RC" value="Regenerate with retained transient models: " />
                      </node>
                      <node concept="1rXfSq" id="7Q_67PUJ27Z" role="3uHU7w">
                        <ref role="37wK5l" node="7Q_67PUJ2iU" resolve="legacyKey" />
                        <node concept="37vLTw" id="7Q_67PUJ280" role="37wK5m">
                          <ref role="3cqZAo" node="7Q_67PUJ28y" resolve="root" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="7Q_67PUJ283" role="3cqZAp">
              <node concept="3cpWsn" id="7Q_67PUJ282" role="3cpWs9">
                <property role="TrG5h" value="key" />
                <node concept="3uibUv" id="7Q_67PUJ284" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
                <node concept="3cpWs3" id="7Q_67PUJ285" role="33vP2m">
                  <node concept="3cpWs3" id="7Q_67PUJ286" role="3uHU7B">
                    <node concept="3cpWs3" id="7Q_67PUJ287" role="3uHU7B">
                      <node concept="3cpWs3" id="7Q_67PUJ288" role="3uHU7B">
                        <node concept="2OqwBi" id="7Q_67PUJ8pj" role="3uHU7B">
                          <node concept="2OqwBi" id="7Q_67PUJ5TR" role="2Oq$k0">
                            <node concept="liA8E" id="7Q_67PUJ5TS" role="2OqNvi">
                              <ref role="37wK5l" to="mhbf:~SNode.getReference()" resolve="getReference" />
                            </node>
                            <node concept="2JrnkZ" id="7Q_67PUJ9Xt" role="2Oq$k0">
                              <node concept="37vLTw" id="7Q_67PUJ315" role="2JrQYb">
                                <ref role="3cqZAo" node="7Q_67PUJ27E" resolve="source" />
                              </node>
                            </node>
                          </node>
                          <node concept="liA8E" id="7Q_67PUJ8pk" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="7Q_67PUJ28b" role="3uHU7w">
                          <property role="Xl_RC" value="|" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="7Q_67PUJ8pC" role="3uHU7w">
                        <node concept="2OqwBi" id="7Q_67PUJ5Ub" role="2Oq$k0">
                          <node concept="liA8E" id="7Q_67PUJ5Uc" role="2OqNvi">
                            <ref role="37wK5l" to="mhbf:~SModel.getReference()" resolve="getReference" />
                          </node>
                          <node concept="2JrnkZ" id="7Q_67PUJ9Xu" role="2Oq$k0">
                            <node concept="37vLTw" id="7Q_67PUJ31h" role="2JrQYb">
                              <ref role="3cqZAo" node="7Q_67PUJ26F" resolve="target" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="7Q_67PUJ8pD" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                        </node>
                      </node>
                    </node>
                    <node concept="Xl_RD" id="7Q_67PUJ28e" role="3uHU7w">
                      <property role="Xl_RC" value="|" />
                    </node>
                  </node>
                  <node concept="1rXfSq" id="7Q_67PUJ28f" role="3uHU7w">
                    <ref role="37wK5l" node="7Q_67PUJ2cn" resolve="conceptKey" />
                    <node concept="37vLTw" id="7Q_67PUJ28g" role="37wK5m">
                      <ref role="3cqZAo" node="7Q_67PUJ28y" resolve="root" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="7Q_67PUJ28h" role="3cqZAp">
              <node concept="3fqX7Q" id="7Q_67PUJ28i" role="3clFbw">
                <node concept="2OqwBi" id="7Q_67PUJ5Wi" role="3fr31v">
                  <node concept="37vLTw" id="7Q_67PUJ31l" role="2Oq$k0">
                    <ref role="3cqZAo" node="7Q_67PUJ25V" resolve="keys" />
                  </node>
                  <node concept="liA8E" id="7Q_67PUJ5Wj" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                    <node concept="37vLTw" id="7Q_67PUJ5Wk" role="37wK5m">
                      <ref role="3cqZAo" node="7Q_67PUJ282" resolve="key" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="7Q_67PUJ28m" role="3clFbx">
                <node concept="YS8fn" id="7Q_67PUJ28q" role="3cqZAp">
                  <node concept="1rXfSq" id="7Q_67PUJ28n" role="YScLw">
                    <ref role="37wK5l" node="7Q_67PUJ2xZ" resolve="failure" />
                    <node concept="Xl_RD" id="7Q_67PUJ28o" role="37wK5m">
                      <property role="Xl_RC" value="MBNF_AMBIGUOUS_ARTIFACT" />
                    </node>
                    <node concept="37vLTw" id="7Q_67PUJ28p" role="37wK5m">
                      <ref role="3cqZAo" node="7Q_67PUJ282" resolve="key" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7Q_67PUJ28r" role="3cqZAp">
              <node concept="2OqwBi" id="7Q_67PUJ5YB" role="3clFbG">
                <node concept="37vLTw" id="7Q_67PUJ31q" role="2Oq$k0">
                  <ref role="3cqZAo" node="7Q_67PUJ25P" resolve="result" />
                </node>
                <node concept="liA8E" id="7Q_67PUJ5YC" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                  <node concept="2ShNRf" id="7Q_67PUJ8pE" role="37wK5m">
                    <node concept="1pGfFk" id="7Q_67PUJ8pP" role="2ShVmc">
                      <ref role="37wK5l" node="7Q_67PUJ1RT" resolve="ProtectedRegeneration.Candidate" />
                      <node concept="37vLTw" id="7Q_67PUJ8pQ" role="37wK5m">
                        <ref role="3cqZAo" node="7Q_67PUJ28y" resolve="root" />
                      </node>
                      <node concept="37vLTw" id="7Q_67PUJ8pR" role="37wK5m">
                        <ref role="3cqZAo" node="7Q_67PUJ26F" resolve="target" />
                      </node>
                      <node concept="37vLTw" id="7Q_67PUJ8pS" role="37wK5m">
                        <ref role="3cqZAo" node="7Q_67PUJ27E" resolve="source" />
                      </node>
                      <node concept="37vLTw" id="7Q_67PUJ8pT" role="37wK5m">
                        <ref role="3cqZAo" node="7Q_67PUJ282" resolve="key" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7Q_67PUJ28A" role="3cqZAp">
          <node concept="2OqwBi" id="7Q_67PUJ610" role="3clFbw">
            <node concept="37vLTw" id="7Q_67PUJ31z" role="2Oq$k0">
              <ref role="3cqZAo" node="7Q_67PUJ25P" resolve="result" />
            </node>
            <node concept="liA8E" id="7Q_67PUJ611" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.isEmpty()" resolve="isEmpty" />
            </node>
          </node>
          <node concept="3clFbS" id="7Q_67PUJ28D" role="3clFbx">
            <node concept="YS8fn" id="7Q_67PUJ28H" role="3cqZAp">
              <node concept="1rXfSq" id="7Q_67PUJ28E" role="YScLw">
                <ref role="37wK5l" node="7Q_67PUJ2xZ" resolve="failure" />
                <node concept="Xl_RD" id="7Q_67PUJ28F" role="37wK5m">
                  <property role="Xl_RC" value="MBNF_GENERATION_INPUT" />
                </node>
                <node concept="Xl_RD" id="7Q_67PUJ28G" role="37wK5m">
                  <property role="Xl_RC" value="No generated roots match the selected target models" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7Q_67PUJ28I" role="3cqZAp">
          <node concept="37vLTw" id="7Q_67PUJ28J" role="3cqZAk">
            <ref role="3cqZAo" node="7Q_67PUJ25P" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="7Q_67PUJ28K" role="1B3o_S" />
      <node concept="3uibUv" id="7Q_67PUJ28L" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="7Q_67PUJ28M" role="11_B2D">
          <ref role="3uigEE" node="7Q_67PUJ1Rj" resolve="ProtectedRegeneration.Candidate" />
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="7Q_67PUJ28N" role="jymVt">
      <property role="TrG5h" value="inputStamp" />
      <node concept="37vLTG" id="7Q_67PUJ28O" role="3clF46">
        <property role="TrG5h" value="grammar" />
        <node concept="3Tqbb2" id="7Q_67PUJ9ZF" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7Q_67PUJ28Q" role="3clF46">
        <property role="TrG5h" value="generated" />
        <node concept="3uibUv" id="7Q_67PUJ28R" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3Tqbb2" id="7Q_67PUJ9ZG" role="11_B2D" />
        </node>
      </node>
      <node concept="37vLTG" id="7Q_67PUJ28T" role="3clF46">
        <property role="TrG5h" value="targets" />
        <node concept="3uibUv" id="7Q_67PUJ28U" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="H_c77" id="7Q_67PUJ9ZH" role="11_B2D" />
        </node>
      </node>
      <node concept="37vLTG" id="7Q_67PUJ28W" role="3clF46">
        <property role="TrG5h" value="ledger" />
        <node concept="3Tqbb2" id="7Q_67PUJ9ZI" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7Q_67PUJ28Y" role="3clF46">
        <property role="TrG5h" value="profile" />
        <node concept="3uibUv" id="7Q_67PUJ28Z" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3clFbS" id="7Q_67PUJ290" role="3clF47">
        <node concept="3cpWs8" id="7Q_67PUJ292" role="3cqZAp">
          <node concept="3cpWsn" id="7Q_67PUJ291" role="3cpWs9">
            <property role="TrG5h" value="parts" />
            <node concept="3uibUv" id="7Q_67PUJ293" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="7Q_67PUJ294" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
            </node>
            <node concept="2ShNRf" id="7Q_67PUJ31_" role="33vP2m">
              <node concept="1pGfFk" id="7Q_67PUJ31E" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                <node concept="3uibUv" id="7Q_67PUJ31F" role="1pMfVU">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7Q_67PUJ297" role="3cqZAp">
          <node concept="2OqwBi" id="7Q_67PUJ63k" role="3clFbG">
            <node concept="37vLTw" id="7Q_67PUJ31I" role="2Oq$k0">
              <ref role="3cqZAo" node="7Q_67PUJ291" resolve="parts" />
            </node>
            <node concept="liA8E" id="7Q_67PUJ63l" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
              <node concept="1rXfSq" id="7Q_67PUJ63m" role="37wK5m">
                <ref role="37wK5l" node="7Q_67PUJ2ac" resolve="sourceStamp" />
                <node concept="37vLTw" id="7Q_67PUJ63n" role="37wK5m">
                  <ref role="3cqZAo" node="7Q_67PUJ28O" resolve="grammar" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7Q_67PUJ29b" role="3cqZAp">
          <node concept="2OqwBi" id="7Q_67PUJ65E" role="3clFbG">
            <node concept="37vLTw" id="7Q_67PUJ31O" role="2Oq$k0">
              <ref role="3cqZAo" node="7Q_67PUJ291" resolve="parts" />
            </node>
            <node concept="liA8E" id="7Q_67PUJ65F" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
              <node concept="37vLTw" id="7Q_67PUJ65G" role="37wK5m">
                <ref role="3cqZAo" node="7Q_67PUJ28Y" resolve="profile" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7Q_67PUJ29e" role="3cqZAp">
          <node concept="2OqwBi" id="7Q_67PUJ67Z" role="3clFbG">
            <node concept="37vLTw" id="7Q_67PUJ31T" role="2Oq$k0">
              <ref role="3cqZAo" node="7Q_67PUJ291" resolve="parts" />
            </node>
            <node concept="liA8E" id="7Q_67PUJ680" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
              <node concept="1rXfSq" id="7Q_67PUJ681" role="37wK5m">
                <ref role="37wK5l" node="7Q_67PUJ2bx" resolve="toolchain" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="7Q_67PUJ29h" role="3cqZAp">
          <node concept="37vLTw" id="7Q_67PUJ29v" role="1DdaDG">
            <ref role="3cqZAo" node="7Q_67PUJ28Q" resolve="generated" />
          </node>
          <node concept="3cpWsn" id="7Q_67PUJ29s" role="1Duv9x">
            <property role="TrG5h" value="node" />
            <node concept="3Tqbb2" id="7Q_67PUJ9ZJ" role="1tU5fm" />
          </node>
          <node concept="3clFbS" id="7Q_67PUJ29j" role="2LFqv$">
            <node concept="3clFbF" id="7Q_67PUJ29k" role="3cqZAp">
              <node concept="2OqwBi" id="7Q_67PUJ6ak" role="3clFbG">
                <node concept="37vLTw" id="7Q_67PUJ31Y" role="2Oq$k0">
                  <ref role="3cqZAo" node="7Q_67PUJ291" resolve="parts" />
                </node>
                <node concept="liA8E" id="7Q_67PUJ6al" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                  <node concept="3cpWs3" id="7Q_67PUJ6am" role="37wK5m">
                    <node concept="2OqwBi" id="7Q_67PUJ90r" role="3uHU7B">
                      <node concept="2OqwBi" id="7Q_67PUJ8Ra" role="2Oq$k0">
                        <node concept="liA8E" id="7Q_67PUJ8Rb" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SNode.getReference()" resolve="getReference" />
                        </node>
                        <node concept="2JrnkZ" id="7Q_67PUJ9Xv" role="2Oq$k0">
                          <node concept="37vLTw" id="7Q_67PUJ8q4" role="2JrQYb">
                            <ref role="3cqZAo" node="7Q_67PUJ29s" resolve="node" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="7Q_67PUJ90s" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                      </node>
                    </node>
                    <node concept="1rXfSq" id="7Q_67PUJ6ap" role="3uHU7w">
                      <ref role="37wK5l" node="7Q_67PUJ2c0" resolve="snapshot" />
                      <node concept="37vLTw" id="7Q_67PUJ6aq" role="37wK5m">
                        <ref role="3cqZAo" node="7Q_67PUJ29s" resolve="node" />
                      </node>
                      <node concept="3clFbT" id="7Q_67PUJ6ar" role="37wK5m" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="7Q_67PUJ29w" role="3cqZAp">
          <node concept="37vLTw" id="7Q_67PUJ29S" role="1DdaDG">
            <ref role="3cqZAo" node="7Q_67PUJ28T" resolve="targets" />
          </node>
          <node concept="3cpWsn" id="7Q_67PUJ29P" role="1Duv9x">
            <property role="TrG5h" value="target" />
            <node concept="H_c77" id="7Q_67PUJ9ZK" role="1tU5fm" />
          </node>
          <node concept="3clFbS" id="7Q_67PUJ29y" role="2LFqv$">
            <node concept="1DcWWT" id="7Q_67PUJ29z" role="3cqZAp">
              <node concept="2OqwBi" id="7Q_67PUJ6a_" role="1DdaDG">
                <node concept="liA8E" id="7Q_67PUJ6aA" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SModel.getRootNodes()" resolve="getRootNodes" />
                </node>
                <node concept="2JrnkZ" id="7Q_67PUJ9Xw" role="2Oq$k0">
                  <node concept="37vLTw" id="7Q_67PUJ328" role="2JrQYb">
                    <ref role="3cqZAo" node="7Q_67PUJ29P" resolve="target" />
                  </node>
                </node>
              </node>
              <node concept="3cpWsn" id="7Q_67PUJ29L" role="1Duv9x">
                <property role="TrG5h" value="root" />
                <node concept="3Tqbb2" id="7Q_67PUJ9ZL" role="1tU5fm" />
              </node>
              <node concept="3clFbS" id="7Q_67PUJ29_" role="2LFqv$">
                <node concept="3clFbF" id="7Q_67PUJ29A" role="3cqZAp">
                  <node concept="2OqwBi" id="7Q_67PUJ6cT" role="3clFbG">
                    <node concept="37vLTw" id="7Q_67PUJ32c" role="2Oq$k0">
                      <ref role="3cqZAo" node="7Q_67PUJ291" resolve="parts" />
                    </node>
                    <node concept="liA8E" id="7Q_67PUJ6cU" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                      <node concept="3cpWs3" id="7Q_67PUJ6cV" role="37wK5m">
                        <node concept="3cpWs3" id="7Q_67PUJ6cW" role="3uHU7B">
                          <node concept="2OqwBi" id="7Q_67PUJ90H" role="3uHU7B">
                            <node concept="2OqwBi" id="7Q_67PUJ8Rt" role="2Oq$k0">
                              <node concept="liA8E" id="7Q_67PUJ8Ru" role="2OqNvi">
                                <ref role="37wK5l" to="mhbf:~SModel.getReference()" resolve="getReference" />
                              </node>
                              <node concept="2JrnkZ" id="7Q_67PUJ9Xx" role="2Oq$k0">
                                <node concept="37vLTw" id="7Q_67PUJ8qg" role="2JrQYb">
                                  <ref role="3cqZAo" node="7Q_67PUJ29P" resolve="target" />
                                </node>
                              </node>
                            </node>
                            <node concept="liA8E" id="7Q_67PUJ90I" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="7Q_67PUJ90Z" role="3uHU7w">
                            <node concept="2OqwBi" id="7Q_67PUJ8RK" role="2Oq$k0">
                              <node concept="liA8E" id="7Q_67PUJ8RL" role="2OqNvi">
                                <ref role="37wK5l" to="mhbf:~SNode.getReference()" resolve="getReference" />
                              </node>
                              <node concept="2JrnkZ" id="7Q_67PUJ9Xy" role="2Oq$k0">
                                <node concept="37vLTw" id="7Q_67PUJ8qs" role="2JrQYb">
                                  <ref role="3cqZAo" node="7Q_67PUJ29L" resolve="root" />
                                </node>
                              </node>
                            </node>
                            <node concept="liA8E" id="7Q_67PUJ910" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                            </node>
                          </node>
                        </node>
                        <node concept="1rXfSq" id="7Q_67PUJ6d1" role="3uHU7w">
                          <ref role="37wK5l" node="7Q_67PUJ2c0" resolve="snapshot" />
                          <node concept="37vLTw" id="7Q_67PUJ6d2" role="37wK5m">
                            <ref role="3cqZAo" node="7Q_67PUJ29L" resolve="root" />
                          </node>
                          <node concept="3clFbT" id="7Q_67PUJ6d3" role="37wK5m" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7Q_67PUJ29T" role="3cqZAp">
          <node concept="3y3z36" id="7Q_67PUJ29U" role="3clFbw">
            <node concept="37vLTw" id="7Q_67PUJ29V" role="3uHU7B">
              <ref role="3cqZAo" node="7Q_67PUJ28W" resolve="ledger" />
            </node>
            <node concept="10Nm6u" id="7Q_67PUJ29W" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="7Q_67PUJ29Y" role="3clFbx">
            <node concept="3clFbF" id="7Q_67PUJ29Z" role="3cqZAp">
              <node concept="2OqwBi" id="7Q_67PUJ6fm" role="3clFbG">
                <node concept="37vLTw" id="7Q_67PUJ32p" role="2Oq$k0">
                  <ref role="3cqZAo" node="7Q_67PUJ291" resolve="parts" />
                </node>
                <node concept="liA8E" id="7Q_67PUJ6fn" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                  <node concept="1rXfSq" id="7Q_67PUJ6fo" role="37wK5m">
                    <ref role="37wK5l" node="7Q_67PUJ2c0" resolve="snapshot" />
                    <node concept="37vLTw" id="7Q_67PUJ6fp" role="37wK5m">
                      <ref role="3cqZAo" node="7Q_67PUJ28W" resolve="ledger" />
                    </node>
                    <node concept="3clFbT" id="7Q_67PUJ6fq" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7Q_67PUJ2a4" role="3cqZAp">
          <node concept="2YIFZM" id="7Q_67PUJ32w" role="3clFbG">
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            <ref role="37wK5l" to="33ny:~Collections.sort(java.util.List)" resolve="sort" />
            <node concept="37vLTw" id="7Q_67PUJ32x" role="37wK5m">
              <ref role="3cqZAo" node="7Q_67PUJ291" resolve="parts" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7Q_67PUJ2a7" role="3cqZAp">
          <node concept="1rXfSq" id="7Q_67PUJ2a8" role="3cqZAk">
            <ref role="37wK5l" node="7Q_67PUJ2xf" resolve="digest" />
            <node concept="2OqwBi" id="7Q_67PUJ6hI" role="37wK5m">
              <node concept="37vLTw" id="7Q_67PUJ32$" role="2Oq$k0">
                <ref role="3cqZAo" node="7Q_67PUJ291" resolve="parts" />
              </node>
              <node concept="liA8E" id="7Q_67PUJ6hJ" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="7Q_67PUJ2aa" role="1B3o_S" />
      <node concept="3uibUv" id="7Q_67PUJ2ab" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="2YIFZL" id="7Q_67PUJ2ac" role="jymVt">
      <property role="TrG5h" value="sourceStamp" />
      <node concept="37vLTG" id="7Q_67PUJ2ad" role="3clF46">
        <property role="TrG5h" value="grammar" />
        <node concept="3Tqbb2" id="7Q_67PUJ9ZM" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="7Q_67PUJ2af" role="3clF47">
        <node concept="3cpWs8" id="7Q_67PUJ2ah" role="3cqZAp">
          <node concept="3cpWsn" id="7Q_67PUJ2ag" role="3cpWs9">
            <property role="TrG5h" value="parts" />
            <node concept="3uibUv" id="7Q_67PUJ2ai" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="7Q_67PUJ2aj" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
            </node>
            <node concept="2ShNRf" id="7Q_67PUJ32A" role="33vP2m">
              <node concept="1pGfFk" id="7Q_67PUJ32F" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                <node concept="3uibUv" id="7Q_67PUJ32G" role="1pMfVU">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="7Q_67PUJ2am" role="3cqZAp">
          <node concept="2OqwBi" id="7Q_67PUJ8qH" role="1DdaDG">
            <node concept="liA8E" id="7Q_67PUJ8qI" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SModel.getRootNodes()" resolve="getRootNodes" />
            </node>
            <node concept="2JrnkZ" id="7Q_67PUJ9X$" role="2Oq$k0">
              <node concept="2OqwBi" id="7Q_67PUJ6i1" role="2JrQYb">
                <node concept="liA8E" id="7Q_67PUJ6i2" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getModel()" resolve="getModel" />
                </node>
                <node concept="2JrnkZ" id="7Q_67PUJ9Xz" role="2Oq$k0">
                  <node concept="37vLTw" id="7Q_67PUJ32R" role="2JrQYb">
                    <ref role="3cqZAo" node="7Q_67PUJ2ad" resolve="grammar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="7Q_67PUJ2aC" role="1Duv9x">
            <property role="TrG5h" value="root" />
            <node concept="3Tqbb2" id="7Q_67PUJ9ZN" role="1tU5fm" />
          </node>
          <node concept="3clFbS" id="7Q_67PUJ2ao" role="2LFqv$">
            <node concept="3clFbJ" id="7Q_67PUJ2ap" role="3cqZAp">
              <node concept="3fqX7Q" id="7Q_67PUJ2aq" role="3clFbw">
                <node concept="2OqwBi" id="7Q_67PUJ8qY" role="3fr31v">
                  <node concept="2OqwBi" id="7Q_67PUJ6ik" role="2Oq$k0">
                    <node concept="liA8E" id="7Q_67PUJ6il" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                    </node>
                    <node concept="2JrnkZ" id="7Q_67PUJ9X_" role="2Oq$k0">
                      <node concept="37vLTw" id="7Q_67PUJ333" role="2JrQYb">
                        <ref role="3cqZAo" node="7Q_67PUJ2aC" resolve="root" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="7Q_67PUJ8qZ" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                    <node concept="37vLTw" id="7Q_67PUJ8r0" role="37wK5m">
                      <ref role="3cqZAo" node="7Q_67PUJ1S_" resolve="LEDGER" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="7Q_67PUJ2av" role="3clFbx">
                <node concept="3clFbF" id="7Q_67PUJ2aw" role="3cqZAp">
                  <node concept="2OqwBi" id="7Q_67PUJ6kC" role="3clFbG">
                    <node concept="37vLTw" id="7Q_67PUJ337" role="2Oq$k0">
                      <ref role="3cqZAo" node="7Q_67PUJ2ag" resolve="parts" />
                    </node>
                    <node concept="liA8E" id="7Q_67PUJ6kD" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                      <node concept="3cpWs3" id="7Q_67PUJ6kE" role="37wK5m">
                        <node concept="2OqwBi" id="7Q_67PUJ91h" role="3uHU7B">
                          <node concept="2OqwBi" id="7Q_67PUJ8S3" role="2Oq$k0">
                            <node concept="liA8E" id="7Q_67PUJ8S4" role="2OqNvi">
                              <ref role="37wK5l" to="mhbf:~SNode.getReference()" resolve="getReference" />
                            </node>
                            <node concept="2JrnkZ" id="7Q_67PUJ9XA" role="2Oq$k0">
                              <node concept="37vLTw" id="7Q_67PUJ8rb" role="2JrQYb">
                                <ref role="3cqZAo" node="7Q_67PUJ2aC" resolve="root" />
                              </node>
                            </node>
                          </node>
                          <node concept="liA8E" id="7Q_67PUJ91i" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                          </node>
                        </node>
                        <node concept="1rXfSq" id="7Q_67PUJ6kH" role="3uHU7w">
                          <ref role="37wK5l" node="7Q_67PUJ2c0" resolve="snapshot" />
                          <node concept="37vLTw" id="7Q_67PUJ6kI" role="37wK5m">
                            <ref role="3cqZAo" node="7Q_67PUJ2aC" resolve="root" />
                          </node>
                          <node concept="3clFbT" id="7Q_67PUJ6kJ" role="37wK5m" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7Q_67PUJ2aH" role="3cqZAp">
          <node concept="2YIFZM" id="7Q_67PUJ33h" role="3clFbG">
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            <ref role="37wK5l" to="33ny:~Collections.sort(java.util.List)" resolve="sort" />
            <node concept="37vLTw" id="7Q_67PUJ33i" role="37wK5m">
              <ref role="3cqZAo" node="7Q_67PUJ2ag" resolve="parts" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7Q_67PUJ2aK" role="3cqZAp">
          <node concept="1rXfSq" id="7Q_67PUJ2aL" role="3cqZAk">
            <ref role="37wK5l" node="7Q_67PUJ2xf" resolve="digest" />
            <node concept="2OqwBi" id="7Q_67PUJ6n3" role="37wK5m">
              <node concept="37vLTw" id="7Q_67PUJ33l" role="2Oq$k0">
                <ref role="3cqZAo" node="7Q_67PUJ2ag" resolve="parts" />
              </node>
              <node concept="liA8E" id="7Q_67PUJ6n4" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="7Q_67PUJ2aN" role="1B3o_S" />
      <node concept="3uibUv" id="7Q_67PUJ2aO" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="2YIFZL" id="7Q_67PUJ2aP" role="jymVt">
      <property role="TrG5h" value="profileStamp" />
      <node concept="37vLTG" id="7Q_67PUJ2aQ" role="3clF46">
        <property role="TrG5h" value="grammar" />
        <node concept="3Tqbb2" id="7Q_67PUJ9ZO" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7Q_67PUJ2aS" role="3clF46">
        <property role="TrG5h" value="profile" />
        <node concept="3Tqbb2" id="7Q_67PUJ9ZP" role="1tU5fm" />
      </node>
      <node concept="3Tm6S6" id="7Q_67PUJ2bv" role="1B3o_S" />
      <node concept="3uibUv" id="7Q_67PUJ2bw" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3clFbS" id="694jTX_4RQF" role="3clF47">
        <node concept="3clFbJ" id="694jTX_4RQG" role="3cqZAp">
          <node concept="3clFbC" id="694jTX_4RQH" role="3clFbw">
            <node concept="37vLTw" id="694jTX_4RQI" role="3uHU7B">
              <ref role="3cqZAo" node="7Q_67PUJ2aS" resolve="profile" />
            </node>
            <node concept="10Nm6u" id="694jTX_4RQJ" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="694jTX_4RQL" role="3clFbx">
            <node concept="3cpWs6" id="694jTX_4RQM" role="3cqZAp">
              <node concept="1rXfSq" id="694jTX_4RQN" role="3cqZAk">
                <ref role="37wK5l" node="694jTX$ZyXq" resolve="fingerprint" />
                <node concept="2YIFZM" id="694jTX_4RXy" role="37wK5m">
                  <ref role="1Pybhc" to="9toz:~GenerationProfiles" resolve="GenerationProfiles" />
                  <ref role="37wK5l" to="9toz:~GenerationProfiles.descriptor(java.lang.String)" resolve="descriptor" />
                  <node concept="Xl_RD" id="694jTX_4RXz" role="37wK5m">
                    <property role="Xl_RC" value="vanilla" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="694jTX_4RQQ" role="3cqZAp">
          <node concept="3y3z36" id="694jTX_4RQR" role="3clFbw">
            <node concept="1rXfSq" id="694jTX_4RQS" role="3uHU7B">
              <ref role="37wK5l" node="7Q_67PUJ2$0" resolve="profileGrammar" />
              <node concept="37vLTw" id="694jTX_4RQT" role="37wK5m">
                <ref role="3cqZAo" node="7Q_67PUJ2aS" resolve="profile" />
              </node>
            </node>
            <node concept="37vLTw" id="694jTX_4RQU" role="3uHU7w">
              <ref role="3cqZAo" node="7Q_67PUJ2aQ" resolve="grammar" />
            </node>
          </node>
          <node concept="3clFbS" id="694jTX_4RQW" role="3clFbx">
            <node concept="YS8fn" id="694jTX_4RR0" role="3cqZAp">
              <node concept="1rXfSq" id="694jTX_4RQX" role="YScLw">
                <ref role="37wK5l" node="7Q_67PUJ2xZ" resolve="failure" />
                <node concept="Xl_RD" id="694jTX_4RQY" role="37wK5m">
                  <property role="Xl_RC" value="MBNF_GENERATION_PROFILE" />
                </node>
                <node concept="Xl_RD" id="694jTX_4RQZ" role="37wK5m">
                  <property role="Xl_RC" value="Profile belongs to another grammar" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="694jTX_4RR2" role="3cqZAp">
          <node concept="3cpWsn" id="694jTX_4RR1" role="3cpWs9">
            <property role="TrG5h" value="inspection" />
            <node concept="3uibUv" id="694jTX_4RR3" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
              <node concept="3uibUv" id="694jTX_4RR4" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
              <node concept="3uibUv" id="694jTX_4RR5" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="694jTX_4RRn" role="3cqZAp">
          <node concept="3uVAMA" id="694jTX_4RRo" role="1zxBo5">
            <node concept="3clFbS" id="694jTX_4RRh" role="1zc67A">
              <node concept="YS8fn" id="694jTX_4RRm" role="3cqZAp">
                <node concept="1rXfSq" id="694jTX_4RRi" role="YScLw">
                  <ref role="37wK5l" node="7Q_67PUJ2xZ" resolve="failure" />
                  <node concept="Xl_RD" id="694jTX_4RRj" role="37wK5m">
                    <property role="Xl_RC" value="MBNF_PROFILE_CONFLICT" />
                  </node>
                  <node concept="2OqwBi" id="694jTX_4Scn" role="37wK5m">
                    <node concept="2OqwBi" id="694jTX_4S4c" role="2Oq$k0">
                      <node concept="37vLTw" id="694jTX_4RYn" role="2Oq$k0">
                        <ref role="3cqZAo" node="694jTX_4RRd" resolve="invalid" />
                      </node>
                      <node concept="liA8E" id="694jTX_4S4d" role="2OqNvi">
                        <ref role="37wK5l" to="9toz:~UsabilityException.getDiagnostic()" resolve="getDiagnostic" />
                      </node>
                    </node>
                    <node concept="liA8E" id="694jTX_4Sco" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="XOnhg" id="694jTX_4RRd" role="1zc67B">
              <property role="TrG5h" value="invalid" />
              <node concept="nSUau" id="694jTX_4RRf" role="1tU5fm">
                <node concept="3uibUv" id="694jTX_4RRe" role="nSUat">
                  <ref role="3uigEE" to="9toz:~UsabilityException" resolve="UsabilityException" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="694jTX_4RR7" role="1zxBo7">
            <node concept="3clFbF" id="694jTX_4RR8" role="3cqZAp">
              <node concept="37vLTI" id="694jTX_4RR9" role="3clFbG">
                <node concept="37vLTw" id="694jTX_4RRa" role="37vLTJ">
                  <ref role="3cqZAo" node="694jTX_4RR1" resolve="inspection" />
                </node>
                <node concept="2YIFZM" id="694jTX_4RZ4" role="37vLTx">
                  <ref role="1Pybhc" to="9toz:~GenerationProfiles" resolve="GenerationProfiles" />
                  <ref role="37wK5l" to="9toz:~GenerationProfiles.inspect(org.jetbrains.mps.openapi.model.SNode)" resolve="inspect" />
                  <node concept="37vLTw" id="694jTX_4RZ5" role="37wK5m">
                    <ref role="3cqZAo" node="7Q_67PUJ2aS" resolve="profile" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="694jTX_4RRq" role="3cqZAp">
          <node concept="3cpWsn" id="694jTX_4RRp" role="3cpWs9">
            <property role="TrG5h" value="diagnostics" />
            <node concept="3uibUv" id="694jTX_4RRr" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            </node>
            <node concept="2OqwBi" id="694jTX_4S7W" role="33vP2m">
              <node concept="37vLTw" id="694jTX_4RZL" role="2Oq$k0">
                <ref role="3cqZAo" node="694jTX_4RR1" resolve="inspection" />
              </node>
              <node concept="liA8E" id="694jTX_4S7X" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
                <node concept="Xl_RD" id="694jTX_4S7Y" role="37wK5m">
                  <property role="Xl_RC" value="diagnostics" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="694jTX_4RRu" role="3cqZAp">
          <node concept="22lmx$" id="694jTX_4RRv" role="3clFbw">
            <node concept="3fqX7Q" id="694jTX_4RRw" role="3uHU7B">
              <node concept="1eOMI4" id="694jTX_4RR$" role="3fr31v">
                <node concept="2ZW3vV" id="694jTX_4RRz" role="1eOMHV">
                  <node concept="37vLTw" id="694jTX_4RRx" role="2ZW6bz">
                    <ref role="3cqZAo" node="694jTX_4RRp" resolve="diagnostics" />
                  </node>
                  <node concept="3uibUv" id="694jTX_4RRy" role="2ZW6by">
                    <ref role="3uigEE" to="33ny:~List" resolve="List" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3fqX7Q" id="694jTX_4RR_" role="3uHU7w">
              <node concept="2OqwBi" id="694jTX_4S2n" role="3fr31v">
                <node concept="1eOMI4" id="694jTX_4RRF" role="2Oq$k0">
                  <node concept="10QFUN" id="694jTX_4RRB" role="1eOMHV">
                    <node concept="37vLTw" id="694jTX_4RRC" role="10QFUP">
                      <ref role="3cqZAo" node="694jTX_4RRp" resolve="diagnostics" />
                    </node>
                    <node concept="3uibUv" id="694jTX_4RRD" role="10QFUM">
                      <ref role="3uigEE" to="33ny:~List" resolve="List" />
                      <node concept="3qTvmN" id="694jTX_4RRE" role="11_B2D" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="694jTX_4S2o" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.isEmpty()" resolve="isEmpty" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="694jTX_4RRH" role="3clFbx">
            <node concept="YS8fn" id="694jTX_4RRM" role="3cqZAp">
              <node concept="1rXfSq" id="694jTX_4RRI" role="YScLw">
                <ref role="37wK5l" node="7Q_67PUJ2xZ" resolve="failure" />
                <node concept="Xl_RD" id="694jTX_4RRJ" role="37wK5m">
                  <property role="Xl_RC" value="MBNF_PROFILE_CONFLICT" />
                </node>
                <node concept="2YIFZM" id="694jTX_4S34" role="37wK5m">
                  <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                  <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object)" resolve="valueOf" />
                  <node concept="37vLTw" id="694jTX_4S35" role="37wK5m">
                    <ref role="3cqZAo" node="694jTX_4RRp" resolve="diagnostics" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="694jTX_4RRN" role="3cqZAp">
          <node concept="1rXfSq" id="694jTX_4RRO" role="3cqZAk">
            <ref role="37wK5l" node="694jTX$ZyXq" resolve="fingerprint" />
            <node concept="2YIFZM" id="694jTX_4S3L" role="37wK5m">
              <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
              <ref role="37wK5l" to="33ny:~Arrays.asList(java.lang.Object...)" resolve="asList" />
              <node concept="37vLTw" id="694jTX_4S3M" role="37wK5m">
                <ref role="3cqZAo" node="694jTX_4RR1" resolve="inspection" />
              </node>
              <node concept="1rXfSq" id="694jTX_4S3N" role="37wK5m">
                <ref role="37wK5l" node="7Q_67PUJ2c0" resolve="snapshot" />
                <node concept="37vLTw" id="694jTX_4S3O" role="37wK5m">
                  <ref role="3cqZAo" node="7Q_67PUJ2aS" resolve="profile" />
                </node>
                <node concept="3clFbT" id="694jTX_4S3P" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="7Q_67PUJ2bx" role="jymVt">
      <property role="TrG5h" value="toolchain" />
      <node concept="3clFbS" id="7Q_67PUJ2by" role="3clF47">
        <node concept="3cpWs8" id="7Q_67PUJ2b$" role="3cqZAp">
          <node concept="3cpWsn" id="7Q_67PUJ2bz" role="3cpWs9">
            <property role="TrG5h" value="actual" />
            <node concept="3uibUv" id="7Q_67PUJ2b_" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
            <node concept="2OqwBi" id="7Q_67PUJ8rx" role="33vP2m">
              <node concept="2OqwBi" id="7Q_67PUJ6vc" role="2Oq$k0">
                <node concept="2YIFZM" id="7Q_67PUJ33X" role="2Oq$k0">
                  <ref role="1Pybhc" to="bd8o:~ApplicationInfo" resolve="ApplicationInfo" />
                  <ref role="37wK5l" to="bd8o:~ApplicationInfo.getInstance()" resolve="getInstance" />
                </node>
                <node concept="liA8E" id="7Q_67PUJ6vd" role="2OqNvi">
                  <ref role="37wK5l" to="bd8o:~ApplicationInfo.getBuild()" resolve="getBuild" />
                </node>
              </node>
              <node concept="liA8E" id="7Q_67PUJ8ry" role="2OqNvi">
                <ref role="37wK5l" to="zn9m:~BuildNumber.asStringWithoutProductCode()" resolve="asStringWithoutProductCode" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7Q_67PUJ2bD" role="3cqZAp">
          <node concept="3fqX7Q" id="7Q_67PUJ2bE" role="3clFbw">
            <node concept="2OqwBi" id="7Q_67PUJ6vu" role="3fr31v">
              <node concept="10M0yZ" id="7Q_67PUJ340" role="2Oq$k0">
                <ref role="1PxDUh" to="9toz:~GenerationProfiles" resolve="GenerationProfiles" />
                <ref role="3cqZAo" to="9toz:~GenerationProfiles.MPS_BUILD" resolve="MPS_BUILD" />
              </node>
              <node concept="liA8E" id="7Q_67PUJ6vv" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                <node concept="37vLTw" id="7Q_67PUJ6vw" role="37wK5m">
                  <ref role="3cqZAo" node="7Q_67PUJ2bz" resolve="actual" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="7Q_67PUJ2bI" role="3clFbx">
            <node concept="YS8fn" id="7Q_67PUJ2bM" role="3cqZAp">
              <node concept="1rXfSq" id="7Q_67PUJ2bJ" role="YScLw">
                <ref role="37wK5l" node="7Q_67PUJ2xZ" resolve="failure" />
                <node concept="Xl_RD" id="7Q_67PUJ2bK" role="37wK5m">
                  <property role="Xl_RC" value="MBNF_UNSUPPORTED_TOOLCHAIN" />
                </node>
                <node concept="37vLTw" id="7Q_67PUJ2bL" role="37wK5m">
                  <ref role="3cqZAo" node="7Q_67PUJ2bz" resolve="actual" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7Q_67PUJ2bN" role="3cqZAp">
          <node concept="3cpWs3" id="7Q_67PUJ2bO" role="3cqZAk">
            <node concept="3cpWs3" id="7Q_67PUJ2bP" role="3uHU7B">
              <node concept="3cpWs3" id="7Q_67PUJ2bQ" role="3uHU7B">
                <node concept="3cpWs3" id="7Q_67PUJ2bR" role="3uHU7B">
                  <node concept="10M0yZ" id="7Q_67PUJ345" role="3uHU7B">
                    <ref role="1PxDUh" to="9toz:~GenerationProfiles" resolve="GenerationProfiles" />
                    <ref role="3cqZAo" to="9toz:~GenerationProfiles.MPS_BUILD" resolve="MPS_BUILD" />
                  </node>
                  <node concept="Xl_RD" id="7Q_67PUJ2bT" role="3uHU7w">
                    <property role="Xl_RC" value="|" />
                  </node>
                </node>
                <node concept="37vLTw" id="7Q_67PUJ2bU" role="3uHU7w">
                  <ref role="3cqZAo" node="7Q_67PUJ1Sx" resolve="GENERATOR" />
                </node>
              </node>
              <node concept="Xl_RD" id="7Q_67PUJ2bV" role="3uHU7w">
                <property role="Xl_RC" value="|" />
              </node>
            </node>
            <node concept="2YIFZM" id="7Q_67PUJ348" role="3uHU7w">
              <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
              <ref role="37wK5l" to="wyt6:~System.getProperty(java.lang.String)" resolve="getProperty" />
              <node concept="Xl_RD" id="7Q_67PUJ349" role="37wK5m">
                <property role="Xl_RC" value="java.runtime.version" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="7Q_67PUJ2bY" role="1B3o_S" />
      <node concept="3uibUv" id="7Q_67PUJ2bZ" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="2YIFZL" id="7Q_67PUJ2c0" role="jymVt">
      <property role="TrG5h" value="snapshot" />
      <node concept="37vLTG" id="7Q_67PUJ2c1" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="7Q_67PUJ9ZQ" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7Q_67PUJ2c3" role="3clF46">
        <property role="TrG5h" value="semantic" />
        <node concept="10P_77" id="7Q_67PUJ2c4" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="7Q_67PUJ2c5" role="3clF47">
        <node concept="3cpWs8" id="7Q_67PUJ2c7" role="3cqZAp">
          <node concept="3cpWsn" id="7Q_67PUJ2c6" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="3uibUv" id="7Q_67PUJ2c8" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~StringBuilder" resolve="StringBuilder" />
            </node>
            <node concept="2ShNRf" id="7Q_67PUJ34a" role="33vP2m">
              <node concept="1pGfFk" id="7Q_67PUJ34f" role="2ShVmc">
                <ref role="37wK5l" to="wyt6:~StringBuilder.&lt;init&gt;()" resolve="StringBuilder" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7Q_67PUJ2ca" role="3cqZAp">
          <node concept="1rXfSq" id="7Q_67PUJ2cb" role="3clFbG">
            <ref role="37wK5l" node="7Q_67PUJ2fo" resolve="append" />
            <node concept="37vLTw" id="7Q_67PUJ2cc" role="37wK5m">
              <ref role="3cqZAo" node="7Q_67PUJ2c1" resolve="node" />
            </node>
            <node concept="37vLTw" id="7Q_67PUJ2cd" role="37wK5m">
              <ref role="3cqZAo" node="7Q_67PUJ2c3" resolve="semantic" />
            </node>
            <node concept="37vLTw" id="7Q_67PUJ2ce" role="37wK5m">
              <ref role="3cqZAo" node="7Q_67PUJ2c6" resolve="result" />
            </node>
            <node concept="2YIFZM" id="7Q_67PUJ34i" role="37wK5m">
              <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
              <ref role="37wK5l" to="33ny:~Collections.emptyMap()" resolve="emptyMap" />
              <node concept="3Tqbb2" id="7Q_67PUJ9ZR" role="3PaCim" />
              <node concept="3uibUv" id="7Q_67PUJ34k" role="3PaCim">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
            </node>
            <node concept="Xl_RD" id="7Q_67PUJ2ci" role="37wK5m">
              <property role="Xl_RC" value="" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7Q_67PUJ2cj" role="3cqZAp">
          <node concept="2OqwBi" id="7Q_67PUJ6vE" role="3cqZAk">
            <node concept="37vLTw" id="7Q_67PUJ34n" role="2Oq$k0">
              <ref role="3cqZAo" node="7Q_67PUJ2c6" resolve="result" />
            </node>
            <node concept="liA8E" id="7Q_67PUJ6vF" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.toString()" resolve="toString" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7Q_67PUJ2cl" role="1B3o_S" />
      <node concept="3uibUv" id="7Q_67PUJ2cm" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="2YIFZL" id="7Q_67PUJ2cn" role="jymVt">
      <property role="TrG5h" value="conceptKey" />
      <node concept="37vLTG" id="7Q_67PUJ2co" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="7Q_67PUJ9ZS" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="7Q_67PUJ2cq" role="3clF47">
        <node concept="3cpWs6" id="7Q_67PUJ2cr" role="3cqZAp">
          <node concept="2OqwBi" id="7Q_67PUJ6vX" role="3cqZAk">
            <node concept="2YIFZM" id="7Q_67PUJ34z" role="2Oq$k0">
              <ref role="1Pybhc" to="e8bb:~MetaIdHelper" resolve="MetaIdHelper" />
              <ref role="37wK5l" to="e8bb:~MetaIdHelper.getConcept(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="getConcept" />
              <node concept="2OqwBi" id="7Q_67PUJ8Se" role="37wK5m">
                <node concept="liA8E" id="7Q_67PUJ8Sf" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                </node>
                <node concept="2JrnkZ" id="7Q_67PUJ9XB" role="2Oq$k0">
                  <node concept="37vLTw" id="7Q_67PUJ8r_" role="2JrQYb">
                    <ref role="3cqZAo" node="7Q_67PUJ2co" resolve="node" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="7Q_67PUJ6vY" role="2OqNvi">
              <ref role="37wK5l" to="e8bb:~SConceptId.toString()" resolve="toString" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="7Q_67PUJ2cv" role="1B3o_S" />
      <node concept="3uibUv" id="7Q_67PUJ2cw" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="2YIFZL" id="7Q_67PUJ2cx" role="jymVt">
      <property role="TrG5h" value="semanticSnapshot" />
      <node concept="37vLTG" id="7Q_67PUJ2cy" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="7Q_67PUJ9ZT" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7Q_67PUJ2c$" role="3clF46">
        <property role="TrG5h" value="candidates" />
        <node concept="3uibUv" id="7Q_67PUJ2c_" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="7Q_67PUJ2cA" role="11_B2D">
            <ref role="3uigEE" node="7Q_67PUJ1Rj" resolve="ProtectedRegeneration.Candidate" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="7Q_67PUJ2cB" role="3clF47">
        <node concept="3cpWs8" id="7Q_67PUJ2cD" role="3cqZAp">
          <node concept="3cpWsn" id="7Q_67PUJ2cC" role="3cpWs9">
            <property role="TrG5h" value="scope" />
            <node concept="3uibUv" id="7Q_67PUJ2cE" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
              <node concept="3Tqbb2" id="7Q_67PUJ9ZU" role="11_B2D" />
              <node concept="3uibUv" id="7Q_67PUJ2cG" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
            </node>
            <node concept="2ShNRf" id="7Q_67PUJ34_" role="33vP2m">
              <node concept="1pGfFk" id="7Q_67PUJ34D" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="33ny:~LinkedHashMap.&lt;init&gt;()" resolve="LinkedHashMap" />
                <node concept="3Tqbb2" id="7Q_67PUJ9ZV" role="1pMfVU" />
                <node concept="3uibUv" id="7Q_67PUJ34F" role="1pMfVU">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="7Q_67PUJ2cK" role="3cqZAp">
          <node concept="37vLTw" id="7Q_67PUJ2dt" role="1DdaDG">
            <ref role="3cqZAo" node="7Q_67PUJ2c$" resolve="candidates" />
          </node>
          <node concept="3cpWsn" id="7Q_67PUJ2dq" role="1Duv9x">
            <property role="TrG5h" value="candidate" />
            <node concept="3uibUv" id="7Q_67PUJ2ds" role="1tU5fm">
              <ref role="3uigEE" node="7Q_67PUJ1Rj" resolve="ProtectedRegeneration.Candidate" />
            </node>
          </node>
          <node concept="3clFbS" id="7Q_67PUJ2cM" role="2LFqv$">
            <node concept="1DcWWT" id="7Q_67PUJ2cN" role="3cqZAp">
              <node concept="2OqwBi" id="7Q_67PUJ6wm" role="1DdaDG">
                <node concept="liA8E" id="7Q_67PUJ6wn" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SModel.getRootNodes()" resolve="getRootNodes" />
                </node>
                <node concept="2JrnkZ" id="7Q_67PUJ9XC" role="2Oq$k0">
                  <node concept="2OqwBi" id="7Q_67PUJ34J" role="2JrQYb">
                    <node concept="37vLTw" id="7Q_67PUJ34I" role="2Oq$k0">
                      <ref role="3cqZAo" node="7Q_67PUJ2dq" resolve="candidate" />
                    </node>
                    <node concept="2OwXpG" id="7Q_67PUJ34K" role="2OqNvi">
                      <ref role="2Oxat5" node="7Q_67PUJ1Rp" resolve="target" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWsn" id="7Q_67PUJ2db" role="1Duv9x">
                <property role="TrG5h" value="root" />
                <node concept="3Tqbb2" id="7Q_67PUJ9ZW" role="1tU5fm" />
              </node>
              <node concept="3clFbS" id="7Q_67PUJ2cP" role="2LFqv$">
                <node concept="3cpWs8" id="7Q_67PUJ2cR" role="3cqZAp">
                  <node concept="3cpWsn" id="7Q_67PUJ2cQ" role="3cpWs9">
                    <property role="TrG5h" value="key" />
                    <node concept="3uibUv" id="7Q_67PUJ2cS" role="1tU5fm">
                      <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                    </node>
                    <node concept="1rXfSq" id="7Q_67PUJ2cT" role="33vP2m">
                      <ref role="37wK5l" node="7Q_67PUJ2iU" resolve="legacyKey" />
                      <node concept="37vLTw" id="7Q_67PUJ2cU" role="37wK5m">
                        <ref role="3cqZAo" node="7Q_67PUJ2db" resolve="root" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="7Q_67PUJ2cV" role="3cqZAp">
                  <node concept="3y3z36" id="7Q_67PUJ2cW" role="3clFbw">
                    <node concept="37vLTw" id="7Q_67PUJ2cX" role="3uHU7B">
                      <ref role="3cqZAo" node="7Q_67PUJ2cQ" resolve="key" />
                    </node>
                    <node concept="10Nm6u" id="7Q_67PUJ2cY" role="3uHU7w" />
                  </node>
                  <node concept="3clFbS" id="7Q_67PUJ2d0" role="3clFbx">
                    <node concept="3clFbF" id="7Q_67PUJ2d1" role="3cqZAp">
                      <node concept="1rXfSq" id="7Q_67PUJ2d2" role="3clFbG">
                        <ref role="37wK5l" node="7Q_67PUJ2e7" resolve="scope" />
                        <node concept="37vLTw" id="7Q_67PUJ2d3" role="37wK5m">
                          <ref role="3cqZAo" node="7Q_67PUJ2db" resolve="root" />
                        </node>
                        <node concept="3cpWs3" id="7Q_67PUJ2d4" role="37wK5m">
                          <node concept="3cpWs3" id="7Q_67PUJ2d5" role="3uHU7B">
                            <node concept="2OqwBi" id="7Q_67PUJ8s6" role="3uHU7B">
                              <node concept="2OqwBi" id="7Q_67PUJ6wR" role="2Oq$k0">
                                <node concept="liA8E" id="7Q_67PUJ6wS" role="2OqNvi">
                                  <ref role="37wK5l" to="mhbf:~SModel.getReference()" resolve="getReference" />
                                </node>
                                <node concept="2JrnkZ" id="7Q_67PUJ9XD" role="2Oq$k0">
                                  <node concept="2OqwBi" id="7Q_67PUJ34X" role="2JrQYb">
                                    <node concept="37vLTw" id="7Q_67PUJ34W" role="2Oq$k0">
                                      <ref role="3cqZAo" node="7Q_67PUJ2dq" resolve="candidate" />
                                    </node>
                                    <node concept="2OwXpG" id="7Q_67PUJ34Y" role="2OqNvi">
                                      <ref role="2Oxat5" node="7Q_67PUJ1Rp" resolve="target" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="liA8E" id="7Q_67PUJ8s7" role="2OqNvi">
                                <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                              </node>
                            </node>
                            <node concept="Xl_RD" id="7Q_67PUJ2d8" role="3uHU7w">
                              <property role="Xl_RC" value="|" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="7Q_67PUJ2d9" role="3uHU7w">
                            <ref role="3cqZAo" node="7Q_67PUJ2cQ" resolve="key" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="7Q_67PUJ2da" role="37wK5m">
                          <ref role="3cqZAo" node="7Q_67PUJ2cC" resolve="scope" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7Q_67PUJ2df" role="3cqZAp">
              <node concept="1rXfSq" id="7Q_67PUJ2dg" role="3clFbG">
                <ref role="37wK5l" node="7Q_67PUJ2e7" resolve="scope" />
                <node concept="2OqwBi" id="7Q_67PUJ353" role="37wK5m">
                  <node concept="37vLTw" id="7Q_67PUJ352" role="2Oq$k0">
                    <ref role="3cqZAo" node="7Q_67PUJ2dq" resolve="candidate" />
                  </node>
                  <node concept="2OwXpG" id="7Q_67PUJ354" role="2OqNvi">
                    <ref role="2Oxat5" node="7Q_67PUJ1Rl" resolve="generated" />
                  </node>
                </node>
                <node concept="3cpWs3" id="7Q_67PUJ2di" role="37wK5m">
                  <node concept="3cpWs3" id="7Q_67PUJ2dj" role="3uHU7B">
                    <node concept="2OqwBi" id="7Q_67PUJ8sB" role="3uHU7B">
                      <node concept="2OqwBi" id="7Q_67PUJ6xo" role="2Oq$k0">
                        <node concept="liA8E" id="7Q_67PUJ6xp" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SModel.getReference()" resolve="getReference" />
                        </node>
                        <node concept="2JrnkZ" id="7Q_67PUJ9XE" role="2Oq$k0">
                          <node concept="2OqwBi" id="7Q_67PUJ35g" role="2JrQYb">
                            <node concept="37vLTw" id="7Q_67PUJ35f" role="2Oq$k0">
                              <ref role="3cqZAo" node="7Q_67PUJ2dq" resolve="candidate" />
                            </node>
                            <node concept="2OwXpG" id="7Q_67PUJ35h" role="2OqNvi">
                              <ref role="2Oxat5" node="7Q_67PUJ1Rp" resolve="target" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="7Q_67PUJ8sC" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                      </node>
                    </node>
                    <node concept="Xl_RD" id="7Q_67PUJ2dm" role="3uHU7w">
                      <property role="Xl_RC" value="|" />
                    </node>
                  </node>
                  <node concept="1rXfSq" id="7Q_67PUJ2dn" role="3uHU7w">
                    <ref role="37wK5l" node="7Q_67PUJ2iU" resolve="legacyKey" />
                    <node concept="2OqwBi" id="7Q_67PUJ35m" role="37wK5m">
                      <node concept="37vLTw" id="7Q_67PUJ35l" role="2Oq$k0">
                        <ref role="3cqZAo" node="7Q_67PUJ2dq" resolve="candidate" />
                      </node>
                      <node concept="2OwXpG" id="7Q_67PUJ35n" role="2OqNvi">
                        <ref role="2Oxat5" node="7Q_67PUJ1Rl" resolve="generated" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="7Q_67PUJ2dp" role="37wK5m">
                  <ref role="3cqZAo" node="7Q_67PUJ2cC" resolve="scope" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7Q_67PUJ2dv" role="3cqZAp">
          <node concept="3cpWsn" id="7Q_67PUJ2du" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="3uibUv" id="7Q_67PUJ2dw" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~StringBuilder" resolve="StringBuilder" />
            </node>
            <node concept="2ShNRf" id="7Q_67PUJ35o" role="33vP2m">
              <node concept="1pGfFk" id="7Q_67PUJ35t" role="2ShVmc">
                <ref role="37wK5l" to="wyt6:~StringBuilder.&lt;init&gt;()" resolve="StringBuilder" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7Q_67PUJ2dz" role="3cqZAp">
          <node concept="3cpWsn" id="7Q_67PUJ2dy" role="3cpWs9">
            <property role="TrG5h" value="namespace" />
            <node concept="3uibUv" id="7Q_67PUJ2d$" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
            <node concept="Xl_RD" id="7Q_67PUJ2d_" role="33vP2m">
              <property role="Xl_RC" value="" />
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="7Q_67PUJ2dA" role="3cqZAp">
          <node concept="37vLTw" id="7Q_67PUJ2dV" role="1DdaDG">
            <ref role="3cqZAo" node="7Q_67PUJ2c$" resolve="candidates" />
          </node>
          <node concept="3cpWsn" id="7Q_67PUJ2dS" role="1Duv9x">
            <property role="TrG5h" value="candidate" />
            <node concept="3uibUv" id="7Q_67PUJ2dU" role="1tU5fm">
              <ref role="3uigEE" node="7Q_67PUJ1Rj" resolve="ProtectedRegeneration.Candidate" />
            </node>
          </node>
          <node concept="3clFbS" id="7Q_67PUJ2dC" role="2LFqv$">
            <node concept="3clFbJ" id="7Q_67PUJ2dD" role="3cqZAp">
              <node concept="22lmx$" id="7Q_67PUJ2dE" role="3clFbw">
                <node concept="3clFbC" id="7Q_67PUJ2dF" role="3uHU7B">
                  <node concept="2OqwBi" id="7Q_67PUJ6xz" role="3uHU7B">
                    <node concept="liA8E" id="7Q_67PUJ6x$" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.getContainingRoot()" resolve="getContainingRoot" />
                    </node>
                    <node concept="2JrnkZ" id="7Q_67PUJ9XF" role="2Oq$k0">
                      <node concept="37vLTw" id="7Q_67PUJ35w" role="2JrQYb">
                        <ref role="3cqZAo" node="7Q_67PUJ2cy" resolve="node" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="7Q_67PUJ35_" role="3uHU7w">
                    <node concept="37vLTw" id="7Q_67PUJ35$" role="2Oq$k0">
                      <ref role="3cqZAo" node="7Q_67PUJ2dS" resolve="candidate" />
                    </node>
                    <node concept="2OwXpG" id="7Q_67PUJ35A" role="2OqNvi">
                      <ref role="2Oxat5" node="7Q_67PUJ1Rl" resolve="generated" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="7Q_67PUJ2dI" role="3uHU7w">
                  <node concept="2OqwBi" id="7Q_67PUJ6xI" role="3uHU7B">
                    <node concept="liA8E" id="7Q_67PUJ6xJ" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.getModel()" resolve="getModel" />
                    </node>
                    <node concept="2JrnkZ" id="7Q_67PUJ9XG" role="2Oq$k0">
                      <node concept="37vLTw" id="7Q_67PUJ35D" role="2JrQYb">
                        <ref role="3cqZAo" node="7Q_67PUJ2cy" resolve="node" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="7Q_67PUJ35I" role="3uHU7w">
                    <node concept="37vLTw" id="7Q_67PUJ35H" role="2Oq$k0">
                      <ref role="3cqZAo" node="7Q_67PUJ2dS" resolve="candidate" />
                    </node>
                    <node concept="2OwXpG" id="7Q_67PUJ35J" role="2OqNvi">
                      <ref role="2Oxat5" node="7Q_67PUJ1Rp" resolve="target" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="7Q_67PUJ2dM" role="3clFbx">
                <node concept="3clFbF" id="7Q_67PUJ2dN" role="3cqZAp">
                  <node concept="37vLTI" id="7Q_67PUJ2dO" role="3clFbG">
                    <node concept="37vLTw" id="7Q_67PUJ2dP" role="37vLTJ">
                      <ref role="3cqZAo" node="7Q_67PUJ2dy" resolve="namespace" />
                    </node>
                    <node concept="2OqwBi" id="7Q_67PUJ8t6" role="37vLTx">
                      <node concept="2OqwBi" id="7Q_67PUJ6yf" role="2Oq$k0">
                        <node concept="liA8E" id="7Q_67PUJ6yg" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SModel.getName()" resolve="getName" />
                        </node>
                        <node concept="2JrnkZ" id="7Q_67PUJ9XH" role="2Oq$k0">
                          <node concept="2OqwBi" id="7Q_67PUJ35V" role="2JrQYb">
                            <node concept="37vLTw" id="7Q_67PUJ35U" role="2Oq$k0">
                              <ref role="3cqZAo" node="7Q_67PUJ2dS" resolve="candidate" />
                            </node>
                            <node concept="2OwXpG" id="7Q_67PUJ35W" role="2OqNvi">
                              <ref role="2Oxat5" node="7Q_67PUJ1Rp" resolve="target" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="7Q_67PUJ8t7" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SModelName.getValue()" resolve="getValue" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7Q_67PUJ2dW" role="3cqZAp">
          <node concept="1rXfSq" id="7Q_67PUJ2dX" role="3clFbG">
            <ref role="37wK5l" node="7Q_67PUJ2fo" resolve="append" />
            <node concept="37vLTw" id="7Q_67PUJ2dY" role="37wK5m">
              <ref role="3cqZAo" node="7Q_67PUJ2cy" resolve="node" />
            </node>
            <node concept="3clFbT" id="7Q_67PUJ2dZ" role="37wK5m">
              <property role="3clFbU" value="true" />
            </node>
            <node concept="37vLTw" id="7Q_67PUJ2e0" role="37wK5m">
              <ref role="3cqZAo" node="7Q_67PUJ2du" resolve="result" />
            </node>
            <node concept="37vLTw" id="7Q_67PUJ2e1" role="37wK5m">
              <ref role="3cqZAo" node="7Q_67PUJ2cC" resolve="scope" />
            </node>
            <node concept="37vLTw" id="7Q_67PUJ2e2" role="37wK5m">
              <ref role="3cqZAo" node="7Q_67PUJ2dy" resolve="namespace" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7Q_67PUJ2e3" role="3cqZAp">
          <node concept="2OqwBi" id="7Q_67PUJ6yq" role="3cqZAk">
            <node concept="37vLTw" id="7Q_67PUJ360" role="2Oq$k0">
              <ref role="3cqZAo" node="7Q_67PUJ2du" resolve="result" />
            </node>
            <node concept="liA8E" id="7Q_67PUJ6yr" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.toString()" resolve="toString" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="7Q_67PUJ2e5" role="1B3o_S" />
      <node concept="3uibUv" id="7Q_67PUJ2e6" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="2YIFZL" id="7Q_67PUJ2e7" role="jymVt">
      <property role="TrG5h" value="scope" />
      <node concept="37vLTG" id="7Q_67PUJ2e8" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="7Q_67PUJ9ZX" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7Q_67PUJ2ea" role="3clF46">
        <property role="TrG5h" value="path" />
        <node concept="3uibUv" id="7Q_67PUJ2eb" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="37vLTG" id="7Q_67PUJ2ec" role="3clF46">
        <property role="TrG5h" value="scope" />
        <node concept="3uibUv" id="7Q_67PUJ2ed" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
          <node concept="3Tqbb2" id="7Q_67PUJ9ZY" role="11_B2D" />
          <node concept="3uibUv" id="7Q_67PUJ2ef" role="11_B2D">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="7Q_67PUJ2eg" role="3clF47">
        <node concept="3clFbF" id="7Q_67PUJ2eh" role="3cqZAp">
          <node concept="2OqwBi" id="7Q_67PUJ6Aa" role="3clFbG">
            <node concept="37vLTw" id="7Q_67PUJ364" role="2Oq$k0">
              <ref role="3cqZAo" node="7Q_67PUJ2ec" resolve="scope" />
            </node>
            <node concept="liA8E" id="7Q_67PUJ6Ab" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
              <node concept="37vLTw" id="7Q_67PUJ6Ac" role="37wK5m">
                <ref role="3cqZAo" node="7Q_67PUJ2e8" resolve="node" />
              </node>
              <node concept="37vLTw" id="7Q_67PUJ6Ad" role="37wK5m">
                <ref role="3cqZAo" node="7Q_67PUJ2ea" resolve="path" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7Q_67PUJ2em" role="3cqZAp">
          <node concept="3cpWsn" id="7Q_67PUJ2el" role="3cpWs9">
            <property role="TrG5h" value="offsets" />
            <node concept="3uibUv" id="7Q_67PUJ2en" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
              <node concept="3uibUv" id="7Q_67PUJ2eo" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
              <node concept="3uibUv" id="7Q_67PUJ2ep" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
              </node>
            </node>
            <node concept="2ShNRf" id="7Q_67PUJ368" role="33vP2m">
              <node concept="1pGfFk" id="7Q_67PUJ36c" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="33ny:~LinkedHashMap.&lt;init&gt;()" resolve="LinkedHashMap" />
                <node concept="3uibUv" id="7Q_67PUJ36d" role="1pMfVU">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
                <node concept="3uibUv" id="7Q_67PUJ36e" role="1pMfVU">
                  <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="7Q_67PUJ2et" role="3cqZAp">
          <node concept="2OqwBi" id="7Q_67PUJ6An" role="1DdaDG">
            <node concept="liA8E" id="7Q_67PUJ6Ao" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNode.getChildren()" resolve="getChildren" />
            </node>
            <node concept="2JrnkZ" id="7Q_67PUJ9XI" role="2Oq$k0">
              <node concept="37vLTw" id="7Q_67PUJ36h" role="2JrQYb">
                <ref role="3cqZAo" node="7Q_67PUJ2e8" resolve="node" />
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="7Q_67PUJ2fi" role="1Duv9x">
            <property role="TrG5h" value="child" />
            <node concept="3Tqbb2" id="7Q_67PUJ9ZZ" role="1tU5fm" />
          </node>
          <node concept="3clFbS" id="7Q_67PUJ2ev" role="2LFqv$">
            <node concept="3cpWs8" id="7Q_67PUJ2ex" role="3cqZAp">
              <node concept="3cpWsn" id="7Q_67PUJ2ew" role="3cpWs9">
                <property role="TrG5h" value="role" />
                <node concept="3uibUv" id="7Q_67PUJ2ey" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
                <node concept="2OqwBi" id="7Q_67PUJ36$" role="33vP2m">
                  <node concept="1rXfSq" id="7Q_67PUJ2e$" role="2Oq$k0">
                    <ref role="37wK5l" node="7Q_67PUJ2k4" resolve="containment" />
                    <node concept="37vLTw" id="7Q_67PUJ2e_" role="37wK5m">
                      <ref role="3cqZAo" node="7Q_67PUJ2fi" resolve="child" />
                    </node>
                  </node>
                  <node concept="liA8E" id="7Q_67PUJ36_" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="7Q_67PUJ2eB" role="3cqZAp">
              <node concept="3cpWsn" id="7Q_67PUJ2eA" role="3cpWs9">
                <property role="TrG5h" value="index" />
                <node concept="10Oyi0" id="7Q_67PUJ2eC" role="1tU5fm" />
                <node concept="3K4zz7" id="7Q_67PUJ2eI" role="33vP2m">
                  <node concept="2OqwBi" id="7Q_67PUJ6E8" role="3K4Cdx">
                    <node concept="37vLTw" id="7Q_67PUJ36C" role="2Oq$k0">
                      <ref role="3cqZAo" node="7Q_67PUJ2el" resolve="offsets" />
                    </node>
                    <node concept="liA8E" id="7Q_67PUJ6E9" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~Map.containsKey(java.lang.Object)" resolve="containsKey" />
                      <node concept="37vLTw" id="7Q_67PUJ6Ea" role="37wK5m">
                        <ref role="3cqZAo" node="7Q_67PUJ2ew" resolve="role" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="7Q_67PUJ6HU" role="3K4E3e">
                    <node concept="37vLTw" id="7Q_67PUJ36H" role="2Oq$k0">
                      <ref role="3cqZAo" node="7Q_67PUJ2el" resolve="offsets" />
                    </node>
                    <node concept="liA8E" id="7Q_67PUJ6HV" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
                      <node concept="37vLTw" id="7Q_67PUJ6HW" role="37wK5m">
                        <ref role="3cqZAo" node="7Q_67PUJ2ew" resolve="role" />
                      </node>
                    </node>
                  </node>
                  <node concept="3cmrfG" id="7Q_67PUJ2eH" role="3K4GZi">
                    <property role="3cmrfH" value="0" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7Q_67PUJ2eJ" role="3cqZAp">
              <node concept="2OqwBi" id="7Q_67PUJ6LG" role="3clFbG">
                <node concept="37vLTw" id="7Q_67PUJ36M" role="2Oq$k0">
                  <ref role="3cqZAo" node="7Q_67PUJ2el" resolve="offsets" />
                </node>
                <node concept="liA8E" id="7Q_67PUJ6LH" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
                  <node concept="37vLTw" id="7Q_67PUJ6LI" role="37wK5m">
                    <ref role="3cqZAo" node="7Q_67PUJ2ew" resolve="role" />
                  </node>
                  <node concept="3cpWs3" id="7Q_67PUJ6LJ" role="37wK5m">
                    <node concept="37vLTw" id="7Q_67PUJ6LK" role="3uHU7B">
                      <ref role="3cqZAo" node="7Q_67PUJ2eA" resolve="index" />
                    </node>
                    <node concept="3cmrfG" id="7Q_67PUJ6LL" role="3uHU7w">
                      <property role="3cmrfH" value="1" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="7Q_67PUJ2eQ" role="3cqZAp">
              <node concept="3cpWsn" id="7Q_67PUJ2eP" role="3cpWs9">
                <property role="TrG5h" value="name" />
                <node concept="3uibUv" id="7Q_67PUJ2eR" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
                <node concept="2OqwBi" id="7Q_67PUJ6LV" role="33vP2m">
                  <node concept="liA8E" id="7Q_67PUJ6LW" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SNode.getName()" resolve="getName" />
                  </node>
                  <node concept="2JrnkZ" id="7Q_67PUJ9XJ" role="2Oq$k0">
                    <node concept="37vLTw" id="7Q_67PUJ36U" role="2JrQYb">
                      <ref role="3cqZAo" node="7Q_67PUJ2fi" resolve="child" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7Q_67PUJ2eT" role="3cqZAp">
              <node concept="1rXfSq" id="7Q_67PUJ2eU" role="3clFbG">
                <ref role="37wK5l" node="7Q_67PUJ2e7" resolve="scope" />
                <node concept="37vLTw" id="7Q_67PUJ2eV" role="37wK5m">
                  <ref role="3cqZAo" node="7Q_67PUJ2fi" resolve="child" />
                </node>
                <node concept="3cpWs3" id="7Q_67PUJ2eW" role="37wK5m">
                  <node concept="3cpWs3" id="7Q_67PUJ2eX" role="3uHU7B">
                    <node concept="3cpWs3" id="7Q_67PUJ2eY" role="3uHU7B">
                      <node concept="3cpWs3" id="7Q_67PUJ2eZ" role="3uHU7B">
                        <node concept="3cpWs3" id="7Q_67PUJ2f0" role="3uHU7B">
                          <node concept="3cpWs3" id="7Q_67PUJ2f1" role="3uHU7B">
                            <node concept="37vLTw" id="7Q_67PUJ2f2" role="3uHU7B">
                              <ref role="3cqZAo" node="7Q_67PUJ2ea" resolve="path" />
                            </node>
                            <node concept="Xl_RD" id="7Q_67PUJ2f3" role="3uHU7w">
                              <property role="Xl_RC" value="/" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="7Q_67PUJ2f4" role="3uHU7w">
                            <ref role="3cqZAo" node="7Q_67PUJ2ew" resolve="role" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="7Q_67PUJ2f5" role="3uHU7w">
                          <property role="Xl_RC" value="/" />
                        </node>
                      </node>
                      <node concept="1rXfSq" id="7Q_67PUJ2f6" role="3uHU7w">
                        <ref role="37wK5l" node="7Q_67PUJ2cn" resolve="conceptKey" />
                        <node concept="37vLTw" id="7Q_67PUJ2f7" role="37wK5m">
                          <ref role="3cqZAo" node="7Q_67PUJ2fi" resolve="child" />
                        </node>
                      </node>
                    </node>
                    <node concept="Xl_RD" id="7Q_67PUJ2f8" role="3uHU7w">
                      <property role="Xl_RC" value="/" />
                    </node>
                  </node>
                  <node concept="1eOMI4" id="7Q_67PUJ2fg" role="3uHU7w">
                    <node concept="3K4zz7" id="7Q_67PUJ2ff" role="1eOMHV">
                      <node concept="3clFbC" id="7Q_67PUJ2f9" role="3K4Cdx">
                        <node concept="37vLTw" id="7Q_67PUJ2fa" role="3uHU7B">
                          <ref role="3cqZAo" node="7Q_67PUJ2eP" resolve="name" />
                        </node>
                        <node concept="10Nm6u" id="7Q_67PUJ2fb" role="3uHU7w" />
                      </node>
                      <node concept="2YIFZM" id="7Q_67PUJ36Y" role="3K4E3e">
                        <ref role="1Pybhc" to="wyt6:~Integer" resolve="Integer" />
                        <ref role="37wK5l" to="wyt6:~Integer.toString(int)" resolve="toString" />
                        <node concept="37vLTw" id="7Q_67PUJ36Z" role="37wK5m">
                          <ref role="3cqZAo" node="7Q_67PUJ2eA" resolve="index" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="7Q_67PUJ2fe" role="3K4GZi">
                        <ref role="3cqZAo" node="7Q_67PUJ2eP" resolve="name" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="7Q_67PUJ2fh" role="37wK5m">
                  <ref role="3cqZAo" node="7Q_67PUJ2ec" resolve="scope" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="7Q_67PUJ2fm" role="1B3o_S" />
      <node concept="3cqZAl" id="7Q_67PUJ2fn" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="7Q_67PUJ2fo" role="jymVt">
      <property role="TrG5h" value="append" />
      <node concept="37vLTG" id="7Q_67PUJ2fp" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="7Q_67PUJa00" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7Q_67PUJ2fr" role="3clF46">
        <property role="TrG5h" value="semantic" />
        <node concept="10P_77" id="7Q_67PUJ2fs" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7Q_67PUJ2ft" role="3clF46">
        <property role="TrG5h" value="result" />
        <node concept="3uibUv" id="7Q_67PUJ2fu" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~StringBuilder" resolve="StringBuilder" />
        </node>
      </node>
      <node concept="37vLTG" id="7Q_67PUJ2fv" role="3clF46">
        <property role="TrG5h" value="scope" />
        <node concept="3uibUv" id="7Q_67PUJ2fw" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
          <node concept="3Tqbb2" id="7Q_67PUJa01" role="11_B2D" />
          <node concept="3uibUv" id="7Q_67PUJ2fy" role="11_B2D">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7Q_67PUJ2fz" role="3clF46">
        <property role="TrG5h" value="namespace" />
        <node concept="3uibUv" id="7Q_67PUJ2f$" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3clFbS" id="7Q_67PUJ2f_" role="3clF47">
        <node concept="3clFbF" id="7Q_67PUJ2fA" role="3cqZAp">
          <node concept="1rXfSq" id="7Q_67PUJ2fB" role="3clFbG">
            <ref role="37wK5l" node="7Q_67PUJ2x0" resolve="part" />
            <node concept="37vLTw" id="7Q_67PUJ2fC" role="37wK5m">
              <ref role="3cqZAo" node="7Q_67PUJ2ft" resolve="result" />
            </node>
            <node concept="1rXfSq" id="7Q_67PUJ2fD" role="37wK5m">
              <ref role="37wK5l" node="7Q_67PUJ2cn" resolve="conceptKey" />
              <node concept="37vLTw" id="7Q_67PUJ2fE" role="37wK5m">
                <ref role="3cqZAo" node="7Q_67PUJ2fp" resolve="node" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7Q_67PUJ2fF" role="3cqZAp">
          <node concept="3fqX7Q" id="7Q_67PUJ2fG" role="3clFbw">
            <node concept="37vLTw" id="7Q_67PUJ2fH" role="3fr31v">
              <ref role="3cqZAo" node="7Q_67PUJ2fr" resolve="semantic" />
            </node>
          </node>
          <node concept="3clFbS" id="7Q_67PUJ2fJ" role="3clFbx">
            <node concept="3clFbF" id="7Q_67PUJ2fK" role="3cqZAp">
              <node concept="1rXfSq" id="7Q_67PUJ2fL" role="3clFbG">
                <ref role="37wK5l" node="7Q_67PUJ2x0" resolve="part" />
                <node concept="37vLTw" id="7Q_67PUJ2fM" role="37wK5m">
                  <ref role="3cqZAo" node="7Q_67PUJ2ft" resolve="result" />
                </node>
                <node concept="2OqwBi" id="7Q_67PUJ8to" role="37wK5m">
                  <node concept="2OqwBi" id="7Q_67PUJ6Me" role="2Oq$k0">
                    <node concept="liA8E" id="7Q_67PUJ6Mf" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                    </node>
                    <node concept="2JrnkZ" id="7Q_67PUJ9XK" role="2Oq$k0">
                      <node concept="37vLTw" id="7Q_67PUJ37a" role="2JrQYb">
                        <ref role="3cqZAo" node="7Q_67PUJ2fp" resolve="node" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="7Q_67PUJ8tp" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7Q_67PUJ2fQ" role="3cqZAp">
          <node concept="3cpWsn" id="7Q_67PUJ2fP" role="3cpWs9">
            <property role="TrG5h" value="properties" />
            <node concept="3uibUv" id="7Q_67PUJ2fR" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
              <node concept="3uibUv" id="7Q_67PUJ2fS" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
              <node concept="3uibUv" id="7Q_67PUJ2fT" role="11_B2D">
                <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
              </node>
            </node>
            <node concept="2ShNRf" id="7Q_67PUJ37c" role="33vP2m">
              <node concept="1pGfFk" id="7Q_67PUJ37g" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="33ny:~TreeMap.&lt;init&gt;()" resolve="TreeMap" />
                <node concept="3uibUv" id="7Q_67PUJ37h" role="1pMfVU">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
                <node concept="3uibUv" id="7Q_67PUJ37i" role="1pMfVU">
                  <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="7Q_67PUJ2fX" role="3cqZAp">
          <node concept="2OqwBi" id="7Q_67PUJ6Mp" role="1DdaDG">
            <node concept="liA8E" id="7Q_67PUJ6Mq" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNode.getProperties()" resolve="getProperties" />
            </node>
            <node concept="2JrnkZ" id="7Q_67PUJ9XL" role="2Oq$k0">
              <node concept="37vLTw" id="7Q_67PUJ37l" role="2JrQYb">
                <ref role="3cqZAo" node="7Q_67PUJ2fp" resolve="node" />
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="7Q_67PUJ2gq" role="1Duv9x">
            <property role="TrG5h" value="property" />
            <node concept="3uibUv" id="7Q_67PUJ2gs" role="1tU5fm">
              <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
            </node>
          </node>
          <node concept="3clFbS" id="7Q_67PUJ2fZ" role="2LFqv$">
            <node concept="3clFbJ" id="7Q_67PUJ2g0" role="3cqZAp">
              <node concept="22lmx$" id="7Q_67PUJ2g1" role="3clFbw">
                <node concept="3fqX7Q" id="7Q_67PUJ2g2" role="3uHU7B">
                  <node concept="37vLTw" id="7Q_67PUJ2g3" role="3fr31v">
                    <ref role="3cqZAo" node="7Q_67PUJ2fr" resolve="semantic" />
                  </node>
                </node>
                <node concept="1eOMI4" id="7Q_67PUJ2gj" role="3uHU7w">
                  <node concept="1Wc70l" id="7Q_67PUJ2g4" role="1eOMHV">
                    <node concept="1Wc70l" id="7Q_67PUJ2g5" role="3uHU7B">
                      <node concept="1Wc70l" id="7Q_67PUJ2g6" role="3uHU7B">
                        <node concept="3fqX7Q" id="7Q_67PUJ2g7" role="3uHU7B">
                          <node concept="2OqwBi" id="7Q_67PUJ6M$" role="3fr31v">
                            <node concept="37vLTw" id="7Q_67PUJ37p" role="2Oq$k0">
                              <ref role="3cqZAo" node="7Q_67PUJ2gq" resolve="property" />
                            </node>
                            <node concept="liA8E" id="7Q_67PUJ6M_" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                              <node concept="37vLTw" id="7Q_67PUJ6MA" role="37wK5m">
                                <ref role="3cqZAo" node="7Q_67PUJ1SL" resolve="CONCEPT_ID" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3fqX7Q" id="7Q_67PUJ2ga" role="3uHU7w">
                          <node concept="2OqwBi" id="7Q_67PUJ6MK" role="3fr31v">
                            <node concept="37vLTw" id="7Q_67PUJ37u" role="2Oq$k0">
                              <ref role="3cqZAo" node="7Q_67PUJ2gq" resolve="property" />
                            </node>
                            <node concept="liA8E" id="7Q_67PUJ6ML" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                              <node concept="37vLTw" id="7Q_67PUJ6MM" role="37wK5m">
                                <ref role="3cqZAo" node="7Q_67PUJ1SP" resolve="PROPERTY_ID" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3fqX7Q" id="7Q_67PUJ2gd" role="3uHU7w">
                        <node concept="2OqwBi" id="7Q_67PUJ6MW" role="3fr31v">
                          <node concept="37vLTw" id="7Q_67PUJ37z" role="2Oq$k0">
                            <ref role="3cqZAo" node="7Q_67PUJ2gq" resolve="property" />
                          </node>
                          <node concept="liA8E" id="7Q_67PUJ6MX" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                            <node concept="37vLTw" id="7Q_67PUJ6MY" role="37wK5m">
                              <ref role="3cqZAo" node="7Q_67PUJ1ST" resolve="LINK_ID" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3fqX7Q" id="7Q_67PUJ2gg" role="3uHU7w">
                      <node concept="2OqwBi" id="7Q_67PUJ6N8" role="3fr31v">
                        <node concept="37vLTw" id="7Q_67PUJ37C" role="2Oq$k0">
                          <ref role="3cqZAo" node="7Q_67PUJ2gq" resolve="property" />
                        </node>
                        <node concept="liA8E" id="7Q_67PUJ6N9" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                          <node concept="37vLTw" id="7Q_67PUJ6Na" role="37wK5m">
                            <ref role="3cqZAo" node="7Q_67PUJ1SX" resolve="INT_CONCEPT_ID" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="7Q_67PUJ2gl" role="3clFbx">
                <node concept="3clFbF" id="7Q_67PUJ2gm" role="3cqZAp">
                  <node concept="2OqwBi" id="7Q_67PUJ6QU" role="3clFbG">
                    <node concept="37vLTw" id="7Q_67PUJ37H" role="2Oq$k0">
                      <ref role="3cqZAo" node="7Q_67PUJ2fP" resolve="properties" />
                    </node>
                    <node concept="liA8E" id="7Q_67PUJ6QV" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
                      <node concept="2OqwBi" id="7Q_67PUJ8Sq" role="37wK5m">
                        <node concept="37vLTw" id="7Q_67PUJ8ts" role="2Oq$k0">
                          <ref role="3cqZAo" node="7Q_67PUJ2gq" resolve="property" />
                        </node>
                        <node concept="liA8E" id="7Q_67PUJ8Sr" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="7Q_67PUJ6QX" role="37wK5m">
                        <ref role="3cqZAo" node="7Q_67PUJ2gq" resolve="property" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="7Q_67PUJ2gu" role="3cqZAp">
          <node concept="2OqwBi" id="7Q_67PUJ6UH" role="1DdaDG">
            <node concept="37vLTw" id="7Q_67PUJ37N" role="2Oq$k0">
              <ref role="3cqZAo" node="7Q_67PUJ2fP" resolve="properties" />
            </node>
            <node concept="liA8E" id="7Q_67PUJ6UI" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.values()" resolve="values" />
            </node>
          </node>
          <node concept="3cpWsn" id="7Q_67PUJ2hu" role="1Duv9x">
            <property role="TrG5h" value="property" />
            <node concept="3uibUv" id="7Q_67PUJ2hw" role="1tU5fm">
              <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
            </node>
          </node>
          <node concept="3clFbS" id="7Q_67PUJ2gw" role="2LFqv$">
            <node concept="3cpWs8" id="7Q_67PUJ2gy" role="3cqZAp">
              <node concept="3cpWsn" id="7Q_67PUJ2gx" role="3cpWs9">
                <property role="TrG5h" value="value" />
                <node concept="3uibUv" id="7Q_67PUJ2gz" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
                <node concept="2OqwBi" id="7Q_67PUJ6US" role="33vP2m">
                  <node concept="liA8E" id="7Q_67PUJ6UT" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SNode.getProperty(org.jetbrains.mps.openapi.language.SProperty)" resolve="getProperty" />
                    <node concept="37vLTw" id="7Q_67PUJ6UU" role="37wK5m">
                      <ref role="3cqZAo" node="7Q_67PUJ2hu" resolve="property" />
                    </node>
                  </node>
                  <node concept="2JrnkZ" id="7Q_67PUJ9XM" role="2Oq$k0">
                    <node concept="37vLTw" id="7Q_67PUJ37R" role="2JrQYb">
                      <ref role="3cqZAo" node="7Q_67PUJ2fp" resolve="node" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="7Q_67PUJ2gA" role="3cqZAp">
              <node concept="1Wc70l" id="7Q_67PUJ2gB" role="3clFbw">
                <node concept="37vLTw" id="7Q_67PUJ2gC" role="3uHU7B">
                  <ref role="3cqZAo" node="7Q_67PUJ2fr" resolve="semantic" />
                </node>
                <node concept="2OqwBi" id="7Q_67PUJ6V4" role="3uHU7w">
                  <node concept="37vLTw" id="7Q_67PUJ37W" role="2Oq$k0">
                    <ref role="3cqZAo" node="7Q_67PUJ2hu" resolve="property" />
                  </node>
                  <node concept="liA8E" id="7Q_67PUJ6V5" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                    <node concept="37vLTw" id="7Q_67PUJ6V6" role="37wK5m">
                      <ref role="3cqZAo" node="7Q_67PUJ1SH" resolve="VIRTUAL_PACKAGE" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="7Q_67PUJ2gG" role="3clFbx">
                <node concept="3clFbJ" id="7Q_67PUJ2gH" role="3cqZAp">
                  <node concept="1Wc70l" id="7Q_67PUJ2gI" role="3clFbw">
                    <node concept="3y3z36" id="7Q_67PUJ2gJ" role="3uHU7B">
                      <node concept="37vLTw" id="7Q_67PUJ2gK" role="3uHU7B">
                        <ref role="3cqZAo" node="7Q_67PUJ2gx" resolve="value" />
                      </node>
                      <node concept="10Nm6u" id="7Q_67PUJ2gL" role="3uHU7w" />
                    </node>
                    <node concept="3fqX7Q" id="7Q_67PUJ2gM" role="3uHU7w">
                      <node concept="2OqwBi" id="7Q_67PUJ6Vk" role="3fr31v">
                        <node concept="37vLTw" id="7Q_67PUJ381" role="2Oq$k0">
                          <ref role="3cqZAo" node="7Q_67PUJ2fz" resolve="namespace" />
                        </node>
                        <node concept="liA8E" id="7Q_67PUJ6Vl" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~String.isEmpty()" resolve="isEmpty" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="7Q_67PUJ2gP" role="3clFbx">
                    <node concept="3clFbJ" id="7Q_67PUJ2gQ" role="3cqZAp">
                      <node concept="2OqwBi" id="7Q_67PUJ6V$" role="3clFbw">
                        <node concept="37vLTw" id="7Q_67PUJ385" role="2Oq$k0">
                          <ref role="3cqZAo" node="7Q_67PUJ2gx" resolve="value" />
                        </node>
                        <node concept="liA8E" id="7Q_67PUJ6V_" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                          <node concept="37vLTw" id="7Q_67PUJ6VA" role="37wK5m">
                            <ref role="3cqZAo" node="7Q_67PUJ2fz" resolve="namespace" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="7Q_67PUJ2gZ" role="9aQIa">
                        <node concept="2OqwBi" id="7Q_67PUJ6VP" role="3clFbw">
                          <node concept="37vLTw" id="7Q_67PUJ38a" role="2Oq$k0">
                            <ref role="3cqZAo" node="7Q_67PUJ2gx" resolve="value" />
                          </node>
                          <node concept="liA8E" id="7Q_67PUJ6VQ" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~String.startsWith(java.lang.String)" resolve="startsWith" />
                            <node concept="3cpWs3" id="7Q_67PUJ6VR" role="37wK5m">
                              <node concept="37vLTw" id="7Q_67PUJ6VS" role="3uHU7B">
                                <ref role="3cqZAo" node="7Q_67PUJ2fz" resolve="namespace" />
                              </node>
                              <node concept="Xl_RD" id="7Q_67PUJ6VT" role="3uHU7w">
                                <property role="Xl_RC" value="." />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbS" id="7Q_67PUJ2h5" role="3clFbx">
                          <node concept="3clFbF" id="7Q_67PUJ2h6" role="3cqZAp">
                            <node concept="37vLTI" id="7Q_67PUJ2h7" role="3clFbG">
                              <node concept="37vLTw" id="7Q_67PUJ2h8" role="37vLTJ">
                                <ref role="3cqZAo" node="7Q_67PUJ2gx" resolve="value" />
                              </node>
                              <node concept="2OqwBi" id="7Q_67PUJ6W8" role="37vLTx">
                                <node concept="37vLTw" id="7Q_67PUJ38h" role="2Oq$k0">
                                  <ref role="3cqZAo" node="7Q_67PUJ2gx" resolve="value" />
                                </node>
                                <node concept="liA8E" id="7Q_67PUJ6W9" role="2OqNvi">
                                  <ref role="37wK5l" to="wyt6:~String.substring(int)" resolve="substring" />
                                  <node concept="3cpWs3" id="7Q_67PUJ6Wa" role="37wK5m">
                                    <node concept="2OqwBi" id="7Q_67PUJ8SD" role="3uHU7B">
                                      <node concept="37vLTw" id="7Q_67PUJ8tw" role="2Oq$k0">
                                        <ref role="3cqZAo" node="7Q_67PUJ2fz" resolve="namespace" />
                                      </node>
                                      <node concept="liA8E" id="7Q_67PUJ8SE" role="2OqNvi">
                                        <ref role="37wK5l" to="wyt6:~String.length()" resolve="length" />
                                      </node>
                                    </node>
                                    <node concept="3cmrfG" id="7Q_67PUJ6Wc" role="3uHU7w">
                                      <property role="3cmrfH" value="1" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="7Q_67PUJ2gU" role="3clFbx">
                        <node concept="3clFbF" id="7Q_67PUJ2gV" role="3cqZAp">
                          <node concept="37vLTI" id="7Q_67PUJ2gW" role="3clFbG">
                            <node concept="37vLTw" id="7Q_67PUJ2gX" role="37vLTJ">
                              <ref role="3cqZAo" node="7Q_67PUJ2gx" resolve="value" />
                            </node>
                            <node concept="Xl_RD" id="7Q_67PUJ2gY" role="37vLTx">
                              <property role="Xl_RC" value="" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="7Q_67PUJ2hd" role="3cqZAp">
              <node concept="1Wc70l" id="7Q_67PUJ2he" role="3clFbw">
                <node concept="3y3z36" id="7Q_67PUJ2hf" role="3uHU7B">
                  <node concept="37vLTw" id="7Q_67PUJ2hg" role="3uHU7B">
                    <ref role="3cqZAo" node="7Q_67PUJ2gx" resolve="value" />
                  </node>
                  <node concept="10Nm6u" id="7Q_67PUJ2hh" role="3uHU7w" />
                </node>
                <node concept="3fqX7Q" id="7Q_67PUJ2hi" role="3uHU7w">
                  <node concept="2OqwBi" id="7Q_67PUJ6Wr" role="3fr31v">
                    <node concept="37vLTw" id="7Q_67PUJ38o" role="2Oq$k0">
                      <ref role="3cqZAo" node="7Q_67PUJ2gx" resolve="value" />
                    </node>
                    <node concept="liA8E" id="7Q_67PUJ6Ws" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.isEmpty()" resolve="isEmpty" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="7Q_67PUJ2hl" role="3clFbx">
                <node concept="3clFbF" id="7Q_67PUJ2hm" role="3cqZAp">
                  <node concept="1rXfSq" id="7Q_67PUJ2hn" role="3clFbG">
                    <ref role="37wK5l" node="7Q_67PUJ2x0" resolve="part" />
                    <node concept="37vLTw" id="7Q_67PUJ2ho" role="37wK5m">
                      <ref role="3cqZAo" node="7Q_67PUJ2ft" resolve="result" />
                    </node>
                    <node concept="2OqwBi" id="7Q_67PUJ6WB" role="37wK5m">
                      <node concept="37vLTw" id="7Q_67PUJ38s" role="2Oq$k0">
                        <ref role="3cqZAo" node="7Q_67PUJ2hu" resolve="property" />
                      </node>
                      <node concept="liA8E" id="7Q_67PUJ6WC" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="7Q_67PUJ2hq" role="3cqZAp">
                  <node concept="1rXfSq" id="7Q_67PUJ2hr" role="3clFbG">
                    <ref role="37wK5l" node="7Q_67PUJ2x0" resolve="part" />
                    <node concept="37vLTw" id="7Q_67PUJ2hs" role="37wK5m">
                      <ref role="3cqZAo" node="7Q_67PUJ2ft" resolve="result" />
                    </node>
                    <node concept="37vLTw" id="7Q_67PUJ2ht" role="37wK5m">
                      <ref role="3cqZAo" node="7Q_67PUJ2gx" resolve="value" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7Q_67PUJ2hz" role="3cqZAp">
          <node concept="3cpWsn" id="7Q_67PUJ2hy" role="3cpWs9">
            <property role="TrG5h" value="references" />
            <node concept="3uibUv" id="7Q_67PUJ2h$" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="7Q_67PUJ2h_" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
            </node>
            <node concept="2ShNRf" id="7Q_67PUJ38u" role="33vP2m">
              <node concept="1pGfFk" id="7Q_67PUJ38z" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                <node concept="3uibUv" id="7Q_67PUJ38$" role="1pMfVU">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="7Q_67PUJ2hC" role="3cqZAp">
          <node concept="2OqwBi" id="7Q_67PUJ6WM" role="1DdaDG">
            <node concept="liA8E" id="7Q_67PUJ6WN" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNode.getReferences()" resolve="getReferences" />
            </node>
            <node concept="2JrnkZ" id="7Q_67PUJ9XN" role="2Oq$k0">
              <node concept="37vLTw" id="7Q_67PUJ38B" role="2JrQYb">
                <ref role="3cqZAo" node="7Q_67PUJ2fp" resolve="node" />
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="7Q_67PUJ2ie" role="1Duv9x">
            <property role="TrG5h" value="reference" />
            <node concept="3uibUv" id="7Q_67PUJ2ig" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SReference" resolve="SReference" />
            </node>
          </node>
          <node concept="3clFbS" id="7Q_67PUJ2hE" role="2LFqv$">
            <node concept="3cpWs8" id="7Q_67PUJ2hG" role="3cqZAp">
              <node concept="3cpWsn" id="7Q_67PUJ2hF" role="3cpWs9">
                <property role="TrG5h" value="target" />
                <node concept="3Tqbb2" id="7Q_67PUJa02" role="1tU5fm" />
                <node concept="2OqwBi" id="7Q_67PUJ6WX" role="33vP2m">
                  <node concept="37vLTw" id="7Q_67PUJ38F" role="2Oq$k0">
                    <ref role="3cqZAo" node="7Q_67PUJ2ie" resolve="reference" />
                  </node>
                  <node concept="liA8E" id="7Q_67PUJ6WY" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SReference.getTargetNode()" resolve="getTargetNode" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="7Q_67PUJ2hJ" role="3cqZAp">
              <node concept="3clFbC" id="7Q_67PUJ2hK" role="3clFbw">
                <node concept="37vLTw" id="7Q_67PUJ2hL" role="3uHU7B">
                  <ref role="3cqZAo" node="7Q_67PUJ2hF" resolve="target" />
                </node>
                <node concept="10Nm6u" id="7Q_67PUJ2hM" role="3uHU7w" />
              </node>
              <node concept="3clFbS" id="7Q_67PUJ2hO" role="3clFbx">
                <node concept="YS8fn" id="7Q_67PUJ2hT" role="3cqZAp">
                  <node concept="1rXfSq" id="7Q_67PUJ2hP" role="YScLw">
                    <ref role="37wK5l" node="7Q_67PUJ2xZ" resolve="failure" />
                    <node concept="Xl_RD" id="7Q_67PUJ2hQ" role="37wK5m">
                      <property role="Xl_RC" value="MBNF_UNRESOLVED_REFERENCE" />
                    </node>
                    <node concept="2OqwBi" id="7Q_67PUJ8tM" role="37wK5m">
                      <node concept="2OqwBi" id="7Q_67PUJ6Xg" role="2Oq$k0">
                        <node concept="37vLTw" id="7Q_67PUJ38R" role="2Oq$k0">
                          <ref role="3cqZAo" node="7Q_67PUJ2ie" resolve="reference" />
                        </node>
                        <node concept="liA8E" id="7Q_67PUJ6Xh" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SReference.getTargetNodeReference()" resolve="getTargetNodeReference" />
                        </node>
                      </node>
                      <node concept="liA8E" id="7Q_67PUJ8tN" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="7Q_67PUJ2hV" role="3cqZAp">
              <node concept="3cpWsn" id="7Q_67PUJ2hU" role="3cpWs9">
                <property role="TrG5h" value="destination" />
                <node concept="3uibUv" id="7Q_67PUJ2hW" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
                <node concept="3K4zz7" id="7Q_67PUJ2i5" role="33vP2m">
                  <node concept="1Wc70l" id="7Q_67PUJ2hX" role="3K4Cdx">
                    <node concept="37vLTw" id="7Q_67PUJ2hY" role="3uHU7B">
                      <ref role="3cqZAo" node="7Q_67PUJ2fr" resolve="semantic" />
                    </node>
                    <node concept="2OqwBi" id="7Q_67PUJ710" role="3uHU7w">
                      <node concept="37vLTw" id="7Q_67PUJ38V" role="2Oq$k0">
                        <ref role="3cqZAo" node="7Q_67PUJ2fv" resolve="scope" />
                      </node>
                      <node concept="liA8E" id="7Q_67PUJ711" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~Map.containsKey(java.lang.Object)" resolve="containsKey" />
                        <node concept="37vLTw" id="7Q_67PUJ712" role="37wK5m">
                          <ref role="3cqZAo" node="7Q_67PUJ2hF" resolve="target" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="7Q_67PUJ74L" role="3K4E3e">
                    <node concept="37vLTw" id="7Q_67PUJ390" role="2Oq$k0">
                      <ref role="3cqZAo" node="7Q_67PUJ2fv" resolve="scope" />
                    </node>
                    <node concept="liA8E" id="7Q_67PUJ74M" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
                      <node concept="37vLTw" id="7Q_67PUJ74N" role="37wK5m">
                        <ref role="3cqZAo" node="7Q_67PUJ2hF" resolve="target" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="7Q_67PUJ8uf" role="3K4GZi">
                    <node concept="2OqwBi" id="7Q_67PUJ756" role="2Oq$k0">
                      <node concept="liA8E" id="7Q_67PUJ757" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getReference()" resolve="getReference" />
                      </node>
                      <node concept="2JrnkZ" id="7Q_67PUJ9XO" role="2Oq$k0">
                        <node concept="37vLTw" id="7Q_67PUJ39d" role="2JrQYb">
                          <ref role="3cqZAo" node="7Q_67PUJ2hF" resolve="target" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="7Q_67PUJ8ug" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7Q_67PUJ2i6" role="3cqZAp">
              <node concept="2OqwBi" id="7Q_67PUJ77q" role="3clFbG">
                <node concept="37vLTw" id="7Q_67PUJ39h" role="2Oq$k0">
                  <ref role="3cqZAo" node="7Q_67PUJ2hy" resolve="references" />
                </node>
                <node concept="liA8E" id="7Q_67PUJ77r" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                  <node concept="3cpWs3" id="7Q_67PUJ77s" role="37wK5m">
                    <node concept="3cpWs3" id="7Q_67PUJ77t" role="3uHU7B">
                      <node concept="2OqwBi" id="7Q_67PUJ91z" role="3uHU7B">
                        <node concept="2OqwBi" id="7Q_67PUJ8SW" role="2Oq$k0">
                          <node concept="37vLTw" id="7Q_67PUJ8ur" role="2Oq$k0">
                            <ref role="3cqZAo" node="7Q_67PUJ2ie" resolve="reference" />
                          </node>
                          <node concept="liA8E" id="7Q_67PUJ8SX" role="2OqNvi">
                            <ref role="37wK5l" to="mhbf:~SReference.getLink()" resolve="getLink" />
                          </node>
                        </node>
                        <node concept="liA8E" id="7Q_67PUJ91$" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="7Q_67PUJ77w" role="3uHU7w">
                        <property role="Xl_RC" value="=" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="7Q_67PUJ77x" role="3uHU7w">
                      <ref role="3cqZAo" node="7Q_67PUJ2hU" resolve="destination" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7Q_67PUJ2ii" role="3cqZAp">
          <node concept="2YIFZM" id="7Q_67PUJ39r" role="3clFbG">
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            <ref role="37wK5l" to="33ny:~Collections.sort(java.util.List)" resolve="sort" />
            <node concept="37vLTw" id="7Q_67PUJ39s" role="37wK5m">
              <ref role="3cqZAo" node="7Q_67PUJ2hy" resolve="references" />
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="7Q_67PUJ2il" role="3cqZAp">
          <node concept="37vLTw" id="7Q_67PUJ2iv" role="1DdaDG">
            <ref role="3cqZAo" node="7Q_67PUJ2hy" resolve="references" />
          </node>
          <node concept="3cpWsn" id="7Q_67PUJ2is" role="1Duv9x">
            <property role="TrG5h" value="reference" />
            <node concept="3uibUv" id="7Q_67PUJ2iu" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
          </node>
          <node concept="3clFbS" id="7Q_67PUJ2in" role="2LFqv$">
            <node concept="3clFbF" id="7Q_67PUJ2io" role="3cqZAp">
              <node concept="1rXfSq" id="7Q_67PUJ2ip" role="3clFbG">
                <ref role="37wK5l" node="7Q_67PUJ2x0" resolve="part" />
                <node concept="37vLTw" id="7Q_67PUJ2iq" role="37wK5m">
                  <ref role="3cqZAo" node="7Q_67PUJ2ft" resolve="result" />
                </node>
                <node concept="37vLTw" id="7Q_67PUJ2ir" role="37wK5m">
                  <ref role="3cqZAo" node="7Q_67PUJ2is" resolve="reference" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="7Q_67PUJ2iw" role="3cqZAp">
          <node concept="2OqwBi" id="7Q_67PUJ77F" role="1DdaDG">
            <node concept="liA8E" id="7Q_67PUJ77G" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNode.getChildren()" resolve="getChildren" />
            </node>
            <node concept="2JrnkZ" id="7Q_67PUJ9XP" role="2Oq$k0">
              <node concept="37vLTw" id="7Q_67PUJ39v" role="2JrQYb">
                <ref role="3cqZAo" node="7Q_67PUJ2fp" resolve="node" />
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="7Q_67PUJ2iK" role="1Duv9x">
            <property role="TrG5h" value="child" />
            <node concept="3Tqbb2" id="7Q_67PUJa03" role="1tU5fm" />
          </node>
          <node concept="3clFbS" id="7Q_67PUJ2iy" role="2LFqv$">
            <node concept="3clFbF" id="7Q_67PUJ2iz" role="3cqZAp">
              <node concept="1rXfSq" id="7Q_67PUJ2i$" role="3clFbG">
                <ref role="37wK5l" node="7Q_67PUJ2x0" resolve="part" />
                <node concept="37vLTw" id="7Q_67PUJ2i_" role="37wK5m">
                  <ref role="3cqZAo" node="7Q_67PUJ2ft" resolve="result" />
                </node>
                <node concept="2OqwBi" id="7Q_67PUJ39M" role="37wK5m">
                  <node concept="1rXfSq" id="7Q_67PUJ2iB" role="2Oq$k0">
                    <ref role="37wK5l" node="7Q_67PUJ2k4" resolve="containment" />
                    <node concept="37vLTw" id="7Q_67PUJ2iC" role="37wK5m">
                      <ref role="3cqZAo" node="7Q_67PUJ2iK" resolve="child" />
                    </node>
                  </node>
                  <node concept="liA8E" id="7Q_67PUJ39N" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7Q_67PUJ2iD" role="3cqZAp">
              <node concept="1rXfSq" id="7Q_67PUJ2iE" role="3clFbG">
                <ref role="37wK5l" node="7Q_67PUJ2fo" resolve="append" />
                <node concept="37vLTw" id="7Q_67PUJ2iF" role="37wK5m">
                  <ref role="3cqZAo" node="7Q_67PUJ2iK" resolve="child" />
                </node>
                <node concept="37vLTw" id="7Q_67PUJ2iG" role="37wK5m">
                  <ref role="3cqZAo" node="7Q_67PUJ2fr" resolve="semantic" />
                </node>
                <node concept="37vLTw" id="7Q_67PUJ2iH" role="37wK5m">
                  <ref role="3cqZAo" node="7Q_67PUJ2ft" resolve="result" />
                </node>
                <node concept="37vLTw" id="7Q_67PUJ2iI" role="37wK5m">
                  <ref role="3cqZAo" node="7Q_67PUJ2fv" resolve="scope" />
                </node>
                <node concept="37vLTw" id="7Q_67PUJ2iJ" role="37wK5m">
                  <ref role="3cqZAo" node="7Q_67PUJ2fz" resolve="namespace" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7Q_67PUJ2iO" role="3cqZAp">
          <node concept="1rXfSq" id="7Q_67PUJ2iP" role="3clFbG">
            <ref role="37wK5l" node="7Q_67PUJ2x0" resolve="part" />
            <node concept="37vLTw" id="7Q_67PUJ2iQ" role="37wK5m">
              <ref role="3cqZAo" node="7Q_67PUJ2ft" resolve="result" />
            </node>
            <node concept="Xl_RD" id="7Q_67PUJ2iR" role="37wK5m">
              <property role="Xl_RC" value="/" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="7Q_67PUJ2iS" role="1B3o_S" />
      <node concept="3cqZAl" id="7Q_67PUJ2iT" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="7Q_67PUJ2iU" role="jymVt">
      <property role="TrG5h" value="legacyKey" />
      <node concept="37vLTG" id="7Q_67PUJ2iV" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="7Q_67PUJa04" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="7Q_67PUJ2iX" role="3clF47">
        <node concept="3cpWs8" id="7Q_67PUJ2iZ" role="3cqZAp">
          <node concept="3cpWsn" id="7Q_67PUJ2iY" role="3cpWs9">
            <property role="TrG5h" value="root" />
            <node concept="3Tqbb2" id="7Q_67PUJa05" role="1tU5fm" />
            <node concept="2OqwBi" id="7Q_67PUJ77Q" role="33vP2m">
              <node concept="liA8E" id="7Q_67PUJ77R" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getContainingRoot()" resolve="getContainingRoot" />
              </node>
              <node concept="2JrnkZ" id="7Q_67PUJ9XQ" role="2Oq$k0">
                <node concept="37vLTw" id="7Q_67PUJ39Q" role="2JrQYb">
                  <ref role="3cqZAo" node="7Q_67PUJ2iV" resolve="node" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7Q_67PUJ2j3" role="3cqZAp">
          <node concept="3cpWsn" id="7Q_67PUJ2j2" role="3cpWs9">
            <property role="TrG5h" value="name" />
            <node concept="3uibUv" id="7Q_67PUJ2j4" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
            <node concept="2OqwBi" id="7Q_67PUJ782" role="33vP2m">
              <node concept="liA8E" id="7Q_67PUJ783" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getName()" resolve="getName" />
              </node>
              <node concept="2JrnkZ" id="7Q_67PUJ9XR" role="2Oq$k0">
                <node concept="37vLTw" id="7Q_67PUJ39U" role="2JrQYb">
                  <ref role="3cqZAo" node="7Q_67PUJ2iY" resolve="root" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7Q_67PUJ2j6" role="3cqZAp">
          <node concept="3clFbC" id="7Q_67PUJ2j7" role="3clFbw">
            <node concept="37vLTw" id="7Q_67PUJ2j8" role="3uHU7B">
              <ref role="3cqZAo" node="7Q_67PUJ2j2" resolve="name" />
            </node>
            <node concept="10Nm6u" id="7Q_67PUJ2j9" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="7Q_67PUJ2jb" role="3clFbx">
            <node concept="1DcWWT" id="7Q_67PUJ2jc" role="3cqZAp">
              <node concept="2OqwBi" id="7Q_67PUJ78e" role="1DdaDG">
                <node concept="liA8E" id="7Q_67PUJ78f" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getReferences()" resolve="getReferences" />
                </node>
                <node concept="2JrnkZ" id="7Q_67PUJ9XS" role="2Oq$k0">
                  <node concept="37vLTw" id="7Q_67PUJ39Y" role="2JrQYb">
                    <ref role="3cqZAo" node="7Q_67PUJ2iY" resolve="root" />
                  </node>
                </node>
              </node>
              <node concept="3cpWsn" id="7Q_67PUJ2jJ" role="1Duv9x">
                <property role="TrG5h" value="reference" />
                <node concept="3uibUv" id="7Q_67PUJ2jL" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SReference" resolve="SReference" />
                </node>
              </node>
              <node concept="3clFbS" id="7Q_67PUJ2je" role="2LFqv$">
                <node concept="3cpWs8" id="7Q_67PUJ2jg" role="3cqZAp">
                  <node concept="3cpWsn" id="7Q_67PUJ2jf" role="3cpWs9">
                    <property role="TrG5h" value="target" />
                    <node concept="3Tqbb2" id="7Q_67PUJa06" role="1tU5fm" />
                    <node concept="2OqwBi" id="7Q_67PUJ78p" role="33vP2m">
                      <node concept="37vLTw" id="7Q_67PUJ3a2" role="2Oq$k0">
                        <ref role="3cqZAo" node="7Q_67PUJ2jJ" resolve="reference" />
                      </node>
                      <node concept="liA8E" id="7Q_67PUJ78q" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SReference.getTargetNode()" resolve="getTargetNode" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="7Q_67PUJ2jj" role="3cqZAp">
                  <node concept="1Wc70l" id="7Q_67PUJ2jk" role="3clFbw">
                    <node concept="3y3z36" id="7Q_67PUJ2jl" role="3uHU7B">
                      <node concept="37vLTw" id="7Q_67PUJ2jm" role="3uHU7B">
                        <ref role="3cqZAo" node="7Q_67PUJ2jf" resolve="target" />
                      </node>
                      <node concept="10Nm6u" id="7Q_67PUJ2jn" role="3uHU7w" />
                    </node>
                    <node concept="3y3z36" id="7Q_67PUJ2jo" role="3uHU7w">
                      <node concept="2OqwBi" id="7Q_67PUJ78_" role="3uHU7B">
                        <node concept="liA8E" id="7Q_67PUJ78A" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SNode.getName()" resolve="getName" />
                        </node>
                        <node concept="2JrnkZ" id="7Q_67PUJ9XT" role="2Oq$k0">
                          <node concept="37vLTw" id="7Q_67PUJ3a6" role="2JrQYb">
                            <ref role="3cqZAo" node="7Q_67PUJ2jf" resolve="target" />
                          </node>
                        </node>
                      </node>
                      <node concept="10Nm6u" id="7Q_67PUJ2jq" role="3uHU7w" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="7Q_67PUJ2js" role="3clFbx">
                    <node concept="3clFbJ" id="7Q_67PUJ2jt" role="3cqZAp">
                      <node concept="1Wc70l" id="7Q_67PUJ2ju" role="3clFbw">
                        <node concept="3y3z36" id="7Q_67PUJ2jv" role="3uHU7B">
                          <node concept="37vLTw" id="7Q_67PUJ2jw" role="3uHU7B">
                            <ref role="3cqZAo" node="7Q_67PUJ2j2" resolve="name" />
                          </node>
                          <node concept="10Nm6u" id="7Q_67PUJ2jx" role="3uHU7w" />
                        </node>
                        <node concept="3fqX7Q" id="7Q_67PUJ2jy" role="3uHU7w">
                          <node concept="2OqwBi" id="7Q_67PUJ78P" role="3fr31v">
                            <node concept="37vLTw" id="7Q_67PUJ3aa" role="2Oq$k0">
                              <ref role="3cqZAo" node="7Q_67PUJ2j2" resolve="name" />
                            </node>
                            <node concept="liA8E" id="7Q_67PUJ78Q" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                              <node concept="2OqwBi" id="7Q_67PUJ8T8" role="37wK5m">
                                <node concept="liA8E" id="7Q_67PUJ8T9" role="2OqNvi">
                                  <ref role="37wK5l" to="mhbf:~SNode.getName()" resolve="getName" />
                                </node>
                                <node concept="2JrnkZ" id="7Q_67PUJ9XU" role="2Oq$k0">
                                  <node concept="37vLTw" id="7Q_67PUJ8uv" role="2JrQYb">
                                    <ref role="3cqZAo" node="7Q_67PUJ2jf" resolve="target" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="7Q_67PUJ2jA" role="3clFbx">
                        <node concept="YS8fn" id="7Q_67PUJ2jE" role="3cqZAp">
                          <node concept="1rXfSq" id="7Q_67PUJ2jB" role="YScLw">
                            <ref role="37wK5l" node="7Q_67PUJ2xZ" resolve="failure" />
                            <node concept="Xl_RD" id="7Q_67PUJ2jC" role="37wK5m">
                              <property role="Xl_RC" value="MBNF_AMBIGUOUS_ADOPTION" />
                            </node>
                            <node concept="Xl_RD" id="7Q_67PUJ2jD" role="37wK5m">
                              <property role="Xl_RC" value="Multiple root referents" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="7Q_67PUJ2jF" role="3cqZAp">
                      <node concept="37vLTI" id="7Q_67PUJ2jG" role="3clFbG">
                        <node concept="37vLTw" id="7Q_67PUJ2jH" role="37vLTJ">
                          <ref role="3cqZAo" node="7Q_67PUJ2j2" resolve="name" />
                        </node>
                        <node concept="2OqwBi" id="7Q_67PUJ792" role="37vLTx">
                          <node concept="liA8E" id="7Q_67PUJ793" role="2OqNvi">
                            <ref role="37wK5l" to="mhbf:~SNode.getName()" resolve="getName" />
                          </node>
                          <node concept="2JrnkZ" id="7Q_67PUJ9XV" role="2Oq$k0">
                            <node concept="37vLTw" id="7Q_67PUJ3af" role="2JrQYb">
                              <ref role="3cqZAo" node="7Q_67PUJ2jf" resolve="target" />
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
        <node concept="3clFbJ" id="7Q_67PUJ2jN" role="3cqZAp">
          <node concept="3clFbC" id="7Q_67PUJ2jO" role="3clFbw">
            <node concept="37vLTw" id="7Q_67PUJ2jP" role="3uHU7B">
              <ref role="3cqZAo" node="7Q_67PUJ2j2" resolve="name" />
            </node>
            <node concept="10Nm6u" id="7Q_67PUJ2jQ" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="7Q_67PUJ2jS" role="3clFbx">
            <node concept="3cpWs6" id="7Q_67PUJ2jT" role="3cqZAp">
              <node concept="10Nm6u" id="7Q_67PUJ2jU" role="3cqZAk" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7Q_67PUJ2jV" role="3cqZAp">
          <node concept="3cpWs3" id="7Q_67PUJ2jW" role="3cqZAk">
            <node concept="3cpWs3" id="7Q_67PUJ2jX" role="3uHU7B">
              <node concept="1rXfSq" id="7Q_67PUJ2jY" role="3uHU7B">
                <ref role="37wK5l" node="7Q_67PUJ2cn" resolve="conceptKey" />
                <node concept="37vLTw" id="7Q_67PUJ2jZ" role="37wK5m">
                  <ref role="3cqZAo" node="7Q_67PUJ2iY" resolve="root" />
                </node>
              </node>
              <node concept="Xl_RD" id="7Q_67PUJ2k0" role="3uHU7w">
                <property role="Xl_RC" value=":" />
              </node>
            </node>
            <node concept="37vLTw" id="7Q_67PUJ2k1" role="3uHU7w">
              <ref role="3cqZAo" node="7Q_67PUJ2j2" resolve="name" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="7Q_67PUJ2k2" role="1B3o_S" />
      <node concept="3uibUv" id="7Q_67PUJ2k3" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="2YIFZL" id="7Q_67PUJ2k4" role="jymVt">
      <property role="TrG5h" value="containment" />
      <node concept="37vLTG" id="7Q_67PUJ2k5" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="7Q_67PUJa07" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="7Q_67PUJ2k7" role="3clF47">
        <node concept="3cpWs8" id="7Q_67PUJ2k9" role="3cqZAp">
          <node concept="3cpWsn" id="7Q_67PUJ2k8" role="3cpWs9">
            <property role="TrG5h" value="role" />
            <node concept="3uibUv" id="7Q_67PUJ2ka" role="1tU5fm">
              <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
            </node>
            <node concept="2OqwBi" id="7Q_67PUJ79d" role="33vP2m">
              <node concept="liA8E" id="7Q_67PUJ79e" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getContainmentLink()" resolve="getContainmentLink" />
              </node>
              <node concept="2JrnkZ" id="7Q_67PUJ9XW" role="2Oq$k0">
                <node concept="37vLTw" id="7Q_67PUJ3aj" role="2JrQYb">
                  <ref role="3cqZAo" node="7Q_67PUJ2k5" resolve="node" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7Q_67PUJ2kc" role="3cqZAp">
          <node concept="3clFbC" id="7Q_67PUJ2kd" role="3clFbw">
            <node concept="37vLTw" id="7Q_67PUJ2ke" role="3uHU7B">
              <ref role="3cqZAo" node="7Q_67PUJ2k8" resolve="role" />
            </node>
            <node concept="10Nm6u" id="7Q_67PUJ2kf" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="7Q_67PUJ2kh" role="3clFbx">
            <node concept="YS8fn" id="7Q_67PUJ2km" role="3cqZAp">
              <node concept="1rXfSq" id="7Q_67PUJ2ki" role="YScLw">
                <ref role="37wK5l" node="7Q_67PUJ2xZ" resolve="failure" />
                <node concept="Xl_RD" id="7Q_67PUJ2kj" role="37wK5m">
                  <property role="Xl_RC" value="MBNF_INVALID_CONTAINMENT" />
                </node>
                <node concept="2OqwBi" id="7Q_67PUJ8uL" role="37wK5m">
                  <node concept="2OqwBi" id="7Q_67PUJ79w" role="2Oq$k0">
                    <node concept="liA8E" id="7Q_67PUJ79x" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.getReference()" resolve="getReference" />
                    </node>
                    <node concept="2JrnkZ" id="7Q_67PUJ9XX" role="2Oq$k0">
                      <node concept="37vLTw" id="7Q_67PUJ3av" role="2JrQYb">
                        <ref role="3cqZAo" node="7Q_67PUJ2k5" resolve="node" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="7Q_67PUJ8uM" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7Q_67PUJ2kn" role="3cqZAp">
          <node concept="37vLTw" id="7Q_67PUJ2ko" role="3cqZAk">
            <ref role="3cqZAo" node="7Q_67PUJ2k8" resolve="role" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="7Q_67PUJ2kp" role="1B3o_S" />
      <node concept="3uibUv" id="7Q_67PUJ2kq" role="3clF45">
        <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
      </node>
    </node>
    <node concept="2YIFZL" id="7Q_67PUJ2kr" role="jymVt">
      <property role="TrG5h" value="pair" />
      <node concept="37vLTG" id="7Q_67PUJ2ks" role="3clF46">
        <property role="TrG5h" value="generated" />
        <node concept="3Tqbb2" id="7Q_67PUJa08" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7Q_67PUJ2ku" role="3clF46">
        <property role="TrG5h" value="existing" />
        <node concept="3Tqbb2" id="7Q_67PUJa09" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7Q_67PUJ2kw" role="3clF46">
        <property role="TrG5h" value="correspondence" />
        <node concept="3uibUv" id="7Q_67PUJ2kx" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
          <node concept="3Tqbb2" id="7Q_67PUJa0a" role="11_B2D" />
          <node concept="3Tqbb2" id="7Q_67PUJa0b" role="11_B2D" />
        </node>
      </node>
      <node concept="3clFbS" id="7Q_67PUJ2k$" role="3clF47">
        <node concept="3clFbF" id="7Q_67PUJ2k_" role="3cqZAp">
          <node concept="2OqwBi" id="7Q_67PUJ7dg" role="3clFbG">
            <node concept="37vLTw" id="7Q_67PUJ3az" role="2Oq$k0">
              <ref role="3cqZAo" node="7Q_67PUJ2kw" resolve="correspondence" />
            </node>
            <node concept="liA8E" id="7Q_67PUJ7dh" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
              <node concept="37vLTw" id="7Q_67PUJ7di" role="37wK5m">
                <ref role="3cqZAo" node="7Q_67PUJ2ks" resolve="generated" />
              </node>
              <node concept="37vLTw" id="7Q_67PUJ7dj" role="37wK5m">
                <ref role="3cqZAo" node="7Q_67PUJ2ku" resolve="existing" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7Q_67PUJ2kE" role="3cqZAp">
          <node concept="3cpWsn" id="7Q_67PUJ2kD" role="3cpWs9">
            <property role="TrG5h" value="before" />
            <node concept="3uibUv" id="7Q_67PUJ2kF" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3Tqbb2" id="7Q_67PUJa0c" role="11_B2D" />
            </node>
            <node concept="2ShNRf" id="7Q_67PUJ3aB" role="33vP2m">
              <node concept="1pGfFk" id="7Q_67PUJ3aG" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                <node concept="3Tqbb2" id="7Q_67PUJa0d" role="1pMfVU" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="7Q_67PUJ2kJ" role="3cqZAp">
          <node concept="2OqwBi" id="7Q_67PUJ7dt" role="1DdaDG">
            <node concept="liA8E" id="7Q_67PUJ7du" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNode.getChildren()" resolve="getChildren" />
            </node>
            <node concept="2JrnkZ" id="7Q_67PUJ9XY" role="2Oq$k0">
              <node concept="37vLTw" id="7Q_67PUJ3aK" role="2JrQYb">
                <ref role="3cqZAo" node="7Q_67PUJ2ku" resolve="existing" />
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="7Q_67PUJ2kP" role="1Duv9x">
            <property role="TrG5h" value="child" />
            <node concept="3Tqbb2" id="7Q_67PUJa0e" role="1tU5fm" />
          </node>
          <node concept="3clFbS" id="7Q_67PUJ2kL" role="2LFqv$">
            <node concept="3clFbF" id="7Q_67PUJ2kM" role="3cqZAp">
              <node concept="2OqwBi" id="7Q_67PUJ7fL" role="3clFbG">
                <node concept="37vLTw" id="7Q_67PUJ3aO" role="2Oq$k0">
                  <ref role="3cqZAo" node="7Q_67PUJ2kD" resolve="before" />
                </node>
                <node concept="liA8E" id="7Q_67PUJ7fM" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="7Q_67PUJ7fN" role="37wK5m">
                    <ref role="3cqZAo" node="7Q_67PUJ2kP" resolve="child" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7Q_67PUJ2kU" role="3cqZAp">
          <node concept="3cpWsn" id="7Q_67PUJ2kT" role="3cpWs9">
            <property role="TrG5h" value="index" />
            <node concept="10Oyi0" id="7Q_67PUJ2kV" role="1tU5fm" />
            <node concept="3cmrfG" id="7Q_67PUJ2kW" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="7Q_67PUJ2kX" role="3cqZAp">
          <node concept="2OqwBi" id="7Q_67PUJ7fX" role="1DdaDG">
            <node concept="liA8E" id="7Q_67PUJ7fY" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNode.getChildren()" resolve="getChildren" />
            </node>
            <node concept="2JrnkZ" id="7Q_67PUJ9XZ" role="2Oq$k0">
              <node concept="37vLTw" id="7Q_67PUJ3aT" role="2JrQYb">
                <ref role="3cqZAo" node="7Q_67PUJ2ks" resolve="generated" />
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="7Q_67PUJ2l7" role="1Duv9x">
            <property role="TrG5h" value="child" />
            <node concept="3Tqbb2" id="7Q_67PUJa0f" role="1tU5fm" />
          </node>
          <node concept="3clFbS" id="7Q_67PUJ2kZ" role="2LFqv$">
            <node concept="3clFbF" id="7Q_67PUJ2l0" role="3cqZAp">
              <node concept="1rXfSq" id="7Q_67PUJ2l1" role="3clFbG">
                <ref role="37wK5l" node="7Q_67PUJ2kr" resolve="pair" />
                <node concept="37vLTw" id="7Q_67PUJ2l2" role="37wK5m">
                  <ref role="3cqZAo" node="7Q_67PUJ2l7" resolve="child" />
                </node>
                <node concept="2OqwBi" id="7Q_67PUJ7ih" role="37wK5m">
                  <node concept="37vLTw" id="7Q_67PUJ3aX" role="2Oq$k0">
                    <ref role="3cqZAo" node="7Q_67PUJ2kD" resolve="before" />
                  </node>
                  <node concept="liA8E" id="7Q_67PUJ7ii" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                    <node concept="3uNrnE" id="7Q_67PUJ7ij" role="37wK5m">
                      <node concept="37vLTw" id="7Q_67PUJ7ik" role="2$L3a6">
                        <ref role="3cqZAo" node="7Q_67PUJ2kT" resolve="index" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="7Q_67PUJ2l6" role="37wK5m">
                  <ref role="3cqZAo" node="7Q_67PUJ2kw" resolve="correspondence" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="7Q_67PUJ2lb" role="1B3o_S" />
      <node concept="3cqZAl" id="7Q_67PUJ2lc" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="7Q_67PUJ2ld" role="jymVt">
      <property role="TrG5h" value="removedRecords" />
      <node concept="37vLTG" id="7Q_67PUJ2le" role="3clF46">
        <property role="TrG5h" value="ledger" />
        <node concept="3Tqbb2" id="7Q_67PUJa0g" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7Q_67PUJ2lg" role="3clF46">
        <property role="TrG5h" value="candidates" />
        <node concept="3uibUv" id="7Q_67PUJ2lh" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="7Q_67PUJ2li" role="11_B2D">
            <ref role="3uigEE" node="7Q_67PUJ1Rj" resolve="ProtectedRegeneration.Candidate" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7Q_67PUJ2lj" role="3clF46">
        <property role="TrG5h" value="targets" />
        <node concept="3uibUv" id="7Q_67PUJ2lk" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="H_c77" id="7Q_67PUJa0h" role="11_B2D" />
        </node>
      </node>
      <node concept="3clFbS" id="7Q_67PUJ2lm" role="3clF47">
        <node concept="3cpWs8" id="7Q_67PUJ2lo" role="3cqZAp">
          <node concept="3cpWsn" id="7Q_67PUJ2ln" role="3cpWs9">
            <property role="TrG5h" value="removed" />
            <node concept="3uibUv" id="7Q_67PUJ2lp" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3Tqbb2" id="7Q_67PUJa0i" role="11_B2D" />
            </node>
            <node concept="2ShNRf" id="7Q_67PUJ3b1" role="33vP2m">
              <node concept="1pGfFk" id="7Q_67PUJ3b6" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                <node concept="3Tqbb2" id="7Q_67PUJa0j" role="1pMfVU" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7Q_67PUJ2lt" role="3cqZAp">
          <node concept="3y3z36" id="7Q_67PUJ2lu" role="3clFbw">
            <node concept="37vLTw" id="7Q_67PUJ2lv" role="3uHU7B">
              <ref role="3cqZAo" node="7Q_67PUJ2le" resolve="ledger" />
            </node>
            <node concept="10Nm6u" id="7Q_67PUJ2lw" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="7Q_67PUJ2ly" role="3clFbx">
            <node concept="1DcWWT" id="7Q_67PUJ2lz" role="3cqZAp">
              <node concept="1rXfSq" id="7Q_67PUJ2mi" role="1DdaDG">
                <ref role="37wK5l" node="7Q_67PUJ2zk" resolve="artifacts" />
                <node concept="37vLTw" id="7Q_67PUJ2mj" role="37wK5m">
                  <ref role="3cqZAo" node="7Q_67PUJ2le" resolve="ledger" />
                </node>
              </node>
              <node concept="3cpWsn" id="7Q_67PUJ2mf" role="1Duv9x">
                <property role="TrG5h" value="entry" />
                <node concept="3Tqbb2" id="7Q_67PUJa0k" role="1tU5fm" />
              </node>
              <node concept="3clFbS" id="7Q_67PUJ2l_" role="2LFqv$">
                <node concept="3cpWs8" id="7Q_67PUJ2lB" role="3cqZAp">
                  <node concept="3cpWsn" id="7Q_67PUJ2lA" role="3cpWs9">
                    <property role="TrG5h" value="matched" />
                    <node concept="10P_77" id="7Q_67PUJ2lC" role="1tU5fm" />
                    <node concept="3clFbT" id="7Q_67PUJ2lD" role="33vP2m" />
                  </node>
                </node>
                <node concept="1DcWWT" id="7Q_67PUJ2lE" role="3cqZAp">
                  <node concept="37vLTw" id="7Q_67PUJ2lU" role="1DdaDG">
                    <ref role="3cqZAo" node="7Q_67PUJ2lg" resolve="candidates" />
                  </node>
                  <node concept="3cpWsn" id="7Q_67PUJ2lR" role="1Duv9x">
                    <property role="TrG5h" value="candidate" />
                    <node concept="3uibUv" id="7Q_67PUJ2lT" role="1tU5fm">
                      <ref role="3uigEE" node="7Q_67PUJ1Rj" resolve="ProtectedRegeneration.Candidate" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="7Q_67PUJ2lG" role="2LFqv$">
                    <node concept="3clFbJ" id="7Q_67PUJ2lH" role="3cqZAp">
                      <node concept="2OqwBi" id="7Q_67PUJ7iK" role="3clFbw">
                        <node concept="2OqwBi" id="7Q_67PUJ3bb" role="2Oq$k0">
                          <node concept="37vLTw" id="7Q_67PUJ3ba" role="2Oq$k0">
                            <ref role="3cqZAo" node="7Q_67PUJ2lR" resolve="candidate" />
                          </node>
                          <node concept="2OwXpG" id="7Q_67PUJ3bc" role="2OqNvi">
                            <ref role="2Oxat5" node="7Q_67PUJ1Rx" resolve="key" />
                          </node>
                        </node>
                        <node concept="liA8E" id="7Q_67PUJ7iL" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                          <node concept="2OqwBi" id="7Q_67PUJ8Tj" role="37wK5m">
                            <node concept="liA8E" id="7Q_67PUJ8Tk" role="2OqNvi">
                              <ref role="37wK5l" to="mhbf:~SNode.getProperty(org.jetbrains.mps.openapi.language.SProperty)" resolve="getProperty" />
                              <node concept="37vLTw" id="7Q_67PUJ8Tl" role="37wK5m">
                                <ref role="3cqZAo" node="7Q_67PUJ1Tl" resolve="ARTIFACT_KEY" />
                              </node>
                            </node>
                            <node concept="2JrnkZ" id="7Q_67PUJ9Y0" role="2Oq$k0">
                              <node concept="37vLTw" id="7Q_67PUJ8uP" role="2JrQYb">
                                <ref role="3cqZAo" node="7Q_67PUJ2mf" resolve="entry" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="7Q_67PUJ2lM" role="3clFbx">
                        <node concept="3clFbF" id="7Q_67PUJ2lN" role="3cqZAp">
                          <node concept="37vLTI" id="7Q_67PUJ2lO" role="3clFbG">
                            <node concept="37vLTw" id="7Q_67PUJ2lP" role="37vLTJ">
                              <ref role="3cqZAo" node="7Q_67PUJ2lA" resolve="matched" />
                            </node>
                            <node concept="3clFbT" id="7Q_67PUJ2lQ" role="37vLTx">
                              <property role="3clFbU" value="true" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="7Q_67PUJ2lW" role="3cqZAp">
                  <node concept="3cpWsn" id="7Q_67PUJ2lV" role="3cpWs9">
                    <property role="TrG5h" value="target" />
                    <node concept="3Tqbb2" id="7Q_67PUJa0l" role="1tU5fm" />
                    <node concept="1rXfSq" id="7Q_67PUJ2lY" role="33vP2m">
                      <ref role="37wK5l" node="7Q_67PUJ2zR" resolve="artifactTarget" />
                      <node concept="37vLTw" id="7Q_67PUJ2lZ" role="37wK5m">
                        <ref role="3cqZAo" node="7Q_67PUJ2mf" resolve="entry" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="7Q_67PUJ2m0" role="3cqZAp">
                  <node concept="1Wc70l" id="7Q_67PUJ2m1" role="3clFbw">
                    <node concept="1Wc70l" id="7Q_67PUJ2m2" role="3uHU7B">
                      <node concept="3fqX7Q" id="7Q_67PUJ2m3" role="3uHU7B">
                        <node concept="37vLTw" id="7Q_67PUJ2m4" role="3fr31v">
                          <ref role="3cqZAo" node="7Q_67PUJ2lA" resolve="matched" />
                        </node>
                      </node>
                      <node concept="3y3z36" id="7Q_67PUJ2m5" role="3uHU7w">
                        <node concept="37vLTw" id="7Q_67PUJ2m6" role="3uHU7B">
                          <ref role="3cqZAo" node="7Q_67PUJ2lV" resolve="target" />
                        </node>
                        <node concept="10Nm6u" id="7Q_67PUJ2m7" role="3uHU7w" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="7Q_67PUJ7l5" role="3uHU7w">
                      <node concept="37vLTw" id="7Q_67PUJ3bi" role="2Oq$k0">
                        <ref role="3cqZAo" node="7Q_67PUJ2lj" resolve="targets" />
                      </node>
                      <node concept="liA8E" id="7Q_67PUJ7l6" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~List.contains(java.lang.Object)" resolve="contains" />
                        <node concept="2OqwBi" id="7Q_67PUJ8Tw" role="37wK5m">
                          <node concept="liA8E" id="7Q_67PUJ8Tx" role="2OqNvi">
                            <ref role="37wK5l" to="mhbf:~SNode.getModel()" resolve="getModel" />
                          </node>
                          <node concept="2JrnkZ" id="7Q_67PUJ9Y1" role="2Oq$k0">
                            <node concept="37vLTw" id="7Q_67PUJ8uU" role="2JrQYb">
                              <ref role="3cqZAo" node="7Q_67PUJ2lV" resolve="target" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="7Q_67PUJ2mb" role="3clFbx">
                    <node concept="3clFbF" id="7Q_67PUJ2mc" role="3cqZAp">
                      <node concept="2OqwBi" id="7Q_67PUJ7nq" role="3clFbG">
                        <node concept="37vLTw" id="7Q_67PUJ3bn" role="2Oq$k0">
                          <ref role="3cqZAo" node="7Q_67PUJ2ln" resolve="removed" />
                        </node>
                        <node concept="liA8E" id="7Q_67PUJ7nr" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                          <node concept="37vLTw" id="7Q_67PUJ7ns" role="37wK5m">
                            <ref role="3cqZAo" node="7Q_67PUJ2mf" resolve="entry" />
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
        <node concept="3cpWs6" id="7Q_67PUJ2mk" role="3cqZAp">
          <node concept="37vLTw" id="7Q_67PUJ2ml" role="3cqZAk">
            <ref role="3cqZAo" node="7Q_67PUJ2ln" resolve="removed" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="7Q_67PUJ2mm" role="1B3o_S" />
      <node concept="3uibUv" id="7Q_67PUJ2mn" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3Tqbb2" id="7Q_67PUJa0m" role="11_B2D" />
      </node>
    </node>
    <node concept="2YIFZL" id="7Q_67PUJ2mp" role="jymVt">
      <property role="TrG5h" value="prepare" />
      <node concept="37vLTG" id="7Q_67PUJ2mq" role="3clF46">
        <property role="TrG5h" value="candidates" />
        <node concept="3uibUv" id="7Q_67PUJ2mr" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="7Q_67PUJ2ms" role="11_B2D">
            <ref role="3uigEE" node="7Q_67PUJ1Rj" resolve="ProtectedRegeneration.Candidate" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="7Q_67PUJ2mt" role="3clF47">
        <node concept="3cpWs8" id="7Q_67PUJ2mv" role="3cqZAp">
          <node concept="3cpWsn" id="7Q_67PUJ2mu" role="3cpWs9">
            <property role="TrG5h" value="correspondence" />
            <node concept="3uibUv" id="7Q_67PUJ2mw" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
              <node concept="3Tqbb2" id="7Q_67PUJa0n" role="11_B2D" />
              <node concept="3Tqbb2" id="7Q_67PUJa0o" role="11_B2D" />
            </node>
            <node concept="2ShNRf" id="7Q_67PUJ3bq" role="33vP2m">
              <node concept="1pGfFk" id="7Q_67PUJ3bu" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="33ny:~LinkedHashMap.&lt;init&gt;()" resolve="LinkedHashMap" />
                <node concept="3Tqbb2" id="7Q_67PUJa0p" role="1pMfVU" />
                <node concept="3Tqbb2" id="7Q_67PUJa0q" role="1pMfVU" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="7Q_67PUJ2mA" role="3cqZAp">
          <node concept="37vLTw" id="7Q_67PUJ2ne" role="1DdaDG">
            <ref role="3cqZAo" node="7Q_67PUJ2mq" resolve="candidates" />
          </node>
          <node concept="3cpWsn" id="7Q_67PUJ2nb" role="1Duv9x">
            <property role="TrG5h" value="candidate" />
            <node concept="3uibUv" id="7Q_67PUJ2nd" role="1tU5fm">
              <ref role="3uigEE" node="7Q_67PUJ1Rj" resolve="ProtectedRegeneration.Candidate" />
            </node>
          </node>
          <node concept="3clFbS" id="7Q_67PUJ2mC" role="2LFqv$">
            <node concept="3clFbF" id="7Q_67PUJ2mD" role="3cqZAp">
              <node concept="37vLTI" id="7Q_67PUJ2mE" role="3clFbG">
                <node concept="2OqwBi" id="7Q_67PUJ3b$" role="37vLTJ">
                  <node concept="37vLTw" id="7Q_67PUJ3bz" role="2Oq$k0">
                    <ref role="3cqZAo" node="7Q_67PUJ2nb" resolve="candidate" />
                  </node>
                  <node concept="2OwXpG" id="7Q_67PUJ3b_" role="2OqNvi">
                    <ref role="2Oxat5" node="7Q_67PUJ1RH" resolve="created" />
                  </node>
                </node>
                <node concept="3clFbC" id="7Q_67PUJ2mG" role="37vLTx">
                  <node concept="2OqwBi" id="7Q_67PUJ3bD" role="3uHU7B">
                    <node concept="37vLTw" id="7Q_67PUJ3bC" role="2Oq$k0">
                      <ref role="3cqZAo" node="7Q_67PUJ2nb" resolve="candidate" />
                    </node>
                    <node concept="2OwXpG" id="7Q_67PUJ3bE" role="2OqNvi">
                      <ref role="2Oxat5" node="7Q_67PUJ1R_" resolve="existing" />
                    </node>
                  </node>
                  <node concept="10Nm6u" id="7Q_67PUJ2mI" role="3uHU7w" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="7Q_67PUJ2mJ" role="3cqZAp">
              <node concept="22lmx$" id="7Q_67PUJ2mK" role="3clFbw">
                <node concept="2OqwBi" id="7Q_67PUJ3bI" role="3uHU7B">
                  <node concept="37vLTw" id="7Q_67PUJ3bH" role="2Oq$k0">
                    <ref role="3cqZAo" node="7Q_67PUJ2nb" resolve="candidate" />
                  </node>
                  <node concept="2OwXpG" id="7Q_67PUJ3bJ" role="2OqNvi">
                    <ref role="2Oxat5" node="7Q_67PUJ1RH" resolve="created" />
                  </node>
                </node>
                <node concept="2OqwBi" id="7Q_67PUJ3bN" role="3uHU7w">
                  <node concept="37vLTw" id="7Q_67PUJ3bM" role="2Oq$k0">
                    <ref role="3cqZAo" node="7Q_67PUJ2nb" resolve="candidate" />
                  </node>
                  <node concept="2OwXpG" id="7Q_67PUJ3bO" role="2OqNvi">
                    <ref role="2Oxat5" node="7Q_67PUJ1RL" resolve="updated" />
                  </node>
                </node>
              </node>
              <node concept="9aQIb" id="7Q_67PUJ2n4" role="9aQIa">
                <node concept="3clFbS" id="7Q_67PUJ2n5" role="9aQI4">
                  <node concept="3clFbF" id="7Q_67PUJ2n6" role="3cqZAp">
                    <node concept="1rXfSq" id="7Q_67PUJ2n7" role="3clFbG">
                      <ref role="37wK5l" node="7Q_67PUJ2kr" resolve="pair" />
                      <node concept="2OqwBi" id="7Q_67PUJ3bS" role="37wK5m">
                        <node concept="37vLTw" id="7Q_67PUJ3bR" role="2Oq$k0">
                          <ref role="3cqZAo" node="7Q_67PUJ2nb" resolve="candidate" />
                        </node>
                        <node concept="2OwXpG" id="7Q_67PUJ3bT" role="2OqNvi">
                          <ref role="2Oxat5" node="7Q_67PUJ1Rl" resolve="generated" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="7Q_67PUJ3bX" role="37wK5m">
                        <node concept="37vLTw" id="7Q_67PUJ3bW" role="2Oq$k0">
                          <ref role="3cqZAo" node="7Q_67PUJ2nb" resolve="candidate" />
                        </node>
                        <node concept="2OwXpG" id="7Q_67PUJ3bY" role="2OqNvi">
                          <ref role="2Oxat5" node="7Q_67PUJ1R_" resolve="existing" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="7Q_67PUJ2na" role="37wK5m">
                        <ref role="3cqZAo" node="7Q_67PUJ2mu" resolve="correspondence" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="7Q_67PUJ2mO" role="3clFbx">
                <node concept="3clFbF" id="7Q_67PUJ2mP" role="3cqZAp">
                  <node concept="37vLTI" id="7Q_67PUJ2mQ" role="3clFbG">
                    <node concept="2OqwBi" id="7Q_67PUJ3c2" role="37vLTJ">
                      <node concept="37vLTw" id="7Q_67PUJ3c1" role="2Oq$k0">
                        <ref role="3cqZAo" node="7Q_67PUJ2nb" resolve="candidate" />
                      </node>
                      <node concept="2OwXpG" id="7Q_67PUJ3c3" role="2OqNvi">
                        <ref role="2Oxat5" node="7Q_67PUJ1RP" resolve="replacement" />
                      </node>
                    </node>
                    <node concept="1rXfSq" id="7Q_67PUJ2mS" role="37vLTx">
                      <ref role="37wK5l" node="7Q_67PUJ2rA" resolve="cloneTree" />
                      <node concept="2OqwBi" id="7Q_67PUJ3c7" role="37wK5m">
                        <node concept="37vLTw" id="7Q_67PUJ3c6" role="2Oq$k0">
                          <ref role="3cqZAo" node="7Q_67PUJ2nb" resolve="candidate" />
                        </node>
                        <node concept="2OwXpG" id="7Q_67PUJ3c8" role="2OqNvi">
                          <ref role="2Oxat5" node="7Q_67PUJ1Rl" resolve="generated" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="7Q_67PUJ3cc" role="37wK5m">
                        <node concept="37vLTw" id="7Q_67PUJ3cb" role="2Oq$k0">
                          <ref role="3cqZAo" node="7Q_67PUJ2nb" resolve="candidate" />
                        </node>
                        <node concept="2OwXpG" id="7Q_67PUJ3cd" role="2OqNvi">
                          <ref role="2Oxat5" node="7Q_67PUJ1Rp" resolve="target" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="7Q_67PUJ2mV" role="37wK5m">
                        <ref role="3cqZAo" node="7Q_67PUJ2mu" resolve="correspondence" />
                      </node>
                      <node concept="2OqwBi" id="7Q_67PUJ3ch" role="37wK5m">
                        <node concept="37vLTw" id="7Q_67PUJ3cg" role="2Oq$k0">
                          <ref role="3cqZAo" node="7Q_67PUJ2nb" resolve="candidate" />
                        </node>
                        <node concept="2OwXpG" id="7Q_67PUJ3ci" role="2OqNvi">
                          <ref role="2Oxat5" node="7Q_67PUJ1Rx" resolve="key" />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="7Q_67PUJ2mX" role="37wK5m">
                        <property role="Xl_RC" value="" />
                      </node>
                      <node concept="2OqwBi" id="7Q_67PUJ3cm" role="37wK5m">
                        <node concept="37vLTw" id="7Q_67PUJ3cl" role="2Oq$k0">
                          <ref role="3cqZAo" node="7Q_67PUJ2nb" resolve="candidate" />
                        </node>
                        <node concept="2OwXpG" id="7Q_67PUJ3cn" role="2OqNvi">
                          <ref role="2Oxat5" node="7Q_67PUJ1R_" resolve="existing" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="7Q_67PUJ2mZ" role="37wK5m">
                        <ref role="3cqZAo" node="7Q_67PUJ2mq" resolve="candidates" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="7Q_67PUJ2n0" role="3cqZAp">
                  <node concept="1rXfSq" id="7Q_67PUJ2n1" role="3clFbG">
                    <ref role="37wK5l" node="7Q_67PUJ2wf" resolve="normalizePackage" />
                    <node concept="2OqwBi" id="7Q_67PUJ3cr" role="37wK5m">
                      <node concept="37vLTw" id="7Q_67PUJ3cq" role="2Oq$k0">
                        <ref role="3cqZAo" node="7Q_67PUJ2nb" resolve="candidate" />
                      </node>
                      <node concept="2OwXpG" id="7Q_67PUJ3cs" role="2OqNvi">
                        <ref role="2Oxat5" node="7Q_67PUJ1RP" resolve="replacement" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="7Q_67PUJ3cw" role="37wK5m">
                      <node concept="37vLTw" id="7Q_67PUJ3cv" role="2Oq$k0">
                        <ref role="3cqZAo" node="7Q_67PUJ2nb" resolve="candidate" />
                      </node>
                      <node concept="2OwXpG" id="7Q_67PUJ3cx" role="2OqNvi">
                        <ref role="2Oxat5" node="7Q_67PUJ1Rp" resolve="target" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="7Q_67PUJ2nf" role="3cqZAp">
          <node concept="37vLTw" id="7Q_67PUJ2nv" role="1DdaDG">
            <ref role="3cqZAo" node="7Q_67PUJ2mq" resolve="candidates" />
          </node>
          <node concept="3cpWsn" id="7Q_67PUJ2ns" role="1Duv9x">
            <property role="TrG5h" value="candidate" />
            <node concept="3uibUv" id="7Q_67PUJ2nu" role="1tU5fm">
              <ref role="3uigEE" node="7Q_67PUJ1Rj" resolve="ProtectedRegeneration.Candidate" />
            </node>
          </node>
          <node concept="3clFbS" id="7Q_67PUJ2nh" role="2LFqv$">
            <node concept="3clFbJ" id="7Q_67PUJ2ni" role="3cqZAp">
              <node concept="22lmx$" id="7Q_67PUJ2nj" role="3clFbw">
                <node concept="2OqwBi" id="7Q_67PUJ3c_" role="3uHU7B">
                  <node concept="37vLTw" id="7Q_67PUJ3c$" role="2Oq$k0">
                    <ref role="3cqZAo" node="7Q_67PUJ2ns" resolve="candidate" />
                  </node>
                  <node concept="2OwXpG" id="7Q_67PUJ3cA" role="2OqNvi">
                    <ref role="2Oxat5" node="7Q_67PUJ1RH" resolve="created" />
                  </node>
                </node>
                <node concept="2OqwBi" id="7Q_67PUJ3cE" role="3uHU7w">
                  <node concept="37vLTw" id="7Q_67PUJ3cD" role="2Oq$k0">
                    <ref role="3cqZAo" node="7Q_67PUJ2ns" resolve="candidate" />
                  </node>
                  <node concept="2OwXpG" id="7Q_67PUJ3cF" role="2OqNvi">
                    <ref role="2Oxat5" node="7Q_67PUJ1RL" resolve="updated" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="7Q_67PUJ2nn" role="3clFbx">
                <node concept="3clFbF" id="7Q_67PUJ2no" role="3cqZAp">
                  <node concept="1rXfSq" id="7Q_67PUJ2np" role="3clFbG">
                    <ref role="37wK5l" node="7Q_67PUJ2u$" resolve="copyReferences" />
                    <node concept="2OqwBi" id="7Q_67PUJ3cJ" role="37wK5m">
                      <node concept="37vLTw" id="7Q_67PUJ3cI" role="2Oq$k0">
                        <ref role="3cqZAo" node="7Q_67PUJ2ns" resolve="candidate" />
                      </node>
                      <node concept="2OwXpG" id="7Q_67PUJ3cK" role="2OqNvi">
                        <ref role="2Oxat5" node="7Q_67PUJ1Rl" resolve="generated" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="7Q_67PUJ2nr" role="37wK5m">
                      <ref role="3cqZAo" node="7Q_67PUJ2mu" resolve="correspondence" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7Q_67PUJ2nw" role="3cqZAp">
          <node concept="37vLTw" id="7Q_67PUJ2nx" role="3cqZAk">
            <ref role="3cqZAo" node="7Q_67PUJ2mu" resolve="correspondence" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="7Q_67PUJ2ny" role="1B3o_S" />
      <node concept="3uibUv" id="7Q_67PUJ2nz" role="3clF45">
        <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
        <node concept="3Tqbb2" id="7Q_67PUJa0r" role="11_B2D" />
        <node concept="3Tqbb2" id="7Q_67PUJa0s" role="11_B2D" />
      </node>
    </node>
    <node concept="2YIFZL" id="7Q_67PUJ2nA" role="jymVt">
      <property role="TrG5h" value="nodes" />
      <node concept="37vLTG" id="7Q_67PUJ2nB" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="7Q_67PUJa0t" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7Q_67PUJ2nD" role="3clF46">
        <property role="TrG5h" value="nodes" />
        <node concept="3uibUv" id="7Q_67PUJ2nE" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
          <node concept="3Tqbb2" id="7Q_67PUJa0u" role="11_B2D" />
        </node>
      </node>
      <node concept="3clFbS" id="7Q_67PUJ2nG" role="3clF47">
        <node concept="3clFbF" id="7Q_67PUJ2nH" role="3cqZAp">
          <node concept="2OqwBi" id="7Q_67PUJ7px" role="3clFbG">
            <node concept="37vLTw" id="7Q_67PUJ3cN" role="2Oq$k0">
              <ref role="3cqZAo" node="7Q_67PUJ2nD" resolve="nodes" />
            </node>
            <node concept="liA8E" id="7Q_67PUJ7py" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
              <node concept="37vLTw" id="7Q_67PUJ7pz" role="37wK5m">
                <ref role="3cqZAo" node="7Q_67PUJ2nB" resolve="node" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="7Q_67PUJ2nK" role="3cqZAp">
          <node concept="2OqwBi" id="7Q_67PUJ7pH" role="1DdaDG">
            <node concept="liA8E" id="7Q_67PUJ7pI" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNode.getChildren()" resolve="getChildren" />
            </node>
            <node concept="2JrnkZ" id="7Q_67PUJ9Y2" role="2Oq$k0">
              <node concept="37vLTw" id="7Q_67PUJ3cS" role="2JrQYb">
                <ref role="3cqZAo" node="7Q_67PUJ2nB" resolve="node" />
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="7Q_67PUJ2nR" role="1Duv9x">
            <property role="TrG5h" value="child" />
            <node concept="3Tqbb2" id="7Q_67PUJa0v" role="1tU5fm" />
          </node>
          <node concept="3clFbS" id="7Q_67PUJ2nM" role="2LFqv$">
            <node concept="3clFbF" id="7Q_67PUJ2nN" role="3cqZAp">
              <node concept="1rXfSq" id="7Q_67PUJ2nO" role="3clFbG">
                <ref role="37wK5l" node="7Q_67PUJ2nA" resolve="nodes" />
                <node concept="37vLTw" id="7Q_67PUJ2nP" role="37wK5m">
                  <ref role="3cqZAo" node="7Q_67PUJ2nR" resolve="child" />
                </node>
                <node concept="37vLTw" id="7Q_67PUJ2nQ" role="37wK5m">
                  <ref role="3cqZAo" node="7Q_67PUJ2nD" resolve="nodes" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="7Q_67PUJ2nV" role="1B3o_S" />
      <node concept="3cqZAl" id="7Q_67PUJ2nW" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="7Q_67PUJ2nX" role="jymVt">
      <property role="TrG5h" value="preflight" />
      <node concept="37vLTG" id="7Q_67PUJ2nY" role="3clF46">
        <property role="TrG5h" value="candidates" />
        <node concept="3uibUv" id="7Q_67PUJ2nZ" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="7Q_67PUJ2o0" role="11_B2D">
            <ref role="3uigEE" node="7Q_67PUJ1Rj" resolve="ProtectedRegeneration.Candidate" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7Q_67PUJ2o1" role="3clF46">
        <property role="TrG5h" value="removals" />
        <node concept="3uibUv" id="7Q_67PUJ2o2" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3Tqbb2" id="7Q_67PUJa0w" role="11_B2D" />
        </node>
      </node>
      <node concept="37vLTG" id="7Q_67PUJ2o4" role="3clF46">
        <property role="TrG5h" value="conflicts" />
        <node concept="3uibUv" id="7Q_67PUJ2o5" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="7Q_67PUJ2o6" role="11_B2D">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="7Q_67PUJ2o7" role="3clF47">
        <node concept="3cpWs8" id="7Q_67PUJ2o9" role="3cqZAp">
          <node concept="3cpWsn" id="7Q_67PUJ2o8" role="3cpWs9">
            <property role="TrG5h" value="correspondence" />
            <node concept="3uibUv" id="7Q_67PUJ2oa" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
              <node concept="3Tqbb2" id="7Q_67PUJa0x" role="11_B2D" />
              <node concept="3Tqbb2" id="7Q_67PUJa0y" role="11_B2D" />
            </node>
            <node concept="1rXfSq" id="7Q_67PUJ2od" role="33vP2m">
              <ref role="37wK5l" node="7Q_67PUJ2mp" resolve="prepare" />
              <node concept="37vLTw" id="7Q_67PUJ2oe" role="37wK5m">
                <ref role="3cqZAo" node="7Q_67PUJ2nY" resolve="candidates" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7Q_67PUJ2og" role="3cqZAp">
          <node concept="3cpWsn" id="7Q_67PUJ2of" role="3cpWs9">
            <property role="TrG5h" value="replaced" />
            <node concept="3uibUv" id="7Q_67PUJ2oh" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
              <node concept="3Tqbb2" id="7Q_67PUJa0z" role="11_B2D" />
            </node>
            <node concept="2ShNRf" id="7Q_67PUJ3cU" role="33vP2m">
              <node concept="1pGfFk" id="7Q_67PUJ3cY" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="33ny:~HashSet.&lt;init&gt;()" resolve="HashSet" />
                <node concept="3Tqbb2" id="7Q_67PUJa0$" role="1pMfVU" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7Q_67PUJ2om" role="3cqZAp">
          <node concept="3cpWsn" id="7Q_67PUJ2ol" role="3cpWs9">
            <property role="TrG5h" value="retained" />
            <node concept="3uibUv" id="7Q_67PUJ2on" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
              <node concept="3uibUv" id="7Q_67PUJ2oo" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
            </node>
            <node concept="2ShNRf" id="7Q_67PUJ3d0" role="33vP2m">
              <node concept="1pGfFk" id="7Q_67PUJ3d4" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="33ny:~HashSet.&lt;init&gt;()" resolve="HashSet" />
                <node concept="3uibUv" id="7Q_67PUJ3d5" role="1pMfVU">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="7Q_67PUJ2or" role="3cqZAp">
          <node concept="37vLTw" id="7Q_67PUJ2oD" role="1DdaDG">
            <ref role="3cqZAo" node="7Q_67PUJ2nY" resolve="candidates" />
          </node>
          <node concept="3cpWsn" id="7Q_67PUJ2oA" role="1Duv9x">
            <property role="TrG5h" value="candidate" />
            <node concept="3uibUv" id="7Q_67PUJ2oC" role="1tU5fm">
              <ref role="3uigEE" node="7Q_67PUJ1Rj" resolve="ProtectedRegeneration.Candidate" />
            </node>
          </node>
          <node concept="3clFbS" id="7Q_67PUJ2ot" role="2LFqv$">
            <node concept="3clFbJ" id="7Q_67PUJ2ou" role="3cqZAp">
              <node concept="2OqwBi" id="7Q_67PUJ3d9" role="3clFbw">
                <node concept="37vLTw" id="7Q_67PUJ3d8" role="2Oq$k0">
                  <ref role="3cqZAo" node="7Q_67PUJ2oA" resolve="candidate" />
                </node>
                <node concept="2OwXpG" id="7Q_67PUJ3da" role="2OqNvi">
                  <ref role="2Oxat5" node="7Q_67PUJ1RL" resolve="updated" />
                </node>
              </node>
              <node concept="3clFbS" id="7Q_67PUJ2ox" role="3clFbx">
                <node concept="3clFbF" id="7Q_67PUJ2oy" role="3cqZAp">
                  <node concept="1rXfSq" id="7Q_67PUJ2oz" role="3clFbG">
                    <ref role="37wK5l" node="7Q_67PUJ2nA" resolve="nodes" />
                    <node concept="2OqwBi" id="7Q_67PUJ3de" role="37wK5m">
                      <node concept="37vLTw" id="7Q_67PUJ3dd" role="2Oq$k0">
                        <ref role="3cqZAo" node="7Q_67PUJ2oA" resolve="candidate" />
                      </node>
                      <node concept="2OwXpG" id="7Q_67PUJ3df" role="2OqNvi">
                        <ref role="2Oxat5" node="7Q_67PUJ1R_" resolve="existing" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="7Q_67PUJ2o_" role="37wK5m">
                      <ref role="3cqZAo" node="7Q_67PUJ2of" resolve="replaced" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="7Q_67PUJ2oE" role="3cqZAp">
          <node concept="37vLTw" id="7Q_67PUJ2oP" role="1DdaDG">
            <ref role="3cqZAo" node="7Q_67PUJ2o1" resolve="removals" />
          </node>
          <node concept="3cpWsn" id="7Q_67PUJ2oM" role="1Duv9x">
            <property role="TrG5h" value="record" />
            <node concept="3Tqbb2" id="7Q_67PUJa0_" role="1tU5fm" />
          </node>
          <node concept="3clFbS" id="7Q_67PUJ2oG" role="2LFqv$">
            <node concept="3clFbF" id="7Q_67PUJ2oH" role="3cqZAp">
              <node concept="1rXfSq" id="7Q_67PUJ2oI" role="3clFbG">
                <ref role="37wK5l" node="7Q_67PUJ2nA" resolve="nodes" />
                <node concept="1rXfSq" id="7Q_67PUJ2oJ" role="37wK5m">
                  <ref role="37wK5l" node="7Q_67PUJ2zR" resolve="artifactTarget" />
                  <node concept="37vLTw" id="7Q_67PUJ2oK" role="37wK5m">
                    <ref role="3cqZAo" node="7Q_67PUJ2oM" resolve="record" />
                  </node>
                </node>
                <node concept="37vLTw" id="7Q_67PUJ2oL" role="37wK5m">
                  <ref role="3cqZAo" node="7Q_67PUJ2of" resolve="replaced" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7Q_67PUJ2oR" role="3cqZAp">
          <node concept="3cpWsn" id="7Q_67PUJ2oQ" role="3cpWs9">
            <property role="TrG5h" value="planned" />
            <node concept="3uibUv" id="7Q_67PUJ2oS" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
              <node concept="3uibUv" id="7Q_67PUJ2oT" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
            </node>
            <node concept="2ShNRf" id="7Q_67PUJ3dg" role="33vP2m">
              <node concept="1pGfFk" id="7Q_67PUJ3dk" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="33ny:~HashSet.&lt;init&gt;()" resolve="HashSet" />
                <node concept="3uibUv" id="7Q_67PUJ3dl" role="1pMfVU">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="7Q_67PUJ2oW" role="3cqZAp">
          <node concept="37vLTw" id="7Q_67PUJ2q5" role="1DdaDG">
            <ref role="3cqZAo" node="7Q_67PUJ2nY" resolve="candidates" />
          </node>
          <node concept="3cpWsn" id="7Q_67PUJ2q2" role="1Duv9x">
            <property role="TrG5h" value="candidate" />
            <node concept="3uibUv" id="7Q_67PUJ2q4" role="1tU5fm">
              <ref role="3uigEE" node="7Q_67PUJ1Rj" resolve="ProtectedRegeneration.Candidate" />
            </node>
          </node>
          <node concept="3clFbS" id="7Q_67PUJ2oY" role="2LFqv$">
            <node concept="1DcWWT" id="7Q_67PUJ2oZ" role="3cqZAp">
              <node concept="2OqwBi" id="7Q_67PUJ7tu" role="1DdaDG">
                <node concept="37vLTw" id="7Q_67PUJ3do" role="2Oq$k0">
                  <ref role="3cqZAo" node="7Q_67PUJ2o8" resolve="correspondence" />
                </node>
                <node concept="liA8E" id="7Q_67PUJ7tv" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Map.entrySet()" resolve="entrySet" />
                </node>
              </node>
              <node concept="3cpWsn" id="7Q_67PUJ2pW" role="1Duv9x">
                <property role="TrG5h" value="mapping" />
                <node concept="3uibUv" id="7Q_67PUJ2pY" role="1tU5fm">
                  <ref role="3uigEE" to="33ny:~Map$Entry" resolve="Map.Entry" />
                  <node concept="3Tqbb2" id="7Q_67PUJa0A" role="11_B2D" />
                  <node concept="3Tqbb2" id="7Q_67PUJa0B" role="11_B2D" />
                </node>
              </node>
              <node concept="3clFbS" id="7Q_67PUJ2p1" role="2LFqv$">
                <node concept="3clFbJ" id="7Q_67PUJ2p2" role="3cqZAp">
                  <node concept="3y3z36" id="7Q_67PUJ2p3" role="3clFbw">
                    <node concept="2OqwBi" id="7Q_67PUJ8vu" role="3uHU7B">
                      <node concept="liA8E" id="7Q_67PUJ8vv" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getContainingRoot()" resolve="getContainingRoot" />
                      </node>
                      <node concept="2JrnkZ" id="7Q_67PUJ9Y3" role="2Oq$k0">
                        <node concept="2OqwBi" id="7Q_67PUJ7uy" role="2JrQYb">
                          <node concept="37vLTw" id="7Q_67PUJ3d$" role="2Oq$k0">
                            <ref role="3cqZAo" node="7Q_67PUJ2pW" resolve="mapping" />
                          </node>
                          <node concept="liA8E" id="7Q_67PUJ7uz" role="2OqNvi">
                            <ref role="37wK5l" to="33ny:~Map$Entry.getKey()" resolve="getKey" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="7Q_67PUJ3dD" role="3uHU7w">
                      <node concept="37vLTw" id="7Q_67PUJ3dC" role="2Oq$k0">
                        <ref role="3cqZAo" node="7Q_67PUJ2q2" resolve="candidate" />
                      </node>
                      <node concept="2OwXpG" id="7Q_67PUJ3dE" role="2OqNvi">
                        <ref role="2Oxat5" node="7Q_67PUJ1Rl" resolve="generated" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="7Q_67PUJ2p8" role="3clFbx">
                    <node concept="3N13vt" id="7Q_67PUJ2p9" role="3cqZAp" />
                  </node>
                </node>
                <node concept="3cpWs8" id="7Q_67PUJ2pb" role="3cqZAp">
                  <node concept="3cpWsn" id="7Q_67PUJ2pa" role="3cpWs9">
                    <property role="TrG5h" value="identity" />
                    <node concept="3uibUv" id="7Q_67PUJ2pc" role="1tU5fm">
                      <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                    </node>
                    <node concept="3cpWs3" id="7Q_67PUJ2pd" role="33vP2m">
                      <node concept="3cpWs3" id="7Q_67PUJ2pe" role="3uHU7B">
                        <node concept="2OqwBi" id="7Q_67PUJ8vZ" role="3uHU7B">
                          <node concept="2OqwBi" id="7Q_67PUJ7v3" role="2Oq$k0">
                            <node concept="liA8E" id="7Q_67PUJ7v4" role="2OqNvi">
                              <ref role="37wK5l" to="mhbf:~SModel.getReference()" resolve="getReference" />
                            </node>
                            <node concept="2JrnkZ" id="7Q_67PUJ9Y4" role="2Oq$k0">
                              <node concept="2OqwBi" id="7Q_67PUJ3dQ" role="2JrQYb">
                                <node concept="37vLTw" id="7Q_67PUJ3dP" role="2Oq$k0">
                                  <ref role="3cqZAo" node="7Q_67PUJ2q2" resolve="candidate" />
                                </node>
                                <node concept="2OwXpG" id="7Q_67PUJ3dR" role="2OqNvi">
                                  <ref role="2Oxat5" node="7Q_67PUJ1Rp" resolve="target" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="liA8E" id="7Q_67PUJ8w0" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="7Q_67PUJ2ph" role="3uHU7w">
                          <property role="Xl_RC" value="/" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="7Q_67PUJ8Ue" role="3uHU7w">
                        <node concept="2OqwBi" id="7Q_67PUJ8wF" role="2Oq$k0">
                          <node concept="liA8E" id="7Q_67PUJ8wG" role="2OqNvi">
                            <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                          </node>
                          <node concept="2JrnkZ" id="7Q_67PUJ9Y5" role="2Oq$k0">
                            <node concept="2OqwBi" id="7Q_67PUJ7wf" role="2JrQYb">
                              <node concept="37vLTw" id="7Q_67PUJ3eb" role="2Oq$k0">
                                <ref role="3cqZAo" node="7Q_67PUJ2pW" resolve="mapping" />
                              </node>
                              <node concept="liA8E" id="7Q_67PUJ7wg" role="2OqNvi">
                                <ref role="37wK5l" to="33ny:~Map$Entry.getValue()" resolve="getValue" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="7Q_67PUJ8Uf" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="7Q_67PUJ2pl" role="3cqZAp">
                  <node concept="3fqX7Q" id="7Q_67PUJ2pm" role="3clFbw">
                    <node concept="2OqwBi" id="7Q_67PUJ7ym" role="3fr31v">
                      <node concept="37vLTw" id="7Q_67PUJ3ef" role="2Oq$k0">
                        <ref role="3cqZAo" node="7Q_67PUJ2oQ" resolve="planned" />
                      </node>
                      <node concept="liA8E" id="7Q_67PUJ7yn" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                        <node concept="37vLTw" id="7Q_67PUJ7yo" role="37wK5m">
                          <ref role="3cqZAo" node="7Q_67PUJ2pa" resolve="identity" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="7Q_67PUJ2pq" role="3clFbx">
                    <node concept="3clFbF" id="7Q_67PUJ2pr" role="3cqZAp">
                      <node concept="2OqwBi" id="7Q_67PUJ7$E" role="3clFbG">
                        <node concept="37vLTw" id="7Q_67PUJ3ek" role="2Oq$k0">
                          <ref role="3cqZAo" node="7Q_67PUJ2o4" resolve="conflicts" />
                        </node>
                        <node concept="liA8E" id="7Q_67PUJ7$F" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                          <node concept="3cpWs3" id="7Q_67PUJ7$G" role="37wK5m">
                            <node concept="Xl_RD" id="7Q_67PUJ7$H" role="3uHU7B">
                              <property role="Xl_RC" value="MBNF_GENERATED_ID_COLLISION: " />
                            </node>
                            <node concept="37vLTw" id="7Q_67PUJ7$I" role="3uHU7w">
                              <ref role="3cqZAo" node="7Q_67PUJ2pa" resolve="identity" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="7Q_67PUJ2pw" role="3cqZAp">
                  <node concept="2OqwBi" id="7Q_67PUJ7AO" role="3clFbG">
                    <node concept="37vLTw" id="7Q_67PUJ3er" role="2Oq$k0">
                      <ref role="3cqZAo" node="7Q_67PUJ2ol" resolve="retained" />
                    </node>
                    <node concept="liA8E" id="7Q_67PUJ7AP" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                      <node concept="37vLTw" id="7Q_67PUJ7AQ" role="37wK5m">
                        <ref role="3cqZAo" node="7Q_67PUJ2pa" resolve="identity" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="7Q_67PUJ2p$" role="3cqZAp">
                  <node concept="3cpWsn" id="7Q_67PUJ2pz" role="3cpWs9">
                    <property role="TrG5h" value="occupant" />
                    <node concept="3Tqbb2" id="7Q_67PUJa0C" role="1tU5fm" />
                    <node concept="2OqwBi" id="7Q_67PUJ7Be" role="33vP2m">
                      <node concept="liA8E" id="7Q_67PUJ7Bf" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SModel.getNode(org.jetbrains.mps.openapi.model.SNodeId)" resolve="getNode" />
                        <node concept="2OqwBi" id="7Q_67PUJ927" role="37wK5m">
                          <node concept="liA8E" id="7Q_67PUJ928" role="2OqNvi">
                            <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                          </node>
                          <node concept="2JrnkZ" id="7Q_67PUJ9Y7" role="2Oq$k0">
                            <node concept="2OqwBi" id="7Q_67PUJ8Vi" role="2JrQYb">
                              <node concept="37vLTw" id="7Q_67PUJ8wR" role="2Oq$k0">
                                <ref role="3cqZAo" node="7Q_67PUJ2pW" resolve="mapping" />
                              </node>
                              <node concept="liA8E" id="7Q_67PUJ8Vj" role="2OqNvi">
                                <ref role="37wK5l" to="33ny:~Map$Entry.getValue()" resolve="getValue" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2JrnkZ" id="7Q_67PUJ9Y6" role="2Oq$k0">
                        <node concept="2OqwBi" id="7Q_67PUJ3ex" role="2JrQYb">
                          <node concept="37vLTw" id="7Q_67PUJ3ew" role="2Oq$k0">
                            <ref role="3cqZAo" node="7Q_67PUJ2q2" resolve="candidate" />
                          </node>
                          <node concept="2OwXpG" id="7Q_67PUJ3ey" role="2OqNvi">
                            <ref role="2Oxat5" node="7Q_67PUJ1Rp" resolve="target" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="7Q_67PUJ2pD" role="3cqZAp">
                  <node concept="1Wc70l" id="7Q_67PUJ2pE" role="3clFbw">
                    <node concept="1Wc70l" id="7Q_67PUJ2pF" role="3uHU7B">
                      <node concept="3y3z36" id="7Q_67PUJ2pG" role="3uHU7B">
                        <node concept="37vLTw" id="7Q_67PUJ2pH" role="3uHU7B">
                          <ref role="3cqZAo" node="7Q_67PUJ2pz" resolve="occupant" />
                        </node>
                        <node concept="10Nm6u" id="7Q_67PUJ2pI" role="3uHU7w" />
                      </node>
                      <node concept="3y3z36" id="7Q_67PUJ2pJ" role="3uHU7w">
                        <node concept="37vLTw" id="7Q_67PUJ2pK" role="3uHU7B">
                          <ref role="3cqZAo" node="7Q_67PUJ2pz" resolve="occupant" />
                        </node>
                        <node concept="2OqwBi" id="7Q_67PUJ7Cc" role="3uHU7w">
                          <node concept="37vLTw" id="7Q_67PUJ3eC" role="2Oq$k0">
                            <ref role="3cqZAo" node="7Q_67PUJ2pW" resolve="mapping" />
                          </node>
                          <node concept="liA8E" id="7Q_67PUJ7Cd" role="2OqNvi">
                            <ref role="37wK5l" to="33ny:~Map$Entry.getValue()" resolve="getValue" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3fqX7Q" id="7Q_67PUJ2pM" role="3uHU7w">
                      <node concept="2OqwBi" id="7Q_67PUJ7Ej" role="3fr31v">
                        <node concept="37vLTw" id="7Q_67PUJ3eG" role="2Oq$k0">
                          <ref role="3cqZAo" node="7Q_67PUJ2of" resolve="replaced" />
                        </node>
                        <node concept="liA8E" id="7Q_67PUJ7Ek" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~Set.contains(java.lang.Object)" resolve="contains" />
                          <node concept="37vLTw" id="7Q_67PUJ7El" role="37wK5m">
                            <ref role="3cqZAo" node="7Q_67PUJ2pz" resolve="occupant" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="7Q_67PUJ2pQ" role="3clFbx">
                    <node concept="3clFbF" id="7Q_67PUJ2pR" role="3cqZAp">
                      <node concept="2OqwBi" id="7Q_67PUJ7GB" role="3clFbG">
                        <node concept="37vLTw" id="7Q_67PUJ3eL" role="2Oq$k0">
                          <ref role="3cqZAo" node="7Q_67PUJ2o4" resolve="conflicts" />
                        </node>
                        <node concept="liA8E" id="7Q_67PUJ7GC" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                          <node concept="3cpWs3" id="7Q_67PUJ7GD" role="37wK5m">
                            <node concept="Xl_RD" id="7Q_67PUJ7GE" role="3uHU7B">
                              <property role="Xl_RC" value="MBNF_GENERATED_ID_COLLISION: " />
                            </node>
                            <node concept="37vLTw" id="7Q_67PUJ7GF" role="3uHU7w">
                              <ref role="3cqZAo" node="7Q_67PUJ2pa" resolve="identity" />
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
        <node concept="1DcWWT" id="7Q_67PUJ2q6" role="3cqZAp">
          <node concept="2OqwBi" id="7Q_67PUJ8Wr" role="1DdaDG">
            <node concept="2OqwBi" id="7Q_67PUJ8xZ" role="2Oq$k0">
              <node concept="liA8E" id="7Q_67PUJ8y0" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SModel.getRepository()" resolve="getRepository" />
              </node>
              <node concept="2JrnkZ" id="7Q_67PUJ9Y8" role="2Oq$k0">
                <node concept="2OqwBi" id="7Q_67PUJ2rw" role="2JrQYb">
                  <node concept="2OqwBi" id="7Q_67PUJ7Jj" role="2Oq$k0">
                    <node concept="37vLTw" id="7Q_67PUJ3fe" role="2Oq$k0">
                      <ref role="3cqZAo" node="7Q_67PUJ2nY" resolve="candidates" />
                    </node>
                    <node concept="liA8E" id="7Q_67PUJ7Jk" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                      <node concept="3cmrfG" id="7Q_67PUJ7Jl" role="37wK5m">
                        <property role="3cmrfH" value="0" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OwXpG" id="7Q_67PUJ2rz" role="2OqNvi">
                    <ref role="2Oxat5" node="7Q_67PUJ1Rp" resolve="target" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="7Q_67PUJ8Ws" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~SRepository.getModules()" resolve="getModules" />
            </node>
          </node>
          <node concept="3cpWsn" id="7Q_67PUJ2rr" role="1Duv9x">
            <property role="TrG5h" value="module" />
            <node concept="3uibUv" id="7Q_67PUJ2rt" role="1tU5fm">
              <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
            </node>
          </node>
          <node concept="3clFbS" id="7Q_67PUJ2q8" role="2LFqv$">
            <node concept="1DcWWT" id="7Q_67PUJ2q9" role="3cqZAp">
              <node concept="2OqwBi" id="7Q_67PUJ7Jv" role="1DdaDG">
                <node concept="37vLTw" id="7Q_67PUJ3fj" role="2Oq$k0">
                  <ref role="3cqZAo" node="7Q_67PUJ2rr" resolve="module" />
                </node>
                <node concept="liA8E" id="7Q_67PUJ7Jw" role="2OqNvi">
                  <ref role="37wK5l" to="lui2:~SModule.getModels()" resolve="getModels" />
                </node>
              </node>
              <node concept="3cpWsn" id="7Q_67PUJ2rn" role="1Duv9x">
                <property role="TrG5h" value="model" />
                <node concept="H_c77" id="7Q_67PUJa0D" role="1tU5fm" />
              </node>
              <node concept="3clFbS" id="7Q_67PUJ2qb" role="2LFqv$">
                <node concept="3clFbJ" id="7Q_67PUJ2qc" role="3cqZAp">
                  <node concept="2OqwBi" id="7Q_67PUJ7JE" role="3clFbw">
                    <node concept="liA8E" id="7Q_67PUJ7JF" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SModel.isReadOnly()" resolve="isReadOnly" />
                    </node>
                    <node concept="2JrnkZ" id="7Q_67PUJ9Y9" role="2Oq$k0">
                      <node concept="37vLTw" id="7Q_67PUJ3fn" role="2JrQYb">
                        <ref role="3cqZAo" node="7Q_67PUJ2rn" resolve="model" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="7Q_67PUJ2qf" role="3clFbx">
                    <node concept="3N13vt" id="7Q_67PUJ2qg" role="3cqZAp" />
                  </node>
                </node>
                <node concept="3cpWs8" id="7Q_67PUJ2qi" role="3cqZAp">
                  <node concept="3cpWsn" id="7Q_67PUJ2qh" role="3cpWs9">
                    <property role="TrG5h" value="modelNodes" />
                    <node concept="3uibUv" id="7Q_67PUJ2qj" role="1tU5fm">
                      <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
                      <node concept="3Tqbb2" id="7Q_67PUJa0E" role="11_B2D" />
                    </node>
                    <node concept="2ShNRf" id="7Q_67PUJ3fp" role="33vP2m">
                      <node concept="1pGfFk" id="7Q_67PUJ3ft" role="2ShVmc">
                        <property role="373rjd" value="true" />
                        <ref role="37wK5l" to="33ny:~HashSet.&lt;init&gt;()" resolve="HashSet" />
                        <node concept="3Tqbb2" id="7Q_67PUJa0F" role="1pMfVU" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1DcWWT" id="7Q_67PUJ2qn" role="3cqZAp">
                  <node concept="2OqwBi" id="7Q_67PUJ7JP" role="1DdaDG">
                    <node concept="liA8E" id="7Q_67PUJ7JQ" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SModel.getRootNodes()" resolve="getRootNodes" />
                    </node>
                    <node concept="2JrnkZ" id="7Q_67PUJ9Ya" role="2Oq$k0">
                      <node concept="37vLTw" id="7Q_67PUJ3fx" role="2JrQYb">
                        <ref role="3cqZAo" node="7Q_67PUJ2rn" resolve="model" />
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWsn" id="7Q_67PUJ2qu" role="1Duv9x">
                    <property role="TrG5h" value="root" />
                    <node concept="3Tqbb2" id="7Q_67PUJa0G" role="1tU5fm" />
                  </node>
                  <node concept="3clFbS" id="7Q_67PUJ2qp" role="2LFqv$">
                    <node concept="3clFbF" id="7Q_67PUJ2qq" role="3cqZAp">
                      <node concept="1rXfSq" id="7Q_67PUJ2qr" role="3clFbG">
                        <ref role="37wK5l" node="7Q_67PUJ2nA" resolve="nodes" />
                        <node concept="37vLTw" id="7Q_67PUJ2qs" role="37wK5m">
                          <ref role="3cqZAo" node="7Q_67PUJ2qu" resolve="root" />
                        </node>
                        <node concept="37vLTw" id="7Q_67PUJ2qt" role="37wK5m">
                          <ref role="3cqZAo" node="7Q_67PUJ2qh" resolve="modelNodes" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1DcWWT" id="7Q_67PUJ2qy" role="3cqZAp">
                  <node concept="37vLTw" id="7Q_67PUJ2rm" role="1DdaDG">
                    <ref role="3cqZAo" node="7Q_67PUJ2qh" resolve="modelNodes" />
                  </node>
                  <node concept="3cpWsn" id="7Q_67PUJ2rj" role="1Duv9x">
                    <property role="TrG5h" value="node" />
                    <node concept="3Tqbb2" id="7Q_67PUJa0H" role="1tU5fm" />
                  </node>
                  <node concept="3clFbS" id="7Q_67PUJ2q$" role="2LFqv$">
                    <node concept="3clFbJ" id="7Q_67PUJ2q_" role="3cqZAp">
                      <node concept="22lmx$" id="7Q_67PUJ2qA" role="3clFbw">
                        <node concept="2OqwBi" id="7Q_67PUJ7LW" role="3uHU7B">
                          <node concept="37vLTw" id="7Q_67PUJ3f_" role="2Oq$k0">
                            <ref role="3cqZAo" node="7Q_67PUJ2of" resolve="replaced" />
                          </node>
                          <node concept="liA8E" id="7Q_67PUJ7LX" role="2OqNvi">
                            <ref role="37wK5l" to="33ny:~Set.contains(java.lang.Object)" resolve="contains" />
                            <node concept="37vLTw" id="7Q_67PUJ7LY" role="37wK5m">
                              <ref role="3cqZAo" node="7Q_67PUJ2rj" resolve="node" />
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="7Q_67PUJ8yg" role="3uHU7w">
                          <node concept="2OqwBi" id="7Q_67PUJ7Mg" role="2Oq$k0">
                            <node concept="liA8E" id="7Q_67PUJ7Mh" role="2OqNvi">
                              <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                            </node>
                            <node concept="2JrnkZ" id="7Q_67PUJ9Yb" role="2Oq$k0">
                              <node concept="37vLTw" id="7Q_67PUJ3fM" role="2JrQYb">
                                <ref role="3cqZAo" node="7Q_67PUJ2rj" resolve="node" />
                              </node>
                            </node>
                          </node>
                          <node concept="liA8E" id="7Q_67PUJ8yh" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                            <node concept="37vLTw" id="7Q_67PUJ8yi" role="37wK5m">
                              <ref role="3cqZAo" node="7Q_67PUJ1SD" resolve="ARTIFACT" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="7Q_67PUJ2qH" role="3clFbx">
                        <node concept="3N13vt" id="7Q_67PUJ2qI" role="3cqZAp" />
                      </node>
                    </node>
                    <node concept="1DcWWT" id="7Q_67PUJ2qJ" role="3cqZAp">
                      <node concept="2OqwBi" id="7Q_67PUJ7Mr" role="1DdaDG">
                        <node concept="liA8E" id="7Q_67PUJ7Ms" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SNode.getReferences()" resolve="getReferences" />
                        </node>
                        <node concept="2JrnkZ" id="7Q_67PUJ9Yc" role="2Oq$k0">
                          <node concept="37vLTw" id="7Q_67PUJ3fQ" role="2JrQYb">
                            <ref role="3cqZAo" node="7Q_67PUJ2rj" resolve="node" />
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWsn" id="7Q_67PUJ2rf" role="1Duv9x">
                        <property role="TrG5h" value="reference" />
                        <node concept="3uibUv" id="7Q_67PUJ2rh" role="1tU5fm">
                          <ref role="3uigEE" to="mhbf:~SReference" resolve="SReference" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="7Q_67PUJ2qL" role="2LFqv$">
                        <node concept="3cpWs8" id="7Q_67PUJ2qN" role="3cqZAp">
                          <node concept="3cpWsn" id="7Q_67PUJ2qM" role="3cpWs9">
                            <property role="TrG5h" value="target" />
                            <node concept="3Tqbb2" id="7Q_67PUJa0I" role="1tU5fm" />
                            <node concept="2OqwBi" id="7Q_67PUJ7MA" role="33vP2m">
                              <node concept="37vLTw" id="7Q_67PUJ3fU" role="2Oq$k0">
                                <ref role="3cqZAo" node="7Q_67PUJ2rf" resolve="reference" />
                              </node>
                              <node concept="liA8E" id="7Q_67PUJ7MB" role="2OqNvi">
                                <ref role="37wK5l" to="mhbf:~SReference.getTargetNode()" resolve="getTargetNode" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbJ" id="7Q_67PUJ2qQ" role="3cqZAp">
                          <node concept="1Wc70l" id="7Q_67PUJ2qR" role="3clFbw">
                            <node concept="1Wc70l" id="7Q_67PUJ2qS" role="3uHU7B">
                              <node concept="3y3z36" id="7Q_67PUJ2qT" role="3uHU7B">
                                <node concept="37vLTw" id="7Q_67PUJ2qU" role="3uHU7B">
                                  <ref role="3cqZAo" node="7Q_67PUJ2qM" resolve="target" />
                                </node>
                                <node concept="10Nm6u" id="7Q_67PUJ2qV" role="3uHU7w" />
                              </node>
                              <node concept="2OqwBi" id="7Q_67PUJ7OH" role="3uHU7w">
                                <node concept="37vLTw" id="7Q_67PUJ3fY" role="2Oq$k0">
                                  <ref role="3cqZAo" node="7Q_67PUJ2of" resolve="replaced" />
                                </node>
                                <node concept="liA8E" id="7Q_67PUJ7OI" role="2OqNvi">
                                  <ref role="37wK5l" to="33ny:~Set.contains(java.lang.Object)" resolve="contains" />
                                  <node concept="37vLTw" id="7Q_67PUJ7OJ" role="37wK5m">
                                    <ref role="3cqZAo" node="7Q_67PUJ2qM" resolve="target" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3fqX7Q" id="7Q_67PUJ2qY" role="3uHU7w">
                              <node concept="2OqwBi" id="7Q_67PUJ7QP" role="3fr31v">
                                <node concept="37vLTw" id="7Q_67PUJ3g3" role="2Oq$k0">
                                  <ref role="3cqZAo" node="7Q_67PUJ2ol" resolve="retained" />
                                </node>
                                <node concept="liA8E" id="7Q_67PUJ7QQ" role="2OqNvi">
                                  <ref role="37wK5l" to="33ny:~Set.contains(java.lang.Object)" resolve="contains" />
                                  <node concept="2OqwBi" id="7Q_67PUJ92$" role="37wK5m">
                                    <node concept="2OqwBi" id="7Q_67PUJ8WJ" role="2Oq$k0">
                                      <node concept="liA8E" id="7Q_67PUJ8WK" role="2OqNvi">
                                        <ref role="37wK5l" to="mhbf:~SNode.getReference()" resolve="getReference" />
                                      </node>
                                      <node concept="2JrnkZ" id="7Q_67PUJ9Yd" role="2Oq$k0">
                                        <node concept="37vLTw" id="7Q_67PUJ8yt" role="2JrQYb">
                                          <ref role="3cqZAo" node="7Q_67PUJ2qM" resolve="target" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="7Q_67PUJ92_" role="2OqNvi">
                                      <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbS" id="7Q_67PUJ2r3" role="3clFbx">
                            <node concept="3clFbF" id="7Q_67PUJ2r4" role="3cqZAp">
                              <node concept="2OqwBi" id="7Q_67PUJ7Ta" role="3clFbG">
                                <node concept="37vLTw" id="7Q_67PUJ3g9" role="2Oq$k0">
                                  <ref role="3cqZAo" node="7Q_67PUJ2o4" resolve="conflicts" />
                                </node>
                                <node concept="liA8E" id="7Q_67PUJ7Tb" role="2OqNvi">
                                  <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                                  <node concept="3cpWs3" id="7Q_67PUJ7Tc" role="37wK5m">
                                    <node concept="3cpWs3" id="7Q_67PUJ7Td" role="3uHU7B">
                                      <node concept="3cpWs3" id="7Q_67PUJ7Te" role="3uHU7B">
                                        <node concept="Xl_RD" id="7Q_67PUJ7Tf" role="3uHU7B">
                                          <property role="Xl_RC" value="MBNF_REFERENCED_REMOVAL: " />
                                        </node>
                                        <node concept="2OqwBi" id="7Q_67PUJ92Q" role="3uHU7w">
                                          <node concept="2OqwBi" id="7Q_67PUJ8X2" role="2Oq$k0">
                                            <node concept="liA8E" id="7Q_67PUJ8X3" role="2OqNvi">
                                              <ref role="37wK5l" to="mhbf:~SNode.getReference()" resolve="getReference" />
                                            </node>
                                            <node concept="2JrnkZ" id="7Q_67PUJ9Ye" role="2Oq$k0">
                                              <node concept="37vLTw" id="7Q_67PUJ8yD" role="2JrQYb">
                                                <ref role="3cqZAo" node="7Q_67PUJ2rj" resolve="node" />
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="liA8E" id="7Q_67PUJ92R" role="2OqNvi">
                                            <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="Xl_RD" id="7Q_67PUJ7Ti" role="3uHU7w">
                                        <property role="Xl_RC" value=" -&gt; " />
                                      </node>
                                    </node>
                                    <node concept="2OqwBi" id="7Q_67PUJ93j" role="3uHU7w">
                                      <node concept="2OqwBi" id="7Q_67PUJ8Xm" role="2Oq$k0">
                                        <node concept="liA8E" id="7Q_67PUJ8Xn" role="2OqNvi">
                                          <ref role="37wK5l" to="mhbf:~SNode.getReference()" resolve="getReference" />
                                        </node>
                                        <node concept="2JrnkZ" id="7Q_67PUJ9Yf" role="2Oq$k0">
                                          <node concept="37vLTw" id="7Q_67PUJ8yP" role="2JrQYb">
                                            <ref role="3cqZAo" node="7Q_67PUJ2qM" resolve="target" />
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="liA8E" id="7Q_67PUJ93k" role="2OqNvi">
                                        <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
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
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="7Q_67PUJ2r$" role="1B3o_S" />
      <node concept="3cqZAl" id="7Q_67PUJ2r_" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="7Q_67PUJ2rA" role="jymVt">
      <property role="TrG5h" value="cloneTree" />
      <node concept="37vLTG" id="7Q_67PUJ2rB" role="3clF46">
        <property role="TrG5h" value="generated" />
        <node concept="3Tqbb2" id="7Q_67PUJa0J" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7Q_67PUJ2rD" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="H_c77" id="7Q_67PUJa0K" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7Q_67PUJ2rF" role="3clF46">
        <property role="TrG5h" value="correspondence" />
        <node concept="3uibUv" id="7Q_67PUJ2rG" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
          <node concept="3Tqbb2" id="7Q_67PUJa0L" role="11_B2D" />
          <node concept="3Tqbb2" id="7Q_67PUJa0M" role="11_B2D" />
        </node>
      </node>
      <node concept="37vLTG" id="7Q_67PUJ2rJ" role="3clF46">
        <property role="TrG5h" value="key" />
        <node concept="3uibUv" id="7Q_67PUJ2rK" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="37vLTG" id="7Q_67PUJ2rL" role="3clF46">
        <property role="TrG5h" value="path" />
        <node concept="3uibUv" id="7Q_67PUJ2rM" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="37vLTG" id="7Q_67PUJ2rN" role="3clF46">
        <property role="TrG5h" value="existing" />
        <node concept="3Tqbb2" id="7Q_67PUJa0N" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7Q_67PUJ2rP" role="3clF46">
        <property role="TrG5h" value="candidates" />
        <node concept="3uibUv" id="7Q_67PUJ2rQ" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="7Q_67PUJ2rR" role="11_B2D">
            <ref role="3uigEE" node="7Q_67PUJ1Rj" resolve="ProtectedRegeneration.Candidate" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="7Q_67PUJ2rS" role="3clF47">
        <node concept="3cpWs8" id="7Q_67PUJ2rU" role="3cqZAp">
          <node concept="3cpWsn" id="7Q_67PUJ2rT" role="3cpWs9">
            <property role="TrG5h" value="identity" />
            <node concept="3uibUv" id="7Q_67PUJ2rV" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
            <node concept="2YIFZM" id="694jTX$Z$gP" role="33vP2m">
              <ref role="1Pybhc" to="wyt6:~Long" resolve="Long" />
              <ref role="37wK5l" to="wyt6:~Long.toString(long)" resolve="toString" />
              <node concept="2YIFZM" id="694jTX$Z$hE" role="37wK5m">
                <ref role="1Pybhc" to="wyt6:~Long" resolve="Long" />
                <ref role="37wK5l" to="wyt6:~Long.parseUnsignedLong(java.lang.String,int)" resolve="parseUnsignedLong" />
                <node concept="2OqwBi" id="694jTX$Z$oW" role="37wK5m">
                  <node concept="1rXfSq" id="694jTX$Z$hG" role="2Oq$k0">
                    <ref role="37wK5l" node="7Q_67PUJ2xf" resolve="digest" />
                    <node concept="3cpWs3" id="694jTX$Z$hH" role="37wK5m">
                      <node concept="37vLTw" id="694jTX$Z$hI" role="3uHU7B">
                        <ref role="3cqZAo" node="7Q_67PUJ2rJ" resolve="key" />
                      </node>
                      <node concept="37vLTw" id="694jTX$Z$hJ" role="3uHU7w">
                        <ref role="3cqZAo" node="7Q_67PUJ2rL" resolve="path" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="694jTX$Z$oX" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.substring(int,int)" resolve="substring" />
                    <node concept="3cmrfG" id="694jTX$Z$oY" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="3cmrfG" id="694jTX$Z$oZ" role="37wK5m">
                      <property role="3cmrfH" value="15" />
                    </node>
                  </node>
                </node>
                <node concept="3cmrfG" id="694jTX$Z$hM" role="37wK5m">
                  <property role="3cmrfH" value="16" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7Q_67PUJ2s3" role="3cqZAp">
          <node concept="3cpWsn" id="7Q_67PUJ2s2" role="3cpWs9">
            <property role="TrG5h" value="copy" />
            <node concept="3Tqbb2" id="7Q_67PUJa0O" role="1tU5fm" />
            <node concept="2OqwBi" id="7Q_67PUJ7Tu" role="33vP2m">
              <node concept="liA8E" id="7Q_67PUJ7Tv" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SModel.createNode(org.jetbrains.mps.openapi.language.SConcept,org.jetbrains.mps.openapi.model.SNodeId)" resolve="createNode" />
                <node concept="2OqwBi" id="7Q_67PUJ8Xx" role="37wK5m">
                  <node concept="liA8E" id="7Q_67PUJ8Xy" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                  </node>
                  <node concept="2JrnkZ" id="7Q_67PUJ9Yh" role="2Oq$k0">
                    <node concept="37vLTw" id="7Q_67PUJ8yT" role="2JrQYb">
                      <ref role="3cqZAo" node="7Q_67PUJ2rB" resolve="generated" />
                    </node>
                  </node>
                </node>
                <node concept="3K4zz7" id="7Q_67PUJ7Tx" role="37wK5m">
                  <node concept="3clFbC" id="7Q_67PUJ7Ty" role="3K4Cdx">
                    <node concept="37vLTw" id="7Q_67PUJ7Tz" role="3uHU7B">
                      <ref role="3cqZAo" node="7Q_67PUJ2rN" resolve="existing" />
                    </node>
                    <node concept="10Nm6u" id="7Q_67PUJ7T$" role="3uHU7w" />
                  </node>
                  <node concept="2OqwBi" id="7Q_67PUJ8XH" role="3K4E3e">
                    <node concept="2YIFZM" id="7Q_67PUJ8z5" role="2Oq$k0">
                      <ref role="1Pybhc" to="dush:~PersistenceFacade" resolve="PersistenceFacade" />
                      <ref role="37wK5l" to="dush:~PersistenceFacade.getInstance()" resolve="getInstance" />
                    </node>
                    <node concept="liA8E" id="7Q_67PUJ8XI" role="2OqNvi">
                      <ref role="37wK5l" to="dush:~PersistenceFacade.createNodeId(java.lang.String)" resolve="createNodeId" />
                      <node concept="37vLTw" id="7Q_67PUJ8XJ" role="37wK5m">
                        <ref role="3cqZAo" node="7Q_67PUJ2rT" resolve="identity" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="7Q_67PUJ8XT" role="3K4GZi">
                    <node concept="liA8E" id="7Q_67PUJ8XU" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                    </node>
                    <node concept="2JrnkZ" id="7Q_67PUJ9Yi" role="2Oq$k0">
                      <node concept="37vLTw" id="7Q_67PUJ8z8" role="2JrQYb">
                        <ref role="3cqZAo" node="7Q_67PUJ2rN" resolve="existing" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2JrnkZ" id="7Q_67PUJ9Yg" role="2Oq$k0">
                <node concept="37vLTw" id="7Q_67PUJ3gm" role="2JrQYb">
                  <ref role="3cqZAo" node="7Q_67PUJ2rD" resolve="target" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7Q_67PUJ2sf" role="3cqZAp">
          <node concept="2OqwBi" id="7Q_67PUJ7Xn" role="3clFbG">
            <node concept="37vLTw" id="7Q_67PUJ3gz" role="2Oq$k0">
              <ref role="3cqZAo" node="7Q_67PUJ2rF" resolve="correspondence" />
            </node>
            <node concept="liA8E" id="7Q_67PUJ7Xo" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
              <node concept="37vLTw" id="7Q_67PUJ7Xp" role="37wK5m">
                <ref role="3cqZAo" node="7Q_67PUJ2rB" resolve="generated" />
              </node>
              <node concept="37vLTw" id="7Q_67PUJ7Xq" role="37wK5m">
                <ref role="3cqZAo" node="7Q_67PUJ2s2" resolve="copy" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="7Q_67PUJ2sj" role="3cqZAp">
          <node concept="2OqwBi" id="7Q_67PUJ7X$" role="1DdaDG">
            <node concept="liA8E" id="7Q_67PUJ7X_" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNode.getProperties()" resolve="getProperties" />
            </node>
            <node concept="2JrnkZ" id="7Q_67PUJ9Yj" role="2Oq$k0">
              <node concept="37vLTw" id="7Q_67PUJ3gD" role="2JrQYb">
                <ref role="3cqZAo" node="7Q_67PUJ2rB" resolve="generated" />
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="7Q_67PUJ2sZ" role="1Duv9x">
            <property role="TrG5h" value="property" />
            <node concept="3uibUv" id="7Q_67PUJ2t1" role="1tU5fm">
              <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
            </node>
          </node>
          <node concept="3clFbS" id="7Q_67PUJ2sl" role="2LFqv$">
            <node concept="3cpWs8" id="7Q_67PUJ2sn" role="3cqZAp">
              <node concept="3cpWsn" id="7Q_67PUJ2sm" role="3cpWs9">
                <property role="TrG5h" value="value" />
                <node concept="3uibUv" id="7Q_67PUJ2so" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
                <node concept="2OqwBi" id="7Q_67PUJ7XJ" role="33vP2m">
                  <node concept="liA8E" id="7Q_67PUJ7XK" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SNode.getProperty(org.jetbrains.mps.openapi.language.SProperty)" resolve="getProperty" />
                    <node concept="37vLTw" id="7Q_67PUJ7XL" role="37wK5m">
                      <ref role="3cqZAo" node="7Q_67PUJ2sZ" resolve="property" />
                    </node>
                  </node>
                  <node concept="2JrnkZ" id="7Q_67PUJ9Yk" role="2Oq$k0">
                    <node concept="37vLTw" id="7Q_67PUJ3gH" role="2JrQYb">
                      <ref role="3cqZAo" node="7Q_67PUJ2rB" resolve="generated" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="7Q_67PUJ2sr" role="3cqZAp">
              <node concept="22lmx$" id="7Q_67PUJ2ss" role="3clFbw">
                <node concept="22lmx$" id="7Q_67PUJ2st" role="3uHU7B">
                  <node concept="2OqwBi" id="7Q_67PUJ7XV" role="3uHU7B">
                    <node concept="37vLTw" id="7Q_67PUJ3gM" role="2Oq$k0">
                      <ref role="3cqZAo" node="7Q_67PUJ2sZ" resolve="property" />
                    </node>
                    <node concept="liA8E" id="7Q_67PUJ7XW" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                      <node concept="37vLTw" id="7Q_67PUJ7XX" role="37wK5m">
                        <ref role="3cqZAo" node="7Q_67PUJ1SL" resolve="CONCEPT_ID" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="7Q_67PUJ7Y7" role="3uHU7w">
                    <node concept="37vLTw" id="7Q_67PUJ3gR" role="2Oq$k0">
                      <ref role="3cqZAo" node="7Q_67PUJ2sZ" resolve="property" />
                    </node>
                    <node concept="liA8E" id="7Q_67PUJ7Y8" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                      <node concept="37vLTw" id="7Q_67PUJ7Y9" role="37wK5m">
                        <ref role="3cqZAo" node="7Q_67PUJ1SP" resolve="PROPERTY_ID" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="7Q_67PUJ7Yj" role="3uHU7w">
                  <node concept="37vLTw" id="7Q_67PUJ3gW" role="2Oq$k0">
                    <ref role="3cqZAo" node="7Q_67PUJ2sZ" resolve="property" />
                  </node>
                  <node concept="liA8E" id="7Q_67PUJ7Yk" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                    <node concept="37vLTw" id="7Q_67PUJ7Yl" role="37wK5m">
                      <ref role="3cqZAo" node="7Q_67PUJ1ST" resolve="LINK_ID" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="7Q_67PUJ2s_" role="3clFbx">
                <node concept="3clFbF" id="7Q_67PUJ2sA" role="3cqZAp">
                  <node concept="37vLTI" id="7Q_67PUJ2sB" role="3clFbG">
                    <node concept="37vLTw" id="7Q_67PUJ2sC" role="37vLTJ">
                      <ref role="3cqZAo" node="7Q_67PUJ2sm" resolve="value" />
                    </node>
                    <node concept="3K4zz7" id="7Q_67PUJ2sU" role="37vLTx">
                      <node concept="3clFbC" id="7Q_67PUJ2sD" role="3K4Cdx">
                        <node concept="37vLTw" id="7Q_67PUJ2sE" role="3uHU7B">
                          <ref role="3cqZAo" node="7Q_67PUJ2rN" resolve="existing" />
                        </node>
                        <node concept="10Nm6u" id="7Q_67PUJ2sF" role="3uHU7w" />
                      </node>
                      <node concept="2YIFZM" id="7Q_67PUJ3h1" role="3K4E3e">
                        <ref role="1Pybhc" to="wyt6:~Long" resolve="Long" />
                        <ref role="37wK5l" to="wyt6:~Long.toString(long)" resolve="toString" />
                        <node concept="2YIFZM" id="7Q_67PUJ7Yo" role="37wK5m">
                          <ref role="1Pybhc" to="wyt6:~Long" resolve="Long" />
                          <ref role="37wK5l" to="wyt6:~Long.parseUnsignedLong(java.lang.String,int)" resolve="parseUnsignedLong" />
                          <node concept="2OqwBi" id="7Q_67PUJ8Jn" role="37wK5m">
                            <node concept="1rXfSq" id="7Q_67PUJ7Yq" role="2Oq$k0">
                              <ref role="37wK5l" node="7Q_67PUJ2xf" resolve="digest" />
                              <node concept="3cpWs3" id="7Q_67PUJ7Yr" role="37wK5m">
                                <node concept="3cpWs3" id="7Q_67PUJ7Ys" role="3uHU7B">
                                  <node concept="37vLTw" id="7Q_67PUJ7Yt" role="3uHU7B">
                                    <ref role="3cqZAo" node="7Q_67PUJ2rJ" resolve="key" />
                                  </node>
                                  <node concept="37vLTw" id="7Q_67PUJ7Yu" role="3uHU7w">
                                    <ref role="3cqZAo" node="7Q_67PUJ2rL" resolve="path" />
                                  </node>
                                </node>
                                <node concept="2OqwBi" id="7Q_67PUJ93v" role="3uHU7w">
                                  <node concept="37vLTw" id="7Q_67PUJ8XX" role="2Oq$k0">
                                    <ref role="3cqZAo" node="7Q_67PUJ2sZ" resolve="property" />
                                  </node>
                                  <node concept="liA8E" id="7Q_67PUJ93w" role="2OqNvi">
                                    <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="liA8E" id="7Q_67PUJ8Jo" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~String.substring(int,int)" resolve="substring" />
                              <node concept="3cmrfG" id="7Q_67PUJ8Jp" role="37wK5m">
                                <property role="3cmrfH" value="0" />
                              </node>
                              <node concept="3cmrfG" id="7Q_67PUJ8Jq" role="37wK5m">
                                <property role="3cmrfH" value="15" />
                              </node>
                            </node>
                          </node>
                          <node concept="3cmrfG" id="7Q_67PUJ7Yy" role="37wK5m">
                            <property role="3cmrfH" value="16" />
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="7Q_67PUJ7YG" role="3K4GZi">
                        <node concept="liA8E" id="7Q_67PUJ7YH" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SNode.getProperty(org.jetbrains.mps.openapi.language.SProperty)" resolve="getProperty" />
                          <node concept="37vLTw" id="7Q_67PUJ7YI" role="37wK5m">
                            <ref role="3cqZAo" node="7Q_67PUJ2sZ" resolve="property" />
                          </node>
                        </node>
                        <node concept="2JrnkZ" id="7Q_67PUJ9Yl" role="2Oq$k0">
                          <node concept="37vLTw" id="7Q_67PUJ3hf" role="2JrQYb">
                            <ref role="3cqZAo" node="7Q_67PUJ2rN" resolve="existing" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7Q_67PUJ2sV" role="3cqZAp">
              <node concept="2OqwBi" id="7Q_67PUJ7YT" role="3clFbG">
                <node concept="liA8E" id="7Q_67PUJ7YU" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.setProperty(org.jetbrains.mps.openapi.language.SProperty,java.lang.String)" resolve="setProperty" />
                  <node concept="37vLTw" id="7Q_67PUJ7YV" role="37wK5m">
                    <ref role="3cqZAo" node="7Q_67PUJ2sZ" resolve="property" />
                  </node>
                  <node concept="37vLTw" id="7Q_67PUJ7YW" role="37wK5m">
                    <ref role="3cqZAo" node="7Q_67PUJ2sm" resolve="value" />
                  </node>
                </node>
                <node concept="2JrnkZ" id="7Q_67PUJ9Ym" role="2Oq$k0">
                  <node concept="37vLTw" id="7Q_67PUJ3hk" role="2JrQYb">
                    <ref role="3cqZAo" node="7Q_67PUJ2s2" resolve="copy" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7Q_67PUJ2t4" role="3cqZAp">
          <node concept="3cpWsn" id="7Q_67PUJ2t3" role="3cpWs9">
            <property role="TrG5h" value="index" />
            <node concept="10Oyi0" id="7Q_67PUJ2t5" role="1tU5fm" />
            <node concept="3cmrfG" id="7Q_67PUJ2t6" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="7Q_67PUJ2t7" role="3cqZAp">
          <node concept="2OqwBi" id="7Q_67PUJ7Z6" role="1DdaDG">
            <node concept="liA8E" id="7Q_67PUJ7Z7" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNode.getChildren()" resolve="getChildren" />
            </node>
            <node concept="2JrnkZ" id="7Q_67PUJ9Yn" role="2Oq$k0">
              <node concept="37vLTw" id="7Q_67PUJ3hq" role="2JrQYb">
                <ref role="3cqZAo" node="7Q_67PUJ2rB" resolve="generated" />
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="7Q_67PUJ2us" role="1Duv9x">
            <property role="TrG5h" value="child" />
            <node concept="3Tqbb2" id="7Q_67PUJa0P" role="1tU5fm" />
          </node>
          <node concept="3clFbS" id="7Q_67PUJ2t9" role="2LFqv$">
            <node concept="3cpWs8" id="7Q_67PUJ2tb" role="3cqZAp">
              <node concept="3cpWsn" id="7Q_67PUJ2ta" role="3cpWs9">
                <property role="TrG5h" value="matching" />
                <node concept="3Tqbb2" id="7Q_67PUJa0Q" role="1tU5fm" />
                <node concept="10Nm6u" id="7Q_67PUJ2td" role="33vP2m" />
              </node>
            </node>
            <node concept="3cpWs8" id="7Q_67PUJ2tf" role="3cqZAp">
              <node concept="3cpWsn" id="7Q_67PUJ2te" role="3cpWs9">
                <property role="TrG5h" value="matches" />
                <node concept="10Oyi0" id="7Q_67PUJ2tg" role="1tU5fm" />
                <node concept="3cmrfG" id="7Q_67PUJ2th" role="33vP2m">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="7Q_67PUJ2tj" role="3cqZAp">
              <node concept="3cpWsn" id="7Q_67PUJ2ti" role="3cpWs9">
                <property role="TrG5h" value="childName" />
                <node concept="3uibUv" id="7Q_67PUJ2tk" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
                <node concept="2OqwBi" id="7Q_67PUJ7Zh" role="33vP2m">
                  <node concept="liA8E" id="7Q_67PUJ7Zi" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SNode.getName()" resolve="getName" />
                  </node>
                  <node concept="2JrnkZ" id="7Q_67PUJ9Yo" role="2Oq$k0">
                    <node concept="37vLTw" id="7Q_67PUJ3hu" role="2JrQYb">
                      <ref role="3cqZAo" node="7Q_67PUJ2us" resolve="child" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="7Q_67PUJ2tm" role="3cqZAp">
              <node concept="3y3z36" id="7Q_67PUJ2tn" role="3clFbw">
                <node concept="37vLTw" id="7Q_67PUJ2to" role="3uHU7B">
                  <ref role="3cqZAo" node="7Q_67PUJ2rN" resolve="existing" />
                </node>
                <node concept="10Nm6u" id="7Q_67PUJ2tp" role="3uHU7w" />
              </node>
              <node concept="3clFbS" id="7Q_67PUJ2tr" role="3clFbx">
                <node concept="1DcWWT" id="7Q_67PUJ2ts" role="3cqZAp">
                  <node concept="2OqwBi" id="7Q_67PUJ7Zs" role="1DdaDG">
                    <node concept="liA8E" id="7Q_67PUJ7Zt" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.getChildren(org.jetbrains.mps.openapi.language.SContainmentLink)" resolve="getChildren" />
                      <node concept="1rXfSq" id="7Q_67PUJ7Zu" role="37wK5m">
                        <ref role="37wK5l" node="7Q_67PUJ2k4" resolve="containment" />
                        <node concept="37vLTw" id="7Q_67PUJ7Zv" role="37wK5m">
                          <ref role="3cqZAo" node="7Q_67PUJ2us" resolve="child" />
                        </node>
                      </node>
                    </node>
                    <node concept="2JrnkZ" id="7Q_67PUJ9Yp" role="2Oq$k0">
                      <node concept="37vLTw" id="7Q_67PUJ3hy" role="2JrQYb">
                        <ref role="3cqZAo" node="7Q_67PUJ2rN" resolve="existing" />
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWsn" id="7Q_67PUJ2tV" role="1Duv9x">
                    <property role="TrG5h" value="before" />
                    <node concept="3Tqbb2" id="7Q_67PUJa0R" role="1tU5fm" />
                  </node>
                  <node concept="3clFbS" id="7Q_67PUJ2tu" role="2LFqv$">
                    <node concept="3clFbJ" id="7Q_67PUJ2tv" role="3cqZAp">
                      <node concept="1Wc70l" id="7Q_67PUJ2tw" role="3clFbw">
                        <node concept="2OqwBi" id="7Q_67PUJ8JE" role="3uHU7B">
                          <node concept="2OqwBi" id="7Q_67PUJ7ZL" role="2Oq$k0">
                            <node concept="liA8E" id="7Q_67PUJ7ZM" role="2OqNvi">
                              <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                            </node>
                            <node concept="2JrnkZ" id="7Q_67PUJ9Yq" role="2Oq$k0">
                              <node concept="37vLTw" id="7Q_67PUJ3hK" role="2JrQYb">
                                <ref role="3cqZAo" node="7Q_67PUJ2tV" resolve="before" />
                              </node>
                            </node>
                          </node>
                          <node concept="liA8E" id="7Q_67PUJ8JF" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                            <node concept="2OqwBi" id="7Q_67PUJ8JG" role="37wK5m">
                              <node concept="liA8E" id="7Q_67PUJ8JI" role="2OqNvi">
                                <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                              </node>
                              <node concept="2JrnkZ" id="7Q_67PUJ9Yr" role="2Oq$k0">
                                <node concept="37vLTw" id="7Q_67PUJ8JH" role="2JrQYb">
                                  <ref role="3cqZAo" node="7Q_67PUJ2us" resolve="child" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="1eOMI4" id="7Q_67PUJ2tL" role="3uHU7w">
                          <node concept="3K4zz7" id="7Q_67PUJ2tK" role="1eOMHV">
                            <node concept="3y3z36" id="7Q_67PUJ2t$" role="3K4Cdx">
                              <node concept="37vLTw" id="7Q_67PUJ2t_" role="3uHU7B">
                                <ref role="3cqZAo" node="7Q_67PUJ2ti" resolve="childName" />
                              </node>
                              <node concept="10Nm6u" id="7Q_67PUJ2tA" role="3uHU7w" />
                            </node>
                            <node concept="2OqwBi" id="7Q_67PUJ80c" role="3K4E3e">
                              <node concept="37vLTw" id="7Q_67PUJ3hS" role="2Oq$k0">
                                <ref role="3cqZAo" node="7Q_67PUJ2ti" resolve="childName" />
                              </node>
                              <node concept="liA8E" id="7Q_67PUJ80d" role="2OqNvi">
                                <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                                <node concept="2OqwBi" id="7Q_67PUJ8Y8" role="37wK5m">
                                  <node concept="liA8E" id="7Q_67PUJ8Y9" role="2OqNvi">
                                    <ref role="37wK5l" to="mhbf:~SNode.getName()" resolve="getName" />
                                  </node>
                                  <node concept="2JrnkZ" id="7Q_67PUJ9Ys" role="2Oq$k0">
                                    <node concept="37vLTw" id="7Q_67PUJ8JL" role="2JrQYb">
                                      <ref role="3cqZAo" node="7Q_67PUJ2tV" resolve="before" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="2OqwBi" id="7Q_67PUJ3iF" role="3K4GZi">
                              <node concept="1rXfSq" id="7Q_67PUJ2tE" role="2Oq$k0">
                                <ref role="37wK5l" node="7Q_67PUJ2cx" resolve="semanticSnapshot" />
                                <node concept="37vLTw" id="7Q_67PUJ2tF" role="37wK5m">
                                  <ref role="3cqZAo" node="7Q_67PUJ2us" resolve="child" />
                                </node>
                                <node concept="37vLTw" id="7Q_67PUJ2tG" role="37wK5m">
                                  <ref role="3cqZAo" node="7Q_67PUJ2rP" resolve="candidates" />
                                </node>
                              </node>
                              <node concept="liA8E" id="7Q_67PUJ3iG" role="2OqNvi">
                                <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                                <node concept="1rXfSq" id="7Q_67PUJ3iH" role="37wK5m">
                                  <ref role="37wK5l" node="7Q_67PUJ2cx" resolve="semanticSnapshot" />
                                  <node concept="37vLTw" id="7Q_67PUJ3iI" role="37wK5m">
                                    <ref role="3cqZAo" node="7Q_67PUJ2tV" resolve="before" />
                                  </node>
                                  <node concept="37vLTw" id="7Q_67PUJ3iJ" role="37wK5m">
                                    <ref role="3cqZAo" node="7Q_67PUJ2rP" resolve="candidates" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="7Q_67PUJ2tN" role="3clFbx">
                        <node concept="3clFbF" id="7Q_67PUJ2tO" role="3cqZAp">
                          <node concept="37vLTI" id="7Q_67PUJ2tP" role="3clFbG">
                            <node concept="37vLTw" id="7Q_67PUJ2tQ" role="37vLTJ">
                              <ref role="3cqZAo" node="7Q_67PUJ2ta" resolve="matching" />
                            </node>
                            <node concept="37vLTw" id="7Q_67PUJ2tR" role="37vLTx">
                              <ref role="3cqZAo" node="7Q_67PUJ2tV" resolve="before" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="7Q_67PUJ2tS" role="3cqZAp">
                          <node concept="3uNrnE" id="7Q_67PUJ2tT" role="3clFbG">
                            <node concept="37vLTw" id="7Q_67PUJ2tU" role="2$L3a6">
                              <ref role="3cqZAo" node="7Q_67PUJ2te" resolve="matches" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="7Q_67PUJ2u1" role="3cqZAp">
              <node concept="3y3z36" id="7Q_67PUJ2u2" role="3clFbw">
                <node concept="37vLTw" id="7Q_67PUJ2u3" role="3uHU7B">
                  <ref role="3cqZAo" node="7Q_67PUJ2te" resolve="matches" />
                </node>
                <node concept="3cmrfG" id="7Q_67PUJ2u4" role="3uHU7w">
                  <property role="3cmrfH" value="1" />
                </node>
              </node>
              <node concept="3clFbS" id="7Q_67PUJ2u6" role="3clFbx">
                <node concept="3clFbF" id="7Q_67PUJ2u7" role="3cqZAp">
                  <node concept="37vLTI" id="7Q_67PUJ2u8" role="3clFbG">
                    <node concept="37vLTw" id="7Q_67PUJ2u9" role="37vLTJ">
                      <ref role="3cqZAo" node="7Q_67PUJ2ta" resolve="matching" />
                    </node>
                    <node concept="10Nm6u" id="7Q_67PUJ2ua" role="37vLTx" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7Q_67PUJ2ub" role="3cqZAp">
              <node concept="2OqwBi" id="7Q_67PUJ80p" role="3clFbG">
                <node concept="liA8E" id="7Q_67PUJ80q" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.addChild(org.jetbrains.mps.openapi.language.SContainmentLink,org.jetbrains.mps.openapi.model.SNode)" resolve="addChild" />
                  <node concept="1rXfSq" id="7Q_67PUJ80r" role="37wK5m">
                    <ref role="37wK5l" node="7Q_67PUJ2k4" resolve="containment" />
                    <node concept="37vLTw" id="7Q_67PUJ80s" role="37wK5m">
                      <ref role="3cqZAo" node="7Q_67PUJ2us" resolve="child" />
                    </node>
                  </node>
                  <node concept="1rXfSq" id="7Q_67PUJ80t" role="37wK5m">
                    <ref role="37wK5l" node="7Q_67PUJ2rA" resolve="cloneTree" />
                    <node concept="37vLTw" id="7Q_67PUJ80u" role="37wK5m">
                      <ref role="3cqZAo" node="7Q_67PUJ2us" resolve="child" />
                    </node>
                    <node concept="37vLTw" id="7Q_67PUJ80v" role="37wK5m">
                      <ref role="3cqZAo" node="7Q_67PUJ2rD" resolve="target" />
                    </node>
                    <node concept="37vLTw" id="7Q_67PUJ80w" role="37wK5m">
                      <ref role="3cqZAo" node="7Q_67PUJ2rF" resolve="correspondence" />
                    </node>
                    <node concept="37vLTw" id="7Q_67PUJ80x" role="37wK5m">
                      <ref role="3cqZAo" node="7Q_67PUJ2rJ" resolve="key" />
                    </node>
                    <node concept="3cpWs3" id="7Q_67PUJ80y" role="37wK5m">
                      <node concept="3cpWs3" id="7Q_67PUJ80z" role="3uHU7B">
                        <node concept="37vLTw" id="7Q_67PUJ80$" role="3uHU7B">
                          <ref role="3cqZAo" node="7Q_67PUJ2rL" resolve="path" />
                        </node>
                        <node concept="Xl_RD" id="7Q_67PUJ80_" role="3uHU7w">
                          <property role="Xl_RC" value="/" />
                        </node>
                      </node>
                      <node concept="3uNrnE" id="7Q_67PUJ80A" role="3uHU7w">
                        <node concept="37vLTw" id="7Q_67PUJ80B" role="2$L3a6">
                          <ref role="3cqZAo" node="7Q_67PUJ2t3" resolve="index" />
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="7Q_67PUJ80C" role="37wK5m">
                      <ref role="3cqZAo" node="7Q_67PUJ2ta" resolve="matching" />
                    </node>
                    <node concept="37vLTw" id="7Q_67PUJ80D" role="37wK5m">
                      <ref role="3cqZAo" node="7Q_67PUJ2rP" resolve="candidates" />
                    </node>
                  </node>
                </node>
                <node concept="2JrnkZ" id="7Q_67PUJ9Yt" role="2Oq$k0">
                  <node concept="37vLTw" id="7Q_67PUJ3iM" role="2JrQYb">
                    <ref role="3cqZAo" node="7Q_67PUJ2s2" resolve="copy" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7Q_67PUJ2uw" role="3cqZAp">
          <node concept="37vLTw" id="7Q_67PUJ2ux" role="3cqZAk">
            <ref role="3cqZAo" node="7Q_67PUJ2s2" resolve="copy" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="7Q_67PUJ2uy" role="1B3o_S" />
      <node concept="3Tqbb2" id="7Q_67PUJa0S" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="7Q_67PUJ2u$" role="jymVt">
      <property role="TrG5h" value="copyReferences" />
      <node concept="37vLTG" id="7Q_67PUJ2u_" role="3clF46">
        <property role="TrG5h" value="generated" />
        <node concept="3Tqbb2" id="7Q_67PUJa0T" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7Q_67PUJ2uB" role="3clF46">
        <property role="TrG5h" value="correspondence" />
        <node concept="3uibUv" id="7Q_67PUJ2uC" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
          <node concept="3Tqbb2" id="7Q_67PUJa0U" role="11_B2D" />
          <node concept="3Tqbb2" id="7Q_67PUJa0V" role="11_B2D" />
        </node>
      </node>
      <node concept="3clFbS" id="7Q_67PUJ2uF" role="3clF47">
        <node concept="3cpWs8" id="7Q_67PUJ2uH" role="3cqZAp">
          <node concept="3cpWsn" id="7Q_67PUJ2uG" role="3cpWs9">
            <property role="TrG5h" value="copy" />
            <node concept="3Tqbb2" id="7Q_67PUJa0W" role="1tU5fm" />
            <node concept="2OqwBi" id="7Q_67PUJ84o" role="33vP2m">
              <node concept="37vLTw" id="7Q_67PUJ3j5" role="2Oq$k0">
                <ref role="3cqZAo" node="7Q_67PUJ2uB" resolve="correspondence" />
              </node>
              <node concept="liA8E" id="7Q_67PUJ84p" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
                <node concept="37vLTw" id="7Q_67PUJ84q" role="37wK5m">
                  <ref role="3cqZAo" node="7Q_67PUJ2u_" resolve="generated" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7Q_67PUJ2uL" role="3cqZAp">
          <node concept="3clFbC" id="7Q_67PUJ2uM" role="3clFbw">
            <node concept="37vLTw" id="7Q_67PUJ2uN" role="3uHU7B">
              <ref role="3cqZAo" node="7Q_67PUJ2uG" resolve="copy" />
            </node>
            <node concept="10Nm6u" id="7Q_67PUJ2uO" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="7Q_67PUJ2uQ" role="3clFbx">
            <node concept="YS8fn" id="7Q_67PUJ2uV" role="3cqZAp">
              <node concept="1rXfSq" id="7Q_67PUJ2uR" role="YScLw">
                <ref role="37wK5l" node="7Q_67PUJ2xZ" resolve="failure" />
                <node concept="Xl_RD" id="7Q_67PUJ2uS" role="37wK5m">
                  <property role="Xl_RC" value="MBNF_MISSING_CORRESPONDENCE" />
                </node>
                <node concept="2OqwBi" id="7Q_67PUJ8K3" role="37wK5m">
                  <node concept="2OqwBi" id="7Q_67PUJ84G" role="2Oq$k0">
                    <node concept="liA8E" id="7Q_67PUJ84H" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.getReference()" resolve="getReference" />
                    </node>
                    <node concept="2JrnkZ" id="7Q_67PUJ9Yu" role="2Oq$k0">
                      <node concept="37vLTw" id="7Q_67PUJ3ji" role="2JrQYb">
                        <ref role="3cqZAo" node="7Q_67PUJ2u_" resolve="generated" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="7Q_67PUJ8K4" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="7Q_67PUJ2uW" role="3cqZAp">
          <node concept="2OqwBi" id="7Q_67PUJ84R" role="1DdaDG">
            <node concept="liA8E" id="7Q_67PUJ84S" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNode.getReferences()" resolve="getReferences" />
            </node>
            <node concept="2JrnkZ" id="7Q_67PUJ9Yv" role="2Oq$k0">
              <node concept="37vLTw" id="7Q_67PUJ3jm" role="2JrQYb">
                <ref role="3cqZAo" node="7Q_67PUJ2u_" resolve="generated" />
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="7Q_67PUJ2vY" role="1Duv9x">
            <property role="TrG5h" value="reference" />
            <node concept="3uibUv" id="7Q_67PUJ2w0" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SReference" resolve="SReference" />
            </node>
          </node>
          <node concept="3clFbS" id="7Q_67PUJ2uY" role="2LFqv$">
            <node concept="3cpWs8" id="7Q_67PUJ2v0" role="3cqZAp">
              <node concept="3cpWsn" id="7Q_67PUJ2uZ" role="3cpWs9">
                <property role="TrG5h" value="target" />
                <node concept="3Tqbb2" id="7Q_67PUJa0X" role="1tU5fm" />
                <node concept="2OqwBi" id="7Q_67PUJ852" role="33vP2m">
                  <node concept="37vLTw" id="7Q_67PUJ3jq" role="2Oq$k0">
                    <ref role="3cqZAo" node="7Q_67PUJ2vY" resolve="reference" />
                  </node>
                  <node concept="liA8E" id="7Q_67PUJ853" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SReference.getTargetNode()" resolve="getTargetNode" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="7Q_67PUJ2v3" role="3cqZAp">
              <node concept="22lmx$" id="7Q_67PUJ2v4" role="3clFbw">
                <node concept="22lmx$" id="7Q_67PUJ2v5" role="3uHU7B">
                  <node concept="3clFbC" id="7Q_67PUJ2v6" role="3uHU7B">
                    <node concept="37vLTw" id="7Q_67PUJ2v7" role="3uHU7B">
                      <ref role="3cqZAo" node="7Q_67PUJ2uZ" resolve="target" />
                    </node>
                    <node concept="10Nm6u" id="7Q_67PUJ2v8" role="3uHU7w" />
                  </node>
                  <node concept="3clFbC" id="7Q_67PUJ2v9" role="3uHU7w">
                    <node concept="2OqwBi" id="7Q_67PUJ85e" role="3uHU7B">
                      <node concept="liA8E" id="7Q_67PUJ85f" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getModel()" resolve="getModel" />
                      </node>
                      <node concept="2JrnkZ" id="7Q_67PUJ9Yw" role="2Oq$k0">
                        <node concept="37vLTw" id="7Q_67PUJ3ju" role="2JrQYb">
                          <ref role="3cqZAo" node="7Q_67PUJ2uZ" resolve="target" />
                        </node>
                      </node>
                    </node>
                    <node concept="10Nm6u" id="7Q_67PUJ2vb" role="3uHU7w" />
                  </node>
                </node>
                <node concept="3clFbC" id="7Q_67PUJ2vc" role="3uHU7w">
                  <node concept="2OqwBi" id="7Q_67PUJ8Kv" role="3uHU7B">
                    <node concept="liA8E" id="7Q_67PUJ8Kw" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
                    </node>
                    <node concept="2JrnkZ" id="7Q_67PUJ9Yy" role="2Oq$k0">
                      <node concept="2OqwBi" id="7Q_67PUJ85y" role="2JrQYb">
                        <node concept="liA8E" id="7Q_67PUJ85z" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SNode.getModel()" resolve="getModel" />
                        </node>
                        <node concept="2JrnkZ" id="7Q_67PUJ9Yx" role="2Oq$k0">
                          <node concept="37vLTw" id="7Q_67PUJ3jE" role="2JrQYb">
                            <ref role="3cqZAo" node="7Q_67PUJ2uZ" resolve="target" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="7Q_67PUJ2vf" role="3uHU7w" />
                </node>
              </node>
              <node concept="3clFbS" id="7Q_67PUJ2vh" role="3clFbx">
                <node concept="YS8fn" id="7Q_67PUJ2vm" role="3cqZAp">
                  <node concept="1rXfSq" id="7Q_67PUJ2vi" role="YScLw">
                    <ref role="37wK5l" node="7Q_67PUJ2xZ" resolve="failure" />
                    <node concept="Xl_RD" id="7Q_67PUJ2vj" role="37wK5m">
                      <property role="Xl_RC" value="MBNF_UNRESOLVED_REFERENCE" />
                    </node>
                    <node concept="2OqwBi" id="7Q_67PUJ8KL" role="37wK5m">
                      <node concept="2OqwBi" id="7Q_67PUJ85P" role="2Oq$k0">
                        <node concept="37vLTw" id="7Q_67PUJ3jQ" role="2Oq$k0">
                          <ref role="3cqZAo" node="7Q_67PUJ2vY" resolve="reference" />
                        </node>
                        <node concept="liA8E" id="7Q_67PUJ85Q" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SReference.getTargetNodeReference()" resolve="getTargetNodeReference" />
                        </node>
                      </node>
                      <node concept="liA8E" id="7Q_67PUJ8KM" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="7Q_67PUJ2vo" role="3cqZAp">
              <node concept="3cpWsn" id="7Q_67PUJ2vn" role="3cpWs9">
                <property role="TrG5h" value="replacement" />
                <node concept="3Tqbb2" id="7Q_67PUJa0Y" role="1tU5fm" />
                <node concept="2OqwBi" id="7Q_67PUJ89_" role="33vP2m">
                  <node concept="37vLTw" id="7Q_67PUJ3jU" role="2Oq$k0">
                    <ref role="3cqZAo" node="7Q_67PUJ2uB" resolve="correspondence" />
                  </node>
                  <node concept="liA8E" id="7Q_67PUJ89A" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
                    <node concept="37vLTw" id="7Q_67PUJ89B" role="37wK5m">
                      <ref role="3cqZAo" node="7Q_67PUJ2uZ" resolve="target" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="7Q_67PUJ2vs" role="3cqZAp">
              <node concept="3clFbC" id="7Q_67PUJ2vt" role="3clFbw">
                <node concept="37vLTw" id="7Q_67PUJ2vu" role="3uHU7B">
                  <ref role="3cqZAo" node="7Q_67PUJ2vn" resolve="replacement" />
                </node>
                <node concept="10Nm6u" id="7Q_67PUJ2vv" role="3uHU7w" />
              </node>
              <node concept="3clFbS" id="7Q_67PUJ2vx" role="3clFbx">
                <node concept="3cpWs8" id="7Q_67PUJ2vz" role="3cqZAp">
                  <node concept="3cpWsn" id="7Q_67PUJ2vy" role="3cpWs9">
                    <property role="TrG5h" value="moduleName" />
                    <node concept="3uibUv" id="7Q_67PUJ2v$" role="1tU5fm">
                      <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                    </node>
                    <node concept="2OqwBi" id="7Q_67PUJ8YH" role="33vP2m">
                      <node concept="2OqwBi" id="7Q_67PUJ8Ll" role="2Oq$k0">
                        <node concept="liA8E" id="7Q_67PUJ8Lm" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
                        </node>
                        <node concept="2JrnkZ" id="7Q_67PUJ9Y$" role="2Oq$k0">
                          <node concept="2OqwBi" id="7Q_67PUJ8a2" role="2JrQYb">
                            <node concept="liA8E" id="7Q_67PUJ8a3" role="2OqNvi">
                              <ref role="37wK5l" to="mhbf:~SNode.getModel()" resolve="getModel" />
                            </node>
                            <node concept="2JrnkZ" id="7Q_67PUJ9Yz" role="2Oq$k0">
                              <node concept="37vLTw" id="7Q_67PUJ3kf" role="2JrQYb">
                                <ref role="3cqZAo" node="7Q_67PUJ2uZ" resolve="target" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="7Q_67PUJ8YI" role="2OqNvi">
                        <ref role="37wK5l" to="lui2:~SModule.getModuleName()" resolve="getModuleName" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="7Q_67PUJ2vC" role="3cqZAp">
                  <node concept="22lmx$" id="7Q_67PUJ2vD" role="3clFbw">
                    <node concept="3clFbC" id="7Q_67PUJ2vE" role="3uHU7B">
                      <node concept="37vLTw" id="7Q_67PUJ2vF" role="3uHU7B">
                        <ref role="3cqZAo" node="7Q_67PUJ2vy" resolve="moduleName" />
                      </node>
                      <node concept="10Nm6u" id="7Q_67PUJ2vG" role="3uHU7w" />
                    </node>
                    <node concept="2OqwBi" id="7Q_67PUJ8ai" role="3uHU7w">
                      <node concept="37vLTw" id="7Q_67PUJ3kj" role="2Oq$k0">
                        <ref role="3cqZAo" node="7Q_67PUJ2vy" resolve="moduleName" />
                      </node>
                      <node concept="liA8E" id="7Q_67PUJ8aj" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                        <node concept="Xl_RD" id="7Q_67PUJ8ak" role="37wK5m">
                          <property role="Xl_RC" value="@transient" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="7Q_67PUJ2vK" role="3clFbx">
                    <node concept="YS8fn" id="7Q_67PUJ2vP" role="3cqZAp">
                      <node concept="1rXfSq" id="7Q_67PUJ2vL" role="YScLw">
                        <ref role="37wK5l" node="7Q_67PUJ2xZ" resolve="failure" />
                        <node concept="Xl_RD" id="7Q_67PUJ2vM" role="37wK5m">
                          <property role="Xl_RC" value="MBNF_TRANSIENT_REFERENCE" />
                        </node>
                        <node concept="2OqwBi" id="7Q_67PUJ8LB" role="37wK5m">
                          <node concept="2OqwBi" id="7Q_67PUJ8aA" role="2Oq$k0">
                            <node concept="37vLTw" id="7Q_67PUJ3kw" role="2Oq$k0">
                              <ref role="3cqZAo" node="7Q_67PUJ2vY" resolve="reference" />
                            </node>
                            <node concept="liA8E" id="7Q_67PUJ8aB" role="2OqNvi">
                              <ref role="37wK5l" to="mhbf:~SReference.getTargetNodeReference()" resolve="getTargetNodeReference" />
                            </node>
                          </node>
                          <node concept="liA8E" id="7Q_67PUJ8LC" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="7Q_67PUJ2vQ" role="3cqZAp">
                  <node concept="37vLTI" id="7Q_67PUJ2vR" role="3clFbG">
                    <node concept="37vLTw" id="7Q_67PUJ2vS" role="37vLTJ">
                      <ref role="3cqZAo" node="7Q_67PUJ2vn" resolve="replacement" />
                    </node>
                    <node concept="37vLTw" id="7Q_67PUJ2vT" role="37vLTx">
                      <ref role="3cqZAo" node="7Q_67PUJ2uZ" resolve="target" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7Q_67PUJ2vU" role="3cqZAp">
              <node concept="2OqwBi" id="7Q_67PUJ8aM" role="3clFbG">
                <node concept="liA8E" id="7Q_67PUJ8aN" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.setReferenceTarget(org.jetbrains.mps.openapi.language.SReferenceLink,org.jetbrains.mps.openapi.model.SNode)" resolve="setReferenceTarget" />
                  <node concept="2OqwBi" id="7Q_67PUJ8YS" role="37wK5m">
                    <node concept="37vLTw" id="7Q_67PUJ8LF" role="2Oq$k0">
                      <ref role="3cqZAo" node="7Q_67PUJ2vY" resolve="reference" />
                    </node>
                    <node concept="liA8E" id="7Q_67PUJ8YT" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SReference.getLink()" resolve="getLink" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="7Q_67PUJ8aP" role="37wK5m">
                    <ref role="3cqZAo" node="7Q_67PUJ2vn" resolve="replacement" />
                  </node>
                </node>
                <node concept="2JrnkZ" id="7Q_67PUJ9Y_" role="2Oq$k0">
                  <node concept="37vLTw" id="7Q_67PUJ3k$" role="2JrQYb">
                    <ref role="3cqZAo" node="7Q_67PUJ2uG" resolve="copy" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="7Q_67PUJ2w2" role="3cqZAp">
          <node concept="2OqwBi" id="7Q_67PUJ8aZ" role="1DdaDG">
            <node concept="liA8E" id="7Q_67PUJ8b0" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNode.getChildren()" resolve="getChildren" />
            </node>
            <node concept="2JrnkZ" id="7Q_67PUJ9YA" role="2Oq$k0">
              <node concept="37vLTw" id="7Q_67PUJ3kE" role="2JrQYb">
                <ref role="3cqZAo" node="7Q_67PUJ2u_" resolve="generated" />
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="7Q_67PUJ2w9" role="1Duv9x">
            <property role="TrG5h" value="child" />
            <node concept="3Tqbb2" id="7Q_67PUJa0Z" role="1tU5fm" />
          </node>
          <node concept="3clFbS" id="7Q_67PUJ2w4" role="2LFqv$">
            <node concept="3clFbF" id="7Q_67PUJ2w5" role="3cqZAp">
              <node concept="1rXfSq" id="7Q_67PUJ2w6" role="3clFbG">
                <ref role="37wK5l" node="7Q_67PUJ2u$" resolve="copyReferences" />
                <node concept="37vLTw" id="7Q_67PUJ2w7" role="37wK5m">
                  <ref role="3cqZAo" node="7Q_67PUJ2w9" resolve="child" />
                </node>
                <node concept="37vLTw" id="7Q_67PUJ2w8" role="37wK5m">
                  <ref role="3cqZAo" node="7Q_67PUJ2uB" resolve="correspondence" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="7Q_67PUJ2wd" role="1B3o_S" />
      <node concept="3cqZAl" id="7Q_67PUJ2we" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="7Q_67PUJ2wf" role="jymVt">
      <property role="TrG5h" value="normalizePackage" />
      <node concept="37vLTG" id="7Q_67PUJ2wg" role="3clF46">
        <property role="TrG5h" value="root" />
        <node concept="3Tqbb2" id="7Q_67PUJa10" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7Q_67PUJ2wi" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="H_c77" id="7Q_67PUJa11" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="7Q_67PUJ2wk" role="3clF47">
        <node concept="3cpWs8" id="7Q_67PUJ2wm" role="3cqZAp">
          <node concept="3cpWsn" id="7Q_67PUJ2wl" role="3cpWs9">
            <property role="TrG5h" value="value" />
            <node concept="3uibUv" id="7Q_67PUJ2wn" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
            <node concept="2OqwBi" id="7Q_67PUJ8ba" role="33vP2m">
              <node concept="liA8E" id="7Q_67PUJ8bb" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getProperty(org.jetbrains.mps.openapi.language.SProperty)" resolve="getProperty" />
                <node concept="37vLTw" id="7Q_67PUJ8bc" role="37wK5m">
                  <ref role="3cqZAo" node="7Q_67PUJ1SH" resolve="VIRTUAL_PACKAGE" />
                </node>
              </node>
              <node concept="2JrnkZ" id="7Q_67PUJ9YB" role="2Oq$k0">
                <node concept="37vLTw" id="7Q_67PUJ3kI" role="2JrQYb">
                  <ref role="3cqZAo" node="7Q_67PUJ2wg" resolve="root" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7Q_67PUJ2wr" role="3cqZAp">
          <node concept="3cpWsn" id="7Q_67PUJ2wq" role="3cpWs9">
            <property role="TrG5h" value="prefix" />
            <node concept="3uibUv" id="7Q_67PUJ2ws" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
            <node concept="2OqwBi" id="7Q_67PUJ8LV" role="33vP2m">
              <node concept="2OqwBi" id="7Q_67PUJ8bu" role="2Oq$k0">
                <node concept="liA8E" id="7Q_67PUJ8bv" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SModel.getName()" resolve="getName" />
                </node>
                <node concept="2JrnkZ" id="7Q_67PUJ9YC" role="2Oq$k0">
                  <node concept="37vLTw" id="7Q_67PUJ3kV" role="2JrQYb">
                    <ref role="3cqZAo" node="7Q_67PUJ2wi" resolve="target" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="7Q_67PUJ8LW" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SModelName.getValue()" resolve="getValue" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7Q_67PUJ2wv" role="3cqZAp">
          <node concept="22lmx$" id="7Q_67PUJ2ww" role="3clFbw">
            <node concept="3clFbC" id="7Q_67PUJ2wx" role="3uHU7B">
              <node concept="37vLTw" id="7Q_67PUJ2wy" role="3uHU7B">
                <ref role="3cqZAo" node="7Q_67PUJ2wl" resolve="value" />
              </node>
              <node concept="10Nm6u" id="7Q_67PUJ2wz" role="3uHU7w" />
            </node>
            <node concept="3fqX7Q" id="7Q_67PUJ2w$" role="3uHU7w">
              <node concept="1eOMI4" id="7Q_67PUJ2wG" role="3fr31v">
                <node concept="22lmx$" id="7Q_67PUJ2w_" role="1eOMHV">
                  <node concept="2OqwBi" id="7Q_67PUJ8bI" role="3uHU7B">
                    <node concept="37vLTw" id="7Q_67PUJ3kZ" role="2Oq$k0">
                      <ref role="3cqZAo" node="7Q_67PUJ2wl" resolve="value" />
                    </node>
                    <node concept="liA8E" id="7Q_67PUJ8bJ" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                      <node concept="37vLTw" id="7Q_67PUJ8bK" role="37wK5m">
                        <ref role="3cqZAo" node="7Q_67PUJ2wq" resolve="prefix" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="7Q_67PUJ8bZ" role="3uHU7w">
                    <node concept="37vLTw" id="7Q_67PUJ3l4" role="2Oq$k0">
                      <ref role="3cqZAo" node="7Q_67PUJ2wl" resolve="value" />
                    </node>
                    <node concept="liA8E" id="7Q_67PUJ8c0" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.startsWith(java.lang.String)" resolve="startsWith" />
                      <node concept="3cpWs3" id="7Q_67PUJ8c1" role="37wK5m">
                        <node concept="37vLTw" id="7Q_67PUJ8c2" role="3uHU7B">
                          <ref role="3cqZAo" node="7Q_67PUJ2wq" resolve="prefix" />
                        </node>
                        <node concept="Xl_RD" id="7Q_67PUJ8c3" role="3uHU7w">
                          <property role="Xl_RC" value="." />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="7Q_67PUJ2wI" role="3clFbx">
            <node concept="YS8fn" id="7Q_67PUJ2wM" role="3cqZAp">
              <node concept="1rXfSq" id="7Q_67PUJ2wJ" role="YScLw">
                <ref role="37wK5l" node="7Q_67PUJ2xZ" resolve="failure" />
                <node concept="Xl_RD" id="7Q_67PUJ2wK" role="37wK5m">
                  <property role="Xl_RC" value="MBNF_GENERATION_TARGET" />
                </node>
                <node concept="Xl_RD" id="7Q_67PUJ2wL" role="37wK5m">
                  <property role="Xl_RC" value="Generated package does not match the target model" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7Q_67PUJ2wN" role="3cqZAp">
          <node concept="2OqwBi" id="7Q_67PUJ8cd" role="3clFbG">
            <node concept="liA8E" id="7Q_67PUJ8ce" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNode.setProperty(org.jetbrains.mps.openapi.language.SProperty,java.lang.String)" resolve="setProperty" />
              <node concept="37vLTw" id="7Q_67PUJ8cf" role="37wK5m">
                <ref role="3cqZAo" node="7Q_67PUJ1SH" resolve="VIRTUAL_PACKAGE" />
              </node>
              <node concept="3K4zz7" id="7Q_67PUJ8cg" role="37wK5m">
                <node concept="2OqwBi" id="7Q_67PUJ8Z8" role="3K4Cdx">
                  <node concept="37vLTw" id="7Q_67PUJ8LZ" role="2Oq$k0">
                    <ref role="3cqZAo" node="7Q_67PUJ2wl" resolve="value" />
                  </node>
                  <node concept="liA8E" id="7Q_67PUJ8Z9" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                    <node concept="37vLTw" id="7Q_67PUJ8Za" role="37wK5m">
                      <ref role="3cqZAo" node="7Q_67PUJ2wq" resolve="prefix" />
                    </node>
                  </node>
                </node>
                <node concept="Xl_RD" id="7Q_67PUJ8cj" role="3K4E3e">
                  <property role="Xl_RC" value="" />
                </node>
                <node concept="2OqwBi" id="7Q_67PUJ8Zp" role="3K4GZi">
                  <node concept="37vLTw" id="7Q_67PUJ8M4" role="2Oq$k0">
                    <ref role="3cqZAo" node="7Q_67PUJ2wl" resolve="value" />
                  </node>
                  <node concept="liA8E" id="7Q_67PUJ8Zq" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.substring(int)" resolve="substring" />
                    <node concept="3cpWs3" id="7Q_67PUJ8Zr" role="37wK5m">
                      <node concept="2OqwBi" id="7Q_67PUJ93R" role="3uHU7B">
                        <node concept="37vLTw" id="7Q_67PUJ93z" role="2Oq$k0">
                          <ref role="3cqZAo" node="7Q_67PUJ2wq" resolve="prefix" />
                        </node>
                        <node concept="liA8E" id="7Q_67PUJ93S" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~String.length()" resolve="length" />
                        </node>
                      </node>
                      <node concept="3cmrfG" id="7Q_67PUJ8Zt" role="3uHU7w">
                        <property role="3cmrfH" value="1" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2JrnkZ" id="7Q_67PUJ9YD" role="2Oq$k0">
              <node concept="37vLTw" id="7Q_67PUJ3lb" role="2JrQYb">
                <ref role="3cqZAo" node="7Q_67PUJ2wg" resolve="root" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="7Q_67PUJ2wY" role="1B3o_S" />
      <node concept="3cqZAl" id="7Q_67PUJ2wZ" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="7Q_67PUJ2x0" role="jymVt">
      <property role="TrG5h" value="part" />
      <node concept="37vLTG" id="7Q_67PUJ2x1" role="3clF46">
        <property role="TrG5h" value="result" />
        <node concept="3uibUv" id="7Q_67PUJ2x2" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~StringBuilder" resolve="StringBuilder" />
        </node>
      </node>
      <node concept="37vLTG" id="7Q_67PUJ2x3" role="3clF46">
        <property role="TrG5h" value="text" />
        <node concept="3uibUv" id="7Q_67PUJ2x4" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3clFbS" id="7Q_67PUJ2x5" role="3clF47">
        <node concept="3clFbF" id="7Q_67PUJ2x6" role="3cqZAp">
          <node concept="2OqwBi" id="7Q_67PUJ905" role="3clFbG">
            <node concept="2OqwBi" id="7Q_67PUJ8MB" role="2Oq$k0">
              <node concept="2OqwBi" id="7Q_67PUJ8cK" role="2Oq$k0">
                <node concept="37vLTw" id="7Q_67PUJ3lC" role="2Oq$k0">
                  <ref role="3cqZAo" node="7Q_67PUJ2x1" resolve="result" />
                </node>
                <node concept="liA8E" id="7Q_67PUJ8cL" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~StringBuilder.append(int)" resolve="append" />
                  <node concept="2OqwBi" id="7Q_67PUJ946" role="37wK5m">
                    <node concept="37vLTw" id="7Q_67PUJ93B" role="2Oq$k0">
                      <ref role="3cqZAo" node="7Q_67PUJ2x3" resolve="text" />
                    </node>
                    <node concept="liA8E" id="7Q_67PUJ947" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.length()" resolve="length" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="7Q_67PUJ8MC" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~StringBuilder.append(char)" resolve="append" />
                <node concept="1Xhbcc" id="7Q_67PUJ8MD" role="37wK5m">
                  <property role="1XhdNS" value=":" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="7Q_67PUJ906" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
              <node concept="37vLTw" id="7Q_67PUJ907" role="37wK5m">
                <ref role="3cqZAo" node="7Q_67PUJ2x3" resolve="text" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="7Q_67PUJ2xd" role="1B3o_S" />
      <node concept="3cqZAl" id="7Q_67PUJ2xe" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="7Q_67PUJ2xf" role="jymVt">
      <property role="TrG5h" value="digest" />
      <node concept="37vLTG" id="7Q_67PUJ2xg" role="3clF46">
        <property role="TrG5h" value="text" />
        <node concept="3uibUv" id="7Q_67PUJ2xh" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3clFbS" id="7Q_67PUJ2xi" role="3clF47">
        <node concept="3J1_TO" id="7Q_67PUJ2xV" role="3cqZAp">
          <node concept="3uVAMA" id="7Q_67PUJ2xW" role="1zxBo5">
            <node concept="3clFbS" id="7Q_67PUJ2xQ" role="1zc67A">
              <node concept="YS8fn" id="7Q_67PUJ2xU" role="3cqZAp">
                <node concept="2ShNRf" id="7Q_67PUJ3lF" role="YScLw">
                  <node concept="1pGfFk" id="7Q_67PUJ3u1" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String,java.lang.Throwable)" resolve="IllegalStateException" />
                    <node concept="Xl_RD" id="7Q_67PUJ3u2" role="37wK5m">
                      <property role="Xl_RC" value="MBNF_HASH_UNAVAILABLE: SHA-256 is required" />
                    </node>
                    <node concept="37vLTw" id="7Q_67PUJ3u3" role="37wK5m">
                      <ref role="3cqZAo" node="7Q_67PUJ2xM" resolve="exception" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="XOnhg" id="7Q_67PUJ2xM" role="1zc67B">
              <property role="TrG5h" value="exception" />
              <node concept="nSUau" id="7Q_67PUJ2xO" role="1tU5fm">
                <node concept="3uibUv" id="7Q_67PUJ2xN" role="nSUat">
                  <ref role="3uigEE" to="jgjw:~NoSuchAlgorithmException" resolve="NoSuchAlgorithmException" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="7Q_67PUJ2xk" role="1zxBo7">
            <node concept="3cpWs8" id="7Q_67PUJ2xm" role="3cqZAp">
              <node concept="3cpWsn" id="7Q_67PUJ2xl" role="3cpWs9">
                <property role="TrG5h" value="bytes" />
                <node concept="10Q1$e" id="7Q_67PUJ2xo" role="1tU5fm">
                  <node concept="10PrrI" id="7Q_67PUJ2xn" role="10Q1$1" />
                </node>
                <node concept="2OqwBi" id="7Q_67PUJ8d5" role="33vP2m">
                  <node concept="2YIFZM" id="7Q_67PUJ3ue" role="2Oq$k0">
                    <ref role="1Pybhc" to="jgjw:~MessageDigest" resolve="MessageDigest" />
                    <ref role="37wK5l" to="jgjw:~MessageDigest.getInstance(java.lang.String)" resolve="getInstance" />
                    <node concept="Xl_RD" id="7Q_67PUJ3uf" role="37wK5m">
                      <property role="Xl_RC" value="SHA-256" />
                    </node>
                  </node>
                  <node concept="liA8E" id="7Q_67PUJ8d6" role="2OqNvi">
                    <ref role="37wK5l" to="jgjw:~MessageDigest.digest(byte[])" resolve="digest" />
                    <node concept="2OqwBi" id="7Q_67PUJ8MR" role="37wK5m">
                      <node concept="37vLTw" id="7Q_67PUJ8d8" role="2Oq$k0">
                        <ref role="3cqZAo" node="7Q_67PUJ2xg" resolve="text" />
                      </node>
                      <node concept="liA8E" id="7Q_67PUJ8MS" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.getBytes(java.nio.charset.Charset)" resolve="getBytes" />
                        <node concept="10M0yZ" id="7Q_67PUJ90a" role="37wK5m">
                          <ref role="1PxDUh" to="7x5y:~StandardCharsets" resolve="StandardCharsets" />
                          <ref role="3cqZAo" to="7x5y:~StandardCharsets.UTF_8" resolve="UTF_8" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="7Q_67PUJ2xv" role="3cqZAp">
              <node concept="3cpWsn" id="7Q_67PUJ2xu" role="3cpWs9">
                <property role="TrG5h" value="result" />
                <node concept="3uibUv" id="7Q_67PUJ2xw" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~StringBuilder" resolve="StringBuilder" />
                </node>
                <node concept="2ShNRf" id="7Q_67PUJ3ul" role="33vP2m">
                  <node concept="1pGfFk" id="7Q_67PUJ3uq" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~StringBuilder.&lt;init&gt;()" resolve="StringBuilder" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1DcWWT" id="7Q_67PUJ2xy" role="3cqZAp">
              <node concept="37vLTw" id="7Q_67PUJ2xJ" role="1DdaDG">
                <ref role="3cqZAo" node="7Q_67PUJ2xl" resolve="bytes" />
              </node>
              <node concept="3cpWsn" id="7Q_67PUJ2xG" role="1Duv9x">
                <property role="TrG5h" value="value" />
                <node concept="10PrrI" id="7Q_67PUJ2xI" role="1tU5fm" />
              </node>
              <node concept="3clFbS" id="7Q_67PUJ2x$" role="2LFqv$">
                <node concept="3clFbF" id="7Q_67PUJ2x_" role="3cqZAp">
                  <node concept="2OqwBi" id="7Q_67PUJ8dj" role="3clFbG">
                    <node concept="37vLTw" id="7Q_67PUJ3ut" role="2Oq$k0">
                      <ref role="3cqZAo" node="7Q_67PUJ2xu" resolve="result" />
                    </node>
                    <node concept="liA8E" id="7Q_67PUJ8dk" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                      <node concept="2YIFZM" id="7Q_67PUJ8MW" role="37wK5m">
                        <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                        <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
                        <node concept="Xl_RD" id="7Q_67PUJ8MX" role="37wK5m">
                          <property role="Xl_RC" value="%02x" />
                        </node>
                        <node concept="pVHWs" id="7Q_67PUJ8MY" role="37wK5m">
                          <node concept="37vLTw" id="7Q_67PUJ8MZ" role="3uHU7B">
                            <ref role="3cqZAo" node="7Q_67PUJ2xG" resolve="value" />
                          </node>
                          <node concept="3cmrfG" id="7Q_67PUJ8N0" role="3uHU7w">
                            <property role="3cmrfH" value="255" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="7Q_67PUJ2xK" role="3cqZAp">
              <node concept="2OqwBi" id="7Q_67PUJ8dz" role="3cqZAk">
                <node concept="37vLTw" id="7Q_67PUJ3uA" role="2Oq$k0">
                  <ref role="3cqZAo" node="7Q_67PUJ2xu" resolve="result" />
                </node>
                <node concept="liA8E" id="7Q_67PUJ8d$" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~StringBuilder.toString()" resolve="toString" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="7Q_67PUJ2xX" role="1B3o_S" />
      <node concept="3uibUv" id="7Q_67PUJ2xY" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="2YIFZL" id="7Q_67PUJ2xZ" role="jymVt">
      <property role="TrG5h" value="failure" />
      <node concept="37vLTG" id="7Q_67PUJ2y0" role="3clF46">
        <property role="TrG5h" value="code" />
        <node concept="3uibUv" id="7Q_67PUJ2y1" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="37vLTG" id="7Q_67PUJ2y2" role="3clF46">
        <property role="TrG5h" value="detail" />
        <node concept="3uibUv" id="7Q_67PUJ2y3" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3clFbS" id="7Q_67PUJ2y4" role="3clF47">
        <node concept="3cpWs6" id="7Q_67PUJ2y5" role="3cqZAp">
          <node concept="2ShNRf" id="7Q_67PUJ3uC" role="3cqZAk">
            <node concept="1pGfFk" id="7Q_67PUJ3EJ" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
              <node concept="3cpWs3" id="7Q_67PUJ3EK" role="37wK5m">
                <node concept="3cpWs3" id="7Q_67PUJ3EL" role="3uHU7B">
                  <node concept="37vLTw" id="7Q_67PUJ3EM" role="3uHU7B">
                    <ref role="3cqZAo" node="7Q_67PUJ2y0" resolve="code" />
                  </node>
                  <node concept="Xl_RD" id="7Q_67PUJ3EN" role="3uHU7w">
                    <property role="Xl_RC" value=": " />
                  </node>
                </node>
                <node concept="37vLTw" id="7Q_67PUJ3EO" role="3uHU7w">
                  <ref role="3cqZAo" node="7Q_67PUJ2y2" resolve="detail" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="7Q_67PUJ2yc" role="1B3o_S" />
      <node concept="3uibUv" id="7Q_67PUJ2yd" role="3clF45">
        <ref role="3uigEE" to="wyt6:~IllegalStateException" resolve="IllegalStateException" />
      </node>
    </node>
    <node concept="2YIFZL" id="7Q_67PUJ2ye" role="jymVt">
      <property role="TrG5h" value="ledger" />
      <node concept="37vLTG" id="7Q_67PUJ2yf" role="3clF46">
        <property role="TrG5h" value="grammar" />
        <node concept="3Tqbb2" id="7Q_67PUJa12" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="7Q_67PUJ2yh" role="3clF47">
        <node concept="3cpWs8" id="7Q_67PUJ2yj" role="3cqZAp">
          <node concept="3cpWsn" id="7Q_67PUJ2yi" role="3cpWs9">
            <property role="TrG5h" value="found" />
            <node concept="3Tqbb2" id="7Q_67PUJa13" role="1tU5fm" />
            <node concept="10Nm6u" id="7Q_67PUJ2yl" role="33vP2m" />
          </node>
        </node>
        <node concept="1DcWWT" id="7Q_67PUJ2ym" role="3cqZAp">
          <node concept="2OqwBi" id="7Q_67PUJ8Ng" role="1DdaDG">
            <node concept="liA8E" id="7Q_67PUJ8Nh" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SModel.getRootNodes()" resolve="getRootNodes" />
            </node>
            <node concept="2JrnkZ" id="7Q_67PUJ9YF" role="2Oq$k0">
              <node concept="2OqwBi" id="7Q_67PUJ8dQ" role="2JrQYb">
                <node concept="liA8E" id="7Q_67PUJ8dR" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getModel()" resolve="getModel" />
                </node>
                <node concept="2JrnkZ" id="7Q_67PUJ9YE" role="2Oq$k0">
                  <node concept="37vLTw" id="7Q_67PUJ3EZ" role="2JrQYb">
                    <ref role="3cqZAo" node="7Q_67PUJ2yf" resolve="grammar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="7Q_67PUJ2yN" role="1Duv9x">
            <property role="TrG5h" value="root" />
            <node concept="3Tqbb2" id="7Q_67PUJa14" role="1tU5fm" />
          </node>
          <node concept="3clFbS" id="7Q_67PUJ2yo" role="2LFqv$">
            <node concept="3clFbJ" id="7Q_67PUJ2yp" role="3cqZAp">
              <node concept="1Wc70l" id="7Q_67PUJ2yq" role="3clFbw">
                <node concept="2OqwBi" id="7Q_67PUJ8Nx" role="3uHU7B">
                  <node concept="2OqwBi" id="7Q_67PUJ8e9" role="2Oq$k0">
                    <node concept="liA8E" id="7Q_67PUJ8ea" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                    </node>
                    <node concept="2JrnkZ" id="7Q_67PUJ9YG" role="2Oq$k0">
                      <node concept="37vLTw" id="7Q_67PUJ3Fb" role="2JrQYb">
                        <ref role="3cqZAo" node="7Q_67PUJ2yN" resolve="root" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="7Q_67PUJ8Ny" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                    <node concept="37vLTw" id="7Q_67PUJ8Nz" role="37wK5m">
                      <ref role="3cqZAo" node="7Q_67PUJ1S_" resolve="LEDGER" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="7Q_67PUJ2yu" role="3uHU7w">
                  <node concept="1rXfSq" id="7Q_67PUJ2yv" role="3uHU7B">
                    <ref role="37wK5l" node="7Q_67PUJ2zI" resolve="ledgerGrammar" />
                    <node concept="37vLTw" id="7Q_67PUJ2yw" role="37wK5m">
                      <ref role="3cqZAo" node="7Q_67PUJ2yN" resolve="root" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="7Q_67PUJ2yx" role="3uHU7w">
                    <ref role="3cqZAo" node="7Q_67PUJ2yf" resolve="grammar" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="7Q_67PUJ2yz" role="3clFbx">
                <node concept="3clFbJ" id="7Q_67PUJ2y$" role="3cqZAp">
                  <node concept="3y3z36" id="7Q_67PUJ2y_" role="3clFbw">
                    <node concept="37vLTw" id="7Q_67PUJ2yA" role="3uHU7B">
                      <ref role="3cqZAo" node="7Q_67PUJ2yi" resolve="found" />
                    </node>
                    <node concept="10Nm6u" id="7Q_67PUJ2yB" role="3uHU7w" />
                  </node>
                  <node concept="3clFbS" id="7Q_67PUJ2yD" role="3clFbx">
                    <node concept="YS8fn" id="7Q_67PUJ2yI" role="3cqZAp">
                      <node concept="1rXfSq" id="7Q_67PUJ2yE" role="YScLw">
                        <ref role="37wK5l" node="7Q_67PUJ2xZ" resolve="failure" />
                        <node concept="Xl_RD" id="7Q_67PUJ2yF" role="37wK5m">
                          <property role="Xl_RC" value="MBNF_DUPLICATE_LEDGER" />
                        </node>
                        <node concept="2OqwBi" id="7Q_67PUJ8NO" role="37wK5m">
                          <node concept="2OqwBi" id="7Q_67PUJ8es" role="2Oq$k0">
                            <node concept="liA8E" id="7Q_67PUJ8et" role="2OqNvi">
                              <ref role="37wK5l" to="mhbf:~SNode.getReference()" resolve="getReference" />
                            </node>
                            <node concept="2JrnkZ" id="7Q_67PUJ9YH" role="2Oq$k0">
                              <node concept="37vLTw" id="7Q_67PUJ3Fn" role="2JrQYb">
                                <ref role="3cqZAo" node="7Q_67PUJ2yf" resolve="grammar" />
                              </node>
                            </node>
                          </node>
                          <node concept="liA8E" id="7Q_67PUJ8NP" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="7Q_67PUJ2yJ" role="3cqZAp">
                  <node concept="37vLTI" id="7Q_67PUJ2yK" role="3clFbG">
                    <node concept="37vLTw" id="7Q_67PUJ2yL" role="37vLTJ">
                      <ref role="3cqZAo" node="7Q_67PUJ2yi" resolve="found" />
                    </node>
                    <node concept="37vLTw" id="7Q_67PUJ2yM" role="37vLTx">
                      <ref role="3cqZAo" node="7Q_67PUJ2yN" resolve="root" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7Q_67PUJ2yS" role="3cqZAp">
          <node concept="37vLTw" id="7Q_67PUJ2yT" role="3cqZAk">
            <ref role="3cqZAo" node="7Q_67PUJ2yi" resolve="found" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="7Q_67PUJ2yU" role="1B3o_S" />
      <node concept="3Tqbb2" id="7Q_67PUJa15" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="7Q_67PUJ2yW" role="jymVt">
      <property role="TrG5h" value="newLedger" />
      <node concept="3clFbS" id="7Q_67PUJ2yX" role="3clF47">
        <node concept="3cpWs6" id="7Q_67PUJ2yY" role="3cqZAp">
          <node concept="2ShNRf" id="7Q_67PUJ9WE" role="3cqZAk">
            <node concept="3zrR0B" id="7Q_67PUJ9WF" role="2ShVmc">
              <node concept="3Tqbb2" id="7Q_67PUJ9WG" role="3zrR0E">
                <ref role="ehGHo" to="6o2a:7Q_67PU$yi5" resolve="GenerationLedger" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="7Q_67PUJ2z0" role="1B3o_S" />
      <node concept="3Tqbb2" id="7Q_67PUJa16" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="7Q_67PUJ2z2" role="jymVt">
      <property role="TrG5h" value="newArtifact" />
      <node concept="37vLTG" id="7Q_67PUJ2z3" role="3clF46">
        <property role="TrG5h" value="ledger" />
        <node concept="3Tqbb2" id="7Q_67PUJa17" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="7Q_67PUJ2z5" role="3clF47">
        <node concept="3cpWs8" id="7Q_67PUJ2z7" role="3cqZAp">
          <node concept="3cpWsn" id="7Q_67PUJ2z6" role="3cpWs9">
            <property role="TrG5h" value="artifact" />
            <node concept="3Tqbb2" id="7Q_67PUJa18" role="1tU5fm" />
            <node concept="2ShNRf" id="7Q_67PUJ9VY" role="33vP2m">
              <node concept="3zrR0B" id="7Q_67PUJ9VZ" role="2ShVmc">
                <node concept="3Tqbb2" id="7Q_67PUJ9W0" role="3zrR0E">
                  <ref role="ehGHo" to="6o2a:7Q_67PU$yi6" resolve="GeneratedArtifact" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7Q_67PUJ2zc" role="3cqZAp">
          <node concept="2OqwBi" id="7Q_67PUJ8eU" role="3clFbG">
            <node concept="liA8E" id="7Q_67PUJ8eV" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNode.addChild(org.jetbrains.mps.openapi.language.SContainmentLink,org.jetbrains.mps.openapi.model.SNode)" resolve="addChild" />
              <node concept="37vLTw" id="7Q_67PUJ8eW" role="37wK5m">
                <ref role="3cqZAo" node="7Q_67PUJ1Tx" resolve="ARTIFACTS" />
              </node>
              <node concept="37vLTw" id="7Q_67PUJ8eX" role="37wK5m">
                <ref role="3cqZAo" node="7Q_67PUJ2z6" resolve="artifact" />
              </node>
            </node>
            <node concept="2JrnkZ" id="7Q_67PUJ9YI" role="2Oq$k0">
              <node concept="37vLTw" id="7Q_67PUJ3FB" role="2JrQYb">
                <ref role="3cqZAo" node="7Q_67PUJ2z3" resolve="ledger" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7Q_67PUJ2zg" role="3cqZAp">
          <node concept="37vLTw" id="7Q_67PUJ2zh" role="3cqZAk">
            <ref role="3cqZAo" node="7Q_67PUJ2z6" resolve="artifact" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="7Q_67PUJ2zi" role="1B3o_S" />
      <node concept="3Tqbb2" id="7Q_67PUJa19" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="7Q_67PUJ2zk" role="jymVt">
      <property role="TrG5h" value="artifacts" />
      <node concept="37vLTG" id="7Q_67PUJ2zl" role="3clF46">
        <property role="TrG5h" value="ledger" />
        <node concept="3Tqbb2" id="7Q_67PUJa1a" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="7Q_67PUJ2zn" role="3clF47">
        <node concept="3cpWs8" id="7Q_67PUJ2zp" role="3cqZAp">
          <node concept="3cpWsn" id="7Q_67PUJ2zo" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="3uibUv" id="7Q_67PUJ2zq" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3Tqbb2" id="7Q_67PUJa1b" role="11_B2D" />
            </node>
            <node concept="2ShNRf" id="7Q_67PUJ3FF" role="33vP2m">
              <node concept="1pGfFk" id="7Q_67PUJ3FK" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                <node concept="3Tqbb2" id="7Q_67PUJa1c" role="1pMfVU" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="7Q_67PUJ2zu" role="3cqZAp">
          <node concept="2OqwBi" id="7Q_67PUJ8f7" role="1DdaDG">
            <node concept="liA8E" id="7Q_67PUJ8f8" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNode.getChildren(org.jetbrains.mps.openapi.language.SContainmentLink)" resolve="getChildren" />
              <node concept="37vLTw" id="7Q_67PUJ8f9" role="37wK5m">
                <ref role="3cqZAo" node="7Q_67PUJ1Tx" resolve="ARTIFACTS" />
              </node>
            </node>
            <node concept="2JrnkZ" id="7Q_67PUJ9YJ" role="2Oq$k0">
              <node concept="37vLTw" id="7Q_67PUJ3FO" role="2JrQYb">
                <ref role="3cqZAo" node="7Q_67PUJ2zl" resolve="ledger" />
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="7Q_67PUJ2z$" role="1Duv9x">
            <property role="TrG5h" value="entry" />
            <node concept="3Tqbb2" id="7Q_67PUJa1d" role="1tU5fm" />
          </node>
          <node concept="3clFbS" id="7Q_67PUJ2zw" role="2LFqv$">
            <node concept="3clFbF" id="7Q_67PUJ2zx" role="3cqZAp">
              <node concept="2OqwBi" id="7Q_67PUJ8hs" role="3clFbG">
                <node concept="37vLTw" id="7Q_67PUJ3FT" role="2Oq$k0">
                  <ref role="3cqZAo" node="7Q_67PUJ2zo" resolve="result" />
                </node>
                <node concept="liA8E" id="7Q_67PUJ8ht" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="7Q_67PUJ8hu" role="37wK5m">
                    <ref role="3cqZAo" node="7Q_67PUJ2z$" resolve="entry" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7Q_67PUJ2zD" role="3cqZAp">
          <node concept="37vLTw" id="7Q_67PUJ2zE" role="3cqZAk">
            <ref role="3cqZAo" node="7Q_67PUJ2zo" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="7Q_67PUJ2zF" role="1B3o_S" />
      <node concept="3uibUv" id="7Q_67PUJ2zG" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3Tqbb2" id="7Q_67PUJa1e" role="11_B2D" />
      </node>
    </node>
    <node concept="2YIFZL" id="7Q_67PUJ2zI" role="jymVt">
      <property role="TrG5h" value="ledgerGrammar" />
      <node concept="37vLTG" id="7Q_67PUJ2zJ" role="3clF46">
        <property role="TrG5h" value="ledger" />
        <node concept="3Tqbb2" id="7Q_67PUJa1f" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="7Q_67PUJ2zL" role="3clF47">
        <node concept="3cpWs6" id="7Q_67PUJ2zM" role="3cqZAp">
          <node concept="2OqwBi" id="7Q_67PUJ8hC" role="3cqZAk">
            <node concept="liA8E" id="7Q_67PUJ8hD" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNode.getReferenceTarget(org.jetbrains.mps.openapi.language.SReferenceLink)" resolve="getReferenceTarget" />
              <node concept="37vLTw" id="7Q_67PUJ8hE" role="37wK5m">
                <ref role="3cqZAo" node="7Q_67PUJ1T_" resolve="GRAMMAR" />
              </node>
            </node>
            <node concept="2JrnkZ" id="7Q_67PUJ9YK" role="2Oq$k0">
              <node concept="37vLTw" id="7Q_67PUJ3FY" role="2JrQYb">
                <ref role="3cqZAo" node="7Q_67PUJ2zJ" resolve="ledger" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="7Q_67PUJ2zP" role="1B3o_S" />
      <node concept="3Tqbb2" id="7Q_67PUJa1g" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="7Q_67PUJ2zR" role="jymVt">
      <property role="TrG5h" value="artifactTarget" />
      <node concept="37vLTG" id="7Q_67PUJ2zS" role="3clF46">
        <property role="TrG5h" value="artifact" />
        <node concept="3Tqbb2" id="7Q_67PUJa1h" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="7Q_67PUJ2zU" role="3clF47">
        <node concept="3cpWs6" id="7Q_67PUJ2zV" role="3cqZAp">
          <node concept="2OqwBi" id="7Q_67PUJ8hO" role="3cqZAk">
            <node concept="liA8E" id="7Q_67PUJ8hP" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNode.getReferenceTarget(org.jetbrains.mps.openapi.language.SReferenceLink)" resolve="getReferenceTarget" />
              <node concept="37vLTw" id="7Q_67PUJ8hQ" role="37wK5m">
                <ref role="3cqZAo" node="7Q_67PUJ1TH" resolve="TARGET" />
              </node>
            </node>
            <node concept="2JrnkZ" id="7Q_67PUJ9YL" role="2Oq$k0">
              <node concept="37vLTw" id="7Q_67PUJ3G3" role="2JrQYb">
                <ref role="3cqZAo" node="7Q_67PUJ2zS" resolve="artifact" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="7Q_67PUJ2zY" role="1B3o_S" />
      <node concept="3Tqbb2" id="7Q_67PUJa1i" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="7Q_67PUJ2$0" role="jymVt">
      <property role="TrG5h" value="profileGrammar" />
      <node concept="37vLTG" id="7Q_67PUJ2$1" role="3clF46">
        <property role="TrG5h" value="profile" />
        <node concept="3Tqbb2" id="7Q_67PUJa1j" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="7Q_67PUJ2$3" role="3clF47">
        <node concept="3cpWs6" id="7Q_67PUJ2$4" role="3cqZAp">
          <node concept="2OqwBi" id="7Q_67PUJ8i0" role="3cqZAk">
            <node concept="liA8E" id="7Q_67PUJ8i1" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNode.getReferenceTarget(org.jetbrains.mps.openapi.language.SReferenceLink)" resolve="getReferenceTarget" />
              <node concept="37vLTw" id="7Q_67PUJ8i2" role="37wK5m">
                <ref role="3cqZAo" node="7Q_67PUJ1TL" resolve="PROFILE_GRAMMAR" />
              </node>
            </node>
            <node concept="2JrnkZ" id="7Q_67PUJ9YM" role="2Oq$k0">
              <node concept="37vLTw" id="7Q_67PUJ3G8" role="2JrQYb">
                <ref role="3cqZAo" node="7Q_67PUJ2$1" resolve="profile" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="7Q_67PUJ2$7" role="1B3o_S" />
      <node concept="3Tqbb2" id="7Q_67PUJa1k" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="7Q_67PUJ2$9" role="jymVt">
      <property role="TrG5h" value="pointGrammar" />
      <node concept="37vLTG" id="7Q_67PUJ2$a" role="3clF46">
        <property role="TrG5h" value="ledger" />
        <node concept="3Tqbb2" id="7Q_67PUJa1l" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7Q_67PUJ2$c" role="3clF46">
        <property role="TrG5h" value="grammar" />
        <node concept="3Tqbb2" id="7Q_67PUJa1m" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="7Q_67PUJ2$e" role="3clF47">
        <node concept="3clFbF" id="7Q_67PUJ2$f" role="3cqZAp">
          <node concept="2OqwBi" id="7Q_67PUJ8ic" role="3clFbG">
            <node concept="liA8E" id="7Q_67PUJ8id" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNode.setReferenceTarget(org.jetbrains.mps.openapi.language.SReferenceLink,org.jetbrains.mps.openapi.model.SNode)" resolve="setReferenceTarget" />
              <node concept="37vLTw" id="7Q_67PUJ8ie" role="37wK5m">
                <ref role="3cqZAo" node="7Q_67PUJ1T_" resolve="GRAMMAR" />
              </node>
              <node concept="37vLTw" id="7Q_67PUJ8if" role="37wK5m">
                <ref role="3cqZAo" node="7Q_67PUJ2$c" resolve="grammar" />
              </node>
            </node>
            <node concept="2JrnkZ" id="7Q_67PUJ9YN" role="2Oq$k0">
              <node concept="37vLTw" id="7Q_67PUJ3Gd" role="2JrQYb">
                <ref role="3cqZAo" node="7Q_67PUJ2$a" resolve="ledger" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="7Q_67PUJ2$j" role="1B3o_S" />
      <node concept="3cqZAl" id="7Q_67PUJ2$k" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="7Q_67PUJ2$l" role="jymVt">
      <property role="TrG5h" value="pointSource" />
      <node concept="37vLTG" id="7Q_67PUJ2$m" role="3clF46">
        <property role="TrG5h" value="artifact" />
        <node concept="3Tqbb2" id="7Q_67PUJa1n" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7Q_67PUJ2$o" role="3clF46">
        <property role="TrG5h" value="source" />
        <node concept="3Tqbb2" id="7Q_67PUJa1o" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="7Q_67PUJ2$q" role="3clF47">
        <node concept="3clFbF" id="7Q_67PUJ2$r" role="3cqZAp">
          <node concept="2OqwBi" id="7Q_67PUJ8ip" role="3clFbG">
            <node concept="liA8E" id="7Q_67PUJ8iq" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNode.setReferenceTarget(org.jetbrains.mps.openapi.language.SReferenceLink,org.jetbrains.mps.openapi.model.SNode)" resolve="setReferenceTarget" />
              <node concept="37vLTw" id="7Q_67PUJ8ir" role="37wK5m">
                <ref role="3cqZAo" node="7Q_67PUJ1TD" resolve="SOURCE" />
              </node>
              <node concept="37vLTw" id="7Q_67PUJ8is" role="37wK5m">
                <ref role="3cqZAo" node="7Q_67PUJ2$o" resolve="source" />
              </node>
            </node>
            <node concept="2JrnkZ" id="7Q_67PUJ9YO" role="2Oq$k0">
              <node concept="37vLTw" id="7Q_67PUJ3Gj" role="2JrQYb">
                <ref role="3cqZAo" node="7Q_67PUJ2$m" resolve="artifact" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="7Q_67PUJ2$v" role="1B3o_S" />
      <node concept="3cqZAl" id="7Q_67PUJ2$w" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="7Q_67PUJ2$x" role="jymVt">
      <property role="TrG5h" value="pointTarget" />
      <node concept="37vLTG" id="7Q_67PUJ2$y" role="3clF46">
        <property role="TrG5h" value="artifact" />
        <node concept="3Tqbb2" id="7Q_67PUJa1p" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7Q_67PUJ2$$" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="3Tqbb2" id="7Q_67PUJa1q" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="7Q_67PUJ2$A" role="3clF47">
        <node concept="3clFbF" id="7Q_67PUJ2$B" role="3cqZAp">
          <node concept="2OqwBi" id="7Q_67PUJ8iA" role="3clFbG">
            <node concept="liA8E" id="7Q_67PUJ8iB" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNode.setReferenceTarget(org.jetbrains.mps.openapi.language.SReferenceLink,org.jetbrains.mps.openapi.model.SNode)" resolve="setReferenceTarget" />
              <node concept="37vLTw" id="7Q_67PUJ8iC" role="37wK5m">
                <ref role="3cqZAo" node="7Q_67PUJ1TH" resolve="TARGET" />
              </node>
              <node concept="37vLTw" id="7Q_67PUJ8iD" role="37wK5m">
                <ref role="3cqZAo" node="7Q_67PUJ2$$" resolve="target" />
              </node>
            </node>
            <node concept="2JrnkZ" id="7Q_67PUJ9YP" role="2Oq$k0">
              <node concept="37vLTw" id="7Q_67PUJ3Gp" role="2JrQYb">
                <ref role="3cqZAo" node="7Q_67PUJ2$y" resolve="artifact" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="7Q_67PUJ2$F" role="1B3o_S" />
      <node concept="3cqZAl" id="7Q_67PUJ2$G" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="7Q_67PURZx3" role="jymVt">
      <property role="TrG5h" value="validateTarget" />
      <node concept="37vLTG" id="7Q_67PURZx4" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="H_c77" id="7Q_67PURZyV" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="7Q_67PURZx6" role="3clF47">
        <node concept="3clFbJ" id="7Q_67PURZx7" role="3cqZAp">
          <node concept="22lmx$" id="7Q_67PURZx8" role="3clFbw">
            <node concept="3clFbC" id="7Q_67PURZx9" role="3uHU7B">
              <node concept="37vLTw" id="7Q_67PURZxa" role="3uHU7B">
                <ref role="3cqZAo" node="7Q_67PURZx4" resolve="target" />
              </node>
              <node concept="10Nm6u" id="7Q_67PURZxb" role="3uHU7w" />
            </node>
            <node concept="3fqX7Q" id="7Q_67PURZxc" role="3uHU7w">
              <node concept="1eOMI4" id="7Q_67PURZxg" role="3fr31v">
                <node concept="2ZW3vV" id="7Q_67PURZxf" role="1eOMHV">
                  <node concept="2OqwBi" id="7Q_67PURZyS" role="2ZW6bz">
                    <node concept="liA8E" id="7Q_67PURZyT" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
                    </node>
                    <node concept="2JrnkZ" id="7Q_67PURZyU" role="2Oq$k0">
                      <node concept="37vLTw" id="7Q_67PURZyH" role="2JrQYb">
                        <ref role="3cqZAo" node="7Q_67PURZx4" resolve="target" />
                      </node>
                    </node>
                  </node>
                  <node concept="3uibUv" id="7Q_67PURZxe" role="2ZW6by">
                    <ref role="3uigEE" to="z1c4:~AbstractModule" resolve="AbstractModule" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="7Q_67PURZxi" role="3clFbx">
            <node concept="YS8fn" id="7Q_67PURZxm" role="3cqZAp">
              <node concept="1rXfSq" id="7Q_67PURZxj" role="YScLw">
                <ref role="37wK5l" node="7Q_67PUJ2xZ" resolve="failure" />
                <node concept="Xl_RD" id="7Q_67PURZxk" role="37wK5m">
                  <property role="Xl_RC" value="MBNF_GENERATION_TARGET" />
                </node>
                <node concept="Xl_RD" id="7Q_67PURZxl" role="37wK5m">
                  <property role="Xl_RC" value="Affected models require an editable module with persistent dependency metadata" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="7Q_67PURZxn" role="1B3o_S" />
      <node concept="3cqZAl" id="7Q_67PURZxo" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="694jTX$ZyXq" role="jymVt">
      <property role="TrG5h" value="fingerprint" />
      <node concept="37vLTG" id="694jTX$ZyXr" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="3uibUv" id="694jTX$ZyXs" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3clFbS" id="694jTX$ZyXt" role="3clF47">
        <node concept="3cpWs6" id="694jTX$ZyXu" role="3cqZAp">
          <node concept="1rXfSq" id="694jTX$ZyXv" role="3cqZAk">
            <ref role="37wK5l" node="7Q_67PUJ2xf" resolve="digest" />
            <node concept="1rXfSq" id="694jTX$ZyXw" role="37wK5m">
              <ref role="37wK5l" node="694jTX$ZyX$" resolve="canonical" />
              <node concept="37vLTw" id="694jTX$ZyXx" role="37wK5m">
                <ref role="3cqZAo" node="694jTX$ZyXr" resolve="value" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="694jTX$ZyXy" role="1B3o_S" />
      <node concept="3uibUv" id="694jTX$ZyXz" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="2YIFZL" id="694jTX$ZyX$" role="jymVt">
      <property role="TrG5h" value="canonical" />
      <node concept="37vLTG" id="694jTX$ZyX_" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="3uibUv" id="694jTX$ZyXA" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3clFbS" id="694jTX$ZyXB" role="3clF47">
        <node concept="3clFbJ" id="694jTX$ZyXC" role="3cqZAp">
          <node concept="3clFbC" id="694jTX$ZyXD" role="3clFbw">
            <node concept="37vLTw" id="694jTX$ZyXE" role="3uHU7B">
              <ref role="3cqZAo" node="694jTX$ZyX_" resolve="value" />
            </node>
            <node concept="10Nm6u" id="694jTX$ZyXF" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="694jTX$ZyXH" role="3clFbx">
            <node concept="3cpWs6" id="694jTX$ZyXI" role="3cqZAp">
              <node concept="Xl_RD" id="694jTX$ZyXJ" role="3cqZAk">
                <property role="Xl_RC" value="null;" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="694jTX$ZyXK" role="3cqZAp">
          <node concept="2ZW3vV" id="694jTX$ZyXN" role="3clFbw">
            <node concept="37vLTw" id="694jTX$ZyXL" role="2ZW6bz">
              <ref role="3cqZAo" node="694jTX$ZyX_" resolve="value" />
            </node>
            <node concept="3uibUv" id="694jTX$ZyXM" role="2ZW6by">
              <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
            </node>
          </node>
          <node concept="3clFbS" id="694jTX$ZyXP" role="3clFbx">
            <node concept="3cpWs8" id="694jTX$ZyXR" role="3cqZAp">
              <node concept="3cpWsn" id="694jTX$ZyXQ" role="3cpWs9">
                <property role="TrG5h" value="ordered" />
                <node concept="3uibUv" id="694jTX$ZyXS" role="1tU5fm">
                  <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
                  <node concept="3uibUv" id="694jTX$ZyXT" role="11_B2D">
                    <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                  </node>
                  <node concept="3uibUv" id="694jTX$ZyXU" role="11_B2D">
                    <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                  </node>
                </node>
                <node concept="2ShNRf" id="694jTX$Zz4R" role="33vP2m">
                  <node concept="1pGfFk" id="694jTX$Zz4V" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" to="33ny:~TreeMap.&lt;init&gt;()" resolve="TreeMap" />
                    <node concept="3uibUv" id="694jTX$Zz4W" role="1pMfVU">
                      <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                    </node>
                    <node concept="3uibUv" id="694jTX$Zz4X" role="1pMfVU">
                      <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1DcWWT" id="694jTX$ZyXY" role="3cqZAp">
              <node concept="2OqwBi" id="694jTX$Zz9c" role="1DdaDG">
                <node concept="1eOMI4" id="694jTX$ZyYu" role="2Oq$k0">
                  <node concept="10QFUN" id="694jTX$ZyYp" role="1eOMHV">
                    <node concept="37vLTw" id="694jTX$ZyYq" role="10QFUP">
                      <ref role="3cqZAo" node="694jTX$ZyX_" resolve="value" />
                    </node>
                    <node concept="3uibUv" id="694jTX$ZyYr" role="10QFUM">
                      <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
                      <node concept="3qTvmN" id="694jTX$ZyYs" role="11_B2D" />
                      <node concept="3qTvmN" id="694jTX$ZyYt" role="11_B2D" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="694jTX$Zz9d" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Map.entrySet()" resolve="entrySet" />
                </node>
              </node>
              <node concept="3cpWsn" id="694jTX$ZyYj" role="1Duv9x">
                <property role="TrG5h" value="entry" />
                <node concept="3uibUv" id="694jTX$ZyYl" role="1tU5fm">
                  <ref role="3uigEE" to="33ny:~Map$Entry" resolve="Map.Entry" />
                  <node concept="3qTvmN" id="694jTX$ZyYm" role="11_B2D" />
                  <node concept="3qTvmN" id="694jTX$ZyYn" role="11_B2D" />
                </node>
              </node>
              <node concept="3clFbS" id="694jTX$ZyY0" role="2LFqv$">
                <node concept="3cpWs8" id="694jTX_1Zt_" role="3cqZAp">
                  <node concept="3cpWsn" id="694jTX_1Zt$" role="3cpWs9">
                    <property role="TrG5h" value="key" />
                    <node concept="3uibUv" id="694jTX_1ZtA" role="1tU5fm">
                      <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                    </node>
                    <node concept="2OqwBi" id="694jTX_1Zvh" role="33vP2m">
                      <node concept="37vLTw" id="694jTX_1Zuj" role="2Oq$k0">
                        <ref role="3cqZAo" node="694jTX$ZyYj" resolve="entry" />
                      </node>
                      <node concept="liA8E" id="694jTX_1Zvi" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~Map$Entry.getKey()" resolve="getKey" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="694jTX$ZyY1" role="3cqZAp">
                  <node concept="3fqX7Q" id="694jTX$ZyY2" role="3clFbw">
                    <node concept="1eOMI4" id="694jTX$ZyY6" role="3fr31v">
                      <node concept="2ZW3vV" id="694jTX$ZyY5" role="1eOMHV">
                        <node concept="37vLTw" id="694jTX_1Zvj" role="2ZW6bz">
                          <ref role="3cqZAo" node="694jTX_1Zt$" resolve="key" />
                        </node>
                        <node concept="3uibUv" id="694jTX$ZyY4" role="2ZW6by">
                          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="694jTX$ZyY8" role="3clFbx">
                    <node concept="YS8fn" id="694jTX$ZyYc" role="3cqZAp">
                      <node concept="1rXfSq" id="694jTX$ZyY9" role="YScLw">
                        <ref role="37wK5l" node="7Q_67PUJ2xZ" resolve="failure" />
                        <node concept="Xl_RD" id="694jTX$ZyYa" role="37wK5m">
                          <property role="Xl_RC" value="MBNF_FINGERPRINT_INPUT" />
                        </node>
                        <node concept="Xl_RD" id="694jTX$ZyYb" role="37wK5m">
                          <property role="Xl_RC" value="Metadata map keys must be strings" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="694jTX$ZyYd" role="3cqZAp">
                  <node concept="2OqwBi" id="694jTX$ZzjJ" role="3clFbG">
                    <node concept="37vLTw" id="694jTX$ZzaA" role="2Oq$k0">
                      <ref role="3cqZAo" node="694jTX$ZyXQ" resolve="ordered" />
                    </node>
                    <node concept="liA8E" id="694jTX$ZzjK" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
                      <node concept="10QFUN" id="694jTX$ZzjL" role="37wK5m">
                        <node concept="37vLTw" id="694jTX_1Zvk" role="10QFUP">
                          <ref role="3cqZAo" node="694jTX_1Zt$" resolve="key" />
                        </node>
                        <node concept="3uibUv" id="694jTX$ZzjN" role="10QFUM">
                          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="694jTX$ZzYf" role="37wK5m">
                        <node concept="37vLTw" id="694jTX$Zzrz" role="2Oq$k0">
                          <ref role="3cqZAo" node="694jTX$ZyYj" resolve="entry" />
                        </node>
                        <node concept="liA8E" id="694jTX$ZzYg" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~Map$Entry.getValue()" resolve="getValue" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="694jTX$ZyYw" role="3cqZAp">
              <node concept="3cpWsn" id="694jTX$ZyYv" role="3cpWs9">
                <property role="TrG5h" value="result" />
                <node concept="3uibUv" id="694jTX$ZyYx" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
                <node concept="Xl_RD" id="694jTX$ZyYy" role="33vP2m">
                  <property role="Xl_RC" value="map{" />
                </node>
              </node>
            </node>
            <node concept="1DcWWT" id="694jTX$ZyYz" role="3cqZAp">
              <node concept="2OqwBi" id="694jTX$Zzn$" role="1DdaDG">
                <node concept="37vLTw" id="694jTX$Zzbn" role="2Oq$k0">
                  <ref role="3cqZAo" node="694jTX$ZyXQ" resolve="ordered" />
                </node>
                <node concept="liA8E" id="694jTX$Zzn_" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Map.entrySet()" resolve="entrySet" />
                </node>
              </node>
              <node concept="3cpWsn" id="694jTX$ZyYK" role="1Duv9x">
                <property role="TrG5h" value="entry" />
                <node concept="3uibUv" id="694jTX$ZyYM" role="1tU5fm">
                  <ref role="3uigEE" to="33ny:~Map$Entry" resolve="Map.Entry" />
                  <node concept="3uibUv" id="694jTX$ZyYN" role="11_B2D">
                    <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                  </node>
                  <node concept="3uibUv" id="694jTX$ZyYO" role="11_B2D">
                    <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="694jTX$ZyY_" role="2LFqv$">
                <node concept="3clFbF" id="694jTX$ZyYA" role="3cqZAp">
                  <node concept="37vLTI" id="694jTX$ZyYB" role="3clFbG">
                    <node concept="37vLTw" id="694jTX$ZyYC" role="37vLTJ">
                      <ref role="3cqZAo" node="694jTX$ZyYv" resolve="result" />
                    </node>
                    <node concept="3cpWs3" id="694jTX$ZyYD" role="37vLTx">
                      <node concept="3cpWs3" id="694jTX$ZyYE" role="3uHU7B">
                        <node concept="37vLTw" id="694jTX$ZyYF" role="3uHU7B">
                          <ref role="3cqZAo" node="694jTX$ZyYv" resolve="result" />
                        </node>
                        <node concept="1rXfSq" id="694jTX$ZyYG" role="3uHU7w">
                          <ref role="37wK5l" node="694jTX$ZyX$" resolve="canonical" />
                          <node concept="2OqwBi" id="694jTX$Zzow" role="37wK5m">
                            <node concept="37vLTw" id="694jTX$Zzc4" role="2Oq$k0">
                              <ref role="3cqZAo" node="694jTX$ZyYK" resolve="entry" />
                            </node>
                            <node concept="liA8E" id="694jTX$Zzox" role="2OqNvi">
                              <ref role="37wK5l" to="33ny:~Map$Entry.getKey()" resolve="getKey" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="1rXfSq" id="694jTX$ZyYI" role="3uHU7w">
                        <ref role="37wK5l" node="694jTX$ZyX$" resolve="canonical" />
                        <node concept="2OqwBi" id="694jTX$Zzps" role="37wK5m">
                          <node concept="37vLTw" id="694jTX$ZzcL" role="2Oq$k0">
                            <ref role="3cqZAo" node="694jTX$ZyYK" resolve="entry" />
                          </node>
                          <node concept="liA8E" id="694jTX$Zzpt" role="2OqNvi">
                            <ref role="37wK5l" to="33ny:~Map$Entry.getValue()" resolve="getValue" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="694jTX$ZyYQ" role="3cqZAp">
              <node concept="3cpWs3" id="694jTX$ZyYR" role="3cqZAk">
                <node concept="37vLTw" id="694jTX$ZyYS" role="3uHU7B">
                  <ref role="3cqZAo" node="694jTX$ZyYv" resolve="result" />
                </node>
                <node concept="Xl_RD" id="694jTX$ZyYT" role="3uHU7w">
                  <property role="Xl_RC" value="}" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="694jTX$ZyYU" role="3cqZAp">
          <node concept="2ZW3vV" id="694jTX$ZyYX" role="3clFbw">
            <node concept="37vLTw" id="694jTX$ZyYV" role="2ZW6bz">
              <ref role="3cqZAo" node="694jTX$ZyX_" resolve="value" />
            </node>
            <node concept="3uibUv" id="694jTX$ZyYW" role="2ZW6by">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
            </node>
          </node>
          <node concept="3clFbS" id="694jTX$ZyYZ" role="3clFbx">
            <node concept="3cpWs8" id="694jTX$ZyZ1" role="3cqZAp">
              <node concept="3cpWsn" id="694jTX$ZyZ0" role="3cpWs9">
                <property role="TrG5h" value="result" />
                <node concept="3uibUv" id="694jTX$ZyZ2" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
                <node concept="Xl_RD" id="694jTX$ZyZ3" role="33vP2m">
                  <property role="Xl_RC" value="list[" />
                </node>
              </node>
            </node>
            <node concept="1DcWWT" id="694jTX$ZyZ4" role="3cqZAp">
              <node concept="10QFUN" id="694jTX$ZyZh" role="1DdaDG">
                <node concept="37vLTw" id="694jTX$ZyZi" role="10QFUP">
                  <ref role="3cqZAo" node="694jTX$ZyX_" resolve="value" />
                </node>
                <node concept="3uibUv" id="694jTX$ZyZj" role="10QFUM">
                  <ref role="3uigEE" to="33ny:~List" resolve="List" />
                  <node concept="3qTvmN" id="694jTX$ZyZk" role="11_B2D" />
                </node>
              </node>
              <node concept="3cpWsn" id="694jTX$ZyZe" role="1Duv9x">
                <property role="TrG5h" value="entry" />
                <node concept="3uibUv" id="694jTX$ZyZg" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                </node>
              </node>
              <node concept="3clFbS" id="694jTX$ZyZ6" role="2LFqv$">
                <node concept="3clFbF" id="694jTX$ZyZ7" role="3cqZAp">
                  <node concept="37vLTI" id="694jTX$ZyZ8" role="3clFbG">
                    <node concept="37vLTw" id="694jTX$ZyZ9" role="37vLTJ">
                      <ref role="3cqZAo" node="694jTX$ZyZ0" resolve="result" />
                    </node>
                    <node concept="3cpWs3" id="694jTX$ZyZa" role="37vLTx">
                      <node concept="37vLTw" id="694jTX$ZyZb" role="3uHU7B">
                        <ref role="3cqZAo" node="694jTX$ZyZ0" resolve="result" />
                      </node>
                      <node concept="1rXfSq" id="694jTX$ZyZc" role="3uHU7w">
                        <ref role="37wK5l" node="694jTX$ZyX$" resolve="canonical" />
                        <node concept="37vLTw" id="694jTX$ZyZd" role="37wK5m">
                          <ref role="3cqZAo" node="694jTX$ZyZe" resolve="entry" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="694jTX$ZyZl" role="3cqZAp">
              <node concept="3cpWs3" id="694jTX$ZyZm" role="3cqZAk">
                <node concept="37vLTw" id="694jTX$ZyZn" role="3uHU7B">
                  <ref role="3cqZAo" node="694jTX$ZyZ0" resolve="result" />
                </node>
                <node concept="Xl_RD" id="694jTX$ZyZo" role="3uHU7w">
                  <property role="Xl_RC" value="]" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="694jTX$ZyZp" role="3cqZAp">
          <node concept="22lmx$" id="694jTX$ZyZq" role="3clFbw">
            <node concept="22lmx$" id="694jTX$ZyZr" role="3uHU7B">
              <node concept="2ZW3vV" id="694jTX$ZyZu" role="3uHU7B">
                <node concept="37vLTw" id="694jTX$ZyZs" role="2ZW6bz">
                  <ref role="3cqZAo" node="694jTX$ZyX_" resolve="value" />
                </node>
                <node concept="3uibUv" id="694jTX$ZyZt" role="2ZW6by">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
              </node>
              <node concept="2ZW3vV" id="694jTX$ZyZx" role="3uHU7w">
                <node concept="37vLTw" id="694jTX$ZyZv" role="2ZW6bz">
                  <ref role="3cqZAo" node="694jTX$ZyX_" resolve="value" />
                </node>
                <node concept="3uibUv" id="694jTX$ZyZw" role="2ZW6by">
                  <ref role="3uigEE" to="wyt6:~Number" resolve="Number" />
                </node>
              </node>
            </node>
            <node concept="2ZW3vV" id="694jTX$ZyZ$" role="3uHU7w">
              <node concept="37vLTw" id="694jTX$ZyZy" role="2ZW6bz">
                <ref role="3cqZAo" node="694jTX$ZyX_" resolve="value" />
              </node>
              <node concept="3uibUv" id="694jTX$ZyZz" role="2ZW6by">
                <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="694jTX$ZyZA" role="3clFbx">
            <node concept="3cpWs8" id="694jTX$ZyZC" role="3cqZAp">
              <node concept="3cpWsn" id="694jTX$ZyZB" role="3cpWs9">
                <property role="TrG5h" value="text" />
                <node concept="3uibUv" id="694jTX$ZyZD" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
                <node concept="2OqwBi" id="694jTX$ZzpB" role="33vP2m">
                  <node concept="37vLTw" id="694jTX$Zzdu" role="2Oq$k0">
                    <ref role="3cqZAo" node="694jTX$ZyX_" resolve="value" />
                  </node>
                  <node concept="liA8E" id="694jTX$ZzpC" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="694jTX$ZyZF" role="3cqZAp">
              <node concept="3cpWs3" id="694jTX$ZyZG" role="3cqZAk">
                <node concept="3cpWs3" id="694jTX$ZyZH" role="3uHU7B">
                  <node concept="3cpWs3" id="694jTX$ZyZI" role="3uHU7B">
                    <node concept="3cpWs3" id="694jTX$ZyZJ" role="3uHU7B">
                      <node concept="2OqwBi" id="694jTX$ZzWj" role="3uHU7B">
                        <node concept="2OqwBi" id="694jTX$ZzpT" role="2Oq$k0">
                          <node concept="37vLTw" id="694jTX$Zzej" role="2Oq$k0">
                            <ref role="3cqZAo" node="694jTX$ZyX_" resolve="value" />
                          </node>
                          <node concept="liA8E" id="694jTX$ZzpU" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                          </node>
                        </node>
                        <node concept="liA8E" id="694jTX$ZzWk" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~Class.getName()" resolve="getName" />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="694jTX$ZyZM" role="3uHU7w">
                        <property role="Xl_RC" value=":" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="694jTX$Zzq9" role="3uHU7w">
                      <node concept="37vLTw" id="694jTX$Zzf0" role="2Oq$k0">
                        <ref role="3cqZAo" node="694jTX$ZyZB" resolve="text" />
                      </node>
                      <node concept="liA8E" id="694jTX$Zzqa" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.length()" resolve="length" />
                      </node>
                    </node>
                  </node>
                  <node concept="Xl_RD" id="694jTX$ZyZO" role="3uHU7w">
                    <property role="Xl_RC" value=":" />
                  </node>
                </node>
                <node concept="37vLTw" id="694jTX$ZyZP" role="3uHU7w">
                  <ref role="3cqZAo" node="694jTX$ZyZB" resolve="text" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="YS8fn" id="694jTX$ZyZT" role="3cqZAp">
          <node concept="1rXfSq" id="694jTX$ZyZQ" role="YScLw">
            <ref role="37wK5l" node="7Q_67PUJ2xZ" resolve="failure" />
            <node concept="Xl_RD" id="694jTX$ZyZR" role="37wK5m">
              <property role="Xl_RC" value="MBNF_FINGERPRINT_INPUT" />
            </node>
            <node concept="Xl_RD" id="694jTX$ZyZS" role="37wK5m">
              <property role="Xl_RC" value="Metadata values must be maps, lists, strings, numbers, booleans or null" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="694jTX$ZyZU" role="1B3o_S" />
      <node concept="3uibUv" id="694jTX$ZyZV" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="7Q_67PUOb_o">
    <property role="TrG5h" value="RegenerationActions" />
    <node concept="3Tm1VV" id="7Q_67PUOb_p" role="1B3o_S" />
    <node concept="Wx3nA" id="7Q_67PUObAV" role="jymVt">
      <property role="TrG5h" value="GRAMMAR" />
      <property role="3TUv4t" value="true" />
      <node concept="3bZ5Sz" id="7Q_67PUOpKJ" role="1tU5fm" />
      <node concept="3Tm6S6" id="7Q_67PUObAY" role="1B3o_S" />
      <node concept="35c_gC" id="7Q_67PUOpKx" role="33vP2m">
        <ref role="35c_gD" to="6o2a:2b2ZYR3vfui" resolve="grammar" />
      </node>
    </node>
    <node concept="Wx3nA" id="7Q_67PUObAZ" role="jymVt">
      <property role="TrG5h" value="PROFILE" />
      <property role="3TUv4t" value="true" />
      <node concept="3bZ5Sz" id="7Q_67PUOpKK" role="1tU5fm" />
      <node concept="3Tm6S6" id="7Q_67PUObB2" role="1B3o_S" />
      <node concept="35c_gC" id="7Q_67PUOpKy" role="33vP2m">
        <ref role="35c_gD" to="6o2a:14wlUfKK6zf" resolve="GenerationProfile" />
      </node>
    </node>
    <node concept="Wx3nA" id="7Q_67PUObB3" role="jymVt">
      <property role="TrG5h" value="PROFILE_GRAMMAR" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="7Q_67PUObB4" role="1tU5fm">
        <ref role="3uigEE" to="c17a:~SReferenceLink" resolve="SReferenceLink" />
      </node>
      <node concept="3Tm6S6" id="7Q_67PUObB6" role="1B3o_S" />
      <node concept="359W_D" id="7Q_67PUOpKz" role="33vP2m">
        <ref role="359W_E" to="6o2a:14wlUfKK6zf" resolve="GenerationProfile" />
        <ref role="359W_F" to="6o2a:14wlUfKK6zi" resolve="grammar" />
      </node>
    </node>
    <node concept="312cEu" id="7Q_67PUOb_q" role="jymVt">
      <property role="TrG5h" value="ProfileOption" />
      <node concept="3Tm6S6" id="7Q_67PUOb_r" role="1B3o_S" />
      <node concept="312cEg" id="7Q_67PUOb_s" role="jymVt">
        <property role="TrG5h" value="label" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="7Q_67PUOb_u" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
        <node concept="3Tm6S6" id="7Q_67PUOb_v" role="1B3o_S" />
      </node>
      <node concept="312cEg" id="7Q_67PUOb_w" role="jymVt">
        <property role="TrG5h" value="profile" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tqbb2" id="7Q_67PUOpKL" role="1tU5fm" />
        <node concept="3Tm6S6" id="7Q_67PUOb_z" role="1B3o_S" />
      </node>
      <node concept="3clFbW" id="7Q_67PUOb_$" role="jymVt">
        <node concept="3cqZAl" id="7Q_67PUOb__" role="3clF45" />
        <node concept="37vLTG" id="7Q_67PUOb_A" role="3clF46">
          <property role="TrG5h" value="label" />
          <node concept="3uibUv" id="7Q_67PUOb_B" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          </node>
        </node>
        <node concept="37vLTG" id="7Q_67PUOb_C" role="3clF46">
          <property role="TrG5h" value="profile" />
          <node concept="3Tqbb2" id="7Q_67PUOpKM" role="1tU5fm" />
        </node>
        <node concept="3clFbS" id="7Q_67PUOb_E" role="3clF47">
          <node concept="3clFbF" id="7Q_67PUOb_F" role="3cqZAp">
            <node concept="37vLTI" id="7Q_67PUOb_G" role="3clFbG">
              <node concept="2OqwBi" id="7Q_67PUOb_H" role="37vLTJ">
                <node concept="Xjq3P" id="7Q_67PUOb_I" role="2Oq$k0" />
                <node concept="2OwXpG" id="7Q_67PUOb_J" role="2OqNvi">
                  <ref role="2Oxat5" node="7Q_67PUOb_s" resolve="label" />
                </node>
              </node>
              <node concept="37vLTw" id="7Q_67PUOb_K" role="37vLTx">
                <ref role="3cqZAo" node="7Q_67PUOb_A" resolve="label" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7Q_67PUOb_L" role="3cqZAp">
            <node concept="37vLTI" id="7Q_67PUOb_M" role="3clFbG">
              <node concept="2OqwBi" id="7Q_67PUOb_N" role="37vLTJ">
                <node concept="Xjq3P" id="7Q_67PUOb_O" role="2Oq$k0" />
                <node concept="2OwXpG" id="7Q_67PUOb_P" role="2OqNvi">
                  <ref role="2Oxat5" node="7Q_67PUOb_w" resolve="profile" />
                </node>
              </node>
              <node concept="37vLTw" id="7Q_67PUOb_Q" role="37vLTx">
                <ref role="3cqZAo" node="7Q_67PUOb_C" resolve="profile" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm6S6" id="7Q_67PUOb_R" role="1B3o_S" />
      </node>
      <node concept="3clFb_" id="7Q_67PUOb_S" role="jymVt">
        <property role="TrG5h" value="toString" />
        <node concept="2AHcQZ" id="7Q_67PUOb_T" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
        <node concept="3clFbS" id="7Q_67PUOb_U" role="3clF47">
          <node concept="3cpWs6" id="7Q_67PUOb_V" role="3cqZAp">
            <node concept="37vLTw" id="7Q_67PUOb_W" role="3cqZAk">
              <ref role="3cqZAo" node="7Q_67PUOb_s" resolve="label" />
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="7Q_67PUOb_X" role="1B3o_S" />
        <node concept="3uibUv" id="7Q_67PUOb_Y" role="3clF45">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
    </node>
    <node concept="312cEu" id="7Q_67PUOb_Z" role="jymVt">
      <property role="TrG5h" value="Selection" />
      <node concept="3Tm6S6" id="7Q_67PUObA0" role="1B3o_S" />
      <node concept="312cEg" id="7Q_67PUObA1" role="jymVt">
        <property role="TrG5h" value="grammar" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tqbb2" id="7Q_67PUOpKN" role="1tU5fm" />
        <node concept="3Tm6S6" id="7Q_67PUObA4" role="1B3o_S" />
      </node>
      <node concept="312cEg" id="7Q_67PUObA5" role="jymVt">
        <property role="TrG5h" value="generated" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="7Q_67PUObA7" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3Tqbb2" id="7Q_67PUOpKO" role="11_B2D" />
        </node>
        <node concept="3Tm6S6" id="7Q_67PUObA9" role="1B3o_S" />
      </node>
      <node concept="312cEg" id="7Q_67PUObAa" role="jymVt">
        <property role="TrG5h" value="targets" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="7Q_67PUObAc" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="H_c77" id="7Q_67PUOpKP" role="11_B2D" />
        </node>
        <node concept="3Tm6S6" id="7Q_67PUObAe" role="1B3o_S" />
      </node>
      <node concept="312cEg" id="7Q_67PUObAf" role="jymVt">
        <property role="TrG5h" value="profiles" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="7Q_67PUObAh" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="7Q_67PUObAi" role="11_B2D">
            <ref role="3uigEE" node="7Q_67PUOb_q" resolve="RegenerationActions.ProfileOption" />
          </node>
        </node>
        <node concept="3Tm6S6" id="7Q_67PUObAj" role="1B3o_S" />
      </node>
      <node concept="3clFbW" id="7Q_67PUObAk" role="jymVt">
        <node concept="3cqZAl" id="7Q_67PUObAl" role="3clF45" />
        <node concept="37vLTG" id="7Q_67PUObAm" role="3clF46">
          <property role="TrG5h" value="grammar" />
          <node concept="3Tqbb2" id="7Q_67PUOpKQ" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="7Q_67PUObAo" role="3clF46">
          <property role="TrG5h" value="generated" />
          <node concept="3uibUv" id="7Q_67PUObAp" role="1tU5fm">
            <ref role="3uigEE" to="33ny:~List" resolve="List" />
            <node concept="3Tqbb2" id="7Q_67PUOpKR" role="11_B2D" />
          </node>
        </node>
        <node concept="37vLTG" id="7Q_67PUObAr" role="3clF46">
          <property role="TrG5h" value="targets" />
          <node concept="3uibUv" id="7Q_67PUObAs" role="1tU5fm">
            <ref role="3uigEE" to="33ny:~List" resolve="List" />
            <node concept="H_c77" id="7Q_67PUOpKS" role="11_B2D" />
          </node>
        </node>
        <node concept="37vLTG" id="7Q_67PUObAu" role="3clF46">
          <property role="TrG5h" value="profiles" />
          <node concept="3uibUv" id="7Q_67PUObAv" role="1tU5fm">
            <ref role="3uigEE" to="33ny:~List" resolve="List" />
            <node concept="3uibUv" id="7Q_67PUObAw" role="11_B2D">
              <ref role="3uigEE" node="7Q_67PUOb_q" resolve="RegenerationActions.ProfileOption" />
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="7Q_67PUObAx" role="3clF47">
          <node concept="3clFbF" id="7Q_67PUObAy" role="3cqZAp">
            <node concept="37vLTI" id="7Q_67PUObAz" role="3clFbG">
              <node concept="2OqwBi" id="7Q_67PUObA$" role="37vLTJ">
                <node concept="Xjq3P" id="7Q_67PUObA_" role="2Oq$k0" />
                <node concept="2OwXpG" id="7Q_67PUObAA" role="2OqNvi">
                  <ref role="2Oxat5" node="7Q_67PUObA1" resolve="grammar" />
                </node>
              </node>
              <node concept="37vLTw" id="7Q_67PUObAB" role="37vLTx">
                <ref role="3cqZAo" node="7Q_67PUObAm" resolve="grammar" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7Q_67PUObAC" role="3cqZAp">
            <node concept="37vLTI" id="7Q_67PUObAD" role="3clFbG">
              <node concept="2OqwBi" id="7Q_67PUObAE" role="37vLTJ">
                <node concept="Xjq3P" id="7Q_67PUObAF" role="2Oq$k0" />
                <node concept="2OwXpG" id="7Q_67PUObAG" role="2OqNvi">
                  <ref role="2Oxat5" node="7Q_67PUObA5" resolve="generated" />
                </node>
              </node>
              <node concept="37vLTw" id="7Q_67PUObAH" role="37vLTx">
                <ref role="3cqZAo" node="7Q_67PUObAo" resolve="generated" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7Q_67PUObAI" role="3cqZAp">
            <node concept="37vLTI" id="7Q_67PUObAJ" role="3clFbG">
              <node concept="2OqwBi" id="7Q_67PUObAK" role="37vLTJ">
                <node concept="Xjq3P" id="7Q_67PUObAL" role="2Oq$k0" />
                <node concept="2OwXpG" id="7Q_67PUObAM" role="2OqNvi">
                  <ref role="2Oxat5" node="7Q_67PUObAa" resolve="targets" />
                </node>
              </node>
              <node concept="37vLTw" id="7Q_67PUObAN" role="37vLTx">
                <ref role="3cqZAo" node="7Q_67PUObAr" resolve="targets" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7Q_67PUObAO" role="3cqZAp">
            <node concept="37vLTI" id="7Q_67PUObAP" role="3clFbG">
              <node concept="2OqwBi" id="7Q_67PUObAQ" role="37vLTJ">
                <node concept="Xjq3P" id="7Q_67PUObAR" role="2Oq$k0" />
                <node concept="2OwXpG" id="7Q_67PUObAS" role="2OqNvi">
                  <ref role="2Oxat5" node="7Q_67PUObAf" resolve="profiles" />
                </node>
              </node>
              <node concept="37vLTw" id="7Q_67PUObAT" role="37vLTx">
                <ref role="3cqZAo" node="7Q_67PUObAu" resolve="profiles" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm6S6" id="7Q_67PUObAU" role="1B3o_S" />
      </node>
    </node>
    <node concept="2YIFZL" id="7Q_67PUObB7" role="jymVt">
      <property role="TrG5h" value="open" />
      <node concept="37vLTG" id="7Q_67PUObB8" role="3clF46">
        <property role="TrG5h" value="project" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="7Q_67PUObB9" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~MPSProject" resolve="MPSProject" />
        </node>
      </node>
      <node concept="37vLTG" id="7Q_67PUObBa" role="3clF46">
        <property role="TrG5h" value="generatedModel" />
        <property role="3TUv4t" value="true" />
        <node concept="H_c77" id="7Q_67PUOpKT" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="7Q_67PUObBc" role="3clF47">
        <node concept="3cpWs8" id="7Q_67PUObBe" role="3cqZAp">
          <node concept="3cpWsn" id="7Q_67PUObBd" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="selection" />
            <node concept="10Q1$e" id="7Q_67PUObBg" role="1tU5fm">
              <node concept="3uibUv" id="7Q_67PUObBf" role="10Q1$1">
                <ref role="3uigEE" node="7Q_67PUOb_Z" resolve="RegenerationActions.Selection" />
              </node>
            </node>
            <node concept="2ShNRf" id="7Q_67PUObBl" role="33vP2m">
              <node concept="3$_iS1" id="7Q_67PUObBj" role="2ShVmc">
                <node concept="3$GHV9" id="7Q_67PUObBk" role="3$GQph">
                  <node concept="3cmrfG" id="7Q_67PUObBi" role="3$I4v7">
                    <property role="3cmrfH" value="1" />
                  </node>
                </node>
                <node concept="3uibUv" id="7Q_67PUObBh" role="3$_nBY">
                  <ref role="3uigEE" node="7Q_67PUOb_Z" resolve="RegenerationActions.Selection" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7Q_67PUObBn" role="3cqZAp">
          <node concept="3cpWsn" id="7Q_67PUObBm" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="plan" />
            <node concept="10Q1$e" id="7Q_67PUObBp" role="1tU5fm">
              <node concept="3uibUv" id="7Q_67PUObBo" role="10Q1$1">
                <ref role="3uigEE" node="7Q_67PUJ1Pf" resolve="ProtectedRegeneration.Preview" />
              </node>
            </node>
            <node concept="2ShNRf" id="7Q_67PUObBu" role="33vP2m">
              <node concept="3$_iS1" id="7Q_67PUObBs" role="2ShVmc">
                <node concept="3$GHV9" id="7Q_67PUObBt" role="3$GQph">
                  <node concept="3cmrfG" id="7Q_67PUObBr" role="3$I4v7">
                    <property role="3cmrfH" value="1" />
                  </node>
                </node>
                <node concept="3uibUv" id="7Q_67PUObBq" role="3$_nBY">
                  <ref role="3uigEE" node="7Q_67PUJ1Pf" resolve="ProtectedRegeneration.Preview" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="7Q_67PUObE_" role="3cqZAp">
          <node concept="3uVAMA" id="7Q_67PUObEA" role="1zxBo5">
            <node concept="3clFbS" id="7Q_67PUObEs" role="1zc67A">
              <node concept="3clFbF" id="7Q_67PUObEt" role="3cqZAp">
                <node concept="2YIFZM" id="7Q_67PUOj8a" role="3clFbG">
                  <ref role="1Pybhc" to="dxuu:~JOptionPane" resolve="JOptionPane" />
                  <ref role="37wK5l" to="dxuu:~JOptionPane.showMessageDialog(java.awt.Component,java.lang.Object,java.lang.String,int)" resolve="showMessageDialog" />
                  <node concept="10Nm6u" id="7Q_67PUOj8b" role="37wK5m" />
                  <node concept="3cpWs3" id="7Q_67PUOj8c" role="37wK5m">
                    <node concept="2OqwBi" id="7Q_67PUOpeL" role="3uHU7B">
                      <node concept="37vLTw" id="7Q_67PUOop$" role="2Oq$k0">
                        <ref role="3cqZAo" node="7Q_67PUObEo" resolve="failure" />
                      </node>
                      <node concept="liA8E" id="7Q_67PUOpeM" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~Throwable.getMessage()" resolve="getMessage" />
                      </node>
                    </node>
                    <node concept="Xl_RD" id="7Q_67PUOj8e" role="3uHU7w">
                      <property role="Xl_RC" value="\nIf mutation or saving failed, changes may be partial. Inspect the source ledger and target aspects before retrying." />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="7Q_67PUOj8f" role="37wK5m">
                    <property role="Xl_RC" value="MetaBNF protected regeneration" />
                  </node>
                  <node concept="10M0yZ" id="7Q_67PUOopC" role="37wK5m">
                    <ref role="1PxDUh" to="dxuu:~JOptionPane" resolve="JOptionPane" />
                    <ref role="3cqZAo" to="dxuu:~JOptionPane.ERROR_MESSAGE" resolve="ERROR_MESSAGE" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="XOnhg" id="7Q_67PUObEo" role="1zc67B">
              <property role="TrG5h" value="failure" />
              <node concept="nSUau" id="7Q_67PUObEq" role="1tU5fm">
                <node concept="3uibUv" id="7Q_67PUObEp" role="nSUat">
                  <ref role="3uigEE" to="wyt6:~IllegalStateException" resolve="IllegalStateException" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="7Q_67PUObBw" role="1zxBo7">
            <node concept="3SKdUt" id="7Q_67PUObIv" role="3cqZAp">
              <node concept="1PaTwC" id="7Q_67PUObIw" role="1aUNEU">
                <node concept="3oM_SD" id="7Q_67PUObIy" role="1PaTwD">
                  <property role="3oM_SC" value="Release" />
                </node>
                <node concept="3oM_SD" id="7Q_67PUObIz" role="1PaTwD">
                  <property role="3oM_SC" value="read" />
                </node>
                <node concept="3oM_SD" id="7Q_67PUObI$" role="1PaTwD">
                  <property role="3oM_SC" value="access" />
                </node>
                <node concept="3oM_SD" id="7Q_67PUObI_" role="1PaTwD">
                  <property role="3oM_SC" value="before" />
                </node>
                <node concept="3oM_SD" id="7Q_67PUObIA" role="1PaTwD">
                  <property role="3oM_SC" value="opening" />
                </node>
                <node concept="3oM_SD" id="7Q_67PUObIB" role="1PaTwD">
                  <property role="3oM_SC" value="modal" />
                </node>
                <node concept="3oM_SD" id="7Q_67PUObIC" role="1PaTwD">
                  <property role="3oM_SC" value="review" />
                </node>
                <node concept="3oM_SD" id="7Q_67PUObID" role="1PaTwD">
                  <property role="3oM_SC" value="dialogs." />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7Q_67PUObBx" role="3cqZAp">
              <node concept="2OqwBi" id="7Q_67PUOpf2" role="3clFbG">
                <node concept="2OqwBi" id="7Q_67PUOoq2" role="2Oq$k0">
                  <node concept="37vLTw" id="7Q_67PUOj8r" role="2Oq$k0">
                    <ref role="3cqZAo" node="7Q_67PUObB8" resolve="project" />
                  </node>
                  <node concept="liA8E" id="7Q_67PUOoq3" role="2OqNvi">
                    <ref role="37wK5l" to="z1c4:~Project.getModelAccess()" resolve="getModelAccess" />
                  </node>
                </node>
                <node concept="liA8E" id="7Q_67PUOpf3" role="2OqNvi">
                  <ref role="37wK5l" to="lui2:~ModelAccess.runReadAction(java.lang.Runnable)" resolve="runReadAction" />
                  <node concept="2ShNRf" id="7Q_67PUOpf4" role="37wK5m">
                    <node concept="YeOm9" id="7Q_67PUOpf5" role="2ShVmc">
                      <node concept="1Y3b0j" id="7Q_67PUOpf6" role="YeSDq">
                        <ref role="1Y3XeK" to="wyt6:~Runnable" resolve="Runnable" />
                        <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                        <node concept="3clFb_" id="7Q_67PUOpf7" role="jymVt">
                          <property role="TrG5h" value="run" />
                          <node concept="2AHcQZ" id="7Q_67PUOpf8" role="2AJF6D">
                            <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                          </node>
                          <node concept="3clFbS" id="7Q_67PUOpf9" role="3clF47">
                            <node concept="3clFbF" id="7Q_67PUOpfa" role="3cqZAp">
                              <node concept="37vLTI" id="7Q_67PUOpfb" role="3clFbG">
                                <node concept="AH0OO" id="7Q_67PUOpfc" role="37vLTJ">
                                  <node concept="37vLTw" id="7Q_67PUOpfd" role="AHHXb">
                                    <ref role="3cqZAo" node="7Q_67PUObBd" resolve="selection" />
                                  </node>
                                  <node concept="3cmrfG" id="7Q_67PUOpfe" role="AHEQo">
                                    <property role="3cmrfH" value="0" />
                                  </node>
                                </node>
                                <node concept="1rXfSq" id="7Q_67PUOpff" role="37vLTx">
                                  <ref role="37wK5l" node="7Q_67PUObED" resolve="select" />
                                  <node concept="37vLTw" id="7Q_67PUOpfg" role="37wK5m">
                                    <ref role="3cqZAo" node="7Q_67PUObB8" resolve="project" />
                                  </node>
                                  <node concept="37vLTw" id="7Q_67PUOpfh" role="37wK5m">
                                    <ref role="3cqZAo" node="7Q_67PUObBa" resolve="generatedModel" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3Tm1VV" id="7Q_67PUOpfi" role="1B3o_S" />
                          <node concept="3cqZAl" id="7Q_67PUOpfj" role="3clF45" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="7Q_67PUObBP" role="3cqZAp">
              <node concept="3cpWsn" id="7Q_67PUObBO" role="3cpWs9">
                <property role="3TUv4t" value="true" />
                <property role="TrG5h" value="selected" />
                <node concept="3uibUv" id="7Q_67PUObBQ" role="1tU5fm">
                  <ref role="3uigEE" node="7Q_67PUOb_Z" resolve="RegenerationActions.Selection" />
                </node>
                <node concept="AH0OO" id="7Q_67PUObBR" role="33vP2m">
                  <node concept="37vLTw" id="7Q_67PUObBS" role="AHHXb">
                    <ref role="3cqZAo" node="7Q_67PUObBd" resolve="selection" />
                  </node>
                  <node concept="3cmrfG" id="7Q_67PUObBT" role="AHEQo">
                    <property role="3cmrfH" value="0" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="7Q_67PUObBV" role="3cqZAp">
              <node concept="3cpWsn" id="7Q_67PUObBU" role="3cpWs9">
                <property role="TrG5h" value="profile" />
                <node concept="3uibUv" id="7Q_67PUObBW" role="1tU5fm">
                  <ref role="3uigEE" node="7Q_67PUOb_q" resolve="RegenerationActions.ProfileOption" />
                </node>
                <node concept="10QFUN" id="7Q_67PUObBX" role="33vP2m">
                  <node concept="2YIFZM" id="7Q_67PUOj8v" role="10QFUP">
                    <ref role="1Pybhc" to="dxuu:~JOptionPane" resolve="JOptionPane" />
                    <ref role="37wK5l" to="dxuu:~JOptionPane.showInputDialog(java.awt.Component,java.lang.Object,java.lang.String,int,javax.swing.Icon,java.lang.Object[],java.lang.Object)" resolve="showInputDialog" />
                    <node concept="10Nm6u" id="7Q_67PUOj8w" role="37wK5m" />
                    <node concept="Xl_RD" id="7Q_67PUOj8x" role="37wK5m">
                      <property role="Xl_RC" value="Generation profile:" />
                    </node>
                    <node concept="Xl_RD" id="7Q_67PUOj8y" role="37wK5m">
                      <property role="Xl_RC" value="MetaBNF protected regeneration" />
                    </node>
                    <node concept="10M0yZ" id="7Q_67PUOoq6" role="37wK5m">
                      <ref role="1PxDUh" to="dxuu:~JOptionPane" resolve="JOptionPane" />
                      <ref role="3cqZAo" to="dxuu:~JOptionPane.QUESTION_MESSAGE" resolve="QUESTION_MESSAGE" />
                    </node>
                    <node concept="10Nm6u" id="7Q_67PUOj8$" role="37wK5m" />
                    <node concept="2OqwBi" id="7Q_67PUOphP" role="37wK5m">
                      <node concept="2OqwBi" id="7Q_67PUOoqa" role="2Oq$k0">
                        <node concept="37vLTw" id="7Q_67PUOoq9" role="2Oq$k0">
                          <ref role="3cqZAo" node="7Q_67PUObBO" resolve="selected" />
                        </node>
                        <node concept="2OwXpG" id="7Q_67PUOoqb" role="2OqNvi">
                          <ref role="2Oxat5" node="7Q_67PUObAf" resolve="profiles" />
                        </node>
                      </node>
                      <node concept="liA8E" id="7Q_67PUOphQ" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~List.toArray()" resolve="toArray" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="7Q_67PUOpko" role="37wK5m">
                      <node concept="2OqwBi" id="7Q_67PUOoqg" role="2Oq$k0">
                        <node concept="37vLTw" id="7Q_67PUOoqf" role="2Oq$k0">
                          <ref role="3cqZAo" node="7Q_67PUObBO" resolve="selected" />
                        </node>
                        <node concept="2OwXpG" id="7Q_67PUOoqh" role="2OqNvi">
                          <ref role="2Oxat5" node="7Q_67PUObAf" resolve="profiles" />
                        </node>
                      </node>
                      <node concept="liA8E" id="7Q_67PUOpkp" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                        <node concept="3cmrfG" id="7Q_67PUOpkq" role="37wK5m">
                          <property role="3cmrfH" value="0" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3uibUv" id="7Q_67PUObC7" role="10QFUM">
                    <ref role="3uigEE" node="7Q_67PUOb_q" resolve="RegenerationActions.ProfileOption" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="7Q_67PUObC8" role="3cqZAp">
              <node concept="3clFbC" id="7Q_67PUObC9" role="3clFbw">
                <node concept="37vLTw" id="7Q_67PUObCa" role="3uHU7B">
                  <ref role="3cqZAo" node="7Q_67PUObBU" resolve="profile" />
                </node>
                <node concept="10Nm6u" id="7Q_67PUObCb" role="3uHU7w" />
              </node>
              <node concept="3clFbS" id="7Q_67PUObCd" role="3clFbx">
                <node concept="3cpWs6" id="7Q_67PUObCe" role="3cqZAp" />
              </node>
            </node>
            <node concept="3cpWs8" id="7Q_67PUObCg" role="3cqZAp">
              <node concept="3cpWsn" id="7Q_67PUObCf" role="3cpWs9">
                <property role="3TUv4t" value="true" />
                <property role="TrG5h" value="selectedProfile" />
                <node concept="3Tqbb2" id="7Q_67PUOpKU" role="1tU5fm" />
                <node concept="2OqwBi" id="7Q_67PUOj8F" role="33vP2m">
                  <node concept="37vLTw" id="7Q_67PUOj8E" role="2Oq$k0">
                    <ref role="3cqZAo" node="7Q_67PUObBU" resolve="profile" />
                  </node>
                  <node concept="2OwXpG" id="7Q_67PUOj8G" role="2OqNvi">
                    <ref role="2Oxat5" node="7Q_67PUOb_w" resolve="profile" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="7Q_67PUObIE" role="3cqZAp">
              <node concept="1PaTwC" id="7Q_67PUObIF" role="1aUNEU">
                <node concept="3oM_SD" id="7Q_67PUObIH" role="1PaTwD">
                  <property role="3oM_SC" value="Compute" />
                </node>
                <node concept="3oM_SD" id="7Q_67PUObII" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="7Q_67PUObIJ" role="1PaTwD">
                  <property role="3oM_SC" value="review" />
                </node>
                <node concept="3oM_SD" id="7Q_67PUObIK" role="1PaTwD">
                  <property role="3oM_SC" value="under" />
                </node>
                <node concept="3oM_SD" id="7Q_67PUObIL" role="1PaTwD">
                  <property role="3oM_SC" value="read" />
                </node>
                <node concept="3oM_SD" id="7Q_67PUObIM" role="1PaTwD">
                  <property role="3oM_SC" value="access;" />
                </node>
                <node concept="3oM_SD" id="7Q_67PUObIN" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="7Q_67PUObIO" role="1PaTwD">
                  <property role="3oM_SC" value="dialog" />
                </node>
                <node concept="3oM_SD" id="7Q_67PUObIP" role="1PaTwD">
                  <property role="3oM_SC" value="runs" />
                </node>
                <node concept="3oM_SD" id="7Q_67PUObIQ" role="1PaTwD">
                  <property role="3oM_SC" value="outside" />
                </node>
                <node concept="3oM_SD" id="7Q_67PUObIR" role="1PaTwD">
                  <property role="3oM_SC" value="it." />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7Q_67PUObCj" role="3cqZAp">
              <node concept="2OqwBi" id="7Q_67PUOpkE" role="3clFbG">
                <node concept="2OqwBi" id="7Q_67PUOoqH" role="2Oq$k0">
                  <node concept="37vLTw" id="7Q_67PUOj8R" role="2Oq$k0">
                    <ref role="3cqZAo" node="7Q_67PUObB8" resolve="project" />
                  </node>
                  <node concept="liA8E" id="7Q_67PUOoqI" role="2OqNvi">
                    <ref role="37wK5l" to="z1c4:~Project.getModelAccess()" resolve="getModelAccess" />
                  </node>
                </node>
                <node concept="liA8E" id="7Q_67PUOpkF" role="2OqNvi">
                  <ref role="37wK5l" to="lui2:~ModelAccess.runReadAction(java.lang.Runnable)" resolve="runReadAction" />
                  <node concept="2ShNRf" id="7Q_67PUOpkG" role="37wK5m">
                    <node concept="YeOm9" id="7Q_67PUOpkH" role="2ShVmc">
                      <node concept="1Y3b0j" id="7Q_67PUOpkI" role="YeSDq">
                        <ref role="1Y3XeK" to="wyt6:~Runnable" resolve="Runnable" />
                        <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                        <node concept="3clFb_" id="7Q_67PUOpkJ" role="jymVt">
                          <property role="TrG5h" value="run" />
                          <node concept="2AHcQZ" id="7Q_67PUOpkK" role="2AJF6D">
                            <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                          </node>
                          <node concept="3clFbS" id="7Q_67PUOpkL" role="3clF47">
                            <node concept="3clFbF" id="7Q_67PUOpkM" role="3cqZAp">
                              <node concept="37vLTI" id="7Q_67PUOpkN" role="3clFbG">
                                <node concept="AH0OO" id="7Q_67PUOpkO" role="37vLTJ">
                                  <node concept="37vLTw" id="7Q_67PUOpkP" role="AHHXb">
                                    <ref role="3cqZAo" node="7Q_67PUObBm" resolve="plan" />
                                  </node>
                                  <node concept="3cmrfG" id="7Q_67PUOpkQ" role="AHEQo">
                                    <property role="3cmrfH" value="0" />
                                  </node>
                                </node>
                                <node concept="2YIFZM" id="7Q_67PUOpkR" role="37vLTx">
                                  <ref role="1Pybhc" node="7Q_67PUJ1Pd" resolve="ProtectedRegeneration" />
                                  <ref role="37wK5l" node="7Q_67PUJ1TP" resolve="preview" />
                                  <node concept="2OqwBi" id="7Q_67PUOpkS" role="37wK5m">
                                    <node concept="37vLTw" id="7Q_67PUOpkT" role="2Oq$k0">
                                      <ref role="3cqZAo" node="7Q_67PUObBO" resolve="selected" />
                                    </node>
                                    <node concept="2OwXpG" id="7Q_67PUOpkU" role="2OqNvi">
                                      <ref role="2Oxat5" node="7Q_67PUObA1" resolve="grammar" />
                                    </node>
                                  </node>
                                  <node concept="2OqwBi" id="7Q_67PUOpkV" role="37wK5m">
                                    <node concept="37vLTw" id="7Q_67PUOpkW" role="2Oq$k0">
                                      <ref role="3cqZAo" node="7Q_67PUObBO" resolve="selected" />
                                    </node>
                                    <node concept="2OwXpG" id="7Q_67PUOpkX" role="2OqNvi">
                                      <ref role="2Oxat5" node="7Q_67PUObA5" resolve="generated" />
                                    </node>
                                  </node>
                                  <node concept="2OqwBi" id="7Q_67PUOpkY" role="37wK5m">
                                    <node concept="37vLTw" id="7Q_67PUOpkZ" role="2Oq$k0">
                                      <ref role="3cqZAo" node="7Q_67PUObBO" resolve="selected" />
                                    </node>
                                    <node concept="2OwXpG" id="7Q_67PUOpl0" role="2OqNvi">
                                      <ref role="2Oxat5" node="7Q_67PUObAa" resolve="targets" />
                                    </node>
                                  </node>
                                  <node concept="37vLTw" id="7Q_67PUOpl1" role="37wK5m">
                                    <ref role="3cqZAo" node="7Q_67PUObCf" resolve="selectedProfile" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3Tm1VV" id="7Q_67PUOpl2" role="1B3o_S" />
                          <node concept="3cqZAl" id="7Q_67PUOpl3" role="3clF45" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="7Q_67PUObCD" role="3cqZAp">
              <node concept="3cpWsn" id="7Q_67PUObCC" role="3cpWs9">
                <property role="TrG5h" value="description" />
                <node concept="3uibUv" id="7Q_67PUObCE" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
                <node concept="3cpWs3" id="7Q_67PUObCF" role="33vP2m">
                  <node concept="3cpWs3" id="7Q_67PUObCG" role="3uHU7B">
                    <node concept="3cpWs3" id="7Q_67PUObCH" role="3uHU7B">
                      <node concept="3cpWs3" id="7Q_67PUObCI" role="3uHU7B">
                        <node concept="3cpWs3" id="7Q_67PUObCJ" role="3uHU7B">
                          <node concept="3cpWs3" id="7Q_67PUObCK" role="3uHU7B">
                            <node concept="3cpWs3" id="7Q_67PUObCL" role="3uHU7B">
                              <node concept="3cpWs3" id="7Q_67PUObCM" role="3uHU7B">
                                <node concept="3cpWs3" id="7Q_67PUObCN" role="3uHU7B">
                                  <node concept="Xl_RD" id="7Q_67PUObCO" role="3uHU7B">
                                    <property role="Xl_RC" value="Fingerprint: " />
                                  </node>
                                  <node concept="2OqwBi" id="7Q_67PUOj9$" role="3uHU7w">
                                    <node concept="AH0OO" id="7Q_67PUObCQ" role="2Oq$k0">
                                      <node concept="37vLTw" id="7Q_67PUObCR" role="AHHXb">
                                        <ref role="3cqZAo" node="7Q_67PUObBm" resolve="plan" />
                                      </node>
                                      <node concept="3cmrfG" id="7Q_67PUObCS" role="AHEQo">
                                        <property role="3cmrfH" value="0" />
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="7Q_67PUOj9_" role="2OqNvi">
                                      <ref role="37wK5l" node="7Q_67PUJ1QT" resolve="fingerprint" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="Xl_RD" id="7Q_67PUObCT" role="3uHU7w">
                                  <property role="Xl_RC" value="\nProfile: " />
                                </node>
                              </node>
                              <node concept="2OqwBi" id="7Q_67PUOj9D" role="3uHU7w">
                                <node concept="37vLTw" id="7Q_67PUOj9C" role="2Oq$k0">
                                  <ref role="3cqZAo" node="7Q_67PUObBU" resolve="profile" />
                                </node>
                                <node concept="2OwXpG" id="7Q_67PUOj9E" role="2OqNvi">
                                  <ref role="2Oxat5" node="7Q_67PUOb_s" resolve="label" />
                                </node>
                              </node>
                            </node>
                            <node concept="Xl_RD" id="7Q_67PUObCV" role="3uHU7w">
                              <property role="Xl_RC" value="\n\n" />
                            </node>
                          </node>
                          <node concept="2YIFZM" id="7Q_67PUOj9H" role="3uHU7w">
                            <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                            <ref role="37wK5l" to="wyt6:~String.join(java.lang.CharSequence,java.lang.Iterable)" resolve="join" />
                            <node concept="Xl_RD" id="7Q_67PUOj9I" role="37wK5m">
                              <property role="Xl_RC" value="\n" />
                            </node>
                            <node concept="2OqwBi" id="7Q_67PUOorA" role="37wK5m">
                              <node concept="AH0OO" id="7Q_67PUOj9K" role="2Oq$k0">
                                <node concept="37vLTw" id="7Q_67PUOj9L" role="AHHXb">
                                  <ref role="3cqZAo" node="7Q_67PUObBm" resolve="plan" />
                                </node>
                                <node concept="3cmrfG" id="7Q_67PUOj9M" role="AHEQo">
                                  <property role="3cmrfH" value="0" />
                                </node>
                              </node>
                              <node concept="liA8E" id="7Q_67PUOorB" role="2OqNvi">
                                <ref role="37wK5l" node="7Q_67PUJ1QZ" resolve="decisions" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="Xl_RD" id="7Q_67PUObD2" role="3uHU7w">
                          <property role="Xl_RC" value="\n\n" />
                        </node>
                      </node>
                      <node concept="2YIFZM" id="7Q_67PUOj9P" role="3uHU7w">
                        <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                        <ref role="37wK5l" to="wyt6:~String.join(java.lang.CharSequence,java.lang.Iterable)" resolve="join" />
                        <node concept="Xl_RD" id="7Q_67PUOj9Q" role="37wK5m">
                          <property role="Xl_RC" value="\n" />
                        </node>
                        <node concept="2OqwBi" id="7Q_67PUOosa" role="37wK5m">
                          <node concept="AH0OO" id="7Q_67PUOj9S" role="2Oq$k0">
                            <node concept="37vLTw" id="7Q_67PUOj9T" role="AHHXb">
                              <ref role="3cqZAo" node="7Q_67PUObBm" resolve="plan" />
                            </node>
                            <node concept="3cmrfG" id="7Q_67PUOj9U" role="AHEQo">
                              <property role="3cmrfH" value="0" />
                            </node>
                          </node>
                          <node concept="liA8E" id="7Q_67PUOosb" role="2OqNvi">
                            <ref role="37wK5l" node="7Q_67PUJ1R6" resolve="conflicts" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Xl_RD" id="7Q_67PUObD9" role="3uHU7w">
                      <property role="Xl_RC" value="\n\nADOPT gives the listed existing roots whole-root generated ownership. " />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="7Q_67PUObDa" role="3uHU7w">
                    <property role="Xl_RC" value="Handwritten extensions must be separate roots. Save/commit your work before applying." />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="7Q_67PUObDc" role="3cqZAp">
              <node concept="3cpWsn" id="7Q_67PUObDb" role="3cpWs9">
                <property role="TrG5h" value="text" />
                <node concept="3uibUv" id="7Q_67PUObDd" role="1tU5fm">
                  <ref role="3uigEE" to="dxuu:~JTextArea" resolve="JTextArea" />
                </node>
                <node concept="2ShNRf" id="7Q_67PUOj9V" role="33vP2m">
                  <node concept="1pGfFk" id="7Q_67PUOo75" role="2ShVmc">
                    <ref role="37wK5l" to="dxuu:~JTextArea.&lt;init&gt;(java.lang.String,int,int)" resolve="JTextArea" />
                    <node concept="37vLTw" id="7Q_67PUOo76" role="37wK5m">
                      <ref role="3cqZAo" node="7Q_67PUObCC" resolve="description" />
                    </node>
                    <node concept="3cmrfG" id="7Q_67PUOo77" role="37wK5m">
                      <property role="3cmrfH" value="24" />
                    </node>
                    <node concept="3cmrfG" id="7Q_67PUOo78" role="37wK5m">
                      <property role="3cmrfH" value="100" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7Q_67PUObDi" role="3cqZAp">
              <node concept="2OqwBi" id="7Q_67PUOp3v" role="3clFbG">
                <node concept="37vLTw" id="7Q_67PUOo7b" role="2Oq$k0">
                  <ref role="3cqZAo" node="7Q_67PUObDb" resolve="text" />
                </node>
                <node concept="liA8E" id="7Q_67PUOp3w" role="2OqNvi">
                  <ref role="37wK5l" to="r791:~JTextComponent.setEditable(boolean)" resolve="setEditable" />
                  <node concept="3clFbT" id="7Q_67PUOp3x" role="37wK5m" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="7Q_67PUObDm" role="3cqZAp">
              <node concept="3cpWsn" id="7Q_67PUObDl" role="3cpWs9">
                <property role="TrG5h" value="contents" />
                <node concept="3uibUv" id="7Q_67PUObDn" role="1tU5fm">
                  <ref role="3uigEE" to="dxuu:~JScrollPane" resolve="JScrollPane" />
                </node>
                <node concept="2ShNRf" id="7Q_67PUOo7e" role="33vP2m">
                  <node concept="1pGfFk" id="7Q_67PUOodW" role="2ShVmc">
                    <ref role="37wK5l" to="dxuu:~JScrollPane.&lt;init&gt;(java.awt.Component)" resolve="JScrollPane" />
                    <node concept="37vLTw" id="7Q_67PUOodX" role="37wK5m">
                      <ref role="3cqZAo" node="7Q_67PUObDb" resolve="text" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="7Q_67PUObDq" role="3cqZAp">
              <node concept="3fqX7Q" id="7Q_67PUObDr" role="3clFbw">
                <node concept="2OqwBi" id="7Q_67PUOoew" role="3fr31v">
                  <node concept="AH0OO" id="7Q_67PUObDt" role="2Oq$k0">
                    <node concept="37vLTw" id="7Q_67PUObDu" role="AHHXb">
                      <ref role="3cqZAo" node="7Q_67PUObBm" resolve="plan" />
                    </node>
                    <node concept="3cmrfG" id="7Q_67PUObDv" role="AHEQo">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                  <node concept="liA8E" id="7Q_67PUOoex" role="2OqNvi">
                    <ref role="37wK5l" node="7Q_67PUJ1Rd" resolve="applicable" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="7Q_67PUObDx" role="3clFbx">
                <node concept="3clFbF" id="7Q_67PUObDy" role="3cqZAp">
                  <node concept="2YIFZM" id="7Q_67PUOoe$" role="3clFbG">
                    <ref role="1Pybhc" to="dxuu:~JOptionPane" resolve="JOptionPane" />
                    <ref role="37wK5l" to="dxuu:~JOptionPane.showMessageDialog(java.awt.Component,java.lang.Object,java.lang.String,int)" resolve="showMessageDialog" />
                    <node concept="10Nm6u" id="7Q_67PUOoe_" role="37wK5m" />
                    <node concept="37vLTw" id="7Q_67PUOoeA" role="37wK5m">
                      <ref role="3cqZAo" node="7Q_67PUObDl" resolve="contents" />
                    </node>
                    <node concept="Xl_RD" id="7Q_67PUOoeB" role="37wK5m">
                      <property role="Xl_RC" value="MetaBNF regeneration conflicts" />
                    </node>
                    <node concept="10M0yZ" id="7Q_67PUOp3$" role="37wK5m">
                      <ref role="1PxDUh" to="dxuu:~JOptionPane" resolve="JOptionPane" />
                      <ref role="3cqZAo" to="dxuu:~JOptionPane.ERROR_MESSAGE" resolve="ERROR_MESSAGE" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="7Q_67PUObDC" role="3cqZAp" />
              </node>
            </node>
            <node concept="3clFbJ" id="7Q_67PUObDD" role="3cqZAp">
              <node concept="3y3z36" id="7Q_67PUObDE" role="3clFbw">
                <node concept="2YIFZM" id="7Q_67PUOoeF" role="3uHU7B">
                  <ref role="1Pybhc" to="dxuu:~JOptionPane" resolve="JOptionPane" />
                  <ref role="37wK5l" to="dxuu:~JOptionPane.showConfirmDialog(java.awt.Component,java.lang.Object,java.lang.String,int,int)" resolve="showConfirmDialog" />
                  <node concept="10Nm6u" id="7Q_67PUOoeG" role="37wK5m" />
                  <node concept="37vLTw" id="7Q_67PUOoeH" role="37wK5m">
                    <ref role="3cqZAo" node="7Q_67PUObDl" resolve="contents" />
                  </node>
                  <node concept="Xl_RD" id="7Q_67PUOoeI" role="37wK5m">
                    <property role="Xl_RC" value="Review and apply protected regeneration" />
                  </node>
                  <node concept="10M0yZ" id="7Q_67PUOp3B" role="37wK5m">
                    <ref role="1PxDUh" to="dxuu:~JOptionPane" resolve="JOptionPane" />
                    <ref role="3cqZAo" to="dxuu:~JOptionPane.OK_CANCEL_OPTION" resolve="OK_CANCEL_OPTION" />
                  </node>
                  <node concept="10M0yZ" id="7Q_67PUOp3E" role="37wK5m">
                    <ref role="1PxDUh" to="dxuu:~JOptionPane" resolve="JOptionPane" />
                    <ref role="3cqZAo" to="dxuu:~JOptionPane.WARNING_MESSAGE" resolve="WARNING_MESSAGE" />
                  </node>
                </node>
                <node concept="10M0yZ" id="7Q_67PUOoeN" role="3uHU7w">
                  <ref role="1PxDUh" to="dxuu:~JOptionPane" resolve="JOptionPane" />
                  <ref role="3cqZAo" to="dxuu:~JOptionPane.OK_OPTION" resolve="OK_OPTION" />
                </node>
              </node>
              <node concept="3clFbS" id="7Q_67PUObDN" role="3clFbx">
                <node concept="3cpWs6" id="7Q_67PUObDO" role="3cqZAp" />
              </node>
            </node>
            <node concept="3SKdUt" id="7Q_67PUObIS" role="3cqZAp">
              <node concept="1PaTwC" id="7Q_67PUObIT" role="1aUNEU">
                <node concept="3oM_SD" id="7Q_67PUObIV" role="1PaTwD">
                  <property role="3oM_SC" value="Enter" />
                </node>
                <node concept="3oM_SD" id="7Q_67PUObIW" role="1PaTwD">
                  <property role="3oM_SC" value="one" />
                </node>
                <node concept="3oM_SD" id="7Q_67PUObIX" role="1PaTwD">
                  <property role="3oM_SC" value="command" />
                </node>
                <node concept="3oM_SD" id="7Q_67PUObIY" role="1PaTwD">
                  <property role="3oM_SC" value="only" />
                </node>
                <node concept="3oM_SD" id="7Q_67PUObIZ" role="1PaTwD">
                  <property role="3oM_SC" value="after" />
                </node>
                <node concept="3oM_SD" id="7Q_67PUObJ0" role="1PaTwD">
                  <property role="3oM_SC" value="approval;" />
                </node>
                <node concept="3oM_SD" id="7Q_67PUObJ1" role="1PaTwD">
                  <property role="3oM_SC" value="apply" />
                </node>
                <node concept="3oM_SD" id="7Q_67PUObJ2" role="1PaTwD">
                  <property role="3oM_SC" value="rechecks" />
                </node>
                <node concept="3oM_SD" id="7Q_67PUObJ3" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="7Q_67PUObJ4" role="1PaTwD">
                  <property role="3oM_SC" value="fingerprint" />
                </node>
                <node concept="3oM_SD" id="7Q_67PUObJ5" role="1PaTwD">
                  <property role="3oM_SC" value="before" />
                </node>
                <node concept="3oM_SD" id="7Q_67PUObJ6" role="1PaTwD">
                  <property role="3oM_SC" value="mutation." />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7Q_67PUObDP" role="3cqZAp">
              <node concept="2OqwBi" id="7Q_67PUOpmG" role="3clFbG">
                <node concept="2OqwBi" id="7Q_67PUOp44" role="2Oq$k0">
                  <node concept="37vLTw" id="7Q_67PUOoeY" role="2Oq$k0">
                    <ref role="3cqZAo" node="7Q_67PUObB8" resolve="project" />
                  </node>
                  <node concept="liA8E" id="7Q_67PUOp45" role="2OqNvi">
                    <ref role="37wK5l" to="z1c4:~Project.getModelAccess()" resolve="getModelAccess" />
                  </node>
                </node>
                <node concept="liA8E" id="7Q_67PUOpmH" role="2OqNvi">
                  <ref role="37wK5l" to="lui2:~ModelAccess.executeCommand(java.lang.Runnable)" resolve="executeCommand" />
                  <node concept="2ShNRf" id="7Q_67PUOpmI" role="37wK5m">
                    <node concept="YeOm9" id="7Q_67PUOpmJ" role="2ShVmc">
                      <node concept="1Y3b0j" id="7Q_67PUOpmK" role="YeSDq">
                        <ref role="1Y3XeK" to="wyt6:~Runnable" resolve="Runnable" />
                        <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                        <node concept="3clFb_" id="7Q_67PUOpmL" role="jymVt">
                          <property role="TrG5h" value="run" />
                          <node concept="2AHcQZ" id="7Q_67PUOpmM" role="2AJF6D">
                            <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                          </node>
                          <node concept="3clFbS" id="7Q_67PUOpmN" role="3clF47">
                            <node concept="3clFbF" id="7Q_67PUOpmO" role="3cqZAp">
                              <node concept="2YIFZM" id="7Q_67PUOpmP" role="3clFbG">
                                <ref role="1Pybhc" node="7Q_67PUJ1Pd" resolve="ProtectedRegeneration" />
                                <ref role="37wK5l" node="7Q_67PUJ20g" resolve="apply" />
                                <node concept="AH0OO" id="7Q_67PUOpmQ" role="37wK5m">
                                  <node concept="37vLTw" id="7Q_67PUOpmR" role="AHHXb">
                                    <ref role="3cqZAo" node="7Q_67PUObBm" resolve="plan" />
                                  </node>
                                  <node concept="3cmrfG" id="7Q_67PUOpmS" role="AHEQo">
                                    <property role="3cmrfH" value="0" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="7Q_67PUOpmT" role="3cqZAp">
                              <node concept="1rXfSq" id="7Q_67PUOpmU" role="3clFbG">
                                <ref role="37wK5l" node="7Q_67PUObHS" resolve="save" />
                                <node concept="2OqwBi" id="7Q_67PUOpmV" role="37wK5m">
                                  <node concept="liA8E" id="7Q_67PUOpmZ" role="2OqNvi">
                                    <ref role="37wK5l" to="mhbf:~SNode.getModel()" resolve="getModel" />
                                  </node>
                                  <node concept="2JrnkZ" id="7Q_67PUOpK$" role="2Oq$k0">
                                    <node concept="2OqwBi" id="7Q_67PUOpmW" role="2JrQYb">
                                      <node concept="37vLTw" id="7Q_67PUOpmX" role="2Oq$k0">
                                        <ref role="3cqZAo" node="7Q_67PUObBO" resolve="selected" />
                                      </node>
                                      <node concept="2OwXpG" id="7Q_67PUOpmY" role="2OqNvi">
                                        <ref role="2Oxat5" node="7Q_67PUObA1" resolve="grammar" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="1DcWWT" id="7Q_67PUOpn0" role="3cqZAp">
                              <node concept="2OqwBi" id="7Q_67PUOpn1" role="1DdaDG">
                                <node concept="37vLTw" id="7Q_67PUOpn2" role="2Oq$k0">
                                  <ref role="3cqZAo" node="7Q_67PUObBO" resolve="selected" />
                                </node>
                                <node concept="2OwXpG" id="7Q_67PUOpn3" role="2OqNvi">
                                  <ref role="2Oxat5" node="7Q_67PUObAa" resolve="targets" />
                                </node>
                              </node>
                              <node concept="3cpWsn" id="7Q_67PUOpn4" role="1Duv9x">
                                <property role="TrG5h" value="target" />
                                <node concept="H_c77" id="7Q_67PUOpKV" role="1tU5fm" />
                              </node>
                              <node concept="3clFbS" id="7Q_67PUOpn6" role="2LFqv$">
                                <node concept="3clFbF" id="7Q_67PUOpn7" role="3cqZAp">
                                  <node concept="1rXfSq" id="7Q_67PUOpn8" role="3clFbG">
                                    <ref role="37wK5l" node="7Q_67PUObHS" resolve="save" />
                                    <node concept="37vLTw" id="7Q_67PUOpn9" role="37wK5m">
                                      <ref role="3cqZAo" node="7Q_67PUOpn4" resolve="target" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3Tm1VV" id="7Q_67PUOpna" role="1B3o_S" />
                          <node concept="3cqZAl" id="7Q_67PUOpnb" role="3clF45" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7Q_67PUObEi" role="3cqZAp">
              <node concept="2YIFZM" id="7Q_67PUOofp" role="3clFbG">
                <ref role="1Pybhc" to="dxuu:~JOptionPane" resolve="JOptionPane" />
                <ref role="37wK5l" to="dxuu:~JOptionPane.showMessageDialog(java.awt.Component,java.lang.Object,java.lang.String,int)" resolve="showMessageDialog" />
                <node concept="10Nm6u" id="7Q_67PUOofq" role="37wK5m" />
                <node concept="Xl_RD" id="7Q_67PUOofr" role="37wK5m">
                  <property role="Xl_RC" value="Reviewed regeneration applied. Check and rebuild the target language." />
                </node>
                <node concept="Xl_RD" id="7Q_67PUOofs" role="37wK5m">
                  <property role="Xl_RC" value="MetaBNF protected regeneration" />
                </node>
                <node concept="10M0yZ" id="7Q_67PUOp4F" role="37wK5m">
                  <ref role="1PxDUh" to="dxuu:~JOptionPane" resolve="JOptionPane" />
                  <ref role="3cqZAo" to="dxuu:~JOptionPane.INFORMATION_MESSAGE" resolve="INFORMATION_MESSAGE" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7Q_67PUObEB" role="1B3o_S" />
      <node concept="3cqZAl" id="7Q_67PUObEC" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="7Q_67PUObED" role="jymVt">
      <property role="TrG5h" value="select" />
      <node concept="37vLTG" id="7Q_67PUObEE" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="7Q_67PUObEF" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~MPSProject" resolve="MPSProject" />
        </node>
      </node>
      <node concept="37vLTG" id="7Q_67PUObEG" role="3clF46">
        <property role="TrG5h" value="generatedModel" />
        <node concept="H_c77" id="7Q_67PUOpKW" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="7Q_67PUObEI" role="3clF47">
        <node concept="3cpWs8" id="7Q_67PUObEK" role="3cqZAp">
          <node concept="3cpWsn" id="7Q_67PUObEJ" role="3cpWs9">
            <property role="TrG5h" value="grammar" />
            <node concept="3Tqbb2" id="7Q_67PUOpKX" role="1tU5fm" />
            <node concept="10Nm6u" id="7Q_67PUObEM" role="33vP2m" />
          </node>
        </node>
        <node concept="3cpWs8" id="7Q_67PUObEO" role="3cqZAp">
          <node concept="3cpWsn" id="7Q_67PUObEN" role="3cpWs9">
            <property role="TrG5h" value="roots" />
            <node concept="3uibUv" id="7Q_67PUObEP" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3Tqbb2" id="7Q_67PUOpKY" role="11_B2D" />
            </node>
            <node concept="2ShNRf" id="7Q_67PUOofu" role="33vP2m">
              <node concept="1pGfFk" id="7Q_67PUOofz" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                <node concept="3Tqbb2" id="7Q_67PUOpKZ" role="1pMfVU" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="7Q_67PUObET" role="3cqZAp">
          <node concept="2OqwBi" id="7Q_67PUOp4P" role="1DdaDG">
            <node concept="liA8E" id="7Q_67PUOp4Q" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SModel.getRootNodes()" resolve="getRootNodes" />
            </node>
            <node concept="2JrnkZ" id="7Q_67PUOpK_" role="2Oq$k0">
              <node concept="37vLTw" id="7Q_67PUOofB" role="2JrQYb">
                <ref role="3cqZAo" node="7Q_67PUObEG" resolve="generatedModel" />
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="7Q_67PUObFA" role="1Duv9x">
            <property role="TrG5h" value="root" />
            <node concept="3Tqbb2" id="7Q_67PUOpL0" role="1tU5fm" />
          </node>
          <node concept="3clFbS" id="7Q_67PUObEV" role="2LFqv$">
            <node concept="3clFbF" id="7Q_67PUObEW" role="3cqZAp">
              <node concept="2OqwBi" id="7Q_67PUOp79" role="3clFbG">
                <node concept="37vLTw" id="7Q_67PUOofF" role="2Oq$k0">
                  <ref role="3cqZAo" node="7Q_67PUObEN" resolve="roots" />
                </node>
                <node concept="liA8E" id="7Q_67PUOp7a" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="7Q_67PUOp7b" role="37wK5m">
                    <ref role="3cqZAo" node="7Q_67PUObFA" resolve="root" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="7Q_67PUObF0" role="3cqZAp">
              <node concept="3cpWsn" id="7Q_67PUObEZ" role="3cpWs9">
                <property role="TrG5h" value="input" />
                <node concept="3Tqbb2" id="7Q_67PUOpL1" role="1tU5fm" />
                <node concept="2YIFZM" id="7Q_67PUOofK" role="33vP2m">
                  <ref role="1Pybhc" to="fwk:~TracingUtil" resolve="TracingUtil" />
                  <ref role="37wK5l" to="fwk:~TracingUtil.getInputNode(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.module.SRepository)" resolve="getInputNode" />
                  <node concept="37vLTw" id="7Q_67PUOofL" role="37wK5m">
                    <ref role="3cqZAo" node="7Q_67PUObFA" resolve="root" />
                  </node>
                  <node concept="2OqwBi" id="7Q_67PUOpoA" role="37wK5m">
                    <node concept="37vLTw" id="7Q_67PUOp7e" role="2Oq$k0">
                      <ref role="3cqZAo" node="7Q_67PUObEE" resolve="project" />
                    </node>
                    <node concept="liA8E" id="7Q_67PUOpoB" role="2OqNvi">
                      <ref role="37wK5l" to="z1c4:~Project.getRepository()" resolve="getRepository" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="7Q_67PUObF5" role="3cqZAp">
              <node concept="3y3z36" id="7Q_67PUObF6" role="3clFbw">
                <node concept="37vLTw" id="7Q_67PUObF7" role="3uHU7B">
                  <ref role="3cqZAo" node="7Q_67PUObEZ" resolve="input" />
                </node>
                <node concept="10Nm6u" id="7Q_67PUObF8" role="3uHU7w" />
              </node>
              <node concept="3clFbS" id="7Q_67PUObFa" role="3clFbx">
                <node concept="3cpWs8" id="7Q_67PUObFc" role="3cqZAp">
                  <node concept="3cpWsn" id="7Q_67PUObFb" role="3cpWs9">
                    <property role="TrG5h" value="owner" />
                    <node concept="3Tqbb2" id="7Q_67PUOpL2" role="1tU5fm" />
                    <node concept="2OqwBi" id="7Q_67PUOp7q" role="33vP2m">
                      <node concept="liA8E" id="7Q_67PUOp7r" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getContainingRoot()" resolve="getContainingRoot" />
                      </node>
                      <node concept="2JrnkZ" id="7Q_67PUOpKA" role="2Oq$k0">
                        <node concept="37vLTw" id="7Q_67PUOofP" role="2JrQYb">
                          <ref role="3cqZAo" node="7Q_67PUObEZ" resolve="input" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="7Q_67PUObFf" role="3cqZAp">
                  <node concept="2OqwBi" id="7Q_67PUOppn" role="3clFbw">
                    <node concept="2OqwBi" id="7Q_67PUOp7I" role="2Oq$k0">
                      <node concept="liA8E" id="7Q_67PUOp7J" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                      </node>
                      <node concept="2JrnkZ" id="7Q_67PUOpKB" role="2Oq$k0">
                        <node concept="37vLTw" id="7Q_67PUOog1" role="2JrQYb">
                          <ref role="3cqZAo" node="7Q_67PUObFb" resolve="owner" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="7Q_67PUOppo" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                      <node concept="37vLTw" id="7Q_67PUOppp" role="37wK5m">
                        <ref role="3cqZAo" node="7Q_67PUObAV" resolve="GRAMMAR" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="7Q_67PUObFk" role="3clFbx">
                    <node concept="3clFbJ" id="7Q_67PUObFl" role="3cqZAp">
                      <node concept="1Wc70l" id="7Q_67PUObFm" role="3clFbw">
                        <node concept="3y3z36" id="7Q_67PUObFn" role="3uHU7B">
                          <node concept="37vLTw" id="7Q_67PUObFo" role="3uHU7B">
                            <ref role="3cqZAo" node="7Q_67PUObEJ" resolve="grammar" />
                          </node>
                          <node concept="10Nm6u" id="7Q_67PUObFp" role="3uHU7w" />
                        </node>
                        <node concept="3y3z36" id="7Q_67PUObFq" role="3uHU7w">
                          <node concept="37vLTw" id="7Q_67PUObFr" role="3uHU7B">
                            <ref role="3cqZAo" node="7Q_67PUObEJ" resolve="grammar" />
                          </node>
                          <node concept="37vLTw" id="7Q_67PUObFs" role="3uHU7w">
                            <ref role="3cqZAo" node="7Q_67PUObFb" resolve="owner" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="7Q_67PUObFu" role="3clFbx">
                        <node concept="YS8fn" id="7Q_67PUObFx" role="3cqZAp">
                          <node concept="2ShNRf" id="7Q_67PUOog3" role="YScLw">
                            <node concept="1pGfFk" id="7Q_67PUOom7" role="2ShVmc">
                              <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
                              <node concept="Xl_RD" id="7Q_67PUOom8" role="37wK5m">
                                <property role="Xl_RC" value="MBNF_AMBIGUOUS_GRAMMAR: select one final generated model" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="7Q_67PUObFy" role="3cqZAp">
                      <node concept="37vLTI" id="7Q_67PUObFz" role="3clFbG">
                        <node concept="37vLTw" id="7Q_67PUObF$" role="37vLTJ">
                          <ref role="3cqZAo" node="7Q_67PUObEJ" resolve="grammar" />
                        </node>
                        <node concept="37vLTw" id="7Q_67PUObF_" role="37vLTx">
                          <ref role="3cqZAo" node="7Q_67PUObFb" resolve="owner" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7Q_67PUObFE" role="3cqZAp">
          <node concept="3clFbC" id="7Q_67PUObFF" role="3clFbw">
            <node concept="37vLTw" id="7Q_67PUObFG" role="3uHU7B">
              <ref role="3cqZAo" node="7Q_67PUObEJ" resolve="grammar" />
            </node>
            <node concept="10Nm6u" id="7Q_67PUObFH" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="7Q_67PUObFJ" role="3clFbx">
            <node concept="YS8fn" id="7Q_67PUObFM" role="3cqZAp">
              <node concept="2ShNRf" id="7Q_67PUOom9" role="YScLw">
                <node concept="1pGfFk" id="7Q_67PUOomo" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
                  <node concept="Xl_RD" id="7Q_67PUOomp" role="37wK5m">
                    <property role="Xl_RC" value="MBNF_SOURCE_TRACE_MISSING: select the final transient model after building with Save transient models enabled" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7Q_67PUObFO" role="3cqZAp">
          <node concept="3cpWsn" id="7Q_67PUObFN" role="3cpWs9">
            <property role="TrG5h" value="language" />
            <node concept="3uibUv" id="7Q_67PUObFP" role="1tU5fm">
              <ref role="3uigEE" to="w1kc:~Language" resolve="Language" />
            </node>
            <node concept="10Nm6u" id="7Q_67PUObFQ" role="33vP2m" />
          </node>
        </node>
        <node concept="3cpWs8" id="7Q_67PUObFS" role="3cqZAp">
          <node concept="3cpWsn" id="7Q_67PUObFR" role="3cpWs9">
            <property role="TrG5h" value="languageName" />
            <node concept="3uibUv" id="7Q_67PUObFT" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
            <node concept="2OqwBi" id="7Q_67PUOp7U" role="33vP2m">
              <node concept="liA8E" id="7Q_67PUOp7V" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getName()" resolve="getName" />
              </node>
              <node concept="2JrnkZ" id="7Q_67PUOpKC" role="2Oq$k0">
                <node concept="37vLTw" id="7Q_67PUOoms" role="2JrQYb">
                  <ref role="3cqZAo" node="7Q_67PUObEJ" resolve="grammar" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7Q_67PUObFV" role="3cqZAp">
          <node concept="3clFbC" id="7Q_67PUObFW" role="3clFbw">
            <node concept="37vLTw" id="7Q_67PUObFX" role="3uHU7B">
              <ref role="3cqZAo" node="7Q_67PUObFR" resolve="languageName" />
            </node>
            <node concept="10Nm6u" id="7Q_67PUObFY" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="7Q_67PUObG0" role="3clFbx">
            <node concept="YS8fn" id="7Q_67PUObG3" role="3cqZAp">
              <node concept="2ShNRf" id="7Q_67PUOomu" role="YScLw">
                <node concept="1pGfFk" id="7Q_67PUOomH" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
                  <node concept="Xl_RD" id="7Q_67PUOomI" role="37wK5m">
                    <property role="Xl_RC" value="MBNF_GENERATION_TARGET: name the target language in the grammar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="7Q_67PUObG4" role="3cqZAp">
          <node concept="2OqwBi" id="7Q_67PUOppD" role="1DdaDG">
            <node concept="2OqwBi" id="7Q_67PUOp8l" role="2Oq$k0">
              <node concept="37vLTw" id="7Q_67PUOomT" role="2Oq$k0">
                <ref role="3cqZAo" node="7Q_67PUObEE" resolve="project" />
              </node>
              <node concept="liA8E" id="7Q_67PUOp8m" role="2OqNvi">
                <ref role="37wK5l" to="z1c4:~Project.getRepository()" resolve="getRepository" />
              </node>
            </node>
            <node concept="liA8E" id="7Q_67PUOppE" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~SRepository.getModules()" resolve="getModules" />
            </node>
          </node>
          <node concept="3cpWsn" id="7Q_67PUObGm" role="1Duv9x">
            <property role="TrG5h" value="module" />
            <node concept="3uibUv" id="7Q_67PUObGo" role="1tU5fm">
              <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
            </node>
          </node>
          <node concept="3clFbS" id="7Q_67PUObG6" role="2LFqv$">
            <node concept="3clFbJ" id="7Q_67PUObG7" role="3cqZAp">
              <node concept="1Wc70l" id="7Q_67PUObG8" role="3clFbw">
                <node concept="2ZW3vV" id="7Q_67PUObGb" role="3uHU7B">
                  <node concept="37vLTw" id="7Q_67PUObG9" role="2ZW6bz">
                    <ref role="3cqZAo" node="7Q_67PUObGm" resolve="module" />
                  </node>
                  <node concept="3uibUv" id="7Q_67PUObGa" role="2ZW6by">
                    <ref role="3uigEE" to="w1kc:~Language" resolve="Language" />
                  </node>
                </node>
                <node concept="2OqwBi" id="7Q_67PUOp8_" role="3uHU7w">
                  <node concept="37vLTw" id="7Q_67PUOomX" role="2Oq$k0">
                    <ref role="3cqZAo" node="7Q_67PUObFR" resolve="languageName" />
                  </node>
                  <node concept="liA8E" id="7Q_67PUOp8A" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                    <node concept="2OqwBi" id="7Q_67PUOprL" role="37wK5m">
                      <node concept="37vLTw" id="7Q_67PUOppH" role="2Oq$k0">
                        <ref role="3cqZAo" node="7Q_67PUObGm" resolve="module" />
                      </node>
                      <node concept="liA8E" id="7Q_67PUOprM" role="2OqNvi">
                        <ref role="37wK5l" to="lui2:~SModule.getModuleName()" resolve="getModuleName" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="7Q_67PUObGf" role="3clFbx">
                <node concept="3clFbF" id="7Q_67PUObGg" role="3cqZAp">
                  <node concept="37vLTI" id="7Q_67PUObGh" role="3clFbG">
                    <node concept="37vLTw" id="7Q_67PUObGi" role="37vLTJ">
                      <ref role="3cqZAo" node="7Q_67PUObFN" resolve="language" />
                    </node>
                    <node concept="10QFUN" id="7Q_67PUObGj" role="37vLTx">
                      <node concept="37vLTw" id="7Q_67PUObGk" role="10QFUP">
                        <ref role="3cqZAo" node="7Q_67PUObGm" resolve="module" />
                      </node>
                      <node concept="3uibUv" id="7Q_67PUObGl" role="10QFUM">
                        <ref role="3uigEE" to="w1kc:~Language" resolve="Language" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7Q_67PUObGr" role="3cqZAp">
          <node concept="3clFbC" id="7Q_67PUObGs" role="3clFbw">
            <node concept="37vLTw" id="7Q_67PUObGt" role="3uHU7B">
              <ref role="3cqZAo" node="7Q_67PUObFN" resolve="language" />
            </node>
            <node concept="10Nm6u" id="7Q_67PUObGu" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="7Q_67PUObGw" role="3clFbx">
            <node concept="YS8fn" id="7Q_67PUObGz" role="3cqZAp">
              <node concept="2ShNRf" id="7Q_67PUOon0" role="YScLw">
                <node concept="1pGfFk" id="7Q_67PUOonf" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
                  <node concept="Xl_RD" id="7Q_67PUOong" role="37wK5m">
                    <property role="Xl_RC" value="MBNF_GENERATION_TARGET: create the target language named by the grammar first" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7Q_67PUObG_" role="3cqZAp">
          <node concept="3cpWsn" id="7Q_67PUObG$" role="3cpWs9">
            <property role="TrG5h" value="targets" />
            <node concept="3uibUv" id="7Q_67PUObGA" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="H_c77" id="7Q_67PUOpL3" role="11_B2D" />
            </node>
            <node concept="2YIFZM" id="7Q_67PUOonj" role="33vP2m">
              <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
              <ref role="37wK5l" to="33ny:~Arrays.asList(java.lang.Object...)" resolve="asList" />
              <node concept="2OqwBi" id="7Q_67PUOppX" role="37wK5m">
                <node concept="Rm8GO" id="7Q_67PUOp8E" role="2Oq$k0">
                  <ref role="1Px2BO" to="w1kc:~LanguageAspect" resolve="LanguageAspect" />
                  <ref role="Rm8GQ" to="w1kc:~LanguageAspect.STRUCTURE" resolve="STRUCTURE" />
                </node>
                <node concept="liA8E" id="7Q_67PUOppY" role="2OqNvi">
                  <ref role="37wK5l" to="w1kc:~LanguageAspect.get(jetbrains.mps.smodel.Language)" resolve="get" />
                  <node concept="37vLTw" id="7Q_67PUOppZ" role="37wK5m">
                    <ref role="3cqZAo" node="7Q_67PUObFN" resolve="language" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="7Q_67PUOpqe" role="37wK5m">
                <node concept="Rm8GO" id="7Q_67PUOp8J" role="2Oq$k0">
                  <ref role="1Px2BO" to="w1kc:~LanguageAspect" resolve="LanguageAspect" />
                  <ref role="Rm8GQ" to="w1kc:~LanguageAspect.EDITOR" resolve="EDITOR" />
                </node>
                <node concept="liA8E" id="7Q_67PUOpqf" role="2OqNvi">
                  <ref role="37wK5l" to="w1kc:~LanguageAspect.get(jetbrains.mps.smodel.Language)" resolve="get" />
                  <node concept="37vLTw" id="7Q_67PUOpqg" role="37wK5m">
                    <ref role="3cqZAo" node="7Q_67PUObFN" resolve="language" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="7Q_67PUOpqv" role="37wK5m">
                <node concept="Rm8GO" id="7Q_67PUOp8O" role="2Oq$k0">
                  <ref role="1Px2BO" to="w1kc:~LanguageAspect" resolve="LanguageAspect" />
                  <ref role="Rm8GQ" to="w1kc:~LanguageAspect.TEXT_GEN" resolve="TEXT_GEN" />
                </node>
                <node concept="liA8E" id="7Q_67PUOpqw" role="2OqNvi">
                  <ref role="37wK5l" to="w1kc:~LanguageAspect.get(jetbrains.mps.smodel.Language)" resolve="get" />
                  <node concept="37vLTw" id="7Q_67PUOpqx" role="37wK5m">
                    <ref role="3cqZAo" node="7Q_67PUObFN" resolve="language" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="7Q_67PUObGJ" role="3cqZAp">
          <node concept="37vLTw" id="7Q_67PUObH0" role="1DdaDG">
            <ref role="3cqZAo" node="7Q_67PUObG$" resolve="targets" />
          </node>
          <node concept="3cpWsn" id="7Q_67PUObGX" role="1Duv9x">
            <property role="TrG5h" value="target" />
            <node concept="H_c77" id="7Q_67PUOpL4" role="1tU5fm" />
          </node>
          <node concept="3clFbS" id="7Q_67PUObGL" role="2LFqv$">
            <node concept="3clFbJ" id="7Q_67PUObGM" role="3cqZAp">
              <node concept="3fqX7Q" id="7Q_67PUObGN" role="3clFbw">
                <node concept="1eOMI4" id="7Q_67PUObGR" role="3fr31v">
                  <node concept="2ZW3vV" id="7Q_67PUObGQ" role="1eOMHV">
                    <node concept="37vLTw" id="7Q_67PUObGO" role="2ZW6bz">
                      <ref role="3cqZAo" node="7Q_67PUObGX" resolve="target" />
                    </node>
                    <node concept="3uibUv" id="7Q_67PUObGP" role="2ZW6by">
                      <ref role="3uigEE" to="mhbf:~EditableSModel" resolve="EditableSModel" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="7Q_67PUObGT" role="3clFbx">
                <node concept="YS8fn" id="7Q_67PUObGW" role="3cqZAp">
                  <node concept="2ShNRf" id="7Q_67PUOonq" role="YScLw">
                    <node concept="1pGfFk" id="7Q_67PUOonD" role="2ShVmc">
                      <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
                      <node concept="Xl_RD" id="7Q_67PUOonE" role="37wK5m">
                        <property role="Xl_RC" value="MBNF_GENERATION_TARGET: create editable structure, editor and textGen aspects first" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7Q_67PUObH1" role="3cqZAp">
          <node concept="3fqX7Q" id="7Q_67PUObH2" role="3clFbw">
            <node concept="1eOMI4" id="7Q_67PUObH6" role="3fr31v">
              <node concept="2ZW3vV" id="7Q_67PUObH5" role="1eOMHV">
                <node concept="2OqwBi" id="7Q_67PUOp91" role="2ZW6bz">
                  <node concept="liA8E" id="7Q_67PUOp92" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SNode.getModel()" resolve="getModel" />
                  </node>
                  <node concept="2JrnkZ" id="7Q_67PUOpKD" role="2Oq$k0">
                    <node concept="37vLTw" id="7Q_67PUOonH" role="2JrQYb">
                      <ref role="3cqZAo" node="7Q_67PUObEJ" resolve="grammar" />
                    </node>
                  </node>
                </node>
                <node concept="3uibUv" id="7Q_67PUObH4" role="2ZW6by">
                  <ref role="3uigEE" to="mhbf:~EditableSModel" resolve="EditableSModel" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="7Q_67PUObH8" role="3clFbx">
            <node concept="YS8fn" id="7Q_67PUObHb" role="3cqZAp">
              <node concept="2ShNRf" id="7Q_67PUOonJ" role="YScLw">
                <node concept="1pGfFk" id="7Q_67PUOonY" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
                  <node concept="Xl_RD" id="7Q_67PUOonZ" role="37wK5m">
                    <property role="Xl_RC" value="MBNF_GENERATION_INPUT: the source grammar must be editable" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7Q_67PUObHd" role="3cqZAp">
          <node concept="3cpWsn" id="7Q_67PUObHc" role="3cpWs9">
            <property role="TrG5h" value="profiles" />
            <node concept="3uibUv" id="7Q_67PUObHe" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="7Q_67PUObHf" role="11_B2D">
                <ref role="3uigEE" node="7Q_67PUOb_q" resolve="RegenerationActions.ProfileOption" />
              </node>
            </node>
            <node concept="2ShNRf" id="7Q_67PUOoo0" role="33vP2m">
              <node concept="1pGfFk" id="7Q_67PUOoo5" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                <node concept="3uibUv" id="7Q_67PUOoo6" role="1pMfVU">
                  <ref role="3uigEE" node="7Q_67PUOb_q" resolve="RegenerationActions.ProfileOption" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7Q_67PUObHi" role="3cqZAp">
          <node concept="2OqwBi" id="7Q_67PUOpbl" role="3clFbG">
            <node concept="37vLTw" id="7Q_67PUOoo9" role="2Oq$k0">
              <ref role="3cqZAo" node="7Q_67PUObHc" resolve="profiles" />
            </node>
            <node concept="liA8E" id="7Q_67PUOpbm" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
              <node concept="2ShNRf" id="7Q_67PUOpqy" role="37wK5m">
                <node concept="1pGfFk" id="7Q_67PUOpqH" role="2ShVmc">
                  <ref role="37wK5l" node="7Q_67PUOb_$" resolve="RegenerationActions.ProfileOption" />
                  <node concept="Xl_RD" id="7Q_67PUOpqI" role="37wK5m">
                    <property role="Xl_RC" value="Default vanilla (automatic)" />
                  </node>
                  <node concept="10Nm6u" id="7Q_67PUOpqJ" role="37wK5m" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="7Q_67PUObHn" role="3cqZAp">
          <node concept="2OqwBi" id="7Q_67PUOpr2" role="1DdaDG">
            <node concept="liA8E" id="7Q_67PUOpr3" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SModel.getRootNodes()" resolve="getRootNodes" />
            </node>
            <node concept="2JrnkZ" id="7Q_67PUOpKF" role="2Oq$k0">
              <node concept="2OqwBi" id="7Q_67PUOpbG" role="2JrQYb">
                <node concept="liA8E" id="7Q_67PUOpbH" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getModel()" resolve="getModel" />
                </node>
                <node concept="2JrnkZ" id="7Q_67PUOpKE" role="2Oq$k0">
                  <node concept="37vLTw" id="7Q_67PUOooo" role="2JrQYb">
                    <ref role="3cqZAo" node="7Q_67PUObEJ" resolve="grammar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="7Q_67PUObHF" role="1Duv9x">
            <property role="TrG5h" value="root" />
            <node concept="3Tqbb2" id="7Q_67PUOpL5" role="1tU5fm" />
          </node>
          <node concept="3clFbS" id="7Q_67PUObHp" role="2LFqv$">
            <node concept="3clFbJ" id="7Q_67PUObHq" role="3cqZAp">
              <node concept="1Wc70l" id="7Q_67PUObHr" role="3clFbw">
                <node concept="2OqwBi" id="7Q_67PUOprj" role="3uHU7B">
                  <node concept="2OqwBi" id="7Q_67PUOpbZ" role="2Oq$k0">
                    <node concept="liA8E" id="7Q_67PUOpc0" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                    </node>
                    <node concept="2JrnkZ" id="7Q_67PUOpKG" role="2Oq$k0">
                      <node concept="37vLTw" id="7Q_67PUOoo$" role="2JrQYb">
                        <ref role="3cqZAo" node="7Q_67PUObHF" resolve="root" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="7Q_67PUOprk" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                    <node concept="37vLTw" id="7Q_67PUOprl" role="37wK5m">
                      <ref role="3cqZAo" node="7Q_67PUObAZ" resolve="PROFILE" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="7Q_67PUObHv" role="3uHU7w">
                  <node concept="2OqwBi" id="7Q_67PUOpca" role="3uHU7B">
                    <node concept="liA8E" id="7Q_67PUOpcb" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.getReferenceTarget(org.jetbrains.mps.openapi.language.SReferenceLink)" resolve="getReferenceTarget" />
                      <node concept="37vLTw" id="7Q_67PUOpcc" role="37wK5m">
                        <ref role="3cqZAo" node="7Q_67PUObB3" resolve="PROFILE_GRAMMAR" />
                      </node>
                    </node>
                    <node concept="2JrnkZ" id="7Q_67PUOpKH" role="2Oq$k0">
                      <node concept="37vLTw" id="7Q_67PUOooC" role="2JrQYb">
                        <ref role="3cqZAo" node="7Q_67PUObHF" resolve="root" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="7Q_67PUObHy" role="3uHU7w">
                    <ref role="3cqZAo" node="7Q_67PUObEJ" resolve="grammar" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="7Q_67PUObH$" role="3clFbx">
                <node concept="3clFbF" id="7Q_67PUObH_" role="3cqZAp">
                  <node concept="2OqwBi" id="7Q_67PUOpev" role="3clFbG">
                    <node concept="37vLTw" id="7Q_67PUOooH" role="2Oq$k0">
                      <ref role="3cqZAo" node="7Q_67PUObHc" resolve="profiles" />
                    </node>
                    <node concept="liA8E" id="7Q_67PUOpew" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                      <node concept="2ShNRf" id="7Q_67PUOprm" role="37wK5m">
                        <node concept="1pGfFk" id="7Q_67PUOpr$" role="2ShVmc">
                          <ref role="37wK5l" node="7Q_67PUOb_$" resolve="RegenerationActions.ProfileOption" />
                          <node concept="2OqwBi" id="7Q_67PUOpsy" role="37wK5m">
                            <node concept="2OqwBi" id="7Q_67PUOpsg" role="2Oq$k0">
                              <node concept="liA8E" id="7Q_67PUOpsh" role="2OqNvi">
                                <ref role="37wK5l" to="mhbf:~SNode.getReference()" resolve="getReference" />
                              </node>
                              <node concept="2JrnkZ" id="7Q_67PUOpKI" role="2Oq$k0">
                                <node concept="37vLTw" id="7Q_67PUOprX" role="2JrQYb">
                                  <ref role="3cqZAo" node="7Q_67PUObHF" resolve="root" />
                                </node>
                              </node>
                            </node>
                            <node concept="liA8E" id="7Q_67PUOpsz" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="7Q_67PUOprB" role="37wK5m">
                            <ref role="3cqZAo" node="7Q_67PUObHF" resolve="root" />
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
        <node concept="3cpWs6" id="7Q_67PUObHK" role="3cqZAp">
          <node concept="2ShNRf" id="7Q_67PUOooN" role="3cqZAk">
            <node concept="1pGfFk" id="7Q_67PUOooZ" role="2ShVmc">
              <ref role="37wK5l" node="7Q_67PUObAk" resolve="RegenerationActions.Selection" />
              <node concept="37vLTw" id="7Q_67PUOop0" role="37wK5m">
                <ref role="3cqZAo" node="7Q_67PUObEJ" resolve="grammar" />
              </node>
              <node concept="37vLTw" id="7Q_67PUOop1" role="37wK5m">
                <ref role="3cqZAo" node="7Q_67PUObEN" resolve="roots" />
              </node>
              <node concept="37vLTw" id="7Q_67PUOop2" role="37wK5m">
                <ref role="3cqZAo" node="7Q_67PUObG$" resolve="targets" />
              </node>
              <node concept="37vLTw" id="7Q_67PUOop3" role="37wK5m">
                <ref role="3cqZAo" node="7Q_67PUObHc" resolve="profiles" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="7Q_67PUObHQ" role="1B3o_S" />
      <node concept="3uibUv" id="7Q_67PUObHR" role="3clF45">
        <ref role="3uigEE" node="7Q_67PUOb_Z" resolve="RegenerationActions.Selection" />
      </node>
    </node>
    <node concept="2YIFZL" id="7Q_67PUObHS" role="jymVt">
      <property role="TrG5h" value="save" />
      <node concept="37vLTG" id="7Q_67PUObHT" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="H_c77" id="7Q_67PUOpL6" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="7Q_67PUObHV" role="3clF47">
        <node concept="3clFbJ" id="7Q_67PUObHW" role="3cqZAp">
          <node concept="3fqX7Q" id="7Q_67PUObHX" role="3clFbw">
            <node concept="1eOMI4" id="7Q_67PUObI1" role="3fr31v">
              <node concept="2ZW3vV" id="7Q_67PUObI0" role="1eOMHV">
                <node concept="37vLTw" id="7Q_67PUObHY" role="2ZW6bz">
                  <ref role="3cqZAo" node="7Q_67PUObHT" resolve="model" />
                </node>
                <node concept="3uibUv" id="7Q_67PUObHZ" role="2ZW6by">
                  <ref role="3uigEE" to="mhbf:~EditableSModel" resolve="EditableSModel" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="7Q_67PUObI3" role="3clFbx">
            <node concept="YS8fn" id="7Q_67PUObI6" role="3cqZAp">
              <node concept="2ShNRf" id="7Q_67PUOop4" role="YScLw">
                <node concept="1pGfFk" id="7Q_67PUOopj" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
                  <node concept="Xl_RD" id="7Q_67PUOopk" role="37wK5m">
                    <property role="Xl_RC" value="MBNF_SAVE_FAILED: affected model is not editable" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7Q_67PUObI7" role="3cqZAp">
          <node concept="2OqwBi" id="7Q_67PUOopw" role="3clFbG">
            <node concept="1eOMI4" id="7Q_67PUObIc" role="2Oq$k0">
              <node concept="10QFUN" id="7Q_67PUObI9" role="1eOMHV">
                <node concept="37vLTw" id="7Q_67PUObIa" role="10QFUP">
                  <ref role="3cqZAo" node="7Q_67PUObHT" resolve="model" />
                </node>
                <node concept="3uibUv" id="7Q_67PUObIb" role="10QFUM">
                  <ref role="3uigEE" to="mhbf:~EditableSModel" resolve="EditableSModel" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="7Q_67PUOopx" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~EditableSModel.save()" resolve="save" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="694jTX$U3NJ" role="3cqZAp">
          <node concept="2OqwBi" id="694jTX$U47O" role="3clFbG">
            <node concept="1eOMI4" id="694jTX$U3NO" role="2Oq$k0">
              <node concept="10QFUN" id="694jTX$U3NL" role="1eOMHV">
                <node concept="2OqwBi" id="694jTX$U489" role="10QFUP">
                  <node concept="liA8E" id="694jTX$U48a" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
                  </node>
                  <node concept="2JrnkZ" id="694jTX$U48b" role="2Oq$k0">
                    <node concept="37vLTw" id="694jTX$U47Y" role="2JrQYb">
                      <ref role="3cqZAo" node="7Q_67PUObHT" resolve="model" />
                    </node>
                  </node>
                </node>
                <node concept="3uibUv" id="694jTX$U3NN" role="10QFUM">
                  <ref role="3uigEE" to="z1c4:~AbstractModule" resolve="AbstractModule" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="694jTX$U47P" role="2OqNvi">
              <ref role="37wK5l" to="z1c4:~AbstractModule.save()" resolve="save" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="7Q_67PUObId" role="1B3o_S" />
      <node concept="3cqZAl" id="7Q_67PUObIe" role="3clF45" />
    </node>
  </node>
</model>

