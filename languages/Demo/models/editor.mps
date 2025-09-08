<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:fd18fece-0619-420e-acfb-80ca89a441e4(Demo.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="14" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="zejt" ref="r:2338345e-d246-468d-922d-9f8162ca4e3b(Demo.structure)" implicit="true" />
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
  <node concept="24kQdi" id="5Dh5jJl_$5j">
    <property role="3GE5qa" value="expressions" />
    <ref role="1XX52x" to="zejt:5Dh5jJl_$4P" resolve="Bool" />
    <node concept="3EZMnI" id="5Dh5jJl_$5k" role="2wV5jI">
      <node concept="3F0A7n" id="5Dh5jJl_$5l" role="3EZMnx">
        <ref role="1NtTu8" to="zejt:5Dh5jJl_$4Q" resolve="BooleanValue" />
      </node>
      <node concept="l2Vlx" id="5Dh5jJl_$5m" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="5Dh5jJl_$5n">
    <property role="3GE5qa" value="expressions" />
    <ref role="1XX52x" to="zejt:5Dh5jJl_$4S" resolve="Number" />
    <node concept="3EZMnI" id="5Dh5jJl_$5o" role="2wV5jI">
      <node concept="3F0A7n" id="5Dh5jJl_$5p" role="3EZMnx">
        <ref role="1NtTu8" to="zejt:5Dh5jJl_$4T" resolve="NumberValue" />
      </node>
      <node concept="l2Vlx" id="5Dh5jJl_$5q" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="5Dh5jJl_$5r">
    <property role="3GE5qa" value="statements" />
    <ref role="1XX52x" to="zejt:5Dh5jJl_$4Y" resolve="Skip" />
    <node concept="3EZMnI" id="5Dh5jJl_$5s" role="2wV5jI">
      <node concept="3F0ifn" id="5Dh5jJl_$5t" role="3EZMnx">
        <property role="3F0ifm" value="skip" />
      </node>
      <node concept="l2Vlx" id="5Dh5jJl_$5u" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="5Dh5jJl_$5v">
    <property role="3GE5qa" value="statements" />
    <ref role="1XX52x" to="zejt:5Dh5jJl_$50" resolve="Assignment" />
    <node concept="3EZMnI" id="5Dh5jJl_$5w" role="2wV5jI">
      <node concept="3F0A7n" id="5Dh5jJl_$5x" role="3EZMnx">
        <ref role="1NtTu8" to="zejt:5Dh5jJl_$51" resolve="Identifier" />
      </node>
      <node concept="3F0ifn" id="5Dh5jJl_$5y" role="3EZMnx">
        <property role="3F0ifm" value=":=" />
      </node>
      <node concept="3F1sOY" id="5Dh5jJl_$5z" role="3EZMnx">
        <ref role="1NtTu8" to="zejt:5Dh5jJl_$52" resolve="Expression" />
      </node>
      <node concept="3F0ifn" id="5Dh5jJl_$5$" role="3EZMnx">
        <property role="3F0ifm" value=";" />
      </node>
      <node concept="l2Vlx" id="5Dh5jJl_$5_" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="5Dh5jJl_$5A">
    <property role="3GE5qa" value="statements" />
    <ref role="1XX52x" to="zejt:5Dh5jJl_$54" resolve="Selection" />
    <node concept="3EZMnI" id="5Dh5jJl_$5B" role="2wV5jI">
      <node concept="3F0ifn" id="5Dh5jJl_$5C" role="3EZMnx">
        <property role="3F0ifm" value="if" />
      </node>
      <node concept="3F1sOY" id="5Dh5jJl_$5D" role="3EZMnx">
        <ref role="1NtTu8" to="zejt:5Dh5jJl_$55" resolve="Condition" />
      </node>
      <node concept="3F0ifn" id="5Dh5jJl_$5E" role="3EZMnx">
        <property role="3F0ifm" value="then" />
      </node>
      <node concept="3F1sOY" id="5Dh5jJl_$5F" role="3EZMnx">
        <ref role="1NtTu8" to="zejt:5Dh5jJl_$56" resolve="thenstats" />
        <node concept="lj46D" id="5Dh5jJl_$5G" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pVoyu" id="5Dh5jJl_$5H" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="5Dh5jJl_$5I" role="3EZMnx">
        <property role="3F0ifm" value="else" />
        <node concept="pVoyu" id="5Dh5jJl_$5J" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="5Dh5jJl_$5K" role="3EZMnx">
        <ref role="1NtTu8" to="zejt:5Dh5jJl_$57" resolve="elsestats" />
        <node concept="lj46D" id="5Dh5jJl_$5L" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pVoyu" id="5Dh5jJl_$5M" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="5Dh5jJl_$5N" role="3EZMnx">
        <property role="3F0ifm" value="fi" />
        <node concept="pVoyu" id="5Dh5jJl_$5O" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="5Dh5jJl_$5P" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="5Dh5jJl_$5Q">
    <property role="3GE5qa" value="statements" />
    <ref role="1XX52x" to="zejt:5Dh5jJl_$59" resolve="Loop" />
    <node concept="3EZMnI" id="5Dh5jJl_$5R" role="2wV5jI">
      <node concept="3F0ifn" id="5Dh5jJl_$5S" role="3EZMnx">
        <property role="3F0ifm" value="while" />
      </node>
      <node concept="3F1sOY" id="5Dh5jJl_$5T" role="3EZMnx">
        <ref role="1NtTu8" to="zejt:5Dh5jJl_$5a" resolve="Condition" />
      </node>
      <node concept="3F0ifn" id="5Dh5jJl_$5U" role="3EZMnx">
        <property role="3F0ifm" value="do" />
      </node>
      <node concept="3F1sOY" id="5Dh5jJl_$5V" role="3EZMnx">
        <ref role="1NtTu8" to="zejt:5Dh5jJl_$5b" resolve="Statement" />
        <node concept="lj46D" id="5Dh5jJl_$5W" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pVoyu" id="5Dh5jJl_$5X" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="5Dh5jJl_$5Y" role="3EZMnx">
        <property role="3F0ifm" value="od" />
        <node concept="pVoyu" id="5Dh5jJl_$5Z" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="5Dh5jJl_$60" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="5Dh5jJl_$61">
    <property role="3GE5qa" value="statements" />
    <ref role="1XX52x" to="zejt:5Dh5jJl_$5e" resolve="Statements" />
    <node concept="3EZMnI" id="5Dh5jJl_$62" role="2wV5jI">
      <node concept="3F2HdR" id="5Dh5jJl_IAm" role="3EZMnx">
        <ref role="1NtTu8" to="zejt:5Dh5jJl_$5f" resolve="Statement" />
        <node concept="l2Vlx" id="5Dh5jJl_IAp" role="2czzBx" />
      </node>
      <node concept="l2Vlx" id="5Dh5jJl_$65" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="5Dh5jJl_$66">
    <property role="3GE5qa" value="" />
    <ref role="1XX52x" to="zejt:5Dh5jJl_$5g" resolve="Program" />
    <node concept="3EZMnI" id="5Dh5jJl_$67" role="2wV5jI">
      <node concept="3F0ifn" id="5Dh5jJl_$68" role="3EZMnx">
        <property role="3F0ifm" value="Program" />
      </node>
      <node concept="3F0A7n" id="5Dh5jJl_$69" role="3EZMnx">
        <ref role="1NtTu8" to="zejt:5Dh5jJl_$5h" resolve="Identifier" />
      </node>
      <node concept="3F0ifn" id="5Dh5jJl_$6a" role="3EZMnx">
        <property role="3F0ifm" value="is" />
      </node>
      <node concept="3F0ifn" id="5Dh5jJl_$6b" role="3EZMnx">
        <property role="3F0ifm" value="begin" />
        <node concept="pVoyu" id="5Dh5jJl_$6c" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="5Dh5jJl_$6d" role="3EZMnx">
        <ref role="1NtTu8" to="zejt:5Dh5jJl_$5i" resolve="Statements" />
        <node concept="lj46D" id="5Dh5jJl_$6e" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pVoyu" id="5Dh5jJl_$6f" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="5Dh5jJl_$6g" role="3EZMnx">
        <property role="3F0ifm" value="end;" />
        <node concept="pVoyu" id="5Dh5jJl_$6h" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="5Dh5jJl_$6i" role="2iSdaV" />
    </node>
  </node>
</model>

