<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:b0425bd0-34be-4bde-96d3-276a994f8898(metabnf.constraints)">
  <persistence version="9" />
  <languages>
    <use id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="6o2a" ref="r:0fbcf19f-c60b-479b-81cb-094b5b2b9f1d(metabnf.structure)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
    </language>
    <language id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints">
      <concept id="8966504967485224688" name="jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_contextNode" flags="nn" index="2rP1CM" />
      <concept id="1213093968558" name="jetbrains.mps.lang.constraints.structure.ConceptConstraints" flags="ng" index="1M2fIO">
        <reference id="1213093996982" name="concept" index="1M2myG" />
        <child id="1213100494875" name="referent" index="1Mr941" />
      </concept>
      <concept id="1148684180339" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_ReferentSearchScope_Factory" flags="in" index="1MUpDS" />
      <concept id="1148687176410" name="jetbrains.mps.lang.constraints.structure.NodeReferentConstraint" flags="ng" index="1N5Pfh">
        <reference id="1148687202698" name="applicableLink" index="1N5Vy1" />
        <child id="1148687345559" name="searchScopeFactory" index="1N6uqs" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1171305280644" name="jetbrains.mps.lang.smodel.structure.Node_GetDescendantsOperation" flags="nn" index="2Rf3mk" />
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
    </language>
  </registry>
  <node concept="1M2fIO" id="7DK$EIfvXwp">
    <property role="3GE5qa" value="terms.references" />
    <ref role="1M2myG" to="6o2a:2b2ZYR3ypJF" resolve="NonterminalReference" />
    <node concept="1N5Pfh" id="7DK$EIfwg$n" role="1Mr941">
      <ref role="1N5Vy1" to="6o2a:2b2ZYR3ypJI" />
      <node concept="1MUpDS" id="7DK$EIfwinA" role="1N6uqs">
        <node concept="3clFbS" id="7DK$EIfwinB" role="2VODD2">
          <node concept="3clFbF" id="7DK$EIfwio_" role="3cqZAp">
            <node concept="2OqwBi" id="7DK$EIfwsMC" role="3clFbG">
              <node concept="2OqwBi" id="7DK$EIfwiu8" role="2Oq$k0">
                <node concept="2rP1CM" id="7DK$EIfwio$" role="2Oq$k0" />
                <node concept="2Xjw5R" id="7DK$EIfwsCt" role="2OqNvi">
                  <node concept="1xMEDy" id="7DK$EIfwsCv" role="1xVPHs">
                    <node concept="chp4Y" id="7DK$EIfwsEo" role="ri$Ld">
                      <ref role="cht4Q" to="6o2a:2b2ZYR3vfui" resolve="grammar" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2Rf3mk" id="7DK$EIfwt7e" role="2OqNvi">
                <node concept="1xMEDy" id="7DK$EIfwt7g" role="1xVPHs">
                  <node concept="chp4Y" id="2nZx5M99l20" role="ri$Ld">
                    <ref role="cht4Q" to="6o2a:2b2ZYR3vvvM" resolve="INonterminalRule" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="7DK$EIfx0Oc">
    <property role="3GE5qa" value="terms.references" />
    <ref role="1M2myG" to="6o2a:7DK$EIfvTU7" resolve="IdReference" />
    <node concept="1N5Pfh" id="7DK$EIfx0Od" role="1Mr941">
      <ref role="1N5Vy1" to="6o2a:7DK$EIfvTUX" />
      <node concept="1MUpDS" id="7DK$EIfx0Of" role="1N6uqs">
        <node concept="3clFbS" id="7DK$EIfx0Og" role="2VODD2">
          <node concept="3clFbF" id="7DK$EIfx0Qf" role="3cqZAp">
            <node concept="2OqwBi" id="7DK$EIfx0Qh" role="3clFbG">
              <node concept="2OqwBi" id="7DK$EIfx0Qi" role="2Oq$k0">
                <node concept="2rP1CM" id="7DK$EIfx0Qj" role="2Oq$k0" />
                <node concept="2Xjw5R" id="7DK$EIfx0Qk" role="2OqNvi">
                  <node concept="1xMEDy" id="7DK$EIfx0Ql" role="1xVPHs">
                    <node concept="chp4Y" id="7DK$EIfx0Qm" role="ri$Ld">
                      <ref role="cht4Q" to="6o2a:2b2ZYR3vfui" resolve="grammar" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2Rf3mk" id="7DK$EIfx0Qn" role="2OqNvi">
                <node concept="1xMEDy" id="7DK$EIfx0Qo" role="1xVPHs">
                  <node concept="chp4Y" id="4VQvhHjPQAv" role="ri$Ld">
                    <ref role="cht4Q" to="6o2a:4VQvhHjPP6Z" resolve="IGrammarRule" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

