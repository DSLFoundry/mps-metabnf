<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:66debf20-e685-4a91-9f18-11f44c99c9b0(metabnf.trivia.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="15" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="h111" ref="r:bd2a9164-7109-4dbc-9bcb-ba309b22799d(metabnf.trivia.structure)" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi" />
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
      </concept>
      <concept id="1106270549637" name="jetbrains.mps.lang.editor.structure.CellLayout_Horizontal" flags="nn" index="2iRfu4" />
      <concept id="1106270571710" name="jetbrains.mps.lang.editor.structure.CellLayout_Vertical" flags="nn" index="2iRkQZ" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="1149850725784" name="jetbrains.mps.lang.editor.structure.CellModel_AttributedNodeCell" flags="ng" index="2SsqMj" />
      <concept id="1088013125922" name="jetbrains.mps.lang.editor.structure.CellModel_RefCell" flags="sg" stub="730538219795941030" index="1iCGBv">
        <child id="1088186146602" name="editorComponent" index="1sWHZn" />
      </concept>
      <concept id="1088185857835" name="jetbrains.mps.lang.editor.structure.InlineEditorComponent" flags="ig" index="1sVBvm" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <property id="1139852716018" name="noTargetText" index="1$x2rV" />
        <property id="1140114345053" name="allowEmptyText" index="1O74Pk" />
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" flags="sn" stub="3013115976261988961" index="3EZMnI">
        <child id="1106270802874" name="cellLayout" index="2iSdaV" />
        <child id="1073389446424" name="childCellModel" index="3EZMnx" />
      </concept>
      <concept id="1073389577006" name="jetbrains.mps.lang.editor.structure.CellModel_Constant" flags="sn" stub="3610246225209162225" index="3F0ifn">
        <property id="1073389577007" name="text" index="3F0ifm" />
      </concept>
      <concept id="1073389658414" name="jetbrains.mps.lang.editor.structure.CellModel_Property" flags="sg" stub="730538219796134133" index="3F0A7n" />
      <concept id="1073390211982" name="jetbrains.mps.lang.editor.structure.CellModel_RefNodeList" flags="sg" stub="2794558372793454595" index="3F2HdR" />
      <concept id="625126330682908270" name="jetbrains.mps.lang.editor.structure.CellModel_ReferencePresentation" flags="sg" stub="730538219795961225" index="3SHvHV" />
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
    </language>
  </registry>
  <node concept="24kQdi" id="2HLwPyS3QeV">
    <property role="3GE5qa" value="targetTrivia" />
    <ref role="1XX52x" to="h111:2HLwPyS2MIz" resolve="TargetListTrivia" />
    <node concept="3EZMnI" id="2HLwPyS3QeT" role="2wV5jI">
      <node concept="2iRkQZ" id="2HLwPyS3QeU" role="2iSdaV" />
      <node concept="2SsqMj" id="2HLwPyS3QeO" role="3EZMnx" />
      <node concept="3EZMnI" id="2HLwPyS3QeR" role="3EZMnx">
        <node concept="2iRfu4" id="2HLwPyS3QeS" role="2iSdaV" />
        <node concept="3F0ifn" id="2HLwPyS3QeQ" role="3EZMnx">
          <property role="3F0ifm" value="trivia list:" />
        </node>
        <node concept="3F0A7n" id="2HLwPyS3QeP" role="3EZMnx">
          <property role="1O74Pk" value="true" />
          <ref role="1NtTu8" to="h111:2HLwPyS2MI$" resolve="listRole" />
        </node>
      </node>
      <node concept="3F2HdR" id="2HLwPyS3QeM" role="3EZMnx">
        <ref role="1NtTu8" to="h111:2HLwPyS2MID" resolve="chunks" />
        <node concept="2iRkQZ" id="2HLwPyS3QeN" role="2czzBx" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="2HLwPyS3Qf4">
    <property role="3GE5qa" value="targetTrivia" />
    <ref role="1XX52x" to="h111:2HLwPyS2MI_" resolve="TargetTriviaChunk" />
    <node concept="3EZMnI" id="2HLwPyS3Qf2" role="2wV5jI">
      <node concept="2iRfu4" id="2HLwPyS3Qf3" role="2iSdaV" />
      <node concept="3F0ifn" id="2HLwPyS3QeW" role="3EZMnx">
        <property role="3F0ifm" value="before:" />
      </node>
      <node concept="1iCGBv" id="2HLwPyS3QeX" role="3EZMnx">
        <property role="1$x2rV" value="&lt;end of list&gt;" />
        <ref role="1NtTu8" to="h111:2HLwPyS2MIC" resolve="anchor" />
        <node concept="1sVBvm" id="48J7WSkISV2" role="1sWHZn">
          <node concept="3SHvHV" id="48J7WSkISV3" role="2wV5jI" />
        </node>
      </node>
      <node concept="3F0ifn" id="2HLwPyS3QeY" role="3EZMnx">
        <property role="3F0ifm" value="blank:" />
      </node>
      <node concept="3F0A7n" id="2HLwPyS3QeZ" role="3EZMnx">
        <property role="1O74Pk" value="true" />
        <ref role="1NtTu8" to="h111:2HLwPyS2MIB" resolve="blankLine" />
      </node>
      <node concept="3F0ifn" id="2HLwPyS3Qf0" role="3EZMnx">
        <property role="3F0ifm" value="comment:" />
      </node>
      <node concept="3F0A7n" id="2HLwPyS3Qf1" role="3EZMnx">
        <property role="1O74Pk" value="true" />
        <ref role="1NtTu8" to="h111:2HLwPyS2MIA" resolve="text" />
      </node>
    </node>
  </node>
</model>

