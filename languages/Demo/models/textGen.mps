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
  <node concept="WtQ9Q" id="3kz7Nspt0YQ">
    <property role="3GE5qa" value="expressions" />
    <ref role="WuzLi" to="ti4r:3kz7Nspt0Sr" />
    <node concept="11bSqf" id="3kz7Nspt0YR" role="11c4hB">
      <node concept="3clFbS" id="3kz7Nspt0YS" role="2VODD2">
        <node concept="lc7rE" id="3kz7Nspt0YT" role="3cqZAp">
          <node concept="l9hG8" id="3kz7Nspt0YU" role="lcghm">
            <node concept="2OqwBi" id="3kz7Nspt0YV" role="lb14g">
              <node concept="117lpO" id="3kz7Nspt0YW" role="2Oq$k0" />
              <node concept="3TrcHB" id="3kz7Nspt0YX" role="2OqNvi">
                <ref role="3TsBF5" to="ti4r:3kz7Nspt0Ss" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="3kz7Nspt0YY">
    <property role="3GE5qa" value="expressions" />
    <ref role="WuzLi" to="ti4r:3kz7Nspt0Su" />
    <node concept="11bSqf" id="3kz7Nspt0YZ" role="11c4hB">
      <node concept="3clFbS" id="3kz7Nspt0Z0" role="2VODD2">
        <node concept="lc7rE" id="3kz7Nspt0Z1" role="3cqZAp">
          <node concept="l9hG8" id="3kz7Nspt0Z2" role="lcghm">
            <node concept="2OqwBi" id="3kz7Nspt0Z3" role="lb14g">
              <node concept="117lpO" id="3kz7Nspt0Z4" role="2Oq$k0" />
              <node concept="3TrcHB" id="3kz7Nspt0Z5" role="2OqNvi">
                <ref role="3TsBF5" to="ti4r:3kz7Nspt0Sv" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="3kz7Nspt0Z6">
    <property role="3GE5qa" value="statements" />
    <ref role="WuzLi" to="ti4r:3kz7Nspt0S$" />
    <node concept="11bSqf" id="3kz7Nspt0Z7" role="11c4hB">
      <node concept="3clFbS" id="3kz7Nspt0Z8" role="2VODD2">
        <node concept="lc7rE" id="3kz7Nspt0Z9" role="3cqZAp">
          <node concept="la8eA" id="3kz7Nspt0Za" role="lcghm">
            <property role="lacIc" value="skip" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="3kz7Nspt0Zb">
    <property role="3GE5qa" value="statements" />
    <ref role="WuzLi" to="ti4r:3kz7Nspt0SA" />
    <node concept="11bSqf" id="3kz7Nspt0Zc" role="11c4hB">
      <node concept="3clFbS" id="3kz7Nspt0Zd" role="2VODD2">
        <node concept="lc7rE" id="3kz7Nspt0Ze" role="3cqZAp">
          <node concept="l9hG8" id="3kz7Nspt0Zf" role="lcghm">
            <node concept="2OqwBi" id="3kz7Nspt0Zg" role="lb14g">
              <node concept="117lpO" id="3kz7Nspt0Zh" role="2Oq$k0" />
              <node concept="3TrcHB" id="3kz7Nspt0Zi" role="2OqNvi">
                <ref role="3TsBF5" to="ti4r:3kz7Nspt0SB" />
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="3kz7Nspt0Zj" role="3cqZAp">
          <node concept="la8eA" id="3kz7Nspt0Zk" role="lcghm">
            <property role="lacIc" value=":=" />
          </node>
        </node>
        <node concept="3izx1p" id="3kz7Nspt0Zl" role="3cqZAp">
          <node concept="3clFbS" id="3kz7Nspt0Zm" role="3izTki">
            <node concept="lc7rE" id="3kz7Nspt0Zn" role="3cqZAp">
              <node concept="l9hG8" id="3kz7Nspt0Zo" role="lcghm">
                <node concept="2OqwBi" id="3kz7Nspt0Zp" role="lb14g">
                  <node concept="117lpO" id="3kz7Nspt0Zq" role="2Oq$k0" />
                  <node concept="3TrEf2" id="3kz7Nspt0Zr" role="2OqNvi">
                    <ref role="3Tt5mk" to="ti4r:3kz7Nspt0SC" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="3kz7Nspt0Zs" role="3cqZAp">
          <node concept="la8eA" id="3kz7Nspt0Zt" role="lcghm">
            <property role="lacIc" value=";" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="3kz7Nspt0Zu">
    <property role="3GE5qa" value="statements" />
    <ref role="WuzLi" to="ti4r:3kz7Nspt0SE" />
    <node concept="11bSqf" id="3kz7Nspt0Zv" role="11c4hB">
      <node concept="3clFbS" id="3kz7Nspt0Zw" role="2VODD2">
        <node concept="lc7rE" id="3kz7Nspt0Zx" role="3cqZAp">
          <node concept="la8eA" id="3kz7Nspt0Zy" role="lcghm">
            <property role="lacIc" value="if" />
          </node>
        </node>
        <node concept="3izx1p" id="3kz7Nspt0Zz" role="3cqZAp">
          <node concept="3clFbS" id="3kz7Nspt0Z$" role="3izTki">
            <node concept="lc7rE" id="3kz7Nspt0Z_" role="3cqZAp">
              <node concept="l9hG8" id="3kz7Nspt0ZA" role="lcghm">
                <node concept="2OqwBi" id="3kz7Nspt0ZB" role="lb14g">
                  <node concept="117lpO" id="3kz7Nspt0ZC" role="2Oq$k0" />
                  <node concept="3TrEf2" id="3kz7Nspt0ZD" role="2OqNvi">
                    <ref role="3Tt5mk" to="ti4r:3kz7Nspt0SF" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="3kz7Nspt0ZE" role="3cqZAp">
          <node concept="la8eA" id="3kz7Nspt0ZF" role="lcghm">
            <property role="lacIc" value="then" />
          </node>
        </node>
        <node concept="lc7rE" id="3kz7Nspt0ZG" role="3cqZAp">
          <node concept="l8MVK" id="3kz7Nspt0ZH" role="lcghm" />
        </node>
        <node concept="11p84A" id="3kz7Nspt0ZI" role="3cqZAp" />
        <node concept="3izx1p" id="3kz7Nspt0ZJ" role="3cqZAp">
          <node concept="3clFbS" id="3kz7Nspt0ZK" role="3izTki">
            <node concept="1bpajm" id="3kz7Nspt0ZL" role="3cqZAp" />
            <node concept="lc7rE" id="3kz7Nspt0ZM" role="3cqZAp">
              <node concept="l9hG8" id="3kz7Nspt0ZN" role="lcghm">
                <node concept="2OqwBi" id="3kz7Nspt0ZO" role="lb14g">
                  <node concept="117lpO" id="3kz7Nspt0ZP" role="2Oq$k0" />
                  <node concept="3TrEf2" id="3kz7Nspt0ZQ" role="2OqNvi">
                    <ref role="3Tt5mk" to="ti4r:3kz7Nspt0SG" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="11pn5k" id="3kz7Nspt0ZR" role="3cqZAp" />
        <node concept="lc7rE" id="3kz7Nspt0ZS" role="3cqZAp">
          <node concept="l8MVK" id="3kz7Nspt0ZT" role="lcghm" />
        </node>
        <node concept="lc7rE" id="3kz7Nspt0ZU" role="3cqZAp">
          <node concept="la8eA" id="3kz7Nspt0ZV" role="lcghm">
            <property role="lacIc" value="else" />
          </node>
        </node>
        <node concept="lc7rE" id="3kz7Nspt0ZW" role="3cqZAp">
          <node concept="l8MVK" id="3kz7Nspt0ZX" role="lcghm" />
        </node>
        <node concept="11p84A" id="3kz7Nspt0ZY" role="3cqZAp" />
        <node concept="3izx1p" id="3kz7Nspt0ZZ" role="3cqZAp">
          <node concept="3clFbS" id="3kz7Nspt100" role="3izTki">
            <node concept="1bpajm" id="3kz7Nspt101" role="3cqZAp" />
            <node concept="lc7rE" id="3kz7Nspt102" role="3cqZAp">
              <node concept="l9hG8" id="3kz7Nspt103" role="lcghm">
                <node concept="2OqwBi" id="3kz7Nspt104" role="lb14g">
                  <node concept="117lpO" id="3kz7Nspt105" role="2Oq$k0" />
                  <node concept="3TrEf2" id="3kz7Nspt106" role="2OqNvi">
                    <ref role="3Tt5mk" to="ti4r:3kz7Nspt0SH" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="11pn5k" id="3kz7Nspt107" role="3cqZAp" />
        <node concept="lc7rE" id="3kz7Nspt108" role="3cqZAp">
          <node concept="l8MVK" id="3kz7Nspt109" role="lcghm" />
        </node>
        <node concept="lc7rE" id="3kz7Nspt10a" role="3cqZAp">
          <node concept="la8eA" id="3kz7Nspt10b" role="lcghm">
            <property role="lacIc" value="fi" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="3kz7Nspt10c">
    <property role="3GE5qa" value="statements" />
    <ref role="WuzLi" to="ti4r:3kz7Nspt0SJ" />
    <node concept="11bSqf" id="3kz7Nspt10d" role="11c4hB">
      <node concept="3clFbS" id="3kz7Nspt10e" role="2VODD2">
        <node concept="lc7rE" id="3kz7Nspt10f" role="3cqZAp">
          <node concept="la8eA" id="3kz7Nspt10g" role="lcghm">
            <property role="lacIc" value="while" />
          </node>
        </node>
        <node concept="3izx1p" id="3kz7Nspt10h" role="3cqZAp">
          <node concept="3clFbS" id="3kz7Nspt10i" role="3izTki">
            <node concept="lc7rE" id="3kz7Nspt10j" role="3cqZAp">
              <node concept="l9hG8" id="3kz7Nspt10k" role="lcghm">
                <node concept="2OqwBi" id="3kz7Nspt10l" role="lb14g">
                  <node concept="117lpO" id="3kz7Nspt10m" role="2Oq$k0" />
                  <node concept="3TrEf2" id="3kz7Nspt10n" role="2OqNvi">
                    <ref role="3Tt5mk" to="ti4r:3kz7Nspt0SK" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="3kz7Nspt10o" role="3cqZAp">
          <node concept="la8eA" id="3kz7Nspt10p" role="lcghm">
            <property role="lacIc" value="do" />
          </node>
        </node>
        <node concept="lc7rE" id="3kz7Nspt10q" role="3cqZAp">
          <node concept="l8MVK" id="3kz7Nspt10r" role="lcghm" />
        </node>
        <node concept="11p84A" id="3kz7Nspt10s" role="3cqZAp" />
        <node concept="3izx1p" id="3kz7Nspt10t" role="3cqZAp">
          <node concept="3clFbS" id="3kz7Nspt10u" role="3izTki">
            <node concept="1bpajm" id="3kz7Nspt10v" role="3cqZAp" />
            <node concept="lc7rE" id="3kz7Nspt10w" role="3cqZAp">
              <node concept="l9hG8" id="3kz7Nspt10x" role="lcghm">
                <node concept="2OqwBi" id="3kz7Nspt10y" role="lb14g">
                  <node concept="117lpO" id="3kz7Nspt10z" role="2Oq$k0" />
                  <node concept="3TrEf2" id="3kz7Nspt10$" role="2OqNvi">
                    <ref role="3Tt5mk" to="ti4r:3kz7Nspt0SL" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="11pn5k" id="3kz7Nspt10_" role="3cqZAp" />
        <node concept="lc7rE" id="3kz7Nspt10A" role="3cqZAp">
          <node concept="l8MVK" id="3kz7Nspt10B" role="lcghm" />
        </node>
        <node concept="lc7rE" id="3kz7Nspt10C" role="3cqZAp">
          <node concept="la8eA" id="3kz7Nspt10D" role="lcghm">
            <property role="lacIc" value="od" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="3kz7Nspt10E">
    <property role="3GE5qa" value="statements" />
    <ref role="WuzLi" to="ti4r:3kz7Nspt0SO" />
    <node concept="11bSqf" id="3kz7Nspt10F" role="11c4hB">
      <node concept="3clFbS" id="3kz7Nspt10G" role="2VODD2">
        <node concept="3izx1p" id="3kz7Nspt10H" role="3cqZAp">
          <node concept="3clFbS" id="3kz7Nspt10I" role="3izTki">
            <node concept="lc7rE" id="3kz7Nspt10J" role="3cqZAp">
              <node concept="l9S2W" id="3kz7Nspt10K" role="lcghm">
                <property role="XA4eZ" value="true" />
                <node concept="2OqwBi" id="3kz7Nspt10L" role="lbANJ">
                  <node concept="117lpO" id="3kz7Nspt10M" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="3kz7Nspt10N" role="2OqNvi">
                    <ref role="3TtcxE" to="ti4r:3kz7Nspt0SP" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="3kz7Nspt10O">
    <property role="3GE5qa" value="" />
    <ref role="WuzLi" to="ti4r:3kz7Nspt0SQ" />
    <node concept="11bSqf" id="3kz7Nspt10P" role="11c4hB">
      <node concept="3clFbS" id="3kz7Nspt10Q" role="2VODD2">
        <node concept="lc7rE" id="3kz7Nspt10R" role="3cqZAp">
          <node concept="la8eA" id="3kz7Nspt10S" role="lcghm">
            <property role="lacIc" value="Program" />
          </node>
        </node>
        <node concept="lc7rE" id="3kz7Nspt10T" role="3cqZAp">
          <node concept="l9hG8" id="3kz7Nspt10U" role="lcghm">
            <node concept="2OqwBi" id="3kz7Nspt10V" role="lb14g">
              <node concept="117lpO" id="3kz7Nspt10W" role="2Oq$k0" />
              <node concept="3TrcHB" id="3kz7Nspt10X" role="2OqNvi">
                <ref role="3TsBF5" to="ti4r:3kz7Nspt0SR" />
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="3kz7Nspt10Y" role="3cqZAp">
          <node concept="la8eA" id="3kz7Nspt10Z" role="lcghm">
            <property role="lacIc" value="is" />
          </node>
        </node>
        <node concept="lc7rE" id="3kz7Nspt110" role="3cqZAp">
          <node concept="l8MVK" id="3kz7Nspt111" role="lcghm" />
        </node>
        <node concept="lc7rE" id="3kz7Nspt112" role="3cqZAp">
          <node concept="la8eA" id="3kz7Nspt113" role="lcghm">
            <property role="lacIc" value="begin" />
          </node>
        </node>
        <node concept="lc7rE" id="3kz7Nspt114" role="3cqZAp">
          <node concept="l8MVK" id="3kz7Nspt115" role="lcghm" />
        </node>
        <node concept="11p84A" id="3kz7Nspt116" role="3cqZAp" />
        <node concept="3izx1p" id="3kz7Nspt117" role="3cqZAp">
          <node concept="3clFbS" id="3kz7Nspt118" role="3izTki">
            <node concept="1bpajm" id="3kz7Nspt119" role="3cqZAp" />
            <node concept="lc7rE" id="3kz7Nspt11a" role="3cqZAp">
              <node concept="l9hG8" id="3kz7Nspt11b" role="lcghm">
                <node concept="2OqwBi" id="3kz7Nspt11c" role="lb14g">
                  <node concept="117lpO" id="3kz7Nspt11d" role="2Oq$k0" />
                  <node concept="3TrEf2" id="3kz7Nspt11e" role="2OqNvi">
                    <ref role="3Tt5mk" to="ti4r:3kz7Nspt0SS" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="11pn5k" id="3kz7Nspt11f" role="3cqZAp" />
        <node concept="lc7rE" id="3kz7Nspt11g" role="3cqZAp">
          <node concept="l8MVK" id="3kz7Nspt11h" role="lcghm" />
        </node>
        <node concept="lc7rE" id="3kz7Nspt11i" role="3cqZAp">
          <node concept="la8eA" id="3kz7Nspt11j" role="lcghm">
            <property role="lacIc" value="end;" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

