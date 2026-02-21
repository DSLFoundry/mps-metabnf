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
  <node concept="24kQdi" id="swA13onbkx">
    <property role="3GE5qa" value="expressions" />
    <ref role="1XX52x" to="zejt:swA13onbk3" resolve="Bool" />
    <node concept="3EZMnI" id="swA13onbky" role="2wV5jI">
      <node concept="3F0A7n" id="swA13onbkz" role="3EZMnx">
        <ref role="1NtTu8" to="ti4p:swA13onbc2" resolve="BooleanValue" />
      </node>
      <node concept="l2Vlx" id="swA13onbk$" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="swA13onbk_">
    <property role="3GE5qa" value="expressions" />
    <ref role="1XX52x" to="ti4p:swA13onbc4" resolve="Number" />
    <node concept="3EZMnI" id="swA13onbkA" role="2wV5jI">
      <node concept="3F0A7n" id="swA13onbkB" role="3EZMnx">
        <ref role="1NtTu8" to="ti4p:swA13onbc5" resolve="NumberValue" />
      </node>
      <node concept="l2Vlx" id="swA13onbkC" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="swA13onbkD">
    <property role="3GE5qa" value="statements" />
    <ref role="1XX52x" to="ti4p:swA13onbca" resolve="Skip" />
    <node concept="3EZMnI" id="swA13onbkE" role="2wV5jI">
      <node concept="3F0ifn" id="swA13onbkF" role="3EZMnx">
        <property role="3F0ifm" value="skip" />
      </node>
      <node concept="l2Vlx" id="swA13onbkG" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="swA13onbkH">
    <property role="3GE5qa" value="statements" />
    <ref role="1XX52x" to="ti4p:swA13onbcc" resolve="Assignment" />
    <node concept="3EZMnI" id="swA13onbkI" role="2wV5jI">
      <node concept="3F0A7n" id="swA13onbkJ" role="3EZMnx">
        <ref role="1NtTu8" to="ti4p:swA13onbcd" resolve="Identifier" />
      </node>
      <node concept="3F0ifn" id="swA13onbkK" role="3EZMnx">
        <property role="3F0ifm" value=":=" />
      </node>
      <node concept="3F1sOY" id="swA13onbkL" role="3EZMnx">
        <ref role="1NtTu8" to="ti4p:swA13onbce" resolve="Expression" />
      </node>
      <node concept="3F0ifn" id="swA13onbkM" role="3EZMnx">
        <property role="3F0ifm" value=";" />
      </node>
      <node concept="l2Vlx" id="swA13onbkN" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="swA13onbkO">
    <property role="3GE5qa" value="statements" />
    <ref role="1XX52x" to="ti4p:swA13onbcg" resolve="Selection" />
    <node concept="3EZMnI" id="swA13onbkP" role="2wV5jI">
      <node concept="3F0ifn" id="swA13onbkQ" role="3EZMnx">
        <property role="3F0ifm" value="if" />
      </node>
      <node concept="3F1sOY" id="swA13onbkR" role="3EZMnx">
        <ref role="1NtTu8" to="ti4p:swA13onbch" resolve="Condition" />
      </node>
      <node concept="3F0ifn" id="swA13onbkS" role="3EZMnx">
        <property role="3F0ifm" value="then" />
      </node>
      <node concept="3F1sOY" id="swA13onbkT" role="3EZMnx">
        <ref role="1NtTu8" to="ti4p:swA13onbci" resolve="thenstats" />
        <node concept="lj46D" id="swA13onbkU" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pVoyu" id="swA13onbkV" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="swA13onbkW" role="3EZMnx">
        <property role="3F0ifm" value="else" />
        <node concept="pVoyu" id="swA13onbkX" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="swA13onbkY" role="3EZMnx">
        <ref role="1NtTu8" to="ti4p:swA13onbcj" resolve="elsestats" />
        <node concept="lj46D" id="swA13onbkZ" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pVoyu" id="swA13onbl0" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="swA13onbl1" role="3EZMnx">
        <property role="3F0ifm" value="fi" />
        <node concept="pVoyu" id="swA13onbl2" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="swA13onbl3" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="swA13onbl4">
    <property role="3GE5qa" value="statements" />
    <ref role="1XX52x" to="ti4p:swA13onbcl" resolve="Loop" />
    <node concept="3EZMnI" id="swA13onbl5" role="2wV5jI">
      <node concept="3F0ifn" id="swA13onbl6" role="3EZMnx">
        <property role="3F0ifm" value="while" />
      </node>
      <node concept="3F1sOY" id="swA13onbl7" role="3EZMnx">
        <ref role="1NtTu8" to="ti4p:swA13onbcm" resolve="Condition" />
      </node>
      <node concept="3F0ifn" id="swA13onbl8" role="3EZMnx">
        <property role="3F0ifm" value="do" />
      </node>
      <node concept="3F1sOY" id="swA13onbl9" role="3EZMnx">
        <ref role="1NtTu8" to="ti4p:swA13onbcn" resolve="Statement" />
        <node concept="lj46D" id="swA13onbla" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pVoyu" id="swA13onblb" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="swA13onblc" role="3EZMnx">
        <property role="3F0ifm" value="od" />
        <node concept="pVoyu" id="swA13onbld" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="swA13onble" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="swA13onblf">
    <property role="3GE5qa" value="statements" />
    <ref role="1XX52x" to="ti4p:swA13onbcq" resolve="Statements" />
    <node concept="3EZMnI" id="swA13onblg" role="2wV5jI">
      <node concept="3F2HdR" id="swA13onblh" role="3EZMnx">
        <ref role="1NtTu8" to="ti4p:swA13onbcr" resolve="Statement" />
        <node concept="l2Vlx" id="swA13onbli" role="2czzBx" />
      </node>
      <node concept="l2Vlx" id="swA13onblj" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="swA13onblk">
    <property role="3GE5qa" value="" />
    <ref role="1XX52x" to="ti4p:swA13onbcs" resolve="Program" />
    <node concept="3EZMnI" id="swA13onbll" role="2wV5jI">
      <node concept="3F0ifn" id="swA13onblm" role="3EZMnx">
        <property role="3F0ifm" value="Program" />
      </node>
      <node concept="3F0A7n" id="swA13onbln" role="3EZMnx">
        <ref role="1NtTu8" to="ti4p:swA13onbct" resolve="Identifier" />
      </node>
      <node concept="3F0ifn" id="swA13onblo" role="3EZMnx">
        <property role="3F0ifm" value="is" />
      </node>
      <node concept="3F0ifn" id="swA13onblp" role="3EZMnx">
        <property role="3F0ifm" value="begin" />
        <node concept="pVoyu" id="swA13onblq" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="swA13onblr" role="3EZMnx">
        <ref role="1NtTu8" to="ti4p:swA13onbcu" resolve="Statements" />
        <node concept="lj46D" id="swA13onbls" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pVoyu" id="swA13onblt" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="swA13onblu" role="3EZMnx">
        <property role="3F0ifm" value="end;" />
        <node concept="pVoyu" id="swA13onblv" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="swA13onblw" role="2iSdaV" />
    </node>
  </node>
</model>

