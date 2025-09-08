<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:40de8445-6801-4abc-bf0f-bd25af6471b0(metabnf.typesystem)">
  <persistence version="9" />
  <languages>
    <devkit ref="00000000-0000-4000-0000-1de82b3a4936(jetbrains.mps.devkit.aspect.typesystem)" />
  </languages>
  <imports>
    <import index="6o2a" ref="r:0fbcf19f-c60b-479b-81cb-094b5b2b9f1d(metabnf.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
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
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1144226303539" name="jetbrains.mps.baseLanguage.structure.ForeachStatement" flags="nn" index="1DcWWT">
        <child id="1144226360166" name="iterable" index="1DdaDG" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem">
      <concept id="1175517767210" name="jetbrains.mps.lang.typesystem.structure.ReportErrorStatement" flags="nn" index="2MkqsV">
        <child id="1175517851849" name="errorString" index="2MkJ7o" />
      </concept>
      <concept id="1195213580585" name="jetbrains.mps.lang.typesystem.structure.AbstractCheckingRule" flags="ig" index="18hYwZ">
        <child id="1195213635060" name="body" index="18ibNy" />
      </concept>
      <concept id="1195214364922" name="jetbrains.mps.lang.typesystem.structure.NonTypesystemRule" flags="ig" index="18kY7G" />
      <concept id="3937244445246642777" name="jetbrains.mps.lang.typesystem.structure.AbstractReportStatement" flags="ng" index="1urrMJ">
        <child id="3937244445246642781" name="nodeToReport" index="1urrMF" />
      </concept>
      <concept id="1174642788531" name="jetbrains.mps.lang.typesystem.structure.ConceptReference" flags="ig" index="1YaCAy">
        <reference id="1174642800329" name="concept" index="1YaFvo" />
      </concept>
      <concept id="1174648085619" name="jetbrains.mps.lang.typesystem.structure.AbstractRule" flags="ng" index="1YuPPy">
        <child id="1174648101952" name="applicableNode" index="1YuTPh" />
      </concept>
      <concept id="1174650418652" name="jetbrains.mps.lang.typesystem.structure.ApplicableNodeReference" flags="nn" index="1YBJjd">
        <reference id="1174650432090" name="applicableNode" index="1YBMHb" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="4693937538533521280" name="jetbrains.mps.lang.smodel.structure.OfConceptOperation" flags="ng" index="v3k3i">
        <child id="4693937538533538124" name="requestedConcept" index="v3oSu" />
      </concept>
      <concept id="1146253292180" name="jetbrains.mps.lang.smodel.structure.Property_HasValue_Simple" flags="nn" index="3y1jeu">
        <child id="1146253292181" name="value" index="3y1jev" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1225730411176" name="jetbrains.mps.baseLanguage.collections.structure.FindLastOperation" flags="nn" index="1zesIP" />
    </language>
  </registry>
  <node concept="18kY7G" id="44Pv0YAShhJ">
    <property role="TrG5h" value="check_NonterminalRule" />
    <property role="3GE5qa" value="rules.nonterminals" />
    <node concept="3clFbS" id="44Pv0YAShnf" role="18ibNy">
      <node concept="1DcWWT" id="44Pv0YAShwk" role="3cqZAp">
        <node concept="3cpWsn" id="44Pv0YAShwl" role="1Duv9x">
          <property role="TrG5h" value="ref" />
          <node concept="3Tqbb2" id="44Pv0YAShHe" role="1tU5fm">
            <ref role="ehGHo" to="6o2a:2b2ZYR3ypJF" resolve="NonterminalReference" />
          </node>
        </node>
        <node concept="3clFbS" id="44Pv0YAShwm" role="2LFqv$">
          <node concept="3cpWs8" id="44Pv0YASJiE" role="3cqZAp">
            <node concept="3cpWsn" id="44Pv0YASJiH" role="3cpWs9">
              <property role="TrG5h" value="other" />
              <node concept="3Tqbb2" id="44Pv0YASJiC" role="1tU5fm">
                <ref role="ehGHo" to="6o2a:2b2ZYR3ypJF" resolve="NonterminalReference" />
              </node>
              <node concept="2OqwBi" id="44Pv0YASD$d" role="33vP2m">
                <node concept="2OqwBi" id="44Pv0YASAJp" role="2Oq$k0">
                  <node concept="2OqwBi" id="44Pv0YASjYq" role="2Oq$k0">
                    <node concept="1YBJjd" id="44Pv0YASjWc" role="2Oq$k0">
                      <ref role="1YBMHb" node="44Pv0YAShnh" resolve="nonterminalRule" />
                    </node>
                    <node concept="3Tsc0h" id="44Pv0YASlpW" role="2OqNvi">
                      <ref role="3TtcxE" to="6o2a:2b2ZYR3xc0Q" resolve="terms" />
                    </node>
                  </node>
                  <node concept="v3k3i" id="44Pv0YASDnq" role="2OqNvi">
                    <node concept="chp4Y" id="44Pv0YASDoR" role="v3oSu">
                      <ref role="cht4Q" to="6o2a:2b2ZYR3ypJF" resolve="NonterminalReference" />
                    </node>
                  </node>
                </node>
                <node concept="1zesIP" id="44Pv0YASF_i" role="2OqNvi">
                  <node concept="1bVj0M" id="44Pv0YASF_k" role="23t8la">
                    <node concept="3clFbS" id="44Pv0YASF_l" role="1bW5cS">
                      <node concept="3clFbF" id="44Pv0YASFDf" role="3cqZAp">
                        <node concept="3clFbC" id="44Pv0YASGyy" role="3clFbG">
                          <node concept="2OqwBi" id="44Pv0YASFHR" role="3uHU7B">
                            <node concept="37vLTw" id="44Pv0YASFDe" role="2Oq$k0">
                              <ref role="3cqZAo" node="44Pv0YASF_m" resolve="it" />
                            </node>
                            <node concept="3TrEf2" id="44Pv0YASGdI" role="2OqNvi">
                              <ref role="3Tt5mk" to="6o2a:2b2ZYR3ypJI" resolve="rule" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="44Pv0YASGKF" role="3uHU7w">
                            <node concept="37vLTw" id="44Pv0YASGEz" role="2Oq$k0">
                              <ref role="3cqZAo" node="44Pv0YAShwl" resolve="ref" />
                            </node>
                            <node concept="3TrEf2" id="44Pv0YASHsI" role="2OqNvi">
                              <ref role="3Tt5mk" to="6o2a:2b2ZYR3ypJI" resolve="rule" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="44Pv0YASF_m" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="44Pv0YASF_n" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="44Pv0YASHA1" role="3cqZAp">
            <node concept="3clFbS" id="44Pv0YASHA4" role="3clFbx">
              <node concept="2MkqsV" id="44Pv0YASLiP" role="3cqZAp">
                <node concept="Xl_RD" id="44Pv0YASLj7" role="2MkJ7o">
                  <property role="Xl_RC" value="Duplicate nonterminal reference, add unique name in inspector" />
                </node>
                <node concept="37vLTw" id="44Pv0YASMMS" role="1urrMF">
                  <ref role="3cqZAo" node="44Pv0YASJiH" resolve="other" />
                </node>
              </node>
            </node>
            <node concept="1Wc70l" id="44Pv0YATxDf" role="3clFbw">
              <node concept="3y3z36" id="44Pv0YASKZp" role="3uHU7B">
                <node concept="37vLTw" id="44Pv0YASKW$" role="3uHU7B">
                  <ref role="3cqZAo" node="44Pv0YAShwl" resolve="ref" />
                </node>
                <node concept="37vLTw" id="44Pv0YASLgO" role="3uHU7w">
                  <ref role="3cqZAo" node="44Pv0YASJiH" resolve="other" />
                </node>
              </node>
              <node concept="2OqwBi" id="44Pv0YATyd8" role="3uHU7w">
                <node concept="2OqwBi" id="44Pv0YATxGN" role="2Oq$k0">
                  <node concept="37vLTw" id="44Pv0YATxEd" role="2Oq$k0">
                    <ref role="3cqZAo" node="44Pv0YAShwl" resolve="ref" />
                  </node>
                  <node concept="3TrcHB" id="44Pv0YATxRA" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
                <node concept="3y1jeu" id="44Pv0YATAZ8" role="2OqNvi">
                  <node concept="2OqwBi" id="44Pv0YATB7c" role="3y1jev">
                    <node concept="37vLTw" id="44Pv0YATB2D" role="2Oq$k0">
                      <ref role="3cqZAo" node="44Pv0YASJiH" resolve="other" />
                    </node>
                    <node concept="3TrcHB" id="44Pv0YATBjc" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2OqwBi" id="44Pv0YATqQc" role="1DdaDG">
          <node concept="2OqwBi" id="44Pv0YASrIv" role="2Oq$k0">
            <node concept="1YBJjd" id="44Pv0YASigq" role="2Oq$k0">
              <ref role="1YBMHb" node="44Pv0YAShnh" resolve="nonterminalRule" />
            </node>
            <node concept="3Tsc0h" id="44Pv0YATpCS" role="2OqNvi">
              <ref role="3TtcxE" to="6o2a:2b2ZYR3xc0Q" resolve="terms" />
            </node>
          </node>
          <node concept="v3k3i" id="44Pv0YATsBG" role="2OqNvi">
            <node concept="chp4Y" id="44Pv0YATsPJ" role="v3oSu">
              <ref role="cht4Q" to="6o2a:2b2ZYR3ypJF" resolve="NonterminalReference" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="44Pv0YAShnh" role="1YuTPh">
      <property role="TrG5h" value="nonterminalRule" />
      <ref role="1YaFvo" to="6o2a:2b2ZYR3xc0j" resolve="NonterminalRule" />
    </node>
  </node>
</model>

