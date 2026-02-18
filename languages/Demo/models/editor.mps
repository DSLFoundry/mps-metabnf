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
    <import index="ti4n" ref="150c0332-dee4-46fb-8cde-4490700c26d6/i:10000005(mbnf.sandbox@transient18/mbnf.sandbox.Demo@3_3)" />
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
  <node concept="24kQdi" id="5JXDlB6qzy1">
    <property role="3GE5qa" value="expressions" />
    <ref role="1XX52x" to="ti4n:5JXDlB6qzpx" resolve="Bool" />
    <node concept="3EZMnI" id="5JXDlB6qzy2" role="2wV5jI">
      <node concept="3F0A7n" id="5JXDlB6qzy3" role="3EZMnx">
        <ref role="1NtTu8" to="ti4n:5JXDlB6qzpy" resolve="BooleanValue" />
      </node>
      <node concept="l2Vlx" id="5JXDlB6qzy4" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="5JXDlB6qzy5">
    <property role="3GE5qa" value="expressions" />
    <ref role="1XX52x" to="ti4n:5JXDlB6qzp$" resolve="Number" />
    <node concept="3EZMnI" id="5JXDlB6qzy6" role="2wV5jI">
      <node concept="3F0A7n" id="5JXDlB6qzy7" role="3EZMnx">
        <ref role="1NtTu8" to="ti4n:5JXDlB6qzp_" resolve="NumberValue" />
      </node>
      <node concept="l2Vlx" id="5JXDlB6qzy8" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="5JXDlB6qzy9">
    <property role="3GE5qa" value="statements" />
    <ref role="1XX52x" to="ti4n:5JXDlB6qzpE" resolve="Skip" />
    <node concept="3EZMnI" id="5JXDlB6qzya" role="2wV5jI">
      <node concept="3F0ifn" id="5JXDlB6qzyb" role="3EZMnx">
        <property role="3F0ifm" value="skip" />
      </node>
      <node concept="l2Vlx" id="5JXDlB6qzyc" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="5JXDlB6qzyd">
    <property role="3GE5qa" value="statements" />
    <ref role="1XX52x" to="ti4n:5JXDlB6qzpG" resolve="Assignment" />
    <node concept="3EZMnI" id="5JXDlB6qzye" role="2wV5jI">
      <node concept="3F0A7n" id="5JXDlB6qzyf" role="3EZMnx">
        <ref role="1NtTu8" to="ti4n:5JXDlB6qzpH" resolve="Identifier" />
      </node>
      <node concept="3F0ifn" id="5JXDlB6qzyg" role="3EZMnx">
        <property role="3F0ifm" value=":=" />
      </node>
      <node concept="3F1sOY" id="5JXDlB6qzyh" role="3EZMnx">
        <ref role="1NtTu8" to="ti4n:5JXDlB6qzpI" resolve="Expression" />
      </node>
      <node concept="3F0ifn" id="5JXDlB6qzyi" role="3EZMnx">
        <property role="3F0ifm" value=";" />
      </node>
      <node concept="l2Vlx" id="5JXDlB6qzyj" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="5JXDlB6qzyk">
    <property role="3GE5qa" value="statements" />
    <ref role="1XX52x" to="ti4n:5JXDlB6qzpK" resolve="Selection" />
    <node concept="3EZMnI" id="5JXDlB6qzyl" role="2wV5jI">
      <node concept="3F0ifn" id="5JXDlB6qzym" role="3EZMnx">
        <property role="3F0ifm" value="if" />
      </node>
      <node concept="3F1sOY" id="5JXDlB6qzyn" role="3EZMnx">
        <ref role="1NtTu8" to="ti4n:5JXDlB6qzpL" resolve="Condition" />
      </node>
      <node concept="3F0ifn" id="5JXDlB6qzyo" role="3EZMnx">
        <property role="3F0ifm" value="then" />
      </node>
      <node concept="3F1sOY" id="5JXDlB6qzyp" role="3EZMnx">
        <ref role="1NtTu8" to="ti4n:5JXDlB6qzpM" resolve="thenstats" />
        <node concept="lj46D" id="5JXDlB6qzyq" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pVoyu" id="5JXDlB6qzyr" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="5JXDlB6qzys" role="3EZMnx">
        <property role="3F0ifm" value="else" />
        <node concept="pVoyu" id="5JXDlB6qzyt" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="5JXDlB6qzyu" role="3EZMnx">
        <ref role="1NtTu8" to="ti4n:5JXDlB6qzpN" resolve="elsestats" />
        <node concept="lj46D" id="5JXDlB6qzyv" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pVoyu" id="5JXDlB6qzyw" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="5JXDlB6qzyx" role="3EZMnx">
        <property role="3F0ifm" value="fi" />
        <node concept="pVoyu" id="5JXDlB6qzyy" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="5JXDlB6qzyz" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="5JXDlB6qzy$">
    <property role="3GE5qa" value="statements" />
    <ref role="1XX52x" to="ti4n:5JXDlB6qzpP" resolve="Loop" />
    <node concept="3EZMnI" id="5JXDlB6qzy_" role="2wV5jI">
      <node concept="3F0ifn" id="5JXDlB6qzyA" role="3EZMnx">
        <property role="3F0ifm" value="while" />
      </node>
      <node concept="3F1sOY" id="5JXDlB6qzyB" role="3EZMnx">
        <ref role="1NtTu8" to="ti4n:5JXDlB6qzpQ" resolve="Condition" />
      </node>
      <node concept="3F0ifn" id="5JXDlB6qzyC" role="3EZMnx">
        <property role="3F0ifm" value="do" />
      </node>
      <node concept="3F1sOY" id="5JXDlB6qzyD" role="3EZMnx">
        <ref role="1NtTu8" to="ti4n:5JXDlB6qzpR" resolve="Statement" />
        <node concept="lj46D" id="5JXDlB6qzyE" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pVoyu" id="5JXDlB6qzyF" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="5JXDlB6qzyG" role="3EZMnx">
        <property role="3F0ifm" value="od" />
        <node concept="pVoyu" id="5JXDlB6qzyH" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="5JXDlB6qzyI" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="5JXDlB6qzyJ">
    <property role="3GE5qa" value="statements" />
    <ref role="1XX52x" to="ti4n:5JXDlB6qzpU" resolve="Statements" />
    <node concept="3EZMnI" id="5JXDlB6qzyK" role="2wV5jI">
      <node concept="3F2HdR" id="5JXDlB6qzyL" role="3EZMnx">
        <ref role="1NtTu8" to="ti4n:5JXDlB6qzpV" resolve="Statement" />
        <node concept="l2Vlx" id="5JXDlB6qzyM" role="2czzBx" />
      </node>
      <node concept="l2Vlx" id="5JXDlB6qzyN" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="5JXDlB6qzyO">
    <property role="3GE5qa" value="" />
    <ref role="1XX52x" to="ti4n:5JXDlB6qzpW" resolve="Program" />
    <node concept="3EZMnI" id="5JXDlB6qzyP" role="2wV5jI">
      <node concept="3F0ifn" id="5JXDlB6qzyQ" role="3EZMnx">
        <property role="3F0ifm" value="Program" />
      </node>
      <node concept="3F0A7n" id="5JXDlB6qzyR" role="3EZMnx">
        <ref role="1NtTu8" to="ti4n:5JXDlB6qzpX" resolve="Identifier" />
      </node>
      <node concept="3F0ifn" id="5JXDlB6qzyS" role="3EZMnx">
        <property role="3F0ifm" value="is" />
      </node>
      <node concept="3F0ifn" id="5JXDlB6qzyT" role="3EZMnx">
        <property role="3F0ifm" value="begin" />
        <node concept="pVoyu" id="5JXDlB6qzyU" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="5JXDlB6qzyV" role="3EZMnx">
        <ref role="1NtTu8" to="ti4n:5JXDlB6qzpY" resolve="Statements" />
        <node concept="lj46D" id="5JXDlB6qzyW" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pVoyu" id="5JXDlB6qzyX" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="5JXDlB6qzyY" role="3EZMnx">
        <property role="3F0ifm" value="end;" />
        <node concept="pVoyu" id="5JXDlB6qzyZ" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="5JXDlB6qzz0" role="2iSdaV" />
    </node>
  </node>
</model>

