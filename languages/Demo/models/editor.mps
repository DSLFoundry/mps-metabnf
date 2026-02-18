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
  <node concept="24kQdi" id="4CvBJ4yZ3YM">
    <property role="3GE5qa" value="expressions" />
    <ref role="1XX52x" to="ti4l:4CvBJ4yZ3_a" resolve="Bool" />
    <node concept="3EZMnI" id="4CvBJ4yZ3YN" role="2wV5jI">
      <node concept="3F0A7n" id="4CvBJ4yZ3YO" role="3EZMnx">
        <ref role="1NtTu8" to="ti4l:4CvBJ4yZ3_b" resolve="BooleanValue" />
      </node>
      <node concept="l2Vlx" id="4CvBJ4yZ3YP" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="4CvBJ4yZ3YQ">
    <property role="3GE5qa" value="expressions" />
    <ref role="1XX52x" to="ti4l:4CvBJ4yZ3_d" resolve="Number" />
    <node concept="3EZMnI" id="4CvBJ4yZ3YR" role="2wV5jI">
      <node concept="3F0A7n" id="4CvBJ4yZ3YS" role="3EZMnx">
        <ref role="1NtTu8" to="ti4l:4CvBJ4yZ3_e" resolve="NumberValue" />
      </node>
      <node concept="l2Vlx" id="4CvBJ4yZ3YT" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="4CvBJ4yZ3YU">
    <property role="3GE5qa" value="statements" />
    <ref role="1XX52x" to="ti4l:4CvBJ4yZ3_j" resolve="Skip" />
    <node concept="3EZMnI" id="4CvBJ4yZ3YV" role="2wV5jI">
      <node concept="3F0ifn" id="4CvBJ4yZ3YW" role="3EZMnx">
        <property role="3F0ifm" value="skip" />
      </node>
      <node concept="l2Vlx" id="4CvBJ4yZ3YX" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="4CvBJ4yZ3YY">
    <property role="3GE5qa" value="statements" />
    <ref role="1XX52x" to="ti4l:4CvBJ4yZ3_l" resolve="Assignment" />
    <node concept="3EZMnI" id="4CvBJ4yZ3YZ" role="2wV5jI">
      <node concept="3F0A7n" id="4CvBJ4yZ3Z0" role="3EZMnx">
        <ref role="1NtTu8" to="ti4l:4CvBJ4yZ3_m" resolve="Identifier" />
      </node>
      <node concept="3F0ifn" id="4CvBJ4yZ3Z1" role="3EZMnx">
        <property role="3F0ifm" value=":=" />
      </node>
      <node concept="3F1sOY" id="4CvBJ4yZ3Z2" role="3EZMnx">
        <ref role="1NtTu8" to="ti4l:4CvBJ4yZ3_n" resolve="Expression" />
      </node>
      <node concept="3F0ifn" id="4CvBJ4yZ3Z3" role="3EZMnx">
        <property role="3F0ifm" value=";" />
      </node>
      <node concept="l2Vlx" id="4CvBJ4yZ3Z4" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="4CvBJ4yZ3Z5">
    <property role="3GE5qa" value="statements" />
    <ref role="1XX52x" to="ti4l:4CvBJ4yZ3_p" resolve="Selection" />
    <node concept="3EZMnI" id="4CvBJ4yZ3Z6" role="2wV5jI">
      <node concept="3F0ifn" id="4CvBJ4yZ3Z7" role="3EZMnx">
        <property role="3F0ifm" value="if" />
      </node>
      <node concept="3F1sOY" id="4CvBJ4yZ3Z8" role="3EZMnx">
        <ref role="1NtTu8" to="ti4l:4CvBJ4yZ3_q" resolve="Condition" />
      </node>
      <node concept="3F0ifn" id="4CvBJ4yZ3Z9" role="3EZMnx">
        <property role="3F0ifm" value="then" />
      </node>
      <node concept="3F1sOY" id="4CvBJ4yZ3Za" role="3EZMnx">
        <ref role="1NtTu8" to="ti4l:4CvBJ4yZ3_r" resolve="thenstats" />
        <node concept="lj46D" id="4CvBJ4yZ3Zb" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pVoyu" id="4CvBJ4yZ3Zc" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="4CvBJ4yZ3Zd" role="3EZMnx">
        <property role="3F0ifm" value="else" />
        <node concept="pVoyu" id="4CvBJ4yZ3Ze" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="4CvBJ4yZ3Zf" role="3EZMnx">
        <ref role="1NtTu8" to="ti4l:4CvBJ4yZ3_s" resolve="elsestats" />
        <node concept="lj46D" id="4CvBJ4yZ3Zg" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pVoyu" id="4CvBJ4yZ3Zh" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="4CvBJ4yZ3Zi" role="3EZMnx">
        <property role="3F0ifm" value="fi" />
        <node concept="pVoyu" id="4CvBJ4yZ3Zj" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="4CvBJ4yZ3Zk" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="4CvBJ4yZ3Zl">
    <property role="3GE5qa" value="statements" />
    <ref role="1XX52x" to="ti4l:4CvBJ4yZ3_u" resolve="Loop" />
    <node concept="3EZMnI" id="4CvBJ4yZ3Zm" role="2wV5jI">
      <node concept="3F0ifn" id="4CvBJ4yZ3Zn" role="3EZMnx">
        <property role="3F0ifm" value="while" />
      </node>
      <node concept="3F1sOY" id="4CvBJ4yZ3Zo" role="3EZMnx">
        <ref role="1NtTu8" to="ti4l:4CvBJ4yZ3_v" resolve="Condition" />
      </node>
      <node concept="3F0ifn" id="4CvBJ4yZ3Zp" role="3EZMnx">
        <property role="3F0ifm" value="do" />
      </node>
      <node concept="3F1sOY" id="4CvBJ4yZ3Zq" role="3EZMnx">
        <ref role="1NtTu8" to="ti4l:4CvBJ4yZ3_w" resolve="Statement" />
        <node concept="lj46D" id="4CvBJ4yZ3Zr" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pVoyu" id="4CvBJ4yZ3Zs" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="4CvBJ4yZ3Zt" role="3EZMnx">
        <property role="3F0ifm" value="od" />
        <node concept="pVoyu" id="4CvBJ4yZ3Zu" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="4CvBJ4yZ3Zv" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="4CvBJ4yZ3Zw">
    <property role="3GE5qa" value="statements" />
    <ref role="1XX52x" to="ti4l:4CvBJ4yZ3_z" resolve="Statements" />
    <node concept="3EZMnI" id="4CvBJ4yZ3Zx" role="2wV5jI">
      <node concept="3F2HdR" id="4CvBJ4yZ3Zy" role="3EZMnx">
        <ref role="1NtTu8" to="ti4l:4CvBJ4yZ3_$" resolve="Statement" />
        <node concept="l2Vlx" id="4CvBJ4yZ3Zz" role="2czzBx" />
      </node>
      <node concept="l2Vlx" id="4CvBJ4yZ3Z$" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="4CvBJ4yZ3Z_">
    <property role="3GE5qa" value="" />
    <ref role="1XX52x" to="ti4l:4CvBJ4yZ3__" resolve="Program" />
    <node concept="3EZMnI" id="4CvBJ4yZ3ZA" role="2wV5jI">
      <node concept="3F0ifn" id="4CvBJ4yZ3ZB" role="3EZMnx">
        <property role="3F0ifm" value="Program" />
      </node>
      <node concept="3F0A7n" id="4CvBJ4yZ3ZC" role="3EZMnx">
        <ref role="1NtTu8" to="ti4l:4CvBJ4yZ3_A" resolve="Identifier" />
      </node>
      <node concept="3F0ifn" id="4CvBJ4yZ3ZD" role="3EZMnx">
        <property role="3F0ifm" value="is" />
      </node>
      <node concept="3F0ifn" id="4CvBJ4yZ3ZE" role="3EZMnx">
        <property role="3F0ifm" value="begin" />
        <node concept="pVoyu" id="4CvBJ4yZ3ZF" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="4CvBJ4yZ3ZG" role="3EZMnx">
        <ref role="1NtTu8" to="ti4l:4CvBJ4yZ3_B" resolve="Statements" />
        <node concept="lj46D" id="4CvBJ4yZ3ZH" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pVoyu" id="4CvBJ4yZ3ZI" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="4CvBJ4yZ3ZJ" role="3EZMnx">
        <property role="3F0ifm" value="end;" />
        <node concept="pVoyu" id="4CvBJ4yZ3ZK" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="4CvBJ4yZ3ZL" role="2iSdaV" />
    </node>
  </node>
</model>

