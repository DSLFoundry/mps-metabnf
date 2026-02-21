<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:fd18fece-0619-420e-acfb-80ca89a441e4(Demo.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="15" />
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
  <node concept="24kQdi" id="4vgJcICKHzz">
    <property role="3GE5qa" value="expressions" />
    <ref role="1XX52x" to=":4vgJcICKHua" resolve="Bool" />
    <node concept="3EZMnI" id="4vgJcICKHz$" role="2wV5jI">
      <node concept="3F0A7n" id="4vgJcICKHz_" role="3EZMnx">
        <ref role="1NtTu8" to=":4vgJcICKHub" resolve="BooleanValue" />
      </node>
      <node concept="l2Vlx" id="4vgJcICKHzA" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="4vgJcICKHzB">
    <property role="3GE5qa" value="expressions" />
    <ref role="1XX52x" to=":4vgJcICKHud" resolve="Number" />
    <node concept="3EZMnI" id="4vgJcICKHzC" role="2wV5jI">
      <node concept="3F0A7n" id="4vgJcICKHzD" role="3EZMnx">
        <ref role="1NtTu8" to=":4vgJcICKHue" resolve="NumberValue" />
      </node>
      <node concept="l2Vlx" id="4vgJcICKHzE" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="4vgJcICKHzF">
    <property role="3GE5qa" value="statements" />
    <ref role="1XX52x" to=":4vgJcICKHuj" resolve="Skip" />
    <node concept="3EZMnI" id="4vgJcICKHzG" role="2wV5jI">
      <node concept="3F0ifn" id="4vgJcICKHzH" role="3EZMnx">
        <property role="3F0ifm" value="skip" />
      </node>
      <node concept="l2Vlx" id="4vgJcICKHzI" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="4vgJcICKHzJ">
    <property role="3GE5qa" value="statements" />
    <ref role="1XX52x" to=":4vgJcICKHul" resolve="Assignment" />
    <node concept="3EZMnI" id="4vgJcICKHzK" role="2wV5jI">
      <node concept="3F0A7n" id="4vgJcICKHzL" role="3EZMnx">
        <ref role="1NtTu8" to=":4vgJcICKHum" resolve="Identifier" />
      </node>
      <node concept="3F0ifn" id="4vgJcICKHzM" role="3EZMnx">
        <property role="3F0ifm" value=":=" />
      </node>
      <node concept="3F1sOY" id="4vgJcICKHzN" role="3EZMnx">
        <ref role="1NtTu8" to=":4vgJcICKHun" resolve="Expression" />
      </node>
      <node concept="3F0ifn" id="4vgJcICKHzO" role="3EZMnx">
        <property role="3F0ifm" value=";" />
      </node>
      <node concept="l2Vlx" id="4vgJcICKHzP" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="4vgJcICKHzQ">
    <property role="3GE5qa" value="statements" />
    <ref role="1XX52x" to=":4vgJcICKHup" resolve="Selection" />
    <node concept="3EZMnI" id="4vgJcICKHzR" role="2wV5jI">
      <node concept="3F0ifn" id="4vgJcICKHzS" role="3EZMnx">
        <property role="3F0ifm" value="if" />
      </node>
      <node concept="3F1sOY" id="4vgJcICKHzT" role="3EZMnx">
        <ref role="1NtTu8" to=":4vgJcICKHuq" resolve="Condition" />
      </node>
      <node concept="3F0ifn" id="4vgJcICKHzU" role="3EZMnx">
        <property role="3F0ifm" value="then" />
      </node>
      <node concept="3F1sOY" id="4vgJcICKHzV" role="3EZMnx">
        <ref role="1NtTu8" to=":4vgJcICKHur" resolve="thenstats" />
        <node concept="lj46D" id="4vgJcICKHzW" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pVoyu" id="4vgJcICKHzX" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="4vgJcICKHzY" role="3EZMnx">
        <property role="3F0ifm" value="else" />
        <node concept="pVoyu" id="4vgJcICKHzZ" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="4vgJcICKH$0" role="3EZMnx">
        <ref role="1NtTu8" to=":4vgJcICKHus" resolve="elsestats" />
        <node concept="lj46D" id="4vgJcICKH$1" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pVoyu" id="4vgJcICKH$2" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="4vgJcICKH$3" role="3EZMnx">
        <property role="3F0ifm" value="fi" />
        <node concept="pVoyu" id="4vgJcICKH$4" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="4vgJcICKH$5" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="4vgJcICKH$6">
    <property role="3GE5qa" value="statements" />
    <ref role="1XX52x" to=":4vgJcICKHuu" resolve="Loop" />
    <node concept="3EZMnI" id="4vgJcICKH$7" role="2wV5jI">
      <node concept="3F0ifn" id="4vgJcICKH$8" role="3EZMnx">
        <property role="3F0ifm" value="while" />
      </node>
      <node concept="3F1sOY" id="4vgJcICKH$9" role="3EZMnx">
        <ref role="1NtTu8" to=":4vgJcICKHuv" resolve="Condition" />
      </node>
      <node concept="3F0ifn" id="4vgJcICKH$a" role="3EZMnx">
        <property role="3F0ifm" value="do" />
      </node>
      <node concept="3F1sOY" id="4vgJcICKH$b" role="3EZMnx">
        <ref role="1NtTu8" to=":4vgJcICKHuw" resolve="Statement" />
        <node concept="lj46D" id="4vgJcICKH$c" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pVoyu" id="4vgJcICKH$d" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="4vgJcICKH$e" role="3EZMnx">
        <property role="3F0ifm" value="od" />
        <node concept="pVoyu" id="4vgJcICKH$f" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="4vgJcICKH$g" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="4vgJcICKH$h">
    <property role="3GE5qa" value="statements" />
    <ref role="1XX52x" to=":4vgJcICKHuz" resolve="Statements" />
    <node concept="3EZMnI" id="4vgJcICKH$i" role="2wV5jI">
      <node concept="3F2HdR" id="4vgJcICKH$j" role="3EZMnx">
        <ref role="1NtTu8" to=":4vgJcICKHu$" resolve="Statement" />
        <node concept="l2Vlx" id="4vgJcICKH$k" role="2czzBx" />
      </node>
      <node concept="l2Vlx" id="4vgJcICKH$l" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="4vgJcICKH$m">
    <property role="3GE5qa" value="" />
    <ref role="1XX52x" to=":4vgJcICKHu_" resolve="Program" />
    <node concept="3EZMnI" id="4vgJcICKH$n" role="2wV5jI">
      <node concept="3F0ifn" id="4vgJcICKH$o" role="3EZMnx">
        <property role="3F0ifm" value="Program" />
      </node>
      <node concept="3F0A7n" id="4vgJcICKH$p" role="3EZMnx">
        <ref role="1NtTu8" to=":4vgJcICKHuA" resolve="Identifier" />
      </node>
      <node concept="3F0ifn" id="4vgJcICKH$q" role="3EZMnx">
        <property role="3F0ifm" value="is" />
      </node>
      <node concept="3F0ifn" id="4vgJcICKH$r" role="3EZMnx">
        <property role="3F0ifm" value="begin" />
        <node concept="pVoyu" id="4vgJcICKH$s" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="4vgJcICKH$t" role="3EZMnx">
        <ref role="1NtTu8" to=":4vgJcICKHuB" resolve="Statements" />
        <node concept="lj46D" id="4vgJcICKH$u" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pVoyu" id="4vgJcICKH$v" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="4vgJcICKH$w" role="3EZMnx">
        <property role="3F0ifm" value="end;" />
        <node concept="pVoyu" id="4vgJcICKH$x" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="4vgJcICKH$y" role="2iSdaV" />
    </node>
  </node>
</model>

