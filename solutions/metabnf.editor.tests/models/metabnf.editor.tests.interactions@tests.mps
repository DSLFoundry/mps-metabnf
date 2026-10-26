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
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1221565133444" name="isFinal" index="1EXbeo" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
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
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ngI" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
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
</model>

