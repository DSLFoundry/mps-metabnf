<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:bbfd4f67-3d60-40cb-a629-ea2cfde43ecf(metabnf.editor.tests.interactions@tests)">
  <persistence version="9" />
  <languages>
    <use id="8585453e-6bfb-4d80-98de-b16074f1d86c" name="jetbrains.mps.lang.test" version="6" />
    <use id="48bed45b-b394-4796-8621-cea28d56a6da" name="Demo" version="0" />
    <use id="711aebfa-a9db-4765-b49c-bbdc45921ab7" name="DemoUsability" version="0" />
    <use id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin" version="6" />
    <use id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest" version="1" />
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
      <concept id="1216989428737" name="jetbrains.mps.lang.test.structure.TestNode" flags="ng" index="1qefOq">
        <child id="1216989461394" name="nodeToCheck" index="1qenE9" />
      </concept>
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
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
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
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
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
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
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
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
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
</model>

