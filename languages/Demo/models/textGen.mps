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
  <node concept="WtQ9Q" id="5cbC3YH0Mjt">
    <property role="3GE5qa" value="expressions" />
    <ref role="WuzLi" to="ti4o:5cbC3YH0M9V" resolve="Bool" />
    <node concept="11bSqf" id="5cbC3YH0Mju" role="11c4hB">
      <node concept="3clFbS" id="5cbC3YH0Mjv" role="2VODD2">
        <node concept="lc7rE" id="5cbC3YH0Mjw" role="3cqZAp">
          <node concept="l9hG8" id="5cbC3YH0Mjx" role="lcghm">
            <node concept="2OqwBi" id="5cbC3YH0Mjy" role="lb14g">
              <node concept="117lpO" id="5cbC3YH0Mjz" role="2Oq$k0" />
              <node concept="3TrcHB" id="5cbC3YH0Mj$" role="2OqNvi">
                <ref role="3TsBF5" to="ti4o:5cbC3YH0M9W" resolve="BooleanValue" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="5cbC3YH0Mj_">
    <property role="3GE5qa" value="expressions" />
    <ref role="WuzLi" to="ti4o:5cbC3YH0M9Y" resolve="Number" />
    <node concept="11bSqf" id="5cbC3YH0MjA" role="11c4hB">
      <node concept="3clFbS" id="5cbC3YH0MjB" role="2VODD2">
        <node concept="lc7rE" id="5cbC3YH0MjC" role="3cqZAp">
          <node concept="l9hG8" id="5cbC3YH0MjD" role="lcghm">
            <node concept="2OqwBi" id="5cbC3YH0MjE" role="lb14g">
              <node concept="117lpO" id="5cbC3YH0MjF" role="2Oq$k0" />
              <node concept="3TrcHB" id="5cbC3YH0MjG" role="2OqNvi">
                <ref role="3TsBF5" to="ti4o:5cbC3YH0M9Z" resolve="NumberValue" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="5cbC3YH0MjH">
    <property role="3GE5qa" value="statements" />
    <ref role="WuzLi" to="ti4o:5cbC3YH0Ma4" resolve="Skip" />
    <node concept="11bSqf" id="5cbC3YH0MjI" role="11c4hB">
      <node concept="3clFbS" id="5cbC3YH0MjJ" role="2VODD2">
        <node concept="lc7rE" id="5cbC3YH0MjK" role="3cqZAp">
          <node concept="la8eA" id="5cbC3YH0MjL" role="lcghm">
            <property role="lacIc" value="skip" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="5cbC3YH0MjM">
    <property role="3GE5qa" value="statements" />
    <ref role="WuzLi" to="ti4o:5cbC3YH0Ma6" resolve="Assignment" />
    <node concept="11bSqf" id="5cbC3YH0MjN" role="11c4hB">
      <node concept="3clFbS" id="5cbC3YH0MjO" role="2VODD2">
        <node concept="lc7rE" id="5cbC3YH0MjP" role="3cqZAp">
          <node concept="l9hG8" id="5cbC3YH0MjQ" role="lcghm">
            <node concept="2OqwBi" id="5cbC3YH0MjR" role="lb14g">
              <node concept="117lpO" id="5cbC3YH0MjS" role="2Oq$k0" />
              <node concept="3TrcHB" id="5cbC3YH0MjT" role="2OqNvi">
                <ref role="3TsBF5" to="ti4o:5cbC3YH0Ma7" resolve="Identifier" />
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="5cbC3YH0MjU" role="3cqZAp">
          <node concept="la8eA" id="5cbC3YH0MjV" role="lcghm">
            <property role="lacIc" value=":=" />
          </node>
        </node>
        <node concept="3izx1p" id="5cbC3YH0MjW" role="3cqZAp">
          <node concept="3clFbS" id="5cbC3YH0MjX" role="3izTki">
            <node concept="lc7rE" id="5cbC3YH0MjY" role="3cqZAp">
              <node concept="l9hG8" id="5cbC3YH0MjZ" role="lcghm">
                <node concept="2OqwBi" id="5cbC3YH0Mk0" role="lb14g">
                  <node concept="117lpO" id="5cbC3YH0Mk1" role="2Oq$k0" />
                  <node concept="3TrEf2" id="5cbC3YH0Mk2" role="2OqNvi">
                    <ref role="3Tt5mk" to="ti4o:5cbC3YH0Ma8" resolve="Expression" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="5cbC3YH0Mk3" role="3cqZAp">
          <node concept="la8eA" id="5cbC3YH0Mk4" role="lcghm">
            <property role="lacIc" value=";" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="5cbC3YH0Mk5">
    <property role="3GE5qa" value="statements" />
    <ref role="WuzLi" to="ti4o:5cbC3YH0Maa" resolve="Selection" />
    <node concept="11bSqf" id="5cbC3YH0Mk6" role="11c4hB">
      <node concept="3clFbS" id="5cbC3YH0Mk7" role="2VODD2">
        <node concept="lc7rE" id="5cbC3YH0Mk8" role="3cqZAp">
          <node concept="la8eA" id="5cbC3YH0Mk9" role="lcghm">
            <property role="lacIc" value="if" />
          </node>
        </node>
        <node concept="3izx1p" id="5cbC3YH0Mka" role="3cqZAp">
          <node concept="3clFbS" id="5cbC3YH0Mkb" role="3izTki">
            <node concept="lc7rE" id="5cbC3YH0Mkc" role="3cqZAp">
              <node concept="l9hG8" id="5cbC3YH0Mkd" role="lcghm">
                <node concept="2OqwBi" id="5cbC3YH0Mke" role="lb14g">
                  <node concept="117lpO" id="5cbC3YH0Mkf" role="2Oq$k0" />
                  <node concept="3TrEf2" id="5cbC3YH0Mkg" role="2OqNvi">
                    <ref role="3Tt5mk" to="ti4o:5cbC3YH0Mab" resolve="Condition" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="5cbC3YH0Mkh" role="3cqZAp">
          <node concept="la8eA" id="5cbC3YH0Mki" role="lcghm">
            <property role="lacIc" value="then" />
          </node>
        </node>
        <node concept="lc7rE" id="5cbC3YH0Mkj" role="3cqZAp">
          <node concept="l8MVK" id="5cbC3YH0Mkk" role="lcghm" />
        </node>
        <node concept="11p84A" id="5cbC3YH0Mkl" role="3cqZAp" />
        <node concept="3izx1p" id="5cbC3YH0Mkm" role="3cqZAp">
          <node concept="3clFbS" id="5cbC3YH0Mkn" role="3izTki">
            <node concept="1bpajm" id="5cbC3YH0Mko" role="3cqZAp" />
            <node concept="lc7rE" id="5cbC3YH0Mkp" role="3cqZAp">
              <node concept="l9hG8" id="5cbC3YH0Mkq" role="lcghm">
                <node concept="2OqwBi" id="5cbC3YH0Mkr" role="lb14g">
                  <node concept="117lpO" id="5cbC3YH0Mks" role="2Oq$k0" />
                  <node concept="3TrEf2" id="5cbC3YH0Mkt" role="2OqNvi">
                    <ref role="3Tt5mk" to="ti4o:5cbC3YH0Mac" resolve="thenstats" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="11pn5k" id="5cbC3YH0Mku" role="3cqZAp" />
        <node concept="lc7rE" id="5cbC3YH0Mkv" role="3cqZAp">
          <node concept="l8MVK" id="5cbC3YH0Mkw" role="lcghm" />
        </node>
        <node concept="lc7rE" id="5cbC3YH0Mkx" role="3cqZAp">
          <node concept="la8eA" id="5cbC3YH0Mky" role="lcghm">
            <property role="lacIc" value="else" />
          </node>
        </node>
        <node concept="lc7rE" id="5cbC3YH0Mkz" role="3cqZAp">
          <node concept="l8MVK" id="5cbC3YH0Mk$" role="lcghm" />
        </node>
        <node concept="11p84A" id="5cbC3YH0Mk_" role="3cqZAp" />
        <node concept="3izx1p" id="5cbC3YH0MkA" role="3cqZAp">
          <node concept="3clFbS" id="5cbC3YH0MkB" role="3izTki">
            <node concept="1bpajm" id="5cbC3YH0MkC" role="3cqZAp" />
            <node concept="lc7rE" id="5cbC3YH0MkD" role="3cqZAp">
              <node concept="l9hG8" id="5cbC3YH0MkE" role="lcghm">
                <node concept="2OqwBi" id="5cbC3YH0MkF" role="lb14g">
                  <node concept="117lpO" id="5cbC3YH0MkG" role="2Oq$k0" />
                  <node concept="3TrEf2" id="5cbC3YH0MkH" role="2OqNvi">
                    <ref role="3Tt5mk" to="ti4o:5cbC3YH0Mad" resolve="elsestats" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="11pn5k" id="5cbC3YH0MkI" role="3cqZAp" />
        <node concept="lc7rE" id="5cbC3YH0MkJ" role="3cqZAp">
          <node concept="l8MVK" id="5cbC3YH0MkK" role="lcghm" />
        </node>
        <node concept="lc7rE" id="5cbC3YH0MkL" role="3cqZAp">
          <node concept="la8eA" id="5cbC3YH0MkM" role="lcghm">
            <property role="lacIc" value="fi" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="5cbC3YH0MkN">
    <property role="3GE5qa" value="statements" />
    <ref role="WuzLi" to="ti4o:5cbC3YH0Maf" resolve="Loop" />
    <node concept="11bSqf" id="5cbC3YH0MkO" role="11c4hB">
      <node concept="3clFbS" id="5cbC3YH0MkP" role="2VODD2">
        <node concept="lc7rE" id="5cbC3YH0MkQ" role="3cqZAp">
          <node concept="la8eA" id="5cbC3YH0MkR" role="lcghm">
            <property role="lacIc" value="while" />
          </node>
        </node>
        <node concept="3izx1p" id="5cbC3YH0MkS" role="3cqZAp">
          <node concept="3clFbS" id="5cbC3YH0MkT" role="3izTki">
            <node concept="lc7rE" id="5cbC3YH0MkU" role="3cqZAp">
              <node concept="l9hG8" id="5cbC3YH0MkV" role="lcghm">
                <node concept="2OqwBi" id="5cbC3YH0MkW" role="lb14g">
                  <node concept="117lpO" id="5cbC3YH0MkX" role="2Oq$k0" />
                  <node concept="3TrEf2" id="5cbC3YH0MkY" role="2OqNvi">
                    <ref role="3Tt5mk" to="ti4o:5cbC3YH0Mag" resolve="Condition" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="5cbC3YH0MkZ" role="3cqZAp">
          <node concept="la8eA" id="5cbC3YH0Ml0" role="lcghm">
            <property role="lacIc" value="do" />
          </node>
        </node>
        <node concept="lc7rE" id="5cbC3YH0Ml1" role="3cqZAp">
          <node concept="l8MVK" id="5cbC3YH0Ml2" role="lcghm" />
        </node>
        <node concept="11p84A" id="5cbC3YH0Ml3" role="3cqZAp" />
        <node concept="3izx1p" id="5cbC3YH0Ml4" role="3cqZAp">
          <node concept="3clFbS" id="5cbC3YH0Ml5" role="3izTki">
            <node concept="1bpajm" id="5cbC3YH0Ml6" role="3cqZAp" />
            <node concept="lc7rE" id="5cbC3YH0Ml7" role="3cqZAp">
              <node concept="l9hG8" id="5cbC3YH0Ml8" role="lcghm">
                <node concept="2OqwBi" id="5cbC3YH0Ml9" role="lb14g">
                  <node concept="117lpO" id="5cbC3YH0Mla" role="2Oq$k0" />
                  <node concept="3TrEf2" id="5cbC3YH0Mlb" role="2OqNvi">
                    <ref role="3Tt5mk" to="ti4o:5cbC3YH0Mah" resolve="Statement" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="11pn5k" id="5cbC3YH0Mlc" role="3cqZAp" />
        <node concept="lc7rE" id="5cbC3YH0Mld" role="3cqZAp">
          <node concept="l8MVK" id="5cbC3YH0Mle" role="lcghm" />
        </node>
        <node concept="lc7rE" id="5cbC3YH0Mlf" role="3cqZAp">
          <node concept="la8eA" id="5cbC3YH0Mlg" role="lcghm">
            <property role="lacIc" value="od" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="5cbC3YH0Mlh">
    <property role="3GE5qa" value="statements" />
    <ref role="WuzLi" to="ti4o:5cbC3YH0Mak" resolve="Statements" />
    <node concept="11bSqf" id="5cbC3YH0Mli" role="11c4hB">
      <node concept="3clFbS" id="5cbC3YH0Mlj" role="2VODD2">
        <node concept="3izx1p" id="5cbC3YH0Mlk" role="3cqZAp">
          <node concept="3clFbS" id="5cbC3YH0Mll" role="3izTki">
            <node concept="lc7rE" id="5cbC3YH0Mlm" role="3cqZAp">
              <node concept="l9S2W" id="5cbC3YH0Mln" role="lcghm">
                <property role="XA4eZ" value="true" />
                <node concept="2OqwBi" id="5cbC3YH0Mlo" role="lbANJ">
                  <node concept="117lpO" id="5cbC3YH0Mlp" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="5cbC3YH0Mlq" role="2OqNvi">
                    <ref role="3TtcxE" to="ti4o:5cbC3YH0Mal" resolve="Statement" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="5cbC3YH0Mlr">
    <property role="3GE5qa" value="" />
    <ref role="WuzLi" to="ti4o:5cbC3YH0Mam" resolve="Program" />
    <node concept="11bSqf" id="5cbC3YH0Mls" role="11c4hB">
      <node concept="3clFbS" id="5cbC3YH0Mlt" role="2VODD2">
        <node concept="lc7rE" id="5cbC3YH0Mlu" role="3cqZAp">
          <node concept="la8eA" id="5cbC3YH0Mlv" role="lcghm">
            <property role="lacIc" value="Program" />
          </node>
        </node>
        <node concept="lc7rE" id="5cbC3YH0Mlw" role="3cqZAp">
          <node concept="l9hG8" id="5cbC3YH0Mlx" role="lcghm">
            <node concept="2OqwBi" id="5cbC3YH0Mly" role="lb14g">
              <node concept="117lpO" id="5cbC3YH0Mlz" role="2Oq$k0" />
              <node concept="3TrcHB" id="5cbC3YH0Ml$" role="2OqNvi">
                <ref role="3TsBF5" to="ti4o:5cbC3YH0Man" resolve="Identifier" />
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="5cbC3YH0Ml_" role="3cqZAp">
          <node concept="la8eA" id="5cbC3YH0MlA" role="lcghm">
            <property role="lacIc" value="is" />
          </node>
        </node>
        <node concept="lc7rE" id="5cbC3YH0MlB" role="3cqZAp">
          <node concept="l8MVK" id="5cbC3YH0MlC" role="lcghm" />
        </node>
        <node concept="lc7rE" id="5cbC3YH0MlD" role="3cqZAp">
          <node concept="la8eA" id="5cbC3YH0MlE" role="lcghm">
            <property role="lacIc" value="begin" />
          </node>
        </node>
        <node concept="lc7rE" id="5cbC3YH0MlF" role="3cqZAp">
          <node concept="l8MVK" id="5cbC3YH0MlG" role="lcghm" />
        </node>
        <node concept="11p84A" id="5cbC3YH0MlH" role="3cqZAp" />
        <node concept="3izx1p" id="5cbC3YH0MlI" role="3cqZAp">
          <node concept="3clFbS" id="5cbC3YH0MlJ" role="3izTki">
            <node concept="1bpajm" id="5cbC3YH0MlK" role="3cqZAp" />
            <node concept="lc7rE" id="5cbC3YH0MlL" role="3cqZAp">
              <node concept="l9hG8" id="5cbC3YH0MlM" role="lcghm">
                <node concept="2OqwBi" id="5cbC3YH0MlN" role="lb14g">
                  <node concept="117lpO" id="5cbC3YH0MlO" role="2Oq$k0" />
                  <node concept="3TrEf2" id="5cbC3YH0MlP" role="2OqNvi">
                    <ref role="3Tt5mk" to="ti4o:5cbC3YH0Mao" resolve="Statements" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="11pn5k" id="5cbC3YH0MlQ" role="3cqZAp" />
        <node concept="lc7rE" id="5cbC3YH0MlR" role="3cqZAp">
          <node concept="l8MVK" id="5cbC3YH0MlS" role="lcghm" />
        </node>
        <node concept="lc7rE" id="5cbC3YH0MlT" role="3cqZAp">
          <node concept="la8eA" id="5cbC3YH0MlU" role="lcghm">
            <property role="lacIc" value="end;" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

