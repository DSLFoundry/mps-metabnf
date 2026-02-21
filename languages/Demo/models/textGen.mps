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
    <import index="ti4q" ref="498c0aa7-fe36-428e-8701-e3acdd534a5b/i:10000005(mbnf.sandbox@transient26/mbnf.sandbox.Demo@3_3)" />
    <import index="ti4r" ref="8d69898c-c087-4a37-adfe-7232fac73b6c/i:10000005(mbnf.sandbox@transient10/mbnf.sandbox.Demo@3_3)" />
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
  <node concept="WtQ9Q" id="4vgJcICKH$z">
    <property role="3GE5qa" value="expressions" />
    <ref role="WuzLi" to=":4vgJcICKHua" resolve="Bool" />
    <node concept="11bSqf" id="4vgJcICKH$$" role="11c4hB">
      <node concept="3clFbS" id="4vgJcICKH$_" role="2VODD2">
        <node concept="lc7rE" id="4vgJcICKH$A" role="3cqZAp">
          <node concept="l9hG8" id="4vgJcICKH$B" role="lcghm">
            <node concept="2OqwBi" id="4vgJcICKH$C" role="lb14g">
              <node concept="117lpO" id="4vgJcICKH$D" role="2Oq$k0" />
              <node concept="3TrcHB" id="4vgJcICKH$E" role="2OqNvi">
                <ref role="3TsBF5" to=":4vgJcICKHub" resolve="BooleanValue" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="4vgJcICKH$F">
    <property role="3GE5qa" value="expressions" />
    <ref role="WuzLi" to=":4vgJcICKHud" resolve="Number" />
    <node concept="11bSqf" id="4vgJcICKH$G" role="11c4hB">
      <node concept="3clFbS" id="4vgJcICKH$H" role="2VODD2">
        <node concept="lc7rE" id="4vgJcICKH$I" role="3cqZAp">
          <node concept="l9hG8" id="4vgJcICKH$J" role="lcghm">
            <node concept="2OqwBi" id="4vgJcICKH$K" role="lb14g">
              <node concept="117lpO" id="4vgJcICKH$L" role="2Oq$k0" />
              <node concept="3TrcHB" id="4vgJcICKH$M" role="2OqNvi">
                <ref role="3TsBF5" to=":4vgJcICKHue" resolve="NumberValue" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="4vgJcICKH$N">
    <property role="3GE5qa" value="statements" />
    <ref role="WuzLi" to=":4vgJcICKHuj" resolve="Skip" />
    <node concept="11bSqf" id="4vgJcICKH$O" role="11c4hB">
      <node concept="3clFbS" id="4vgJcICKH$P" role="2VODD2">
        <node concept="lc7rE" id="4vgJcICKH$Q" role="3cqZAp">
          <node concept="la8eA" id="4vgJcICKH$R" role="lcghm">
            <property role="lacIc" value="skip" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="4vgJcICKH$S">
    <property role="3GE5qa" value="statements" />
    <ref role="WuzLi" to="zejt:4vgJcICKHzg" resolve="Assignment" />
    <node concept="11bSqf" id="4vgJcICKH$T" role="11c4hB">
      <node concept="3clFbS" id="4vgJcICKH$U" role="2VODD2">
        <node concept="lc7rE" id="4vgJcICKH$V" role="3cqZAp">
          <node concept="l9hG8" id="4vgJcICKH$W" role="lcghm">
            <node concept="2OqwBi" id="4vgJcICKH$X" role="lb14g">
              <node concept="117lpO" id="4vgJcICKH$Y" role="2Oq$k0" />
              <node concept="3TrcHB" id="4vgJcICKH$Z" role="2OqNvi">
                <ref role="3TsBF5" to=":4vgJcICKHum" resolve="Identifier" />
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="4vgJcICKH_0" role="3cqZAp">
          <node concept="la8eA" id="4vgJcICKH_1" role="lcghm">
            <property role="lacIc" value=":=" />
          </node>
        </node>
        <node concept="3izx1p" id="4vgJcICKH_2" role="3cqZAp">
          <node concept="3clFbS" id="4vgJcICKH_3" role="3izTki">
            <node concept="lc7rE" id="4vgJcICKH_4" role="3cqZAp">
              <node concept="l9hG8" id="4vgJcICKH_5" role="lcghm">
                <node concept="2OqwBi" id="4vgJcICKH_6" role="lb14g">
                  <node concept="117lpO" id="4vgJcICKH_7" role="2Oq$k0" />
                  <node concept="3TrEf2" id="4vgJcICKH_8" role="2OqNvi">
                    <ref role="3Tt5mk" to=":4vgJcICKHun" resolve="Expression" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="4vgJcICKH_9" role="3cqZAp">
          <node concept="la8eA" id="4vgJcICKH_a" role="lcghm">
            <property role="lacIc" value=";" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="4vgJcICKH_b">
    <property role="3GE5qa" value="statements" />
    <ref role="WuzLi" to=":4vgJcICKHup" resolve="Selection" />
    <node concept="11bSqf" id="4vgJcICKH_c" role="11c4hB">
      <node concept="3clFbS" id="4vgJcICKH_d" role="2VODD2">
        <node concept="lc7rE" id="4vgJcICKH_e" role="3cqZAp">
          <node concept="la8eA" id="4vgJcICKH_f" role="lcghm">
            <property role="lacIc" value="if" />
          </node>
        </node>
        <node concept="3izx1p" id="4vgJcICKH_g" role="3cqZAp">
          <node concept="3clFbS" id="4vgJcICKH_h" role="3izTki">
            <node concept="lc7rE" id="4vgJcICKH_i" role="3cqZAp">
              <node concept="l9hG8" id="4vgJcICKH_j" role="lcghm">
                <node concept="2OqwBi" id="4vgJcICKH_k" role="lb14g">
                  <node concept="117lpO" id="4vgJcICKH_l" role="2Oq$k0" />
                  <node concept="3TrEf2" id="4vgJcICKH_m" role="2OqNvi">
                    <ref role="3Tt5mk" to=":4vgJcICKHuq" resolve="Condition" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="4vgJcICKH_n" role="3cqZAp">
          <node concept="la8eA" id="4vgJcICKH_o" role="lcghm">
            <property role="lacIc" value="then" />
          </node>
        </node>
        <node concept="lc7rE" id="4vgJcICKH_p" role="3cqZAp">
          <node concept="l8MVK" id="4vgJcICKH_q" role="lcghm" />
        </node>
        <node concept="11p84A" id="4vgJcICKH_r" role="3cqZAp" />
        <node concept="3izx1p" id="4vgJcICKH_s" role="3cqZAp">
          <node concept="3clFbS" id="4vgJcICKH_t" role="3izTki">
            <node concept="1bpajm" id="4vgJcICKH_u" role="3cqZAp" />
            <node concept="lc7rE" id="4vgJcICKH_v" role="3cqZAp">
              <node concept="l9hG8" id="4vgJcICKH_w" role="lcghm">
                <node concept="2OqwBi" id="4vgJcICKH_x" role="lb14g">
                  <node concept="117lpO" id="4vgJcICKH_y" role="2Oq$k0" />
                  <node concept="3TrEf2" id="4vgJcICKH_z" role="2OqNvi">
                    <ref role="3Tt5mk" to=":4vgJcICKHur" resolve="thenstats" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="11pn5k" id="4vgJcICKH_$" role="3cqZAp" />
        <node concept="lc7rE" id="4vgJcICKH__" role="3cqZAp">
          <node concept="l8MVK" id="4vgJcICKH_A" role="lcghm" />
        </node>
        <node concept="lc7rE" id="4vgJcICKH_B" role="3cqZAp">
          <node concept="la8eA" id="4vgJcICKH_C" role="lcghm">
            <property role="lacIc" value="else" />
          </node>
        </node>
        <node concept="lc7rE" id="4vgJcICKH_D" role="3cqZAp">
          <node concept="l8MVK" id="4vgJcICKH_E" role="lcghm" />
        </node>
        <node concept="11p84A" id="4vgJcICKH_F" role="3cqZAp" />
        <node concept="3izx1p" id="4vgJcICKH_G" role="3cqZAp">
          <node concept="3clFbS" id="4vgJcICKH_H" role="3izTki">
            <node concept="1bpajm" id="4vgJcICKH_I" role="3cqZAp" />
            <node concept="lc7rE" id="4vgJcICKH_J" role="3cqZAp">
              <node concept="l9hG8" id="4vgJcICKH_K" role="lcghm">
                <node concept="2OqwBi" id="4vgJcICKH_L" role="lb14g">
                  <node concept="117lpO" id="4vgJcICKH_M" role="2Oq$k0" />
                  <node concept="3TrEf2" id="4vgJcICKH_N" role="2OqNvi">
                    <ref role="3Tt5mk" to=":4vgJcICKHus" resolve="elsestats" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="11pn5k" id="4vgJcICKH_O" role="3cqZAp" />
        <node concept="lc7rE" id="4vgJcICKH_P" role="3cqZAp">
          <node concept="l8MVK" id="4vgJcICKH_Q" role="lcghm" />
        </node>
        <node concept="lc7rE" id="4vgJcICKH_R" role="3cqZAp">
          <node concept="la8eA" id="4vgJcICKH_S" role="lcghm">
            <property role="lacIc" value="fi" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="4vgJcICKH_T">
    <property role="3GE5qa" value="statements" />
    <ref role="WuzLi" to=":4vgJcICKHuu" resolve="Loop" />
    <node concept="11bSqf" id="4vgJcICKH_U" role="11c4hB">
      <node concept="3clFbS" id="4vgJcICKH_V" role="2VODD2">
        <node concept="lc7rE" id="4vgJcICKH_W" role="3cqZAp">
          <node concept="la8eA" id="4vgJcICKH_X" role="lcghm">
            <property role="lacIc" value="while" />
          </node>
        </node>
        <node concept="3izx1p" id="4vgJcICKH_Y" role="3cqZAp">
          <node concept="3clFbS" id="4vgJcICKH_Z" role="3izTki">
            <node concept="lc7rE" id="4vgJcICKHA0" role="3cqZAp">
              <node concept="l9hG8" id="4vgJcICKHA1" role="lcghm">
                <node concept="2OqwBi" id="4vgJcICKHA2" role="lb14g">
                  <node concept="117lpO" id="4vgJcICKHA3" role="2Oq$k0" />
                  <node concept="3TrEf2" id="4vgJcICKHA4" role="2OqNvi">
                    <ref role="3Tt5mk" to=":4vgJcICKHuv" resolve="Condition" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="4vgJcICKHA5" role="3cqZAp">
          <node concept="la8eA" id="4vgJcICKHA6" role="lcghm">
            <property role="lacIc" value="do" />
          </node>
        </node>
        <node concept="lc7rE" id="4vgJcICKHA7" role="3cqZAp">
          <node concept="l8MVK" id="4vgJcICKHA8" role="lcghm" />
        </node>
        <node concept="11p84A" id="4vgJcICKHA9" role="3cqZAp" />
        <node concept="3izx1p" id="4vgJcICKHAa" role="3cqZAp">
          <node concept="3clFbS" id="4vgJcICKHAb" role="3izTki">
            <node concept="1bpajm" id="4vgJcICKHAc" role="3cqZAp" />
            <node concept="lc7rE" id="4vgJcICKHAd" role="3cqZAp">
              <node concept="l9hG8" id="4vgJcICKHAe" role="lcghm">
                <node concept="2OqwBi" id="4vgJcICKHAf" role="lb14g">
                  <node concept="117lpO" id="4vgJcICKHAg" role="2Oq$k0" />
                  <node concept="3TrEf2" id="4vgJcICKHAh" role="2OqNvi">
                    <ref role="3Tt5mk" to=":4vgJcICKHuw" resolve="Statement" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="11pn5k" id="4vgJcICKHAi" role="3cqZAp" />
        <node concept="lc7rE" id="4vgJcICKHAj" role="3cqZAp">
          <node concept="l8MVK" id="4vgJcICKHAk" role="lcghm" />
        </node>
        <node concept="lc7rE" id="4vgJcICKHAl" role="3cqZAp">
          <node concept="la8eA" id="4vgJcICKHAm" role="lcghm">
            <property role="lacIc" value="od" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="4vgJcICKHAn">
    <property role="3GE5qa" value="statements" />
    <ref role="WuzLi" to=":4vgJcICKHuz" resolve="Statements" />
    <node concept="11bSqf" id="4vgJcICKHAo" role="11c4hB">
      <node concept="3clFbS" id="4vgJcICKHAp" role="2VODD2">
        <node concept="3izx1p" id="4vgJcICKHAq" role="3cqZAp">
          <node concept="3clFbS" id="4vgJcICKHAr" role="3izTki">
            <node concept="lc7rE" id="4vgJcICKHAs" role="3cqZAp">
              <node concept="l9S2W" id="4vgJcICKHAt" role="lcghm">
                <property role="XA4eZ" value="true" />
                <node concept="2OqwBi" id="4vgJcICKHAu" role="lbANJ">
                  <node concept="117lpO" id="4vgJcICKHAv" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="4vgJcICKHAw" role="2OqNvi">
                    <ref role="3TtcxE" to=":4vgJcICKHu$" resolve="Statement" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="4vgJcICKHAx">
    <property role="3GE5qa" value="" />
    <ref role="WuzLi" to=":4vgJcICKHu_" resolve="Program" />
    <node concept="11bSqf" id="4vgJcICKHAy" role="11c4hB">
      <node concept="3clFbS" id="4vgJcICKHAz" role="2VODD2">
        <node concept="lc7rE" id="4vgJcICKHA$" role="3cqZAp">
          <node concept="la8eA" id="4vgJcICKHA_" role="lcghm">
            <property role="lacIc" value="Program" />
          </node>
        </node>
        <node concept="lc7rE" id="4vgJcICKHAA" role="3cqZAp">
          <node concept="l9hG8" id="4vgJcICKHAB" role="lcghm">
            <node concept="2OqwBi" id="4vgJcICKHAC" role="lb14g">
              <node concept="117lpO" id="4vgJcICKHAD" role="2Oq$k0" />
              <node concept="3TrcHB" id="4vgJcICKHAE" role="2OqNvi">
                <ref role="3TsBF5" to=":4vgJcICKHuA" resolve="Identifier" />
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="4vgJcICKHAF" role="3cqZAp">
          <node concept="la8eA" id="4vgJcICKHAG" role="lcghm">
            <property role="lacIc" value="is" />
          </node>
        </node>
        <node concept="lc7rE" id="4vgJcICKHAH" role="3cqZAp">
          <node concept="l8MVK" id="4vgJcICKHAI" role="lcghm" />
        </node>
        <node concept="lc7rE" id="4vgJcICKHAJ" role="3cqZAp">
          <node concept="la8eA" id="4vgJcICKHAK" role="lcghm">
            <property role="lacIc" value="begin" />
          </node>
        </node>
        <node concept="lc7rE" id="4vgJcICKHAL" role="3cqZAp">
          <node concept="l8MVK" id="4vgJcICKHAM" role="lcghm" />
        </node>
        <node concept="11p84A" id="4vgJcICKHAN" role="3cqZAp" />
        <node concept="3izx1p" id="4vgJcICKHAO" role="3cqZAp">
          <node concept="3clFbS" id="4vgJcICKHAP" role="3izTki">
            <node concept="1bpajm" id="4vgJcICKHAQ" role="3cqZAp" />
            <node concept="lc7rE" id="4vgJcICKHAR" role="3cqZAp">
              <node concept="l9hG8" id="4vgJcICKHAS" role="lcghm">
                <node concept="2OqwBi" id="4vgJcICKHAT" role="lb14g">
                  <node concept="117lpO" id="4vgJcICKHAU" role="2Oq$k0" />
                  <node concept="3TrEf2" id="4vgJcICKHAV" role="2OqNvi">
                    <ref role="3Tt5mk" to=":4vgJcICKHuB" resolve="Statements" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="11pn5k" id="4vgJcICKHAW" role="3cqZAp" />
        <node concept="lc7rE" id="4vgJcICKHAX" role="3cqZAp">
          <node concept="l8MVK" id="4vgJcICKHAY" role="lcghm" />
        </node>
        <node concept="lc7rE" id="4vgJcICKHAZ" role="3cqZAp">
          <node concept="la8eA" id="4vgJcICKHB0" role="lcghm">
            <property role="lacIc" value="end;" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

