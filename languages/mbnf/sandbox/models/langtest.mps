<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:8516252e-9edc-4402-baf6-fadc85f81400(mbnf.sandbox.langtest)">
  <persistence version="9" />
  <languages>
    <use id="48bed45b-b394-4796-8621-cea28d56a6da" name="Demo" version="0" />
    <use id="3e22ecc8-2d7d-4785-af04-96cbcec526fa" name="Python" version="0" />
  </languages>
  <imports />
  <registry>
    <language id="48bed45b-b394-4796-8621-cea28d56a6da" name="Demo">
      <concept id="6508006283257725240" name="Demo.structure.Number" flags="ng" index="2fLPg3">
        <property id="6508006283257725241" name="NumberValue" index="2fLPg2" />
      </concept>
      <concept id="6508006283257725246" name="Demo.structure.Skip" flags="ng" index="2fLPg5" />
      <concept id="6508006283257725237" name="Demo.structure.Bool" flags="ng" index="2fLPge">
        <property id="6508006283257725238" name="BooleanValue" index="2fLPgd" />
      </concept>
      <concept id="6508006283257725264" name="Demo.structure.Program" flags="ng" index="2fLPhF">
        <property id="6508006283257725265" name="Identifier" index="2fLPhE" />
        <child id="6508006283257725266" name="Statements" index="2fLPhD" />
      </concept>
      <concept id="6508006283257725262" name="Demo.structure.Statements" flags="ng" index="2fLPhP">
        <child id="6508006283257725263" name="Statement" index="2fLPhO" />
      </concept>
      <concept id="6508006283257725248" name="Demo.structure.Assignment" flags="ng" index="2fLPhV">
        <property id="6508006283257725249" name="Identifier" index="2fLPhU" />
        <child id="6508006283257725250" name="Expression" index="2fLPhT" />
      </concept>
      <concept id="6508006283257725252" name="Demo.structure.Selection" flags="ng" index="2fLPhZ">
        <child id="6508006283257725255" name="elsestats" index="2fLPhW" />
        <child id="6508006283257725254" name="thenstats" index="2fLPhX" />
        <child id="6508006283257725253" name="Condition" index="2fLPhY" />
      </concept>
    </language>
  </registry>
  <node concept="2fLPhF" id="5Dh5jJl_X_0">
    <property role="2fLPhE" value="MySampleProgram" />
    <node concept="2fLPhP" id="5Dh5jJl_X_1" role="2fLPhD">
      <node concept="2fLPhV" id="5Dh5jJl_X_p" role="2fLPhO">
        <property role="2fLPhU" value="x" />
        <node concept="2fLPg3" id="5Dh5jJl_X_u" role="2fLPhT">
          <property role="2fLPg2" value="204" />
        </node>
      </node>
      <node concept="2fLPhZ" id="5Dh5jJl_X_F" role="2fLPhO">
        <node concept="2fLPge" id="5Dh5jJl_X_W" role="2fLPhY">
          <property role="2fLPgd" value="True" />
        </node>
        <node concept="2fLPhP" id="5Dh5jJl_X_I" role="2fLPhX">
          <node concept="2fLPhV" id="5Dh5jJl_X_Z" role="2fLPhO">
            <property role="2fLPhU" value="x" />
            <node concept="2fLPg3" id="5Dh5jJl_XA7" role="2fLPhT">
              <property role="2fLPg2" value="3" />
            </node>
          </node>
        </node>
        <node concept="2fLPhP" id="5Dh5jJl_X_L" role="2fLPhW">
          <node concept="2fLPg5" id="5Dh5jJl_XA4" role="2fLPhO" />
        </node>
      </node>
    </node>
  </node>
</model>

