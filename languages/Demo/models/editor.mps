<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:fd18fece-0619-420e-acfb-80ca89a441e4(Demo.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="15" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="zejt" ref="r:2338345e-d246-468d-922d-9f8162ca4e3b(Demo.structure)" />
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
      <concept id="1219418625346" name="jetbrains.mps.lang.editor.structure.IStyleContainer" flags="ngI" index="3F0Thp">
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
  <node concept="24kQdi" id="6LRoTum0v1k">
    <property role="3GE5qa" value="expressions" />
    <ref role="1XX52x" to="zejt:6LRoTum0v0Q" resolve="Bool" />
    <node concept="3EZMnI" id="6LRoTum0v1l" role="2wV5jI">
      <node concept="3F0A7n" id="6LRoTum0v1m" role="3EZMnx">
        <ref role="1NtTu8" to="zejt:6LRoTum0v0R" resolve="BooleanValue" />
      </node>
      <node concept="l2Vlx" id="6LRoTum0v1n" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="6LRoTum0v1o">
    <property role="3GE5qa" value="expressions" />
    <ref role="1XX52x" to="zejt:6LRoTum0v0T" resolve="Number" />
    <node concept="3EZMnI" id="6LRoTum0v1p" role="2wV5jI">
      <node concept="3F0A7n" id="6LRoTum0v1q" role="3EZMnx">
        <ref role="1NtTu8" to="zejt:6LRoTum0v0U" resolve="NumberValue" />
      </node>
      <node concept="l2Vlx" id="6LRoTum0v1r" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="6LRoTum0v1s">
    <property role="3GE5qa" value="statements" />
    <ref role="1XX52x" to="zejt:6LRoTum0v0Z" resolve="Skip" />
    <node concept="3EZMnI" id="6LRoTum0v1t" role="2wV5jI">
      <node concept="3F0ifn" id="6LRoTum0v1u" role="3EZMnx">
        <property role="3F0ifm" value="skip" />
      </node>
      <node concept="l2Vlx" id="6LRoTum0v1v" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="6LRoTum0v1w">
    <property role="3GE5qa" value="statements" />
    <ref role="1XX52x" to="zejt:6LRoTum0v11" resolve="Assignment" />
    <node concept="3EZMnI" id="6LRoTum0v1x" role="2wV5jI">
      <node concept="3F0A7n" id="6LRoTum0v1y" role="3EZMnx">
        <ref role="1NtTu8" to="zejt:6LRoTum0v12" resolve="Identifier" />
      </node>
      <node concept="3F0ifn" id="6LRoTum0v1z" role="3EZMnx">
        <property role="3F0ifm" value=":=" />
      </node>
      <node concept="3F1sOY" id="6LRoTum0v1$" role="3EZMnx">
        <ref role="1NtTu8" to="zejt:6LRoTum0v13" resolve="Expression" />
      </node>
      <node concept="3F0ifn" id="6LRoTum0v1_" role="3EZMnx">
        <property role="3F0ifm" value=";" />
      </node>
      <node concept="l2Vlx" id="6LRoTum0v1A" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="6LRoTum0v1B">
    <property role="3GE5qa" value="statements" />
    <ref role="1XX52x" to="zejt:6LRoTum0v15" resolve="Selection" />
    <node concept="3EZMnI" id="6LRoTum0v1C" role="2wV5jI">
      <node concept="3F0ifn" id="6LRoTum0v1D" role="3EZMnx">
        <property role="3F0ifm" value="if" />
      </node>
      <node concept="3F1sOY" id="6LRoTum0v1E" role="3EZMnx">
        <ref role="1NtTu8" to="zejt:6LRoTum0v16" resolve="Condition" />
      </node>
      <node concept="3F0ifn" id="6LRoTum0v1F" role="3EZMnx">
        <property role="3F0ifm" value="then" />
      </node>
      <node concept="3F1sOY" id="6LRoTum0v1G" role="3EZMnx">
        <ref role="1NtTu8" to="zejt:6LRoTum0v17" resolve="thenstats" />
        <node concept="lj46D" id="6LRoTum0v1H" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pVoyu" id="6LRoTum0v1I" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="6LRoTum0v1J" role="3EZMnx">
        <property role="3F0ifm" value="else" />
        <node concept="pVoyu" id="6LRoTum0v1K" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="6LRoTum0v1L" role="3EZMnx">
        <ref role="1NtTu8" to="zejt:6LRoTum0v18" resolve="elsestats" />
        <node concept="lj46D" id="6LRoTum0v1M" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pVoyu" id="6LRoTum0v1N" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="6LRoTum0v1O" role="3EZMnx">
        <property role="3F0ifm" value="fi" />
        <node concept="pVoyu" id="6LRoTum0v1P" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="6LRoTum0v1Q" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="6LRoTum0v1R">
    <property role="3GE5qa" value="statements" />
    <ref role="1XX52x" to="zejt:6LRoTum0v1a" resolve="Loop" />
    <node concept="3EZMnI" id="6LRoTum0v1S" role="2wV5jI">
      <node concept="3F0ifn" id="6LRoTum0v1T" role="3EZMnx">
        <property role="3F0ifm" value="while" />
      </node>
      <node concept="3F1sOY" id="6LRoTum0v1U" role="3EZMnx">
        <ref role="1NtTu8" to="zejt:6LRoTum0v1b" resolve="Condition" />
      </node>
      <node concept="3F0ifn" id="6LRoTum0v1V" role="3EZMnx">
        <property role="3F0ifm" value="do" />
      </node>
      <node concept="3F1sOY" id="6LRoTum0v1W" role="3EZMnx">
        <ref role="1NtTu8" to="zejt:6LRoTum0v1c" resolve="Statement" />
        <node concept="lj46D" id="6LRoTum0v1X" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pVoyu" id="6LRoTum0v1Y" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="6LRoTum0v1Z" role="3EZMnx">
        <property role="3F0ifm" value="od" />
        <node concept="pVoyu" id="6LRoTum0v20" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="6LRoTum0v21" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="6LRoTum0v22">
    <property role="3GE5qa" value="statements" />
    <ref role="1XX52x" to="zejt:6LRoTum0v1f" resolve="Statements" />
    <node concept="3EZMnI" id="6LRoTum0v23" role="2wV5jI">
      <node concept="3F2HdR" id="6LRoTum0v24" role="3EZMnx">
        <ref role="1NtTu8" to="zejt:6LRoTum0v1g" resolve="Statement" />
        <node concept="l2Vlx" id="6LRoTum0v25" role="2czzBx" />
      </node>
      <node concept="l2Vlx" id="6LRoTum0v26" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="6LRoTum0v27">
    <property role="3GE5qa" value="" />
    <ref role="1XX52x" to="zejt:6LRoTum0v1h" resolve="Program" />
    <node concept="3EZMnI" id="6LRoTum0v28" role="2wV5jI">
      <node concept="3F0ifn" id="6LRoTum0v29" role="3EZMnx">
        <property role="3F0ifm" value="Program" />
      </node>
      <node concept="3F0A7n" id="6LRoTum0v2a" role="3EZMnx">
        <ref role="1NtTu8" to="zejt:6LRoTum0v1i" resolve="Identifier" />
      </node>
      <node concept="3F0ifn" id="6LRoTum0v2b" role="3EZMnx">
        <property role="3F0ifm" value="is" />
      </node>
      <node concept="3F0ifn" id="6LRoTum0v2c" role="3EZMnx">
        <property role="3F0ifm" value="begin" />
        <node concept="pVoyu" id="6LRoTum0v2d" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="6LRoTum0v2e" role="3EZMnx">
        <ref role="1NtTu8" to="zejt:6LRoTum0v1j" resolve="Statements" />
        <node concept="lj46D" id="6LRoTum0v2f" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pVoyu" id="6LRoTum0v2g" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="6LRoTum0v2h" role="3EZMnx">
        <property role="3F0ifm" value="end;" />
        <node concept="pVoyu" id="6LRoTum0v2i" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="6LRoTum0v2j" role="2iSdaV" />
    </node>
  </node>
</model>

