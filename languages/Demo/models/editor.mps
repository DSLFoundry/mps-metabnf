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
    <import index="ti4o" ref="c2a5b9d7-07cd-4b65-8dfa-95546fb19171/i:10000005(mbnf.sandbox@transient10/mbnf.sandbox.Demo@3_3)" />
    <import index="ti4p" ref="3e21dcd0-e89f-4cba-939b-ae1558f48a24/i:10000005(mbnf.sandbox@transient14/mbnf.sandbox.Demo@3_3)" />
    <import index="ti4q" ref="498c0aa7-fe36-428e-8701-e3acdd534a5b/i:10000005(mbnf.sandbox@transient26/mbnf.sandbox.Demo@3_3)" />
    <import index="ti4r" ref="8d69898c-c087-4a37-adfe-7232fac73b6c/i:10000005(mbnf.sandbox@transient10/mbnf.sandbox.Demo@3_3)" />
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
  <node concept="24kQdi" id="3kz7Nspt0XO">
    <property role="3GE5qa" value="expressions" />
    <ref role="1XX52x" to="ti4r:3kz7Nspt0Sr" />
    <node concept="3EZMnI" id="3kz7Nspt0XP" role="2wV5jI">
      <node concept="3F0A7n" id="3kz7Nspt0XQ" role="3EZMnx">
        <ref role="1NtTu8" to="ti4r:3kz7Nspt0Ss" />
      </node>
      <node concept="l2Vlx" id="3kz7Nspt0XR" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="3kz7Nspt0XS">
    <property role="3GE5qa" value="expressions" />
    <ref role="1XX52x" to="ti4r:3kz7Nspt0Su" />
    <node concept="3EZMnI" id="3kz7Nspt0XT" role="2wV5jI">
      <node concept="3F0A7n" id="3kz7Nspt0XU" role="3EZMnx">
        <ref role="1NtTu8" to="ti4r:3kz7Nspt0Sv" />
      </node>
      <node concept="l2Vlx" id="3kz7Nspt0XV" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="3kz7Nspt0XW">
    <property role="3GE5qa" value="statements" />
    <ref role="1XX52x" to="ti4r:3kz7Nspt0S$" />
    <node concept="3EZMnI" id="3kz7Nspt0XX" role="2wV5jI">
      <node concept="3F0ifn" id="3kz7Nspt0XY" role="3EZMnx">
        <property role="3F0ifm" value="skip" />
      </node>
      <node concept="l2Vlx" id="3kz7Nspt0XZ" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="3kz7Nspt0Y0">
    <property role="3GE5qa" value="statements" />
    <ref role="1XX52x" to="ti4r:3kz7Nspt0SA" />
    <node concept="3EZMnI" id="3kz7Nspt0Y1" role="2wV5jI">
      <node concept="3F0A7n" id="3kz7Nspt0Y2" role="3EZMnx">
        <ref role="1NtTu8" to="ti4r:3kz7Nspt0SB" />
      </node>
      <node concept="3F0ifn" id="3kz7Nspt0Y3" role="3EZMnx">
        <property role="3F0ifm" value=":=" />
      </node>
      <node concept="3F1sOY" id="3kz7Nspt0Y4" role="3EZMnx">
        <ref role="1NtTu8" to="ti4r:3kz7Nspt0SC" />
      </node>
      <node concept="3F0ifn" id="3kz7Nspt0Y5" role="3EZMnx">
        <property role="3F0ifm" value=";" />
      </node>
      <node concept="l2Vlx" id="3kz7Nspt0Y6" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="3kz7Nspt0Y7">
    <property role="3GE5qa" value="statements" />
    <ref role="1XX52x" to="ti4r:3kz7Nspt0SE" />
    <node concept="3EZMnI" id="3kz7Nspt0Y8" role="2wV5jI">
      <node concept="3F0ifn" id="3kz7Nspt0Y9" role="3EZMnx">
        <property role="3F0ifm" value="if" />
      </node>
      <node concept="3F1sOY" id="3kz7Nspt0Ya" role="3EZMnx">
        <ref role="1NtTu8" to="ti4r:3kz7Nspt0SF" />
      </node>
      <node concept="3F0ifn" id="3kz7Nspt0Yb" role="3EZMnx">
        <property role="3F0ifm" value="then" />
      </node>
      <node concept="3F1sOY" id="3kz7Nspt0Yc" role="3EZMnx">
        <ref role="1NtTu8" to="ti4r:3kz7Nspt0SG" />
        <node concept="lj46D" id="3kz7Nspt0Yd" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pVoyu" id="3kz7Nspt0Ye" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="3kz7Nspt0Yf" role="3EZMnx">
        <property role="3F0ifm" value="else" />
        <node concept="pVoyu" id="3kz7Nspt0Yg" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="3kz7Nspt0Yh" role="3EZMnx">
        <ref role="1NtTu8" to="ti4r:3kz7Nspt0SH" />
        <node concept="lj46D" id="3kz7Nspt0Yi" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pVoyu" id="3kz7Nspt0Yj" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="3kz7Nspt0Yk" role="3EZMnx">
        <property role="3F0ifm" value="fi" />
        <node concept="pVoyu" id="3kz7Nspt0Yl" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="3kz7Nspt0Ym" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="3kz7Nspt0Yn">
    <property role="3GE5qa" value="statements" />
    <ref role="1XX52x" to="ti4r:3kz7Nspt0SJ" />
    <node concept="3EZMnI" id="3kz7Nspt0Yo" role="2wV5jI">
      <node concept="3F0ifn" id="3kz7Nspt0Yp" role="3EZMnx">
        <property role="3F0ifm" value="while" />
      </node>
      <node concept="3F1sOY" id="3kz7Nspt0Yq" role="3EZMnx">
        <ref role="1NtTu8" to="ti4r:3kz7Nspt0SK" />
      </node>
      <node concept="3F0ifn" id="3kz7Nspt0Yr" role="3EZMnx">
        <property role="3F0ifm" value="do" />
      </node>
      <node concept="3F1sOY" id="3kz7Nspt0Ys" role="3EZMnx">
        <ref role="1NtTu8" to="ti4r:3kz7Nspt0SL" />
        <node concept="lj46D" id="3kz7Nspt0Yt" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pVoyu" id="3kz7Nspt0Yu" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="3kz7Nspt0Yv" role="3EZMnx">
        <property role="3F0ifm" value="od" />
        <node concept="pVoyu" id="3kz7Nspt0Yw" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="3kz7Nspt0Yx" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="3kz7Nspt0Yy">
    <property role="3GE5qa" value="statements" />
    <ref role="1XX52x" to="ti4r:3kz7Nspt0SO" />
    <node concept="3EZMnI" id="3kz7Nspt0Yz" role="2wV5jI">
      <node concept="3F2HdR" id="3kz7Nspt0Y$" role="3EZMnx">
        <ref role="1NtTu8" to="ti4r:3kz7Nspt0SP" />
        <node concept="l2Vlx" id="3kz7Nspt0Y_" role="2czzBx" />
      </node>
      <node concept="l2Vlx" id="3kz7Nspt0YA" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="3kz7Nspt0YB">
    <property role="3GE5qa" value="" />
    <ref role="1XX52x" to="ti4r:3kz7Nspt0SQ" />
    <node concept="3EZMnI" id="3kz7Nspt0YC" role="2wV5jI">
      <node concept="3F0ifn" id="3kz7Nspt0YD" role="3EZMnx">
        <property role="3F0ifm" value="Program" />
      </node>
      <node concept="3F0A7n" id="3kz7Nspt0YE" role="3EZMnx">
        <ref role="1NtTu8" to="ti4r:3kz7Nspt0SR" />
      </node>
      <node concept="3F0ifn" id="3kz7Nspt0YF" role="3EZMnx">
        <property role="3F0ifm" value="is" />
      </node>
      <node concept="3F0ifn" id="3kz7Nspt0YG" role="3EZMnx">
        <property role="3F0ifm" value="begin" />
        <node concept="pVoyu" id="3kz7Nspt0YH" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="3kz7Nspt0YI" role="3EZMnx">
        <ref role="1NtTu8" to="ti4r:3kz7Nspt0SS" />
        <node concept="lj46D" id="3kz7Nspt0YJ" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pVoyu" id="3kz7Nspt0YK" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="3kz7Nspt0YL" role="3EZMnx">
        <property role="3F0ifm" value="end;" />
        <node concept="pVoyu" id="3kz7Nspt0YM" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="3kz7Nspt0YN" role="2iSdaV" />
    </node>
  </node>
</model>

