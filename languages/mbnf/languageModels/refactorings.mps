<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:9fcf4f6d-556d-4a58-8a23-ef62c198171f(metabnf.refactorings)">
  <persistence version="9" />
  <languages>
    <use id="3ecd7c84-cde3-45de-886c-135ecc69b742" name="jetbrains.mps.lang.refactoring" version="0" />
    <use id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core" version="2" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="tp1h" ref="r:00000000-0000-4000-0000-011c89590319(jetbrains.mps.lang.refactoring.structure)" />
    <import index="2omo" ref="r:de0d3c0c-d049-41cf-bbf9-a920ba513cd3(jetbrains.mps.lang.textGen.structure)" />
    <import index="tpc2" ref="r:00000000-0000-4000-0000-011c8959029e(jetbrains.mps.lang.editor.structure)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="6o2a" ref="r:0fbcf19f-c60b-479b-81cb-094b5b2b9f1d(metabnf.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="w0gx" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project.structure.modules(MPS.Core/)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
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
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
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
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="1225271369338" name="jetbrains.mps.baseLanguage.structure.IsEmptyOperation" flags="nn" index="17RlXB" />
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
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
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
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="2524418899405758586" name="jetbrains.mps.baseLanguage.closures.structure.InferredClosureParameterDeclaration" flags="ig" index="gl6BB" />
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="3ecd7c84-cde3-45de-886c-135ecc69b742" name="jetbrains.mps.lang.refactoring">
      <concept id="7953996722066252911" name="jetbrains.mps.lang.refactoring.structure.ModelDescriptorOperation" flags="nn" index="50M6f" />
      <concept id="7953996722066252913" name="jetbrains.mps.lang.refactoring.structure.ModuleOperation" flags="nn" index="50M6h" />
      <concept id="7953996722066256458" name="jetbrains.mps.lang.refactoring.structure.RefactoringContext_ConceptFunctionParameter" flags="nn" index="50NuE" />
      <concept id="1198577376375" name="jetbrains.mps.lang.refactoring.structure.UpdateModelProcedure" flags="nn" index="gLPPw">
        <child id="1198577431631" name="argument" index="gM3lo" />
      </concept>
      <concept id="6895093993902236229" name="jetbrains.mps.lang.refactoring.structure.Refactoring" flags="ig" index="3SMa$L">
        <property id="6895093993902236371" name="userFriendlyName" index="3SMaAB" />
        <child id="6895093993902236381" name="doRefactorBlock" index="3SMaAD" />
        <child id="6895093993902236376" name="parameter" index="3SMaAG" />
        <child id="6895093993902310998" name="target" index="3SM$Oy" />
      </concept>
      <concept id="6895093993902311012" name="jetbrains.mps.lang.refactoring.structure.RefactoringParameter" flags="ng" index="3SM$Og" />
      <concept id="6895093993902310762" name="jetbrains.mps.lang.refactoring.structure.ModelTarget" flags="ng" index="3SM$Su" />
      <concept id="6895093993902310763" name="jetbrains.mps.lang.refactoring.structure.ModuleTarget" flags="ng" index="3SM$Sv" />
      <concept id="6895093993902496262" name="jetbrains.mps.lang.refactoring.structure.RefactoringParameterReference" flags="nn" index="3SN95M">
        <reference id="6895093993902496263" name="refactoringParameter" index="3SN95N" />
      </concept>
      <concept id="1189694053795" name="jetbrains.mps.lang.refactoring.structure.DoRefactorClause" flags="in" index="3ZiDMR" />
    </language>
    <language id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging">
      <concept id="2034914114981261497" name="jetbrains.mps.baseLanguage.logging.structure.LogLowLevelStatement" flags="ng" index="RRSsy">
        <property id="2034914114981261751" name="severity" index="RRSoG" />
        <child id="2034914114981261753" name="message" index="RRSoy" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138661924179" name="jetbrains.mps.lang.smodel.structure.Property_SetOperation" flags="nn" index="tyxLq">
        <child id="1138662048170" name="value" index="tz02z" />
      </concept>
      <concept id="4693937538533521280" name="jetbrains.mps.lang.smodel.structure.OfConceptOperation" flags="ng" index="v3k3i">
        <child id="4693937538533538124" name="requestedConcept" index="v3oSu" />
      </concept>
      <concept id="559557797393017698" name="jetbrains.mps.lang.smodel.structure.ModelReferenceExpression" flags="nn" index="BaHAS">
        <property id="559557797393021807" name="stereotype" index="BaGAP" />
        <property id="559557797393017702" name="name" index="BaHAW" />
        <child id="1423104411233404408" name="repo" index="up2gk" />
      </concept>
      <concept id="1145383075378" name="jetbrains.mps.lang.smodel.structure.SNodeListType" flags="in" index="2I9FWS" />
      <concept id="1883223317721008708" name="jetbrains.mps.lang.smodel.structure.IfInstanceOfStatement" flags="nn" index="Jncv_">
        <reference id="1883223317721008712" name="nodeConcept" index="JncvD" />
        <child id="1883223317721008709" name="body" index="Jncv$" />
        <child id="1883223317721008711" name="variable" index="JncvA" />
        <child id="1883223317721008710" name="nodeExpression" index="JncvB" />
      </concept>
      <concept id="1883223317721008713" name="jetbrains.mps.lang.smodel.structure.IfInstanceOfVariable" flags="ng" index="JncvC" />
      <concept id="1171315804604" name="jetbrains.mps.lang.smodel.structure.Model_RootsOperation" flags="nn" index="2RRcyG" />
      <concept id="1145567426890" name="jetbrains.mps.lang.smodel.structure.SNodeListCreator" flags="nn" index="2T8Vx0">
        <child id="1145567471833" name="createdType" index="2T96Bj" />
      </concept>
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
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
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435808" name="initValue" index="HW$Y0" />
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1227008614712" name="jetbrains.mps.baseLanguage.collections.structure.LinkedListCreator" flags="nn" index="2Jqq0_" />
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1160666733551" name="jetbrains.mps.baseLanguage.collections.structure.AddAllElementsOperation" flags="nn" index="X8dFx" />
      <concept id="1225727723840" name="jetbrains.mps.baseLanguage.collections.structure.FindFirstOperation" flags="nn" index="1z4cxt" />
    </language>
  </registry>
  <node concept="3SMa$L" id="39uPS0l72hz">
    <property role="TrG5h" value="ImportNodes" />
    <property role="3SMaAB" value="Import nodes from Transient Model" />
    <node concept="3SM$Og" id="39uPS0lm9a9" role="3SMaAG">
      <property role="TrG5h" value="nodes" />
      <node concept="2I9FWS" id="4y$B2Js$Lf0" role="1tU5fm" />
    </node>
    <node concept="3SM$Su" id="39uPS0l7hnl" role="3SM$Oy" />
    <node concept="3ZiDMR" id="39uPS0l72h_" role="3SMaAD">
      <node concept="3clFbS" id="39uPS0l78js" role="2VODD2">
        <node concept="3cpWs8" id="3tKEMTIgtTw" role="3cqZAp">
          <node concept="3cpWsn" id="3tKEMTIgtTz" role="3cpWs9">
            <property role="TrG5h" value="prefix" />
            <property role="3TUv4t" value="true" />
            <node concept="17QB3L" id="3tKEMTIgtTu" role="1tU5fm" />
            <node concept="2OqwBi" id="3tKEMTIguze" role="33vP2m">
              <node concept="2OqwBi" id="3tKEMTIguk6" role="2Oq$k0">
                <node concept="50NuE" id="3tKEMTIgujw" role="2Oq$k0" />
                <node concept="50M6f" id="3tKEMTIgutE" role="2OqNvi" />
              </node>
              <node concept="liA8E" id="3tKEMTIguKz" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SModel.getModelName()" resolve="getModelName" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4y$B2Js$ZQh" role="3cqZAp">
          <node concept="3cpWsn" id="4y$B2Js$ZQk" role="3cpWs9">
            <property role="TrG5h" value="N" />
            <property role="3TUv4t" value="true" />
            <node concept="10Oyi0" id="4y$B2Js$ZQf" role="1tU5fm" />
            <node concept="2OqwBi" id="4y$B2Js_0x$" role="33vP2m">
              <node concept="37vLTw" id="3tKEMTIgvlB" role="2Oq$k0">
                <ref role="3cqZAo" node="3tKEMTIgtTz" resolve="prefix" />
              </node>
              <node concept="liA8E" id="4y$B2Js_1Yf" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.length()" resolve="length" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3tKEMTIhURm" role="3cqZAp" />
        <node concept="3cpWs8" id="4y$B2Js_oTR" role="3cqZAp">
          <node concept="3cpWsn" id="4y$B2Js_oTU" role="3cpWs9">
            <property role="TrG5h" value="toMove" />
            <node concept="2I9FWS" id="4y$B2Js_oTP" role="1tU5fm" />
            <node concept="2ShNRf" id="4y$B2Js_pir" role="33vP2m">
              <node concept="2T8Vx0" id="4y$B2Js_pil" role="2ShVmc">
                <node concept="2I9FWS" id="4y$B2Js_pim" role="2T96Bj" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="4y$B2Js$PEv" role="3cqZAp">
          <node concept="2GrKxI" id="4y$B2Js$PEx" role="2Gsz3X">
            <property role="TrG5h" value="root" />
          </node>
          <node concept="3SN95M" id="3tKEMTIdTs8" role="2GsD0m">
            <ref role="3SN95N" node="39uPS0lm9a9" resolve="nodes" />
          </node>
          <node concept="3clFbS" id="4y$B2Js$PE_" role="2LFqv$">
            <node concept="3clFbJ" id="4y$B2JsAIHI" role="3cqZAp">
              <node concept="3clFbS" id="4y$B2JsAIHL" role="3clFbx">
                <node concept="3cpWs8" id="4y$B2Js$SFr" role="3cqZAp">
                  <node concept="3cpWsn" id="4y$B2Js$SFp" role="3cpWs9">
                    <property role="3TUv4t" value="true" />
                    <property role="TrG5h" value="vp" />
                    <node concept="17QB3L" id="4y$B2Js$SIB" role="1tU5fm" />
                    <node concept="3K4zz7" id="4y$B2JsBq40" role="33vP2m">
                      <node concept="Xl_RD" id="4y$B2JsBqq6" role="3K4E3e">
                        <property role="Xl_RC" value="" />
                      </node>
                      <node concept="2OqwBi" id="4y$B2JsBqZ$" role="3K4GZi">
                        <node concept="2GrUjf" id="4y$B2JsBqFu" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="4y$B2Js$PEx" resolve="root" />
                        </node>
                        <node concept="3TrcHB" id="4y$B2JsBrFh" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:hnGE5uv" resolve="virtualPackage" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="4y$B2JsBn9n" role="3K4Cdx">
                        <node concept="2OqwBi" id="4y$B2JsAPIM" role="2Oq$k0">
                          <node concept="2GrUjf" id="4y$B2JsAPzI" role="2Oq$k0">
                            <ref role="2Gs0qQ" node="4y$B2Js$PEx" resolve="root" />
                          </node>
                          <node concept="3TrcHB" id="4y$B2JsAQrt" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:hnGE5uv" resolve="virtualPackage" />
                          </node>
                        </node>
                        <node concept="17RlXB" id="4y$B2JsBoTL" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="4y$B2Js$TIb" role="3cqZAp">
                  <node concept="3clFbS" id="4y$B2Js$TIe" role="3clFbx">
                    <node concept="3clFbF" id="4y$B2Js_fiG" role="3cqZAp">
                      <node concept="2OqwBi" id="4y$B2Js_gTs" role="3clFbG">
                        <node concept="2OqwBi" id="4y$B2Js_fBp" role="2Oq$k0">
                          <node concept="2GrUjf" id="4y$B2Js_fiE" role="2Oq$k0">
                            <ref role="2Gs0qQ" node="4y$B2Js$PEx" resolve="root" />
                          </node>
                          <node concept="3TrcHB" id="4y$B2Js_gAB" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:hnGE5uv" resolve="virtualPackage" />
                          </node>
                        </node>
                        <node concept="tyxLq" id="4y$B2Js_iW3" role="2OqNvi">
                          <node concept="3K4zz7" id="4y$B2Js_lmF" role="tz02z">
                            <node concept="Xl_RD" id="4y$B2Js_lo$" role="3K4E3e">
                              <property role="Xl_RC" value="" />
                            </node>
                            <node concept="2OqwBi" id="4y$B2Js_lxK" role="3K4GZi">
                              <node concept="37vLTw" id="4y$B2Js_lq4" role="2Oq$k0">
                                <ref role="3cqZAo" node="4y$B2Js$SFp" resolve="vp" />
                              </node>
                              <node concept="liA8E" id="4y$B2Js_mZu" role="2OqNvi">
                                <ref role="37wK5l" to="wyt6:~String.substring(int)" resolve="substring" />
                                <node concept="3cpWs3" id="4y$B2Js_nlS" role="37wK5m">
                                  <node concept="3cmrfG" id="4y$B2Js_nm1" role="3uHU7w">
                                    <property role="3cmrfH" value="1" />
                                  </node>
                                  <node concept="37vLTw" id="4y$B2Js_n2X" role="3uHU7B">
                                    <ref role="3cqZAo" node="4y$B2Js$ZQk" resolve="N" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbC" id="4y$B2Js_kUB" role="3K4Cdx">
                              <node concept="37vLTw" id="4y$B2Js_l1b" role="3uHU7w">
                                <ref role="3cqZAo" node="4y$B2Js$ZQk" resolve="N" />
                              </node>
                              <node concept="2OqwBi" id="4y$B2Js_j34" role="3uHU7B">
                                <node concept="37vLTw" id="4y$B2Js_iWG" role="2Oq$k0">
                                  <ref role="3cqZAo" node="4y$B2Js$SFp" resolve="vp" />
                                </node>
                                <node concept="liA8E" id="4y$B2Js_kvP" role="2OqNvi">
                                  <ref role="37wK5l" to="wyt6:~String.length()" resolve="length" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="4y$B2Js_a3b" role="3cqZAp">
                      <node concept="2OqwBi" id="4y$B2Js_aQM" role="3clFbG">
                        <node concept="37vLTw" id="4y$B2Js_pCR" role="2Oq$k0">
                          <ref role="3cqZAo" node="4y$B2Js_oTU" resolve="toMove" />
                        </node>
                        <node concept="TSZUe" id="4y$B2Js_ewH" role="2OqNvi">
                          <node concept="2GrUjf" id="4y$B2Js_eA0" role="25WWJ7">
                            <ref role="2Gs0qQ" node="4y$B2Js$PEx" resolve="root" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="4y$B2Js$Uap" role="3clFbw">
                    <node concept="37vLTw" id="4y$B2Js$TZd" role="2Oq$k0">
                      <ref role="3cqZAo" node="4y$B2Js$SFp" resolve="vp" />
                    </node>
                    <node concept="liA8E" id="4y$B2Js$ZdK" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.startsWith(java.lang.String)" resolve="startsWith" />
                      <node concept="37vLTw" id="3tKEMTIgvx0" role="37wK5m">
                        <ref role="3cqZAo" node="3tKEMTIgtTz" resolve="prefix" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="4y$B2JsAIZQ" role="3clFbw">
                <node concept="2GrUjf" id="4y$B2JsAIYF" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="4y$B2Js$PEx" resolve="root" />
                </node>
                <node concept="3x8VRR" id="4y$B2JsAJzw" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="39uPS0ljspu" role="3cqZAp">
          <node concept="2YIFZM" id="39uPS0ljspo" role="3clFbG">
            <ref role="1Pybhc" node="7xBkNBCyneu" resolve="GeneratedAspectImporter" />
            <ref role="37wK5l" node="7xBkNBCynew" resolve="moveNodes" />
            <node concept="37vLTw" id="3tKEMTIdW1n" role="37wK5m">
              <ref role="3cqZAo" node="4y$B2Js_oTU" resolve="toMove" />
            </node>
            <node concept="2OqwBi" id="39uPS0ljyi4" role="37wK5m">
              <node concept="50NuE" id="39uPS0ljwUx" role="2Oq$k0" />
              <node concept="50M6f" id="39uPS0lj$aw" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="6sza796XzXx" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="gLPPw" id="39uPS0l8MdV" role="8Wnug">
            <node concept="2OqwBi" id="39uPS0l8MgE" role="gM3lo">
              <node concept="50NuE" id="39uPS0l8Mel" role="2Oq$k0" />
              <node concept="50M6f" id="39uPS0l8O_Q" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3SMa$L" id="3no7bXcQ5pm">
    <property role="TrG5h" value="ImportModule" />
    <property role="3SMaAB" value="Import Language" />
    <node concept="3SM$Sv" id="3no7bXcQlrF" role="3SM$Oy" />
    <node concept="3ZiDMR" id="3no7bXcQ5Pu" role="3SMaAD">
      <node concept="3clFbS" id="3no7bXcQbRl" role="2VODD2">
        <node concept="3cpWs8" id="3no7bXcYuQs" role="3cqZAp">
          <node concept="3cpWsn" id="3no7bXcYuQv" role="3cpWs9">
            <property role="TrG5h" value="aspects" />
            <node concept="_YKpA" id="3no7bXcYuQo" role="1tU5fm">
              <node concept="17QB3L" id="3no7bXcYvlV" role="_ZDj9" />
            </node>
            <node concept="2ShNRf" id="3no7bXcYvni" role="33vP2m">
              <node concept="Tc6Ow" id="3no7bXcYvne" role="2ShVmc">
                <node concept="17QB3L" id="3no7bXcYvnf" role="HW$YZ" />
                <node concept="Xl_RD" id="3no7bXcYvvD" role="HW$Y0">
                  <property role="Xl_RC" value="textGen" />
                </node>
                <node concept="Xl_RD" id="3no7bXcYvs8" role="HW$Y0">
                  <property role="Xl_RC" value="editor" />
                </node>
                <node concept="Xl_RD" id="3no7bXcYvp7" role="HW$Y0">
                  <property role="Xl_RC" value="structure" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5zguxsqfGIb" role="3cqZAp">
          <node concept="3cpWsn" id="5zguxsqfGIe" role="3cpWs9">
            <property role="TrG5h" value="aspectModels" />
            <node concept="_YKpA" id="5zguxsqfGI7" role="1tU5fm">
              <node concept="3uibUv" id="5zguxsqfHfW" role="_ZDj9">
                <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
              </node>
            </node>
            <node concept="2ShNRf" id="5zguxsqfHA3" role="33vP2m">
              <node concept="2Jqq0_" id="5zguxsqfHA1" role="2ShVmc">
                <node concept="3uibUv" id="5zguxsqfHA2" role="HW$YZ">
                  <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5zguxsqfW3Q" role="3cqZAp">
          <node concept="2OqwBi" id="5zguxsqfWRM" role="3clFbG">
            <node concept="37vLTw" id="5zguxsqfW3O" role="2Oq$k0">
              <ref role="3cqZAo" node="5zguxsqfGIe" resolve="aspectModels" />
            </node>
            <node concept="X8dFx" id="5zguxsqfZad" role="2OqNvi">
              <node concept="2OqwBi" id="5zguxsqfZGf" role="25WWJ7">
                <node concept="2OqwBi" id="5zguxsqfZkC" role="2Oq$k0">
                  <node concept="50NuE" id="5zguxsqfZfO" role="2Oq$k0" />
                  <node concept="50M6h" id="5zguxsqfZyR" role="2OqNvi" />
                </node>
                <node concept="liA8E" id="5zguxsqfZYl" role="2OqNvi">
                  <ref role="37wK5l" to="lui2:~SModule.getModels()" resolve="getModels" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5zguxsqg8_i" role="3cqZAp" />
        <node concept="2Gpval" id="3no7bXcYw5C" role="3cqZAp">
          <node concept="2GrKxI" id="3no7bXcYw5E" role="2Gsz3X">
            <property role="TrG5h" value="aspect" />
          </node>
          <node concept="37vLTw" id="3no7bXcYw_f" role="2GsD0m">
            <ref role="3cqZAo" node="3no7bXcYuQv" resolve="aspects" />
          </node>
          <node concept="3clFbS" id="3no7bXcYw5I" role="2LFqv$">
            <node concept="3cpWs8" id="5zguxsqga4f" role="3cqZAp">
              <node concept="3cpWsn" id="5zguxsqga4g" role="3cpWs9">
                <property role="TrG5h" value="m" />
                <node concept="3uibUv" id="5zguxsqga4h" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                </node>
                <node concept="2OqwBi" id="5zguxsqgbbX" role="33vP2m">
                  <node concept="37vLTw" id="5zguxsqgax8" role="2Oq$k0">
                    <ref role="3cqZAo" node="5zguxsqfGIe" resolve="aspectModels" />
                  </node>
                  <node concept="1z4cxt" id="5zguxsqgd4V" role="2OqNvi">
                    <node concept="1bVj0M" id="5zguxsqgd4X" role="23t8la">
                      <node concept="3clFbS" id="5zguxsqgd4Y" role="1bW5cS">
                        <node concept="3clFbF" id="5zguxsqgd8J" role="3cqZAp">
                          <node concept="2OqwBi" id="5zguxsqgdKc" role="3clFbG">
                            <node concept="2OqwBi" id="5zguxsqgdbp" role="2Oq$k0">
                              <node concept="37vLTw" id="5zguxsqgd8I" role="2Oq$k0">
                                <ref role="3cqZAo" node="5cbC3YGYC1R" resolve="it" />
                              </node>
                              <node concept="liA8E" id="5zguxsqgdy1" role="2OqNvi">
                                <ref role="37wK5l" to="mhbf:~SModel.getModelName()" resolve="getModelName" />
                              </node>
                            </node>
                            <node concept="liA8E" id="5zguxsqgf18" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~String.endsWith(java.lang.String)" resolve="endsWith" />
                              <node concept="2GrUjf" id="5zguxsqgf62" role="37wK5m">
                                <ref role="2Gs0qQ" node="3no7bXcYw5E" resolve="aspect" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="gl6BB" id="5cbC3YGYC1R" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="5cbC3YGYC1S" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="RRSsy" id="1GpxiRDpenp" role="3cqZAp">
              <property role="RRSoG" value="gZ5fksE/warn" />
              <node concept="3cpWs3" id="1GpxiRDpf8J" role="RRSoy">
                <node concept="Xl_RD" id="1GpxiRDpenr" role="3uHU7B">
                  <property role="Xl_RC" value="processing aspect: " />
                </node>
                <node concept="2OqwBi" id="3no7bXcYfvh" role="3uHU7w">
                  <node concept="37vLTw" id="5zguxsqgozv" role="2Oq$k0">
                    <ref role="3cqZAo" node="5zguxsqga4g" resolve="m" />
                  </node>
                  <node concept="liA8E" id="3no7bXcYgdn" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SModel.getModelName()" resolve="getModelName" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2Gpval" id="3no7bXcUzqn" role="3cqZAp">
              <node concept="2GrKxI" id="3no7bXcUzqp" role="2Gsz3X">
                <property role="TrG5h" value="injector" />
              </node>
              <node concept="2OqwBi" id="3no7bXcU_ub" role="2GsD0m">
                <node concept="3SN95M" id="3no7bXcU$Pi" role="2Oq$k0">
                  <ref role="3SN95N" node="3no7bXcQls6" resolve="nodes" />
                </node>
                <node concept="v3k3i" id="3no7bXcUG2$" role="2OqNvi">
                  <node concept="chp4Y" id="3no7bXcUG3K" role="v3oSu">
                    <ref role="cht4Q" to="6o2a:5LjIHYW3e81" resolve="TargetInjector" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="3no7bXcUzqt" role="2LFqv$">
                <node concept="3clFbJ" id="3no7bXcUMrn" role="3cqZAp">
                  <node concept="3clFbS" id="3no7bXcUMrq" role="3clFbx">
                    <node concept="3cpWs8" id="3no7bXcV7ei" role="3cqZAp">
                      <node concept="3cpWsn" id="3no7bXcV7el" role="3cpWs9">
                        <property role="TrG5h" value="toMove" />
                        <node concept="2I9FWS" id="3no7bXcV7eg" role="1tU5fm" />
                        <node concept="2ShNRf" id="3no7bXcV7PE" role="33vP2m">
                          <node concept="2T8Vx0" id="3no7bXcV7ZM" role="2ShVmc">
                            <node concept="2I9FWS" id="3no7bXcV7ZO" role="2T96Bj" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="3no7bXcUGz5" role="3cqZAp">
                      <node concept="3cpWsn" id="3no7bXcUGz3" role="3cpWs9">
                        <property role="3TUv4t" value="true" />
                        <property role="TrG5h" value="prefix" />
                        <node concept="17QB3L" id="3no7bXcUGzp" role="1tU5fm" />
                        <node concept="2OqwBi" id="3no7bXcUXvO" role="33vP2m">
                          <node concept="37vLTw" id="5zguxsqgp2v" role="2Oq$k0">
                            <ref role="3cqZAo" node="5zguxsqga4g" resolve="m" />
                          </node>
                          <node concept="liA8E" id="3no7bXcUYm8" role="2OqNvi">
                            <ref role="37wK5l" to="mhbf:~SModel.getModelName()" resolve="getModelName" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="3no7bXcULeG" role="3cqZAp">
                      <node concept="3cpWsn" id="3no7bXcULeE" role="3cpWs9">
                        <property role="3TUv4t" value="true" />
                        <property role="TrG5h" value="N" />
                        <node concept="10Oyi0" id="3no7bXcULf6" role="1tU5fm" />
                        <node concept="2OqwBi" id="3no7bXcULr5" role="33vP2m">
                          <node concept="37vLTw" id="3no7bXcULfS" role="2Oq$k0">
                            <ref role="3cqZAo" node="3no7bXcUGz3" resolve="prefix" />
                          </node>
                          <node concept="liA8E" id="3no7bXcUMpb" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~String.length()" resolve="length" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2Gpval" id="3no7bXcUPcQ" role="3cqZAp">
                      <node concept="2GrKxI" id="3no7bXcUPcR" role="2Gsz3X">
                        <property role="TrG5h" value="root" />
                      </node>
                      <node concept="3SN95M" id="3no7bXcUPdw" role="2GsD0m">
                        <ref role="3SN95N" node="3no7bXcQls6" resolve="nodes" />
                      </node>
                      <node concept="3clFbS" id="3no7bXcUPcT" role="2LFqv$">
                        <node concept="3clFbJ" id="3no7bXcUPen" role="3cqZAp">
                          <node concept="3clFbS" id="3no7bXcUPeo" role="3clFbx">
                            <node concept="3cpWs8" id="3no7bXcUQ02" role="3cqZAp">
                              <node concept="3cpWsn" id="3no7bXcUQ00" role="3cpWs9">
                                <property role="3TUv4t" value="true" />
                                <property role="TrG5h" value="vp" />
                                <node concept="17QB3L" id="3no7bXcUQ0m" role="1tU5fm" />
                                <node concept="3K4zz7" id="3no7bXcUSX5" role="33vP2m">
                                  <node concept="Xl_RD" id="3no7bXcUToO" role="3K4E3e">
                                    <property role="Xl_RC" value="" />
                                  </node>
                                  <node concept="2OqwBi" id="3no7bXcUTBH" role="3K4GZi">
                                    <node concept="2GrUjf" id="3no7bXcUTry" role="2Oq$k0">
                                      <ref role="2Gs0qQ" node="3no7bXcUPcR" resolve="root" />
                                    </node>
                                    <node concept="3TrcHB" id="3no7bXcUU7w" role="2OqNvi">
                                      <ref role="3TsBF5" to="tpck:hnGE5uv" resolve="virtualPackage" />
                                    </node>
                                  </node>
                                  <node concept="2OqwBi" id="3no7bXcUQQZ" role="3K4Cdx">
                                    <node concept="2OqwBi" id="3no7bXcUQ1N" role="2Oq$k0">
                                      <node concept="2GrUjf" id="3no7bXcUQ0S" role="2Oq$k0">
                                        <ref role="2Gs0qQ" node="3no7bXcUPcR" resolve="root" />
                                      </node>
                                      <node concept="3TrcHB" id="3no7bXcUQAl" role="2OqNvi">
                                        <ref role="3TsBF5" to="tpck:hnGE5uv" resolve="virtualPackage" />
                                      </node>
                                    </node>
                                    <node concept="17RlXB" id="3no7bXcUShJ" role="2OqNvi" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbJ" id="3no7bXcUZ9V" role="3cqZAp">
                              <node concept="3clFbS" id="3no7bXcUZ9Y" role="3clFbx">
                                <node concept="3clFbF" id="3no7bXcV0CD" role="3cqZAp">
                                  <node concept="2OqwBi" id="3no7bXcV1vb" role="3clFbG">
                                    <node concept="2OqwBi" id="3no7bXcV0Dw" role="2Oq$k0">
                                      <node concept="2GrUjf" id="3no7bXcV0CC" role="2Oq$k0">
                                        <ref role="2Gs0qQ" node="3no7bXcUPcR" resolve="root" />
                                      </node>
                                      <node concept="3TrcHB" id="3no7bXcV1fh" role="2OqNvi">
                                        <ref role="3TsBF5" to="tpck:hnGE5uv" resolve="virtualPackage" />
                                      </node>
                                    </node>
                                    <node concept="tyxLq" id="3no7bXcV2dr" role="2OqNvi">
                                      <node concept="3K4zz7" id="3no7bXcV4n1" role="tz02z">
                                        <node concept="Xl_RD" id="3no7bXcV4oZ" role="3K4E3e">
                                          <property role="Xl_RC" value="" />
                                        </node>
                                        <node concept="2OqwBi" id="3no7bXcV4yd" role="3K4GZi">
                                          <node concept="37vLTw" id="3no7bXcV4qz" role="2Oq$k0">
                                            <ref role="3cqZAo" node="3no7bXcUQ00" resolve="vp" />
                                          </node>
                                          <node concept="liA8E" id="3no7bXcV5zk" role="2OqNvi">
                                            <ref role="37wK5l" to="wyt6:~String.substring(int)" resolve="substring" />
                                            <node concept="3cpWs3" id="3no7bXcV5TI" role="37wK5m">
                                              <node concept="3cmrfG" id="3no7bXcV5TN" role="3uHU7w">
                                                <property role="3cmrfH" value="1" />
                                              </node>
                                              <node concept="37vLTw" id="3no7bXcV5AJ" role="3uHU7B">
                                                <ref role="3cqZAo" node="3no7bXcULeE" resolve="N" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="3clFbC" id="3no7bXcV3Ye" role="3K4Cdx">
                                          <node concept="37vLTw" id="3no7bXcV44D" role="3uHU7w">
                                            <ref role="3cqZAo" node="3no7bXcULeE" resolve="N" />
                                          </node>
                                          <node concept="2OqwBi" id="3no7bXcV2$U" role="3uHU7B">
                                            <node concept="37vLTw" id="3no7bXcV2u$" role="2Oq$k0">
                                              <ref role="3cqZAo" node="3no7bXcUQ00" resolve="vp" />
                                            </node>
                                            <node concept="liA8E" id="3no7bXcV3zg" role="2OqNvi">
                                              <ref role="37wK5l" to="wyt6:~String.length()" resolve="length" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbF" id="3no7bXcV8gw" role="3cqZAp">
                                  <node concept="2OqwBi" id="3no7bXcV8Gg" role="3clFbG">
                                    <node concept="37vLTw" id="3no7bXcV8gu" role="2Oq$k0">
                                      <ref role="3cqZAo" node="3no7bXcV7el" resolve="toMove" />
                                    </node>
                                    <node concept="TSZUe" id="3no7bXcVb7F" role="2OqNvi">
                                      <node concept="2GrUjf" id="3no7bXcVbd_" role="25WWJ7">
                                        <ref role="2Gs0qQ" node="3no7bXcUPcR" resolve="root" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="2OqwBi" id="3no7bXcUZAx" role="3clFbw">
                                <node concept="37vLTw" id="3no7bXcUZrn" role="2Oq$k0">
                                  <ref role="3cqZAo" node="3no7bXcUQ00" resolve="vp" />
                                </node>
                                <node concept="liA8E" id="3no7bXcV0_s" role="2OqNvi">
                                  <ref role="37wK5l" to="wyt6:~String.startsWith(java.lang.String)" resolve="startsWith" />
                                  <node concept="37vLTw" id="3no7bXcV0Bq" role="37wK5m">
                                    <ref role="3cqZAo" node="3no7bXcUGz3" resolve="prefix" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2OqwBi" id="3no7bXcUPg5" role="3clFbw">
                            <node concept="2GrUjf" id="3no7bXcUPeF" role="2Oq$k0">
                              <ref role="2Gs0qQ" node="3no7bXcUPcR" resolve="root" />
                            </node>
                            <node concept="3x8VRR" id="3no7bXcUPZ3" role="2OqNvi" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="3no7bXcVcF2" role="3cqZAp">
                      <node concept="2YIFZM" id="3no7bXcVcF3" role="3clFbG">
                        <ref role="1Pybhc" node="7xBkNBCyneu" resolve="GeneratedAspectImporter" />
                        <ref role="37wK5l" node="7xBkNBCynew" resolve="moveNodes" />
                        <node concept="37vLTw" id="3no7bXcVcF7" role="37wK5m">
                          <ref role="3cqZAo" node="3no7bXcV7el" resolve="toMove" />
                        </node>
                        <node concept="37vLTw" id="5zguxsqgppZ" role="37wK5m">
                          <ref role="3cqZAo" node="5zguxsqga4g" resolve="m" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="3no7bXcUNoz" role="3clFbw">
                    <node concept="2OqwBi" id="3no7bXcUMtA" role="2Oq$k0">
                      <node concept="37vLTw" id="5zguxsqgoN4" role="2Oq$k0">
                        <ref role="3cqZAo" node="5zguxsqga4g" resolve="m" />
                      </node>
                      <node concept="liA8E" id="3no7bXcUNdA" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SModel.getModelName()" resolve="getModelName" />
                      </node>
                    </node>
                    <node concept="liA8E" id="3no7bXcUP8r" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.startsWith(java.lang.String)" resolve="startsWith" />
                      <node concept="2OqwBi" id="3no7bXcUUw_" role="37wK5m">
                        <node concept="2GrUjf" id="3no7bXcUUqr" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="3no7bXcUzqp" resolve="injector" />
                        </node>
                        <node concept="3TrcHB" id="3no7bXcUVvW" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
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
    <node concept="3SM$Og" id="3no7bXcQls6" role="3SMaAG">
      <property role="TrG5h" value="nodes" />
      <node concept="2I9FWS" id="3no7bXcQlsm" role="1tU5fm" />
    </node>
  </node>
  <node concept="3SMa$L" id="21ByT8TBv0I">
    <property role="TrG5h" value="ImportModuleTest" />
    <property role="3SMaAB" value="Import Language" />
    <node concept="3SM$Sv" id="21ByT8TBv0J" role="3SM$Oy" />
    <node concept="3ZiDMR" id="21ByT8TBv0K" role="3SMaAD">
      <node concept="3clFbS" id="21ByT8TBv0L" role="2VODD2">
        <node concept="3clFbH" id="21ByT8TFmEZ" role="3cqZAp" />
        <node concept="3SKdUt" id="21ByT8TFnP6" role="3cqZAp">
          <node concept="1PaTwC" id="21bD4dVyEsh" role="1aUNEU">
            <node concept="3oM_SD" id="21bD4dVyEsi" role="1PaTwD">
              <property role="3oM_SC" value="imports" />
            </node>
            <node concept="3oM_SD" id="21bD4dVyEsj" role="1PaTwD">
              <property role="3oM_SC" value="all" />
            </node>
            <node concept="3oM_SD" id="21bD4dVyEsk" role="1PaTwD">
              <property role="3oM_SC" value="concepts" />
            </node>
            <node concept="3oM_SD" id="21bD4dVyEsl" role="1PaTwD">
              <property role="3oM_SC" value="directly" />
            </node>
            <node concept="3oM_SD" id="21bD4dVyEsm" role="1PaTwD">
              <property role="3oM_SC" value="into" />
            </node>
            <node concept="3oM_SD" id="21bD4dVyEsn" role="1PaTwD">
              <property role="3oM_SC" value="structure" />
            </node>
            <node concept="3oM_SD" id="21bD4dVyEso" role="1PaTwD">
              <property role="3oM_SC" value="model" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="21ByT8TFpa2" role="3cqZAp">
          <node concept="1PaTwC" id="21bD4dVyEsp" role="1aUNEU">
            <node concept="3oM_SD" id="21bD4dVyEsq" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="21bD4dVyEsr" role="1PaTwD">
              <property role="3oM_SC" value="ensure" />
            </node>
            <node concept="3oM_SD" id="21bD4dVyEss" role="1PaTwD">
              <property role="3oM_SC" value="proper" />
            </node>
            <node concept="3oM_SD" id="21bD4dVyEst" role="1PaTwD">
              <property role="3oM_SC" value="wiring" />
            </node>
            <node concept="3oM_SD" id="21bD4dVyEsu" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="21bD4dVyEsv" role="1PaTwD">
              <property role="3oM_SC" value="concepts" />
            </node>
            <node concept="3oM_SD" id="21bD4dVyEsw" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="21bD4dVyEsx" role="1PaTwD">
              <property role="3oM_SC" value="maintained." />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="21ByT8TFqur" role="3cqZAp">
          <node concept="1PaTwC" id="21bD4dVyEsy" role="1aUNEU">
            <node concept="3oM_SD" id="21bD4dVyEsz" role="1PaTwD">
              <property role="3oM_SC" value="Refactor" />
            </node>
            <node concept="3oM_SD" id="21bD4dVyEs$" role="1PaTwD">
              <property role="3oM_SC" value="afterwards" />
            </node>
            <node concept="3oM_SD" id="21bD4dVyEs_" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="21bD4dVyEsA" role="1PaTwD">
              <property role="3oM_SC" value="move" />
            </node>
            <node concept="3oM_SD" id="21bD4dVyEsB" role="1PaTwD">
              <property role="3oM_SC" value="editors" />
            </node>
            <node concept="3oM_SD" id="21bD4dVyEsC" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="21bD4dVyEsD" role="1PaTwD">
              <property role="3oM_SC" value="textgens" />
            </node>
            <node concept="3oM_SD" id="21bD4dVyEsE" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="21bD4dVyEsF" role="1PaTwD">
              <property role="3oM_SC" value="their" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="21ByT8TFrP1" role="3cqZAp">
          <node concept="1PaTwC" id="21bD4dVyEsG" role="1aUNEU">
            <node concept="3oM_SD" id="21bD4dVyEsH" role="1PaTwD">
              <property role="3oM_SC" value="respective" />
            </node>
            <node concept="3oM_SD" id="21bD4dVyEsI" role="1PaTwD">
              <property role="3oM_SC" value="aspects" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="21ByT8TFnnc" role="3cqZAp" />
        <node concept="3cpWs8" id="21ByT8TBv0M" role="3cqZAp">
          <node concept="3cpWsn" id="21ByT8TBv0N" role="3cpWs9">
            <property role="TrG5h" value="aspects" />
            <node concept="_YKpA" id="21ByT8TBv0O" role="1tU5fm">
              <node concept="17QB3L" id="21ByT8TBv0P" role="_ZDj9" />
            </node>
            <node concept="2ShNRf" id="21ByT8TBv0Q" role="33vP2m">
              <node concept="Tc6Ow" id="21ByT8TBv0R" role="2ShVmc">
                <node concept="17QB3L" id="21ByT8TBv0S" role="HW$YZ" />
                <node concept="Xl_RD" id="21ByT8TBv0T" role="HW$Y0">
                  <property role="Xl_RC" value="textGen" />
                </node>
                <node concept="Xl_RD" id="21ByT8TBv0U" role="HW$Y0">
                  <property role="Xl_RC" value="editor" />
                </node>
                <node concept="Xl_RD" id="21ByT8TBv0V" role="HW$Y0">
                  <property role="Xl_RC" value="structure" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="21ByT8TBv0W" role="3cqZAp">
          <node concept="3cpWsn" id="21ByT8TBv0X" role="3cpWs9">
            <property role="TrG5h" value="aspectModels" />
            <node concept="_YKpA" id="21ByT8TBv0Y" role="1tU5fm">
              <node concept="3uibUv" id="21ByT8TBv0Z" role="_ZDj9">
                <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
              </node>
            </node>
            <node concept="2ShNRf" id="21ByT8TBv10" role="33vP2m">
              <node concept="2Jqq0_" id="21ByT8TBv11" role="2ShVmc">
                <node concept="3uibUv" id="21ByT8TBv12" role="HW$YZ">
                  <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="21ByT8TBv13" role="3cqZAp">
          <node concept="2OqwBi" id="21ByT8TBv14" role="3clFbG">
            <node concept="37vLTw" id="21ByT8TBv15" role="2Oq$k0">
              <ref role="3cqZAo" node="21ByT8TBv0X" resolve="aspectModels" />
            </node>
            <node concept="X8dFx" id="21ByT8TBv16" role="2OqNvi">
              <node concept="2OqwBi" id="21ByT8TBv17" role="25WWJ7">
                <node concept="2OqwBi" id="21ByT8TBv18" role="2Oq$k0">
                  <node concept="50NuE" id="21ByT8TBv19" role="2Oq$k0" />
                  <node concept="50M6h" id="21ByT8TBv1a" role="2OqNvi" />
                </node>
                <node concept="liA8E" id="21ByT8TBv1b" role="2OqNvi">
                  <ref role="37wK5l" to="lui2:~SModule.getModels()" resolve="getModels" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="21ByT8TBx54" role="3cqZAp" />
        <node concept="3cpWs8" id="21ByT8TBv1J" role="3cqZAp">
          <node concept="3cpWsn" id="21ByT8TBv1K" role="3cpWs9">
            <property role="TrG5h" value="toMove" />
            <node concept="2I9FWS" id="21ByT8TBv1L" role="1tU5fm" />
            <node concept="2ShNRf" id="21ByT8TBv1M" role="33vP2m">
              <node concept="2T8Vx0" id="21ByT8TBv1N" role="2ShVmc">
                <node concept="2I9FWS" id="21ByT8TBv1O" role="2T96Bj" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="21ByT8TBv1d" role="3cqZAp">
          <node concept="2GrKxI" id="21ByT8TBv1e" role="2Gsz3X">
            <property role="TrG5h" value="aspect" />
          </node>
          <node concept="37vLTw" id="21ByT8TBv1f" role="2GsD0m">
            <ref role="3cqZAo" node="21ByT8TBv0N" resolve="aspects" />
          </node>
          <node concept="3clFbS" id="21ByT8TBv1g" role="2LFqv$">
            <node concept="3cpWs8" id="21ByT8TBv1h" role="3cqZAp">
              <node concept="3cpWsn" id="21ByT8TBv1i" role="3cpWs9">
                <property role="TrG5h" value="m" />
                <node concept="3uibUv" id="21ByT8TBv1j" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                </node>
                <node concept="2OqwBi" id="21ByT8TBv1k" role="33vP2m">
                  <node concept="37vLTw" id="21ByT8TBv1l" role="2Oq$k0">
                    <ref role="3cqZAo" node="21ByT8TBv0X" resolve="aspectModels" />
                  </node>
                  <node concept="1z4cxt" id="21ByT8TBv1m" role="2OqNvi">
                    <node concept="1bVj0M" id="21ByT8TBv1n" role="23t8la">
                      <node concept="3clFbS" id="21ByT8TBv1o" role="1bW5cS">
                        <node concept="3clFbF" id="21ByT8TBv1p" role="3cqZAp">
                          <node concept="2OqwBi" id="21ByT8TBv1q" role="3clFbG">
                            <node concept="2OqwBi" id="21ByT8TBv1r" role="2Oq$k0">
                              <node concept="37vLTw" id="21ByT8TBv1s" role="2Oq$k0">
                                <ref role="3cqZAo" node="5cbC3YGYC1T" resolve="it" />
                              </node>
                              <node concept="liA8E" id="21ByT8TBv1t" role="2OqNvi">
                                <ref role="37wK5l" to="mhbf:~SModel.getModelName()" resolve="getModelName" />
                              </node>
                            </node>
                            <node concept="liA8E" id="21ByT8TBv1u" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~String.endsWith(java.lang.String)" resolve="endsWith" />
                              <node concept="2GrUjf" id="21ByT8TBv1v" role="37wK5m">
                                <ref role="2Gs0qQ" node="21ByT8TBv1e" resolve="aspect" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="gl6BB" id="5cbC3YGYC1T" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="5cbC3YGYC1U" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="RRSsy" id="1GpxiRDphyQ" role="3cqZAp">
              <property role="RRSoG" value="gZ5fksE/warn" />
              <node concept="3cpWs3" id="1GpxiRDphUK" role="RRSoy">
                <node concept="Xl_RD" id="1GpxiRDphyS" role="3uHU7B">
                  <property role="Xl_RC" value="processing aspect: " />
                </node>
                <node concept="2OqwBi" id="21ByT8TBv1z" role="3uHU7w">
                  <node concept="37vLTw" id="21ByT8TBv1$" role="2Oq$k0">
                    <ref role="3cqZAo" node="21ByT8TBv1i" resolve="m" />
                  </node>
                  <node concept="liA8E" id="21ByT8TBv1_" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SModel.getModelName()" resolve="getModelName" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2Gpval" id="21ByT8TBv1A" role="3cqZAp">
              <node concept="2GrKxI" id="21ByT8TBv1B" role="2Gsz3X">
                <property role="TrG5h" value="injector" />
              </node>
              <node concept="2OqwBi" id="21ByT8TBv1C" role="2GsD0m">
                <node concept="3SN95M" id="21ByT8TBv1D" role="2Oq$k0">
                  <ref role="3SN95N" node="21ByT8TBv31" resolve="nodes" />
                </node>
                <node concept="v3k3i" id="21ByT8TBv1E" role="2OqNvi">
                  <node concept="chp4Y" id="21ByT8TBv1F" role="v3oSu">
                    <ref role="cht4Q" to="6o2a:5LjIHYW3e81" resolve="TargetInjector" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="21ByT8TBv1G" role="2LFqv$">
                <node concept="3clFbJ" id="21ByT8TBv1H" role="3cqZAp">
                  <node concept="3clFbS" id="21ByT8TBv1I" role="3clFbx">
                    <node concept="3cpWs8" id="21ByT8TBv1P" role="3cqZAp">
                      <node concept="3cpWsn" id="21ByT8TBv1Q" role="3cpWs9">
                        <property role="3TUv4t" value="true" />
                        <property role="TrG5h" value="prefix" />
                        <node concept="17QB3L" id="21ByT8TBv1R" role="1tU5fm" />
                        <node concept="2OqwBi" id="21ByT8TBv1S" role="33vP2m">
                          <node concept="37vLTw" id="21ByT8TBv1T" role="2Oq$k0">
                            <ref role="3cqZAo" node="21ByT8TBv1i" resolve="m" />
                          </node>
                          <node concept="liA8E" id="21ByT8TBv1U" role="2OqNvi">
                            <ref role="37wK5l" to="mhbf:~SModel.getModelName()" resolve="getModelName" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="21ByT8TBv1V" role="3cqZAp">
                      <node concept="3cpWsn" id="21ByT8TBv1W" role="3cpWs9">
                        <property role="3TUv4t" value="true" />
                        <property role="TrG5h" value="N" />
                        <node concept="10Oyi0" id="21ByT8TBv1X" role="1tU5fm" />
                        <node concept="2OqwBi" id="21ByT8TBv1Y" role="33vP2m">
                          <node concept="37vLTw" id="21ByT8TBv1Z" role="2Oq$k0">
                            <ref role="3cqZAo" node="21ByT8TBv1Q" resolve="prefix" />
                          </node>
                          <node concept="liA8E" id="21ByT8TBv20" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~String.length()" resolve="length" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2Gpval" id="21ByT8TBv21" role="3cqZAp">
                      <node concept="2GrKxI" id="21ByT8TBv22" role="2Gsz3X">
                        <property role="TrG5h" value="root" />
                      </node>
                      <node concept="3SN95M" id="21ByT8TBv23" role="2GsD0m">
                        <ref role="3SN95N" node="21ByT8TBv31" resolve="nodes" />
                      </node>
                      <node concept="3clFbS" id="21ByT8TBv24" role="2LFqv$">
                        <node concept="3clFbJ" id="21ByT8TBv25" role="3cqZAp">
                          <node concept="3clFbS" id="21ByT8TBv26" role="3clFbx">
                            <node concept="3cpWs8" id="21ByT8TBv27" role="3cqZAp">
                              <node concept="3cpWsn" id="21ByT8TBv28" role="3cpWs9">
                                <property role="3TUv4t" value="true" />
                                <property role="TrG5h" value="vp" />
                                <node concept="17QB3L" id="21ByT8TBv29" role="1tU5fm" />
                                <node concept="3K4zz7" id="21ByT8TBv2a" role="33vP2m">
                                  <node concept="Xl_RD" id="21ByT8TBv2b" role="3K4E3e">
                                    <property role="Xl_RC" value="" />
                                  </node>
                                  <node concept="2OqwBi" id="21ByT8TBv2c" role="3K4GZi">
                                    <node concept="2GrUjf" id="21ByT8TBv2d" role="2Oq$k0">
                                      <ref role="2Gs0qQ" node="21ByT8TBv22" resolve="root" />
                                    </node>
                                    <node concept="3TrcHB" id="21ByT8TBv2e" role="2OqNvi">
                                      <ref role="3TsBF5" to="tpck:hnGE5uv" resolve="virtualPackage" />
                                    </node>
                                  </node>
                                  <node concept="2OqwBi" id="21ByT8TBv2f" role="3K4Cdx">
                                    <node concept="2OqwBi" id="21ByT8TBv2g" role="2Oq$k0">
                                      <node concept="2GrUjf" id="21ByT8TBv2h" role="2Oq$k0">
                                        <ref role="2Gs0qQ" node="21ByT8TBv22" resolve="root" />
                                      </node>
                                      <node concept="3TrcHB" id="21ByT8TBv2i" role="2OqNvi">
                                        <ref role="3TsBF5" to="tpck:hnGE5uv" resolve="virtualPackage" />
                                      </node>
                                    </node>
                                    <node concept="17RlXB" id="21ByT8TBv2j" role="2OqNvi" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbJ" id="21ByT8TBv2k" role="3cqZAp">
                              <node concept="3clFbS" id="21ByT8TBv2l" role="3clFbx">
                                <node concept="3clFbF" id="21ByT8TBv2m" role="3cqZAp">
                                  <node concept="2OqwBi" id="21ByT8TBv2n" role="3clFbG">
                                    <node concept="2OqwBi" id="21ByT8TBv2o" role="2Oq$k0">
                                      <node concept="2GrUjf" id="21ByT8TBv2p" role="2Oq$k0">
                                        <ref role="2Gs0qQ" node="21ByT8TBv22" resolve="root" />
                                      </node>
                                      <node concept="3TrcHB" id="21ByT8TBv2q" role="2OqNvi">
                                        <ref role="3TsBF5" to="tpck:hnGE5uv" resolve="virtualPackage" />
                                      </node>
                                    </node>
                                    <node concept="tyxLq" id="21ByT8TBv2r" role="2OqNvi">
                                      <node concept="3K4zz7" id="21ByT8TBv2s" role="tz02z">
                                        <node concept="Xl_RD" id="21ByT8TBv2t" role="3K4E3e">
                                          <property role="Xl_RC" value="" />
                                        </node>
                                        <node concept="2OqwBi" id="21ByT8TBv2u" role="3K4GZi">
                                          <node concept="37vLTw" id="21ByT8TBv2v" role="2Oq$k0">
                                            <ref role="3cqZAo" node="21ByT8TBv28" resolve="vp" />
                                          </node>
                                          <node concept="liA8E" id="21ByT8TBv2w" role="2OqNvi">
                                            <ref role="37wK5l" to="wyt6:~String.substring(int)" resolve="substring" />
                                            <node concept="3cpWs3" id="21ByT8TBv2x" role="37wK5m">
                                              <node concept="3cmrfG" id="21ByT8TBv2y" role="3uHU7w">
                                                <property role="3cmrfH" value="1" />
                                              </node>
                                              <node concept="37vLTw" id="21ByT8TBv2z" role="3uHU7B">
                                                <ref role="3cqZAo" node="21ByT8TBv1W" resolve="N" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="3clFbC" id="21ByT8TBv2$" role="3K4Cdx">
                                          <node concept="37vLTw" id="21ByT8TBv2_" role="3uHU7w">
                                            <ref role="3cqZAo" node="21ByT8TBv1W" resolve="N" />
                                          </node>
                                          <node concept="2OqwBi" id="21ByT8TBv2A" role="3uHU7B">
                                            <node concept="37vLTw" id="21ByT8TBv2B" role="2Oq$k0">
                                              <ref role="3cqZAo" node="21ByT8TBv28" resolve="vp" />
                                            </node>
                                            <node concept="liA8E" id="21ByT8TBv2C" role="2OqNvi">
                                              <ref role="37wK5l" to="wyt6:~String.length()" resolve="length" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbF" id="21ByT8TBv2D" role="3cqZAp">
                                  <node concept="2OqwBi" id="21ByT8TBv2E" role="3clFbG">
                                    <node concept="37vLTw" id="21ByT8TBv2F" role="2Oq$k0">
                                      <ref role="3cqZAo" node="21ByT8TBv1K" resolve="toMove" />
                                    </node>
                                    <node concept="TSZUe" id="21ByT8TBv2G" role="2OqNvi">
                                      <node concept="2GrUjf" id="21ByT8TBv2H" role="25WWJ7">
                                        <ref role="2Gs0qQ" node="21ByT8TBv22" resolve="root" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="2OqwBi" id="21ByT8TBv2I" role="3clFbw">
                                <node concept="37vLTw" id="21ByT8TBv2J" role="2Oq$k0">
                                  <ref role="3cqZAo" node="21ByT8TBv28" resolve="vp" />
                                </node>
                                <node concept="liA8E" id="21ByT8TBv2K" role="2OqNvi">
                                  <ref role="37wK5l" to="wyt6:~String.startsWith(java.lang.String)" resolve="startsWith" />
                                  <node concept="37vLTw" id="21ByT8TBv2L" role="37wK5m">
                                    <ref role="3cqZAo" node="21ByT8TBv1Q" resolve="prefix" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2OqwBi" id="21ByT8TBv2M" role="3clFbw">
                            <node concept="2GrUjf" id="21ByT8TBv2N" role="2Oq$k0">
                              <ref role="2Gs0qQ" node="21ByT8TBv22" resolve="root" />
                            </node>
                            <node concept="3x8VRR" id="21ByT8TBv2O" role="2OqNvi" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="21ByT8TBv2T" role="3clFbw">
                    <node concept="2OqwBi" id="21ByT8TBv2U" role="2Oq$k0">
                      <node concept="37vLTw" id="21ByT8TBv2V" role="2Oq$k0">
                        <ref role="3cqZAo" node="21ByT8TBv1i" resolve="m" />
                      </node>
                      <node concept="liA8E" id="21ByT8TBv2W" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SModel.getModelName()" resolve="getModelName" />
                      </node>
                    </node>
                    <node concept="liA8E" id="21ByT8TBv2X" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.startsWith(java.lang.String)" resolve="startsWith" />
                      <node concept="2OqwBi" id="21ByT8TBv2Y" role="37wK5m">
                        <node concept="2GrUjf" id="21ByT8TBv2Z" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="21ByT8TBv1B" resolve="injector" />
                        </node>
                        <node concept="3TrcHB" id="21ByT8TBv30" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="21ByT8TBv2P" role="3cqZAp">
          <node concept="2YIFZM" id="21ByT8TBv2Q" role="3clFbG">
            <ref role="1Pybhc" node="7xBkNBCyneu" resolve="GeneratedAspectImporter" />
            <ref role="37wK5l" node="7xBkNBCynew" resolve="moveNodes" />
            <node concept="37vLTw" id="21ByT8TBv2S" role="37wK5m">
              <ref role="3cqZAo" node="21ByT8TBv1K" resolve="toMove" />
            </node>
            <node concept="BaHAS" id="4CvBJ4yS51S" role="37wK5m">
              <property role="BaHAW" value="Python.structure" />
              <property role="BaGAP" value="" />
              <node concept="2OqwBi" id="4CvBJ4yS5tU" role="up2gk">
                <node concept="2OqwBi" id="4CvBJ4yS5cw" role="2Oq$k0">
                  <node concept="50NuE" id="4CvBJ4yS567" role="2Oq$k0" />
                  <node concept="50M6h" id="4CvBJ4yS5n4" role="2OqNvi" />
                </node>
                <node concept="liA8E" id="4CvBJ4yS5Az" role="2OqNvi">
                  <ref role="37wK5l" to="lui2:~SModule.getRepository()" resolve="getRepository" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="21ByT8TByKg" role="3cqZAp" />
      </node>
    </node>
    <node concept="3SM$Og" id="21ByT8TBv31" role="3SMaAG">
      <property role="TrG5h" value="nodes" />
      <node concept="2I9FWS" id="21ByT8TBv32" role="1tU5fm" />
    </node>
  </node>
  <node concept="3SMa$L" id="21ByT8TFlKQ">
    <property role="TrG5h" value="MoveNodesToProperAspect" />
    <property role="3SMaAB" value="Restructure Language" />
    <node concept="3SM$Su" id="21ByT8TFsLx" role="3SM$Oy" />
    <node concept="3ZiDMR" id="21ByT8TFlKS" role="3SMaAD">
      <node concept="3clFbS" id="21ByT8TFlKT" role="2VODD2">
        <node concept="3cpWs8" id="21ByT8TFvgm" role="3cqZAp">
          <node concept="3cpWsn" id="21ByT8TFvgp" role="3cpWs9">
            <property role="TrG5h" value="editors" />
            <node concept="2I9FWS" id="21ByT8TFvgk" role="1tU5fm" />
            <node concept="2ShNRf" id="21ByT8TFvJe" role="33vP2m">
              <node concept="2T8Vx0" id="21ByT8TFvJc" role="2ShVmc">
                <node concept="2I9FWS" id="21ByT8TFvJd" role="2T96Bj" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="21ByT8TFwe$" role="3cqZAp">
          <node concept="3cpWsn" id="21ByT8TFweB" role="3cpWs9">
            <property role="TrG5h" value="textGens" />
            <node concept="2I9FWS" id="21ByT8TFwey" role="1tU5fm" />
            <node concept="2ShNRf" id="21ByT8TFwI4" role="33vP2m">
              <node concept="2T8Vx0" id="21ByT8TFwI2" role="2ShVmc">
                <node concept="2I9FWS" id="21ByT8TFwI3" role="2T96Bj" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4CvBJ4yRRGq" role="3cqZAp" />
        <node concept="2Gpval" id="21ByT8TFxP4" role="3cqZAp">
          <node concept="2GrKxI" id="21ByT8TFxP6" role="2Gsz3X">
            <property role="TrG5h" value="node" />
          </node>
          <node concept="2OqwBi" id="21ByT8TH5rD" role="2GsD0m">
            <node concept="2RRcyG" id="21ByT8TH5HH" role="2OqNvi" />
            <node concept="BaHAS" id="4CvBJ4yS5Mq" role="2Oq$k0">
              <property role="BaHAW" value="Python.structure" />
              <property role="BaGAP" value="" />
              <node concept="2OqwBi" id="4CvBJ4yS6Nq" role="up2gk">
                <node concept="2OqwBi" id="4CvBJ4yS6lP" role="2Oq$k0">
                  <node concept="50NuE" id="4CvBJ4yS65B" role="2Oq$k0" />
                  <node concept="50M6h" id="4CvBJ4yS6Df" role="2OqNvi" />
                </node>
                <node concept="liA8E" id="4CvBJ4yS7c8" role="2OqNvi">
                  <ref role="37wK5l" to="lui2:~SModule.getRepository()" resolve="getRepository" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="21ByT8TFxPa" role="2LFqv$">
            <node concept="Jncv_" id="21ByT8TF$vf" role="3cqZAp">
              <ref role="JncvD" to="tpc2:fA4kQeF" resolve="ConceptEditorDeclaration" />
              <node concept="2GrUjf" id="21ByT8TF$vX" role="JncvB">
                <ref role="2Gs0qQ" node="21ByT8TFxP6" resolve="node" />
              </node>
              <node concept="3clFbS" id="21ByT8TF$vh" role="Jncv$">
                <node concept="3clFbF" id="21ByT8TFAh3" role="3cqZAp">
                  <node concept="2OqwBi" id="21ByT8TFA$Q" role="3clFbG">
                    <node concept="37vLTw" id="21ByT8TFAh2" role="2Oq$k0">
                      <ref role="3cqZAo" node="21ByT8TFvgp" resolve="editors" />
                    </node>
                    <node concept="TSZUe" id="21ByT8TFGuh" role="2OqNvi">
                      <node concept="2GrUjf" id="21ByT8TFGxl" role="25WWJ7">
                        <ref role="2Gs0qQ" node="21ByT8TFxP6" resolve="node" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="JncvC" id="21ByT8TF$vi" role="JncvA">
                <property role="TrG5h" value="ced" />
                <node concept="2jxLKc" id="21ByT8TF$vj" role="1tU5fm" />
              </node>
            </node>
            <node concept="Jncv_" id="21ByT8TFGCH" role="3cqZAp">
              <ref role="JncvD" to="2omo:hWWtQdD" resolve="ConceptTextGenDeclaration" />
              <node concept="2GrUjf" id="21ByT8TFGEs" role="JncvB">
                <ref role="2Gs0qQ" node="21ByT8TFxP6" resolve="node" />
              </node>
              <node concept="3clFbS" id="21ByT8TFGCL" role="Jncv$">
                <node concept="3clFbF" id="21ByT8TH28G" role="3cqZAp">
                  <node concept="2OqwBi" id="21ByT8TH2sv" role="3clFbG">
                    <node concept="37vLTw" id="21ByT8TH28F" role="2Oq$k0">
                      <ref role="3cqZAo" node="21ByT8TFweB" resolve="textGens" />
                    </node>
                    <node concept="TSZUe" id="21ByT8TH4JB" role="2OqNvi">
                      <node concept="2GrUjf" id="21ByT8TH4O3" role="25WWJ7">
                        <ref role="2Gs0qQ" node="21ByT8TFxP6" resolve="node" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="JncvC" id="21ByT8TFGCN" role="JncvA">
                <property role="TrG5h" value="ctd" />
                <node concept="2jxLKc" id="21ByT8TFGCO" role="1tU5fm" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="21ByT8TH5IA" role="3cqZAp">
          <node concept="2YIFZM" id="21ByT8TH5Iw" role="3clFbG">
            <ref role="1Pybhc" node="7xBkNBCyneu" resolve="GeneratedAspectImporter" />
            <ref role="37wK5l" node="7xBkNBCynew" resolve="moveNodes" />
            <node concept="37vLTw" id="21ByT8TH5QY" role="37wK5m">
              <ref role="3cqZAo" node="21ByT8TFvgp" resolve="editors" />
            </node>
            <node concept="BaHAS" id="4CvBJ4yS7pJ" role="37wK5m">
              <property role="BaHAW" value="Python.editor" />
              <property role="BaGAP" value="" />
              <node concept="2OqwBi" id="4CvBJ4yS7Jb" role="up2gk">
                <node concept="2OqwBi" id="4CvBJ4yS7$n" role="2Oq$k0">
                  <node concept="50NuE" id="4CvBJ4yS7tY" role="2Oq$k0" />
                  <node concept="50M6h" id="4CvBJ4yS7HB" role="2OqNvi" />
                </node>
                <node concept="liA8E" id="4CvBJ4yS7RO" role="2OqNvi">
                  <ref role="37wK5l" to="lui2:~SModule.getRepository()" resolve="getRepository" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="21ByT8TH640" role="3cqZAp">
          <node concept="2YIFZM" id="21ByT8TH63U" role="3clFbG">
            <ref role="1Pybhc" node="7xBkNBCyneu" resolve="GeneratedAspectImporter" />
            <ref role="37wK5l" node="7xBkNBCynew" resolve="moveNodes" />
            <node concept="37vLTw" id="21ByT8TH6fH" role="37wK5m">
              <ref role="3cqZAo" node="21ByT8TFweB" resolve="textGens" />
            </node>
            <node concept="BaHAS" id="4CvBJ4yS7WA" role="37wK5m">
              <property role="BaHAW" value="Python.textGen" />
              <property role="BaGAP" value="" />
              <node concept="2OqwBi" id="4CvBJ4yS8r3" role="up2gk">
                <node concept="2OqwBi" id="4CvBJ4yS87e" role="2Oq$k0">
                  <node concept="50NuE" id="4CvBJ4yS80P" role="2Oq$k0" />
                  <node concept="50M6h" id="4CvBJ4yS8pv" role="2OqNvi" />
                </node>
                <node concept="liA8E" id="4CvBJ4yS8Gm" role="2OqNvi">
                  <ref role="37wK5l" to="lui2:~SModule.getRepository()" resolve="getRepository" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="7xBkNBCyneu">
    <property role="TrG5h" value="GeneratedAspectImporter" />
    <node concept="3Tm1VV" id="7xBkNBCynev" role="1B3o_S" />
    <node concept="2YIFZL" id="7xBkNBCynew" role="jymVt">
      <property role="TrG5h" value="moveNodes" />
      <node concept="37vLTG" id="7xBkNBCynex" role="3clF46">
        <property role="TrG5h" value="nodes" />
        <node concept="3uibUv" id="7xBkNBCyney" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="7xBkNBCynez" role="11_B2D">
            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7xBkNBCyne$" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="3uibUv" id="7xBkNBCyne_" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
        </node>
      </node>
      <node concept="3clFbS" id="7xBkNBCyneA" role="3clF47">
        <node concept="3cpWs8" id="7xBkNBCyneC" role="3cqZAp">
          <node concept="3cpWsn" id="7xBkNBCyneB" role="3cpWs9">
            <property role="TrG5h" value="copies" />
            <node concept="3uibUv" id="7xBkNBCyneD" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
              <node concept="3uibUv" id="7xBkNBCyneE" role="11_B2D">
                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
              </node>
              <node concept="3uibUv" id="7xBkNBCyneF" role="11_B2D">
                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
              </node>
            </node>
            <node concept="2ShNRf" id="7xBkNBCynh9" role="33vP2m">
              <node concept="1pGfFk" id="7xBkNBCynhd" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="33ny:~HashMap.&lt;init&gt;()" resolve="HashMap" />
                <node concept="3uibUv" id="7xBkNBCynhe" role="1pMfVU">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
                <node concept="3uibUv" id="7xBkNBCynhf" role="1pMfVU">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7xBkNBCyneK" role="3cqZAp">
          <node concept="3cpWsn" id="7xBkNBCyneJ" role="3cpWs9">
            <property role="TrG5h" value="models" />
            <node concept="3uibUv" id="7xBkNBCyneL" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
              <node concept="3uibUv" id="7xBkNBCyneM" role="11_B2D">
                <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
              </node>
            </node>
            <node concept="2ShNRf" id="7xBkNBCynhg" role="33vP2m">
              <node concept="1pGfFk" id="7xBkNBCynhk" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="33ny:~HashSet.&lt;init&gt;()" resolve="HashSet" />
                <node concept="3uibUv" id="7xBkNBCynhl" role="1pMfVU">
                  <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="7xBkNBCyneP" role="3cqZAp">
          <node concept="37vLTw" id="7xBkNBCyneY" role="1DdaDG">
            <ref role="3cqZAo" node="7xBkNBCynex" resolve="nodes" />
          </node>
          <node concept="3cpWsn" id="7xBkNBCyneV" role="1Duv9x">
            <property role="TrG5h" value="node" />
            <node concept="3uibUv" id="7xBkNBCyneX" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
          </node>
          <node concept="3clFbS" id="7xBkNBCyneR" role="2LFqv$">
            <node concept="3clFbF" id="7xBkNBCyneS" role="3cqZAp">
              <node concept="2OqwBi" id="7xBkNBCynlb" role="3clFbG">
                <node concept="37vLTw" id="7xBkNBCynho" role="2Oq$k0">
                  <ref role="3cqZAo" node="7xBkNBCyneJ" resolve="models" />
                </node>
                <node concept="liA8E" id="7xBkNBCynlc" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="2OqwBi" id="7xBkNBCynuO" role="37wK5m">
                    <node concept="37vLTw" id="7xBkNBCyntC" role="2Oq$k0">
                      <ref role="3cqZAo" node="7xBkNBCyneV" resolve="node" />
                    </node>
                    <node concept="liA8E" id="7xBkNBCynuP" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.getModel()" resolve="getModel" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="7xBkNBCyneZ" role="3cqZAp">
          <node concept="2OqwBi" id="7xBkNBCyntV" role="1DdaDG">
            <node concept="2OqwBi" id="7xBkNBCynlv" role="2Oq$k0">
              <node concept="37vLTw" id="7xBkNBCynh_" role="2Oq$k0">
                <ref role="3cqZAo" node="7xBkNBCyne$" resolve="target" />
              </node>
              <node concept="liA8E" id="7xBkNBCynlw" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
              </node>
            </node>
            <node concept="liA8E" id="7xBkNBCyntW" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~SModule.getModels()" resolve="getModels" />
            </node>
          </node>
          <node concept="3cpWsn" id="7xBkNBCynf5" role="1Duv9x">
            <property role="TrG5h" value="model" />
            <node concept="3uibUv" id="7xBkNBCynf7" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
            </node>
          </node>
          <node concept="3clFbS" id="7xBkNBCynf1" role="2LFqv$">
            <node concept="3clFbF" id="7xBkNBCynf2" role="3cqZAp">
              <node concept="2OqwBi" id="7xBkNBCynnA" role="3clFbG">
                <node concept="37vLTw" id="7xBkNBCynhD" role="2Oq$k0">
                  <ref role="3cqZAo" node="7xBkNBCyneJ" resolve="models" />
                </node>
                <node concept="liA8E" id="7xBkNBCynnB" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="7xBkNBCynnC" role="37wK5m">
                    <ref role="3cqZAo" node="7xBkNBCynf5" resolve="model" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="7xBkNBCynfa" role="3cqZAp">
          <node concept="2YIFZM" id="7xBkNBCynhI" role="1DdaDG">
            <ref role="1Pybhc" to="w1kc:~CopyUtil" resolve="CopyUtil" />
            <ref role="37wK5l" to="w1kc:~CopyUtil.copy(java.util.List,java.util.Map)" resolve="copy" />
            <node concept="37vLTw" id="7xBkNBCynhJ" role="37wK5m">
              <ref role="3cqZAo" node="7xBkNBCynex" resolve="nodes" />
            </node>
            <node concept="37vLTw" id="7xBkNBCynhK" role="37wK5m">
              <ref role="3cqZAo" node="7xBkNBCyneB" resolve="copies" />
            </node>
          </node>
          <node concept="3cpWsn" id="7xBkNBCynfg" role="1Duv9x">
            <property role="TrG5h" value="copy" />
            <node concept="3uibUv" id="7xBkNBCynfi" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
          </node>
          <node concept="3clFbS" id="7xBkNBCynfc" role="2LFqv$">
            <node concept="3clFbF" id="7xBkNBCynfd" role="3cqZAp">
              <node concept="2OqwBi" id="7xBkNBCynnM" role="3clFbG">
                <node concept="37vLTw" id="7xBkNBCynhN" role="2Oq$k0">
                  <ref role="3cqZAo" node="7xBkNBCyne$" resolve="target" />
                </node>
                <node concept="liA8E" id="7xBkNBCynnN" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SModel.addRootNode(org.jetbrains.mps.openapi.model.SNode)" resolve="addRootNode" />
                  <node concept="37vLTw" id="7xBkNBCynnO" role="37wK5m">
                    <ref role="3cqZAo" node="7xBkNBCynfg" resolve="copy" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="7xBkNBCynfm" role="3cqZAp">
          <node concept="37vLTw" id="7xBkNBCyng4" role="1DdaDG">
            <ref role="3cqZAo" node="7xBkNBCyneJ" resolve="models" />
          </node>
          <node concept="3cpWsn" id="7xBkNBCyng1" role="1Duv9x">
            <property role="TrG5h" value="model" />
            <node concept="3uibUv" id="7xBkNBCyng3" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
            </node>
          </node>
          <node concept="3clFbS" id="7xBkNBCynfo" role="2LFqv$">
            <node concept="3cpWs8" id="7xBkNBCynfq" role="3cqZAp">
              <node concept="3cpWsn" id="7xBkNBCynfp" role="3cpWs9">
                <property role="TrG5h" value="changed" />
                <node concept="10P_77" id="7xBkNBCynfr" role="1tU5fm" />
                <node concept="3clFbC" id="7xBkNBCynfs" role="33vP2m">
                  <node concept="37vLTw" id="7xBkNBCynft" role="3uHU7B">
                    <ref role="3cqZAo" node="7xBkNBCyng1" resolve="model" />
                  </node>
                  <node concept="37vLTw" id="7xBkNBCynfu" role="3uHU7w">
                    <ref role="3cqZAo" node="7xBkNBCyne$" resolve="target" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1DcWWT" id="7xBkNBCynfv" role="3cqZAp">
              <node concept="2OqwBi" id="7xBkNBCynnY" role="1DdaDG">
                <node concept="37vLTw" id="7xBkNBCynhS" role="2Oq$k0">
                  <ref role="3cqZAo" node="7xBkNBCyng1" resolve="model" />
                </node>
                <node concept="liA8E" id="7xBkNBCynnZ" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SModel.getRootNodes()" resolve="getRootNodes" />
                </node>
              </node>
              <node concept="3cpWsn" id="7xBkNBCynfE" role="1Duv9x">
                <property role="TrG5h" value="root" />
                <node concept="3uibUv" id="7xBkNBCynfG" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
              </node>
              <node concept="3clFbS" id="7xBkNBCynfx" role="2LFqv$">
                <node concept="3clFbF" id="7xBkNBCynfy" role="3cqZAp">
                  <node concept="37vLTI" id="7xBkNBCynfz" role="3clFbG">
                    <node concept="37vLTw" id="7xBkNBCynf$" role="37vLTJ">
                      <ref role="3cqZAo" node="7xBkNBCynfp" resolve="changed" />
                    </node>
                    <node concept="22lmx$" id="7xBkNBCynf_" role="37vLTx">
                      <node concept="1rXfSq" id="7xBkNBCynfA" role="3uHU7B">
                        <ref role="37wK5l" node="7xBkNBCyngg" resolve="retarget" />
                        <node concept="37vLTw" id="7xBkNBCynfB" role="37wK5m">
                          <ref role="3cqZAo" node="7xBkNBCynfE" resolve="root" />
                        </node>
                        <node concept="37vLTw" id="7xBkNBCynfC" role="37wK5m">
                          <ref role="3cqZAo" node="7xBkNBCyneB" resolve="copies" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="7xBkNBCynfD" role="3uHU7w">
                        <ref role="3cqZAo" node="7xBkNBCynfp" resolve="changed" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="7xBkNBCynfI" role="3cqZAp">
              <node concept="1Wc70l" id="7xBkNBCynfJ" role="3clFbw">
                <node concept="37vLTw" id="7xBkNBCynfK" role="3uHU7B">
                  <ref role="3cqZAo" node="7xBkNBCynfp" resolve="changed" />
                </node>
                <node concept="3clFbC" id="7xBkNBCynfL" role="3uHU7w">
                  <node concept="2OqwBi" id="7xBkNBCyno9" role="3uHU7B">
                    <node concept="37vLTw" id="7xBkNBCynhW" role="2Oq$k0">
                      <ref role="3cqZAo" node="7xBkNBCyng1" resolve="model" />
                    </node>
                    <node concept="liA8E" id="7xBkNBCynoa" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="7xBkNBCynok" role="3uHU7w">
                    <node concept="37vLTw" id="7xBkNBCyni0" role="2Oq$k0">
                      <ref role="3cqZAo" node="7xBkNBCyne$" resolve="target" />
                    </node>
                    <node concept="liA8E" id="7xBkNBCynol" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="7xBkNBCynfP" role="3clFbx">
                <node concept="3clFbF" id="7xBkNBCEd00" role="3cqZAp">
                  <node concept="2YIFZM" id="7xBkNBCEd01" role="3clFbG">
                    <ref role="1Pybhc" node="7xBkNBCyneu" resolve="GeneratedAspectImporter" />
                    <ref role="37wK5l" node="7xBkNBCEcYt" resolve="cleanupTransientImports" />
                    <node concept="37vLTw" id="7xBkNBCEd02" role="37wK5m">
                      <ref role="3cqZAo" node="7xBkNBCyng1" resolve="model" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="7xBkNBCynfR" role="3cqZAp">
                  <node concept="3cpWsn" id="7xBkNBCynfQ" role="3cpWs9">
                    <property role="TrG5h" value="dependencies" />
                    <node concept="3uibUv" id="7xBkNBCynfS" role="1tU5fm">
                      <ref role="3uigEE" to="w1kc:~ModelDependencyUpdate" resolve="ModelDependencyUpdate" />
                    </node>
                    <node concept="2ShNRf" id="7xBkNBCyni2" role="33vP2m">
                      <node concept="1pGfFk" id="7xBkNBCynih" role="2ShVmc">
                        <ref role="37wK5l" to="w1kc:~ModelDependencyUpdate.&lt;init&gt;(org.jetbrains.mps.openapi.model.SModel)" resolve="ModelDependencyUpdate" />
                        <node concept="37vLTw" id="7xBkNBCynii" role="37wK5m">
                          <ref role="3cqZAo" node="7xBkNBCyng1" resolve="model" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="7xBkNBCynfV" role="3cqZAp">
                  <node concept="2OqwBi" id="7xBkNBCynvB" role="3clFbG">
                    <node concept="2OqwBi" id="7xBkNBCynuu" role="2Oq$k0">
                      <node concept="2OqwBi" id="7xBkNBCynoJ" role="2Oq$k0">
                        <node concept="37vLTw" id="7xBkNBCyni_" role="2Oq$k0">
                          <ref role="3cqZAo" node="7xBkNBCynfQ" resolve="dependencies" />
                        </node>
                        <node concept="liA8E" id="7xBkNBCynoK" role="2OqNvi">
                          <ref role="37wK5l" to="w1kc:~ModelDependencyUpdate.updateUsedLanguages()" resolve="updateUsedLanguages" />
                        </node>
                      </node>
                      <node concept="liA8E" id="7xBkNBCynuv" role="2OqNvi">
                        <ref role="37wK5l" to="w1kc:~ModelDependencyUpdate.updateImportedModels(org.jetbrains.mps.openapi.module.SRepository)" resolve="updateImportedModels" />
                        <node concept="2OqwBi" id="7xBkNBCynuw" role="37wK5m">
                          <node concept="37vLTw" id="7xBkNBCynux" role="2Oq$k0">
                            <ref role="3cqZAo" node="7xBkNBCyne$" resolve="target" />
                          </node>
                          <node concept="liA8E" id="7xBkNBCynuy" role="2OqNvi">
                            <ref role="37wK5l" to="mhbf:~SModel.getRepository()" resolve="getRepository" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="7xBkNBCynvC" role="2OqNvi">
                      <ref role="37wK5l" to="w1kc:~ModelDependencyUpdate.updateModuleDependencies(org.jetbrains.mps.openapi.module.SRepository)" resolve="updateModuleDependencies" />
                      <node concept="2OqwBi" id="7xBkNBCynvD" role="37wK5m">
                        <node concept="37vLTw" id="7xBkNBCynvE" role="2Oq$k0">
                          <ref role="3cqZAo" node="7xBkNBCyne$" resolve="target" />
                        </node>
                        <node concept="liA8E" id="7xBkNBCynvF" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SModel.getRepository()" resolve="getRepository" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="7xBkNBCyng5" role="3cqZAp">
          <node concept="37vLTw" id="7xBkNBCyngd" role="1DdaDG">
            <ref role="3cqZAo" node="7xBkNBCynex" resolve="nodes" />
          </node>
          <node concept="3cpWsn" id="7xBkNBCynga" role="1Duv9x">
            <property role="TrG5h" value="node" />
            <node concept="3uibUv" id="7xBkNBCyngc" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
          </node>
          <node concept="3clFbS" id="7xBkNBCyng7" role="2LFqv$">
            <node concept="3clFbF" id="7xBkNBCyng8" role="3cqZAp">
              <node concept="2OqwBi" id="7xBkNBCynpg" role="3clFbG">
                <node concept="37vLTw" id="7xBkNBCyniL" role="2Oq$k0">
                  <ref role="3cqZAo" node="7xBkNBCynga" resolve="node" />
                </node>
                <node concept="liA8E" id="7xBkNBCynph" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.delete()" resolve="delete" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7xBkNBCynge" role="1B3o_S" />
      <node concept="3cqZAl" id="7xBkNBCyngf" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="7xBkNBCyngg" role="jymVt">
      <property role="TrG5h" value="retarget" />
      <node concept="37vLTG" id="7xBkNBCyngh" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="7xBkNBCyngi" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="37vLTG" id="7xBkNBCyngj" role="3clF46">
        <property role="TrG5h" value="copies" />
        <node concept="3uibUv" id="7xBkNBCyngk" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
          <node concept="3uibUv" id="7xBkNBCyngl" role="11_B2D">
            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          </node>
          <node concept="3uibUv" id="7xBkNBCyngm" role="11_B2D">
            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="7xBkNBCyngn" role="3clF47">
        <node concept="3cpWs8" id="7xBkNBCyngp" role="3cqZAp">
          <node concept="3cpWsn" id="7xBkNBCyngo" role="3cpWs9">
            <property role="TrG5h" value="changed" />
            <node concept="10P_77" id="7xBkNBCyngq" role="1tU5fm" />
            <node concept="3clFbT" id="7xBkNBCyngr" role="33vP2m" />
          </node>
        </node>
        <node concept="1DcWWT" id="7xBkNBCyngs" role="3cqZAp">
          <node concept="2OqwBi" id="7xBkNBCynpr" role="1DdaDG">
            <node concept="37vLTw" id="7xBkNBCyniP" role="2Oq$k0">
              <ref role="3cqZAo" node="7xBkNBCyngh" resolve="node" />
            </node>
            <node concept="liA8E" id="7xBkNBCynps" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNode.getReferences()" resolve="getReferences" />
            </node>
          </node>
          <node concept="3cpWsn" id="7xBkNBCyngM" role="1Duv9x">
            <property role="TrG5h" value="reference" />
            <node concept="3uibUv" id="7xBkNBCyngO" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SReference" resolve="SReference" />
            </node>
          </node>
          <node concept="3clFbS" id="7xBkNBCyngu" role="2LFqv$">
            <node concept="3cpWs8" id="7xBkNBCyngw" role="3cqZAp">
              <node concept="3cpWsn" id="7xBkNBCyngv" role="3cpWs9">
                <property role="TrG5h" value="replacement" />
                <node concept="3uibUv" id="7xBkNBCyngx" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
                <node concept="2OqwBi" id="7xBkNBCyntb" role="33vP2m">
                  <node concept="37vLTw" id="7xBkNBCyniT" role="2Oq$k0">
                    <ref role="3cqZAo" node="7xBkNBCyngj" resolve="copies" />
                  </node>
                  <node concept="liA8E" id="7xBkNBCyntc" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
                    <node concept="2OqwBi" id="7xBkNBCynvP" role="37wK5m">
                      <node concept="37vLTw" id="7xBkNBCynu_" role="2Oq$k0">
                        <ref role="3cqZAo" node="7xBkNBCyngM" resolve="reference" />
                      </node>
                      <node concept="liA8E" id="7xBkNBCynvQ" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SReference.getTargetNode()" resolve="getTargetNode" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="7xBkNBCyng$" role="3cqZAp">
              <node concept="3y3z36" id="7xBkNBCyng_" role="3clFbw">
                <node concept="37vLTw" id="7xBkNBCyngA" role="3uHU7B">
                  <ref role="3cqZAo" node="7xBkNBCyngv" resolve="replacement" />
                </node>
                <node concept="10Nm6u" id="7xBkNBCyngB" role="3uHU7w" />
              </node>
              <node concept="3clFbS" id="7xBkNBCyngD" role="3clFbx">
                <node concept="3clFbF" id="7xBkNBCyngE" role="3cqZAp">
                  <node concept="2OqwBi" id="7xBkNBCyntn" role="3clFbG">
                    <node concept="37vLTw" id="7xBkNBCyniY" role="2Oq$k0">
                      <ref role="3cqZAo" node="7xBkNBCyngh" resolve="node" />
                    </node>
                    <node concept="liA8E" id="7xBkNBCynto" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.setReferenceTarget(org.jetbrains.mps.openapi.language.SReferenceLink,org.jetbrains.mps.openapi.model.SNode)" resolve="setReferenceTarget" />
                      <node concept="2OqwBi" id="7xBkNBCynw0" role="37wK5m">
                        <node concept="37vLTw" id="7xBkNBCynuD" role="2Oq$k0">
                          <ref role="3cqZAo" node="7xBkNBCyngM" resolve="reference" />
                        </node>
                        <node concept="liA8E" id="7xBkNBCynw1" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SReference.getLink()" resolve="getLink" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="7xBkNBCyntq" role="37wK5m">
                        <ref role="3cqZAo" node="7xBkNBCyngv" resolve="replacement" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="7xBkNBCyngI" role="3cqZAp">
                  <node concept="37vLTI" id="7xBkNBCyngJ" role="3clFbG">
                    <node concept="37vLTw" id="7xBkNBCyngK" role="37vLTJ">
                      <ref role="3cqZAo" node="7xBkNBCyngo" resolve="changed" />
                    </node>
                    <node concept="3clFbT" id="7xBkNBCyngL" role="37vLTx">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="7xBkNBCyngQ" role="3cqZAp">
          <node concept="2OqwBi" id="7xBkNBCynt$" role="1DdaDG">
            <node concept="37vLTw" id="7xBkNBCynj4" role="2Oq$k0">
              <ref role="3cqZAo" node="7xBkNBCyngh" resolve="node" />
            </node>
            <node concept="liA8E" id="7xBkNBCynt_" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNode.getChildren()" resolve="getChildren" />
            </node>
          </node>
          <node concept="3cpWsn" id="7xBkNBCynh1" role="1Duv9x">
            <property role="TrG5h" value="child" />
            <node concept="3uibUv" id="7xBkNBCynh3" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
          </node>
          <node concept="3clFbS" id="7xBkNBCyngS" role="2LFqv$">
            <node concept="3clFbF" id="7xBkNBCyngT" role="3cqZAp">
              <node concept="37vLTI" id="7xBkNBCyngU" role="3clFbG">
                <node concept="37vLTw" id="7xBkNBCyngV" role="37vLTJ">
                  <ref role="3cqZAo" node="7xBkNBCyngo" resolve="changed" />
                </node>
                <node concept="22lmx$" id="7xBkNBCyngW" role="37vLTx">
                  <node concept="1rXfSq" id="7xBkNBCyngX" role="3uHU7B">
                    <ref role="37wK5l" node="7xBkNBCyngg" resolve="retarget" />
                    <node concept="37vLTw" id="7xBkNBCyngY" role="37wK5m">
                      <ref role="3cqZAo" node="7xBkNBCynh1" resolve="child" />
                    </node>
                    <node concept="37vLTw" id="7xBkNBCyngZ" role="37wK5m">
                      <ref role="3cqZAo" node="7xBkNBCyngj" resolve="copies" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="7xBkNBCynh0" role="3uHU7w">
                    <ref role="3cqZAo" node="7xBkNBCyngo" resolve="changed" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7xBkNBCynh5" role="3cqZAp">
          <node concept="37vLTw" id="7xBkNBCynh6" role="3cqZAk">
            <ref role="3cqZAo" node="7xBkNBCyngo" resolve="changed" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="7xBkNBCynh7" role="1B3o_S" />
      <node concept="10P_77" id="7xBkNBCynh8" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="7xBkNBCEcYt" role="jymVt">
      <property role="TrG5h" value="cleanupTransientImports" />
      <node concept="37vLTG" id="7xBkNBCEcYu" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="3uibUv" id="7xBkNBCEcYv" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
        </node>
      </node>
      <node concept="3clFbS" id="7xBkNBCEcYw" role="3clF47">
        <node concept="3cpWs8" id="7xBkNBCEcYy" role="3cqZAp">
          <node concept="3cpWsn" id="7xBkNBCEcYx" role="3cpWs9">
            <property role="TrG5h" value="imports" />
            <node concept="3uibUv" id="7xBkNBCEcYz" role="1tU5fm">
              <ref role="3uigEE" to="w1kc:~ModelImports" resolve="ModelImports" />
            </node>
            <node concept="2ShNRf" id="7xBkNBCEdoJ" role="33vP2m">
              <node concept="1pGfFk" id="7xBkNBCEdoT" role="2ShVmc">
                <ref role="37wK5l" to="w1kc:~ModelImports.&lt;init&gt;(org.jetbrains.mps.openapi.model.SModel)" resolve="ModelImports" />
                <node concept="37vLTw" id="7xBkNBCEdoU" role="37wK5m">
                  <ref role="3cqZAo" node="7xBkNBCEcYu" resolve="model" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7xBkNBCEcYB" role="3cqZAp">
          <node concept="3cpWsn" id="7xBkNBCEcYA" role="3cpWs9">
            <property role="TrG5h" value="scanner" />
            <node concept="3uibUv" id="7xBkNBCEcYC" role="1tU5fm">
              <ref role="3uigEE" to="w1kc:~ModelDependencyScanner" resolve="ModelDependencyScanner" />
            </node>
            <node concept="2ShNRf" id="7xBkNBCEdoV" role="33vP2m">
              <node concept="1pGfFk" id="7xBkNBCEdoW" role="2ShVmc">
                <ref role="37wK5l" to="w1kc:~ModelDependencyScanner.&lt;init&gt;()" resolve="ModelDependencyScanner" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7xBkNBCEcYE" role="3cqZAp">
          <node concept="2OqwBi" id="7xBkNBCEdGo" role="3clFbG">
            <node concept="2OqwBi" id="7xBkNBCEdCz" role="2Oq$k0">
              <node concept="37vLTw" id="7xBkNBCEdp7" role="2Oq$k0">
                <ref role="3cqZAo" node="7xBkNBCEcYA" resolve="scanner" />
              </node>
              <node concept="liA8E" id="7xBkNBCEdC$" role="2OqNvi">
                <ref role="37wK5l" to="w1kc:~ModelDependencyScanner.crossModelReferences(boolean)" resolve="crossModelReferences" />
                <node concept="3clFbT" id="7xBkNBCEdC_" role="37wK5m">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="7xBkNBCEdGp" role="2OqNvi">
              <ref role="37wK5l" to="w1kc:~ModelDependencyScanner.walk(org.jetbrains.mps.openapi.model.SModel)" resolve="walk" />
              <node concept="37vLTw" id="7xBkNBCEdGq" role="37wK5m">
                <ref role="3cqZAo" node="7xBkNBCEcYu" resolve="model" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="7xBkNBCEcYJ" role="3cqZAp">
          <node concept="2OqwBi" id="7xBkNBCEdCJ" role="1DdaDG">
            <node concept="37vLTw" id="7xBkNBCEdpc" role="2Oq$k0">
              <ref role="3cqZAo" node="7xBkNBCEcYx" resolve="imports" />
            </node>
            <node concept="liA8E" id="7xBkNBCEdCK" role="2OqNvi">
              <ref role="37wK5l" to="w1kc:~ModelImports.getImportedModels()" resolve="getImportedModels" />
            </node>
          </node>
          <node concept="3cpWsn" id="7xBkNBCEcZe" role="1Duv9x">
            <property role="TrG5h" value="reference" />
            <node concept="3uibUv" id="7xBkNBCEcZg" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
            </node>
          </node>
          <node concept="3clFbS" id="7xBkNBCEcYL" role="2LFqv$">
            <node concept="3cpWs8" id="7xBkNBCEcYN" role="3cqZAp">
              <node concept="3cpWsn" id="7xBkNBCEcYM" role="3cpWs9">
                <property role="TrG5h" value="owner" />
                <node concept="3uibUv" id="7xBkNBCEcYO" role="1tU5fm">
                  <ref role="3uigEE" to="lui2:~SModuleReference" resolve="SModuleReference" />
                </node>
                <node concept="2OqwBi" id="7xBkNBCEdCU" role="33vP2m">
                  <node concept="37vLTw" id="7xBkNBCEdpg" role="2Oq$k0">
                    <ref role="3cqZAo" node="7xBkNBCEcZe" resolve="reference" />
                  </node>
                  <node concept="liA8E" id="7xBkNBCEdCV" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SModelReference.getModuleReference()" resolve="getModuleReference" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="7xBkNBCEcYQ" role="3cqZAp">
              <node concept="1Wc70l" id="7xBkNBCEcYR" role="3clFbw">
                <node concept="3y3z36" id="7xBkNBCEcYS" role="3uHU7B">
                  <node concept="37vLTw" id="7xBkNBCEcYT" role="3uHU7B">
                    <ref role="3cqZAo" node="7xBkNBCEcYM" resolve="owner" />
                  </node>
                  <node concept="10Nm6u" id="7xBkNBCEcYU" role="3uHU7w" />
                </node>
                <node concept="2OqwBi" id="7xBkNBCEdGW" role="3uHU7w">
                  <node concept="2OqwBi" id="7xBkNBCEdDe" role="2Oq$k0">
                    <node concept="37vLTw" id="7xBkNBCEdps" role="2Oq$k0">
                      <ref role="3cqZAo" node="7xBkNBCEcYM" resolve="owner" />
                    </node>
                    <node concept="liA8E" id="7xBkNBCEdDf" role="2OqNvi">
                      <ref role="37wK5l" to="lui2:~SModuleReference.getModuleName()" resolve="getModuleName" />
                    </node>
                  </node>
                  <node concept="liA8E" id="7xBkNBCEdGX" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                    <node concept="Xl_RD" id="7xBkNBCEdGY" role="37wK5m">
                      <property role="Xl_RC" value="@transient" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="7xBkNBCEcYZ" role="3clFbx">
                <node concept="3clFbJ" id="7xBkNBCEcZ0" role="3cqZAp">
                  <node concept="2OqwBi" id="7xBkNBCEdJr" role="3clFbw">
                    <node concept="2OqwBi" id="7xBkNBCEdDx" role="2Oq$k0">
                      <node concept="37vLTw" id="7xBkNBCEdpC" role="2Oq$k0">
                        <ref role="3cqZAo" node="7xBkNBCEcYA" resolve="scanner" />
                      </node>
                      <node concept="liA8E" id="7xBkNBCEdDy" role="2OqNvi">
                        <ref role="37wK5l" to="w1kc:~ModelDependencyScanner.getCrossModelReferences()" resolve="getCrossModelReferences" />
                      </node>
                    </node>
                    <node concept="liA8E" id="7xBkNBCEdJs" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~Set.contains(java.lang.Object)" resolve="contains" />
                      <node concept="37vLTw" id="7xBkNBCEdJt" role="37wK5m">
                        <ref role="3cqZAo" node="7xBkNBCEcZe" resolve="reference" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="7xBkNBCEcZ5" role="3clFbx">
                    <node concept="YS8fn" id="7xBkNBCEcZa" role="3cqZAp">
                      <node concept="2ShNRf" id="7xBkNBCEdpE" role="YScLw">
                        <node concept="1pGfFk" id="7xBkNBCEd_H" role="2ShVmc">
                          <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
                          <node concept="3cpWs3" id="7xBkNBCEd_I" role="37wK5m">
                            <node concept="Xl_RD" id="7xBkNBCEd_J" role="3uHU7B">
                              <property role="Xl_RC" value="Generated aspect still uses transient model " />
                            </node>
                            <node concept="37vLTw" id="7xBkNBCEd_K" role="3uHU7w">
                              <ref role="3cqZAo" node="7xBkNBCEcZe" resolve="reference" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="7xBkNBCEcZb" role="3cqZAp">
                  <node concept="2OqwBi" id="7xBkNBCEdDG" role="3clFbG">
                    <node concept="37vLTw" id="7xBkNBCEd_N" role="2Oq$k0">
                      <ref role="3cqZAo" node="7xBkNBCEcYx" resolve="imports" />
                    </node>
                    <node concept="liA8E" id="7xBkNBCEdDH" role="2OqNvi">
                      <ref role="37wK5l" to="w1kc:~ModelImports.removeModelImport(org.jetbrains.mps.openapi.model.SModelReference)" resolve="removeModelImport" />
                      <node concept="37vLTw" id="7xBkNBCEdDI" role="37wK5m">
                        <ref role="3cqZAo" node="7xBkNBCEcZe" resolve="reference" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7xBkNBCEcZj" role="3cqZAp">
          <node concept="3cpWsn" id="7xBkNBCEcZi" role="3cpWs9">
            <property role="TrG5h" value="module" />
            <node concept="3uibUv" id="7xBkNBCEcZk" role="1tU5fm">
              <ref role="3uigEE" to="z1c3:~AbstractModule" resolve="AbstractModule" />
            </node>
            <node concept="10QFUN" id="7xBkNBCEcZl" role="33vP2m">
              <node concept="2OqwBi" id="7xBkNBCEdDS" role="10QFUP">
                <node concept="37vLTw" id="7xBkNBCEd_S" role="2Oq$k0">
                  <ref role="3cqZAo" node="7xBkNBCEcYu" resolve="model" />
                </node>
                <node concept="liA8E" id="7xBkNBCEdDT" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
                </node>
              </node>
              <node concept="3uibUv" id="7xBkNBCEcZn" role="10QFUM">
                <ref role="3uigEE" to="z1c3:~AbstractModule" resolve="AbstractModule" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="7xBkNBCEcZo" role="3cqZAp">
          <node concept="2ShNRf" id="7xBkNBCEd_U" role="1DdaDG">
            <node concept="1pGfFk" id="7xBkNBCEdAz" role="2ShVmc">
              <property role="373rjd" value="true" />
              <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;(java.util.Collection)" resolve="ArrayList" />
              <node concept="2OqwBi" id="7xBkNBCEdMp" role="37wK5m">
                <node concept="2OqwBi" id="7xBkNBCEdJK" role="2Oq$k0">
                  <node concept="37vLTw" id="7xBkNBCEdE4" role="2Oq$k0">
                    <ref role="3cqZAo" node="7xBkNBCEcZi" resolve="module" />
                  </node>
                  <node concept="liA8E" id="7xBkNBCEdJL" role="2OqNvi">
                    <ref role="37wK5l" to="z1c3:~AbstractModule.getModuleDescriptor()" resolve="getModuleDescriptor" />
                  </node>
                </node>
                <node concept="liA8E" id="7xBkNBCEdMq" role="2OqNvi">
                  <ref role="37wK5l" to="w0gx:~ModuleDescriptor.getDependencies()" resolve="getDependencies" />
                </node>
              </node>
              <node concept="3uibUv" id="7xBkNBCEdAA" role="1pMfVU">
                <ref role="3uigEE" to="w0gx:~Dependency" resolve="Dependency" />
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="7xBkNBCEcZ_" role="1Duv9x">
            <property role="TrG5h" value="dependency" />
            <node concept="3uibUv" id="7xBkNBCEcZB" role="1tU5fm">
              <ref role="3uigEE" to="w0gx:~Dependency" resolve="Dependency" />
            </node>
          </node>
          <node concept="3clFbS" id="7xBkNBCEcZq" role="2LFqv$">
            <node concept="3clFbJ" id="7xBkNBCEcZr" role="3cqZAp">
              <node concept="2OqwBi" id="7xBkNBCEdMV" role="3clFbw">
                <node concept="2OqwBi" id="7xBkNBCEdKc" role="2Oq$k0">
                  <node concept="2OqwBi" id="7xBkNBCEdEy" role="2Oq$k0">
                    <node concept="37vLTw" id="7xBkNBCEdAT" role="2Oq$k0">
                      <ref role="3cqZAo" node="7xBkNBCEcZ_" resolve="dependency" />
                    </node>
                    <node concept="liA8E" id="7xBkNBCEdEz" role="2OqNvi">
                      <ref role="37wK5l" to="w0gx:~Dependency.getModuleRef()" resolve="getModuleRef" />
                    </node>
                  </node>
                  <node concept="liA8E" id="7xBkNBCEdKd" role="2OqNvi">
                    <ref role="37wK5l" to="lui2:~SModuleReference.getModuleName()" resolve="getModuleName" />
                  </node>
                </node>
                <node concept="liA8E" id="7xBkNBCEdMW" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                  <node concept="Xl_RD" id="7xBkNBCEdMX" role="37wK5m">
                    <property role="Xl_RC" value="@transient" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="7xBkNBCEcZx" role="3clFbx">
                <node concept="3clFbF" id="7xBkNBCEcZy" role="3cqZAp">
                  <node concept="2OqwBi" id="7xBkNBCEdEJ" role="3clFbG">
                    <node concept="37vLTw" id="7xBkNBCEdAX" role="2Oq$k0">
                      <ref role="3cqZAo" node="7xBkNBCEcZi" resolve="module" />
                    </node>
                    <node concept="liA8E" id="7xBkNBCEdEK" role="2OqNvi">
                      <ref role="37wK5l" to="z1c3:~AbstractModule.removeDependency(jetbrains.mps.project.structure.modules.Dependency)" resolve="removeDependency" />
                      <node concept="37vLTw" id="7xBkNBCEdEL" role="37wK5m">
                        <ref role="3cqZAo" node="7xBkNBCEcZ_" resolve="dependency" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="7xBkNBCEcZG" role="3cqZAp">
          <node concept="2ShNRf" id="7xBkNBCEdB0" role="1DdaDG">
            <node concept="1pGfFk" id="7xBkNBCEdBD" role="2ShVmc">
              <property role="373rjd" value="true" />
              <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;(java.util.Collection)" resolve="ArrayList" />
              <node concept="2OqwBi" id="7xBkNBCEdXb" role="37wK5m">
                <node concept="2OqwBi" id="7xBkNBCEdNG" role="2Oq$k0">
                  <node concept="2OqwBi" id="7xBkNBCEdKC" role="2Oq$k0">
                    <node concept="37vLTw" id="7xBkNBCEdF4" role="2Oq$k0">
                      <ref role="3cqZAo" node="7xBkNBCEcZi" resolve="module" />
                    </node>
                    <node concept="liA8E" id="7xBkNBCEdKD" role="2OqNvi">
                      <ref role="37wK5l" to="z1c3:~AbstractModule.getModuleDescriptor()" resolve="getModuleDescriptor" />
                    </node>
                  </node>
                  <node concept="liA8E" id="7xBkNBCEdNH" role="2OqNvi">
                    <ref role="37wK5l" to="w0gx:~ModuleDescriptor.getDependencyVersions()" resolve="getDependencyVersions" />
                  </node>
                </node>
                <node concept="liA8E" id="7xBkNBCEdXc" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Map.keySet()" resolve="keySet" />
                </node>
              </node>
              <node concept="3uibUv" id="7xBkNBCEdBH" role="1pMfVU">
                <ref role="3uigEE" to="lui2:~SModuleReference" resolve="SModuleReference" />
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="7xBkNBCEcZW" role="1Duv9x">
            <property role="TrG5h" value="reference" />
            <node concept="3uibUv" id="7xBkNBCEcZY" role="1tU5fm">
              <ref role="3uigEE" to="lui2:~SModuleReference" resolve="SModuleReference" />
            </node>
          </node>
          <node concept="3clFbS" id="7xBkNBCEcZI" role="2LFqv$">
            <node concept="3clFbJ" id="7xBkNBCEcZJ" role="3cqZAp">
              <node concept="2OqwBi" id="7xBkNBCEdL0" role="3clFbw">
                <node concept="2OqwBi" id="7xBkNBCEdFn" role="2Oq$k0">
                  <node concept="37vLTw" id="7xBkNBCEdBS" role="2Oq$k0">
                    <ref role="3cqZAo" node="7xBkNBCEcZW" resolve="reference" />
                  </node>
                  <node concept="liA8E" id="7xBkNBCEdFo" role="2OqNvi">
                    <ref role="37wK5l" to="lui2:~SModuleReference.getModuleName()" resolve="getModuleName" />
                  </node>
                </node>
                <node concept="liA8E" id="7xBkNBCEdL1" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                  <node concept="Xl_RD" id="7xBkNBCEdL2" role="37wK5m">
                    <property role="Xl_RC" value="@transient" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="7xBkNBCEcZO" role="3clFbx">
                <node concept="3clFbF" id="7xBkNBCEcZP" role="3cqZAp">
                  <node concept="2OqwBi" id="7xBkNBCEdSr" role="3clFbG">
                    <node concept="2OqwBi" id="7xBkNBCEdLL" role="2Oq$k0">
                      <node concept="2OqwBi" id="7xBkNBCEdFN" role="2Oq$k0">
                        <node concept="37vLTw" id="7xBkNBCEdCc" role="2Oq$k0">
                          <ref role="3cqZAo" node="7xBkNBCEcZi" resolve="module" />
                        </node>
                        <node concept="liA8E" id="7xBkNBCEdFO" role="2OqNvi">
                          <ref role="37wK5l" to="z1c3:~AbstractModule.getModuleDescriptor()" resolve="getModuleDescriptor" />
                        </node>
                      </node>
                      <node concept="liA8E" id="7xBkNBCEdLM" role="2OqNvi">
                        <ref role="37wK5l" to="w0gx:~ModuleDescriptor.getDependencyVersions()" resolve="getDependencyVersions" />
                      </node>
                    </node>
                    <node concept="liA8E" id="7xBkNBCEdSs" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~Map.remove(java.lang.Object)" resolve="remove" />
                      <node concept="37vLTw" id="7xBkNBCEdSt" role="37wK5m">
                        <ref role="3cqZAo" node="7xBkNBCEcZW" resolve="reference" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="7xBkNBCEcZU" role="3cqZAp">
                  <node concept="2OqwBi" id="7xBkNBCEdG0" role="3clFbG">
                    <node concept="37vLTw" id="7xBkNBCEdCg" role="2Oq$k0">
                      <ref role="3cqZAo" node="7xBkNBCEcZi" resolve="module" />
                    </node>
                    <node concept="liA8E" id="7xBkNBCEdG1" role="2OqNvi">
                      <ref role="37wK5l" to="z1c3:~AbstractModule.setChanged()" resolve="setChanged" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7xBkNBCEd04" role="1B3o_S" />
      <node concept="3cqZAl" id="7xBkNBCEd05" role="3clF45" />
    </node>
  </node>
</model>

