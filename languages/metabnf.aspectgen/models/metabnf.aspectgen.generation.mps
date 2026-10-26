<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:011bf063-59a8-47cb-ac0b-13bb2393ad50(metabnf.aspectgen.generation)">
  <persistence version="9" />
  <languages>
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="6o2a" ref="r:0fbcf19f-c60b-479b-81cb-094b5b2b9f1d(metabnf.structure)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="9toz" ref="9c03c641-469f-49e7-aeed-44a3d19b7253/java:metabnf.usability(metabnf/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="fwk" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.textgen.trace(MPS.Core/)" />
    <import index="ap4t" ref="215c4c45-ba99-49f5-9ab7-4b6901a63cfd/java:jetbrains.mps.generator(MPS.Generator/)" />
    <import index="rplf" ref="r:61914bbb-2720-4ba2-80aa-daf4b51a6cbe(metabnf.plugin)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
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
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
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
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
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
      <concept id="1068581242869" name="jetbrains.mps.baseLanguage.structure.MinusExpression" flags="nn" index="3cpWsd" />
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
      <concept id="1144231330558" name="jetbrains.mps.baseLanguage.structure.ForStatement" flags="nn" index="1Dw8fO">
        <child id="1144231399730" name="condition" index="1Dwp0S" />
        <child id="1144231408325" name="iteration" index="1Dwrff" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1082113931046" name="jetbrains.mps.baseLanguage.structure.ContinueStatement" flags="nn" index="3N13vt" />
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
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
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1143226024141" name="jetbrains.mps.lang.smodel.structure.SModelType" flags="in" index="H_c77" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
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
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="2RLAZYDKbT8">
    <property role="TrG5h" value="UsabilityGeneration" />
    <property role="1EXbeo" value="true" />
    <node concept="3Tm1VV" id="2RLAZYDKbT9" role="1B3o_S" />
    <node concept="Wx3nA" id="2RLAZYDKbTa" role="jymVt">
      <property role="TrG5h" value="GRAMMAR" />
      <property role="3TUv4t" value="true" />
      <node concept="3bZ5Sz" id="2RLAZYE1Icm" role="1tU5fm" />
      <node concept="3Tm6S6" id="2RLAZYDKbTd" role="1B3o_S" />
      <node concept="35c_gC" id="2RLAZYDKcT6" role="33vP2m">
        <ref role="35c_gD" to="6o2a:2b2ZYR3vfui" resolve="grammar" />
      </node>
    </node>
    <node concept="Wx3nA" id="2RLAZYDKbTe" role="jymVt">
      <property role="TrG5h" value="PROFILE" />
      <property role="3TUv4t" value="true" />
      <node concept="3bZ5Sz" id="2RLAZYE1Icn" role="1tU5fm" />
      <node concept="3Tm6S6" id="2RLAZYDKbTh" role="1B3o_S" />
      <node concept="35c_gC" id="2RLAZYDKcT7" role="33vP2m">
        <ref role="35c_gD" to="6o2a:14wlUfKK6zf" resolve="GenerationProfile" />
      </node>
    </node>
    <node concept="Wx3nA" id="2RLAZYDKbTi" role="jymVt">
      <property role="TrG5h" value="SET" />
      <property role="3TUv4t" value="true" />
      <node concept="3bZ5Sz" id="2RLAZYE1Ico" role="1tU5fm" />
      <node concept="3Tm6S6" id="2RLAZYDKbTl" role="1B3o_S" />
      <node concept="35c_gC" id="2RLAZYDKcT8" role="33vP2m">
        <ref role="35c_gD" to="6o2a:$td8qPViAz" resolve="UsabilityAnnotations" />
      </node>
    </node>
    <node concept="Wx3nA" id="2RLAZYDKbTm" role="jymVt">
      <property role="TrG5h" value="GROUP" />
      <property role="3TUv4t" value="true" />
      <node concept="3bZ5Sz" id="2RLAZYE1Icp" role="1tU5fm" />
      <node concept="3Tm6S6" id="2RLAZYDKbTp" role="1B3o_S" />
      <node concept="35c_gC" id="2RLAZYDKcT9" role="33vP2m">
        <ref role="35c_gD" to="6o2a:$td8qPViAI" resolve="OptionalGroupAnnotation" />
      </node>
    </node>
    <node concept="Wx3nA" id="2RLAZYDKbTq" role="jymVt">
      <property role="TrG5h" value="REFERENCE" />
      <property role="3TUv4t" value="true" />
      <node concept="3bZ5Sz" id="2RLAZYE1Icq" role="1tU5fm" />
      <node concept="3Tm6S6" id="2RLAZYDKbTt" role="1B3o_S" />
      <node concept="35c_gC" id="2RLAZYDKcTa" role="33vP2m">
        <ref role="35c_gD" to="6o2a:2b2ZYR3ypJF" resolve="NonterminalReference" />
      </node>
    </node>
    <node concept="Wx3nA" id="2RLAZYDKbTu" role="jymVt">
      <property role="TrG5h" value="KEYWORD" />
      <property role="3TUv4t" value="true" />
      <node concept="3bZ5Sz" id="2RLAZYE1Icr" role="1tU5fm" />
      <node concept="3Tm6S6" id="2RLAZYDKbTx" role="1B3o_S" />
      <node concept="35c_gC" id="2RLAZYDKcTb" role="33vP2m">
        <ref role="35c_gD" to="6o2a:2b2ZYR3xc2x" resolve="Keyword" />
      </node>
    </node>
    <node concept="Wx3nA" id="2RLAZYDKbTy" role="jymVt">
      <property role="TrG5h" value="PROFILE_GRAMMAR" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="2RLAZYDKbTz" role="1tU5fm">
        <ref role="3uigEE" to="c17a:~SReferenceLink" resolve="SReferenceLink" />
      </node>
      <node concept="3Tm6S6" id="2RLAZYDKbT_" role="1B3o_S" />
      <node concept="359W_D" id="2RLAZYDKcTc" role="33vP2m">
        <ref role="359W_E" to="6o2a:14wlUfKK6zf" resolve="GenerationProfile" />
        <ref role="359W_F" to="6o2a:14wlUfKK6zi" resolve="grammar" />
      </node>
    </node>
    <node concept="Wx3nA" id="2RLAZYDKbTA" role="jymVt">
      <property role="TrG5h" value="SET_GRAMMAR" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="2RLAZYDKbTB" role="1tU5fm">
        <ref role="3uigEE" to="c17a:~SReferenceLink" resolve="SReferenceLink" />
      </node>
      <node concept="3Tm6S6" id="2RLAZYDKbTD" role="1B3o_S" />
      <node concept="359W_D" id="2RLAZYDKcTd" role="33vP2m">
        <ref role="359W_E" to="6o2a:$td8qPViAz" resolve="UsabilityAnnotations" />
        <ref role="359W_F" to="6o2a:$td8qPViAC" resolve="grammar" />
      </node>
    </node>
    <node concept="Wx3nA" id="2RLAZYDKbTE" role="jymVt">
      <property role="TrG5h" value="OWNER" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="2RLAZYDKbTF" role="1tU5fm">
        <ref role="3uigEE" to="c17a:~SReferenceLink" resolve="SReferenceLink" />
      </node>
      <node concept="3Tm6S6" id="2RLAZYDKbTH" role="1B3o_S" />
      <node concept="359W_D" id="2RLAZYDKcTe" role="33vP2m">
        <ref role="359W_E" to="6o2a:$td8qPViAI" resolve="OptionalGroupAnnotation" />
        <ref role="359W_F" to="6o2a:$td8qPViAJ" resolve="owner" />
      </node>
    </node>
    <node concept="Wx3nA" id="2RLAZYDKbTI" role="jymVt">
      <property role="TrG5h" value="FIRST" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="2RLAZYDKbTJ" role="1tU5fm">
        <ref role="3uigEE" to="c17a:~SReferenceLink" resolve="SReferenceLink" />
      </node>
      <node concept="3Tm6S6" id="2RLAZYDKbTL" role="1B3o_S" />
      <node concept="359W_D" id="2RLAZYDKcTf" role="33vP2m">
        <ref role="359W_E" to="6o2a:$td8qPViAI" resolve="OptionalGroupAnnotation" />
        <ref role="359W_F" to="6o2a:$td8qPViAK" resolve="first" />
      </node>
    </node>
    <node concept="Wx3nA" id="2RLAZYDKbTM" role="jymVt">
      <property role="TrG5h" value="LAST" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="2RLAZYDKbTN" role="1tU5fm">
        <ref role="3uigEE" to="c17a:~SReferenceLink" resolve="SReferenceLink" />
      </node>
      <node concept="3Tm6S6" id="2RLAZYDKbTP" role="1B3o_S" />
      <node concept="359W_D" id="2RLAZYDKcTg" role="33vP2m">
        <ref role="359W_E" to="6o2a:$td8qPViAI" resolve="OptionalGroupAnnotation" />
        <ref role="359W_F" to="6o2a:$td8qPViAL" resolve="last" />
      </node>
    </node>
    <node concept="Wx3nA" id="2RLAZYDKbTQ" role="jymVt">
      <property role="TrG5h" value="RULE" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="2RLAZYDKbTR" role="1tU5fm">
        <ref role="3uigEE" to="c17a:~SReferenceLink" resolve="SReferenceLink" />
      </node>
      <node concept="3Tm6S6" id="2RLAZYDKbTT" role="1B3o_S" />
      <node concept="359W_D" id="2RLAZYDKcTh" role="33vP2m">
        <ref role="359W_E" to="6o2a:2b2ZYR3ypJF" resolve="NonterminalReference" />
        <ref role="359W_F" to="6o2a:2b2ZYR3ypJI" resolve="rule" />
      </node>
    </node>
    <node concept="Wx3nA" id="2RLAZYDKbTU" role="jymVt">
      <property role="TrG5h" value="TERMS" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="2RLAZYDKbTV" role="1tU5fm">
        <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
      </node>
      <node concept="3Tm6S6" id="2RLAZYDKbTX" role="1B3o_S" />
      <node concept="359W_D" id="2RLAZYDKcTi" role="33vP2m">
        <ref role="359W_E" to="6o2a:2b2ZYR3xc0j" resolve="NonterminalRule" />
        <ref role="359W_F" to="6o2a:2b2ZYR3xc0Q" resolve="terms" />
      </node>
    </node>
    <node concept="Wx3nA" id="2RLAZYDKbTY" role="jymVt">
      <property role="TrG5h" value="ANNOTATIONS" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="2RLAZYDKbTZ" role="1tU5fm">
        <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
      </node>
      <node concept="3Tm6S6" id="2RLAZYDKbU1" role="1B3o_S" />
      <node concept="359W_D" id="2RLAZYDKcTj" role="33vP2m">
        <ref role="359W_E" to="6o2a:$td8qPViAz" resolve="UsabilityAnnotations" />
        <ref role="359W_F" to="6o2a:$td8qPViAD" resolve="annotations" />
      </node>
    </node>
    <node concept="3clFbW" id="2RLAZYDKbU2" role="jymVt">
      <node concept="3cqZAl" id="2RLAZYDKbU3" role="3clF45" />
      <node concept="3clFbS" id="2RLAZYDKbU4" role="3clF47" />
      <node concept="3Tm6S6" id="2RLAZYDKbU5" role="1B3o_S" />
    </node>
    <node concept="2YIFZL" id="2RLAZYDKbU6" role="jymVt">
      <property role="TrG5h" value="flag" />
      <node concept="37vLTG" id="2RLAZYDKbU7" role="3clF46">
        <property role="TrG5h" value="input" />
        <node concept="3Tqbb2" id="2RLAZYE1Ics" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2RLAZYDKbU9" role="3clF46">
        <property role="TrG5h" value="projection" />
        <node concept="17QB3L" id="2RLAZYDMBaF" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="2RLAZYDKbUb" role="3clF47">
        <node concept="3clFbJ" id="2RLAZYDKbUc" role="3cqZAp">
          <node concept="1Wc70l" id="2RLAZYDKbUd" role="3clFbw">
            <node concept="3fqX7Q" id="2RLAZYDKbUe" role="3uHU7B">
              <node concept="2OqwBi" id="2RLAZYDKc37" role="3fr31v">
                <node concept="Xl_RD" id="2RLAZYDKbUg" role="2Oq$k0">
                  <property role="Xl_RC" value="Textual" />
                </node>
                <node concept="liA8E" id="2RLAZYDKc38" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                  <node concept="37vLTw" id="2RLAZYDKc39" role="37wK5m">
                    <ref role="3cqZAo" node="2RLAZYDKbU9" resolve="projection" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3fqX7Q" id="2RLAZYDKbUi" role="3uHU7w">
              <node concept="2OqwBi" id="2RLAZYDKc3o" role="3fr31v">
                <node concept="Xl_RD" id="2RLAZYDKbUk" role="2Oq$k0">
                  <property role="Xl_RC" value="Form" />
                </node>
                <node concept="liA8E" id="2RLAZYDKc3p" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                  <node concept="37vLTw" id="2RLAZYDKc3q" role="37wK5m">
                    <ref role="3cqZAo" node="2RLAZYDKbU9" resolve="projection" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="2RLAZYDKbUn" role="3clFbx">
            <node concept="YS8fn" id="2RLAZYDKbUv" role="3cqZAp">
              <node concept="2YIFZM" id="2RLAZYDKc3t" role="YScLw">
                <ref role="1Pybhc" to="9toz:~ModelNodes" resolve="ModelNodes" />
                <ref role="37wK5l" to="9toz:~ModelNodes.failure(java.lang.String,org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String)" resolve="failure" />
                <node concept="Xl_RD" id="2RLAZYDKc3u" role="37wK5m">
                  <property role="Xl_RC" value="MBNF_PROJECTION_NOT_GENERATED" />
                </node>
                <node concept="37vLTw" id="2RLAZYDKc3v" role="37wK5m">
                  <ref role="3cqZAo" node="2RLAZYDKbU7" resolve="input" />
                </node>
                <node concept="3cpWs3" id="2RLAZYDKc3w" role="37wK5m">
                  <node concept="Xl_RD" id="2RLAZYDKc3x" role="3uHU7B">
                    <property role="Xl_RC" value="No generated route for " />
                  </node>
                  <node concept="37vLTw" id="2RLAZYDKc3y" role="3uHU7w">
                    <ref role="3cqZAo" node="2RLAZYDKbU9" resolve="projection" />
                  </node>
                </node>
                <node concept="Xl_RD" id="2RLAZYDKc3z" role="37wK5m">
                  <property role="Xl_RC" value="Use the textual editor or Inspector form" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2RLAZYDKbUx" role="3cqZAp">
          <node concept="3cpWsn" id="2RLAZYDKbUw" role="3cpWs9">
            <property role="TrG5h" value="source" />
            <node concept="3Tqbb2" id="2RLAZYE1Ict" role="1tU5fm" />
            <node concept="1rXfSq" id="2RLAZYDKbUz" role="33vP2m">
              <ref role="37wK5l" node="2RLAZYDKbYl" resolve="original" />
              <node concept="37vLTw" id="2RLAZYDKbU$" role="37wK5m">
                <ref role="3cqZAo" node="2RLAZYDKbU7" resolve="input" />
              </node>
              <node concept="37vLTw" id="2RLAZYDPOCa" role="37wK5m">
                <ref role="3cqZAo" node="2RLAZYDODqY" resolve="originalModel" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2RLAZYDKbUA" role="3cqZAp">
          <node concept="3cpWsn" id="2RLAZYDKbU_" role="3cpWs9">
            <property role="TrG5h" value="profile" />
            <node concept="3Tqbb2" id="2RLAZYE1Icu" role="1tU5fm" />
            <node concept="1rXfSq" id="2RLAZYDKbUC" role="33vP2m">
              <ref role="37wK5l" node="2RLAZYDKbZI" resolve="profile" />
              <node concept="37vLTw" id="2RLAZYDKbUD" role="37wK5m">
                <ref role="3cqZAo" node="2RLAZYDKbUw" resolve="source" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2RLAZYDKbUE" role="3cqZAp">
          <node concept="3clFbC" id="2RLAZYDKbUF" role="3clFbw">
            <node concept="37vLTw" id="2RLAZYDKbUG" role="3uHU7B">
              <ref role="3cqZAo" node="2RLAZYDKbU_" resolve="profile" />
            </node>
            <node concept="10Nm6u" id="2RLAZYDKbUH" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="2RLAZYDKbUJ" role="3clFbx">
            <node concept="3cpWs6" id="2RLAZYDKbUK" role="3cqZAp">
              <node concept="3K4zz7" id="2RLAZYDKbUP" role="3cqZAk">
                <node concept="2OqwBi" id="2RLAZYDKc7Z" role="3K4Cdx">
                  <node concept="37vLTw" id="2RLAZYDKc3A" role="2Oq$k0">
                    <ref role="3cqZAo" node="2RLAZYDKbU9" resolve="projection" />
                  </node>
                  <node concept="liA8E" id="2RLAZYDKc80" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                    <node concept="Xl_RD" id="2RLAZYDKc81" role="37wK5m">
                      <property role="Xl_RC" value="Form" />
                    </node>
                  </node>
                </node>
                <node concept="Xl_RD" id="2RLAZYDKbUN" role="3K4E3e">
                  <property role="Xl_RC" value="vanilla.checkbox" />
                </node>
                <node concept="Xl_RD" id="2RLAZYDKbUO" role="3K4GZi">
                  <property role="Xl_RC" value="vanilla.keyword" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2RLAZYDKbUQ" role="3cqZAp">
          <node concept="10QFUN" id="2RLAZYDKbUR" role="3cqZAk">
            <node concept="2OqwBi" id="2RLAZYDKccW" role="10QFUP">
              <node concept="2YIFZM" id="2RLAZYDKc3N" role="2Oq$k0">
                <ref role="1Pybhc" to="9toz:~GenerationProfiles" resolve="GenerationProfiles" />
                <ref role="37wK5l" to="9toz:~GenerationProfiles.resolve(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String)" resolve="resolve" />
                <node concept="37vLTw" id="2RLAZYDKc3O" role="37wK5m">
                  <ref role="3cqZAo" node="2RLAZYDKbU_" resolve="profile" />
                </node>
                <node concept="37vLTw" id="2RLAZYDKc3P" role="37wK5m">
                  <ref role="3cqZAo" node="2RLAZYDKbUw" resolve="source" />
                </node>
                <node concept="Xl_RD" id="2RLAZYDKc3Q" role="37wK5m">
                  <property role="Xl_RC" value="Flag" />
                </node>
                <node concept="37vLTw" id="2RLAZYDKc3R" role="37wK5m">
                  <ref role="3cqZAo" node="2RLAZYDKbU9" resolve="projection" />
                </node>
              </node>
              <node concept="liA8E" id="2RLAZYDKccX" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
                <node concept="Xl_RD" id="2RLAZYDKccY" role="37wK5m">
                  <property role="Xl_RC" value="implementation" />
                </node>
              </node>
            </node>
            <node concept="17QB3L" id="2RLAZYDMBaG" role="10QFUM" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2RLAZYDKbV0" role="1B3o_S" />
      <node concept="17QB3L" id="2RLAZYDMBaH" role="3clF45" />
      <node concept="37vLTG" id="2RLAZYDODqY" role="3clF46">
        <property role="TrG5h" value="originalModel" />
        <node concept="H_c77" id="2RLAZYE1Icv" role="1tU5fm" />
      </node>
    </node>
    <node concept="2YIFZL" id="2RLAZYDKbV2" role="jymVt">
      <property role="TrG5h" value="validate" />
      <node concept="37vLTG" id="2RLAZYDKbV3" role="3clF46">
        <property role="TrG5h" value="input" />
        <node concept="3Tqbb2" id="2RLAZYE1Icw" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="2RLAZYDKbV5" role="3clF47">
        <node concept="3cpWs8" id="2RLAZYDKbV7" role="3cqZAp">
          <node concept="3cpWsn" id="2RLAZYDKbV6" role="3cpWs9">
            <property role="TrG5h" value="source" />
            <node concept="3Tqbb2" id="2RLAZYE1Icx" role="1tU5fm" />
            <node concept="1rXfSq" id="2RLAZYDKbV9" role="33vP2m">
              <ref role="37wK5l" node="2RLAZYDKbYl" resolve="original" />
              <node concept="37vLTw" id="2RLAZYDKbVa" role="37wK5m">
                <ref role="3cqZAo" node="2RLAZYDKbV3" resolve="input" />
              </node>
              <node concept="37vLTw" id="2RLAZYDPOCb" role="37wK5m">
                <ref role="3cqZAo" node="2RLAZYDODr0" resolve="originalModel" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2RLAZYDKbVc" role="3cqZAp">
          <node concept="3cpWsn" id="2RLAZYDKbVb" role="3cpWs9">
            <property role="TrG5h" value="grammar" />
            <node concept="3Tqbb2" id="2RLAZYE1Icy" role="1tU5fm" />
            <node concept="1rXfSq" id="2RLAZYDKbVe" role="33vP2m">
              <ref role="37wK5l" node="2RLAZYDKbZe" resolve="grammar" />
              <node concept="37vLTw" id="2RLAZYDKbVf" role="37wK5m">
                <ref role="3cqZAo" node="2RLAZYDKbV6" resolve="source" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2RLAZYDKbVh" role="3cqZAp">
          <node concept="3cpWsn" id="2RLAZYDKbVg" role="3cpWs9">
            <property role="TrG5h" value="profile" />
            <node concept="3Tqbb2" id="2RLAZYE1Icz" role="1tU5fm" />
            <node concept="1rXfSq" id="2RLAZYDKbVj" role="33vP2m">
              <ref role="37wK5l" node="2RLAZYDKbZI" resolve="profile" />
              <node concept="37vLTw" id="2RLAZYDKbVk" role="37wK5m">
                <ref role="3cqZAo" node="2RLAZYDKbV6" resolve="source" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2RLAZYDKbVl" role="3cqZAp">
          <node concept="3y3z36" id="2RLAZYDKbVm" role="3clFbw">
            <node concept="37vLTw" id="2RLAZYDKbVn" role="3uHU7B">
              <ref role="3cqZAo" node="2RLAZYDKbVg" resolve="profile" />
            </node>
            <node concept="10Nm6u" id="2RLAZYDKbVo" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="2RLAZYDKbVq" role="3clFbx">
            <node concept="3cpWs8" id="2RLAZYDKbVs" role="3cqZAp">
              <node concept="3cpWsn" id="2RLAZYDKbVr" role="3cpWs9">
                <property role="TrG5h" value="inspection" />
                <node concept="3uibUv" id="2RLAZYDKbVt" role="1tU5fm">
                  <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
                  <node concept="17QB3L" id="2RLAZYDMBaI" role="11_B2D" />
                  <node concept="3uibUv" id="2RLAZYDKbVv" role="11_B2D">
                    <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                  </node>
                </node>
                <node concept="2YIFZM" id="2RLAZYDKc3U" role="33vP2m">
                  <ref role="1Pybhc" to="9toz:~GenerationProfiles" resolve="GenerationProfiles" />
                  <ref role="37wK5l" to="9toz:~GenerationProfiles.inspect(org.jetbrains.mps.openapi.model.SNode)" resolve="inspect" />
                  <node concept="37vLTw" id="2RLAZYDKc3V" role="37wK5m">
                    <ref role="3cqZAo" node="2RLAZYDKbVg" resolve="profile" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="2RLAZYDKbVz" role="3cqZAp">
              <node concept="3cpWsn" id="2RLAZYDKbVy" role="3cpWs9">
                <property role="TrG5h" value="diagnostics" />
                <node concept="3uibUv" id="2RLAZYDKbV$" role="1tU5fm">
                  <ref role="3uigEE" to="33ny:~List" resolve="List" />
                  <node concept="3uibUv" id="2RLAZYDKbV_" role="11_B2D">
                    <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
                    <node concept="17QB3L" id="2RLAZYDMBaJ" role="11_B2D" />
                    <node concept="17QB3L" id="2RLAZYDMBaK" role="11_B2D" />
                  </node>
                </node>
                <node concept="10QFUN" id="2RLAZYDKbVC" role="33vP2m">
                  <node concept="2OqwBi" id="2RLAZYDKcgI" role="10QFUP">
                    <node concept="37vLTw" id="2RLAZYDKc3Y" role="2Oq$k0">
                      <ref role="3cqZAo" node="2RLAZYDKbVr" resolve="inspection" />
                    </node>
                    <node concept="liA8E" id="2RLAZYDKcgJ" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
                      <node concept="Xl_RD" id="2RLAZYDKcgK" role="37wK5m">
                        <property role="Xl_RC" value="diagnostics" />
                      </node>
                    </node>
                  </node>
                  <node concept="3uibUv" id="2RLAZYDKbVF" role="10QFUM">
                    <ref role="3uigEE" to="33ny:~List" resolve="List" />
                    <node concept="3uibUv" id="2RLAZYDKbVG" role="11_B2D">
                      <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
                      <node concept="17QB3L" id="2RLAZYDMBaL" role="11_B2D" />
                      <node concept="17QB3L" id="2RLAZYDMBaM" role="11_B2D" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="2RLAZYDKbVJ" role="3cqZAp">
              <node concept="3fqX7Q" id="2RLAZYDKbVK" role="3clFbw">
                <node concept="2OqwBi" id="2RLAZYDKckd" role="3fr31v">
                  <node concept="37vLTw" id="2RLAZYDKc43" role="2Oq$k0">
                    <ref role="3cqZAo" node="2RLAZYDKbVy" resolve="diagnostics" />
                  </node>
                  <node concept="liA8E" id="2RLAZYDKcke" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.isEmpty()" resolve="isEmpty" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="2RLAZYDKbVN" role="3clFbx">
                <node concept="3cpWs8" id="2RLAZYDKbVP" role="3cqZAp">
                  <node concept="3cpWsn" id="2RLAZYDKbVO" role="3cpWs9">
                    <property role="TrG5h" value="diagnostic" />
                    <node concept="3uibUv" id="2RLAZYDKbVQ" role="1tU5fm">
                      <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
                      <node concept="17QB3L" id="2RLAZYDMBaN" role="11_B2D" />
                      <node concept="17QB3L" id="2RLAZYDMBaO" role="11_B2D" />
                    </node>
                    <node concept="2OqwBi" id="2RLAZYDKcnF" role="33vP2m">
                      <node concept="37vLTw" id="2RLAZYDKc47" role="2Oq$k0">
                        <ref role="3cqZAo" node="2RLAZYDKbVy" resolve="diagnostics" />
                      </node>
                      <node concept="liA8E" id="2RLAZYDKcnG" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                        <node concept="3cmrfG" id="2RLAZYDKcnH" role="37wK5m">
                          <property role="3cmrfH" value="0" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="YS8fn" id="2RLAZYDKbW3" role="3cqZAp">
                  <node concept="2YIFZM" id="2RLAZYDKc4c" role="YScLw">
                    <ref role="1Pybhc" to="9toz:~ModelNodes" resolve="ModelNodes" />
                    <ref role="37wK5l" to="9toz:~ModelNodes.failure(java.lang.String,org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String)" resolve="failure" />
                    <node concept="2OqwBi" id="2RLAZYDKcET" role="37wK5m">
                      <node concept="37vLTw" id="2RLAZYDKcnK" role="2Oq$k0">
                        <ref role="3cqZAo" node="2RLAZYDKbVO" resolve="diagnostic" />
                      </node>
                      <node concept="liA8E" id="2RLAZYDKcEU" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
                        <node concept="Xl_RD" id="2RLAZYDKcEV" role="37wK5m">
                          <property role="Xl_RC" value="code" />
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="2RLAZYDKc4f" role="37wK5m">
                      <ref role="3cqZAo" node="2RLAZYDKbVg" resolve="profile" />
                    </node>
                    <node concept="2OqwBi" id="2RLAZYDKcIF" role="37wK5m">
                      <node concept="37vLTw" id="2RLAZYDKcnP" role="2Oq$k0">
                        <ref role="3cqZAo" node="2RLAZYDKbVO" resolve="diagnostic" />
                      </node>
                      <node concept="liA8E" id="2RLAZYDKcIG" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
                        <node concept="Xl_RD" id="2RLAZYDKcIH" role="37wK5m">
                          <property role="Xl_RC" value="message" />
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="2RLAZYDKcMt" role="37wK5m">
                      <node concept="37vLTw" id="2RLAZYDKcnU" role="2Oq$k0">
                        <ref role="3cqZAo" node="2RLAZYDKbVO" resolve="diagnostic" />
                      </node>
                      <node concept="liA8E" id="2RLAZYDKcMu" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
                        <node concept="Xl_RD" id="2RLAZYDKcMv" role="37wK5m">
                          <property role="Xl_RC" value="remedy" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="2RLAZYDKbW4" role="3cqZAp">
          <node concept="2OqwBi" id="2RLAZYDKcN9" role="1DdaDG">
            <node concept="liA8E" id="2RLAZYDKcNa" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SModel.getRootNodes()" resolve="getRootNodes" />
            </node>
            <node concept="2JrnkZ" id="2RLAZYE1IbY" role="2Oq$k0">
              <node concept="2YIFZM" id="2RLAZYDRWWD" role="2JrQYb">
                <ref role="1Pybhc" to="33ny:~Objects" resolve="Objects" />
                <ref role="37wK5l" to="33ny:~Objects.requireNonNull(java.lang.Object,java.lang.String)" resolve="requireNonNull" />
                <node concept="2OqwBi" id="2RLAZYDKcof" role="37wK5m">
                  <node concept="liA8E" id="2RLAZYDKcog" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SNode.getModel()" resolve="getModel" />
                  </node>
                  <node concept="2JrnkZ" id="2RLAZYE1IbZ" role="2Oq$k0">
                    <node concept="37vLTw" id="2RLAZYDKc4u" role="2JrQYb">
                      <ref role="3cqZAo" node="2RLAZYDKbVb" resolve="grammar" />
                    </node>
                  </node>
                </node>
                <node concept="Xl_RD" id="2RLAZYDRWWE" role="37wK5m">
                  <property role="Xl_RC" value="Validated attached grammar/group invariant" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="2RLAZYDKbYc" role="1Duv9x">
            <property role="TrG5h" value="root" />
            <node concept="3Tqbb2" id="2RLAZYE1Ic$" role="1tU5fm" />
          </node>
          <node concept="3clFbS" id="2RLAZYDKbW6" role="2LFqv$">
            <node concept="3clFbJ" id="2RLAZYDKbW7" role="3cqZAp">
              <node concept="22lmx$" id="2RLAZYDKbW8" role="3clFbw">
                <node concept="3fqX7Q" id="2RLAZYDKbW9" role="3uHU7B">
                  <node concept="2OqwBi" id="2RLAZYDKcov" role="3fr31v">
                    <node concept="37vLTw" id="2RLAZYDKc4y" role="2Oq$k0">
                      <ref role="3cqZAo" node="2RLAZYDKbTi" resolve="SET" />
                    </node>
                    <node concept="liA8E" id="2RLAZYDKcow" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                      <node concept="2OqwBi" id="2RLAZYDKcPa" role="37wK5m">
                        <node concept="liA8E" id="2RLAZYDKcPb" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        </node>
                        <node concept="2JrnkZ" id="2RLAZYE1Ic0" role="2Oq$k0">
                          <node concept="37vLTw" id="2RLAZYDKcNd" role="2JrQYb">
                            <ref role="3cqZAo" node="2RLAZYDKbYc" resolve="root" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3y3z36" id="2RLAZYDKbWc" role="3uHU7w">
                  <node concept="2OqwBi" id="2RLAZYDKcoF" role="3uHU7B">
                    <node concept="liA8E" id="2RLAZYDKcoG" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.getReferenceTarget(org.jetbrains.mps.openapi.language.SReferenceLink)" resolve="getReferenceTarget" />
                      <node concept="37vLTw" id="2RLAZYDKcoH" role="37wK5m">
                        <ref role="3cqZAo" node="2RLAZYDKbTA" resolve="SET_GRAMMAR" />
                      </node>
                    </node>
                    <node concept="2JrnkZ" id="2RLAZYE1Ic1" role="2Oq$k0">
                      <node concept="37vLTw" id="2RLAZYDKc4B" role="2JrQYb">
                        <ref role="3cqZAo" node="2RLAZYDKbYc" resolve="root" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="2RLAZYDKbWf" role="3uHU7w">
                    <ref role="3cqZAo" node="2RLAZYDKbVb" resolve="grammar" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="2RLAZYDKbWh" role="3clFbx">
                <node concept="3N13vt" id="2RLAZYDKbWg" role="3cqZAp" />
              </node>
            </node>
            <node concept="3clFbF" id="2RLAZYE1Ib$" role="3cqZAp">
              <node concept="1rXfSq" id="2RLAZYE1Ib_" role="3clFbG">
                <ref role="37wK5l" node="2RLAZYE1HNT" resolve="validateMetadata" />
                <node concept="37vLTw" id="2RLAZYE1IbA" role="37wK5m">
                  <ref role="3cqZAo" node="2RLAZYDKbYc" resolve="root" />
                </node>
              </node>
            </node>
            <node concept="1DcWWT" id="2RLAZYDKbWi" role="3cqZAp">
              <node concept="2OqwBi" id="2RLAZYDKcoR" role="1DdaDG">
                <node concept="liA8E" id="2RLAZYDKcoS" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getChildren(org.jetbrains.mps.openapi.language.SContainmentLink)" resolve="getChildren" />
                  <node concept="37vLTw" id="2RLAZYDKcoT" role="37wK5m">
                    <ref role="3cqZAo" node="2RLAZYDKbTY" resolve="ANNOTATIONS" />
                  </node>
                </node>
                <node concept="2JrnkZ" id="2RLAZYE1Ic2" role="2Oq$k0">
                  <node concept="37vLTw" id="2RLAZYDKc4G" role="2JrQYb">
                    <ref role="3cqZAo" node="2RLAZYDKbYc" resolve="root" />
                  </node>
                </node>
              </node>
              <node concept="3cpWsn" id="2RLAZYDKbY7" role="1Duv9x">
                <property role="TrG5h" value="annotation" />
                <node concept="3Tqbb2" id="2RLAZYE1Ic_" role="1tU5fm" />
              </node>
              <node concept="3clFbS" id="2RLAZYDKbWk" role="2LFqv$">
                <node concept="3clFbJ" id="2RLAZYDKbWl" role="3cqZAp">
                  <node concept="22lmx$" id="2RLAZYDKbWm" role="3clFbw">
                    <node concept="22lmx$" id="2RLAZYDKbWn" role="3uHU7B">
                      <node concept="3fqX7Q" id="2RLAZYDKbWo" role="3uHU7B">
                        <node concept="2OqwBi" id="2RLAZYDKcp8" role="3fr31v">
                          <node concept="37vLTw" id="2RLAZYDKc4L" role="2Oq$k0">
                            <ref role="3cqZAo" node="2RLAZYDKbTm" resolve="GROUP" />
                          </node>
                          <node concept="liA8E" id="2RLAZYDKcp9" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                            <node concept="2OqwBi" id="2RLAZYDKcPl" role="37wK5m">
                              <node concept="liA8E" id="2RLAZYDKcPm" role="2OqNvi">
                                <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                              </node>
                              <node concept="2JrnkZ" id="2RLAZYE1Ic3" role="2Oq$k0">
                                <node concept="37vLTw" id="2RLAZYDKcNh" role="2JrQYb">
                                  <ref role="3cqZAo" node="2RLAZYDKbY7" resolve="annotation" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="2RLAZYE1IbI" role="3uHU7w">
                        <node concept="1eOMI4" id="2RLAZYE1IbH" role="2Oq$k0">
                          <node concept="1PxgMI" id="2RLAZYE1IbG" role="1eOMHV">
                            <node concept="37vLTw" id="2RLAZYDKc4R" role="1m5AlR">
                              <ref role="3cqZAo" node="2RLAZYDKbY7" resolve="annotation" />
                            </node>
                            <node concept="chp4Y" id="2RLAZYE280X" role="3oSUPX">
                              <ref role="cht4Q" to="6o2a:$td8qPViA$" resolve="UsabilityAnnotation" />
                            </node>
                          </node>
                        </node>
                        <node concept="3TrcHB" id="2RLAZYE1IbJ" role="2OqNvi">
                          <ref role="3TsBF5" to="6o2a:$td8qPViAA" resolve="suppressed" />
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="2RLAZYE1IbO" role="3uHU7w">
                      <node concept="2OqwBi" id="2RLAZYE1IbM" role="2Oq$k0">
                        <node concept="1eOMI4" id="2RLAZYE1IbL" role="2Oq$k0">
                          <node concept="1PxgMI" id="2RLAZYE1IbK" role="1eOMHV">
                            <node concept="37vLTw" id="2RLAZYDKc54" role="1m5AlR">
                              <ref role="3cqZAo" node="2RLAZYDKbY7" resolve="annotation" />
                            </node>
                            <node concept="chp4Y" id="2RLAZYE280Y" role="3oSUPX">
                              <ref role="cht4Q" to="6o2a:$td8qPViA$" resolve="UsabilityAnnotation" />
                            </node>
                          </node>
                        </node>
                        <node concept="3TrcHB" id="2RLAZYE1IbN" role="2OqNvi">
                          <ref role="3TsBF5" to="6o2a:$td8qPViA_" resolve="origin" />
                        </node>
                      </node>
                      <node concept="21noJN" id="2RLAZYE1IbP" role="2OqNvi">
                        <node concept="21nZrQ" id="2RLAZYE1IbQ" role="21noJM">
                          <ref role="21nZrZ" to="6o2a:$td8qPViAy" resolve="Suggested" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="2RLAZYDKbW$" role="3clFbx">
                    <node concept="3N13vt" id="2RLAZYDKbWz" role="3cqZAp" />
                  </node>
                </node>
                <node concept="3cpWs8" id="2RLAZYDKbWA" role="3cqZAp">
                  <node concept="3cpWsn" id="2RLAZYDKbW_" role="3cpWs9">
                    <property role="TrG5h" value="owner" />
                    <node concept="3Tqbb2" id="2RLAZYE1IcA" role="1tU5fm" />
                    <node concept="2OqwBi" id="2RLAZYDKcpR" role="33vP2m">
                      <node concept="liA8E" id="2RLAZYDKcpS" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getReferenceTarget(org.jetbrains.mps.openapi.language.SReferenceLink)" resolve="getReferenceTarget" />
                        <node concept="37vLTw" id="2RLAZYDKcpT" role="37wK5m">
                          <ref role="3cqZAo" node="2RLAZYDKbTE" resolve="OWNER" />
                        </node>
                      </node>
                      <node concept="2JrnkZ" id="2RLAZYE1Ic4" role="2Oq$k0">
                        <node concept="37vLTw" id="2RLAZYDKc58" role="2JrQYb">
                          <ref role="3cqZAo" node="2RLAZYDKbY7" resolve="annotation" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="2RLAZYDKbWF" role="3cqZAp">
                  <node concept="3cpWsn" id="2RLAZYDKbWE" role="3cpWs9">
                    <property role="TrG5h" value="first" />
                    <node concept="3Tqbb2" id="2RLAZYE1IcB" role="1tU5fm" />
                    <node concept="2OqwBi" id="2RLAZYDKcq3" role="33vP2m">
                      <node concept="liA8E" id="2RLAZYDKcq4" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getReferenceTarget(org.jetbrains.mps.openapi.language.SReferenceLink)" resolve="getReferenceTarget" />
                        <node concept="37vLTw" id="2RLAZYDKcq5" role="37wK5m">
                          <ref role="3cqZAo" node="2RLAZYDKbTI" resolve="FIRST" />
                        </node>
                      </node>
                      <node concept="2JrnkZ" id="2RLAZYE1Ic5" role="2Oq$k0">
                        <node concept="37vLTw" id="2RLAZYDKc5d" role="2JrQYb">
                          <ref role="3cqZAo" node="2RLAZYDKbY7" resolve="annotation" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="2RLAZYDKbWK" role="3cqZAp">
                  <node concept="3cpWsn" id="2RLAZYDKbWJ" role="3cpWs9">
                    <property role="TrG5h" value="last" />
                    <node concept="3Tqbb2" id="2RLAZYE1IcC" role="1tU5fm" />
                    <node concept="2OqwBi" id="2RLAZYDKcqf" role="33vP2m">
                      <node concept="liA8E" id="2RLAZYDKcqg" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getReferenceTarget(org.jetbrains.mps.openapi.language.SReferenceLink)" resolve="getReferenceTarget" />
                        <node concept="37vLTw" id="2RLAZYDKcqh" role="37wK5m">
                          <ref role="3cqZAo" node="2RLAZYDKbTM" resolve="LAST" />
                        </node>
                      </node>
                      <node concept="2JrnkZ" id="2RLAZYE1Ic6" role="2Oq$k0">
                        <node concept="37vLTw" id="2RLAZYDKc5i" role="2JrQYb">
                          <ref role="3cqZAo" node="2RLAZYDKbY7" resolve="annotation" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="2RLAZYDKbWP" role="3cqZAp">
                  <node concept="3cpWsn" id="2RLAZYDKbWO" role="3cpWs9">
                    <property role="TrG5h" value="terms" />
                    <node concept="3uibUv" id="2RLAZYDKbWQ" role="1tU5fm">
                      <ref role="3uigEE" to="33ny:~List" resolve="List" />
                      <node concept="3Tqbb2" id="2RLAZYE1IcD" role="11_B2D" />
                    </node>
                    <node concept="2ShNRf" id="2RLAZYDKc5l" role="33vP2m">
                      <node concept="1pGfFk" id="2RLAZYDKc5q" role="2ShVmc">
                        <property role="373rjd" value="true" />
                        <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                        <node concept="3Tqbb2" id="2RLAZYE1IcE" role="1pMfVU" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="2RLAZYDKbWU" role="3cqZAp">
                  <node concept="3y3z36" id="2RLAZYDKbWV" role="3clFbw">
                    <node concept="37vLTw" id="2RLAZYDKbWW" role="3uHU7B">
                      <ref role="3cqZAo" node="2RLAZYDKbW_" resolve="owner" />
                    </node>
                    <node concept="10Nm6u" id="2RLAZYDKbWX" role="3uHU7w" />
                  </node>
                  <node concept="3clFbS" id="2RLAZYDKbX8" role="3clFbx">
                    <node concept="1DcWWT" id="2RLAZYDKbWY" role="3cqZAp">
                      <node concept="2OqwBi" id="2RLAZYDKcqs" role="1DdaDG">
                        <node concept="liA8E" id="2RLAZYDKcqt" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SNode.getChildren(org.jetbrains.mps.openapi.language.SContainmentLink)" resolve="getChildren" />
                          <node concept="37vLTw" id="2RLAZYDKcqu" role="37wK5m">
                            <ref role="3cqZAo" node="2RLAZYDKbTU" resolve="TERMS" />
                          </node>
                        </node>
                        <node concept="2JrnkZ" id="2RLAZYE1Ic7" role="2Oq$k0">
                          <node concept="37vLTw" id="2RLAZYDKc5u" role="2JrQYb">
                            <ref role="3cqZAo" node="2RLAZYDKbW_" resolve="owner" />
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWsn" id="2RLAZYDKbX3" role="1Duv9x">
                        <property role="TrG5h" value="term" />
                        <node concept="3Tqbb2" id="2RLAZYE1IcF" role="1tU5fm" />
                      </node>
                      <node concept="3clFbS" id="2RLAZYDKbX2" role="2LFqv$">
                        <node concept="3clFbF" id="2RLAZYDKbWZ" role="3cqZAp">
                          <node concept="2OqwBi" id="2RLAZYDKcsL" role="3clFbG">
                            <node concept="37vLTw" id="2RLAZYDKc5z" role="2Oq$k0">
                              <ref role="3cqZAo" node="2RLAZYDKbWO" resolve="terms" />
                            </node>
                            <node concept="liA8E" id="2RLAZYDKcsM" role="2OqNvi">
                              <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                              <node concept="37vLTw" id="2RLAZYDKcsN" role="37wK5m">
                                <ref role="3cqZAo" node="2RLAZYDKbX3" resolve="term" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="2RLAZYDKbXa" role="3cqZAp">
                  <node concept="3cpWsn" id="2RLAZYDKbX9" role="3cpWs9">
                    <property role="TrG5h" value="optionalChild" />
                    <node concept="10P_77" id="2RLAZYDKbXb" role="1tU5fm" />
                    <node concept="3clFbT" id="2RLAZYDKbXc" role="33vP2m" />
                  </node>
                </node>
                <node concept="1DcWWT" id="2RLAZYDKbXd" role="3cqZAp">
                  <node concept="2YIFZM" id="2RLAZYDKc5C" role="1DdaDG">
                    <ref role="1Pybhc" to="9toz:~ModelNodes" resolve="ModelNodes" />
                    <ref role="37wK5l" to="9toz:~ModelNodes.tree(org.jetbrains.mps.openapi.model.SNode)" resolve="tree" />
                    <node concept="37vLTw" id="2RLAZYDKc5D" role="37wK5m">
                      <ref role="3cqZAo" node="2RLAZYDKbVb" resolve="grammar" />
                    </node>
                  </node>
                  <node concept="3cpWsn" id="2RLAZYDKbXz" role="1Duv9x">
                    <property role="TrG5h" value="candidate" />
                    <node concept="3Tqbb2" id="2RLAZYE1IcG" role="1tU5fm" />
                  </node>
                  <node concept="3clFbS" id="2RLAZYDKbXf" role="2LFqv$">
                    <node concept="3clFbJ" id="2RLAZYDKbXg" role="3cqZAp">
                      <node concept="1Wc70l" id="2RLAZYDKbXh" role="3clFbw">
                        <node concept="1Wc70l" id="2RLAZYDKbXi" role="3uHU7B">
                          <node concept="2OqwBi" id="2RLAZYDKct2" role="3uHU7B">
                            <node concept="37vLTw" id="2RLAZYDKc5G" role="2Oq$k0">
                              <ref role="3cqZAo" node="2RLAZYDKbTq" resolve="REFERENCE" />
                            </node>
                            <node concept="liA8E" id="2RLAZYDKct3" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                              <node concept="2OqwBi" id="2RLAZYDKcPw" role="37wK5m">
                                <node concept="liA8E" id="2RLAZYDKcPx" role="2OqNvi">
                                  <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                                </node>
                                <node concept="2JrnkZ" id="2RLAZYE1Ic8" role="2Oq$k0">
                                  <node concept="37vLTw" id="2RLAZYDKcNl" role="2JrQYb">
                                    <ref role="3cqZAo" node="2RLAZYDKbXz" resolve="candidate" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbC" id="2RLAZYDKbXl" role="3uHU7w">
                            <node concept="2OqwBi" id="2RLAZYDKcte" role="3uHU7B">
                              <node concept="liA8E" id="2RLAZYDKctf" role="2OqNvi">
                                <ref role="37wK5l" to="mhbf:~SNode.getReferenceTarget(org.jetbrains.mps.openapi.language.SReferenceLink)" resolve="getReferenceTarget" />
                                <node concept="37vLTw" id="2RLAZYDKctg" role="37wK5m">
                                  <ref role="3cqZAo" node="2RLAZYDKbTQ" resolve="RULE" />
                                </node>
                              </node>
                              <node concept="2JrnkZ" id="2RLAZYE1Ic9" role="2Oq$k0">
                                <node concept="37vLTw" id="2RLAZYDKc5L" role="2JrQYb">
                                  <ref role="3cqZAo" node="2RLAZYDKbXz" resolve="candidate" />
                                </node>
                              </node>
                            </node>
                            <node concept="37vLTw" id="2RLAZYDKbXo" role="3uHU7w">
                              <ref role="3cqZAo" node="2RLAZYDKbW_" resolve="owner" />
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="2RLAZYE1IbV" role="3uHU7w">
                          <node concept="2OqwBi" id="2RLAZYE1IbT" role="2Oq$k0">
                            <node concept="1eOMI4" id="2RLAZYE1IbS" role="2Oq$k0">
                              <node concept="1PxgMI" id="2RLAZYE1IbR" role="1eOMHV">
                                <node concept="37vLTw" id="2RLAZYDKc5Z" role="1m5AlR">
                                  <ref role="3cqZAo" node="2RLAZYDKbXz" resolve="candidate" />
                                </node>
                                <node concept="chp4Y" id="2RLAZYE280Z" role="3oSUPX">
                                  <ref role="cht4Q" to="6o2a:2b2ZYR3ypJF" resolve="NonterminalReference" />
                                </node>
                              </node>
                            </node>
                            <node concept="3TrcHB" id="2RLAZYE1IbU" role="2OqNvi">
                              <ref role="3TsBF5" to="6o2a:21bD4dVyEsP" resolve="card" />
                            </node>
                          </node>
                          <node concept="21noJN" id="2RLAZYE1IbW" role="2OqNvi">
                            <node concept="21nZrQ" id="2RLAZYE1IbX" role="21noJM">
                              <ref role="21nZrZ" to="6o2a:21bD4dVyEsO" resolve="AtMostOne" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="2RLAZYDKbXy" role="3clFbx">
                        <node concept="3clFbF" id="2RLAZYDKbXu" role="3cqZAp">
                          <node concept="37vLTI" id="2RLAZYDKbXv" role="3clFbG">
                            <node concept="37vLTw" id="2RLAZYDKbXw" role="37vLTJ">
                              <ref role="3cqZAo" node="2RLAZYDKbX9" resolve="optionalChild" />
                            </node>
                            <node concept="3clFbT" id="2RLAZYDKbXx" role="37vLTx">
                              <property role="3clFbU" value="true" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="2RLAZYDKbXC" role="3cqZAp">
                  <node concept="22lmx$" id="2RLAZYDKbXD" role="3clFbw">
                    <node concept="22lmx$" id="2RLAZYDKbXE" role="3uHU7B">
                      <node concept="22lmx$" id="2RLAZYDKbXF" role="3uHU7B">
                        <node concept="22lmx$" id="2RLAZYDKbXG" role="3uHU7B">
                          <node concept="3eOVzh" id="2RLAZYDKbXH" role="3uHU7B">
                            <node concept="2OqwBi" id="2RLAZYDKcw6" role="3uHU7B">
                              <node concept="37vLTw" id="2RLAZYDKc63" role="2Oq$k0">
                                <ref role="3cqZAo" node="2RLAZYDKbWO" resolve="terms" />
                              </node>
                              <node concept="liA8E" id="2RLAZYDKcw7" role="2OqNvi">
                                <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                              </node>
                            </node>
                            <node concept="3cmrfG" id="2RLAZYDKbXJ" role="3uHU7w">
                              <property role="3cmrfH" value="2" />
                            </node>
                          </node>
                          <node concept="3y3z36" id="2RLAZYDKbXK" role="3uHU7w">
                            <node concept="2OqwBi" id="2RLAZYDKcyq" role="3uHU7B">
                              <node concept="37vLTw" id="2RLAZYDKc67" role="2Oq$k0">
                                <ref role="3cqZAo" node="2RLAZYDKbWO" resolve="terms" />
                              </node>
                              <node concept="liA8E" id="2RLAZYDKcyr" role="2OqNvi">
                                <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                                <node concept="3cmrfG" id="2RLAZYDKcys" role="37wK5m">
                                  <property role="3cmrfH" value="0" />
                                </node>
                              </node>
                            </node>
                            <node concept="37vLTw" id="2RLAZYDKbXN" role="3uHU7w">
                              <ref role="3cqZAo" node="2RLAZYDKbWE" resolve="first" />
                            </node>
                          </node>
                        </node>
                        <node concept="3y3z36" id="2RLAZYDKbXO" role="3uHU7w">
                          <node concept="2OqwBi" id="2RLAZYDKc$J" role="3uHU7B">
                            <node concept="37vLTw" id="2RLAZYDKc6c" role="2Oq$k0">
                              <ref role="3cqZAo" node="2RLAZYDKbWO" resolve="terms" />
                            </node>
                            <node concept="liA8E" id="2RLAZYDKc$K" role="2OqNvi">
                              <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                              <node concept="3cpWsd" id="2RLAZYDKc$L" role="37wK5m">
                                <node concept="2OqwBi" id="2RLAZYDKcRO" role="3uHU7B">
                                  <node concept="37vLTw" id="2RLAZYDKcNp" role="2Oq$k0">
                                    <ref role="3cqZAo" node="2RLAZYDKbWO" resolve="terms" />
                                  </node>
                                  <node concept="liA8E" id="2RLAZYDKcRP" role="2OqNvi">
                                    <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                                  </node>
                                </node>
                                <node concept="3cmrfG" id="2RLAZYDKc$N" role="3uHU7w">
                                  <property role="3cmrfH" value="1" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="37vLTw" id="2RLAZYDKbXT" role="3uHU7w">
                            <ref role="3cqZAo" node="2RLAZYDKbWJ" resolve="last" />
                          </node>
                        </node>
                      </node>
                      <node concept="3fqX7Q" id="2RLAZYDKbXU" role="3uHU7w">
                        <node concept="2OqwBi" id="2RLAZYDKc_2" role="3fr31v">
                          <node concept="37vLTw" id="2RLAZYDKc6j" role="2Oq$k0">
                            <ref role="3cqZAo" node="2RLAZYDKbTu" resolve="KEYWORD" />
                          </node>
                          <node concept="liA8E" id="2RLAZYDKc_3" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                            <node concept="2OqwBi" id="2RLAZYDKcS0" role="37wK5m">
                              <node concept="liA8E" id="2RLAZYDKcS1" role="2OqNvi">
                                <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                              </node>
                              <node concept="2JrnkZ" id="2RLAZYE1Ica" role="2Oq$k0">
                                <node concept="2YIFZM" id="2RLAZYDRWWJ" role="2JrQYb">
                                  <ref role="1Pybhc" to="33ny:~Objects" resolve="Objects" />
                                  <ref role="37wK5l" to="33ny:~Objects.requireNonNull(java.lang.Object,java.lang.String)" resolve="requireNonNull" />
                                  <node concept="37vLTw" id="2RLAZYDKcNt" role="37wK5m">
                                    <ref role="3cqZAo" node="2RLAZYDKbWE" resolve="first" />
                                  </node>
                                  <node concept="Xl_RD" id="2RLAZYDRWWK" role="37wK5m">
                                    <property role="Xl_RC" value="Validated attached grammar/group invariant" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3fqX7Q" id="2RLAZYDKbXX" role="3uHU7w">
                      <node concept="37vLTw" id="2RLAZYDKbXY" role="3fr31v">
                        <ref role="3cqZAo" node="2RLAZYDKbX9" resolve="optionalChild" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="2RLAZYDKbY0" role="3clFbx">
                    <node concept="YS8fn" id="2RLAZYDKbY6" role="3cqZAp">
                      <node concept="2YIFZM" id="2RLAZYDKc6o" role="YScLw">
                        <ref role="1Pybhc" to="9toz:~ModelNodes" resolve="ModelNodes" />
                        <ref role="37wK5l" to="9toz:~ModelNodes.failure(java.lang.String,org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String)" resolve="failure" />
                        <node concept="Xl_RD" id="2RLAZYDKc6p" role="37wK5m">
                          <property role="Xl_RC" value="MBNF_GROUP_REQUIRES_LOWERING" />
                        </node>
                        <node concept="37vLTw" id="2RLAZYDKc6q" role="37wK5m">
                          <ref role="3cqZAo" node="2RLAZYDKbY7" resolve="annotation" />
                        </node>
                        <node concept="Xl_RD" id="2RLAZYDKc6r" role="37wK5m">
                          <property role="Xl_RC" value="Interactive groups require a whole keyword-led rule reached through an existing optional child" />
                        </node>
                        <node concept="Xl_RD" id="2RLAZYDKc6s" role="37wK5m">
                          <property role="Xl_RC" value="Use an optional reference to a keyword/payload rule; flat ranges are not structurally lowered" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2RLAZYDKbYh" role="3cqZAp">
          <node concept="3clFbT" id="2RLAZYDKbYi" role="3cqZAk">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2RLAZYDKbYj" role="1B3o_S" />
      <node concept="10P_77" id="2RLAZYDKbYk" role="3clF45" />
      <node concept="37vLTG" id="2RLAZYDODr0" role="3clF46">
        <property role="TrG5h" value="originalModel" />
        <node concept="H_c77" id="2RLAZYE1IcH" role="1tU5fm" />
      </node>
    </node>
    <node concept="2YIFZL" id="2RLAZYDKbYl" role="jymVt">
      <property role="TrG5h" value="original" />
      <node concept="37vLTG" id="2RLAZYDKbYm" role="3clF46">
        <property role="TrG5h" value="input" />
        <node concept="3Tqbb2" id="2RLAZYE1IcI" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="2RLAZYDKbYo" role="3clF47">
        <node concept="3clFbJ" id="2RLAZYDKbYp" role="3cqZAp">
          <node concept="22lmx$" id="2RLAZYDKbYq" role="3clFbw">
            <node concept="3clFbC" id="2RLAZYDKbYr" role="3uHU7B">
              <node concept="37vLTw" id="2RLAZYDKbYs" role="3uHU7B">
                <ref role="3cqZAo" node="2RLAZYDKbYm" resolve="input" />
              </node>
              <node concept="10Nm6u" id="2RLAZYDKbYt" role="3uHU7w" />
            </node>
            <node concept="3clFbC" id="2RLAZYDKbYu" role="3uHU7w">
              <node concept="2OqwBi" id="2RLAZYDKc_e" role="3uHU7B">
                <node concept="liA8E" id="2RLAZYDKc_f" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getModel()" resolve="getModel" />
                </node>
                <node concept="2JrnkZ" id="2RLAZYE1Icb" role="2Oq$k0">
                  <node concept="37vLTw" id="2RLAZYDKc6v" role="2JrQYb">
                    <ref role="3cqZAo" node="2RLAZYDKbYm" resolve="input" />
                  </node>
                </node>
              </node>
              <node concept="10Nm6u" id="2RLAZYDKbYw" role="3uHU7w" />
            </node>
          </node>
          <node concept="3clFbS" id="2RLAZYDKbYy" role="3clFbx">
            <node concept="YS8fn" id="2RLAZYDKbYC" role="3cqZAp">
              <node concept="2YIFZM" id="2RLAZYDKc6z" role="YScLw">
                <ref role="1Pybhc" to="9toz:~ModelNodes" resolve="ModelNodes" />
                <ref role="37wK5l" to="9toz:~ModelNodes.failure(java.lang.String,org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String)" resolve="failure" />
                <node concept="Xl_RD" id="2RLAZYDKc6$" role="37wK5m">
                  <property role="Xl_RC" value="MBNF_GENERATION_INPUT" />
                </node>
                <node concept="37vLTw" id="2RLAZYDKc6_" role="37wK5m">
                  <ref role="3cqZAo" node="2RLAZYDKbYm" resolve="input" />
                </node>
                <node concept="Xl_RD" id="2RLAZYDKc6A" role="37wK5m">
                  <property role="Xl_RC" value="Missing attached generation input" />
                </node>
                <node concept="Xl_RD" id="2RLAZYDKc6B" role="37wK5m">
                  <property role="Xl_RC" value="Generate an attached grammar" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2RLAZYDKbYE" role="3cqZAp">
          <node concept="3cpWsn" id="2RLAZYDKbYD" role="3cpWs9">
            <property role="TrG5h" value="source" />
            <node concept="3Tqbb2" id="2RLAZYE1IcJ" role="1tU5fm" />
            <node concept="2YIFZM" id="2RLAZYDKc6E" role="33vP2m">
              <ref role="1Pybhc" to="fwk:~TracingUtil" resolve="TracingUtil" />
              <ref role="37wK5l" to="fwk:~TracingUtil.getInputNode(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.module.SRepository)" resolve="getInputNode" />
              <node concept="37vLTw" id="2RLAZYDKc6F" role="37wK5m">
                <ref role="3cqZAo" node="2RLAZYDKbYm" resolve="input" />
              </node>
              <node concept="2OqwBi" id="2RLAZYDODr4" role="37wK5m">
                <node concept="liA8E" id="2RLAZYDODr6" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SModel.getRepository()" resolve="getRepository" />
                </node>
                <node concept="2JrnkZ" id="2RLAZYE1Icc" role="2Oq$k0">
                  <node concept="37vLTw" id="2RLAZYDODr5" role="2JrQYb">
                    <ref role="3cqZAo" node="2RLAZYDODr2" resolve="originalModel" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2RLAZYDKbYK" role="3cqZAp">
          <node concept="3clFbC" id="2RLAZYDKbYL" role="3clFbw">
            <node concept="37vLTw" id="2RLAZYDKbYM" role="3uHU7B">
              <ref role="3cqZAo" node="2RLAZYDKbYD" resolve="source" />
            </node>
            <node concept="10Nm6u" id="2RLAZYDKbYN" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="2RLAZYDKbYS" role="3clFbx">
            <node concept="3clFbF" id="2RLAZYDKbYO" role="3cqZAp">
              <node concept="37vLTI" id="2RLAZYDKbYP" role="3clFbG">
                <node concept="37vLTw" id="2RLAZYDKbYQ" role="37vLTJ">
                  <ref role="3cqZAo" node="2RLAZYDKbYD" resolve="source" />
                </node>
                <node concept="37vLTw" id="2RLAZYDKbYR" role="37vLTx">
                  <ref role="3cqZAo" node="2RLAZYDKbYm" resolve="input" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2RLAZYDKbYT" role="3cqZAp">
          <node concept="22lmx$" id="2RLAZYDKbYU" role="3clFbw">
            <node concept="3clFbC" id="2RLAZYDKbYV" role="3uHU7B">
              <node concept="2OqwBi" id="2RLAZYDKc_A" role="3uHU7B">
                <node concept="liA8E" id="2RLAZYDKc_B" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getModel()" resolve="getModel" />
                </node>
                <node concept="2JrnkZ" id="2RLAZYE1Icd" role="2Oq$k0">
                  <node concept="37vLTw" id="2RLAZYDKc6K" role="2JrQYb">
                    <ref role="3cqZAo" node="2RLAZYDKbYD" resolve="source" />
                  </node>
                </node>
              </node>
              <node concept="10Nm6u" id="2RLAZYDKbYX" role="3uHU7w" />
            </node>
            <node concept="2ZW3vV" id="2RLAZYDKbZ1" role="3uHU7w">
              <node concept="2OqwBi" id="2RLAZYDKcOo" role="2ZW6bz">
                <node concept="liA8E" id="2RLAZYDKcOp" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
                </node>
                <node concept="2JrnkZ" id="2RLAZYE1Ice" role="2Oq$k0">
                  <node concept="2YIFZM" id="2RLAZYDRWWF" role="2JrQYb">
                    <ref role="1Pybhc" to="33ny:~Objects" resolve="Objects" />
                    <ref role="37wK5l" to="33ny:~Objects.requireNonNull(java.lang.Object,java.lang.String)" resolve="requireNonNull" />
                    <node concept="2OqwBi" id="2RLAZYDKc_U" role="37wK5m">
                      <node concept="liA8E" id="2RLAZYDKc_V" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getModel()" resolve="getModel" />
                      </node>
                      <node concept="2JrnkZ" id="2RLAZYE1Icf" role="2Oq$k0">
                        <node concept="37vLTw" id="2RLAZYDKc6W" role="2JrQYb">
                          <ref role="3cqZAo" node="2RLAZYDKbYD" resolve="source" />
                        </node>
                      </node>
                    </node>
                    <node concept="Xl_RD" id="2RLAZYDRWWG" role="37wK5m">
                      <property role="Xl_RC" value="Validated attached grammar/group invariant" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3uibUv" id="2RLAZYDKbZ0" role="2ZW6by">
                <ref role="3uigEE" to="ap4t:~TransientModelsModule" resolve="TransientModelsModule" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="2RLAZYDKbZ3" role="3clFbx">
            <node concept="YS8fn" id="2RLAZYDKbZ9" role="3cqZAp">
              <node concept="2YIFZM" id="2RLAZYDKc70" role="YScLw">
                <ref role="1Pybhc" to="9toz:~ModelNodes" resolve="ModelNodes" />
                <ref role="37wK5l" to="9toz:~ModelNodes.failure(java.lang.String,org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String)" resolve="failure" />
                <node concept="Xl_RD" id="2RLAZYDKc71" role="37wK5m">
                  <property role="Xl_RC" value="MBNF_SOURCE_TRACE_MISSING" />
                </node>
                <node concept="37vLTw" id="2RLAZYDKc72" role="37wK5m">
                  <ref role="3cqZAo" node="2RLAZYDKbYm" resolve="input" />
                </node>
                <node concept="Xl_RD" id="2RLAZYDKc73" role="37wK5m">
                  <property role="Xl_RC" value="The authored source cannot be resolved" />
                </node>
                <node concept="Xl_RD" id="2RLAZYDKc74" role="37wK5m">
                  <property role="Xl_RC" value="Regenerate from the original grammar with source traces" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2RLAZYDKbZa" role="3cqZAp">
          <node concept="37vLTw" id="2RLAZYDKbZb" role="3cqZAk">
            <ref role="3cqZAo" node="2RLAZYDKbYD" resolve="source" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="2RLAZYDKbZc" role="1B3o_S" />
      <node concept="3Tqbb2" id="2RLAZYE1IcK" role="3clF45" />
      <node concept="37vLTG" id="2RLAZYDODr2" role="3clF46">
        <property role="TrG5h" value="originalModel" />
        <node concept="H_c77" id="2RLAZYE1IcL" role="1tU5fm" />
      </node>
    </node>
    <node concept="2YIFZL" id="2RLAZYDKbZe" role="jymVt">
      <property role="TrG5h" value="grammar" />
      <node concept="37vLTG" id="2RLAZYDKbZf" role="3clF46">
        <property role="TrG5h" value="source" />
        <node concept="3Tqbb2" id="2RLAZYE1IcM" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="2RLAZYDKbZh" role="3clF47">
        <node concept="1Dw8fO" id="2RLAZYDKbZi" role="3cqZAp">
          <node concept="3cpWsn" id="2RLAZYDKbZj" role="1Duv9x">
            <property role="TrG5h" value="node" />
            <node concept="3Tqbb2" id="2RLAZYE1IcN" role="1tU5fm" />
            <node concept="37vLTw" id="2RLAZYDKbZm" role="33vP2m">
              <ref role="3cqZAo" node="2RLAZYDKbZf" resolve="source" />
            </node>
          </node>
          <node concept="3y3z36" id="2RLAZYDKbZn" role="1Dwp0S">
            <node concept="37vLTw" id="2RLAZYDKbZo" role="3uHU7B">
              <ref role="3cqZAo" node="2RLAZYDKbZj" resolve="node" />
            </node>
            <node concept="10Nm6u" id="2RLAZYDKbZp" role="3uHU7w" />
          </node>
          <node concept="37vLTI" id="2RLAZYDKbZr" role="1Dwrff">
            <node concept="37vLTw" id="2RLAZYDKbZs" role="37vLTJ">
              <ref role="3cqZAo" node="2RLAZYDKbZj" resolve="node" />
            </node>
            <node concept="2OqwBi" id="2RLAZYDKcA6" role="37vLTx">
              <node concept="liA8E" id="2RLAZYDKcA7" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getParent()" resolve="getParent" />
              </node>
              <node concept="2JrnkZ" id="2RLAZYE1Icg" role="2Oq$k0">
                <node concept="37vLTw" id="2RLAZYDKc77" role="2JrQYb">
                  <ref role="3cqZAo" node="2RLAZYDKbZj" resolve="node" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="2RLAZYDKbZv" role="2LFqv$">
            <node concept="3clFbJ" id="2RLAZYDKbZw" role="3cqZAp">
              <node concept="2OqwBi" id="2RLAZYDKcAm" role="3clFbw">
                <node concept="37vLTw" id="2RLAZYDKc7b" role="2Oq$k0">
                  <ref role="3cqZAo" node="2RLAZYDKbTa" resolve="GRAMMAR" />
                </node>
                <node concept="liA8E" id="2RLAZYDKcAn" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                  <node concept="2OqwBi" id="2RLAZYDKcSv" role="37wK5m">
                    <node concept="liA8E" id="2RLAZYDKcSw" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                    </node>
                    <node concept="2JrnkZ" id="2RLAZYE1Ich" role="2Oq$k0">
                      <node concept="37vLTw" id="2RLAZYDKcOs" role="2JrQYb">
                        <ref role="3cqZAo" node="2RLAZYDKbZj" resolve="node" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="2RLAZYDKbZ_" role="3clFbx">
                <node concept="3cpWs6" id="2RLAZYDKbZz" role="3cqZAp">
                  <node concept="37vLTw" id="2RLAZYDKbZ$" role="3cqZAk">
                    <ref role="3cqZAo" node="2RLAZYDKbZj" resolve="node" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="YS8fn" id="2RLAZYDKbZF" role="3cqZAp">
          <node concept="2YIFZM" id="2RLAZYDKc7g" role="YScLw">
            <ref role="1Pybhc" to="9toz:~ModelNodes" resolve="ModelNodes" />
            <ref role="37wK5l" to="9toz:~ModelNodes.failure(java.lang.String,org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String)" resolve="failure" />
            <node concept="Xl_RD" id="2RLAZYDKc7h" role="37wK5m">
              <property role="Xl_RC" value="MBNF_GENERATION_INPUT" />
            </node>
            <node concept="37vLTw" id="2RLAZYDKc7i" role="37wK5m">
              <ref role="3cqZAo" node="2RLAZYDKbZf" resolve="source" />
            </node>
            <node concept="Xl_RD" id="2RLAZYDKc7j" role="37wK5m">
              <property role="Xl_RC" value="Input is not contained in a grammar" />
            </node>
            <node concept="Xl_RD" id="2RLAZYDKc7k" role="37wK5m">
              <property role="Xl_RC" value="Generate an attached grammar rule" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="2RLAZYDKbZG" role="1B3o_S" />
      <node concept="3Tqbb2" id="2RLAZYE1IcO" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="2RLAZYDKbZI" role="jymVt">
      <property role="TrG5h" value="profile" />
      <node concept="37vLTG" id="2RLAZYDKbZJ" role="3clF46">
        <property role="TrG5h" value="source" />
        <node concept="3Tqbb2" id="2RLAZYE1IcP" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="2RLAZYDKbZL" role="3clF47">
        <node concept="3cpWs8" id="2RLAZYDKbZN" role="3cqZAp">
          <node concept="3cpWsn" id="2RLAZYDKbZM" role="3cpWs9">
            <property role="TrG5h" value="grammar" />
            <node concept="3Tqbb2" id="2RLAZYE1IcQ" role="1tU5fm" />
            <node concept="1rXfSq" id="2RLAZYDKbZP" role="33vP2m">
              <ref role="37wK5l" node="2RLAZYDKbZe" resolve="grammar" />
              <node concept="37vLTw" id="2RLAZYDKbZQ" role="37wK5m">
                <ref role="3cqZAo" node="2RLAZYDKbZJ" resolve="source" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2RLAZYDKbZS" role="3cqZAp">
          <node concept="3cpWsn" id="2RLAZYDKbZR" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="3Tqbb2" id="2RLAZYE1IcR" role="1tU5fm" />
            <node concept="10Nm6u" id="2RLAZYDKbZU" role="33vP2m" />
          </node>
        </node>
        <node concept="1DcWWT" id="2RLAZYDKbZV" role="3cqZAp">
          <node concept="2OqwBi" id="2RLAZYDKcOV" role="1DdaDG">
            <node concept="liA8E" id="2RLAZYDKcOW" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SModel.getRootNodes()" resolve="getRootNodes" />
            </node>
            <node concept="2JrnkZ" id="2RLAZYE1Ici" role="2Oq$k0">
              <node concept="2YIFZM" id="2RLAZYDRWWH" role="2JrQYb">
                <ref role="1Pybhc" to="33ny:~Objects" resolve="Objects" />
                <ref role="37wK5l" to="33ny:~Objects.requireNonNull(java.lang.Object,java.lang.String)" resolve="requireNonNull" />
                <node concept="2OqwBi" id="2RLAZYDKcAF" role="37wK5m">
                  <node concept="liA8E" id="2RLAZYDKcAG" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SNode.getModel()" resolve="getModel" />
                  </node>
                  <node concept="2JrnkZ" id="2RLAZYE1Icj" role="2Oq$k0">
                    <node concept="37vLTw" id="2RLAZYDKc7v" role="2JrQYb">
                      <ref role="3cqZAo" node="2RLAZYDKbZM" resolve="grammar" />
                    </node>
                  </node>
                </node>
                <node concept="Xl_RD" id="2RLAZYDRWWI" role="37wK5m">
                  <property role="Xl_RC" value="Validated attached grammar/group invariant" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="2RLAZYDKc0p" role="1Duv9x">
            <property role="TrG5h" value="root" />
            <node concept="3Tqbb2" id="2RLAZYE1IcS" role="1tU5fm" />
          </node>
          <node concept="3clFbS" id="2RLAZYDKbZX" role="2LFqv$">
            <node concept="3clFbJ" id="2RLAZYDKbZY" role="3cqZAp">
              <node concept="22lmx$" id="2RLAZYDKbZZ" role="3clFbw">
                <node concept="3fqX7Q" id="2RLAZYDKc00" role="3uHU7B">
                  <node concept="2OqwBi" id="2RLAZYDKcAV" role="3fr31v">
                    <node concept="37vLTw" id="2RLAZYDKc7z" role="2Oq$k0">
                      <ref role="3cqZAo" node="2RLAZYDKbTe" resolve="PROFILE" />
                    </node>
                    <node concept="liA8E" id="2RLAZYDKcAW" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                      <node concept="2OqwBi" id="2RLAZYDKcSE" role="37wK5m">
                        <node concept="liA8E" id="2RLAZYDKcSF" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        </node>
                        <node concept="2JrnkZ" id="2RLAZYE1Ick" role="2Oq$k0">
                          <node concept="37vLTw" id="2RLAZYDKcOZ" role="2JrQYb">
                            <ref role="3cqZAo" node="2RLAZYDKc0p" resolve="root" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3y3z36" id="2RLAZYDKc03" role="3uHU7w">
                  <node concept="2OqwBi" id="2RLAZYDKcB7" role="3uHU7B">
                    <node concept="liA8E" id="2RLAZYDKcB8" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.getReferenceTarget(org.jetbrains.mps.openapi.language.SReferenceLink)" resolve="getReferenceTarget" />
                      <node concept="37vLTw" id="2RLAZYDKcB9" role="37wK5m">
                        <ref role="3cqZAo" node="2RLAZYDKbTy" resolve="PROFILE_GRAMMAR" />
                      </node>
                    </node>
                    <node concept="2JrnkZ" id="2RLAZYE1Icl" role="2Oq$k0">
                      <node concept="37vLTw" id="2RLAZYDKc7C" role="2JrQYb">
                        <ref role="3cqZAo" node="2RLAZYDKc0p" resolve="root" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="2RLAZYDKc06" role="3uHU7w">
                    <ref role="3cqZAo" node="2RLAZYDKbZM" resolve="grammar" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="2RLAZYDKc08" role="3clFbx">
                <node concept="3N13vt" id="2RLAZYDKc07" role="3cqZAp" />
              </node>
            </node>
            <node concept="3clFbJ" id="2RLAZYDKc09" role="3cqZAp">
              <node concept="3y3z36" id="2RLAZYDKc0a" role="3clFbw">
                <node concept="37vLTw" id="2RLAZYDKc0b" role="3uHU7B">
                  <ref role="3cqZAo" node="2RLAZYDKbZR" resolve="result" />
                </node>
                <node concept="10Nm6u" id="2RLAZYDKc0c" role="3uHU7w" />
              </node>
              <node concept="3clFbS" id="2RLAZYDKc0e" role="3clFbx">
                <node concept="YS8fn" id="2RLAZYDKc0k" role="3cqZAp">
                  <node concept="2YIFZM" id="2RLAZYDKc7H" role="YScLw">
                    <ref role="1Pybhc" to="9toz:~ModelNodes" resolve="ModelNodes" />
                    <ref role="37wK5l" to="9toz:~ModelNodes.failure(java.lang.String,org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String)" resolve="failure" />
                    <node concept="Xl_RD" id="2RLAZYDKc7I" role="37wK5m">
                      <property role="Xl_RC" value="MBNF_DUPLICATE_PROFILE" />
                    </node>
                    <node concept="37vLTw" id="2RLAZYDKc7J" role="37wK5m">
                      <ref role="3cqZAo" node="2RLAZYDKc0p" resolve="root" />
                    </node>
                    <node concept="Xl_RD" id="2RLAZYDKc7K" role="37wK5m">
                      <property role="Xl_RC" value="More than one profile targets this grammar" />
                    </node>
                    <node concept="Xl_RD" id="2RLAZYDKc7L" role="37wK5m">
                      <property role="Xl_RC" value="Keep one generation profile beside the grammar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2RLAZYDKc0l" role="3cqZAp">
              <node concept="37vLTI" id="2RLAZYDKc0m" role="3clFbG">
                <node concept="37vLTw" id="2RLAZYDKc0n" role="37vLTJ">
                  <ref role="3cqZAo" node="2RLAZYDKbZR" resolve="result" />
                </node>
                <node concept="37vLTw" id="2RLAZYDKc0o" role="37vLTx">
                  <ref role="3cqZAo" node="2RLAZYDKc0p" resolve="root" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2RLAZYDKc0u" role="3cqZAp">
          <node concept="37vLTw" id="2RLAZYDKc0v" role="3cqZAk">
            <ref role="3cqZAo" node="2RLAZYDKbZR" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="2RLAZYDKc0w" role="1B3o_S" />
      <node concept="3Tqbb2" id="2RLAZYE1IcT" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="2RLAZYE1HNT" role="jymVt">
      <property role="TrG5h" value="validateMetadata" />
      <node concept="37vLTG" id="2RLAZYE1HNU" role="3clF46">
        <property role="TrG5h" value="set" />
        <node concept="3Tqbb2" id="2RLAZYE1IcU" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="2RLAZYE1HNW" role="3clF47">
        <node concept="3cpWs8" id="2RLAZYE1HNY" role="3cqZAp">
          <node concept="3cpWsn" id="2RLAZYE1HNX" role="3cpWs9">
            <property role="TrG5h" value="inspection" />
            <node concept="3uibUv" id="2RLAZYE1HNZ" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
              <node concept="17QB3L" id="2RLAZYE1IcV" role="11_B2D" />
              <node concept="3uibUv" id="2RLAZYE1HO1" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
              </node>
            </node>
            <node concept="2YIFZM" id="2RLAZYE1HOF" role="33vP2m">
              <ref role="1Pybhc" to="rplf:$td8qQ25ZI" resolve="UsabilityAnnotations" />
              <ref role="37wK5l" to="rplf:$td8qQ26hT" resolve="inspect" />
              <node concept="37vLTw" id="2RLAZYE1HOG" role="37wK5m">
                <ref role="3cqZAo" node="2RLAZYE1HNU" resolve="set" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2RLAZYE1HO5" role="3cqZAp">
          <node concept="3cpWsn" id="2RLAZYE1HO4" role="3cpWs9">
            <property role="TrG5h" value="diagnostics" />
            <node concept="3uibUv" id="2RLAZYE1HO6" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="2RLAZYE1HO7" role="11_B2D">
                <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
                <node concept="17QB3L" id="2RLAZYE1IcW" role="11_B2D" />
                <node concept="17QB3L" id="2RLAZYE1IcX" role="11_B2D" />
              </node>
            </node>
            <node concept="10QFUN" id="2RLAZYE1HOa" role="33vP2m">
              <node concept="2OqwBi" id="2RLAZYE1HSS" role="10QFUP">
                <node concept="37vLTw" id="2RLAZYE1HOK" role="2Oq$k0">
                  <ref role="3cqZAo" node="2RLAZYE1HNX" resolve="inspection" />
                </node>
                <node concept="liA8E" id="2RLAZYE1HST" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
                  <node concept="Xl_RD" id="2RLAZYE1HSU" role="37wK5m">
                    <property role="Xl_RC" value="diagnostics" />
                  </node>
                </node>
              </node>
              <node concept="3uibUv" id="2RLAZYE1HOd" role="10QFUM">
                <ref role="3uigEE" to="33ny:~List" resolve="List" />
                <node concept="3uibUv" id="2RLAZYE1HOe" role="11_B2D">
                  <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
                  <node concept="17QB3L" id="2RLAZYE1IcY" role="11_B2D" />
                  <node concept="17QB3L" id="2RLAZYE1IcZ" role="11_B2D" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2RLAZYE1HOh" role="3cqZAp">
          <node concept="3fqX7Q" id="2RLAZYE1HOi" role="3clFbw">
            <node concept="2OqwBi" id="2RLAZYE1HWn" role="3fr31v">
              <node concept="37vLTw" id="2RLAZYE1HOQ" role="2Oq$k0">
                <ref role="3cqZAo" node="2RLAZYE1HO4" resolve="diagnostics" />
              </node>
              <node concept="liA8E" id="2RLAZYE1HWo" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.isEmpty()" resolve="isEmpty" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="2RLAZYE1HOl" role="3clFbx">
            <node concept="3cpWs8" id="2RLAZYE1HOn" role="3cqZAp">
              <node concept="3cpWsn" id="2RLAZYE1HOm" role="3cpWs9">
                <property role="TrG5h" value="diagnostic" />
                <node concept="3uibUv" id="2RLAZYE1HOo" role="1tU5fm">
                  <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
                  <node concept="17QB3L" id="2RLAZYE1Id0" role="11_B2D" />
                  <node concept="17QB3L" id="2RLAZYE1Id1" role="11_B2D" />
                </node>
                <node concept="2OqwBi" id="2RLAZYE1HZP" role="33vP2m">
                  <node concept="37vLTw" id="2RLAZYE1HOV" role="2Oq$k0">
                    <ref role="3cqZAo" node="2RLAZYE1HO4" resolve="diagnostics" />
                  </node>
                  <node concept="liA8E" id="2RLAZYE1HZQ" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                    <node concept="3cmrfG" id="2RLAZYE1HZR" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="YS8fn" id="2RLAZYE1HO_" role="3cqZAp">
              <node concept="2YIFZM" id="2RLAZYE1HP1" role="YScLw">
                <ref role="1Pybhc" to="9toz:~ModelNodes" resolve="ModelNodes" />
                <ref role="37wK5l" to="9toz:~ModelNodes.failure(java.lang.String,org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String)" resolve="failure" />
                <node concept="2OqwBi" id="2RLAZYE1I3T" role="37wK5m">
                  <node concept="37vLTw" id="2RLAZYE1HZV" role="2Oq$k0">
                    <ref role="3cqZAo" node="2RLAZYE1HOm" resolve="diagnostic" />
                  </node>
                  <node concept="liA8E" id="2RLAZYE1I3U" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
                    <node concept="Xl_RD" id="2RLAZYE1I3V" role="37wK5m">
                      <property role="Xl_RC" value="code" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="2RLAZYE1HP4" role="37wK5m">
                  <ref role="3cqZAo" node="2RLAZYE1HNU" resolve="set" />
                </node>
                <node concept="2OqwBi" id="2RLAZYE1I7F" role="37wK5m">
                  <node concept="37vLTw" id="2RLAZYE1I01" role="2Oq$k0">
                    <ref role="3cqZAo" node="2RLAZYE1HOm" resolve="diagnostic" />
                  </node>
                  <node concept="liA8E" id="2RLAZYE1I7G" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
                    <node concept="Xl_RD" id="2RLAZYE1I7H" role="37wK5m">
                      <property role="Xl_RC" value="message" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="2RLAZYE1Ibt" role="37wK5m">
                  <node concept="37vLTw" id="2RLAZYE1I07" role="2Oq$k0">
                    <ref role="3cqZAo" node="2RLAZYE1HOm" resolve="diagnostic" />
                  </node>
                  <node concept="liA8E" id="2RLAZYE1Ibu" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
                    <node concept="Xl_RD" id="2RLAZYE1Ibv" role="37wK5m">
                      <property role="Xl_RC" value="remedy" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="2RLAZYE1HOA" role="1B3o_S" />
      <node concept="3cqZAl" id="2RLAZYE1HOB" role="3clF45" />
    </node>
  </node>
</model>

