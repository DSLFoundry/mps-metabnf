<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:d19057af-a743-4e69-acc1-6ce8663382f6(CSharpComparison.editor)">
  <persistence version="9" />
  <languages>
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="15" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="6o2a" ref="r:0fbcf19f-c60b-479b-81cb-094b5b2b9f1d(metabnf.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="yiol" ref="r:da9593e3-393b-479e-8ed7-977e83834b16(CSharpComparison.structure)" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1402906326895675325" name="jetbrains.mps.lang.editor.structure.CellActionMap_FunctionParm_selectedNode" flags="nn" index="0IXxy" />
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi">
        <child id="1078153129734" name="inspectedCellModel" index="6VMZX" />
      </concept>
      <concept id="1176897764478" name="jetbrains.mps.lang.editor.structure.QueryFunction_NodeFactory" flags="in" index="4$FPG" />
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <child id="1176897874615" name="nodeFactory" index="4_6I_" />
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
      </concept>
      <concept id="1106270571710" name="jetbrains.mps.lang.editor.structure.CellLayout_Vertical" flags="nn" index="2iRkQZ" />
      <concept id="3459162043708467089" name="jetbrains.mps.lang.editor.structure.CellActionMap_CanExecuteFunction" flags="in" index="jK8Ss" />
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="4323500428121233431" name="jetbrains.mps.lang.editor.structure.EditorCellId" flags="ng" index="2SqB2G" />
      <concept id="1139535219966" name="jetbrains.mps.lang.editor.structure.CellActionMapDeclaration" flags="ig" index="1h_SRR">
        <reference id="1139535219968" name="applicableConcept" index="1h_SK9" />
        <child id="1139535219969" name="item" index="1h_SK8" />
      </concept>
      <concept id="1139535280617" name="jetbrains.mps.lang.editor.structure.CellActionMapItem" flags="lg" index="1hA7zw">
        <property id="1139535298778" name="actionId" index="1hAc7j" />
        <property id="1139537298254" name="description" index="1hHO97" />
        <child id="3459162043708468028" name="canExecuteFunction" index="jK8aL" />
        <child id="1139535280620" name="executeFunction" index="1hA7z_" />
      </concept>
      <concept id="1139535439104" name="jetbrains.mps.lang.editor.structure.CellActionMap_ExecuteFunction" flags="in" index="1hAIg9" />
      <concept id="2162403111523059536" name="jetbrains.mps.lang.editor.structure.IdSelector" flags="ng" index="1lyA5W">
        <property id="2162403111529391190" name="cellId" index="1lUG9U" />
      </concept>
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1073389214265" name="jetbrains.mps.lang.editor.structure.EditorCellModel" flags="ng" index="3EYTF0">
        <child id="4323500428121274054" name="id" index="2SqHTX" />
      </concept>
      <concept id="1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" flags="sn" stub="3013115976261988961" index="3EZMnI">
        <child id="1106270802874" name="cellLayout" index="2iSdaV" />
        <child id="1073389446424" name="childCellModel" index="3EZMnx" />
      </concept>
      <concept id="1073389577006" name="jetbrains.mps.lang.editor.structure.CellModel_Constant" flags="sn" stub="3610246225209162225" index="3F0ifn">
        <property id="1073389577007" name="text" index="3F0ifm" />
      </concept>
      <concept id="1073389658414" name="jetbrains.mps.lang.editor.structure.CellModel_Property" flags="sg" stub="730538219796134133" index="3F0A7n" />
      <concept id="1073389882823" name="jetbrains.mps.lang.editor.structure.CellModel_RefNode" flags="sg" stub="730538219795960754" index="3F1sOY" />
      <concept id="1073390211982" name="jetbrains.mps.lang.editor.structure.CellModel_RefNodeList" flags="sg" stub="2794558372793454595" index="3F2HdR" />
      <concept id="3647146066980922272" name="jetbrains.mps.lang.editor.structure.SelectInEditorOperation" flags="nn" index="1OKiuA">
        <child id="1948540814633499358" name="editorContext" index="lBI5i" />
        <child id="1948540814635895774" name="cellSelector" index="lGT1i" />
      </concept>
      <concept id="1161622981231" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_editorContext" flags="nn" index="1Q80Hx" />
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
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
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
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
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1143512015885" name="jetbrains.mps.lang.smodel.structure.Node_GetNextSiblingOperation" flags="nn" index="YCak7" />
      <concept id="1171999116870" name="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" flags="nn" index="3w_OXm" />
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI">
        <property id="1238684351431" name="asCast" index="1BlNFB" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="24kQdi" id="L58tqU9gWI">
    <property role="3GE5qa" value="ANTLR" />
    <ref role="1XX52x" to="yiol:X8JiVyjpF9" resolve="program" />
    <node concept="3EZMnI" id="1Y71CFbJZ4" role="2wV5jI">
      <node concept="3F1sOY" id="FM1YUbApSF" role="3EZMnx">
        <ref role="1NtTu8" to="yiol:TbvgBtbWVU" resolve="block" />
      </node>
      <node concept="l2Vlx" id="fMMNea73d_" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="99Dm6PDA6F" role="6VMZX">
      <node concept="2iRkQZ" id="ngNtb$2C$y" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="nKKL$GNJlW">
    <property role="3GE5qa" value="ANTLR" />
    <ref role="1XX52x" to="yiol:ymp_$pH7rU" resolve="block" />
    <node concept="3EZMnI" id="cdz4bp8Wxk" role="2wV5jI">
      <node concept="3F0ifn" id="RJZdgn$AjP" role="3EZMnx">
        <property role="3F0ifm" value="{" />
      </node>
      <node concept="3F2HdR" id="H6wi3eH6I6" role="3EZMnx">
        <ref role="1NtTu8" to="yiol:ZYpNL93oA4" resolve="statement" />
        <node concept="l2Vlx" id="9r3Wp8JUoA" role="2czzBx" />
        <node concept="2SqB2G" id="AVF1CebYYT" role="2SqHTX">
          <property role="TrG5h" value="list" />
        </node>
        <node concept="4$FPG" id="cfS4XNr48L" role="4_6I_">
          <node concept="3clFbS" id="Os6ZWt_wdM" role="2VODD2">
            <node concept="3cpWs6" id="WI89nzEJKF" role="3cqZAp">
              <node concept="2ShNRf" id="sXqqtzoejE" role="3cqZAk">
                <node concept="3zrR0B" id="H56aG$0q3_" role="2ShVmc">
                  <node concept="3Tqbb2" id="nz1ofEpg6m" role="3zrR0E">
                    <ref role="ehGHo" to="6o2a:7DK$EIfvNik" resolve="EmptyLine" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="BdJgQc22oH" role="3EZMnx">
        <property role="3F0ifm" value="}" />
      </node>
      <node concept="l2Vlx" id="Hj9ka_eyZC" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="fvHcPDDoiO" role="6VMZX">
      <node concept="2iRkQZ" id="6A4vpKGan7" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="ZkjSZ2w18E">
    <property role="3GE5qa" value="ANTLR" />
    <ref role="1XX52x" to="yiol:Kq4lKso5HZ" resolve="statement__ANTLRAlternative1" />
    <node concept="3EZMnI" id="y_NGP6JsRr" role="2wV5jI">
      <node concept="3F1sOY" id="64U$_BkfEP" role="3EZMnx">
        <ref role="1NtTu8" to="yiol:wKshwUl2Jt" resolve="block" />
      </node>
      <node concept="l2Vlx" id="8ot9FVINON" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="EPthN6XnGS" role="6VMZX">
      <node concept="2iRkQZ" id="TqUznoGWXD" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="nXpr7DLYkP">
    <property role="3GE5qa" value="ANTLR" />
    <ref role="1XX52x" to="yiol:QV2k4q3e_f" resolve="statement__ANTLRAlternative2" />
    <node concept="3EZMnI" id="HiWOmeh2jp" role="2wV5jI">
      <node concept="3F0ifn" id="AmJpHzqj8j" role="3EZMnx">
        <property role="3F0ifm" value="return" />
      </node>
      <node concept="3F1sOY" id="D$pNgZYEnF" role="3EZMnx">
        <ref role="1NtTu8" to="yiol:jjjS_uBv5O" resolve="_AntlrGroup1" />
      </node>
      <node concept="3F0ifn" id="OAb8I1qJ9O" role="3EZMnx">
        <property role="3F0ifm" value=";" />
      </node>
      <node concept="l2Vlx" id="AZsclC_5Cd" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="Ed5tHyJlxo" role="6VMZX">
      <node concept="2iRkQZ" id="x3tDql$zP5" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="BhvF50srAL">
    <property role="3GE5qa" value="ANTLR" />
    <ref role="1XX52x" to="yiol:lA4KLA7h11" resolve="expression" />
    <node concept="3EZMnI" id="mR8WhSQfx0" role="2wV5jI">
      <node concept="3F0A7n" id="vJvyJDyRAC" role="3EZMnx">
        <ref role="1NtTu8" to="yiol:bHYQBUUrtP" resolve="NUMBER" />
      </node>
      <node concept="3F2HdR" id="oAFhmiWZ5C" role="3EZMnx">
        <ref role="1NtTu8" to="yiol:g74Akw7nYN" resolve="_AntlrGroup2" />
        <node concept="l2Vlx" id="Unx$7XFPIH" role="2czzBx" />
        <node concept="2SqB2G" id="ni5p9JDDvP" role="2SqHTX">
          <property role="TrG5h" value="list" />
        </node>
        <node concept="4$FPG" id="_NBNIwqL0" role="4_6I_">
          <node concept="3clFbS" id="_LbgIUKyWk" role="2VODD2">
            <node concept="3cpWs6" id="OlBcVONEOh" role="3cqZAp">
              <node concept="2ShNRf" id="pqrzNZsFfE" role="3cqZAk">
                <node concept="3zrR0B" id="H8Ytk5faU0" role="2ShVmc">
                  <node concept="3Tqbb2" id="quP5RieX_Q" role="3zrR0E">
                    <ref role="ehGHo" to="6o2a:7DK$EIfvNik" resolve="EmptyLine" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="MyYk_i1QEe" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="qesO5jH0ZY" role="6VMZX">
      <node concept="2iRkQZ" id="3lgHD9w41O" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="QtDeuG9L7b">
    <property role="3GE5qa" value="ANTLR" />
    <ref role="1XX52x" to="yiol:6MHCkHrF8A" resolve="_AntlrGroup1" />
    <node concept="3EZMnI" id="CljWyuTaby" role="2wV5jI">
      <node concept="3F0ifn" id="V0joWf7lpP" role="3EZMnx">
        <property role="3F0ifm" value=" " />
      </node>
      <node concept="3F1sOY" id="fr7OxTDKEu" role="3EZMnx">
        <ref role="1NtTu8" to="yiol:YRcPPsVtuW" resolve="expression" />
      </node>
      <node concept="l2Vlx" id="MSPoBRRKLP" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="bUJUwSzY_K" role="6VMZX">
      <node concept="2iRkQZ" id="MALE8bMn6q" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="uRd0xqJROm">
    <property role="3GE5qa" value="ANTLR" />
    <ref role="1XX52x" to="yiol:Wz9J6$x4fc" resolve="_AntlrGroup2" />
    <node concept="3EZMnI" id="au_wmBsWRj" role="2wV5jI">
      <node concept="3F0ifn" id="c$alIY2pbk" role="3EZMnx">
        <property role="3F0ifm" value="+" />
      </node>
      <node concept="3F0A7n" id="l8ZXO7g9mx" role="3EZMnx">
        <ref role="1NtTu8" to="yiol:3EKqKeaXvJ" resolve="NUMBER" />
      </node>
      <node concept="l2Vlx" id="oEEsviKJeg" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="D5accPfAz3" role="6VMZX">
      <node concept="2iRkQZ" id="l2tPseNyqp" role="2iSdaV" />
    </node>
  </node>
  <node concept="1h_SRR" id="li7PjiUdi">
    <property role="TrG5h" value="OptionalRepeatedList_ActionMap" />
    <property role="3GE5qa" value="ANTLR" />
    <ref role="1h_SK9" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1hA7zw" id="UQnrCV9M96" role="1h_SK8">
      <property role="1hHO97" value="Remove a node only from an optional repeated containment list" />
      <property role="1hAc7j" value="g_hAxAO/delete_action_id" />
      <node concept="1hAIg9" id="S$ONZY7Oju" role="1hA7z_">
        <node concept="3clFbS" id="H6GtABfiKa" role="2VODD2">
          <node concept="3cpWs8" id="I4JduNbWUx" role="3cqZAp">
            <node concept="3cpWsn" id="wPX7eUhVHp" role="3cpWs9">
              <property role="TrG5h" value="selected" />
              <node concept="3uibUv" id="ZELs46Y3Fi" role="1tU5fm">
                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
              </node>
              <node concept="0IXxy" id="lZnUqB19Fm" role="33vP2m" />
            </node>
          </node>
          <node concept="3clFbF" id="nzcvjVQz5r" role="3cqZAp">
            <node concept="2OqwBi" id="6FNdvyQelS" role="3clFbG">
              <node concept="37vLTw" id="FQ4xVVBOTh" role="2Oq$k0">
                <ref role="3cqZAo" node="wPX7eUhVHp" resolve="selected" />
              </node>
              <node concept="liA8E" id="keR4MJvuRu" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.delete()" resolve="delete" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="jK8Ss" id="siYZvFZyN3" role="jK8aL">
        <node concept="3clFbS" id="IIPUExJTvJ" role="2VODD2">
          <node concept="3cpWs8" id="6SF5aNsat2" role="3cqZAp">
            <node concept="3cpWsn" id="NYHZJFmcN2" role="3cpWs9">
              <property role="TrG5h" value="selected" />
              <node concept="3uibUv" id="mACVZvsceM" role="1tU5fm">
                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
              </node>
              <node concept="0IXxy" id="RYzB0I9m0I" role="33vP2m" />
            </node>
          </node>
          <node concept="3cpWs8" id="hwPKzpB6ii" role="3cqZAp">
            <node concept="3cpWsn" id="kEot9QGv3X" role="3cpWs9">
              <property role="TrG5h" value="link" />
              <node concept="3uibUv" id="iTH1WPSD$t" role="1tU5fm">
                <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
              </node>
              <node concept="2OqwBi" id="b72JO8bXfO" role="33vP2m">
                <node concept="37vLTw" id="rkkeLbA_0D" role="2Oq$k0">
                  <ref role="3cqZAo" node="NYHZJFmcN2" resolve="selected" />
                </node>
                <node concept="liA8E" id="W57nIKIptm" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getContainmentLink()" resolve="getContainmentLink" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="SAATdqeRYP" role="3cqZAp">
            <node concept="1Wc70l" id="Bbpgrh$4S7" role="3cqZAk">
              <node concept="1Wc70l" id="lRUiKbY9di" role="3uHU7B">
                <node concept="1Wc70l" id="MOl11OUeXi" role="3uHU7B">
                  <node concept="3y3z36" id="Tlm4PJClL5" role="3uHU7B">
                    <node concept="2OqwBi" id="oHFC4vJbh_" role="3uHU7B">
                      <node concept="37vLTw" id="kr2ms0BDev" role="2Oq$k0">
                        <ref role="3cqZAo" node="NYHZJFmcN2" resolve="selected" />
                      </node>
                      <node concept="liA8E" id="dd7A1KoLdP" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getParent()" resolve="getParent" />
                      </node>
                    </node>
                    <node concept="10Nm6u" id="$u3USoUn7N" role="3uHU7w" />
                  </node>
                  <node concept="3y3z36" id="IDZlhLOpyx" role="3uHU7w">
                    <node concept="37vLTw" id="p019PzVHBW" role="3uHU7B">
                      <ref role="3cqZAo" node="kEot9QGv3X" resolve="link" />
                    </node>
                    <node concept="10Nm6u" id="r71WTSnrpe" role="3uHU7w" />
                  </node>
                </node>
                <node concept="2OqwBi" id="q3TIp9yVCV" role="3uHU7w">
                  <node concept="37vLTw" id="ni8Nc4YWJU" role="2Oq$k0">
                    <ref role="3cqZAo" node="kEot9QGv3X" resolve="link" />
                  </node>
                  <node concept="liA8E" id="rAJfluD3Og" role="2OqNvi">
                    <ref role="37wK5l" to="c17a:~SAbstractLink.isMultiple()" resolve="isMultiple" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="xlvg4cW6Z4" role="3uHU7w">
                <node concept="37vLTw" id="L_wpCAEKW" role="2Oq$k0">
                  <ref role="3cqZAo" node="kEot9QGv3X" resolve="link" />
                </node>
                <node concept="liA8E" id="8flyFmg9kw" role="2OqNvi">
                  <ref role="37wK5l" to="c17a:~SAbstractLink.isOptional()" resolve="isOptional" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1hA7zw" id="Axw_BOjfr4" role="1h_SK8">
      <property role="1hAc7j" value="13S4mXuSN7V/insert_action_id" />
      <property role="1hHO97" value="Insert a blank sibling at the end of an optional repeated containment list" />
      <node concept="1hAIg9" id="U2PClxCvTh" role="1hA7z_">
        <node concept="3clFbS" id="AN_wIQOclA" role="2VODD2">
          <node concept="3cpWs8" id="fyoW2of4a" role="3cqZAp">
            <node concept="3cpWsn" id="8nTulB8ipf" role="3cpWs9">
              <property role="TrG5h" value="selected" />
              <node concept="3uibUv" id="DasHx4oN0g" role="1tU5fm">
                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
              </node>
              <node concept="0IXxy" id="DQw$UDQKft" role="33vP2m" />
            </node>
          </node>
          <node concept="3cpWs8" id="n0wPofV9d4" role="3cqZAp">
            <node concept="3cpWsn" id="hKzPVMhdHC" role="3cpWs9">
              <property role="TrG5h" value="n" />
              <node concept="3uibUv" id="hmgw8H9l9" role="1tU5fm">
                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
              </node>
              <node concept="2OqwBi" id="4nrovny2_o" role="33vP2m">
                <node concept="2OqwBi" id="pMVC$YiiZj" role="2Oq$k0">
                  <node concept="liA8E" id="2dye75sAk2" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SNode.getModel()" resolve="getModel" />
                  </node>
                  <node concept="37vLTw" id="85hKsYxCq$" role="2Oq$k0">
                    <ref role="3cqZAo" node="8nTulB8ipf" resolve="selected" />
                  </node>
                </node>
                <node concept="liA8E" id="fcGbCOBEaW" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SModel.createNode(org.jetbrains.mps.openapi.language.SConcept)" resolve="createNode" />
                  <node concept="2OqwBi" id="simanKY0XV" role="37wK5m">
                    <node concept="liA8E" id="DqI3HuSnZi" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                    </node>
                    <node concept="37vLTw" id="$FljWNHUBV" role="2Oq$k0">
                      <ref role="3cqZAo" node="8nTulB8ipf" resolve="selected" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="XQZOoLtmrK" role="3cqZAp">
            <node concept="2OqwBi" id="8ev578KqoS" role="3clFbG">
              <node concept="2OqwBi" id="5$jfWBX8Bs" role="2Oq$k0">
                <node concept="37vLTw" id="pVJfC3AuGd" role="2Oq$k0">
                  <ref role="3cqZAo" node="8nTulB8ipf" resolve="selected" />
                </node>
                <node concept="liA8E" id="qz0OpwIG6_" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getParent()" resolve="getParent" />
                </node>
              </node>
              <node concept="liA8E" id="1Y8h7z2Nq7" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.insertChildAfter(org.jetbrains.mps.openapi.language.SContainmentLink,org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode)" resolve="insertChildAfter" />
                <node concept="2OqwBi" id="gTQ1mh$Ohn" role="37wK5m">
                  <node concept="37vLTw" id="i_d9zPxKlf" role="2Oq$k0">
                    <ref role="3cqZAo" node="8nTulB8ipf" resolve="selected" />
                  </node>
                  <node concept="liA8E" id="9jU8GEF6F1" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SNode.getContainmentLink()" resolve="getContainmentLink" />
                  </node>
                </node>
                <node concept="37vLTw" id="4ctoSevc29" role="37wK5m">
                  <ref role="3cqZAo" node="hKzPVMhdHC" resolve="n" />
                </node>
                <node concept="37vLTw" id="ZYHeZgHD5S" role="37wK5m">
                  <ref role="3cqZAo" node="8nTulB8ipf" resolve="selected" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="1lBeX9pOHL" role="3cqZAp">
            <node concept="2OqwBi" id="M$IqQL8v6E" role="3clFbG">
              <node concept="1OKiuA" id="4$CD8DvmAB" role="2OqNvi">
                <node concept="1Q80Hx" id="qRXaDPIOe_" role="lBI5i" />
                <node concept="1lyA5W" id="QlGIIUl6P4" role="lGT1i">
                  <property role="1lUG9U" value="selector_first_editable|selector_first" />
                </node>
              </node>
              <node concept="1PxgMI" id="N1$h5ptXqN" role="2Oq$k0">
                <property role="1BlNFB" value="true" />
                <node concept="chp4Y" id="W7NNz4J8lQ" role="3oSUPX">
                  <ref role="cht4Q" to="tpck:gw2VY9q" resolve="BaseConcept" />
                </node>
                <node concept="37vLTw" id="8yoZdjti0M" role="1m5AlR">
                  <ref role="3cqZAo" node="hKzPVMhdHC" resolve="n" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="jK8Ss" id="LoZk50OjPE" role="jK8aL">
        <node concept="3clFbS" id="7MZDB6nNj9" role="2VODD2">
          <node concept="3cpWs8" id="dZOpZxpmUS" role="3cqZAp">
            <node concept="3cpWsn" id="mycTdHK0Qc" role="3cpWs9">
              <property role="TrG5h" value="selected" />
              <node concept="3uibUv" id="XL2a9ZmRKX" role="1tU5fm">
                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
              </node>
              <node concept="0IXxy" id="9n8b4uHts$" role="33vP2m" />
            </node>
          </node>
          <node concept="3cpWs8" id="nYZjDsbdZi" role="3cqZAp">
            <node concept="3cpWsn" id="q6KxdiG03V" role="3cpWs9">
              <property role="TrG5h" value="link" />
              <node concept="3uibUv" id="RmRjF55jpV" role="1tU5fm">
                <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
              </node>
              <node concept="2OqwBi" id="RG1lS1BKFE" role="33vP2m">
                <node concept="37vLTw" id="Q3vuDzlylF" role="2Oq$k0">
                  <ref role="3cqZAo" node="mycTdHK0Qc" resolve="selected" />
                </node>
                <node concept="liA8E" id="O4fyH$xElY" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getContainmentLink()" resolve="getContainmentLink" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="QW8HMj_EUU" role="3cqZAp">
            <node concept="1Wc70l" id="7LrmoPiSWM" role="3cqZAk">
              <node concept="1Wc70l" id="HGZ_HZpk4m" role="3uHU7B">
                <node concept="1Wc70l" id="6bfuYS1Qmf" role="3uHU7B">
                  <node concept="1Wc70l" id="IhWdkws_ml" role="3uHU7B">
                    <node concept="3y3z36" id="WkWhDvVXje" role="3uHU7B">
                      <node concept="2OqwBi" id="rPYsdiEAPS" role="3uHU7B">
                        <node concept="37vLTw" id="arYs$eMQK9" role="2Oq$k0">
                          <ref role="3cqZAo" node="mycTdHK0Qc" resolve="selected" />
                        </node>
                        <node concept="liA8E" id="SL2_Qx$e8r" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SNode.getParent()" resolve="getParent" />
                        </node>
                      </node>
                      <node concept="10Nm6u" id="pXeF8g3CNE" role="3uHU7w" />
                    </node>
                    <node concept="3y3z36" id="wM7b9vVmjb" role="3uHU7w">
                      <node concept="37vLTw" id="$dF0fgrpcZ" role="3uHU7B">
                        <ref role="3cqZAo" node="q6KxdiG03V" resolve="link" />
                      </node>
                      <node concept="10Nm6u" id="Tf3OlZejYA" role="3uHU7w" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="1Vo5pKQWlP" role="3uHU7w">
                    <node concept="37vLTw" id="70H4Awcph7" role="2Oq$k0">
                      <ref role="3cqZAo" node="q6KxdiG03V" resolve="link" />
                    </node>
                    <node concept="liA8E" id="stehGtHjd2" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractLink.isMultiple()" resolve="isMultiple" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="awcqJUW7Ey" role="3uHU7w">
                  <node concept="37vLTw" id="kU6PDttoH6" role="2Oq$k0">
                    <ref role="3cqZAo" node="q6KxdiG03V" resolve="link" />
                  </node>
                  <node concept="liA8E" id="GCz4xKsWRV" role="2OqNvi">
                    <ref role="37wK5l" to="c17a:~SAbstractLink.isOptional()" resolve="isOptional" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="MGyc0h_XH6" role="3uHU7w">
                <node concept="2OqwBi" id="rqgOFwhRSJ" role="2Oq$k0">
                  <node concept="0IXxy" id="5EJJ0YRVB5" role="2Oq$k0" />
                  <node concept="YCak7" id="$qEO9B9r8q" role="2OqNvi" />
                </node>
                <node concept="3w_OXm" id="95QAd4w9uN" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

