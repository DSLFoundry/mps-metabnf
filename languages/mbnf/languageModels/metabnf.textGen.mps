<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:d7930693-4d63-4480-b84c-478631c81347(metabnf.textGen)">
  <persistence version="9" />
  <languages>
    <use id="b83431fe-5c8f-40bc-8a36-65e25f4dd253" name="jetbrains.mps.lang.textGen" version="1" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
  </languages>
  <imports>
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="9toz" ref="9c03c641-469f-49e7-aeed-44a3d19b7253/java:metabnf.usability(metabnf/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
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
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1144226303539" name="jetbrains.mps.baseLanguage.structure.ForeachStatement" flags="nn" index="1DcWWT">
        <child id="1144226360166" name="iterable" index="1DdaDG" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
    </language>
    <language id="b83431fe-5c8f-40bc-8a36-65e25f4dd253" name="jetbrains.mps.lang.textGen">
      <concept id="1237305208784" name="jetbrains.mps.lang.textGen.structure.NewLineAppendPart" flags="ng" index="l8MVK" />
      <concept id="1237305334312" name="jetbrains.mps.lang.textGen.structure.NodeAppendPart" flags="ng" index="l9hG8">
        <child id="1237305790512" name="value" index="lb14g" />
      </concept>
      <concept id="1237306079178" name="jetbrains.mps.lang.textGen.structure.AppendOperation" flags="nn" index="lc7rE">
        <child id="1237306115446" name="part" index="lcghm" />
      </concept>
      <concept id="4357423944233036906" name="jetbrains.mps.lang.textGen.structure.IndentPart" flags="ng" index="2BGw6n" />
      <concept id="1233921373471" name="jetbrains.mps.lang.textGen.structure.LanguageTextGenDeclaration" flags="ig" index="1bsvg0">
        <child id="1233922432965" name="operation" index="1bwxVq" />
      </concept>
      <concept id="1233922353619" name="jetbrains.mps.lang.textGen.structure.OperationDeclaration" flags="sg" stub="3147100357551177019" index="1bwezc">
        <property id="1234264079341" name="operationName" index="1vRNFM" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1bsvg0" id="48J7WSkHbqo">
    <property role="TrG5h" value="TargetTriviaTextGen" />
    <node concept="1bwezc" id="48J7WSkHbqp" role="1bwxVq">
      <property role="TrG5h" value="emitList" />
      <property role="1vRNFM" value="trivia list" />
      <node concept="3cqZAl" id="48J7WSkH6Yj" role="3clF45" />
      <node concept="3clFbS" id="48J7WSkH6XH" role="3clF47">
        <node concept="1DcWWT" id="48J7WSkH6XI" role="3cqZAp">
          <node concept="2YIFZM" id="48J7WSkHbon" role="1DdaDG">
            <ref role="1Pybhc" to="9toz:~TargetTrivia" resolve="TargetTrivia" />
            <ref role="37wK5l" to="9toz:~TargetTrivia.parts(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String)" resolve="parts" />
            <node concept="37vLTw" id="48J7WSkHboo" role="37wK5m">
              <ref role="3cqZAo" node="48J7WSkH6X_" resolve="owner" />
            </node>
            <node concept="37vLTw" id="48J7WSkHbop" role="37wK5m">
              <ref role="3cqZAo" node="48J7WSkH6XB" resolve="role" />
            </node>
            <node concept="37vLTw" id="48J7WSkHboq" role="37wK5m">
              <ref role="3cqZAo" node="48J7WSkH6XD" resolve="separator" />
            </node>
            <node concept="37vLTw" id="48J7WSkHbor" role="37wK5m">
              <ref role="3cqZAo" node="48J7WSkH6XF" resolve="prefix" />
            </node>
          </node>
          <node concept="3cpWsn" id="48J7WSkH6Ya" role="1Duv9x">
            <property role="TrG5h" value="part" />
            <node concept="3uibUv" id="48J7WSkH6Yc" role="1tU5fm">
              <ref role="3uigEE" to="9toz:~TargetTrivia$Part" resolve="TargetTrivia.Part" />
            </node>
          </node>
          <node concept="3clFbS" id="48J7WSkH6XK" role="2LFqv$">
            <node concept="3clFbJ" id="48J7WSkH6XL" role="3cqZAp">
              <node concept="3clFbC" id="48J7WSkH6XM" role="3clFbw">
                <node concept="2OqwBi" id="48J7WSkHbpH" role="3uHU7B">
                  <node concept="37vLTw" id="48J7WSkHbou" role="2Oq$k0">
                    <ref role="3cqZAo" node="48J7WSkH6Ya" resolve="part" />
                  </node>
                  <node concept="liA8E" id="48J7WSkHbpI" role="2OqNvi">
                    <ref role="37wK5l" to="9toz:~TargetTrivia$Part.getKind()" resolve="getKind" />
                  </node>
                </node>
                <node concept="3cmrfG" id="48J7WSkH6XO" role="3uHU7w">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
              <node concept="3clFbJ" id="48J7WSkH6XS" role="9aQIa">
                <node concept="3clFbC" id="48J7WSkH6XT" role="3clFbw">
                  <node concept="2OqwBi" id="48J7WSkHbpR" role="3uHU7B">
                    <node concept="37vLTw" id="48J7WSkHboy" role="2Oq$k0">
                      <ref role="3cqZAo" node="48J7WSkH6Ya" resolve="part" />
                    </node>
                    <node concept="liA8E" id="48J7WSkHbpS" role="2OqNvi">
                      <ref role="37wK5l" to="9toz:~TargetTrivia$Part.getKind()" resolve="getKind" />
                    </node>
                  </node>
                  <node concept="3cmrfG" id="48J7WSkH6XV" role="3uHU7w">
                    <property role="3cmrfH" value="1" />
                  </node>
                </node>
                <node concept="3clFbJ" id="48J7WSkH6XZ" role="9aQIa">
                  <node concept="3clFbC" id="48J7WSkH6Y0" role="3clFbw">
                    <node concept="2OqwBi" id="48J7WSkHbq1" role="3uHU7B">
                      <node concept="37vLTw" id="48J7WSkHboA" role="2Oq$k0">
                        <ref role="3cqZAo" node="48J7WSkH6Ya" resolve="part" />
                      </node>
                      <node concept="liA8E" id="48J7WSkHbq2" role="2OqNvi">
                        <ref role="37wK5l" to="9toz:~TargetTrivia$Part.getKind()" resolve="getKind" />
                      </node>
                    </node>
                    <node concept="3cmrfG" id="48J7WSkH6Y2" role="3uHU7w">
                      <property role="3cmrfH" value="2" />
                    </node>
                  </node>
                  <node concept="lc7rE" id="48J7WSkIqSy" role="9aQIa">
                    <node concept="2BGw6n" id="48J7WSkIqSx" role="lcghm" />
                  </node>
                  <node concept="3clFbS" id="48J7WSkH6Y7" role="3clFbx">
                    <node concept="lc7rE" id="48J7WSkIqS$" role="3cqZAp">
                      <node concept="l8MVK" id="48J7WSkIqSz" role="lcghm" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="48J7WSkH6Y8" role="3clFbx">
                  <node concept="lc7rE" id="48J7WSkIqSA" role="3cqZAp">
                    <node concept="l9hG8" id="48J7WSkIqS_" role="lcghm">
                      <node concept="2OqwBi" id="48J7WSkHbqb" role="lb14g">
                        <node concept="37vLTw" id="48J7WSkHboE" role="2Oq$k0">
                          <ref role="3cqZAo" node="48J7WSkH6Ya" resolve="part" />
                        </node>
                        <node concept="liA8E" id="48J7WSkHbqc" role="2OqNvi">
                          <ref role="37wK5l" to="9toz:~TargetTrivia$Part.getText()" resolve="getText" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="48J7WSkH6Y9" role="3clFbx">
                <node concept="lc7rE" id="48J7WSkIqSC" role="3cqZAp">
                  <node concept="l9hG8" id="48J7WSkIqSB" role="lcghm">
                    <node concept="2OqwBi" id="48J7WSkHbql" role="lb14g">
                      <node concept="37vLTw" id="48J7WSkHboI" role="2Oq$k0">
                        <ref role="3cqZAo" node="48J7WSkH6Ya" resolve="part" />
                      </node>
                      <node concept="liA8E" id="48J7WSkHbqm" role="2OqNvi">
                        <ref role="37wK5l" to="9toz:~TargetTrivia$Part.getNode()" resolve="getNode" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="48J7WSkH6X_" role="3clF46">
        <property role="TrG5h" value="owner" />
        <node concept="3Tqbb2" id="48J7WSkHbqq" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="48J7WSkH6XB" role="3clF46">
        <property role="TrG5h" value="role" />
        <node concept="17QB3L" id="48J7WSkHbqr" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="48J7WSkH6XD" role="3clF46">
        <property role="TrG5h" value="separator" />
        <node concept="17QB3L" id="48J7WSkHbqs" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="48J7WSkH6XF" role="3clF46">
        <property role="TrG5h" value="prefix" />
        <node concept="17QB3L" id="48J7WSkHbqt" role="1tU5fm" />
      </node>
    </node>
  </node>
</model>

