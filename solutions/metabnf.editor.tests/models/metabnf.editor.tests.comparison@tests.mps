<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:00973a5f-4ed9-4ceb-afe8-d8ad310805dc(metabnf.editor.tests.comparison@tests)">
  <persistence version="9" />
  <languages>
    <use id="6b032bf9-b24f-4771-b578-88633736228d" name="CSharpComparison" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
    <devkit ref="c58990b8-665e-4423-bdd8-0d527a8266cb(jetbrains.mps.devkit.tests)" />
  </languages>
  <imports>
    <import index="jscv" ref="r:bbfd4f67-3d60-40cb-a629-ea2cfde43ecf(metabnf.editor.tests.interactions@tests)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="dush" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.persistence(MPS.OpenAPI/)" />
    <import index="exr9" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor(MPS.Editor/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="3ju5" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.vfs(MPS.Core/)" />
    <import index="ends" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.extapi.persistence(MPS.Core/)" />
    <import index="eoo2" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.nio.file(JDK/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="tqvn" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.tempmodel(MPS.Core/)" />
    <import index="ao3" ref="7124e466-fc92-4803-a656-d7a6b7eb3910/java:jetbrains.mps.text(MPS.TextGen/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="wyuk" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.components(MPS.Core/)" />
  </imports>
  <registry>
    <language id="8585453e-6bfb-4d80-98de-b16074f1d86c" name="jetbrains.mps.lang.test">
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
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
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
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
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
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
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
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT" />
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
    <language id="6b032bf9-b24f-4771-b578-88633736228d" name="CSharpComparison">
      <concept id="273341760692118444" name="CSharpComparison.structure.expression" flags="ng" index="nBB_e">
        <property id="114327263153988654" name="NUMBER" index="15Yow$" />
        <child id="779591969617056108" name="_AntlrGroup2" index="o53IC" />
      </concept>
      <concept id="159527021668265679" name="CSharpComparison.structure.statement__ANTLRAlternative1" flags="ng" index="wEySO">
        <child id="561128968929144013" name="block" index="5YAGu" />
      </concept>
      <concept id="763387011107777253" name="CSharpComparison.structure._AntlrGroup1" flags="ng" index="HCvak">
        <child id="984745600810106594" name="expression" index="vKbCa" />
      </concept>
      <concept id="169422966360188647" name="CSharpComparison.structure._AntlrGroup2" flags="ng" index="1cUcYH">
        <property id="969309795344586878" name="NUMBER" index="21Crpx" />
      </concept>
      <concept id="909401481449236999" name="CSharpComparison.structure.block" flags="ng" index="1fo3Rj">
        <child id="78161202108132502" name="statement" index="3ZMGe$" />
      </concept>
      <concept id="1089562769112152727" name="CSharpComparison.structure.program" flags="ng" index="3qtlO7">
        <child id="548585614473936606" name="block" index="2K1O_F" />
      </concept>
      <concept id="186783673270237980" name="CSharpComparison.structure.statement__ANTLRAlternative2" flags="ng" index="3tyIRu">
        <child id="924502612844802358" name="_AntlrGroup1" index="1$n8Wc" />
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
  </registry>
  <node concept="LiM7Y" id="2mJiJ3i8iJz">
    <property role="TrG5h" value="CSharpExpressionCaret" />
    <property role="3YCmrE" value="Authored C#-like generated editor; no native dflat execution is claimed" />
    <node concept="3clFbS" id="2mJiJ3i8iJ$" role="LjaKd">
      <node concept="2TK7Tu" id="2mJiJ3i8iJy" role="3cqZAp">
        <property role="2TTd_B" value="3" />
      </node>
      <node concept="3vlDli" id="2mJiJ3i8iJ_" role="3cqZAp">
        <node concept="Xl_RD" id="2mJiJ3i8iJA" role="3tpDZB">
          <property role="Xl_RC" value="{return 1+3;}" />
        </node>
        <node concept="2YIFZM" id="2mJiJ3i8iJB" role="3tpDZA">
          <ref role="1Pybhc" to="jscv:39m6c$Kgt2e" resolve="InteractionAssertions" />
          <ref role="37wK5l" to="jscv:54cyhNXDh5E" resolve="exportLf" />
          <node concept="1jxXqW" id="2mJiJ3i8iJC" role="37wK5m" />
          <node concept="2OqwBi" id="2mJiJ3i8iJD" role="37wK5m">
            <node concept="369mXd" id="2mJiJ3i8iJE" role="2Oq$k0" />
            <node concept="liA8E" id="2mJiJ3i8iJF" role="2OqNvi">
              <ref role="37wK5l" to="exr9:~EditorComponent.getEditedNode()" resolve="getEditedNode" />
            </node>
          </node>
        </node>
        <node concept="3_1$Yv" id="2mJiJ3i8iJG" role="3_9lra">
          <node concept="Xl_RD" id="2mJiJ3i8iJH" role="3_1BAH">
            <property role="Xl_RC" value="C# authored slice: exact exported syntax" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="2mJiJ3i8iJI" role="25YQCW">
      <node concept="1fo3Rj" id="2mJiJ3i8iJl" role="1qenE9">
        <node concept="3tyIRu" id="2mJiJ3i8iJm" role="3ZMGe$">
          <node concept="HCvak" id="2mJiJ3i8iJn" role="1$n8Wc">
            <node concept="nBB_e" id="2mJiJ3i8iJo" role="vKbCa">
              <property role="15Yow$" value="1" />
              <node concept="1cUcYH" id="2mJiJ3i8iJp" role="o53IC">
                <property role="21Crpx" value="2" />
                <node concept="LIFWc" id="2mJiJ3i8iJw" role="lGtFl">
                  <property role="LIFWd" value="property_NUMBER" />
                  <property role="LIFWa" value="1" />
                  <property role="p6zMq" value="0" />
                  <property role="p6zMs" value="1" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="2mJiJ3i8iJJ" role="25YQFr">
      <node concept="1fo3Rj" id="2mJiJ3i8iJr" role="1qenE9">
        <node concept="3tyIRu" id="2mJiJ3i8iJs" role="3ZMGe$">
          <node concept="HCvak" id="2mJiJ3i8iJt" role="1$n8Wc">
            <node concept="nBB_e" id="2mJiJ3i8iJu" role="vKbCa">
              <property role="15Yow$" value="1" />
              <node concept="1cUcYH" id="2mJiJ3i8iJv" role="o53IC">
                <property role="21Crpx" value="3" />
                <node concept="LIFWc" id="2mJiJ3i8iJx" role="lGtFl">
                  <property role="LIFWd" value="property_NUMBER" />
                  <property role="LIFWa" value="1" />
                  <property role="p6zMq" value="1" />
                  <property role="p6zMs" value="1" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="2mJiJ3i8iK0">
    <property role="TrG5h" value="CSharpExpressionUndo" />
    <property role="3YCmrE" value="Authored C#-like generated editor; no native dflat execution is claimed" />
    <node concept="3clFbS" id="2mJiJ3i8iK1" role="LjaKd">
      <node concept="2TK7Tu" id="2mJiJ3i8iJX" role="3cqZAp">
        <property role="2TTd_B" value="3" />
      </node>
      <node concept="2HxZob" id="2mJiJ3i8iJY" role="3cqZAp">
        <node concept="3iKlGA" id="2mJiJ3i8iJZ" role="3iKnsn">
          <property role="3iKnse" value="$Undo" />
        </node>
      </node>
      <node concept="3vlDli" id="2mJiJ3i8iK2" role="3cqZAp">
        <node concept="Xl_RD" id="2mJiJ3i8iK3" role="3tpDZB">
          <property role="Xl_RC" value="{return 1+2;}" />
        </node>
        <node concept="2YIFZM" id="2mJiJ3i8iK4" role="3tpDZA">
          <ref role="1Pybhc" to="jscv:39m6c$Kgt2e" resolve="InteractionAssertions" />
          <ref role="37wK5l" to="jscv:54cyhNXDh5E" resolve="exportLf" />
          <node concept="1jxXqW" id="2mJiJ3i8iK5" role="37wK5m" />
          <node concept="2OqwBi" id="2mJiJ3i8iK6" role="37wK5m">
            <node concept="369mXd" id="2mJiJ3i8iK7" role="2Oq$k0" />
            <node concept="liA8E" id="2mJiJ3i8iK8" role="2OqNvi">
              <ref role="37wK5l" to="exr9:~EditorComponent.getEditedNode()" resolve="getEditedNode" />
            </node>
          </node>
        </node>
        <node concept="3_1$Yv" id="2mJiJ3i8iK9" role="3_9lra">
          <node concept="Xl_RD" id="2mJiJ3i8iKa" role="3_1BAH">
            <property role="Xl_RC" value="C# authored slice: exact exported syntax" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="2mJiJ3i8iKb" role="25YQCW">
      <node concept="1fo3Rj" id="2mJiJ3i8iJL" role="1qenE9">
        <node concept="3tyIRu" id="2mJiJ3i8iJM" role="3ZMGe$">
          <node concept="HCvak" id="2mJiJ3i8iJN" role="1$n8Wc">
            <node concept="nBB_e" id="2mJiJ3i8iJO" role="vKbCa">
              <property role="15Yow$" value="1" />
              <node concept="1cUcYH" id="2mJiJ3i8iJP" role="o53IC">
                <property role="21Crpx" value="2" />
                <node concept="LIFWc" id="2mJiJ3i8iJW" role="lGtFl">
                  <property role="LIFWd" value="property_NUMBER" />
                  <property role="LIFWa" value="1" />
                  <property role="p6zMq" value="0" />
                  <property role="p6zMs" value="1" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="2mJiJ3i8iKc" role="25YQFr">
      <node concept="1fo3Rj" id="2mJiJ3i8iJR" role="1qenE9">
        <node concept="3tyIRu" id="2mJiJ3i8iJS" role="3ZMGe$">
          <node concept="HCvak" id="2mJiJ3i8iJT" role="1$n8Wc">
            <node concept="nBB_e" id="2mJiJ3i8iJU" role="vKbCa">
              <property role="15Yow$" value="1" />
              <node concept="1cUcYH" id="2mJiJ3i8iJV" role="o53IC">
                <property role="21Crpx" value="2" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="2mJiJ3i8iKw">
    <property role="TrG5h" value="CSharpExportSyntax" />
    <property role="3YCmrE" value="Authored C#-like generated editor; no native dflat execution is claimed" />
    <node concept="3clFbS" id="2mJiJ3i8iKx" role="LjaKd">
      <node concept="3vlDli" id="2mJiJ3i8iKy" role="3cqZAp">
        <node concept="Xl_RD" id="2mJiJ3i8iKz" role="3tpDZB">
          <property role="Xl_RC" value="{{return 1+2;}return;}" />
        </node>
        <node concept="2YIFZM" id="2mJiJ3i8iK$" role="3tpDZA">
          <ref role="1Pybhc" to="jscv:39m6c$Kgt2e" resolve="InteractionAssertions" />
          <ref role="37wK5l" to="jscv:54cyhNXDh5E" resolve="exportLf" />
          <node concept="1jxXqW" id="2mJiJ3i8iK_" role="37wK5m" />
          <node concept="2OqwBi" id="2mJiJ3i8iKA" role="37wK5m">
            <node concept="369mXd" id="2mJiJ3i8iKB" role="2Oq$k0" />
            <node concept="liA8E" id="2mJiJ3i8iKC" role="2OqNvi">
              <ref role="37wK5l" to="exr9:~EditorComponent.getEditedNode()" resolve="getEditedNode" />
            </node>
          </node>
        </node>
        <node concept="3_1$Yv" id="2mJiJ3i8iKD" role="3_9lra">
          <node concept="Xl_RD" id="2mJiJ3i8iKE" role="3_1BAH">
            <property role="Xl_RC" value="C# authored slice: exact exported syntax" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="2mJiJ3i8iKF" role="25YQCW">
      <node concept="1fo3Rj" id="2mJiJ3i8iKe" role="1qenE9">
        <node concept="wEySO" id="2mJiJ3i8iKj" role="3ZMGe$">
          <node concept="1fo3Rj" id="2mJiJ3i8iKk" role="5YAGu">
            <node concept="3tyIRu" id="2mJiJ3i8iKf" role="3ZMGe$">
              <node concept="HCvak" id="2mJiJ3i8iKg" role="1$n8Wc">
                <node concept="nBB_e" id="2mJiJ3i8iKh" role="vKbCa">
                  <property role="15Yow$" value="1" />
                  <node concept="1cUcYH" id="2mJiJ3i8iKi" role="o53IC">
                    <property role="21Crpx" value="2" />
                    <node concept="LIFWc" id="2mJiJ3i8iKv" role="lGtFl">
                      <property role="LIFWd" value="property_NUMBER" />
                      <property role="LIFWa" value="1" />
                      <property role="p6zMq" value="1" />
                      <property role="p6zMs" value="1" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3tyIRu" id="2mJiJ3i8iKl" role="3ZMGe$" />
      </node>
    </node>
    <node concept="1qefOq" id="2mJiJ3i8iKG" role="25YQFr">
      <node concept="1fo3Rj" id="2mJiJ3i8iKn" role="1qenE9">
        <node concept="wEySO" id="2mJiJ3i8iKs" role="3ZMGe$">
          <node concept="1fo3Rj" id="2mJiJ3i8iKt" role="5YAGu">
            <node concept="3tyIRu" id="2mJiJ3i8iKo" role="3ZMGe$">
              <node concept="HCvak" id="2mJiJ3i8iKp" role="1$n8Wc">
                <node concept="nBB_e" id="2mJiJ3i8iKq" role="vKbCa">
                  <property role="15Yow$" value="1" />
                  <node concept="1cUcYH" id="2mJiJ3i8iKr" role="o53IC">
                    <property role="21Crpx" value="2" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3tyIRu" id="2mJiJ3i8iKu" role="3ZMGe$" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="2mJiJ3i8lbj">
    <property role="TrG5h" value="CSharpComparisonFacts" />
    <node concept="3Tm1VV" id="2mJiJ3i8lbk" role="1B3o_S" />
    <node concept="2YIFZL" id="2mJiJ3i8lbl" role="jymVt">
      <property role="TrG5h" value="children" />
      <node concept="37vLTG" id="2mJiJ3i8lbm" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="2mJiJ3i8rg8" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2mJiJ3i8lbo" role="3clF46">
        <property role="TrG5h" value="role" />
        <node concept="17QB3L" id="2mJiJ3i8x7T" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="2mJiJ3i8lbq" role="3clF47">
        <node concept="3cpWs8" id="2mJiJ3i8lbs" role="3cqZAp">
          <node concept="3cpWsn" id="2mJiJ3i8lbr" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="3uibUv" id="2mJiJ3i8lbt" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3Tqbb2" id="2mJiJ3i8rg9" role="11_B2D" />
            </node>
            <node concept="2ShNRf" id="2mJiJ3i8otW" role="33vP2m">
              <node concept="1pGfFk" id="2mJiJ3i8ou1" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                <node concept="3Tqbb2" id="2mJiJ3i8rga" role="1pMfVU" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="2mJiJ3i8lbx" role="3cqZAp">
          <node concept="2OqwBi" id="2mJiJ3i8qBI" role="1DdaDG">
            <node concept="liA8E" id="2mJiJ3i8qBJ" role="2OqNvi">
              <ref role="37wK5l" to="c17a:~SAbstractConcept.getContainmentLinks()" resolve="getContainmentLinks" />
            </node>
            <node concept="2JrnkZ" id="2mJiJ3i8rfU" role="2Oq$k0">
              <node concept="2OqwBi" id="2mJiJ3i8qla" role="2JrQYb">
                <node concept="liA8E" id="2mJiJ3i8qlb" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                </node>
                <node concept="2JrnkZ" id="2mJiJ3i8rfT" role="2Oq$k0">
                  <node concept="37vLTw" id="2mJiJ3i8oud" role="2JrQYb">
                    <ref role="3cqZAo" node="2mJiJ3i8lbm" resolve="node" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="2mJiJ3i8lbM" role="1Duv9x">
            <property role="TrG5h" value="link" />
            <node concept="3uibUv" id="2mJiJ3i8lbO" role="1tU5fm">
              <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
            </node>
          </node>
          <node concept="3clFbS" id="2mJiJ3i8lbz" role="2LFqv$">
            <node concept="3clFbJ" id="2mJiJ3i8lb$" role="3cqZAp">
              <node concept="2OqwBi" id="2mJiJ3i8qlp" role="3clFbw">
                <node concept="37vLTw" id="2mJiJ3i8ouh" role="2Oq$k0">
                  <ref role="3cqZAo" node="2mJiJ3i8lbo" resolve="role" />
                </node>
                <node concept="liA8E" id="2mJiJ3i8qlq" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                  <node concept="2OqwBi" id="2mJiJ3i8qGo" role="37wK5m">
                    <node concept="37vLTw" id="2mJiJ3i8qBM" role="2Oq$k0">
                      <ref role="3cqZAo" node="2mJiJ3i8lbM" resolve="link" />
                    </node>
                    <node concept="liA8E" id="2mJiJ3i8qGp" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="2mJiJ3i8lbL" role="3clFbx">
                <node concept="1DcWWT" id="2mJiJ3i8lbB" role="3cqZAp">
                  <node concept="2OqwBi" id="2mJiJ3i8ql_" role="1DdaDG">
                    <node concept="liA8E" id="2mJiJ3i8qlA" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.getChildren(org.jetbrains.mps.openapi.language.SContainmentLink)" resolve="getChildren" />
                      <node concept="37vLTw" id="2mJiJ3i8qlB" role="37wK5m">
                        <ref role="3cqZAo" node="2mJiJ3i8lbM" resolve="link" />
                      </node>
                    </node>
                    <node concept="2JrnkZ" id="2mJiJ3i8rfV" role="2Oq$k0">
                      <node concept="37vLTw" id="2mJiJ3i8oum" role="2JrQYb">
                        <ref role="3cqZAo" node="2mJiJ3i8lbm" resolve="node" />
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWsn" id="2mJiJ3i8lbG" role="1Duv9x">
                    <property role="TrG5h" value="child" />
                    <node concept="3Tqbb2" id="2mJiJ3i8rgb" role="1tU5fm" />
                  </node>
                  <node concept="3clFbS" id="2mJiJ3i8lbF" role="2LFqv$">
                    <node concept="3clFbF" id="2mJiJ3i8lbC" role="3cqZAp">
                      <node concept="2OqwBi" id="2mJiJ3i8qnU" role="3clFbG">
                        <node concept="37vLTw" id="2mJiJ3i8our" role="2Oq$k0">
                          <ref role="3cqZAo" node="2mJiJ3i8lbr" resolve="result" />
                        </node>
                        <node concept="liA8E" id="2mJiJ3i8qnV" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                          <node concept="37vLTw" id="2mJiJ3i8qnW" role="37wK5m">
                            <ref role="3cqZAo" node="2mJiJ3i8lbG" resolve="child" />
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
        <node concept="3cpWs6" id="2mJiJ3i8lbR" role="3cqZAp">
          <node concept="37vLTw" id="2mJiJ3i8lbS" role="3cqZAk">
            <ref role="3cqZAo" node="2mJiJ3i8lbr" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="2mJiJ3i8lbT" role="1B3o_S" />
      <node concept="3uibUv" id="2mJiJ3i8lbU" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3Tqbb2" id="2mJiJ3i8rgc" role="11_B2D" />
      </node>
    </node>
    <node concept="2YIFZL" id="2mJiJ3i8lbW" role="jymVt">
      <property role="TrG5h" value="child" />
      <node concept="37vLTG" id="2mJiJ3i8lbX" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="2mJiJ3i8rgd" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2mJiJ3i8lbZ" role="3clF46">
        <property role="TrG5h" value="role" />
        <node concept="17QB3L" id="2mJiJ3i8x7U" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="2mJiJ3i8lc1" role="3clF47">
        <node concept="3cpWs8" id="2mJiJ3i8lc3" role="3cqZAp">
          <node concept="3cpWsn" id="2mJiJ3i8lc2" role="3cpWs9">
            <property role="TrG5h" value="nodes" />
            <node concept="3uibUv" id="2mJiJ3i8lc4" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3Tqbb2" id="2mJiJ3i8rge" role="11_B2D" />
            </node>
            <node concept="1rXfSq" id="2mJiJ3i8lc6" role="33vP2m">
              <ref role="37wK5l" node="2mJiJ3i8lbl" resolve="children" />
              <node concept="37vLTw" id="2mJiJ3i8lc7" role="37wK5m">
                <ref role="3cqZAo" node="2mJiJ3i8lbX" resolve="node" />
              </node>
              <node concept="37vLTw" id="2mJiJ3i8lc8" role="37wK5m">
                <ref role="3cqZAo" node="2mJiJ3i8lbZ" resolve="role" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2mJiJ3i8lc9" role="3cqZAp">
          <node concept="3K4zz7" id="2mJiJ3i8lce" role="3cqZAk">
            <node concept="2OqwBi" id="2mJiJ3i8qqf" role="3K4Cdx">
              <node concept="37vLTw" id="2mJiJ3i8ouw" role="2Oq$k0">
                <ref role="3cqZAo" node="2mJiJ3i8lc2" resolve="nodes" />
              </node>
              <node concept="liA8E" id="2mJiJ3i8qqg" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.isEmpty()" resolve="isEmpty" />
              </node>
            </node>
            <node concept="10Nm6u" id="2mJiJ3i8lcb" role="3K4E3e" />
            <node concept="2OqwBi" id="2mJiJ3i8qsz" role="3K4GZi">
              <node concept="37vLTw" id="2mJiJ3i8ou$" role="2Oq$k0">
                <ref role="3cqZAo" node="2mJiJ3i8lc2" resolve="nodes" />
              </node>
              <node concept="liA8E" id="2mJiJ3i8qs$" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                <node concept="3cmrfG" id="2mJiJ3i8qs_" role="37wK5m">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="2mJiJ3i8lcf" role="1B3o_S" />
      <node concept="3Tqbb2" id="2mJiJ3i8rgf" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="2mJiJ3i8lch" role="jymVt">
      <property role="TrG5h" value="number" />
      <node concept="37vLTG" id="2mJiJ3i8lci" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="2mJiJ3i8rgg" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="2mJiJ3i8lck" role="3clF47">
        <node concept="1DcWWT" id="2mJiJ3i8lcl" role="3cqZAp">
          <node concept="2OqwBi" id="2mJiJ3i8qC3" role="1DdaDG">
            <node concept="liA8E" id="2mJiJ3i8qC4" role="2OqNvi">
              <ref role="37wK5l" to="c17a:~SAbstractConcept.getProperties()" resolve="getProperties" />
            </node>
            <node concept="2JrnkZ" id="2mJiJ3i8rfX" role="2Oq$k0">
              <node concept="2OqwBi" id="2mJiJ3i8qsR" role="2JrQYb">
                <node concept="liA8E" id="2mJiJ3i8qsS" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                </node>
                <node concept="2JrnkZ" id="2mJiJ3i8rfW" role="2Oq$k0">
                  <node concept="37vLTw" id="2mJiJ3i8ouL" role="2JrQYb">
                    <ref role="3cqZAo" node="2mJiJ3i8lci" resolve="node" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="2mJiJ3i8lcw" role="1Duv9x">
            <property role="TrG5h" value="property" />
            <node concept="3uibUv" id="2mJiJ3i8lcy" role="1tU5fm">
              <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
            </node>
          </node>
          <node concept="3clFbS" id="2mJiJ3i8lcn" role="2LFqv$">
            <node concept="3clFbJ" id="2mJiJ3i8lco" role="3cqZAp">
              <node concept="2OqwBi" id="2mJiJ3i8pFQ" role="3clFbw">
                <node concept="Xl_RD" id="2mJiJ3i8lcq" role="2Oq$k0">
                  <property role="Xl_RC" value="NUMBER" />
                </node>
                <node concept="liA8E" id="2mJiJ3i8pFR" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                  <node concept="2OqwBi" id="2mJiJ3i8qCe" role="37wK5m">
                    <node concept="37vLTw" id="2mJiJ3i8qsV" role="2Oq$k0">
                      <ref role="3cqZAo" node="2mJiJ3i8lcw" resolve="property" />
                    </node>
                    <node concept="liA8E" id="2mJiJ3i8qCf" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SProperty.getName()" resolve="getName" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="2mJiJ3i8lcv" role="3clFbx">
                <node concept="3cpWs6" id="2mJiJ3i8lcs" role="3cqZAp">
                  <node concept="2OqwBi" id="2mJiJ3i8qt6" role="3cqZAk">
                    <node concept="liA8E" id="2mJiJ3i8qt7" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.getProperty(org.jetbrains.mps.openapi.language.SProperty)" resolve="getProperty" />
                      <node concept="37vLTw" id="2mJiJ3i8qt8" role="37wK5m">
                        <ref role="3cqZAo" node="2mJiJ3i8lcw" resolve="property" />
                      </node>
                    </node>
                    <node concept="2JrnkZ" id="2mJiJ3i8rfY" role="2Oq$k0">
                      <node concept="37vLTw" id="2mJiJ3i8pFV" role="2JrQYb">
                        <ref role="3cqZAo" node="2mJiJ3i8lci" resolve="node" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="YS8fn" id="2mJiJ3i8lcB" role="3cqZAp">
          <node concept="2ShNRf" id="2mJiJ3i8pFY" role="YScLw">
            <node concept="1pGfFk" id="2mJiJ3i8pM2" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;(java.lang.String)" resolve="IllegalArgumentException" />
              <node concept="Xl_RD" id="2mJiJ3i8pM3" role="37wK5m">
                <property role="Xl_RC" value="Missing numeric property" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="2mJiJ3i8lcC" role="1B3o_S" />
      <node concept="17QB3L" id="2mJiJ3i8x7V" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="2mJiJ3i8lcE" role="jymVt">
      <property role="TrG5h" value="expression" />
      <node concept="37vLTG" id="2mJiJ3i8lcF" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="2mJiJ3i8rgh" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="2mJiJ3i8lcH" role="3clF47">
        <node concept="3cpWs8" id="2mJiJ3i8lcJ" role="3cqZAp">
          <node concept="3cpWsn" id="2mJiJ3i8lcI" role="3cpWs9">
            <property role="TrG5h" value="value" />
            <node concept="17QB3L" id="2mJiJ3i8x7W" role="1tU5fm" />
            <node concept="3cpWs3" id="2mJiJ3i8lcL" role="33vP2m">
              <node concept="3cpWs3" id="2mJiJ3i8lcM" role="3uHU7B">
                <node concept="Xl_RD" id="2mJiJ3i8lcN" role="3uHU7B">
                  <property role="Xl_RC" value="number(" />
                </node>
                <node concept="1rXfSq" id="2mJiJ3i8lcO" role="3uHU7w">
                  <ref role="37wK5l" node="2mJiJ3i8lch" resolve="number" />
                  <node concept="37vLTw" id="2mJiJ3i8lcP" role="37wK5m">
                    <ref role="3cqZAo" node="2mJiJ3i8lcF" resolve="node" />
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="2mJiJ3i8lcQ" role="3uHU7w">
                <property role="Xl_RC" value=")" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="2mJiJ3i8lcR" role="3cqZAp">
          <node concept="1rXfSq" id="2mJiJ3i8lda" role="1DdaDG">
            <ref role="37wK5l" node="2mJiJ3i8lbl" resolve="children" />
            <node concept="37vLTw" id="2mJiJ3i8ldb" role="37wK5m">
              <ref role="3cqZAo" node="2mJiJ3i8lcF" resolve="node" />
            </node>
            <node concept="Xl_RD" id="2mJiJ3i8ldc" role="37wK5m">
              <property role="Xl_RC" value="_AntlrGroup2" />
            </node>
          </node>
          <node concept="3cpWsn" id="2mJiJ3i8ld7" role="1Duv9x">
            <property role="TrG5h" value="suffix" />
            <node concept="3Tqbb2" id="2mJiJ3i8rgi" role="1tU5fm" />
          </node>
          <node concept="3clFbS" id="2mJiJ3i8lcT" role="2LFqv$">
            <node concept="3clFbF" id="2mJiJ3i8lcU" role="3cqZAp">
              <node concept="37vLTI" id="2mJiJ3i8lcV" role="3clFbG">
                <node concept="37vLTw" id="2mJiJ3i8lcW" role="37vLTJ">
                  <ref role="3cqZAo" node="2mJiJ3i8lcI" resolve="value" />
                </node>
                <node concept="3cpWs3" id="2mJiJ3i8lcX" role="37vLTx">
                  <node concept="3cpWs3" id="2mJiJ3i8lcY" role="3uHU7B">
                    <node concept="3cpWs3" id="2mJiJ3i8lcZ" role="3uHU7B">
                      <node concept="3cpWs3" id="2mJiJ3i8ld0" role="3uHU7B">
                        <node concept="Xl_RD" id="2mJiJ3i8ld1" role="3uHU7B">
                          <property role="Xl_RC" value="add(" />
                        </node>
                        <node concept="37vLTw" id="2mJiJ3i8ld2" role="3uHU7w">
                          <ref role="3cqZAo" node="2mJiJ3i8lcI" resolve="value" />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="2mJiJ3i8ld3" role="3uHU7w">
                        <property role="Xl_RC" value=",number(" />
                      </node>
                    </node>
                    <node concept="1rXfSq" id="2mJiJ3i8ld4" role="3uHU7w">
                      <ref role="37wK5l" node="2mJiJ3i8lch" resolve="number" />
                      <node concept="37vLTw" id="2mJiJ3i8ld5" role="37wK5m">
                        <ref role="3cqZAo" node="2mJiJ3i8ld7" resolve="suffix" />
                      </node>
                    </node>
                  </node>
                  <node concept="Xl_RD" id="2mJiJ3i8ld6" role="3uHU7w">
                    <property role="Xl_RC" value="))" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2mJiJ3i8ldd" role="3cqZAp">
          <node concept="37vLTw" id="2mJiJ3i8lde" role="3cqZAk">
            <ref role="3cqZAo" node="2mJiJ3i8lcI" resolve="value" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="2mJiJ3i8ldf" role="1B3o_S" />
      <node concept="17QB3L" id="2mJiJ3i8x7X" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="2mJiJ3i8ldh" role="jymVt">
      <property role="TrG5h" value="block" />
      <node concept="37vLTG" id="2mJiJ3i8ldi" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="2mJiJ3i8rgj" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2mJiJ3i8ldk" role="3clF46">
        <property role="TrG5h" value="path" />
        <node concept="17QB3L" id="2mJiJ3i8x7Y" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="2mJiJ3i8ldm" role="3clF47">
        <node concept="3cpWs8" id="2mJiJ3i8ldo" role="3cqZAp">
          <node concept="3cpWsn" id="2mJiJ3i8ldn" role="3cpWs9">
            <property role="TrG5h" value="statements" />
            <node concept="3uibUv" id="2mJiJ3i8ldp" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3Tqbb2" id="2mJiJ3i8rgk" role="11_B2D" />
            </node>
            <node concept="1rXfSq" id="2mJiJ3i8ldr" role="33vP2m">
              <ref role="37wK5l" node="2mJiJ3i8lbl" resolve="children" />
              <node concept="37vLTw" id="2mJiJ3i8lds" role="37wK5m">
                <ref role="3cqZAo" node="2mJiJ3i8ldi" resolve="node" />
              </node>
              <node concept="Xl_RD" id="2mJiJ3i8ldt" role="37wK5m">
                <property role="Xl_RC" value="statement" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2mJiJ3i8ldv" role="3cqZAp">
          <node concept="3cpWsn" id="2mJiJ3i8ldu" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="17QB3L" id="2mJiJ3i8x7Z" role="1tU5fm" />
            <node concept="3cpWs3" id="2mJiJ3i8ldx" role="33vP2m">
              <node concept="3cpWs3" id="2mJiJ3i8ldy" role="3uHU7B">
                <node concept="37vLTw" id="2mJiJ3i8ldz" role="3uHU7B">
                  <ref role="3cqZAo" node="2mJiJ3i8ldk" resolve="path" />
                </node>
                <node concept="Xl_RD" id="2mJiJ3i8ld$" role="3uHU7w">
                  <property role="Xl_RC" value=":block:" />
                </node>
              </node>
              <node concept="2OqwBi" id="2mJiJ3i8qvr" role="3uHU7w">
                <node concept="37vLTw" id="2mJiJ3i8pM6" role="2Oq$k0">
                  <ref role="3cqZAo" node="2mJiJ3i8ldn" resolve="statements" />
                </node>
                <node concept="liA8E" id="2mJiJ3i8qvs" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1Dw8fO" id="2mJiJ3i8ldA" role="3cqZAp">
          <node concept="3cpWsn" id="2mJiJ3i8ldB" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="2mJiJ3i8ldD" role="1tU5fm" />
            <node concept="3cmrfG" id="2mJiJ3i8ldE" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eOVzh" id="2mJiJ3i8ldF" role="1Dwp0S">
            <node concept="37vLTw" id="2mJiJ3i8ldG" role="3uHU7B">
              <ref role="3cqZAo" node="2mJiJ3i8ldB" resolve="i" />
            </node>
            <node concept="2OqwBi" id="2mJiJ3i8qxJ" role="3uHU7w">
              <node concept="37vLTw" id="2mJiJ3i8pMa" role="2Oq$k0">
                <ref role="3cqZAo" node="2mJiJ3i8ldn" resolve="statements" />
              </node>
              <node concept="liA8E" id="2mJiJ3i8qxK" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
              </node>
            </node>
          </node>
          <node concept="3uNrnE" id="2mJiJ3i8ldJ" role="1Dwrff">
            <node concept="37vLTw" id="2mJiJ3i8ldK" role="2$L3a6">
              <ref role="3cqZAo" node="2mJiJ3i8ldB" resolve="i" />
            </node>
          </node>
          <node concept="3clFbS" id="2mJiJ3i8ldM" role="2LFqv$">
            <node concept="3cpWs8" id="2mJiJ3i8ldO" role="3cqZAp">
              <node concept="3cpWsn" id="2mJiJ3i8ldN" role="3cpWs9">
                <property role="TrG5h" value="statement" />
                <node concept="3Tqbb2" id="2mJiJ3i8rgl" role="1tU5fm" />
                <node concept="2OqwBi" id="2mJiJ3i8q$3" role="33vP2m">
                  <node concept="37vLTw" id="2mJiJ3i8pMe" role="2Oq$k0">
                    <ref role="3cqZAo" node="2mJiJ3i8ldn" resolve="statements" />
                  </node>
                  <node concept="liA8E" id="2mJiJ3i8q$4" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                    <node concept="37vLTw" id="2mJiJ3i8q$5" role="37wK5m">
                      <ref role="3cqZAo" node="2mJiJ3i8ldB" resolve="i" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="2mJiJ3i8ldT" role="3cqZAp">
              <node concept="3cpWsn" id="2mJiJ3i8ldS" role="3cpWs9">
                <property role="TrG5h" value="next" />
                <node concept="17QB3L" id="2mJiJ3i8x80" role="1tU5fm" />
                <node concept="3cpWs3" id="2mJiJ3i8ldV" role="33vP2m">
                  <node concept="3cpWs3" id="2mJiJ3i8ldW" role="3uHU7B">
                    <node concept="37vLTw" id="2mJiJ3i8ldX" role="3uHU7B">
                      <ref role="3cqZAo" node="2mJiJ3i8ldk" resolve="path" />
                    </node>
                    <node concept="Xl_RD" id="2mJiJ3i8ldY" role="3uHU7w">
                      <property role="Xl_RC" value="." />
                    </node>
                  </node>
                  <node concept="37vLTw" id="2mJiJ3i8ldZ" role="3uHU7w">
                    <ref role="3cqZAo" node="2mJiJ3i8ldB" resolve="i" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="2mJiJ3i8le1" role="3cqZAp">
              <node concept="3cpWsn" id="2mJiJ3i8le0" role="3cpWs9">
                <property role="TrG5h" value="kind" />
                <node concept="17QB3L" id="2mJiJ3i8x81" role="1tU5fm" />
                <node concept="2OqwBi" id="2mJiJ3i8qDt" role="33vP2m">
                  <node concept="liA8E" id="2mJiJ3i8qDu" role="2OqNvi">
                    <ref role="37wK5l" to="c17a:~SAbstractConcept.getName()" resolve="getName" />
                  </node>
                  <node concept="2JrnkZ" id="2mJiJ3i8rg0" role="2Oq$k0">
                    <node concept="2OqwBi" id="2mJiJ3i8q$o" role="2JrQYb">
                      <node concept="liA8E" id="2mJiJ3i8q$p" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                      </node>
                      <node concept="2JrnkZ" id="2mJiJ3i8rfZ" role="2Oq$k0">
                        <node concept="37vLTw" id="2mJiJ3i8pMr" role="2JrQYb">
                          <ref role="3cqZAo" node="2mJiJ3i8ldN" resolve="statement" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="2mJiJ3i8le5" role="3cqZAp">
              <node concept="2OqwBi" id="2mJiJ3i8pMF" role="3clFbw">
                <node concept="Xl_RD" id="2mJiJ3i8le7" role="2Oq$k0">
                  <property role="Xl_RC" value="statement__ANTLRAlternative1" />
                </node>
                <node concept="liA8E" id="2mJiJ3i8pMG" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                  <node concept="37vLTw" id="2mJiJ3i8pMH" role="37wK5m">
                    <ref role="3cqZAo" node="2mJiJ3i8le0" resolve="kind" />
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="2mJiJ3i8len" role="9aQIa">
                <node concept="2OqwBi" id="2mJiJ3i8pMW" role="3clFbw">
                  <node concept="Xl_RD" id="2mJiJ3i8lep" role="2Oq$k0">
                    <property role="Xl_RC" value="statement__ANTLRAlternative2" />
                  </node>
                  <node concept="liA8E" id="2mJiJ3i8pMX" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                    <node concept="37vLTw" id="2mJiJ3i8pMY" role="37wK5m">
                      <ref role="3cqZAo" node="2mJiJ3i8le0" resolve="kind" />
                    </node>
                  </node>
                </node>
                <node concept="YS8fn" id="2mJiJ3i8leW" role="9aQIa">
                  <node concept="2ShNRf" id="2mJiJ3i8pMZ" role="YScLw">
                    <node concept="1pGfFk" id="2mJiJ3i8pTb" role="2ShVmc">
                      <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;(java.lang.String)" resolve="IllegalArgumentException" />
                      <node concept="3cpWs3" id="2mJiJ3i8pTc" role="37wK5m">
                        <node concept="Xl_RD" id="2mJiJ3i8pTd" role="3uHU7B">
                          <property role="Xl_RC" value="Unmapped statement: " />
                        </node>
                        <node concept="37vLTw" id="2mJiJ3i8pTe" role="3uHU7w">
                          <ref role="3cqZAo" node="2mJiJ3i8le0" resolve="kind" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="2mJiJ3i8les" role="3clFbx">
                  <node concept="3cpWs8" id="2mJiJ3i8leu" role="3cqZAp">
                    <node concept="3cpWsn" id="2mJiJ3i8let" role="3cpWs9">
                      <property role="TrG5h" value="optional" />
                      <node concept="3Tqbb2" id="2mJiJ3i8rgm" role="1tU5fm" />
                      <node concept="1rXfSq" id="2mJiJ3i8lew" role="33vP2m">
                        <ref role="37wK5l" node="2mJiJ3i8lbW" resolve="child" />
                        <node concept="37vLTw" id="2mJiJ3i8lex" role="37wK5m">
                          <ref role="3cqZAo" node="2mJiJ3i8ldN" resolve="statement" />
                        </node>
                        <node concept="Xl_RD" id="2mJiJ3i8ley" role="37wK5m">
                          <property role="Xl_RC" value="_AntlrGroup1" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="2mJiJ3i8lez" role="3cqZAp">
                    <node concept="37vLTI" id="2mJiJ3i8le$" role="3clFbG">
                      <node concept="37vLTw" id="2mJiJ3i8le_" role="37vLTJ">
                        <ref role="3cqZAo" node="2mJiJ3i8ldu" resolve="result" />
                      </node>
                      <node concept="3cpWs3" id="2mJiJ3i8leA" role="37vLTx">
                        <node concept="3cpWs3" id="2mJiJ3i8leB" role="3uHU7B">
                          <node concept="3cpWs3" id="2mJiJ3i8leC" role="3uHU7B">
                            <node concept="3cpWs3" id="2mJiJ3i8leD" role="3uHU7B">
                              <node concept="37vLTw" id="2mJiJ3i8leE" role="3uHU7B">
                                <ref role="3cqZAo" node="2mJiJ3i8ldu" resolve="result" />
                              </node>
                              <node concept="Xl_RD" id="2mJiJ3i8leF" role="3uHU7w">
                                <property role="Xl_RC" value="|" />
                              </node>
                            </node>
                            <node concept="37vLTw" id="2mJiJ3i8leG" role="3uHU7w">
                              <ref role="3cqZAo" node="2mJiJ3i8ldS" resolve="next" />
                            </node>
                          </node>
                          <node concept="Xl_RD" id="2mJiJ3i8leH" role="3uHU7w">
                            <property role="Xl_RC" value=":return:" />
                          </node>
                        </node>
                        <node concept="1eOMI4" id="2mJiJ3i8leR" role="3uHU7w">
                          <node concept="3K4zz7" id="2mJiJ3i8leQ" role="1eOMHV">
                            <node concept="3clFbC" id="2mJiJ3i8leI" role="3K4Cdx">
                              <node concept="37vLTw" id="2mJiJ3i8leJ" role="3uHU7B">
                                <ref role="3cqZAo" node="2mJiJ3i8let" resolve="optional" />
                              </node>
                              <node concept="10Nm6u" id="2mJiJ3i8leK" role="3uHU7w" />
                            </node>
                            <node concept="Xl_RD" id="2mJiJ3i8leL" role="3K4E3e">
                              <property role="Xl_RC" value="absent" />
                            </node>
                            <node concept="1rXfSq" id="2mJiJ3i8leM" role="3K4GZi">
                              <ref role="37wK5l" node="2mJiJ3i8lcE" resolve="expression" />
                              <node concept="1rXfSq" id="2mJiJ3i8leN" role="37wK5m">
                                <ref role="37wK5l" node="2mJiJ3i8lbW" resolve="child" />
                                <node concept="37vLTw" id="2mJiJ3i8leO" role="37wK5m">
                                  <ref role="3cqZAo" node="2mJiJ3i8let" resolve="optional" />
                                </node>
                                <node concept="Xl_RD" id="2mJiJ3i8leP" role="37wK5m">
                                  <property role="Xl_RC" value="expression" />
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
              <node concept="3clFbS" id="2mJiJ3i8lea" role="3clFbx">
                <node concept="3clFbF" id="2mJiJ3i8leb" role="3cqZAp">
                  <node concept="37vLTI" id="2mJiJ3i8lec" role="3clFbG">
                    <node concept="37vLTw" id="2mJiJ3i8led" role="37vLTJ">
                      <ref role="3cqZAo" node="2mJiJ3i8ldu" resolve="result" />
                    </node>
                    <node concept="3cpWs3" id="2mJiJ3i8lee" role="37vLTx">
                      <node concept="3cpWs3" id="2mJiJ3i8lef" role="3uHU7B">
                        <node concept="37vLTw" id="2mJiJ3i8leg" role="3uHU7B">
                          <ref role="3cqZAo" node="2mJiJ3i8ldu" resolve="result" />
                        </node>
                        <node concept="Xl_RD" id="2mJiJ3i8leh" role="3uHU7w">
                          <property role="Xl_RC" value="|" />
                        </node>
                      </node>
                      <node concept="1rXfSq" id="2mJiJ3i8lei" role="3uHU7w">
                        <ref role="37wK5l" node="2mJiJ3i8ldh" resolve="block" />
                        <node concept="1rXfSq" id="2mJiJ3i8lej" role="37wK5m">
                          <ref role="37wK5l" node="2mJiJ3i8lbW" resolve="child" />
                          <node concept="37vLTw" id="2mJiJ3i8lek" role="37wK5m">
                            <ref role="3cqZAo" node="2mJiJ3i8ldN" resolve="statement" />
                          </node>
                          <node concept="Xl_RD" id="2mJiJ3i8lel" role="37wK5m">
                            <property role="Xl_RC" value="block" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="2mJiJ3i8lem" role="37wK5m">
                          <ref role="3cqZAo" node="2mJiJ3i8ldS" resolve="next" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2mJiJ3i8leX" role="3cqZAp">
          <node concept="37vLTw" id="2mJiJ3i8leY" role="3cqZAk">
            <ref role="3cqZAo" node="2mJiJ3i8ldu" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="2mJiJ3i8leZ" role="1B3o_S" />
      <node concept="17QB3L" id="2mJiJ3i8x82" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="2mJiJ3i8lf1" role="jymVt">
      <property role="TrG5h" value="facts" />
      <node concept="37vLTG" id="2mJiJ3i8lf2" role="3clF46">
        <property role="TrG5h" value="program" />
        <node concept="3Tqbb2" id="2mJiJ3i8rgn" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="2mJiJ3i8lf4" role="3clF47">
        <node concept="3cpWs6" id="2mJiJ3i8lf5" role="3cqZAp">
          <node concept="1rXfSq" id="2mJiJ3i8lf6" role="3cqZAk">
            <ref role="37wK5l" node="2mJiJ3i8ldh" resolve="block" />
            <node concept="1rXfSq" id="2mJiJ3i8lf7" role="37wK5m">
              <ref role="37wK5l" node="2mJiJ3i8lbW" resolve="child" />
              <node concept="37vLTw" id="2mJiJ3i8lf8" role="37wK5m">
                <ref role="3cqZAo" node="2mJiJ3i8lf2" resolve="program" />
              </node>
              <node concept="Xl_RD" id="2mJiJ3i8lf9" role="37wK5m">
                <property role="Xl_RC" value="block" />
              </node>
            </node>
            <node concept="Xl_RD" id="2mJiJ3i8lfa" role="37wK5m">
              <property role="Xl_RC" value="$" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2mJiJ3i8lfb" role="1B3o_S" />
      <node concept="17QB3L" id="2mJiJ3i8x83" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="2mJiJ3i8lfd" role="jymVt">
      <property role="TrG5h" value="roundtrip" />
      <node concept="37vLTG" id="2mJiJ3i8lfe" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="2mJiJ3i8lff" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="37vLTG" id="2mJiJ3i8lfg" role="3clF46">
        <property role="TrG5h" value="fixture" />
        <node concept="3Tqbb2" id="2mJiJ3i8rgo" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="2mJiJ3i8lfi" role="Sfmx6">
        <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
      </node>
      <node concept="3clFbS" id="2mJiJ3i8lfj" role="3clF47">
        <node concept="3cpWs8" id="2mJiJ3i8lfl" role="3cqZAp">
          <node concept="3cpWsn" id="2mJiJ3i8lfk" role="3cpWs9">
            <property role="TrG5h" value="instances" />
            <node concept="H_c77" id="2mJiJ3i8rgp" role="1tU5fm" />
            <node concept="2OqwBi" id="2mJiJ3i8q$$" role="33vP2m">
              <node concept="2YIFZM" id="2mJiJ3i8qcD" role="2Oq$k0">
                <ref role="1Pybhc" to="tqvn:~TemporaryModels" resolve="TemporaryModels" />
                <ref role="37wK5l" to="tqvn:~TemporaryModels.getInstance()" resolve="getInstance" />
              </node>
              <node concept="liA8E" id="2mJiJ3i8q$_" role="2OqNvi">
                <ref role="37wK5l" to="tqvn:~TemporaryModels.create(boolean,boolean,java.lang.String,jetbrains.mps.smodel.tempmodel.TempModuleOptions)" resolve="create" />
                <node concept="3clFbT" id="2mJiJ3i8q$A" role="37wK5m" />
                <node concept="3clFbT" id="2mJiJ3i8q$B" role="37wK5m" />
                <node concept="Xl_RD" id="2mJiJ3i8q$C" role="37wK5m">
                  <property role="Xl_RC" value="comparison.instances" />
                </node>
                <node concept="2YIFZM" id="2mJiJ3i8q$D" role="37wK5m">
                  <ref role="1Pybhc" to="tqvn:~TempModuleOptions" resolve="TempModuleOptions" />
                  <ref role="37wK5l" to="tqvn:~TempModuleOptions.forNewModule(org.jetbrains.mps.openapi.module.SRepository,org.jetbrains.mps.openapi.module.SModuleFacet...)" resolve="forNewModule" />
                  <node concept="2OqwBi" id="2mJiJ3i8rfk" role="37wK5m">
                    <node concept="liA8E" id="2mJiJ3i8rfl" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SModel.getRepository()" resolve="getRepository" />
                    </node>
                    <node concept="2JrnkZ" id="2mJiJ3i8rg2" role="2Oq$k0">
                      <node concept="2OqwBi" id="2mJiJ3i8qGF" role="2JrQYb">
                        <node concept="liA8E" id="2mJiJ3i8qGG" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SNode.getModel()" resolve="getModel" />
                        </node>
                        <node concept="2JrnkZ" id="2mJiJ3i8rg1" role="2Oq$k0">
                          <node concept="37vLTw" id="2mJiJ3i8qDD" role="2JrQYb">
                            <ref role="3cqZAo" node="2mJiJ3i8lfg" resolve="fixture" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2ShNRf" id="2mJiJ3i8q$G" role="37wK5m">
                    <node concept="3$_iS1" id="2mJiJ3i8q$H" role="2ShVmc">
                      <node concept="3$GHV9" id="2mJiJ3i8q$I" role="3$GQph">
                        <node concept="3cmrfG" id="2mJiJ3i8q$J" role="3$I4v7">
                          <property role="3cmrfH" value="0" />
                        </node>
                      </node>
                      <node concept="3uibUv" id="2mJiJ3i8q$K" role="3$_nBY">
                        <ref role="3uigEE" to="lui2:~SModuleFacet" resolve="SModuleFacet" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2mJiJ3i8lf$" role="3cqZAp">
          <node concept="2OqwBi" id="2mJiJ3i8q$X" role="3clFbG">
            <node concept="2ShNRf" id="2mJiJ3i8qcW" role="2Oq$k0">
              <node concept="1pGfFk" id="2mJiJ3i8qd7" role="2ShVmc">
                <ref role="37wK5l" to="w1kc:~ModelImports.&lt;init&gt;(org.jetbrains.mps.openapi.model.SModel)" resolve="ModelImports" />
                <node concept="37vLTw" id="2mJiJ3i8qd8" role="37wK5m">
                  <ref role="3cqZAo" node="2mJiJ3i8lfk" resolve="instances" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="2mJiJ3i8q$Y" role="2OqNvi">
              <ref role="37wK5l" to="w1kc:~ModelImports.addUsedLanguage(org.jetbrains.mps.openapi.language.SLanguage)" resolve="addUsedLanguage" />
              <node concept="2OqwBi" id="2mJiJ3i8qGW" role="37wK5m">
                <node concept="liA8E" id="2mJiJ3i8qGX" role="2OqNvi">
                  <ref role="37wK5l" to="c17a:~SAbstractConcept.getLanguage()" resolve="getLanguage" />
                </node>
                <node concept="2JrnkZ" id="2mJiJ3i8rg4" role="2Oq$k0">
                  <node concept="2OqwBi" id="2mJiJ3i8qDW" role="2JrQYb">
                    <node concept="liA8E" id="2mJiJ3i8qDX" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                    </node>
                    <node concept="2JrnkZ" id="2mJiJ3i8rg3" role="2Oq$k0">
                      <node concept="37vLTw" id="2mJiJ3i8q_1" role="2JrQYb">
                        <ref role="3cqZAo" node="2mJiJ3i8lfg" resolve="fixture" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2mJiJ3i8lfF" role="3cqZAp">
          <node concept="3cpWsn" id="2mJiJ3i8lfE" role="3cpWs9">
            <property role="TrG5h" value="copy" />
            <node concept="3Tqbb2" id="2mJiJ3i8rgq" role="1tU5fm" />
            <node concept="2YIFZM" id="2mJiJ3i8qdn" role="33vP2m">
              <ref role="1Pybhc" to="w1kc:~CopyUtil" resolve="CopyUtil" />
              <ref role="37wK5l" to="w1kc:~CopyUtil.copy(org.jetbrains.mps.openapi.model.SNode)" resolve="copy" />
              <node concept="37vLTw" id="2mJiJ3i8qdo" role="37wK5m">
                <ref role="3cqZAo" node="2mJiJ3i8lfg" resolve="fixture" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2mJiJ3i8lfJ" role="3cqZAp">
          <node concept="2OqwBi" id="2mJiJ3i8q_c" role="3clFbG">
            <node concept="liA8E" id="2mJiJ3i8q_d" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SModel.addRootNode(org.jetbrains.mps.openapi.model.SNode)" resolve="addRootNode" />
              <node concept="37vLTw" id="2mJiJ3i8q_e" role="37wK5m">
                <ref role="3cqZAo" node="2mJiJ3i8lfE" resolve="copy" />
              </node>
            </node>
            <node concept="2JrnkZ" id="2mJiJ3i8rg5" role="2Oq$k0">
              <node concept="37vLTw" id="2mJiJ3i8qdr" role="2JrQYb">
                <ref role="3cqZAo" node="2mJiJ3i8lfk" resolve="instances" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2mJiJ3i8lfN" role="3cqZAp">
          <node concept="3cpWsn" id="2mJiJ3i8lfM" role="3cpWs9">
            <property role="TrG5h" value="directory" />
            <node concept="3uibUv" id="2mJiJ3i8lfO" role="1tU5fm">
              <ref role="3uigEE" to="eoo2:~Path" resolve="Path" />
            </node>
            <node concept="2YIFZM" id="2mJiJ3i8qdw" role="33vP2m">
              <ref role="1Pybhc" to="eoo2:~Paths" resolve="Paths" />
              <ref role="37wK5l" to="eoo2:~Paths.get(java.lang.String,java.lang.String...)" resolve="get" />
              <node concept="Xl_RD" id="2mJiJ3i8qdx" role="37wK5m">
                <property role="Xl_RC" value="build" />
              </node>
              <node concept="Xl_RD" id="2mJiJ3i8qdy" role="37wK5m">
                <property role="Xl_RC" value="comparative-editor" />
              </node>
              <node concept="Xl_RD" id="2mJiJ3i8qdz" role="37wK5m">
                <property role="Xl_RC" value="native-persistence" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2mJiJ3i8lfT" role="3cqZAp">
          <node concept="2YIFZM" id="2mJiJ3i8qdA" role="3clFbG">
            <ref role="1Pybhc" to="eoo2:~Files" resolve="Files" />
            <ref role="37wK5l" to="eoo2:~Files.createDirectories(java.nio.file.Path,java.nio.file.attribute.FileAttribute...)" resolve="createDirectories" />
            <node concept="37vLTw" id="2mJiJ3i8qdB" role="37wK5m">
              <ref role="3cqZAo" node="2mJiJ3i8lfM" resolve="directory" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2mJiJ3i8lfX" role="3cqZAp">
          <node concept="3cpWsn" id="2mJiJ3i8lfW" role="3cpWs9">
            <property role="TrG5h" value="file" />
            <node concept="3uibUv" id="2mJiJ3i8lfY" role="1tU5fm">
              <ref role="3uigEE" to="eoo2:~Path" resolve="Path" />
            </node>
            <node concept="2YIFZM" id="2mJiJ3i8qdE" role="33vP2m">
              <ref role="1Pybhc" to="eoo2:~Files" resolve="Files" />
              <ref role="37wK5l" to="eoo2:~Files.createTempFile(java.nio.file.Path,java.lang.String,java.lang.String,java.nio.file.attribute.FileAttribute...)" resolve="createTempFile" />
              <node concept="37vLTw" id="2mJiJ3i8qdF" role="37wK5m">
                <ref role="3cqZAo" node="2mJiJ3i8lfM" resolve="directory" />
              </node>
              <node concept="Xl_RD" id="2mJiJ3i8qdG" role="37wK5m">
                <property role="Xl_RC" value="roundtrip-" />
              </node>
              <node concept="Xl_RD" id="2mJiJ3i8qdH" role="37wK5m">
                <property role="Xl_RC" value=".mps" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2mJiJ3i8lg4" role="3cqZAp">
          <node concept="3cpWsn" id="2mJiJ3i8lg3" role="3cpWs9">
            <property role="TrG5h" value="restored" />
            <node concept="H_c77" id="2mJiJ3i8rgr" role="1tU5fm" />
            <node concept="10Nm6u" id="2mJiJ3i8lg6" role="33vP2m" />
          </node>
        </node>
        <node concept="3J1_TO" id="2mJiJ3i8lhg" role="3cqZAp">
          <node concept="1wplmZ" id="2mJiJ3i8lhh" role="1zxBo6">
            <node concept="3clFbS" id="2mJiJ3i8lh1" role="1wplMD">
              <node concept="3clFbJ" id="2mJiJ3i8lh2" role="3cqZAp">
                <node concept="3y3z36" id="2mJiJ3i8lh3" role="3clFbw">
                  <node concept="37vLTw" id="2mJiJ3i8lh4" role="3uHU7B">
                    <ref role="3cqZAo" node="2mJiJ3i8lg3" resolve="restored" />
                  </node>
                  <node concept="10Nm6u" id="2mJiJ3i8lh5" role="3uHU7w" />
                </node>
                <node concept="3clFbS" id="2mJiJ3i8lh8" role="3clFbx">
                  <node concept="3clFbF" id="2mJiJ3i8lh6" role="3cqZAp">
                    <node concept="2OqwBi" id="2mJiJ3i8q_p" role="3clFbG">
                      <node concept="liA8E" id="2mJiJ3i8q_q" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SModel.unload()" resolve="unload" />
                      </node>
                      <node concept="2JrnkZ" id="2mJiJ3i8rg6" role="2Oq$k0">
                        <node concept="37vLTw" id="2mJiJ3i8qdK" role="2JrQYb">
                          <ref role="3cqZAo" node="2mJiJ3i8lg3" resolve="restored" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="2mJiJ3i8lh9" role="3cqZAp">
                <node concept="2OqwBi" id="2mJiJ3i8q__" role="3clFbG">
                  <node concept="2YIFZM" id="2mJiJ3i8qdW" role="2Oq$k0">
                    <ref role="1Pybhc" to="tqvn:~TemporaryModels" resolve="TemporaryModels" />
                    <ref role="37wK5l" to="tqvn:~TemporaryModels.getInstance()" resolve="getInstance" />
                  </node>
                  <node concept="liA8E" id="2mJiJ3i8q_A" role="2OqNvi">
                    <ref role="37wK5l" to="tqvn:~TemporaryModels.dispose(org.jetbrains.mps.openapi.model.SModel)" resolve="dispose" />
                    <node concept="37vLTw" id="2mJiJ3i8q_B" role="37wK5m">
                      <ref role="3cqZAo" node="2mJiJ3i8lfk" resolve="instances" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="2mJiJ3i8lhd" role="3cqZAp">
                <node concept="2YIFZM" id="2mJiJ3i8qdZ" role="3clFbG">
                  <ref role="1Pybhc" to="eoo2:~Files" resolve="Files" />
                  <ref role="37wK5l" to="eoo2:~Files.deleteIfExists(java.nio.file.Path)" resolve="deleteIfExists" />
                  <node concept="37vLTw" id="2mJiJ3i8qe0" role="37wK5m">
                    <ref role="3cqZAo" node="2mJiJ3i8lfW" resolve="file" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="2mJiJ3i8lg8" role="1zxBo7">
            <node concept="3cpWs8" id="2mJiJ3i8lga" role="3cqZAp">
              <node concept="3cpWsn" id="2mJiJ3i8lg9" role="3cpWs9">
                <property role="TrG5h" value="vfs" />
                <node concept="3uibUv" id="2mJiJ3i8lgb" role="1tU5fm">
                  <ref role="3uigEE" to="3ju5:~VFSManager" resolve="VFSManager" />
                </node>
                <node concept="2OqwBi" id="2mJiJ3i8qEd" role="33vP2m">
                  <node concept="2OqwBi" id="2mJiJ3i8q_T" role="2Oq$k0">
                    <node concept="37vLTw" id="2mJiJ3i8qeb" role="2Oq$k0">
                      <ref role="3cqZAo" node="2mJiJ3i8lfe" resolve="project" />
                    </node>
                    <node concept="liA8E" id="2mJiJ3i8q_U" role="2OqNvi">
                      <ref role="37wK5l" to="z1c3:~Project.getPlatform()" resolve="getPlatform" />
                    </node>
                  </node>
                  <node concept="liA8E" id="2mJiJ3i8qEe" role="2OqNvi">
                    <ref role="37wK5l" to="wyuk:~ComponentHost.findComponent(java.lang.Class)" resolve="findComponent" />
                    <node concept="3VsKOn" id="2mJiJ3i8qEf" role="37wK5m">
                      <ref role="3VsUkX" to="3ju5:~VFSManager" resolve="VFSManager" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="2mJiJ3i8lgh" role="3cqZAp">
              <node concept="3cpWsn" id="2mJiJ3i8lgg" role="3cpWs9">
                <property role="TrG5h" value="data" />
                <node concept="3uibUv" id="2mJiJ3i8lgi" role="1tU5fm">
                  <ref role="3uigEE" to="ends:~FileDataSource" resolve="FileDataSource" />
                </node>
                <node concept="2ShNRf" id="2mJiJ3i8qed" role="33vP2m">
                  <node concept="1pGfFk" id="2mJiJ3i8qjR" role="2ShVmc">
                    <ref role="37wK5l" to="ends:~FileDataSource.&lt;init&gt;(jetbrains.mps.vfs.IFile)" resolve="FileDataSource" />
                    <node concept="2OqwBi" id="2mJiJ3i8rdL" role="37wK5m">
                      <node concept="2OqwBi" id="2mJiJ3i8qEx" role="2Oq$k0">
                        <node concept="37vLTw" id="2mJiJ3i8qA5" role="2Oq$k0">
                          <ref role="3cqZAo" node="2mJiJ3i8lg9" resolve="vfs" />
                        </node>
                        <node concept="liA8E" id="2mJiJ3i8qEy" role="2OqNvi">
                          <ref role="37wK5l" to="3ju5:~VFSManager.getFileSystem(java.lang.String)" resolve="getFileSystem" />
                          <node concept="10M0yZ" id="2mJiJ3i8rfo" role="37wK5m">
                            <ref role="1PxDUh" to="3ju5:~VFSManager" resolve="VFSManager" />
                            <ref role="3cqZAo" to="3ju5:~VFSManager.JAVA_IO_FILE_FS" resolve="JAVA_IO_FILE_FS" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="2mJiJ3i8rdM" role="2OqNvi">
                        <ref role="37wK5l" to="3ju5:~IFileSystem.getFile(java.io.File)" resolve="getFile" />
                        <node concept="2OqwBi" id="2mJiJ3i8rdN" role="37wK5m">
                          <node concept="37vLTw" id="2mJiJ3i8rdO" role="2Oq$k0">
                            <ref role="3cqZAo" node="2mJiJ3i8lfW" resolve="file" />
                          </node>
                          <node concept="liA8E" id="2mJiJ3i8rdP" role="2OqNvi">
                            <ref role="37wK5l" to="eoo2:~Path.toFile()" resolve="toFile" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="2mJiJ3i8lgp" role="3cqZAp">
              <node concept="3cpWsn" id="2mJiJ3i8lgo" role="3cpWs9">
                <property role="TrG5h" value="factory" />
                <node concept="3uibUv" id="2mJiJ3i8lgq" role="1tU5fm">
                  <ref role="3uigEE" to="dush:~ModelFactory" resolve="ModelFactory" />
                </node>
                <node concept="2OqwBi" id="2mJiJ3i8qAm" role="33vP2m">
                  <node concept="2YIFZM" id="2mJiJ3i8qk6" role="2Oq$k0">
                    <ref role="1Pybhc" to="dush:~PersistenceFacade" resolve="PersistenceFacade" />
                    <ref role="37wK5l" to="dush:~PersistenceFacade.getInstance()" resolve="getInstance" />
                  </node>
                  <node concept="liA8E" id="2mJiJ3i8qAn" role="2OqNvi">
                    <ref role="37wK5l" to="dush:~PersistenceFacade.getModelFactory(org.jetbrains.mps.openapi.persistence.datasource.DataSourceType)" resolve="getModelFactory" />
                    <node concept="2OqwBi" id="2mJiJ3i8qFb" role="37wK5m">
                      <node concept="37vLTw" id="2mJiJ3i8qAp" role="2Oq$k0">
                        <ref role="3cqZAo" node="2mJiJ3i8lgg" resolve="data" />
                      </node>
                      <node concept="liA8E" id="2mJiJ3i8qFc" role="2OqNvi">
                        <ref role="37wK5l" to="ends:~FileDataSource.getType()" resolve="getType" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2mJiJ3i8lgu" role="3cqZAp">
              <node concept="2OqwBi" id="2mJiJ3i8qA$" role="3clFbG">
                <node concept="37vLTw" id="2mJiJ3i8qkd" role="2Oq$k0">
                  <ref role="3cqZAo" node="2mJiJ3i8lgo" resolve="factory" />
                </node>
                <node concept="liA8E" id="2mJiJ3i8qA_" role="2OqNvi">
                  <ref role="37wK5l" to="dush:~ModelFactory.save(org.jetbrains.mps.openapi.model.SModel,org.jetbrains.mps.openapi.persistence.DataSource,org.jetbrains.mps.openapi.persistence.ModelSaveOption...)" resolve="save" />
                  <node concept="37vLTw" id="2mJiJ3i8qAA" role="37wK5m">
                    <ref role="3cqZAo" node="2mJiJ3i8lfk" resolve="instances" />
                  </node>
                  <node concept="37vLTw" id="2mJiJ3i8qAB" role="37wK5m">
                    <ref role="3cqZAo" node="2mJiJ3i8lgg" resolve="data" />
                  </node>
                  <node concept="2ShNRf" id="2mJiJ3i8qAC" role="37wK5m">
                    <node concept="3$_iS1" id="2mJiJ3i8qAD" role="2ShVmc">
                      <node concept="3$GHV9" id="2mJiJ3i8qAE" role="3$GQph">
                        <node concept="3cmrfG" id="2mJiJ3i8qAF" role="3$I4v7">
                          <property role="3cmrfH" value="0" />
                        </node>
                      </node>
                      <node concept="3uibUv" id="2mJiJ3i8qAG" role="3$_nBY">
                        <ref role="3uigEE" to="dush:~ModelSaveOption" resolve="ModelSaveOption" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2mJiJ3i8lgB" role="3cqZAp">
              <node concept="37vLTI" id="2mJiJ3i8lgC" role="3clFbG">
                <node concept="37vLTw" id="2mJiJ3i8lgD" role="37vLTJ">
                  <ref role="3cqZAo" node="2mJiJ3i8lg3" resolve="restored" />
                </node>
                <node concept="2OqwBi" id="2mJiJ3i8qAR" role="37vLTx">
                  <node concept="37vLTw" id="2mJiJ3i8qko" role="2Oq$k0">
                    <ref role="3cqZAo" node="2mJiJ3i8lgo" resolve="factory" />
                  </node>
                  <node concept="liA8E" id="2mJiJ3i8qAS" role="2OqNvi">
                    <ref role="37wK5l" to="dush:~ModelFactory.load(org.jetbrains.mps.openapi.persistence.DataSource,org.jetbrains.mps.openapi.persistence.ModelLoadingOption...)" resolve="load" />
                    <node concept="37vLTw" id="2mJiJ3i8qAT" role="37wK5m">
                      <ref role="3cqZAo" node="2mJiJ3i8lgg" resolve="data" />
                    </node>
                    <node concept="2ShNRf" id="2mJiJ3i8qAU" role="37wK5m">
                      <node concept="3$_iS1" id="2mJiJ3i8qAV" role="2ShVmc">
                        <node concept="3$GHV9" id="2mJiJ3i8qAW" role="3$GQph">
                          <node concept="3cmrfG" id="2mJiJ3i8qAX" role="3$I4v7">
                            <property role="3cmrfH" value="0" />
                          </node>
                        </node>
                        <node concept="3uibUv" id="2mJiJ3i8qAY" role="3$_nBY">
                          <ref role="3uigEE" to="dush:~ModelLoadingOption" resolve="ModelLoadingOption" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="2mJiJ3i8lgM" role="3cqZAp">
              <node concept="3cpWsn" id="2mJiJ3i8lgL" role="3cpWs9">
                <property role="TrG5h" value="root" />
                <node concept="3Tqbb2" id="2mJiJ3i8rgs" role="1tU5fm" />
                <node concept="2OqwBi" id="2mJiJ3i8rf3" role="33vP2m">
                  <node concept="2OqwBi" id="2mJiJ3i8qG2" role="2Oq$k0">
                    <node concept="2OqwBi" id="2mJiJ3i8qBp" role="2Oq$k0">
                      <node concept="liA8E" id="2mJiJ3i8qBq" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SModel.getRootNodes()" resolve="getRootNodes" />
                      </node>
                      <node concept="2JrnkZ" id="2mJiJ3i8rg7" role="2Oq$k0">
                        <node concept="37vLTw" id="2mJiJ3i8qkM" role="2JrQYb">
                          <ref role="3cqZAo" node="2mJiJ3i8lg3" resolve="restored" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="2mJiJ3i8qG3" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Iterable.iterator()" resolve="iterator" />
                    </node>
                  </node>
                  <node concept="liA8E" id="2mJiJ3i8rf4" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~Iterator.next()" resolve="next" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="2mJiJ3i8lgR" role="3cqZAp">
              <node concept="3cpWs3" id="2mJiJ3i8lgS" role="3cqZAk">
                <node concept="3cpWs3" id="2mJiJ3i8lgT" role="3uHU7B">
                  <node concept="1rXfSq" id="2mJiJ3i8lgU" role="3uHU7B">
                    <ref role="37wK5l" node="2mJiJ3i8lf1" resolve="facts" />
                    <node concept="37vLTw" id="2mJiJ3i8lgV" role="37wK5m">
                      <ref role="3cqZAo" node="2mJiJ3i8lgL" resolve="root" />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="2mJiJ3i8lgW" role="3uHU7w">
                    <property role="Xl_RC" value="|export:" />
                  </node>
                </node>
                <node concept="2YIFZM" id="2mJiJ3i8qkQ" role="3uHU7w">
                  <ref role="1Pybhc" to="ao3:~TextGeneratorEngine" resolve="TextGeneratorEngine" />
                  <ref role="37wK5l" to="ao3:~TextGeneratorEngine.generateText(jetbrains.mps.components.ComponentHost,org.jetbrains.mps.openapi.model.SNode)" resolve="generateText" />
                  <node concept="2OqwBi" id="2mJiJ3i8qGd" role="37wK5m">
                    <node concept="37vLTw" id="2mJiJ3i8qBt" role="2Oq$k0">
                      <ref role="3cqZAo" node="2mJiJ3i8lfe" resolve="project" />
                    </node>
                    <node concept="liA8E" id="2mJiJ3i8qGe" role="2OqNvi">
                      <ref role="37wK5l" to="z1c3:~Project.getPlatform()" resolve="getPlatform" />
                    </node>
                  </node>
                  <node concept="2YIFZM" id="2mJiJ3i8x85" role="37wK5m">
                    <ref role="1Pybhc" node="2mJiJ3i8lbj" resolve="CSharpComparisonFacts" />
                    <ref role="37wK5l" node="2mJiJ3i8lbW" resolve="child" />
                    <node concept="37vLTw" id="2mJiJ3i8qkS" role="37wK5m">
                      <ref role="3cqZAo" node="2mJiJ3i8lgL" resolve="root" />
                    </node>
                    <node concept="Xl_RD" id="2mJiJ3i8x86" role="37wK5m">
                      <property role="Xl_RC" value="block" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2mJiJ3i8lhi" role="1B3o_S" />
      <node concept="17QB3L" id="2mJiJ3i8x84" role="3clF45" />
    </node>
  </node>
  <node concept="1lH9Xt" id="2mJiJ3i8rgt">
    <property role="TrG5h" value="CSharpPersistence" />
    <node concept="1qefOq" id="2mJiJ3i8rgD" role="1SKRRt">
      <node concept="3qtlO7" id="2mJiJ3i8rgu" role="1qenE9">
        <node concept="1fo3Rj" id="2mJiJ3i8rgv" role="2K1O_F">
          <node concept="wEySO" id="2mJiJ3i8rgw" role="3ZMGe$">
            <node concept="1fo3Rj" id="2mJiJ3i8rgx" role="5YAGu">
              <node concept="3tyIRu" id="2mJiJ3i8rgy" role="3ZMGe$">
                <node concept="HCvak" id="2mJiJ3i8rgz" role="1$n8Wc">
                  <node concept="nBB_e" id="2mJiJ3i8rg$" role="vKbCa">
                    <property role="15Yow$" value="1" />
                    <node concept="1cUcYH" id="2mJiJ3i8rg_" role="o53IC">
                      <property role="21Crpx" value="2" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3tyIRu" id="2mJiJ3i8rgB" role="3ZMGe$" />
        </node>
        <node concept="3xLA65" id="2mJiJ3i8rgC" role="lGtFl">
          <property role="TrG5h" value="PersistentProgram" />
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="2mJiJ3i8rgE" role="1SL9yI">
      <property role="TrG5h" value="exportAndReload" />
      <node concept="3cqZAl" id="2mJiJ3i8rgF" role="3clF45" />
      <node concept="3clFbS" id="2mJiJ3i8rgG" role="3clF47">
        <node concept="3vlDli" id="2mJiJ3i8rgL" role="3cqZAp">
          <node concept="2YIFZM" id="2mJiJ3i8rgI" role="3tpDZA">
            <ref role="1Pybhc" node="2mJiJ3i8lbj" resolve="CSharpComparisonFacts" />
            <ref role="37wK5l" node="2mJiJ3i8lfd" resolve="roundtrip" />
            <node concept="1jxXqW" id="2mJiJ3i8rgJ" role="37wK5m" />
            <node concept="3xONca" id="2mJiJ3i8rgK" role="37wK5m">
              <ref role="3xOPvv" node="2mJiJ3i8rgC" resolve="PersistentProgram" />
            </node>
          </node>
          <node concept="Xl_RD" id="2mJiJ3i8rgM" role="3tpDZB">
            <property role="Xl_RC" value="$:block:2|$.0:block:1|$.0.0:return:add(number(1),number(2))|$.1:return:absent|export:{{return 1+2;}return;}" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="2mJiJ3i8rgH" role="Sfmx6">
        <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
      </node>
    </node>
  </node>
</model>

