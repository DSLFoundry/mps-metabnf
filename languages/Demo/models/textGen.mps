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
  <node concept="WtQ9Q" id="7wyN1SmTno8">
    <property role="3GE5qa" value="expressions" />
    <ref role="WuzLi" to="zejt:7wyN1SmTnmC" resolve="Bool" />
    <node concept="11bSqf" id="7wyN1SmTno9" role="11c4hB">
      <node concept="3clFbS" id="7wyN1SmTnoa" role="2VODD2">
        <node concept="lc7rE" id="7wyN1SmTnob" role="3cqZAp">
          <node concept="l9hG8" id="7wyN1SmTnoc" role="lcghm">
            <node concept="2OqwBi" id="7wyN1SmTnod" role="lb14g">
              <node concept="117lpO" id="7wyN1SmTnoe" role="2Oq$k0" />
              <node concept="3TrcHB" id="7wyN1SmTnof" role="2OqNvi">
                <ref role="3TsBF5" to="ti4m:7wyN1SmTnhI" resolve="BooleanValue" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="7wyN1SmTnog">
    <property role="3GE5qa" value="expressions" />
    <ref role="WuzLi" to="ti4m:7wyN1SmTnhK" resolve="Number" />
    <node concept="11bSqf" id="7wyN1SmTnoh" role="11c4hB">
      <node concept="3clFbS" id="7wyN1SmTnoi" role="2VODD2">
        <node concept="lc7rE" id="7wyN1SmTnoj" role="3cqZAp">
          <node concept="l9hG8" id="7wyN1SmTnok" role="lcghm">
            <node concept="2OqwBi" id="7wyN1SmTnol" role="lb14g">
              <node concept="117lpO" id="7wyN1SmTnom" role="2Oq$k0" />
              <node concept="3TrcHB" id="7wyN1SmTnon" role="2OqNvi">
                <ref role="3TsBF5" to="ti4m:7wyN1SmTnhL" resolve="NumberValue" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="7wyN1SmTnoo">
    <property role="3GE5qa" value="statements" />
    <ref role="WuzLi" to="ti4m:7wyN1SmTnhQ" resolve="Skip" />
    <node concept="11bSqf" id="7wyN1SmTnop" role="11c4hB">
      <node concept="3clFbS" id="7wyN1SmTnoq" role="2VODD2">
        <node concept="lc7rE" id="7wyN1SmTnor" role="3cqZAp">
          <node concept="la8eA" id="7wyN1SmTnos" role="lcghm">
            <property role="lacIc" value="skip" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="7wyN1SmTnot">
    <property role="3GE5qa" value="statements" />
    <ref role="WuzLi" to="ti4m:7wyN1SmTnhS" resolve="Assignment" />
    <node concept="11bSqf" id="7wyN1SmTnou" role="11c4hB">
      <node concept="3clFbS" id="7wyN1SmTnov" role="2VODD2">
        <node concept="lc7rE" id="7wyN1SmTnow" role="3cqZAp">
          <node concept="l9hG8" id="7wyN1SmTnox" role="lcghm">
            <node concept="2OqwBi" id="7wyN1SmTnoy" role="lb14g">
              <node concept="117lpO" id="7wyN1SmTnoz" role="2Oq$k0" />
              <node concept="3TrcHB" id="7wyN1SmTno$" role="2OqNvi">
                <ref role="3TsBF5" to="ti4m:7wyN1SmTnhT" resolve="Identifier" />
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="7wyN1SmTno_" role="3cqZAp">
          <node concept="la8eA" id="7wyN1SmTnoA" role="lcghm">
            <property role="lacIc" value=":=" />
          </node>
        </node>
        <node concept="3izx1p" id="7wyN1SmTnoB" role="3cqZAp">
          <node concept="3clFbS" id="7wyN1SmTnoC" role="3izTki">
            <node concept="lc7rE" id="7wyN1SmTnoD" role="3cqZAp">
              <node concept="l9hG8" id="7wyN1SmTnoE" role="lcghm">
                <node concept="2OqwBi" id="7wyN1SmTnoF" role="lb14g">
                  <node concept="117lpO" id="7wyN1SmTnoG" role="2Oq$k0" />
                  <node concept="3TrEf2" id="7wyN1SmTnoH" role="2OqNvi">
                    <ref role="3Tt5mk" to="ti4m:7wyN1SmTnhU" resolve="Expression" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="7wyN1SmTnoI" role="3cqZAp">
          <node concept="la8eA" id="7wyN1SmTnoJ" role="lcghm">
            <property role="lacIc" value=";" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="7wyN1SmTnoK">
    <property role="3GE5qa" value="statements" />
    <ref role="WuzLi" to="ti4m:7wyN1SmTnhW" resolve="Selection" />
    <node concept="11bSqf" id="7wyN1SmTnoL" role="11c4hB">
      <node concept="3clFbS" id="7wyN1SmTnoM" role="2VODD2">
        <node concept="lc7rE" id="7wyN1SmTnoN" role="3cqZAp">
          <node concept="la8eA" id="7wyN1SmTnoO" role="lcghm">
            <property role="lacIc" value="if" />
          </node>
        </node>
        <node concept="3izx1p" id="7wyN1SmTnoP" role="3cqZAp">
          <node concept="3clFbS" id="7wyN1SmTnoQ" role="3izTki">
            <node concept="lc7rE" id="7wyN1SmTnoR" role="3cqZAp">
              <node concept="l9hG8" id="7wyN1SmTnoS" role="lcghm">
                <node concept="2OqwBi" id="7wyN1SmTnoT" role="lb14g">
                  <node concept="117lpO" id="7wyN1SmTnoU" role="2Oq$k0" />
                  <node concept="3TrEf2" id="7wyN1SmTnoV" role="2OqNvi">
                    <ref role="3Tt5mk" to="ti4m:7wyN1SmTnhX" resolve="Condition" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="7wyN1SmTnoW" role="3cqZAp">
          <node concept="la8eA" id="7wyN1SmTnoX" role="lcghm">
            <property role="lacIc" value="then" />
          </node>
        </node>
        <node concept="lc7rE" id="7wyN1SmTnoY" role="3cqZAp">
          <node concept="l8MVK" id="7wyN1SmTnoZ" role="lcghm" />
        </node>
        <node concept="11p84A" id="7wyN1SmTnp0" role="3cqZAp" />
        <node concept="3izx1p" id="7wyN1SmTnp1" role="3cqZAp">
          <node concept="3clFbS" id="7wyN1SmTnp2" role="3izTki">
            <node concept="1bpajm" id="7wyN1SmTnp3" role="3cqZAp" />
            <node concept="lc7rE" id="7wyN1SmTnp4" role="3cqZAp">
              <node concept="l9hG8" id="7wyN1SmTnp5" role="lcghm">
                <node concept="2OqwBi" id="7wyN1SmTnp6" role="lb14g">
                  <node concept="117lpO" id="7wyN1SmTnp7" role="2Oq$k0" />
                  <node concept="3TrEf2" id="7wyN1SmTnp8" role="2OqNvi">
                    <ref role="3Tt5mk" to="ti4m:7wyN1SmTnhY" resolve="thenstats" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="11pn5k" id="7wyN1SmTnp9" role="3cqZAp" />
        <node concept="lc7rE" id="7wyN1SmTnpa" role="3cqZAp">
          <node concept="l8MVK" id="7wyN1SmTnpb" role="lcghm" />
        </node>
        <node concept="lc7rE" id="7wyN1SmTnpc" role="3cqZAp">
          <node concept="la8eA" id="7wyN1SmTnpd" role="lcghm">
            <property role="lacIc" value="else" />
          </node>
        </node>
        <node concept="lc7rE" id="7wyN1SmTnpe" role="3cqZAp">
          <node concept="l8MVK" id="7wyN1SmTnpf" role="lcghm" />
        </node>
        <node concept="11p84A" id="7wyN1SmTnpg" role="3cqZAp" />
        <node concept="3izx1p" id="7wyN1SmTnph" role="3cqZAp">
          <node concept="3clFbS" id="7wyN1SmTnpi" role="3izTki">
            <node concept="1bpajm" id="7wyN1SmTnpj" role="3cqZAp" />
            <node concept="lc7rE" id="7wyN1SmTnpk" role="3cqZAp">
              <node concept="l9hG8" id="7wyN1SmTnpl" role="lcghm">
                <node concept="2OqwBi" id="7wyN1SmTnpm" role="lb14g">
                  <node concept="117lpO" id="7wyN1SmTnpn" role="2Oq$k0" />
                  <node concept="3TrEf2" id="7wyN1SmTnpo" role="2OqNvi">
                    <ref role="3Tt5mk" to="ti4m:7wyN1SmTnhZ" resolve="elsestats" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="11pn5k" id="7wyN1SmTnpp" role="3cqZAp" />
        <node concept="lc7rE" id="7wyN1SmTnpq" role="3cqZAp">
          <node concept="l8MVK" id="7wyN1SmTnpr" role="lcghm" />
        </node>
        <node concept="lc7rE" id="7wyN1SmTnps" role="3cqZAp">
          <node concept="la8eA" id="7wyN1SmTnpt" role="lcghm">
            <property role="lacIc" value="fi" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="7wyN1SmTnpu">
    <property role="3GE5qa" value="statements" />
    <ref role="WuzLi" to="ti4m:7wyN1SmTni1" resolve="Loop" />
    <node concept="11bSqf" id="7wyN1SmTnpv" role="11c4hB">
      <node concept="3clFbS" id="7wyN1SmTnpw" role="2VODD2">
        <node concept="lc7rE" id="7wyN1SmTnpx" role="3cqZAp">
          <node concept="la8eA" id="7wyN1SmTnpy" role="lcghm">
            <property role="lacIc" value="while" />
          </node>
        </node>
        <node concept="3izx1p" id="7wyN1SmTnpz" role="3cqZAp">
          <node concept="3clFbS" id="7wyN1SmTnp$" role="3izTki">
            <node concept="lc7rE" id="7wyN1SmTnp_" role="3cqZAp">
              <node concept="l9hG8" id="7wyN1SmTnpA" role="lcghm">
                <node concept="2OqwBi" id="7wyN1SmTnpB" role="lb14g">
                  <node concept="117lpO" id="7wyN1SmTnpC" role="2Oq$k0" />
                  <node concept="3TrEf2" id="7wyN1SmTnpD" role="2OqNvi">
                    <ref role="3Tt5mk" to="ti4m:7wyN1SmTni2" resolve="Condition" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="7wyN1SmTnpE" role="3cqZAp">
          <node concept="la8eA" id="7wyN1SmTnpF" role="lcghm">
            <property role="lacIc" value="do" />
          </node>
        </node>
        <node concept="lc7rE" id="7wyN1SmTnpG" role="3cqZAp">
          <node concept="l8MVK" id="7wyN1SmTnpH" role="lcghm" />
        </node>
        <node concept="11p84A" id="7wyN1SmTnpI" role="3cqZAp" />
        <node concept="3izx1p" id="7wyN1SmTnpJ" role="3cqZAp">
          <node concept="3clFbS" id="7wyN1SmTnpK" role="3izTki">
            <node concept="1bpajm" id="7wyN1SmTnpL" role="3cqZAp" />
            <node concept="lc7rE" id="7wyN1SmTnpM" role="3cqZAp">
              <node concept="l9hG8" id="7wyN1SmTnpN" role="lcghm">
                <node concept="2OqwBi" id="7wyN1SmTnpO" role="lb14g">
                  <node concept="117lpO" id="7wyN1SmTnpP" role="2Oq$k0" />
                  <node concept="3TrEf2" id="7wyN1SmTnpQ" role="2OqNvi">
                    <ref role="3Tt5mk" to="ti4m:7wyN1SmTni3" resolve="Statement" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="11pn5k" id="7wyN1SmTnpR" role="3cqZAp" />
        <node concept="lc7rE" id="7wyN1SmTnpS" role="3cqZAp">
          <node concept="l8MVK" id="7wyN1SmTnpT" role="lcghm" />
        </node>
        <node concept="lc7rE" id="7wyN1SmTnpU" role="3cqZAp">
          <node concept="la8eA" id="7wyN1SmTnpV" role="lcghm">
            <property role="lacIc" value="od" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="7wyN1SmTnpW">
    <property role="3GE5qa" value="statements" />
    <ref role="WuzLi" to="ti4m:7wyN1SmTni6" resolve="Statements" />
    <node concept="11bSqf" id="7wyN1SmTnpX" role="11c4hB">
      <node concept="3clFbS" id="7wyN1SmTnpY" role="2VODD2">
        <node concept="3izx1p" id="7wyN1SmTnpZ" role="3cqZAp">
          <node concept="3clFbS" id="7wyN1SmTnq0" role="3izTki">
            <node concept="lc7rE" id="7wyN1SmTnq1" role="3cqZAp">
              <node concept="l9S2W" id="7wyN1SmTnq2" role="lcghm">
                <property role="XA4eZ" value="true" />
                <node concept="2OqwBi" id="7wyN1SmTnq3" role="lbANJ">
                  <node concept="117lpO" id="7wyN1SmTnq4" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="7wyN1SmTnq5" role="2OqNvi">
                    <ref role="3TtcxE" to="ti4m:7wyN1SmTni7" resolve="Statement" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="7wyN1SmTnq6">
    <property role="3GE5qa" value="" />
    <ref role="WuzLi" to="ti4m:7wyN1SmTni8" resolve="Program" />
    <node concept="11bSqf" id="7wyN1SmTnq7" role="11c4hB">
      <node concept="3clFbS" id="7wyN1SmTnq8" role="2VODD2">
        <node concept="lc7rE" id="7wyN1SmTnq9" role="3cqZAp">
          <node concept="la8eA" id="7wyN1SmTnqa" role="lcghm">
            <property role="lacIc" value="Program" />
          </node>
        </node>
        <node concept="lc7rE" id="7wyN1SmTnqb" role="3cqZAp">
          <node concept="l9hG8" id="7wyN1SmTnqc" role="lcghm">
            <node concept="2OqwBi" id="7wyN1SmTnqd" role="lb14g">
              <node concept="117lpO" id="7wyN1SmTnqe" role="2Oq$k0" />
              <node concept="3TrcHB" id="7wyN1SmTnqf" role="2OqNvi">
                <ref role="3TsBF5" to="ti4m:7wyN1SmTni9" resolve="Identifier" />
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="7wyN1SmTnqg" role="3cqZAp">
          <node concept="la8eA" id="7wyN1SmTnqh" role="lcghm">
            <property role="lacIc" value="is" />
          </node>
        </node>
        <node concept="lc7rE" id="7wyN1SmTnqi" role="3cqZAp">
          <node concept="l8MVK" id="7wyN1SmTnqj" role="lcghm" />
        </node>
        <node concept="lc7rE" id="7wyN1SmTnqk" role="3cqZAp">
          <node concept="la8eA" id="7wyN1SmTnql" role="lcghm">
            <property role="lacIc" value="begin" />
          </node>
        </node>
        <node concept="lc7rE" id="7wyN1SmTnqm" role="3cqZAp">
          <node concept="l8MVK" id="7wyN1SmTnqn" role="lcghm" />
        </node>
        <node concept="11p84A" id="7wyN1SmTnqo" role="3cqZAp" />
        <node concept="3izx1p" id="7wyN1SmTnqp" role="3cqZAp">
          <node concept="3clFbS" id="7wyN1SmTnqq" role="3izTki">
            <node concept="1bpajm" id="7wyN1SmTnqr" role="3cqZAp" />
            <node concept="lc7rE" id="7wyN1SmTnqs" role="3cqZAp">
              <node concept="l9hG8" id="7wyN1SmTnqt" role="lcghm">
                <node concept="2OqwBi" id="7wyN1SmTnqu" role="lb14g">
                  <node concept="117lpO" id="7wyN1SmTnqv" role="2Oq$k0" />
                  <node concept="3TrEf2" id="7wyN1SmTnqw" role="2OqNvi">
                    <ref role="3Tt5mk" to="ti4m:7wyN1SmTnia" resolve="Statements" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="11pn5k" id="7wyN1SmTnqx" role="3cqZAp" />
        <node concept="lc7rE" id="7wyN1SmTnqy" role="3cqZAp">
          <node concept="l8MVK" id="7wyN1SmTnqz" role="lcghm" />
        </node>
        <node concept="lc7rE" id="7wyN1SmTnq$" role="3cqZAp">
          <node concept="la8eA" id="7wyN1SmTnq_" role="lcghm">
            <property role="lacIc" value="end;" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

