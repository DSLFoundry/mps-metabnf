<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:fd18fece-0619-420e-acfb-80ca89a441e4(Demo.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="14" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="zejt" ref="r:2338345e-d246-468d-922d-9f8162ca4e3b(Demo.structure)" />
    <import index="ti4l" ref="dffab718-7078-49db-ab30-bc28036cf021/i:10000005(mbnf.sandbox@transient28/mbnf.sandbox.Demo@3_3)" />
    <import index="ti4m" ref="92199264-01e7-4497-a721-912b458e2f9c/i:10000005(mbnf.sandbox@transient8/mbnf.sandbox.Demo@3_3)" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi" />
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
      </concept>
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1237307900041" name="jetbrains.mps.lang.editor.structure.IndentLayoutIndentStyleClassItem" flags="ln" index="lj46D" />
      <concept id="1237385578942" name="jetbrains.mps.lang.editor.structure.IndentLayoutOnNewLineStyleClassItem" flags="ln" index="pVoyu" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
      </concept>
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
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
      <concept id="1219418625346" name="jetbrains.mps.lang.editor.structure.IStyleContainer" flags="ng" index="3F0Thp">
        <child id="1219418656006" name="styleItem" index="3F10Kt" />
      </concept>
      <concept id="1073389882823" name="jetbrains.mps.lang.editor.structure.CellModel_RefNode" flags="sg" stub="730538219795960754" index="3F1sOY" />
      <concept id="1073390211982" name="jetbrains.mps.lang.editor.structure.CellModel_RefNodeList" flags="sg" stub="2794558372793454595" index="3F2HdR" />
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
  <node concept="24kQdi" id="7wyN1SmTnn6">
    <property role="3GE5qa" value="expressions" />
    <ref role="1XX52x" to="ti4m:7wyN1SmTnhH" resolve="Bool" />
    <node concept="3EZMnI" id="7wyN1SmTnn7" role="2wV5jI">
      <node concept="3F0A7n" id="7wyN1SmTnn8" role="3EZMnx">
        <ref role="1NtTu8" to="ti4m:7wyN1SmTnhI" resolve="BooleanValue" />
      </node>
      <node concept="l2Vlx" id="7wyN1SmTnn9" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="7wyN1SmTnna">
    <property role="3GE5qa" value="expressions" />
    <ref role="1XX52x" to="ti4m:7wyN1SmTnhK" resolve="Number" />
    <node concept="3EZMnI" id="7wyN1SmTnnb" role="2wV5jI">
      <node concept="3F0A7n" id="7wyN1SmTnnc" role="3EZMnx">
        <ref role="1NtTu8" to="ti4m:7wyN1SmTnhL" resolve="NumberValue" />
      </node>
      <node concept="l2Vlx" id="7wyN1SmTnnd" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="7wyN1SmTnne">
    <property role="3GE5qa" value="statements" />
    <ref role="1XX52x" to="ti4m:7wyN1SmTnhQ" resolve="Skip" />
    <node concept="3EZMnI" id="7wyN1SmTnnf" role="2wV5jI">
      <node concept="3F0ifn" id="7wyN1SmTnng" role="3EZMnx">
        <property role="3F0ifm" value="skip" />
      </node>
      <node concept="l2Vlx" id="7wyN1SmTnnh" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="7wyN1SmTnni">
    <property role="3GE5qa" value="statements" />
    <ref role="1XX52x" to="ti4m:7wyN1SmTnhS" resolve="Assignment" />
    <node concept="3EZMnI" id="7wyN1SmTnnj" role="2wV5jI">
      <node concept="3F0A7n" id="7wyN1SmTnnk" role="3EZMnx">
        <ref role="1NtTu8" to="ti4m:7wyN1SmTnhT" resolve="Identifier" />
      </node>
      <node concept="3F0ifn" id="7wyN1SmTnnl" role="3EZMnx">
        <property role="3F0ifm" value=":=" />
      </node>
      <node concept="3F1sOY" id="7wyN1SmTnnm" role="3EZMnx">
        <ref role="1NtTu8" to="ti4m:7wyN1SmTnhU" resolve="Expression" />
      </node>
      <node concept="3F0ifn" id="7wyN1SmTnnn" role="3EZMnx">
        <property role="3F0ifm" value=";" />
      </node>
      <node concept="l2Vlx" id="7wyN1SmTnno" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="7wyN1SmTnnp">
    <property role="3GE5qa" value="statements" />
    <ref role="1XX52x" to="ti4m:7wyN1SmTnhW" resolve="Selection" />
    <node concept="3EZMnI" id="7wyN1SmTnnq" role="2wV5jI">
      <node concept="3F0ifn" id="7wyN1SmTnnr" role="3EZMnx">
        <property role="3F0ifm" value="if" />
      </node>
      <node concept="3F1sOY" id="7wyN1SmTnns" role="3EZMnx">
        <ref role="1NtTu8" to="ti4m:7wyN1SmTnhX" resolve="Condition" />
      </node>
      <node concept="3F0ifn" id="7wyN1SmTnnt" role="3EZMnx">
        <property role="3F0ifm" value="then" />
      </node>
      <node concept="3F1sOY" id="7wyN1SmTnnu" role="3EZMnx">
        <ref role="1NtTu8" to="ti4m:7wyN1SmTnhY" resolve="thenstats" />
        <node concept="lj46D" id="7wyN1SmTnnv" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pVoyu" id="7wyN1SmTnnw" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="7wyN1SmTnnx" role="3EZMnx">
        <property role="3F0ifm" value="else" />
        <node concept="pVoyu" id="7wyN1SmTnny" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="7wyN1SmTnnz" role="3EZMnx">
        <ref role="1NtTu8" to="ti4m:7wyN1SmTnhZ" resolve="elsestats" />
        <node concept="lj46D" id="7wyN1SmTnn$" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pVoyu" id="7wyN1SmTnn_" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="7wyN1SmTnnA" role="3EZMnx">
        <property role="3F0ifm" value="fi" />
        <node concept="pVoyu" id="7wyN1SmTnnB" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="7wyN1SmTnnC" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="7wyN1SmTnnD">
    <property role="3GE5qa" value="statements" />
    <ref role="1XX52x" to="ti4m:7wyN1SmTni1" resolve="Loop" />
    <node concept="3EZMnI" id="7wyN1SmTnnE" role="2wV5jI">
      <node concept="3F0ifn" id="7wyN1SmTnnF" role="3EZMnx">
        <property role="3F0ifm" value="while" />
      </node>
      <node concept="3F1sOY" id="7wyN1SmTnnG" role="3EZMnx">
        <ref role="1NtTu8" to="ti4m:7wyN1SmTni2" resolve="Condition" />
      </node>
      <node concept="3F0ifn" id="7wyN1SmTnnH" role="3EZMnx">
        <property role="3F0ifm" value="do" />
      </node>
      <node concept="3F1sOY" id="7wyN1SmTnnI" role="3EZMnx">
        <ref role="1NtTu8" to="ti4m:7wyN1SmTni3" resolve="Statement" />
        <node concept="lj46D" id="7wyN1SmTnnJ" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pVoyu" id="7wyN1SmTnnK" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="7wyN1SmTnnL" role="3EZMnx">
        <property role="3F0ifm" value="od" />
        <node concept="pVoyu" id="7wyN1SmTnnM" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="7wyN1SmTnnN" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="7wyN1SmTnnO">
    <property role="3GE5qa" value="statements" />
    <ref role="1XX52x" to="ti4m:7wyN1SmTni6" resolve="Statements" />
    <node concept="3EZMnI" id="7wyN1SmTnnP" role="2wV5jI">
      <node concept="3F2HdR" id="7wyN1SmTnnQ" role="3EZMnx">
        <ref role="1NtTu8" to="ti4m:7wyN1SmTni7" resolve="Statement" />
        <node concept="l2Vlx" id="7wyN1SmTnnR" role="2czzBx" />
      </node>
      <node concept="l2Vlx" id="7wyN1SmTnnS" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="7wyN1SmTnnT">
    <property role="3GE5qa" value="" />
    <ref role="1XX52x" to="ti4m:7wyN1SmTni8" resolve="Program" />
    <node concept="3EZMnI" id="7wyN1SmTnnU" role="2wV5jI">
      <node concept="3F0ifn" id="7wyN1SmTnnV" role="3EZMnx">
        <property role="3F0ifm" value="Program" />
      </node>
      <node concept="3F0A7n" id="7wyN1SmTnnW" role="3EZMnx">
        <ref role="1NtTu8" to="ti4m:7wyN1SmTni9" resolve="Identifier" />
      </node>
      <node concept="3F0ifn" id="7wyN1SmTnnX" role="3EZMnx">
        <property role="3F0ifm" value="is" />
      </node>
      <node concept="3F0ifn" id="7wyN1SmTnnY" role="3EZMnx">
        <property role="3F0ifm" value="begin" />
        <node concept="pVoyu" id="7wyN1SmTnnZ" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="7wyN1SmTno0" role="3EZMnx">
        <ref role="1NtTu8" to="ti4m:7wyN1SmTnia" resolve="Statements" />
        <node concept="lj46D" id="7wyN1SmTno1" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pVoyu" id="7wyN1SmTno2" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="7wyN1SmTno3" role="3EZMnx">
        <property role="3F0ifm" value="end;" />
        <node concept="pVoyu" id="7wyN1SmTno4" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="7wyN1SmTno5" role="2iSdaV" />
    </node>
  </node>
</model>

