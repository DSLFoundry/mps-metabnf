<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:80d6dd30-c4c3-47a0-9c0b-e46d1827505b(Demo.textGen)">
  <persistence version="9" />
  <languages>
    <use id="b83431fe-5c8f-40bc-8a36-65e25f4dd253" name="jetbrains.mps.lang.textGen" version="1" />
    <devkit ref="fa73d85a-ac7f-447b-846c-fcdc41caa600(jetbrains.mps.devkit.aspect.textgen)" />
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
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
    </language>
    <language id="b83431fe-5c8f-40bc-8a36-65e25f4dd253" name="jetbrains.mps.lang.textGen">
      <concept id="1237305208784" name="jetbrains.mps.lang.textGen.structure.NewLineAppendPart" flags="ng" index="l8MVK" />
      <concept id="1237305334312" name="jetbrains.mps.lang.textGen.structure.NodeAppendPart" flags="ng" index="l9hG8">
        <child id="1237305790512" name="value" index="lb14g" />
      </concept>
      <concept id="1237305491868" name="jetbrains.mps.lang.textGen.structure.CollectionAppendPart" flags="ng" index="l9S2W">
        <property id="1237983969951" name="withSeparator" index="XA4eZ" />
        <child id="1237305945551" name="list" index="lbANJ" />
      </concept>
      <concept id="1237305557638" name="jetbrains.mps.lang.textGen.structure.ConstantStringAppendPart" flags="ng" index="la8eA">
        <property id="1237305576108" name="value" index="lacIc" />
      </concept>
      <concept id="1237306079178" name="jetbrains.mps.lang.textGen.structure.AppendOperation" flags="nn" index="lc7rE">
        <child id="1237306115446" name="part" index="lcghm" />
      </concept>
      <concept id="1233670071145" name="jetbrains.mps.lang.textGen.structure.ConceptTextGenDeclaration" flags="ig" index="WtQ9Q">
        <reference id="1233670257997" name="conceptDeclaration" index="WuzLi" />
        <child id="1233749296504" name="textGenBlock" index="11c4hB" />
      </concept>
      <concept id="1233748055915" name="jetbrains.mps.lang.textGen.structure.NodeParameter" flags="nn" index="117lpO" />
      <concept id="1233749247888" name="jetbrains.mps.lang.textGen.structure.GenerateTextDeclaration" flags="in" index="11bSqf" />
      <concept id="1233752719417" name="jetbrains.mps.lang.textGen.structure.IncreaseDepthOperation" flags="nn" index="11p84A" />
      <concept id="1233752780875" name="jetbrains.mps.lang.textGen.structure.DecreaseDepthOperation" flags="nn" index="11pn5k" />
      <concept id="1233920501193" name="jetbrains.mps.lang.textGen.structure.IndentBufferOperation" flags="nn" index="1bpajm" />
      <concept id="1236188139846" name="jetbrains.mps.lang.textGen.structure.WithIndentOperation" flags="nn" index="3izx1p">
        <child id="1236188238861" name="list" index="3izTki" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
    </language>
  </registry>
  <node concept="WtQ9Q" id="swA13onblz">
    <property role="3GE5qa" value="expressions" />
    <ref role="WuzLi" to="ti4p:swA13onbc1" resolve="Bool" />
    <node concept="11bSqf" id="swA13onbl$" role="11c4hB">
      <node concept="3clFbS" id="swA13onbl_" role="2VODD2">
        <node concept="lc7rE" id="swA13onblA" role="3cqZAp">
          <node concept="l9hG8" id="swA13onblB" role="lcghm">
            <node concept="2OqwBi" id="swA13onblC" role="lb14g">
              <node concept="117lpO" id="swA13onblD" role="2Oq$k0" />
              <node concept="3TrcHB" id="swA13onblE" role="2OqNvi">
                <ref role="3TsBF5" to="ti4p:swA13onbc2" resolve="BooleanValue" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="swA13onblF">
    <property role="3GE5qa" value="expressions" />
    <ref role="WuzLi" to="ti4p:swA13onbc4" resolve="Number" />
    <node concept="11bSqf" id="swA13onblG" role="11c4hB">
      <node concept="3clFbS" id="swA13onblH" role="2VODD2">
        <node concept="lc7rE" id="swA13onblI" role="3cqZAp">
          <node concept="l9hG8" id="swA13onblJ" role="lcghm">
            <node concept="2OqwBi" id="swA13onblK" role="lb14g">
              <node concept="117lpO" id="swA13onblL" role="2Oq$k0" />
              <node concept="3TrcHB" id="swA13onblM" role="2OqNvi">
                <ref role="3TsBF5" to="ti4p:swA13onbc5" resolve="NumberValue" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="swA13onblN">
    <property role="3GE5qa" value="statements" />
    <ref role="WuzLi" to="ti4p:swA13onbca" resolve="Skip" />
    <node concept="11bSqf" id="swA13onblO" role="11c4hB">
      <node concept="3clFbS" id="swA13onblP" role="2VODD2">
        <node concept="lc7rE" id="swA13onblQ" role="3cqZAp">
          <node concept="la8eA" id="swA13onblR" role="lcghm">
            <property role="lacIc" value="skip" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="swA13onblS">
    <property role="3GE5qa" value="statements" />
    <ref role="WuzLi" to="ti4p:swA13onbcc" resolve="Assignment" />
    <node concept="11bSqf" id="swA13onblT" role="11c4hB">
      <node concept="3clFbS" id="swA13onblU" role="2VODD2">
        <node concept="lc7rE" id="swA13onblV" role="3cqZAp">
          <node concept="l9hG8" id="swA13onblW" role="lcghm">
            <node concept="2OqwBi" id="swA13onblX" role="lb14g">
              <node concept="117lpO" id="swA13onblY" role="2Oq$k0" />
              <node concept="3TrcHB" id="swA13onblZ" role="2OqNvi">
                <ref role="3TsBF5" to="ti4p:swA13onbcd" resolve="Identifier" />
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="swA13onbm0" role="3cqZAp">
          <node concept="la8eA" id="swA13onbm1" role="lcghm">
            <property role="lacIc" value=":=" />
          </node>
        </node>
        <node concept="3izx1p" id="swA13onbm2" role="3cqZAp">
          <node concept="3clFbS" id="swA13onbm3" role="3izTki">
            <node concept="lc7rE" id="swA13onbm4" role="3cqZAp">
              <node concept="l9hG8" id="swA13onbm5" role="lcghm">
                <node concept="2OqwBi" id="swA13onbm6" role="lb14g">
                  <node concept="117lpO" id="swA13onbm7" role="2Oq$k0" />
                  <node concept="3TrEf2" id="swA13onbm8" role="2OqNvi">
                    <ref role="3Tt5mk" to="ti4p:swA13onbce" resolve="Expression" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="swA13onbm9" role="3cqZAp">
          <node concept="la8eA" id="swA13onbma" role="lcghm">
            <property role="lacIc" value=";" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="swA13onbmb">
    <property role="3GE5qa" value="statements" />
    <ref role="WuzLi" to="ti4p:swA13onbcg" resolve="Selection" />
    <node concept="11bSqf" id="swA13onbmc" role="11c4hB">
      <node concept="3clFbS" id="swA13onbmd" role="2VODD2">
        <node concept="lc7rE" id="swA13onbme" role="3cqZAp">
          <node concept="la8eA" id="swA13onbmf" role="lcghm">
            <property role="lacIc" value="if" />
          </node>
        </node>
        <node concept="3izx1p" id="swA13onbmg" role="3cqZAp">
          <node concept="3clFbS" id="swA13onbmh" role="3izTki">
            <node concept="lc7rE" id="swA13onbmi" role="3cqZAp">
              <node concept="l9hG8" id="swA13onbmj" role="lcghm">
                <node concept="2OqwBi" id="swA13onbmk" role="lb14g">
                  <node concept="117lpO" id="swA13onbml" role="2Oq$k0" />
                  <node concept="3TrEf2" id="swA13onbmm" role="2OqNvi">
                    <ref role="3Tt5mk" to="ti4p:swA13onbch" resolve="Condition" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="swA13onbmn" role="3cqZAp">
          <node concept="la8eA" id="swA13onbmo" role="lcghm">
            <property role="lacIc" value="then" />
          </node>
        </node>
        <node concept="lc7rE" id="swA13onbmp" role="3cqZAp">
          <node concept="l8MVK" id="swA13onbmq" role="lcghm" />
        </node>
        <node concept="11p84A" id="swA13onbmr" role="3cqZAp" />
        <node concept="3izx1p" id="swA13onbms" role="3cqZAp">
          <node concept="3clFbS" id="swA13onbmt" role="3izTki">
            <node concept="1bpajm" id="swA13onbmu" role="3cqZAp" />
            <node concept="lc7rE" id="swA13onbmv" role="3cqZAp">
              <node concept="l9hG8" id="swA13onbmw" role="lcghm">
                <node concept="2OqwBi" id="swA13onbmx" role="lb14g">
                  <node concept="117lpO" id="swA13onbmy" role="2Oq$k0" />
                  <node concept="3TrEf2" id="swA13onbmz" role="2OqNvi">
                    <ref role="3Tt5mk" to="ti4p:swA13onbci" resolve="thenstats" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="11pn5k" id="swA13onbm$" role="3cqZAp" />
        <node concept="lc7rE" id="swA13onbm_" role="3cqZAp">
          <node concept="l8MVK" id="swA13onbmA" role="lcghm" />
        </node>
        <node concept="lc7rE" id="swA13onbmB" role="3cqZAp">
          <node concept="la8eA" id="swA13onbmC" role="lcghm">
            <property role="lacIc" value="else" />
          </node>
        </node>
        <node concept="lc7rE" id="swA13onbmD" role="3cqZAp">
          <node concept="l8MVK" id="swA13onbmE" role="lcghm" />
        </node>
        <node concept="11p84A" id="swA13onbmF" role="3cqZAp" />
        <node concept="3izx1p" id="swA13onbmG" role="3cqZAp">
          <node concept="3clFbS" id="swA13onbmH" role="3izTki">
            <node concept="1bpajm" id="swA13onbmI" role="3cqZAp" />
            <node concept="lc7rE" id="swA13onbmJ" role="3cqZAp">
              <node concept="l9hG8" id="swA13onbmK" role="lcghm">
                <node concept="2OqwBi" id="swA13onbmL" role="lb14g">
                  <node concept="117lpO" id="swA13onbmM" role="2Oq$k0" />
                  <node concept="3TrEf2" id="swA13onbmN" role="2OqNvi">
                    <ref role="3Tt5mk" to="ti4p:swA13onbcj" resolve="elsestats" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="11pn5k" id="swA13onbmO" role="3cqZAp" />
        <node concept="lc7rE" id="swA13onbmP" role="3cqZAp">
          <node concept="l8MVK" id="swA13onbmQ" role="lcghm" />
        </node>
        <node concept="lc7rE" id="swA13onbmR" role="3cqZAp">
          <node concept="la8eA" id="swA13onbmS" role="lcghm">
            <property role="lacIc" value="fi" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="swA13onbmT">
    <property role="3GE5qa" value="statements" />
    <ref role="WuzLi" to="ti4p:swA13onbcl" resolve="Loop" />
    <node concept="11bSqf" id="swA13onbmU" role="11c4hB">
      <node concept="3clFbS" id="swA13onbmV" role="2VODD2">
        <node concept="lc7rE" id="swA13onbmW" role="3cqZAp">
          <node concept="la8eA" id="swA13onbmX" role="lcghm">
            <property role="lacIc" value="while" />
          </node>
        </node>
        <node concept="3izx1p" id="swA13onbmY" role="3cqZAp">
          <node concept="3clFbS" id="swA13onbmZ" role="3izTki">
            <node concept="lc7rE" id="swA13onbn0" role="3cqZAp">
              <node concept="l9hG8" id="swA13onbn1" role="lcghm">
                <node concept="2OqwBi" id="swA13onbn2" role="lb14g">
                  <node concept="117lpO" id="swA13onbn3" role="2Oq$k0" />
                  <node concept="3TrEf2" id="swA13onbn4" role="2OqNvi">
                    <ref role="3Tt5mk" to="ti4p:swA13onbcm" resolve="Condition" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="swA13onbn5" role="3cqZAp">
          <node concept="la8eA" id="swA13onbn6" role="lcghm">
            <property role="lacIc" value="do" />
          </node>
        </node>
        <node concept="lc7rE" id="swA13onbn7" role="3cqZAp">
          <node concept="l8MVK" id="swA13onbn8" role="lcghm" />
        </node>
        <node concept="11p84A" id="swA13onbn9" role="3cqZAp" />
        <node concept="3izx1p" id="swA13onbna" role="3cqZAp">
          <node concept="3clFbS" id="swA13onbnb" role="3izTki">
            <node concept="1bpajm" id="swA13onbnc" role="3cqZAp" />
            <node concept="lc7rE" id="swA13onbnd" role="3cqZAp">
              <node concept="l9hG8" id="swA13onbne" role="lcghm">
                <node concept="2OqwBi" id="swA13onbnf" role="lb14g">
                  <node concept="117lpO" id="swA13onbng" role="2Oq$k0" />
                  <node concept="3TrEf2" id="swA13onbnh" role="2OqNvi">
                    <ref role="3Tt5mk" to="ti4p:swA13onbcn" resolve="Statement" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="11pn5k" id="swA13onbni" role="3cqZAp" />
        <node concept="lc7rE" id="swA13onbnj" role="3cqZAp">
          <node concept="l8MVK" id="swA13onbnk" role="lcghm" />
        </node>
        <node concept="lc7rE" id="swA13onbnl" role="3cqZAp">
          <node concept="la8eA" id="swA13onbnm" role="lcghm">
            <property role="lacIc" value="od" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="swA13onbnn">
    <property role="3GE5qa" value="statements" />
    <ref role="WuzLi" to="ti4p:swA13onbcq" resolve="Statements" />
    <node concept="11bSqf" id="swA13onbno" role="11c4hB">
      <node concept="3clFbS" id="swA13onbnp" role="2VODD2">
        <node concept="3izx1p" id="swA13onbnq" role="3cqZAp">
          <node concept="3clFbS" id="swA13onbnr" role="3izTki">
            <node concept="lc7rE" id="swA13onbns" role="3cqZAp">
              <node concept="l9S2W" id="swA13onbnt" role="lcghm">
                <property role="XA4eZ" value="true" />
                <node concept="2OqwBi" id="swA13onbnu" role="lbANJ">
                  <node concept="117lpO" id="swA13onbnv" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="swA13onbnw" role="2OqNvi">
                    <ref role="3TtcxE" to="ti4p:swA13onbcr" resolve="Statement" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="swA13onbnx">
    <property role="3GE5qa" value="" />
    <ref role="WuzLi" to="ti4p:swA13onbcs" resolve="Program" />
    <node concept="11bSqf" id="swA13onbny" role="11c4hB">
      <node concept="3clFbS" id="swA13onbnz" role="2VODD2">
        <node concept="lc7rE" id="swA13onbn$" role="3cqZAp">
          <node concept="la8eA" id="swA13onbn_" role="lcghm">
            <property role="lacIc" value="Program" />
          </node>
        </node>
        <node concept="lc7rE" id="swA13onbnA" role="3cqZAp">
          <node concept="l9hG8" id="swA13onbnB" role="lcghm">
            <node concept="2OqwBi" id="swA13onbnC" role="lb14g">
              <node concept="117lpO" id="swA13onbnD" role="2Oq$k0" />
              <node concept="3TrcHB" id="swA13onbnE" role="2OqNvi">
                <ref role="3TsBF5" to="ti4p:swA13onbct" resolve="Identifier" />
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="swA13onbnF" role="3cqZAp">
          <node concept="la8eA" id="swA13onbnG" role="lcghm">
            <property role="lacIc" value="is" />
          </node>
        </node>
        <node concept="lc7rE" id="swA13onbnH" role="3cqZAp">
          <node concept="l8MVK" id="swA13onbnI" role="lcghm" />
        </node>
        <node concept="lc7rE" id="swA13onbnJ" role="3cqZAp">
          <node concept="la8eA" id="swA13onbnK" role="lcghm">
            <property role="lacIc" value="begin" />
          </node>
        </node>
        <node concept="lc7rE" id="swA13onbnL" role="3cqZAp">
          <node concept="l8MVK" id="swA13onbnM" role="lcghm" />
        </node>
        <node concept="11p84A" id="swA13onbnN" role="3cqZAp" />
        <node concept="3izx1p" id="swA13onbnO" role="3cqZAp">
          <node concept="3clFbS" id="swA13onbnP" role="3izTki">
            <node concept="1bpajm" id="swA13onbnQ" role="3cqZAp" />
            <node concept="lc7rE" id="swA13onbnR" role="3cqZAp">
              <node concept="l9hG8" id="swA13onbnS" role="lcghm">
                <node concept="2OqwBi" id="swA13onbnT" role="lb14g">
                  <node concept="117lpO" id="swA13onbnU" role="2Oq$k0" />
                  <node concept="3TrEf2" id="swA13onbnV" role="2OqNvi">
                    <ref role="3Tt5mk" to="ti4p:swA13onbcu" resolve="Statements" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="11pn5k" id="swA13onbnW" role="3cqZAp" />
        <node concept="lc7rE" id="swA13onbnX" role="3cqZAp">
          <node concept="l8MVK" id="swA13onbnY" role="lcghm" />
        </node>
        <node concept="lc7rE" id="swA13onbnZ" role="3cqZAp">
          <node concept="la8eA" id="swA13onbo0" role="lcghm">
            <property role="lacIc" value="end;" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

