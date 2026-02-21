<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:859efffd-deb9-4ee3-9b51-9dd26ec80275(metabnf.behavior)">
  <persistence version="9" />
  <languages>
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="2" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <use id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core" version="2" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="6o2a" ref="r:0fbcf19f-c60b-479b-81cb-094b5b2b9f1d(metabnf.structure)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior">
      <concept id="1225194240794" name="jetbrains.mps.lang.behavior.structure.ConceptBehavior" flags="ng" index="13h7C7">
        <reference id="1225194240799" name="concept" index="13h7C2" />
        <child id="1225194240805" name="method" index="13h7CS" />
        <child id="1225194240801" name="constructor" index="13h7CW" />
      </concept>
      <concept id="1225194413805" name="jetbrains.mps.lang.behavior.structure.ConceptConstructorDeclaration" flags="in" index="13hLZK" />
      <concept id="1225194472830" name="jetbrains.mps.lang.behavior.structure.ConceptMethodDeclaration" flags="ng" index="13i0hz" />
      <concept id="1225194691553" name="jetbrains.mps.lang.behavior.structure.ThisNodeExpression" flags="nn" index="13iPFW" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
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
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA">
        <property id="6468716278899126575" name="isVolatile" index="2dlcS1" />
        <property id="6468716278899125786" name="isTransient" index="2dld4O" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
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
        <property id="4276006055363816570" name="isSynchronized" index="od$2w" />
        <property id="1181808852946" name="isFinal" index="DiZV1" />
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
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
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ngI" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1144226303539" name="jetbrains.mps.baseLanguage.structure.ForeachStatement" flags="nn" index="1DcWWT">
        <child id="1144226360166" name="iterable" index="1DdaDG" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="2524418899405758586" name="jetbrains.mps.baseLanguage.closures.structure.InferredClosureParameterDeclaration" flags="ig" index="gl6BB" />
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="4705942098322609812" name="jetbrains.mps.lang.smodel.structure.EnumMember_IsOperation" flags="ng" index="21noJN">
        <child id="4705942098322609813" name="member" index="21noJM" />
      </concept>
      <concept id="4705942098322467729" name="jetbrains.mps.lang.smodel.structure.EnumMemberReference" flags="ng" index="21nZrQ">
        <reference id="4705942098322467736" name="decl" index="21nZrZ" />
      </concept>
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1140725362528" name="jetbrains.mps.lang.smodel.structure.Link_SetTargetOperation" flags="nn" index="2oxUTD">
        <child id="1140725362529" name="linkTarget" index="2oxUTC" />
      </concept>
      <concept id="1138661924179" name="jetbrains.mps.lang.smodel.structure.Property_SetOperation" flags="nn" index="tyxLq">
        <child id="1138662048170" name="value" index="tz02z" />
      </concept>
      <concept id="4693937538533521280" name="jetbrains.mps.lang.smodel.structure.OfConceptOperation" flags="ng" index="v3k3i">
        <child id="4693937538533538124" name="requestedConcept" index="v3oSu" />
      </concept>
      <concept id="1173122760281" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorsOperation" flags="nn" index="z$bX8" />
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="1144100932627" name="jetbrains.mps.lang.smodel.structure.OperationParm_Inclusion" flags="ng" index="1xIGOp" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
      <concept id="1144146199828" name="jetbrains.mps.lang.smodel.structure.Node_CopyOperation" flags="nn" index="1$rogu" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
      <concept id="709746936026466394" name="jetbrains.mps.lang.core.structure.ChildAttribute" flags="ng" index="3VBwX9">
        <property id="709746936026609031" name="linkId" index="3V$3ak" />
        <property id="709746936026609029" name="role_DebugInfo" index="3V$3am" />
      </concept>
      <concept id="4452961908202556907" name="jetbrains.mps.lang.core.structure.BaseCommentAttribute" flags="ng" index="1X3_iC">
        <child id="3078666699043039389" name="commentedNode" index="8Wnug" />
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
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1151702311717" name="jetbrains.mps.baseLanguage.collections.structure.ToListOperation" flags="nn" index="ANE8D" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1175845471038" name="jetbrains.mps.baseLanguage.collections.structure.ReverseOperation" flags="nn" index="35Qw8J" />
      <concept id="1240687580870" name="jetbrains.mps.baseLanguage.collections.structure.JoinOperation" flags="nn" index="3uJxvA">
        <child id="1240687658305" name="delimiter" index="3uJOhx" />
      </concept>
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
    </language>
  </registry>
  <node concept="312cEu" id="svkQGaq$ch">
    <property role="TrG5h" value="Helper" />
    <node concept="Wx3nA" id="6xuOfB$1eQX" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="TrG5h" value="STRUCTURE" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm1VV" id="6xuOfB$1eH$" role="1B3o_S" />
      <node concept="10Oyi0" id="6xuOfB$1eQR" role="1tU5fm" />
      <node concept="3cmrfG" id="6xuOfB$1f0n" role="33vP2m">
        <property role="3cmrfH" value="0" />
      </node>
    </node>
    <node concept="Wx3nA" id="6xuOfB$1f9z" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="TrG5h" value="EDITORS" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm1VV" id="6xuOfB$1f9$" role="1B3o_S" />
      <node concept="10Oyi0" id="6xuOfB$1f9_" role="1tU5fm" />
      <node concept="3cmrfG" id="6xuOfB$1f9A" role="33vP2m">
        <property role="3cmrfH" value="1" />
      </node>
    </node>
    <node concept="Wx3nA" id="6xuOfB$1fse" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="TrG5h" value="TEXTGEN" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm1VV" id="6xuOfB$1fsf" role="1B3o_S" />
      <node concept="10Oyi0" id="6xuOfB$1fsg" role="1tU5fm" />
      <node concept="3cmrfG" id="6xuOfB$1fsh" role="33vP2m">
        <property role="3cmrfH" value="2" />
      </node>
    </node>
    <node concept="2tJIrI" id="6xuOfB$1f0F" role="jymVt" />
    <node concept="2YIFZL" id="6xuOfB$1RJ8" role="jymVt">
      <property role="TrG5h" value="getModelType" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="6xuOfB$1RJb" role="3clF47">
        <node concept="3cpWs6" id="6xuOfB$1RRc" role="3cqZAp">
          <node concept="2OqwBi" id="6xuOfB$1Sa1" role="3cqZAk">
            <node concept="2OqwBi" id="6xuOfB$1RSJ" role="2Oq$k0">
              <node concept="37vLTw" id="6xuOfB$1RRE" role="2Oq$k0">
                <ref role="3cqZAo" node="6xuOfB$1RQN" resolve="n" />
              </node>
              <node concept="2Xjw5R" id="6xuOfB$1S4n" role="2OqNvi">
                <node concept="1xMEDy" id="6xuOfB$1S4p" role="1xVPHs">
                  <node concept="chp4Y" id="6xuOfB$1S56" role="ri$Ld">
                    <ref role="cht4Q" to="6o2a:svkQGakJa8" resolve="GenerationModel" />
                  </node>
                </node>
                <node concept="1xIGOp" id="6xuOfB$1S7N" role="1xVPHs" />
              </node>
            </node>
            <node concept="3TrcHB" id="6xuOfB$1Sqt" role="2OqNvi">
              <ref role="3TsBF5" to="6o2a:6xuOfBzZZec" resolve="generator" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6xuOfB$1RDc" role="1B3o_S" />
      <node concept="10Oyi0" id="6xuOfB$1RJ6" role="3clF45" />
      <node concept="37vLTG" id="6xuOfB$1RQN" role="3clF46">
        <property role="TrG5h" value="n" />
        <node concept="3Tqbb2" id="6xuOfB$1RQM" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="6xuOfB$1Rxy" role="jymVt" />
    <node concept="2YIFZL" id="svkQGap0qQ" role="jymVt">
      <property role="TrG5h" value="isConceptModel" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="svkQGap0qT" role="3clF47">
        <node concept="3cpWs6" id="6xuOfB$1T2C" role="3cqZAp">
          <node concept="3clFbC" id="6xuOfB$1SJJ" role="3cqZAk">
            <node concept="37vLTw" id="6xuOfB$1T3i" role="3uHU7w">
              <ref role="3cqZAo" node="6xuOfB$1eQX" resolve="STRUCTURE" />
            </node>
            <node concept="1rXfSq" id="6xuOfB$1Stf" role="3uHU7B">
              <ref role="37wK5l" node="6xuOfB$1RJ8" resolve="getModelType" />
              <node concept="37vLTw" id="6xuOfB$1SvI" role="37wK5m">
                <ref role="3cqZAo" node="svkQGap0r6" resolve="n" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="svkQGap0qE" role="1B3o_S" />
      <node concept="10P_77" id="svkQGap0qK" role="3clF45" />
      <node concept="37vLTG" id="svkQGap0r6" role="3clF46">
        <property role="TrG5h" value="n" />
        <node concept="3Tqbb2" id="svkQGap0r5" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="6xuOfB$1sAW" role="jymVt" />
    <node concept="2YIFZL" id="svkQGap1EJ" role="jymVt">
      <property role="TrG5h" value="isEditorModel" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="svkQGap1EM" role="3clF47">
        <node concept="3cpWs6" id="6xuOfB$1tRX" role="3cqZAp">
          <node concept="3clFbC" id="6xuOfB$1tRY" role="3cqZAk">
            <node concept="37vLTw" id="6xuOfB$1xyH" role="3uHU7w">
              <ref role="3cqZAo" node="6xuOfB$1f9z" resolve="EDITORS" />
            </node>
            <node concept="1rXfSq" id="6xuOfB$1SPp" role="3uHU7B">
              <ref role="37wK5l" node="6xuOfB$1RJ8" resolve="getModelType" />
              <node concept="37vLTw" id="6xuOfB$1SPq" role="37wK5m">
                <ref role="3cqZAo" node="svkQGap1F5" resolve="n" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="svkQGap1DV" role="1B3o_S" />
      <node concept="10P_77" id="svkQGap1E6" role="3clF45" />
      <node concept="37vLTG" id="svkQGap1F5" role="3clF46">
        <property role="TrG5h" value="n" />
        <node concept="3Tqbb2" id="svkQGap1F4" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="6xuOfB$1yxD" role="jymVt" />
    <node concept="2YIFZL" id="6xuOfB$1yfo" role="jymVt">
      <property role="TrG5h" value="isTextgenModel" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="6xuOfB$1yfp" role="3clF47">
        <node concept="3cpWs6" id="6xuOfB$1yfq" role="3cqZAp">
          <node concept="3clFbC" id="6xuOfB$1yfr" role="3cqZAk">
            <node concept="37vLTw" id="6xuOfB$1yGj" role="3uHU7w">
              <ref role="3cqZAo" node="6xuOfB$1fse" resolve="TEXTGEN" />
            </node>
            <node concept="1rXfSq" id="6xuOfB$1STx" role="3uHU7B">
              <ref role="37wK5l" node="6xuOfB$1RJ8" resolve="getModelType" />
              <node concept="37vLTw" id="6xuOfB$1STy" role="37wK5m">
                <ref role="3cqZAo" node="6xuOfB$1yfA" resolve="n" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6xuOfB$1yf$" role="1B3o_S" />
      <node concept="10P_77" id="6xuOfB$1yf_" role="3clF45" />
      <node concept="37vLTG" id="6xuOfB$1yfA" role="3clF46">
        <property role="TrG5h" value="n" />
        <node concept="3Tqbb2" id="6xuOfB$1yfB" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="6xuOfB$1ebg" role="jymVt" />
    <node concept="2YIFZL" id="6xuOfB$1e7p" role="jymVt">
      <property role="TrG5h" value="newOutput" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="6xuOfB$1e7q" role="3clF47">
        <node concept="3cpWs8" id="6xuOfB$1fCE" role="3cqZAp">
          <node concept="3cpWsn" id="6xuOfB$1fCH" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="3Tqbb2" id="6xuOfB$1fCD" role="1tU5fm">
              <ref role="ehGHo" to="6o2a:svkQGakJa8" resolve="GenerationModel" />
            </node>
            <node concept="2ShNRf" id="6xuOfB$1fDT" role="33vP2m">
              <node concept="3zrR0B" id="6xuOfB$1fDP" role="2ShVmc">
                <node concept="3Tqbb2" id="6xuOfB$1fDQ" role="3zrR0E">
                  <ref role="ehGHo" to="6o2a:svkQGakJa8" resolve="GenerationModel" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6xuOfB$1fES" role="3cqZAp">
          <node concept="2OqwBi" id="6xuOfB$1q23" role="3clFbG">
            <node concept="2OqwBi" id="6xuOfB$1fGq" role="2Oq$k0">
              <node concept="37vLTw" id="6xuOfB$1fEQ" role="2Oq$k0">
                <ref role="3cqZAo" node="6xuOfB$1fCH" resolve="result" />
              </node>
              <node concept="3TrEf2" id="6xuOfB$1pRK" role="2OqNvi">
                <ref role="3Tt5mk" to="6o2a:svkQGakJb4" resolve="grammar" />
              </node>
            </node>
            <node concept="2oxUTD" id="6xuOfB$1qks" role="2OqNvi">
              <node concept="2OqwBi" id="6xuOfB$1qoz" role="2oxUTC">
                <node concept="37vLTw" id="6xuOfB$1qml" role="2Oq$k0">
                  <ref role="3cqZAo" node="6xuOfB$1e7x" resolve="n" />
                </node>
                <node concept="1$rogu" id="6xuOfB$1qyB" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6xuOfB$1qQ6" role="3cqZAp">
          <node concept="2OqwBi" id="6xuOfB$1rCL" role="3clFbG">
            <node concept="2OqwBi" id="6xuOfB$1qSA" role="2Oq$k0">
              <node concept="37vLTw" id="6xuOfB$1qQ4" role="2Oq$k0">
                <ref role="3cqZAo" node="6xuOfB$1fCH" resolve="result" />
              </node>
              <node concept="3TrcHB" id="6xuOfB$1r8k" role="2OqNvi">
                <ref role="3TsBF5" to="6o2a:6xuOfBzZZec" resolve="generator" />
              </node>
            </node>
            <node concept="tyxLq" id="6xuOfB$1sig" role="2OqNvi">
              <node concept="37vLTw" id="6xuOfB$1skc" role="tz02z">
                <ref role="3cqZAo" node="6xuOfB$1qK2" resolve="output" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6xuOfB$1sqx" role="3cqZAp">
          <node concept="37vLTw" id="6xuOfB$1srb" role="3cqZAk">
            <ref role="3cqZAo" node="6xuOfB$1fCH" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6xuOfB$1e7v" role="1B3o_S" />
      <node concept="3Tqbb2" id="6xuOfB$1emG" role="3clF45">
        <ref role="ehGHo" to="6o2a:svkQGakJa8" resolve="GenerationModel" />
      </node>
      <node concept="37vLTG" id="6xuOfB$1e7x" role="3clF46">
        <property role="TrG5h" value="n" />
        <node concept="3Tqbb2" id="6xuOfB$1e7y" role="1tU5fm">
          <ref role="ehGHo" to="6o2a:2b2ZYR3vfui" resolve="grammar" />
        </node>
      </node>
      <node concept="37vLTG" id="6xuOfB$1qK2" role="3clF46">
        <property role="TrG5h" value="output" />
        <node concept="10Oyi0" id="6xuOfB$1s$e" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="svkQGatOzO" role="jymVt" />
    <node concept="2YIFZL" id="svkQGatOAD" role="jymVt">
      <property role="TrG5h" value="setVirtualPackage" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="svkQGatOAG" role="3clF47">
        <node concept="3cpWs8" id="4VQvhHjUDx3" role="3cqZAp">
          <node concept="3cpWsn" id="4VQvhHjUDx6" role="3cpWs9">
            <property role="TrG5h" value="vp" />
            <node concept="_YKpA" id="4VQvhHjUDwZ" role="1tU5fm">
              <node concept="17QB3L" id="4VQvhHjUD$q" role="_ZDj9" />
            </node>
            <node concept="2OqwBi" id="4VQvhHjVaOW" role="33vP2m">
              <node concept="2OqwBi" id="4VQvhHjUMZW" role="2Oq$k0">
                <node concept="2OqwBi" id="4VQvhHjUFiC" role="2Oq$k0">
                  <node concept="2OqwBi" id="4VQvhHjUDD_" role="2Oq$k0">
                    <node concept="37vLTw" id="svkQGatOV$" role="2Oq$k0">
                      <ref role="3cqZAo" node="svkQGatOBy" resolve="n" />
                    </node>
                    <node concept="z$bX8" id="4VQvhHjUEE7" role="2OqNvi" />
                  </node>
                  <node concept="v3k3i" id="4VQvhHjUGuY" role="2OqNvi">
                    <node concept="chp4Y" id="4VQvhHjUGxp" role="v3oSu">
                      <ref role="cht4Q" to="6o2a:4VQvhHjPVYE" resolve="RuleGroup" />
                    </node>
                  </node>
                </node>
                <node concept="3$u5V9" id="4VQvhHjURlz" role="2OqNvi">
                  <node concept="1bVj0M" id="4VQvhHjURl_" role="23t8la">
                    <node concept="3clFbS" id="4VQvhHjURlA" role="1bW5cS">
                      <node concept="3clFbF" id="4VQvhHjURy4" role="3cqZAp">
                        <node concept="2OqwBi" id="4VQvhHjURE4" role="3clFbG">
                          <node concept="37vLTw" id="4VQvhHjURy3" role="2Oq$k0">
                            <ref role="3cqZAo" node="5cbC3YGYC1P" resolve="it" />
                          </node>
                          <node concept="3TrcHB" id="4VQvhHjUSa_" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="gl6BB" id="5cbC3YGYC1P" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="5cbC3YGYC1Q" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="ANE8D" id="4VQvhHjVcsj" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="svkQGatU$E" role="3cqZAp">
          <node concept="2OqwBi" id="svkQGatUPc" role="3clFbG">
            <node concept="37vLTw" id="svkQGatU$C" role="2Oq$k0">
              <ref role="3cqZAo" node="4VQvhHjUDx6" resolve="vp" />
            </node>
            <node concept="TSZUe" id="svkQGatWqc" role="2OqNvi">
              <node concept="37vLTw" id="svkQGatWuH" role="25WWJ7">
                <ref role="3cqZAo" node="svkQGatUu7" resolve="aspect" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4VQvhHjUSuF" role="3cqZAp">
          <node concept="2OqwBi" id="4VQvhHjUSV0" role="3clFbG">
            <node concept="37vLTw" id="4VQvhHjUSuD" role="2Oq$k0">
              <ref role="3cqZAo" node="4VQvhHjUDx6" resolve="vp" />
            </node>
            <node concept="TSZUe" id="4VQvhHjUUzE" role="2OqNvi">
              <node concept="2OqwBi" id="4VQvhHjUVjM" role="25WWJ7">
                <node concept="2OqwBi" id="4VQvhHjUUDc" role="2Oq$k0">
                  <node concept="37vLTw" id="svkQGatPc2" role="2Oq$k0">
                    <ref role="3cqZAo" node="svkQGatOBy" resolve="n" />
                  </node>
                  <node concept="2Xjw5R" id="4VQvhHjUV9Q" role="2OqNvi">
                    <node concept="1xMEDy" id="4VQvhHjUV9S" role="1xVPHs">
                      <node concept="chp4Y" id="4VQvhHjUVeY" role="ri$Ld">
                        <ref role="cht4Q" to="6o2a:2b2ZYR3vfui" resolve="grammar" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3TrcHB" id="4VQvhHjUVvY" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4VQvhHjUg6$" role="3cqZAp">
          <node concept="2OqwBi" id="4VQvhHjUg6A" role="3clFbG">
            <node concept="2OqwBi" id="4VQvhHjUg6B" role="2Oq$k0">
              <node concept="37vLTw" id="svkQGatQoh" role="2Oq$k0">
                <ref role="3cqZAo" node="svkQGatPl7" resolve="outputNode" />
              </node>
              <node concept="3TrcHB" id="4VQvhHjUg6D" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:hnGE5uv" resolve="virtualPackage" />
              </node>
            </node>
            <node concept="tyxLq" id="4VQvhHjUg6E" role="2OqNvi">
              <node concept="2OqwBi" id="4VQvhHjV7MC" role="tz02z">
                <node concept="2OqwBi" id="4VQvhHjV5XH" role="2Oq$k0">
                  <node concept="37vLTw" id="4VQvhHjV5$Z" role="2Oq$k0">
                    <ref role="3cqZAo" node="4VQvhHjUDx6" resolve="vp" />
                  </node>
                  <node concept="35Qw8J" id="4VQvhHjV6KX" role="2OqNvi" />
                </node>
                <node concept="3uJxvA" id="4VQvhHjV8CO" role="2OqNvi">
                  <node concept="Xl_RD" id="4VQvhHjV9BS" role="3uJOhx">
                    <property role="Xl_RC" value="." />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="svkQGatO_b" role="1B3o_S" />
      <node concept="3cqZAl" id="svkQGatOAB" role="3clF45" />
      <node concept="37vLTG" id="svkQGatOBy" role="3clF46">
        <property role="TrG5h" value="n" />
        <node concept="3Tqbb2" id="svkQGatOBx" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="svkQGatPl7" role="3clF46">
        <property role="TrG5h" value="outputNode" />
        <node concept="3Tqbb2" id="svkQGatPoN" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="svkQGatUu7" role="3clF46">
        <property role="TrG5h" value="aspect" />
        <node concept="17QB3L" id="svkQGatUvs" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="svkQGaq$e$" role="jymVt" />
    <node concept="3Tm1VV" id="svkQGaq$ci" role="1B3o_S" />
  </node>
  <node concept="13h7C7" id="2uPbBoXei1J">
    <property role="3GE5qa" value="terms.references" />
    <ref role="13h7C2" to="6o2a:2b2ZYR3ypJF" resolve="NonterminalReference" />
    <node concept="13i0hz" id="2uPbBoXej9C" role="13h7CS">
      <property role="TrG5h" value="isChildItem" />
      <node concept="3Tm1VV" id="2uPbBoXej9D" role="1B3o_S" />
      <node concept="10P_77" id="2uPbBoXej9E" role="3clF45" />
      <node concept="3clFbS" id="2uPbBoXej9F" role="3clF47">
        <node concept="3cpWs6" id="2uPbBoXej9G" role="3cqZAp">
          <node concept="22lmx$" id="2uPbBoXaGMC" role="3cqZAk">
            <node concept="2OqwBi" id="2uPbBoXaGMD" role="3uHU7B">
              <node concept="2OqwBi" id="2uPbBoXaGME" role="2Oq$k0">
                <node concept="13iPFW" id="2uPbBoXemCW" role="2Oq$k0" />
                <node concept="3TrcHB" id="2uPbBoXemOK" role="2OqNvi">
                  <ref role="3TsBF5" to="6o2a:21bD4dVyEsP" resolve="card" />
                </node>
              </node>
              <node concept="21noJN" id="21bD4dVyEsR" role="2OqNvi">
                <node concept="21nZrQ" id="21bD4dVyEsS" role="21noJM">
                  <ref role="21nZrZ" to="6o2a:21bD4dVyEsL" resolve="ExactlyOne" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="2uPbBoXaGMJ" role="3uHU7w">
              <node concept="2OqwBi" id="2uPbBoXaGMK" role="2Oq$k0">
                <node concept="13iPFW" id="2uPbBoXemQp" role="2Oq$k0" />
                <node concept="3TrcHB" id="2uPbBoXen2d" role="2OqNvi">
                  <ref role="3TsBF5" to="6o2a:21bD4dVyEsP" resolve="card" />
                </node>
              </node>
              <node concept="21noJN" id="21bD4dVyEsT" role="2OqNvi">
                <node concept="21nZrQ" id="21bD4dVyEsU" role="21noJM">
                  <ref role="21nZrZ" to="6o2a:21bD4dVyEsO" resolve="AtMostOne" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="2uPbBoXen3Q" role="13h7CS">
      <property role="TrG5h" value="isChildSequence" />
      <node concept="3Tm1VV" id="2uPbBoXen3R" role="1B3o_S" />
      <node concept="10P_77" id="2uPbBoXen3S" role="3clF45" />
      <node concept="3clFbS" id="2uPbBoXen3T" role="3clF47">
        <node concept="3cpWs6" id="2uPbBoXen3U" role="3cqZAp">
          <node concept="22lmx$" id="2uPbBoXen3V" role="3cqZAk">
            <node concept="2OqwBi" id="2uPbBoXen44" role="3uHU7B">
              <node concept="2OqwBi" id="2uPbBoXen45" role="2Oq$k0">
                <node concept="13iPFW" id="2uPbBoXen46" role="2Oq$k0" />
                <node concept="3TrcHB" id="2uPbBoXen47" role="2OqNvi">
                  <ref role="3TsBF5" to="6o2a:21bD4dVyEsP" resolve="card" />
                </node>
              </node>
              <node concept="21noJN" id="21bD4dVyEsV" role="2OqNvi">
                <node concept="21nZrQ" id="21bD4dVyEsW" role="21noJM">
                  <ref role="21nZrZ" to="6o2a:21bD4dVyEsM" resolve="ZeroOrMore" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="2uPbBoXen4a" role="3uHU7w">
              <node concept="2OqwBi" id="2uPbBoXen4b" role="2Oq$k0">
                <node concept="13iPFW" id="2uPbBoXen4c" role="2Oq$k0" />
                <node concept="3TrcHB" id="2uPbBoXen4d" role="2OqNvi">
                  <ref role="3TsBF5" to="6o2a:21bD4dVyEsP" resolve="card" />
                </node>
              </node>
              <node concept="21noJN" id="21bD4dVyEsX" role="2OqNvi">
                <node concept="21nZrQ" id="21bD4dVyEsY" role="21noJM">
                  <ref role="21nZrZ" to="6o2a:21bD4dVyEsN" resolve="AtleastOne" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="2uPbBoXei47" role="13h7CW">
      <node concept="3clFbS" id="2uPbBoXei48" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="3tKEMTIiBdy">
    <property role="3GE5qa" value="generator" />
    <ref role="13h7C2" to="6o2a:5LjIHYW3e81" resolve="TargetInjector" />
    <node concept="13i0hz" id="3tKEMTIiBjR" role="13h7CS">
      <property role="TrG5h" value="getAspectModel" />
      <node concept="37vLTG" id="3tKEMTIk46E" role="3clF46">
        <property role="TrG5h" value="aspect" />
        <node concept="17QB3L" id="3tKEMTIk46M" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="3tKEMTIiBjS" role="1B3o_S" />
      <node concept="3uibUv" id="3tKEMTIvlvy" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
      </node>
      <node concept="3clFbS" id="3tKEMTIiBjU" role="3clF47">
        <node concept="3SKdUt" id="6sza796WqLu" role="3cqZAp">
          <node concept="1PaTwC" id="21bD4dVyEpR" role="1aUNEU">
            <node concept="3oM_SD" id="21bD4dVyEpS" role="1PaTwD">
              <property role="3oM_SC" value="new" />
            </node>
            <node concept="3oM_SD" id="21bD4dVyEpT" role="1PaTwD">
              <property role="3oM_SC" value="SModelReference" />
            </node>
            <node concept="3oM_SD" id="21bD4dVyEpU" role="1PaTwD">
              <property role="3oM_SC" value="(this.name" />
            </node>
            <node concept="3oM_SD" id="21bD4dVyEpV" role="1PaTwD">
              <property role="3oM_SC" value="+" />
            </node>
            <node concept="3oM_SD" id="21bD4dVyEpW" role="1PaTwD">
              <property role="3oM_SC" value="aspect," />
            </node>
            <node concept="3oM_SD" id="21bD4dVyEpX" role="1PaTwD">
              <property role="3oM_SC" value="&quot;&quot;)" />
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="4CvBJ4yPk$y" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3cpWs6" id="3tKEMTIg7LH" role="8Wnug">
            <node concept="1eOMI4" id="3tKEMTIuW_C" role="3cqZAk">
              <node concept="2OqwBi" id="3tKEMTIuW_t" role="1eOMHV">
                <node concept="2YIFZM" id="3tKEMTIuW_u" role="2Oq$k0">
                  <ref role="1Pybhc" to="w1kc:~SModelRepository" resolve="SModelRepository" />
                  <ref role="37wK5l" to="w1kc:~SModelRepository.getInstance()" resolve="getInstance" />
                </node>
                <node concept="liA8E" id="3tKEMTIuW_v" role="2OqNvi">
                  <ref role="37wK5l" to="w1kc:~SModelRepository.getModelDescriptor(java.lang.String)" resolve="getModelDescriptor" />
                  <node concept="3cpWs3" id="6sza796Wr3O" role="37wK5m">
                    <node concept="37vLTw" id="6sza796Wr5a" role="3uHU7w">
                      <ref role="3cqZAo" node="3tKEMTIk46E" resolve="aspect" />
                    </node>
                    <node concept="2OqwBi" id="6sza796WqTa" role="3uHU7B">
                      <node concept="13iPFW" id="6sza796WqQL" role="2Oq$k0" />
                      <node concept="3TrcHB" id="6sza796WqXH" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4CvBJ4yPl4v" role="3cqZAp">
          <node concept="3cpWsn" id="4CvBJ4yPl4y" role="3cpWs9">
            <property role="TrG5h" value="targetModelName" />
            <node concept="17QB3L" id="4CvBJ4yPl4t" role="1tU5fm" />
            <node concept="3cpWs3" id="4CvBJ4yPlSn" role="33vP2m">
              <node concept="37vLTw" id="4CvBJ4yPlSy" role="3uHU7w">
                <ref role="3cqZAo" node="3tKEMTIk46E" resolve="aspect" />
              </node>
              <node concept="2OqwBi" id="4CvBJ4yPlk6" role="3uHU7B">
                <node concept="13iPFW" id="4CvBJ4yPl7j" role="2Oq$k0" />
                <node concept="3TrcHB" id="4CvBJ4yPluD" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4CvBJ4yPm6Z" role="3cqZAp">
          <node concept="3cpWsn" id="4CvBJ4yPm70" role="3cpWs9">
            <property role="TrG5h" value="selfModel" />
            <node concept="3uibUv" id="4CvBJ4yPm71" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
            </node>
            <node concept="2OqwBi" id="4CvBJ4yPmrI" role="33vP2m">
              <node concept="13iPFW" id="4CvBJ4yPmaz" role="2Oq$k0" />
              <node concept="I4A8Y" id="4CvBJ4yPmN_" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4CvBJ4yPmQ$" role="3cqZAp">
          <node concept="3clFbS" id="4CvBJ4yPmQA" role="3clFbx">
            <node concept="3cpWs6" id="4CvBJ4yPnu6" role="3cqZAp">
              <node concept="10Nm6u" id="4CvBJ4yPn_Y" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="4CvBJ4yPnor" role="3clFbw">
            <node concept="10Nm6u" id="4CvBJ4yPnsG" role="3uHU7w" />
            <node concept="37vLTw" id="4CvBJ4yPmYO" role="3uHU7B">
              <ref role="3cqZAo" node="4CvBJ4yPm70" resolve="selfModel" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4CvBJ4yPnMn" role="3cqZAp">
          <node concept="3cpWsn" id="4CvBJ4yPnMo" role="3cpWs9">
            <property role="TrG5h" value="repo" />
            <node concept="3uibUv" id="4CvBJ4yPnMp" role="1tU5fm">
              <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
            </node>
            <node concept="2OqwBi" id="4CvBJ4yPoaF" role="33vP2m">
              <node concept="37vLTw" id="4CvBJ4yPo3e" role="2Oq$k0">
                <ref role="3cqZAo" node="4CvBJ4yPm70" resolve="selfModel" />
              </node>
              <node concept="liA8E" id="4CvBJ4yPolF" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SModel.getRepository()" resolve="getRepository" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4CvBJ4yPoqf" role="3cqZAp">
          <node concept="3clFbS" id="4CvBJ4yPoqh" role="3clFbx">
            <node concept="3cpWs6" id="4CvBJ4yPoNr" role="3cqZAp">
              <node concept="10Nm6u" id="4CvBJ4yPoN$" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="4CvBJ4yPoGo" role="3clFbw">
            <node concept="10Nm6u" id="4CvBJ4yPoLj" role="3uHU7w" />
            <node concept="37vLTw" id="4CvBJ4yPozq" role="3uHU7B">
              <ref role="3cqZAo" node="4CvBJ4yPnMo" resolve="repo" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="4CvBJ4yPoZg" role="3cqZAp">
          <node concept="1PaTwC" id="4CvBJ4yPoZh" role="1aUNEU">
            <node concept="3oM_SD" id="4CvBJ4yPp2k" role="1PaTwD">
              <property role="3oM_SC" value="Repository" />
            </node>
            <node concept="3oM_SD" id="4CvBJ4yPp2m" role="1PaTwD">
              <property role="3oM_SC" value="access" />
            </node>
            <node concept="3oM_SD" id="4CvBJ4yPp2p" role="1PaTwD">
              <property role="3oM_SC" value="must" />
            </node>
            <node concept="3oM_SD" id="4CvBJ4yPp2t" role="1PaTwD">
              <property role="3oM_SC" value="be" />
            </node>
            <node concept="3oM_SD" id="4CvBJ4yPp2y" role="1PaTwD">
              <property role="3oM_SC" value="under" />
            </node>
            <node concept="3oM_SD" id="4CvBJ4yPp2C" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="4CvBJ4yPp2J" role="1PaTwD">
              <property role="3oM_SC" value="read" />
            </node>
            <node concept="3oM_SD" id="4CvBJ4yPp2R" role="1PaTwD">
              <property role="3oM_SC" value="action" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4CvBJ4yPGPi" role="3cqZAp">
          <node concept="2OqwBi" id="4CvBJ4yPInw" role="3cqZAk">
            <node concept="2OqwBi" id="4CvBJ4yPHyh" role="2Oq$k0">
              <node concept="37vLTw" id="4CvBJ4yPHda" role="2Oq$k0">
                <ref role="3cqZAo" node="4CvBJ4yPnMo" resolve="repo" />
              </node>
              <node concept="liA8E" id="4CvBJ4yPI2w" role="2OqNvi">
                <ref role="37wK5l" to="lui2:~SRepository.getModelAccess()" resolve="getModelAccess" />
              </node>
            </node>
            <node concept="liA8E" id="4CvBJ4yPIYZ" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~ModelAccess.computeReadAction(java.util.function.Supplier)" resolve="computeReadAction" />
              <node concept="1bVj0M" id="4CvBJ4yPJkZ" role="37wK5m">
                <node concept="3clFbS" id="4CvBJ4yPJl0" role="1bW5cS">
                  <node concept="3cpWs8" id="4CvBJ4yPpfV" role="3cqZAp">
                    <node concept="3cpWsn" id="4CvBJ4yPpfW" role="3cpWs9">
                      <property role="TrG5h" value="owner" />
                      <node concept="3uibUv" id="4CvBJ4yPpfX" role="1tU5fm">
                        <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                      </node>
                      <node concept="2OqwBi" id="4CvBJ4yPpw4" role="33vP2m">
                        <node concept="37vLTw" id="4CvBJ4yPpnV" role="2Oq$k0">
                          <ref role="3cqZAo" node="4CvBJ4yPm70" resolve="selfModel" />
                        </node>
                        <node concept="liA8E" id="4CvBJ4yPpLL" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="4CvBJ4yPpYq" role="3cqZAp">
                    <node concept="3clFbS" id="4CvBJ4yPpYs" role="3clFbx">
                      <node concept="1DcWWT" id="4CvBJ4yPqmZ" role="3cqZAp">
                        <node concept="3clFbS" id="4CvBJ4yPqn1" role="2LFqv$">
                          <node concept="3clFbJ" id="4CvBJ4yPrpB" role="3cqZAp">
                            <node concept="3clFbS" id="4CvBJ4yPrpD" role="3clFbx">
                              <node concept="3cpWs6" id="4CvBJ4yPw1P" role="3cqZAp">
                                <node concept="37vLTw" id="4CvBJ4yPweU" role="3cqZAk">
                                  <ref role="3cqZAo" node="4CvBJ4yPqn2" resolve="m" />
                                </node>
                              </node>
                            </node>
                            <node concept="1Wc70l" id="4CvBJ4yPsqs" role="3clFbw">
                              <node concept="1eOMI4" id="4CvBJ4yPvJp" role="3uHU7w">
                                <node concept="2OqwBi" id="4CvBJ4yPtOi" role="1eOMHV">
                                  <node concept="2OqwBi" id="4CvBJ4yPsZq" role="2Oq$k0">
                                    <node concept="2OqwBi" id="4CvBJ4yPsJA" role="2Oq$k0">
                                      <node concept="37vLTw" id="4CvBJ4yPsvA" role="2Oq$k0">
                                        <ref role="3cqZAo" node="4CvBJ4yPqn2" resolve="m" />
                                      </node>
                                      <node concept="liA8E" id="4CvBJ4yPsU8" role="2OqNvi">
                                        <ref role="37wK5l" to="mhbf:~SModel.getName()" resolve="getName" />
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="4CvBJ4yPtlM" role="2OqNvi">
                                      <ref role="37wK5l" to="mhbf:~SModelName.getValue()" resolve="getValue" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="4CvBJ4yPuZL" role="2OqNvi">
                                    <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                                    <node concept="37vLTw" id="4CvBJ4yPvPk" role="37wK5m">
                                      <ref role="3cqZAo" node="4CvBJ4yPl4y" resolve="targetModelName" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="1eOMI4" id="4CvBJ4yPvbe" role="3uHU7B">
                                <node concept="3y3z36" id="4CvBJ4yPsdV" role="1eOMHV">
                                  <node concept="2OqwBi" id="4CvBJ4yPrDp" role="3uHU7B">
                                    <node concept="37vLTw" id="4CvBJ4yPru9" role="2Oq$k0">
                                      <ref role="3cqZAo" node="4CvBJ4yPqn2" resolve="m" />
                                    </node>
                                    <node concept="liA8E" id="4CvBJ4yPrVX" role="2OqNvi">
                                      <ref role="37wK5l" to="mhbf:~SModel.getName()" resolve="getName" />
                                    </node>
                                  </node>
                                  <node concept="10Nm6u" id="4CvBJ4yPslz" role="3uHU7w" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWsn" id="4CvBJ4yPqn2" role="1Duv9x">
                          <property role="TrG5h" value="m" />
                          <node concept="3uibUv" id="4CvBJ4yPqxh" role="1tU5fm">
                            <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="4CvBJ4yPqV0" role="1DdaDG">
                          <node concept="37vLTw" id="4CvBJ4yPqGD" role="2Oq$k0">
                            <ref role="3cqZAo" node="4CvBJ4yPpfW" resolve="owner" />
                          </node>
                          <node concept="liA8E" id="4CvBJ4yPrlg" role="2OqNvi">
                            <ref role="37wK5l" to="lui2:~SModule.getModels()" resolve="getModels" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3y3z36" id="4CvBJ4yPqbU" role="3clFbw">
                      <node concept="10Nm6u" id="4CvBJ4yPqkb" role="3uHU7w" />
                      <node concept="37vLTw" id="4CvBJ4yPq2i" role="3uHU7B">
                        <ref role="3cqZAo" node="4CvBJ4yPpfW" resolve="owner" />
                      </node>
                    </node>
                  </node>
                  <node concept="3SKdUt" id="4CvBJ4yPwOs" role="3cqZAp">
                    <node concept="1PaTwC" id="4CvBJ4yPwOt" role="1aUNEU">
                      <node concept="3oM_SD" id="4CvBJ4yPwW0" role="1PaTwD">
                        <property role="3oM_SC" value="Fallback:" />
                      </node>
                      <node concept="3oM_SD" id="4CvBJ4yPwW2" role="1PaTwD">
                        <property role="3oM_SC" value="search" />
                      </node>
                      <node concept="3oM_SD" id="4CvBJ4yPwW5" role="1PaTwD">
                        <property role="3oM_SC" value="entire" />
                      </node>
                      <node concept="3oM_SD" id="4CvBJ4yPwW9" role="1PaTwD">
                        <property role="3oM_SC" value="repository" />
                      </node>
                      <node concept="3oM_SD" id="4CvBJ4yPwWe" role="1PaTwD">
                        <property role="3oM_SC" value="(if" />
                      </node>
                      <node concept="3oM_SD" id="4CvBJ4yPwWk" role="1PaTwD">
                        <property role="3oM_SC" value="aspects" />
                      </node>
                      <node concept="3oM_SD" id="4CvBJ4yPwWr" role="1PaTwD">
                        <property role="3oM_SC" value="live" />
                      </node>
                      <node concept="3oM_SD" id="4CvBJ4yPwWz" role="1PaTwD">
                        <property role="3oM_SC" value="elsewhere)" />
                      </node>
                    </node>
                  </node>
                  <node concept="1DcWWT" id="4CvBJ4yPxd5" role="3cqZAp">
                    <node concept="3clFbS" id="4CvBJ4yPxd7" role="2LFqv$">
                      <node concept="1DcWWT" id="4CvBJ4yPyBP" role="3cqZAp">
                        <node concept="3clFbS" id="4CvBJ4yPyBR" role="2LFqv$">
                          <node concept="3clFbJ" id="4CvBJ4yP$h6" role="3cqZAp">
                            <node concept="3clFbS" id="4CvBJ4yP$h8" role="3clFbx">
                              <node concept="3cpWs6" id="4CvBJ4yPENs" role="3cqZAp">
                                <node concept="37vLTw" id="4CvBJ4yPFd$" role="3cqZAk">
                                  <ref role="3cqZAo" node="4CvBJ4yPyBS" resolve="m" />
                                </node>
                              </node>
                            </node>
                            <node concept="1Wc70l" id="4CvBJ4yP_Gy" role="3clFbw">
                              <node concept="1eOMI4" id="4CvBJ4yPElE" role="3uHU7w">
                                <node concept="2OqwBi" id="4CvBJ4yPBUV" role="1eOMHV">
                                  <node concept="2OqwBi" id="4CvBJ4yPAXd" role="2Oq$k0">
                                    <node concept="2OqwBi" id="4CvBJ4yPAbH" role="2Oq$k0">
                                      <node concept="37vLTw" id="4CvBJ4yP_Qm" role="2Oq$k0">
                                        <ref role="3cqZAo" node="4CvBJ4yPyBS" resolve="m" />
                                      </node>
                                      <node concept="liA8E" id="4CvBJ4yPABk" role="2OqNvi">
                                        <ref role="37wK5l" to="mhbf:~SModel.getName()" resolve="getName" />
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="4CvBJ4yPBu7" role="2OqNvi">
                                      <ref role="37wK5l" to="mhbf:~SModelName.getValue()" resolve="getValue" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="4CvBJ4yPDh2" role="2OqNvi">
                                    <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                                    <node concept="37vLTw" id="4CvBJ4yPEwf" role="37wK5m">
                                      <ref role="3cqZAo" node="4CvBJ4yPl4y" resolve="targetModelName" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="1eOMI4" id="4CvBJ4yPDIx" role="3uHU7B">
                                <node concept="3y3z36" id="4CvBJ4yP_dZ" role="1eOMHV">
                                  <node concept="2OqwBi" id="4CvBJ4yP$E2" role="3uHU7B">
                                    <node concept="37vLTw" id="4CvBJ4yP$qi" role="2Oq$k0">
                                      <ref role="3cqZAo" node="4CvBJ4yPyBS" resolve="m" />
                                    </node>
                                    <node concept="liA8E" id="4CvBJ4yP$XH" role="2OqNvi">
                                      <ref role="37wK5l" to="mhbf:~SModel.getName()" resolve="getName" />
                                    </node>
                                  </node>
                                  <node concept="10Nm6u" id="4CvBJ4yP_yZ" role="3uHU7w" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWsn" id="4CvBJ4yPyBS" role="1Duv9x">
                          <property role="TrG5h" value="m" />
                          <node concept="3uibUv" id="4CvBJ4yPyKr" role="1tU5fm">
                            <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="4CvBJ4yPzAH" role="1DdaDG">
                          <node concept="37vLTw" id="4CvBJ4yPzj0" role="2Oq$k0">
                            <ref role="3cqZAo" node="4CvBJ4yPxd8" resolve="mod" />
                          </node>
                          <node concept="liA8E" id="4CvBJ4yP$85" role="2OqNvi">
                            <ref role="37wK5l" to="lui2:~SModule.getModels()" resolve="getModels" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWsn" id="4CvBJ4yPxd8" role="1Duv9x">
                      <property role="TrG5h" value="mod" />
                      <node concept="3uibUv" id="4CvBJ4yPxti" role="1tU5fm">
                        <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="4CvBJ4yPxUq" role="1DdaDG">
                      <node concept="37vLTw" id="4CvBJ4yPxFE" role="2Oq$k0">
                        <ref role="3cqZAo" node="4CvBJ4yPnMo" resolve="repo" />
                      </node>
                      <node concept="liA8E" id="4CvBJ4yPynD" role="2OqNvi">
                        <ref role="37wK5l" to="lui2:~SRepository.getModules()" resolve="getModules" />
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs6" id="4CvBJ4yPG7M" role="3cqZAp">
                    <node concept="10Nm6u" id="4CvBJ4yPGkN" role="3cqZAk" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="3tKEMTIiBfU" role="13h7CW">
      <node concept="3clFbS" id="3tKEMTIiBfV" role="2VODD2" />
    </node>
  </node>
</model>

