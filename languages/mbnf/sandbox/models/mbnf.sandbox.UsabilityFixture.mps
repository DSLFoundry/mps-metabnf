<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:50e696ba-6dbe-4374-8573-c5102cf3ceca(mbnf.sandbox.UsabilityFixture)">
  <persistence version="9" />
  <attribute name="doNotGenerate" value="true" />
  <languages>
    <use id="9c03c641-469f-49e7-aeed-44a3d19b7253" name="metabnf" version="0" />
  </languages>
  <imports />
  <registry>
    <language id="9c03c641-469f-49e7-aeed-44a3d19b7253" name="metabnf">
      <concept id="4939832016427306382" name="metabnf.structure.Flag" flags="ng" index="2DNoa5" />
      <concept id="656738873848441252" name="metabnf.structure.UsabilityAnnotation" flags="ng" index="2WW1Oy">
        <property id="656738873848441254" name="suppressed" index="2WW1Ow" />
        <property id="656738873848441255" name="evidence" index="2WW1Ox" />
        <property id="656738873848441253" name="origin" index="2WW1Oz" />
      </concept>
      <concept id="656738873848441251" name="metabnf.structure.UsabilityAnnotations" flags="ng" index="2WW1O_">
        <reference id="656738873848441256" name="grammar" index="2WW1OI" />
        <child id="656738873848441257" name="annotations" index="2WW1OJ" />
      </concept>
      <concept id="656738873848441262" name="metabnf.structure.OptionalGroupAnnotation" flags="ng" index="2WW1OC">
        <property id="656738873848441266" name="distinguishEmpty" index="2WW1OO" />
        <reference id="656738873848441263" name="owner" index="2WW1OD" />
        <reference id="656738873848441264" name="first" index="2WW1OQ" />
        <reference id="656738873848441265" name="last" index="2WW1OR" />
      </concept>
      <concept id="656738873848441260" name="metabnf.structure.ListAnnotation" flags="ng" index="2WW1OE">
        <reference id="656738873848441261" name="target" index="2WW1OF" />
      </concept>
      <concept id="656738873848441258" name="metabnf.structure.FlagAnnotation" flags="ng" index="2WW1OG">
        <reference id="656738873848441259" name="target" index="2WW1OH" />
      </concept>
      <concept id="2504845739424006305" name="metabnf.structure.Keyword" flags="ng" index="3xhzXc" />
      <concept id="2504845739424006163" name="metabnf.structure.NonterminalRule" flags="ng" index="3xhzZY">
        <child id="2504845739424006198" name="terms" index="3xhzZr" />
      </concept>
      <concept id="2504845739424324587" name="metabnf.structure.NonterminalReference" flags="ng" index="3xiQg6">
        <property id="2504845739424658192" name="card" index="3xj4NX" />
        <reference id="2504845739424324590" name="rule" index="3xiQg3" />
      </concept>
      <concept id="2504845739423496082" name="metabnf.structure.grammar" flags="ng" index="3xJwxZ">
        <reference id="2504845739423551607" name="start" index="3xJMYq" />
        <child id="2504845739423551605" name="rules" index="3xJMYo" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="3xJwxZ" id="$td8qQ005j">
    <property role="TrG5h" value="DemoUsability" />
    <ref role="3xJMYq" node="$td8qQ005k" resolve="Program" />
    <node concept="3xhzZY" id="$td8qQ005k" role="3xJMYo">
      <property role="TrG5h" value="Program" />
      <node concept="3xhzXc" id="$td8qQ005n" role="3xhzZr">
        <property role="TrG5h" value="program" />
      </node>
      <node concept="2DNoa5" id="$td8qQ005o" role="3xhzZr">
        <property role="TrG5h" value="static" />
      </node>
      <node concept="3xiQg6" id="$td8qQ005p" role="3xhzZr">
        <property role="TrG5h" value="statements" />
        <property role="3xj4NX" value="2b2ZYR3yDpO/AtleastOne" />
        <ref role="3xiQg3" node="$td8qQ005l" resolve="Statement" />
      </node>
      <node concept="3xhzXc" id="$td8qQ005q" role="3xhzZr">
        <property role="TrG5h" value="else" />
      </node>
      <node concept="3xiQg6" id="$td8qQ005r" role="3xhzZr">
        <property role="TrG5h" value="elseStatements" />
        <property role="3xj4NX" value="2b2ZYR3yDpO/AtleastOne" />
        <ref role="3xiQg3" node="$td8qQ005l" resolve="Statement" />
      </node>
    </node>
    <node concept="3xhzZY" id="$td8qQ005l" role="3xJMYo">
      <property role="TrG5h" value="Statement" />
      <node concept="3xhzXc" id="$td8qQ005m" role="3xhzZr">
        <property role="TrG5h" value="skip" />
      </node>
    </node>
  </node>
  <node concept="2WW1O_" id="$td8qQ005s">
    <ref role="2WW1OI" node="$td8qQ005j" resolve="DemoUsability" />
    <node concept="2WW1OG" id="$td8qQ005t" role="2WW1OJ">
      <property role="2WW1Ox" value="Demonstrates reuse of the existing Flag term" />
      <ref role="2WW1OH" node="$td8qQ005o" resolve="static" />
    </node>
    <node concept="2WW1OE" id="$td8qQ005u" role="2WW1OJ">
      <property role="2WW1Oz" value="$td8qPViAx/Inferred" />
      <property role="2WW1Ox" value="Reference has one-or-more cardinality" />
      <ref role="2WW1OF" node="$td8qQ005p" resolve="statements" />
    </node>
    <node concept="2WW1OC" id="$td8qQ005v" role="2WW1OJ">
      <property role="2WW1Oz" value="$td8qPViAy/Suggested" />
      <property role="2WW1Ox" value="Keyword-led clause; author has suppressed optional interpretation" />
      <property role="2WW1Ow" value="true" />
      <property role="2WW1OO" value="true" />
      <ref role="2WW1OD" node="$td8qQ005k" resolve="Program" />
      <ref role="2WW1OQ" node="$td8qQ005q" resolve="else" />
      <ref role="2WW1OR" node="$td8qQ005r" resolve="elseStatements" />
    </node>
  </node>
</model>

