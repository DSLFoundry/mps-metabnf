<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:bbfd4f67-3d60-40cb-a629-ea2cfde43ecf(metabnf.editor.tests.interactions@tests)">
  <persistence version="9" />
  <languages>
    <use id="8585453e-6bfb-4d80-98de-b16074f1d86c" name="jetbrains.mps.lang.test" version="6" />
    <use id="48bed45b-b394-4796-8621-cea28d56a6da" name="Demo" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports />
  <registry>
    <language id="8585453e-6bfb-4d80-98de-b16074f1d86c" name="jetbrains.mps.lang.test">
      <concept id="7011073693661765739" name="jetbrains.mps.lang.test.structure.InvokeActionStatement" flags="nn" index="2HxZob">
        <child id="1101347953350127927" name="actionReference" index="3iKnsn" />
      </concept>
      <concept id="1229187653856" name="jetbrains.mps.lang.test.structure.EditorTestCase" flags="lg" index="LiM7Y">
        <property id="1883175908513350760" name="description" index="3YCmrE" />
        <child id="3143335925185262946" name="testNodeBefore" index="25YQCW" />
        <child id="3143335925185262981" name="testNodeResult" index="25YQFr" />
        <child id="1229187755283" name="code" index="LjaKd" />
      </concept>
      <concept id="1229194968594" name="jetbrains.mps.lang.test.structure.AnonymousCellAnnotation" flags="ng" index="LIFWc">
        <property id="6268941039745498163" name="selectionStart" index="p6zMq" />
        <property id="6268941039745498165" name="selectionEnd" index="p6zMs" />
        <property id="1229194968596" name="caretPosition" index="LIFWa" />
        <property id="1229194968595" name="cellId" index="LIFWd" />
      </concept>
      <concept id="1227182079811" name="jetbrains.mps.lang.test.structure.TypeKeyStatement" flags="nn" index="2TK7Tu">
        <property id="1227184461946" name="keys" index="2TTd_B" />
      </concept>
      <concept id="1101347953350122758" name="jetbrains.mps.lang.test.structure.BootstrapActionReference" flags="ng" index="3iKlGA">
        <property id="1101347953350127918" name="actionId" index="3iKnse" />
      </concept>
      <concept id="1216989428737" name="jetbrains.mps.lang.test.structure.TestNode" flags="ng" index="1qefOq">
        <child id="1216989461394" name="nodeToCheck" index="1qenE9" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="48bed45b-b394-4796-8621-cea28d56a6da" name="Demo">
      <concept id="5054346797381394432" name="Demo.structure.Number" flags="ng" index="1jEomy">
        <property id="1458547674486468608" name="NumberValue" index="3dwjPx" />
      </concept>
    </language>
  </registry>
  <node concept="LiM7Y" id="1SDFwTIRa6A">
    <property role="TrG5h" value="NumberTyping" />
    <property role="3YCmrE" value="Generated Demo editor: real keyboard input, independent AST and caret assertions" />
    <node concept="3clFbS" id="1SDFwTIRa6B" role="LjaKd">
      <node concept="2TK7Tu" id="1SDFwTIRa6C" role="3cqZAp">
        <property role="2TTd_B" value="2" />
      </node>
    </node>
    <node concept="1qefOq" id="1SDFwTIRa6D" role="25YQCW">
      <node concept="1jEomy" id="1SDFwTIRa6E" role="1qenE9">
        <property role="3dwjPx" value="1" />
        <node concept="LIFWc" id="1SDFwTIRa6F" role="lGtFl">
          <property role="LIFWd" value="property_NumberValue" />
          <property role="LIFWa" value="1" />
          <property role="p6zMq" value="1" />
          <property role="p6zMs" value="1" />
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="1SDFwTIRa6G" role="25YQFr">
      <node concept="1jEomy" id="1SDFwTIRa6H" role="1qenE9">
        <property role="3dwjPx" value="12" />
        <node concept="LIFWc" id="1SDFwTIRa6I" role="lGtFl">
          <property role="LIFWd" value="property_NumberValue" />
          <property role="LIFWa" value="2" />
          <property role="p6zMq" value="2" />
          <property role="p6zMs" value="2" />
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="1SDFwTIRa6J">
    <property role="TrG5h" value="NumberDeletion" />
    <property role="3YCmrE" value="Generated Demo editor: real keyboard input, independent AST and caret assertions" />
    <node concept="3clFbS" id="1SDFwTIRa6K" role="LjaKd">
      <node concept="2HxZob" id="3v958MU1P$L" role="3cqZAp">
        <node concept="3iKlGA" id="3v958MU1P$M" role="3iKnsn">
          <property role="3iKnse" value="jetbrains.mps.ide.editor.actions.Backspace_Action" />
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="1SDFwTIRa6N" role="25YQCW">
      <node concept="1jEomy" id="1SDFwTIRa6O" role="1qenE9">
        <property role="3dwjPx" value="12" />
        <node concept="LIFWc" id="1SDFwTIRa6P" role="lGtFl">
          <property role="LIFWd" value="property_NumberValue" />
          <property role="LIFWa" value="2" />
          <property role="p6zMq" value="2" />
          <property role="p6zMs" value="2" />
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="1SDFwTIRa6Q" role="25YQFr">
      <node concept="1jEomy" id="1SDFwTIRa6R" role="1qenE9">
        <property role="3dwjPx" value="1" />
        <node concept="LIFWc" id="1SDFwTIRa6S" role="lGtFl">
          <property role="LIFWd" value="property_NumberValue" />
          <property role="LIFWa" value="1" />
          <property role="p6zMq" value="1" />
          <property role="p6zMs" value="1" />
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="1SDFwTIRa6T">
    <property role="TrG5h" value="NumberUndo" />
    <property role="3YCmrE" value="Generated Demo editor: real keyboard input, independent AST and caret assertions" />
    <node concept="3clFbS" id="1SDFwTIRa6U" role="LjaKd">
      <node concept="2TK7Tu" id="1SDFwTIRa6V" role="3cqZAp">
        <property role="2TTd_B" value="2" />
      </node>
      <node concept="2HxZob" id="3v958MU1P$N" role="3cqZAp">
        <node concept="3iKlGA" id="3v958MU1P$O" role="3iKnsn">
          <property role="3iKnse" value="$Undo" />
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="1SDFwTIRa6Y" role="25YQCW">
      <node concept="1jEomy" id="1SDFwTIRa6Z" role="1qenE9">
        <property role="3dwjPx" value="1" />
        <node concept="LIFWc" id="1SDFwTIRa70" role="lGtFl">
          <property role="LIFWd" value="property_NumberValue" />
          <property role="LIFWa" value="1" />
          <property role="p6zMq" value="1" />
          <property role="p6zMs" value="1" />
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="1SDFwTIRa71" role="25YQFr">
      <node concept="1jEomy" id="1SDFwTIRa72" role="1qenE9">
        <property role="3dwjPx" value="1" />
        <node concept="LIFWc" id="1SDFwTIRa73" role="lGtFl">
          <property role="LIFWd" value="property_NumberValue" />
          <property role="LIFWa" value="1" />
          <property role="p6zMq" value="1" />
          <property role="p6zMs" value="1" />
        </node>
      </node>
    </node>
  </node>
</model>

