<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:ca936f89-ba77-4ff7-9a03-c2760446caa0(DemoUsability.editor)">
  <persistence version="9" />
  <languages>
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="15" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="602c36ad-cc55-47ff-8c40-73d7f12f035c" name="jetbrains.mps.lang.editor.forms" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="n2m4" ref="r:29df74a9-1ef8-4ba0-9f28-0451ab1e71a4(DemoUsability.structure)" />
    <import index="cj4x" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor(MPS.Editor/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi">
        <child id="1078153129734" name="inspectedCellModel" index="6VMZX" />
      </concept>
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
      </concept>
      <concept id="1106270571710" name="jetbrains.mps.lang.editor.structure.CellLayout_Vertical" flags="nn" index="2iRkQZ" />
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1142886811589" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_node" flags="nn" index="pncrf" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="1164824717996" name="jetbrains.mps.lang.editor.structure.CellMenuDescriptor" flags="ng" index="OXEIz">
        <child id="1164824815888" name="cellMenuPart" index="OY2wv" />
      </concept>
      <concept id="4323500428121233431" name="jetbrains.mps.lang.editor.structure.EditorCellId" flags="ng" index="2SqB2G" />
      <concept id="1074767920765" name="jetbrains.mps.lang.editor.structure.CellModel_ModelAccess" flags="sg" stub="8104358048506729357" index="XafU7">
        <child id="1176718152741" name="modelAcessor" index="3TRxkO" />
      </concept>
      <concept id="2162403111523059536" name="jetbrains.mps.lang.editor.structure.IdSelector" flags="ng" index="1lyA5W">
        <property id="2162403111529391190" name="cellId" index="1lUG9U" />
      </concept>
      <concept id="1165424453110" name="jetbrains.mps.lang.editor.structure.CellMenuPart_Generic_Item" flags="ng" index="1oHujT">
        <property id="1165424453111" name="matchingText" index="1oHujS" />
        <child id="1165424453112" name="handlerFunction" index="1oHujR" />
      </concept>
      <concept id="1165424657443" name="jetbrains.mps.lang.editor.structure.CellMenuPart_Generic_Item_Handler" flags="in" index="1oIgkG" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1073389214265" name="jetbrains.mps.lang.editor.structure.EditorCellModel" flags="ng" index="3EYTF0">
        <child id="1164826688380" name="menuDescriptor" index="P5bDN" />
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
      <concept id="1163613822479" name="jetbrains.mps.lang.editor.structure.CellMenuPart_Abstract_editedNode" flags="nn" index="3GMtW1" />
      <concept id="3647146066980922272" name="jetbrains.mps.lang.editor.structure.SelectInEditorOperation" flags="nn" index="1OKiuA">
        <child id="1948540814633499358" name="editorContext" index="lBI5i" />
        <child id="1948540814635895774" name="cellSelector" index="lGT1i" />
        <child id="2701921320705252232" name="selectionEnd" index="mNZMC" />
        <child id="3604384757217586546" name="selectionStart" index="3dN3m$" />
      </concept>
      <concept id="1161622981231" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_editorContext" flags="nn" index="1Q80Hx" />
      <concept id="1176717779940" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_text" flags="nn" index="3TQ6bP" />
      <concept id="1176717841777" name="jetbrains.mps.lang.editor.structure.QueryFunction_ModelAccess_Getter" flags="in" index="3TQlhw" />
      <concept id="1176717871254" name="jetbrains.mps.lang.editor.structure.QueryFunction_ModelAccess_Setter" flags="in" index="3TQsA7" />
      <concept id="1176717888428" name="jetbrains.mps.lang.editor.structure.QueryFunction_ModelAccess_Validator" flags="in" index="3TQwEX" />
      <concept id="1176717996748" name="jetbrains.mps.lang.editor.structure.ModelAccessor" flags="ng" index="3TQVft">
        <child id="1176718001874" name="getter" index="3TQWv3" />
        <child id="1176718007938" name="setter" index="3TQXYj" />
        <child id="1176718014393" name="validator" index="3TQZqC" />
      </concept>
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
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
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
    </language>
    <language id="602c36ad-cc55-47ff-8c40-73d7f12f035c" name="jetbrains.mps.lang.editor.forms">
      <concept id="7024409093146622323" name="jetbrains.mps.lang.editor.forms.structure.CheckboxUI_Platform" flags="ng" index="jv8YD" />
      <concept id="312429380032619384" name="jetbrains.mps.lang.editor.forms.structure.CellModel_Checkbox" flags="ng" index="2yq9I_">
        <reference id="3696012239575138271" name="propertyDeclaration" index="225u1j" />
        <child id="8215612579904156902" name="label" index="2fqkNU" />
        <child id="1340057216891284122" name="ui" index="1563LE" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
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
  <node concept="24kQdi" id="OzopT5VPVN">
    <ref role="1XX52x" to="n2m4:pokUpJQ$xE" />
    <node concept="3EZMnI" id="EHYyCxpCIM" role="2wV5jI">
      <node concept="3F0ifn" id="H2DbQ1oBUD" role="3EZMnx">
        <property role="3F0ifm" value="skip" />
      </node>
      <node concept="l2Vlx" id="8kueKDKAwU" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="_L3aYZU_Qz" role="6VMZX">
      <node concept="2iRkQZ" id="QC8YN1RGP0" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="6EcOn_p756">
    <ref role="1XX52x" to="n2m4:gh6_CIVq1L" />
    <node concept="3EZMnI" id="28G42MCxfP" role="2wV5jI">
      <node concept="3F0ifn" id="d_a1a4VFcK" role="3EZMnx">
        <property role="3F0ifm" value="else" />
      </node>
      <node concept="3F2HdR" id="VmEUmlH6W_" role="3EZMnx">
        <ref role="1NtTu8" to="n2m4:F8K3F5g4Ey" />
        <node concept="l2Vlx" id="MrpdVFvk0M" role="2czzBx" />
      </node>
      <node concept="l2Vlx" id="6Im2C8ze8A" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="bXvzWU9qnr" role="6VMZX">
      <node concept="2iRkQZ" id="zrRDauIOgz" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="jaEXc2TRC2">
    <property role="3GE5qa" value="" />
    <ref role="1XX52x" to="n2m4:clKjNn70OE" resolve="Program" />
    <node concept="3EZMnI" id="PvGR7C$ETo" role="2wV5jI">
      <node concept="3F0ifn" id="ieGZZ3dPM3" role="3EZMnx">
        <property role="3F0ifm" value="program" />
      </node>
      <node concept="3EZMnI" id="zAiuashCs6" role="3EZMnx">
        <node concept="2iRkQZ" id="poobprVlxV" role="2iSdaV" />
        <node concept="2SqB2G" id="HHnlWw8M36" role="2SqHTX">
          <property role="TrG5h" value="flag_projection_static" />
        </node>
        <node concept="XafU7" id="LdIwPTcOed" role="3EZMnx">
          <node concept="3TQVft" id="bX_7ovhCid" role="3TRxkO">
            <node concept="3TQlhw" id="gH0PpO7l$M" role="3TQWv3">
              <node concept="3clFbS" id="jrnxBEIv2N" role="2VODD2">
                <node concept="3cpWs6" id="Ds9d74jjQf" role="3cqZAp">
                  <node concept="3K4zz7" id="MqrIdxKIAT" role="3cqZAk">
                    <node concept="2OqwBi" id="Pp4BRyfxaz" role="3K4Cdx">
                      <node concept="3TrcHB" id="1XhTKq2mvu" role="2OqNvi">
                        <ref role="3TsBF5" to="n2m4:qalK2bn9Sg" resolve="static" />
                      </node>
                      <node concept="pncrf" id="IHbs0$tUOi" role="2Oq$k0" />
                    </node>
                    <node concept="Xl_RD" id="GH$_GadUqY" role="3K4E3e">
                      <property role="Xl_RC" value="static" />
                    </node>
                    <node concept="Xl_RD" id="bjTsPADxEw" role="3K4GZi">
                      <property role="Xl_RC" value="" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3TQsA7" id="bKg$Mx01oB" role="3TQXYj">
              <node concept="3clFbS" id="u5zfjKna7F" role="2VODD2">
                <node concept="3clFbF" id="i7h27hyOJr" role="3cqZAp">
                  <node concept="37vLTI" id="MtbsMCNgQy" role="3clFbG">
                    <node concept="2OqwBi" id="UUV4M590zn" role="37vLTJ">
                      <node concept="3TrcHB" id="uGrkjwY0d8" role="2OqNvi">
                        <ref role="3TsBF5" to="n2m4:qalK2bn9Sg" resolve="static" />
                      </node>
                      <node concept="pncrf" id="JOmZHlPw2a" role="2Oq$k0" />
                    </node>
                    <node concept="2OqwBi" id="zhpy05_iEc" role="37vLTx">
                      <node concept="Xl_RD" id="2a9zKR8fWX" role="2Oq$k0">
                        <property role="Xl_RC" value="static" />
                      </node>
                      <node concept="liA8E" id="UjVRKiNgxi" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                        <node concept="3TQ6bP" id="uhKqB3Hz8G" role="37wK5m" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3TQwEX" id="2ZrNJbZRdX" role="3TQZqC">
              <node concept="3clFbS" id="vxeRcfdesD" role="2VODD2">
                <node concept="3cpWs6" id="Bn6tMJV4VO" role="3cqZAp">
                  <node concept="22lmx$" id="nARbXTo0A9" role="3cqZAk">
                    <node concept="2OqwBi" id="vQCT8tG_m1" role="3uHU7B">
                      <node concept="Xl_RD" id="ULNnhx_dcN" role="2Oq$k0">
                        <property role="Xl_RC" value="" />
                      </node>
                      <node concept="liA8E" id="ctAN8A$Gme" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                        <node concept="3TQ6bP" id="WEWJlQoR6q" role="37wK5m" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="$M$2oAYyB4" role="3uHU7w">
                      <node concept="Xl_RD" id="Jv2R2nkP7H" role="2Oq$k0">
                        <property role="Xl_RC" value="static" />
                      </node>
                      <node concept="liA8E" id="h6vXzETAgk" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                        <node concept="3TQ6bP" id="EBXQW5$SOy" role="37wK5m" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2SqB2G" id="vmwmpaFubT" role="2SqHTX">
            <property role="TrG5h" value="flag_static" />
          </node>
          <node concept="OXEIz" id="_cLGailgqy" role="P5bDN">
            <node concept="1oHujT" id="EkX_nX0sS" role="OY2wv">
              <property role="1oHujS" value="static" />
              <node concept="1oIgkG" id="cCeHz5GyZH" role="1oHujR">
                <node concept="3clFbS" id="4xOgU0F9k5" role="2VODD2">
                  <node concept="3clFbF" id="lCuqa9t28O" role="3cqZAp">
                    <node concept="37vLTI" id="s$fKbHh9eC" role="3clFbG">
                      <node concept="2OqwBi" id="FdWO2QXe9o" role="37vLTJ">
                        <node concept="3TrcHB" id="4CYwqWBPvh" role="2OqNvi">
                          <ref role="3TsBF5" to="n2m4:qalK2bn9Sg" resolve="static" />
                        </node>
                        <node concept="3GMtW1" id="xc$3nGIJj9" role="2Oq$k0" />
                      </node>
                      <node concept="3clFbT" id="K0QszGHFeX" role="37vLTx">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="UE5BeP0BI$" role="3cqZAp">
                    <node concept="2OqwBi" id="_xmghow_Ji" role="3clFbG">
                      <node concept="1Q80Hx" id="_PmXp8Hckw" role="2Oq$k0" />
                      <node concept="liA8E" id="nntWFuiwMq" role="2OqNvi">
                        <ref role="37wK5l" to="cj4x:~EditorContext.flushEvents()" resolve="flushEvents" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="U7cWqr0hTW" role="3cqZAp">
                    <node concept="2OqwBi" id="aY$fTNtvXW" role="3clFbG">
                      <node concept="3GMtW1" id="KGD3XQ5Kef" role="2Oq$k0" />
                      <node concept="1OKiuA" id="RBj08YmJ5U" role="2OqNvi">
                        <node concept="1Q80Hx" id="5UaCNUX$Ua" role="lBI5i" />
                        <node concept="1lyA5W" id="Gbm$gqEvHX" role="lGT1i">
                          <property role="1lUG9U" value="flag_static" />
                        </node>
                        <node concept="3cmrfG" id="2XAqb$pN0q" role="3dN3m$">
                          <property role="3cmrfH" value="6" />
                        </node>
                        <node concept="3cmrfG" id="CJ_wdFeznB" role="mNZMC">
                          <property role="3cmrfH" value="6" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1oHujT" id="LdPowb1Bar" role="OY2wv">
              <property role="1oHujS" value="static (remove)" />
              <node concept="1oIgkG" id="MbthY9vA26" role="1oHujR">
                <node concept="3clFbS" id="ttGWdpCezP" role="2VODD2">
                  <node concept="3clFbF" id="kx0m$xFOO9" role="3cqZAp">
                    <node concept="37vLTI" id="1pJ4tiDyO_" role="3clFbG">
                      <node concept="2OqwBi" id="npMojGqpXl" role="37vLTJ">
                        <node concept="3TrcHB" id="afnbk1hYH1" role="2OqNvi">
                          <ref role="3TsBF5" to="n2m4:qalK2bn9Sg" resolve="static" />
                        </node>
                        <node concept="3GMtW1" id="EXw8r5PJYP" role="2Oq$k0" />
                      </node>
                      <node concept="3clFbT" id="6DKFwz48ga" role="37vLTx" />
                    </node>
                  </node>
                  <node concept="3clFbF" id="l9DHIPFiBq" role="3cqZAp">
                    <node concept="2OqwBi" id="1_cVQan_tj" role="3clFbG">
                      <node concept="1Q80Hx" id="wssrljViaH" role="2Oq$k0" />
                      <node concept="liA8E" id="XIeNrzeNs5" role="2OqNvi">
                        <ref role="37wK5l" to="cj4x:~EditorContext.flushEvents()" resolve="flushEvents" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="ryZOK57Qev" role="3cqZAp">
                    <node concept="2OqwBi" id="VLwvGfQTJ3" role="3clFbG">
                      <node concept="3GMtW1" id="qLUiCE2Lln" role="2Oq$k0" />
                      <node concept="1OKiuA" id="9b$0eBjwiX" role="2OqNvi">
                        <node concept="1Q80Hx" id="qyk7Ibh9eL" role="lBI5i" />
                        <node concept="1lyA5W" id="$ALOHSO676" role="lGT1i">
                          <property role="1lUG9U" value="flag_static" />
                        </node>
                        <node concept="3cmrfG" id="tiDQD4ND_b" role="3dN3m$">
                          <property role="3cmrfH" value="0" />
                        </node>
                        <node concept="3cmrfG" id="ilBNJOjGv6" role="mNZMC">
                          <property role="3cmrfH" value="0" />
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
      <node concept="3F2HdR" id="MBPdtL7dnu" role="3EZMnx">
        <ref role="1NtTu8" to="n2m4:SzoEKCxLlM" />
        <node concept="l2Vlx" id="6KmDeXS0CK" role="2czzBx" />
      </node>
      <node concept="3F0ifn" id="ZNQNAIjqrj" role="3EZMnx">
        <property role="3F0ifm" value="else" />
      </node>
      <node concept="3F2HdR" id="qX$4caeCOz" role="3EZMnx">
        <ref role="1NtTu8" to="n2m4:GJjzMoNEJh" />
        <node concept="l2Vlx" id="H2Q3RTbjbS" role="2czzBx" />
      </node>
      <node concept="l2Vlx" id="cjt0jYluke" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="5OTV0m_pie" role="6VMZX">
      <node concept="2iRkQZ" id="e6jKcwIlMK" role="2iSdaV" />
      <node concept="3EZMnI" id="GcDigLOwWT" role="3EZMnx">
        <node concept="2iRkQZ" id="kBoC861fgm" role="2iSdaV" />
        <node concept="2yq9I_" id="Amr_J5AOqp" role="3EZMnx">
          <ref role="225u1j" to="n2m4:qalK2bn9Sg" resolve="static" />
          <node concept="jv8YD" id="atf0CHKcAD" role="1563LE" />
          <node concept="3F0ifn" id="3X9_aKNFZS" role="2fqkNU">
            <property role="3F0ifm" value="static" />
          </node>
        </node>
        <node concept="2SqB2G" id="ozU_mPjklw" role="2SqHTX">
          <property role="TrG5h" value="flag_form_static" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="22N7pcv7SY">
    <property role="3GE5qa" value="" />
    <ref role="1XX52x" to="n2m4:dIPqnga0qR" resolve="Declaration" />
    <node concept="3EZMnI" id="M6aebLKsQb" role="2wV5jI">
      <node concept="3EZMnI" id="iyB3mB576r" role="3EZMnx">
        <node concept="2iRkQZ" id="neppv9CA7m" role="2iSdaV" />
        <node concept="2SqB2G" id="rWLgwKujA2" role="2SqHTX">
          <property role="TrG5h" value="flag_projection_public" />
        </node>
        <node concept="XafU7" id="_lih6CsbWd" role="3EZMnx">
          <node concept="3TQVft" id="HhM6byPabo" role="3TRxkO">
            <node concept="3TQlhw" id="pupUpBlWBo" role="3TQWv3">
              <node concept="3clFbS" id="tw4xmDjUOA" role="2VODD2">
                <node concept="3cpWs6" id="g9tRLBUyH4" role="3cqZAp">
                  <node concept="3K4zz7" id="figdcs61y2" role="3cqZAk">
                    <node concept="2OqwBi" id="X1mqZXVStW" role="3K4Cdx">
                      <node concept="3TrcHB" id="o2K543162G" role="2OqNvi">
                        <ref role="3TsBF5" to="n2m4:27ycVzfuMb" resolve="public" />
                      </node>
                      <node concept="pncrf" id="48p9jgO5_B" role="2Oq$k0" />
                    </node>
                    <node concept="Xl_RD" id="IXeXFKSgXt" role="3K4E3e">
                      <property role="Xl_RC" value="public" />
                    </node>
                    <node concept="Xl_RD" id="jTtt0nF3ll" role="3K4GZi">
                      <property role="Xl_RC" value="" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3TQsA7" id="wztesZLvro" role="3TQXYj">
              <node concept="3clFbS" id="P40wFhaTC_" role="2VODD2">
                <node concept="3clFbF" id="IZ$GHwPBIU" role="3cqZAp">
                  <node concept="37vLTI" id="Z0yZ1mNNux" role="3clFbG">
                    <node concept="2OqwBi" id="jx8rCNdu0N" role="37vLTJ">
                      <node concept="3TrcHB" id="t5pBBwJd6P" role="2OqNvi">
                        <ref role="3TsBF5" to="n2m4:27ycVzfuMb" resolve="public" />
                      </node>
                      <node concept="pncrf" id="AaNUN6wouU" role="2Oq$k0" />
                    </node>
                    <node concept="2OqwBi" id="VTGNEYsGNF" role="37vLTx">
                      <node concept="Xl_RD" id="5EQ99ucW8o" role="2Oq$k0">
                        <property role="Xl_RC" value="public" />
                      </node>
                      <node concept="liA8E" id="7x177ghT1C" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                        <node concept="3TQ6bP" id="jVcD4VbEJT" role="37wK5m" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3TQwEX" id="lRoWU_oiiu" role="3TQZqC">
              <node concept="3clFbS" id="iJizGFQbDI" role="2VODD2">
                <node concept="3cpWs6" id="j0Z8mQJJwk" role="3cqZAp">
                  <node concept="22lmx$" id="liaWcp4hZV" role="3cqZAk">
                    <node concept="2OqwBi" id="2QJtqPRBqh" role="3uHU7B">
                      <node concept="Xl_RD" id="e_3I98qgCW" role="2Oq$k0">
                        <property role="Xl_RC" value="" />
                      </node>
                      <node concept="liA8E" id="t1sWmS7IDy" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                        <node concept="3TQ6bP" id="dEIDljizVs" role="37wK5m" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="YHuYpY7uJ6" role="3uHU7w">
                      <node concept="Xl_RD" id="r4Fx1CuXaM" role="2Oq$k0">
                        <property role="Xl_RC" value="public" />
                      </node>
                      <node concept="liA8E" id="_Kf_7hEZ_g" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                        <node concept="3TQ6bP" id="XxYEsvioTA" role="37wK5m" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2SqB2G" id="cRc0vCmtoq" role="2SqHTX">
            <property role="TrG5h" value="flag_public" />
          </node>
          <node concept="OXEIz" id="Gol2vC8gmp" role="P5bDN">
            <node concept="1oHujT" id="Btqk1K_CFf" role="OY2wv">
              <property role="1oHujS" value="public" />
              <node concept="1oIgkG" id="S5nP$mfiGU" role="1oHujR">
                <node concept="3clFbS" id="chG8zOz$2Q" role="2VODD2">
                  <node concept="3clFbF" id="wv5Ug4TfkW" role="3cqZAp">
                    <node concept="37vLTI" id="9HSMlbxQXG" role="3clFbG">
                      <node concept="2OqwBi" id="yzU_4UOdq7" role="37vLTJ">
                        <node concept="3TrcHB" id="Wm5JbnYMd9" role="2OqNvi">
                          <ref role="3TsBF5" to="n2m4:27ycVzfuMb" resolve="public" />
                        </node>
                        <node concept="3GMtW1" id="SAuP0cay9D" role="2Oq$k0" />
                      </node>
                      <node concept="3clFbT" id="8nogvzUsM2" role="37vLTx">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="UJQTnqNBL4" role="3cqZAp">
                    <node concept="2OqwBi" id="zuk1ICSyUA" role="3clFbG">
                      <node concept="1Q80Hx" id="XD$EyvyEai" role="2Oq$k0" />
                      <node concept="liA8E" id="MiedlOvn89" role="2OqNvi">
                        <ref role="37wK5l" to="cj4x:~EditorContext.flushEvents()" resolve="flushEvents" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="oFkAgEtUIj" role="3cqZAp">
                    <node concept="2OqwBi" id="n$lFSRYJJI" role="3clFbG">
                      <node concept="3GMtW1" id="dqoiWCKX$w" role="2Oq$k0" />
                      <node concept="1OKiuA" id="M1QBk_0Rlc" role="2OqNvi">
                        <node concept="1Q80Hx" id="b_yghqII$I" role="lBI5i" />
                        <node concept="1lyA5W" id="vIbr5PgqvP" role="lGT1i">
                          <property role="1lUG9U" value="flag_public" />
                        </node>
                        <node concept="3cmrfG" id="ijzeiXBrFQ" role="3dN3m$">
                          <property role="3cmrfH" value="6" />
                        </node>
                        <node concept="3cmrfG" id="QjJhtNgduX" role="mNZMC">
                          <property role="3cmrfH" value="6" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1oHujT" id="yjHgXVyME9" role="OY2wv">
              <property role="1oHujS" value="public (remove)" />
              <node concept="1oIgkG" id="OsryT$xM2W" role="1oHujR">
                <node concept="3clFbS" id="9tVhw9UKLZ" role="2VODD2">
                  <node concept="3clFbF" id="cN_dnsr7Yi" role="3cqZAp">
                    <node concept="37vLTI" id="ZoqRP8foBx" role="3clFbG">
                      <node concept="2OqwBi" id="eey0UiqtPu" role="37vLTJ">
                        <node concept="3TrcHB" id="ZfPxlafkUI" role="2OqNvi">
                          <ref role="3TsBF5" to="n2m4:27ycVzfuMb" resolve="public" />
                        </node>
                        <node concept="3GMtW1" id="4Kj29WCHn8" role="2Oq$k0" />
                      </node>
                      <node concept="3clFbT" id="of12jgVjRQ" role="37vLTx" />
                    </node>
                  </node>
                  <node concept="3clFbF" id="8mwq3CP$rM" role="3cqZAp">
                    <node concept="2OqwBi" id="JcjT3NzlJK" role="3clFbG">
                      <node concept="1Q80Hx" id="jQGuqWuqe3" role="2Oq$k0" />
                      <node concept="liA8E" id="dWqWFkXgL1" role="2OqNvi">
                        <ref role="37wK5l" to="cj4x:~EditorContext.flushEvents()" resolve="flushEvents" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="cUMHfBpNT2" role="3cqZAp">
                    <node concept="2OqwBi" id="fYLpv$XC5o" role="3clFbG">
                      <node concept="3GMtW1" id="p14U8qEMxI" role="2Oq$k0" />
                      <node concept="1OKiuA" id="dqQq2D$gyO" role="2OqNvi">
                        <node concept="1Q80Hx" id="_QmNn5HR43" role="lBI5i" />
                        <node concept="1lyA5W" id="HpUAKYbOds" role="lGT1i">
                          <property role="1lUG9U" value="flag_public" />
                        </node>
                        <node concept="3cmrfG" id="ajiKYw6ilE" role="3dN3m$">
                          <property role="3cmrfH" value="0" />
                        </node>
                        <node concept="3cmrfG" id="EHnXs7qvcu" role="mNZMC">
                          <property role="3cmrfH" value="0" />
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
      <node concept="3F0A7n" id="JCaBqARsJp" role="3EZMnx">
        <ref role="1NtTu8" to="n2m4:kvdqv6tNUD" resolve="identifier" />
      </node>
      <node concept="3F1sOY" id="jDA6yKgJm8" role="3EZMnx">
        <ref role="1NtTu8" to="n2m4:1sHbqs4rTK" />
      </node>
      <node concept="l2Vlx" id="ZZbIa7sJjA" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="_ElAiN7LD8" role="6VMZX">
      <node concept="2iRkQZ" id="aAonWnP7G0" role="2iSdaV" />
      <node concept="3EZMnI" id="twBUsBJsnE" role="3EZMnx">
        <node concept="2iRkQZ" id="MvslBXAUV0" role="2iSdaV" />
        <node concept="2yq9I_" id="n9JRa76ndT" role="3EZMnx">
          <ref role="225u1j" to="n2m4:27ycVzfuMb" resolve="public" />
          <node concept="jv8YD" id="Iaak6CeiGo" role="1563LE" />
          <node concept="3F0ifn" id="f8CKjBFBPW" role="2fqkNU">
            <property role="3F0ifm" value="public" />
          </node>
        </node>
        <node concept="2SqB2G" id="381XRtmuvZ" role="2SqHTX">
          <property role="TrG5h" value="flag_form_public" />
        </node>
      </node>
    </node>
  </node>
</model>

