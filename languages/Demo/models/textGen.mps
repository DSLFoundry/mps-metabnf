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
  <node concept="WtQ9Q" id="5JXDlB6qzz3">
    <property role="3GE5qa" value="expressions" />
    <ref role="WuzLi" to="ti4n:5JXDlB6qzpx" resolve="Bool" />
    <node concept="11bSqf" id="5JXDlB6qzz4" role="11c4hB">
      <node concept="3clFbS" id="5JXDlB6qzz5" role="2VODD2">
        <node concept="lc7rE" id="5JXDlB6qzz6" role="3cqZAp">
          <node concept="l9hG8" id="5JXDlB6qzz7" role="lcghm">
            <node concept="2OqwBi" id="5JXDlB6qzz8" role="lb14g">
              <node concept="117lpO" id="5JXDlB6qzz9" role="2Oq$k0" />
              <node concept="3TrcHB" id="5JXDlB6qzza" role="2OqNvi">
                <ref role="3TsBF5" to="ti4n:5JXDlB6qzpy" resolve="BooleanValue" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="5JXDlB6qzzb">
    <property role="3GE5qa" value="expressions" />
    <ref role="WuzLi" to="ti4n:5JXDlB6qzp$" resolve="Number" />
    <node concept="11bSqf" id="5JXDlB6qzzc" role="11c4hB">
      <node concept="3clFbS" id="5JXDlB6qzzd" role="2VODD2">
        <node concept="lc7rE" id="5JXDlB6qzze" role="3cqZAp">
          <node concept="l9hG8" id="5JXDlB6qzzf" role="lcghm">
            <node concept="2OqwBi" id="5JXDlB6qzzg" role="lb14g">
              <node concept="117lpO" id="5JXDlB6qzzh" role="2Oq$k0" />
              <node concept="3TrcHB" id="5JXDlB6qzzi" role="2OqNvi">
                <ref role="3TsBF5" to="ti4n:5JXDlB6qzp_" resolve="NumberValue" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="5JXDlB6qzzj">
    <property role="3GE5qa" value="statements" />
    <ref role="WuzLi" to="ti4n:5JXDlB6qzpE" resolve="Skip" />
    <node concept="11bSqf" id="5JXDlB6qzzk" role="11c4hB">
      <node concept="3clFbS" id="5JXDlB6qzzl" role="2VODD2">
        <node concept="lc7rE" id="5JXDlB6qzzm" role="3cqZAp">
          <node concept="la8eA" id="5JXDlB6qzzn" role="lcghm">
            <property role="lacIc" value="skip" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="5JXDlB6qzzo">
    <property role="3GE5qa" value="statements" />
    <ref role="WuzLi" to="ti4n:5JXDlB6qzpG" resolve="Assignment" />
    <node concept="11bSqf" id="5JXDlB6qzzp" role="11c4hB">
      <node concept="3clFbS" id="5JXDlB6qzzq" role="2VODD2">
        <node concept="lc7rE" id="5JXDlB6qzzr" role="3cqZAp">
          <node concept="l9hG8" id="5JXDlB6qzzs" role="lcghm">
            <node concept="2OqwBi" id="5JXDlB6qzzt" role="lb14g">
              <node concept="117lpO" id="5JXDlB6qzzu" role="2Oq$k0" />
              <node concept="3TrcHB" id="5JXDlB6qzzv" role="2OqNvi">
                <ref role="3TsBF5" to="ti4n:5JXDlB6qzpH" resolve="Identifier" />
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="5JXDlB6qzzw" role="3cqZAp">
          <node concept="la8eA" id="5JXDlB6qzzx" role="lcghm">
            <property role="lacIc" value=":=" />
          </node>
        </node>
        <node concept="3izx1p" id="5JXDlB6qzzy" role="3cqZAp">
          <node concept="3clFbS" id="5JXDlB6qzzz" role="3izTki">
            <node concept="lc7rE" id="5JXDlB6qzz$" role="3cqZAp">
              <node concept="l9hG8" id="5JXDlB6qzz_" role="lcghm">
                <node concept="2OqwBi" id="5JXDlB6qzzA" role="lb14g">
                  <node concept="117lpO" id="5JXDlB6qzzB" role="2Oq$k0" />
                  <node concept="3TrEf2" id="5JXDlB6qzzC" role="2OqNvi">
                    <ref role="3Tt5mk" to="ti4n:5JXDlB6qzpI" resolve="Expression" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="5JXDlB6qzzD" role="3cqZAp">
          <node concept="la8eA" id="5JXDlB6qzzE" role="lcghm">
            <property role="lacIc" value=";" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="5JXDlB6qzzF">
    <property role="3GE5qa" value="statements" />
    <ref role="WuzLi" to="ti4n:5JXDlB6qzpK" resolve="Selection" />
    <node concept="11bSqf" id="5JXDlB6qzzG" role="11c4hB">
      <node concept="3clFbS" id="5JXDlB6qzzH" role="2VODD2">
        <node concept="lc7rE" id="5JXDlB6qzzI" role="3cqZAp">
          <node concept="la8eA" id="5JXDlB6qzzJ" role="lcghm">
            <property role="lacIc" value="if" />
          </node>
        </node>
        <node concept="3izx1p" id="5JXDlB6qzzK" role="3cqZAp">
          <node concept="3clFbS" id="5JXDlB6qzzL" role="3izTki">
            <node concept="lc7rE" id="5JXDlB6qzzM" role="3cqZAp">
              <node concept="l9hG8" id="5JXDlB6qzzN" role="lcghm">
                <node concept="2OqwBi" id="5JXDlB6qzzO" role="lb14g">
                  <node concept="117lpO" id="5JXDlB6qzzP" role="2Oq$k0" />
                  <node concept="3TrEf2" id="5JXDlB6qzzQ" role="2OqNvi">
                    <ref role="3Tt5mk" to="ti4n:5JXDlB6qzpL" resolve="Condition" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="5JXDlB6qzzR" role="3cqZAp">
          <node concept="la8eA" id="5JXDlB6qzzS" role="lcghm">
            <property role="lacIc" value="then" />
          </node>
        </node>
        <node concept="lc7rE" id="5JXDlB6qzzT" role="3cqZAp">
          <node concept="l8MVK" id="5JXDlB6qzzU" role="lcghm" />
        </node>
        <node concept="11p84A" id="5JXDlB6qzzV" role="3cqZAp" />
        <node concept="3izx1p" id="5JXDlB6qzzW" role="3cqZAp">
          <node concept="3clFbS" id="5JXDlB6qzzX" role="3izTki">
            <node concept="1bpajm" id="5JXDlB6qzzY" role="3cqZAp" />
            <node concept="lc7rE" id="5JXDlB6qzzZ" role="3cqZAp">
              <node concept="l9hG8" id="5JXDlB6qz$0" role="lcghm">
                <node concept="2OqwBi" id="5JXDlB6qz$1" role="lb14g">
                  <node concept="117lpO" id="5JXDlB6qz$2" role="2Oq$k0" />
                  <node concept="3TrEf2" id="5JXDlB6qz$3" role="2OqNvi">
                    <ref role="3Tt5mk" to="ti4n:5JXDlB6qzpM" resolve="thenstats" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="11pn5k" id="5JXDlB6qz$4" role="3cqZAp" />
        <node concept="lc7rE" id="5JXDlB6qz$5" role="3cqZAp">
          <node concept="l8MVK" id="5JXDlB6qz$6" role="lcghm" />
        </node>
        <node concept="lc7rE" id="5JXDlB6qz$7" role="3cqZAp">
          <node concept="la8eA" id="5JXDlB6qz$8" role="lcghm">
            <property role="lacIc" value="else" />
          </node>
        </node>
        <node concept="lc7rE" id="5JXDlB6qz$9" role="3cqZAp">
          <node concept="l8MVK" id="5JXDlB6qz$a" role="lcghm" />
        </node>
        <node concept="11p84A" id="5JXDlB6qz$b" role="3cqZAp" />
        <node concept="3izx1p" id="5JXDlB6qz$c" role="3cqZAp">
          <node concept="3clFbS" id="5JXDlB6qz$d" role="3izTki">
            <node concept="1bpajm" id="5JXDlB6qz$e" role="3cqZAp" />
            <node concept="lc7rE" id="5JXDlB6qz$f" role="3cqZAp">
              <node concept="l9hG8" id="5JXDlB6qz$g" role="lcghm">
                <node concept="2OqwBi" id="5JXDlB6qz$h" role="lb14g">
                  <node concept="117lpO" id="5JXDlB6qz$i" role="2Oq$k0" />
                  <node concept="3TrEf2" id="5JXDlB6qz$j" role="2OqNvi">
                    <ref role="3Tt5mk" to="ti4n:5JXDlB6qzpN" resolve="elsestats" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="11pn5k" id="5JXDlB6qz$k" role="3cqZAp" />
        <node concept="lc7rE" id="5JXDlB6qz$l" role="3cqZAp">
          <node concept="l8MVK" id="5JXDlB6qz$m" role="lcghm" />
        </node>
        <node concept="lc7rE" id="5JXDlB6qz$n" role="3cqZAp">
          <node concept="la8eA" id="5JXDlB6qz$o" role="lcghm">
            <property role="lacIc" value="fi" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="5JXDlB6qz$p">
    <property role="3GE5qa" value="statements" />
    <ref role="WuzLi" to="ti4n:5JXDlB6qzpP" resolve="Loop" />
    <node concept="11bSqf" id="5JXDlB6qz$q" role="11c4hB">
      <node concept="3clFbS" id="5JXDlB6qz$r" role="2VODD2">
        <node concept="lc7rE" id="5JXDlB6qz$s" role="3cqZAp">
          <node concept="la8eA" id="5JXDlB6qz$t" role="lcghm">
            <property role="lacIc" value="while" />
          </node>
        </node>
        <node concept="3izx1p" id="5JXDlB6qz$u" role="3cqZAp">
          <node concept="3clFbS" id="5JXDlB6qz$v" role="3izTki">
            <node concept="lc7rE" id="5JXDlB6qz$w" role="3cqZAp">
              <node concept="l9hG8" id="5JXDlB6qz$x" role="lcghm">
                <node concept="2OqwBi" id="5JXDlB6qz$y" role="lb14g">
                  <node concept="117lpO" id="5JXDlB6qz$z" role="2Oq$k0" />
                  <node concept="3TrEf2" id="5JXDlB6qz$$" role="2OqNvi">
                    <ref role="3Tt5mk" to="ti4n:5JXDlB6qzpQ" resolve="Condition" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="5JXDlB6qz$_" role="3cqZAp">
          <node concept="la8eA" id="5JXDlB6qz$A" role="lcghm">
            <property role="lacIc" value="do" />
          </node>
        </node>
        <node concept="lc7rE" id="5JXDlB6qz$B" role="3cqZAp">
          <node concept="l8MVK" id="5JXDlB6qz$C" role="lcghm" />
        </node>
        <node concept="11p84A" id="5JXDlB6qz$D" role="3cqZAp" />
        <node concept="3izx1p" id="5JXDlB6qz$E" role="3cqZAp">
          <node concept="3clFbS" id="5JXDlB6qz$F" role="3izTki">
            <node concept="1bpajm" id="5JXDlB6qz$G" role="3cqZAp" />
            <node concept="lc7rE" id="5JXDlB6qz$H" role="3cqZAp">
              <node concept="l9hG8" id="5JXDlB6qz$I" role="lcghm">
                <node concept="2OqwBi" id="5JXDlB6qz$J" role="lb14g">
                  <node concept="117lpO" id="5JXDlB6qz$K" role="2Oq$k0" />
                  <node concept="3TrEf2" id="5JXDlB6qz$L" role="2OqNvi">
                    <ref role="3Tt5mk" to="ti4n:5JXDlB6qzpR" resolve="Statement" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="11pn5k" id="5JXDlB6qz$M" role="3cqZAp" />
        <node concept="lc7rE" id="5JXDlB6qz$N" role="3cqZAp">
          <node concept="l8MVK" id="5JXDlB6qz$O" role="lcghm" />
        </node>
        <node concept="lc7rE" id="5JXDlB6qz$P" role="3cqZAp">
          <node concept="la8eA" id="5JXDlB6qz$Q" role="lcghm">
            <property role="lacIc" value="od" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="5JXDlB6qz$R">
    <property role="3GE5qa" value="statements" />
    <ref role="WuzLi" to="ti4n:5JXDlB6qzpU" resolve="Statements" />
    <node concept="11bSqf" id="5JXDlB6qz$S" role="11c4hB">
      <node concept="3clFbS" id="5JXDlB6qz$T" role="2VODD2">
        <node concept="3izx1p" id="5JXDlB6qz$U" role="3cqZAp">
          <node concept="3clFbS" id="5JXDlB6qz$V" role="3izTki">
            <node concept="lc7rE" id="5JXDlB6qz$W" role="3cqZAp">
              <node concept="l9S2W" id="5JXDlB6qz$X" role="lcghm">
                <property role="XA4eZ" value="true" />
                <node concept="2OqwBi" id="5JXDlB6qz$Y" role="lbANJ">
                  <node concept="117lpO" id="5JXDlB6qz$Z" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="5JXDlB6qz_0" role="2OqNvi">
                    <ref role="3TtcxE" to="ti4n:5JXDlB6qzpV" resolve="Statement" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="5JXDlB6qz_1">
    <property role="3GE5qa" value="" />
    <ref role="WuzLi" to="ti4n:5JXDlB6qzpW" resolve="Program" />
    <node concept="11bSqf" id="5JXDlB6qz_2" role="11c4hB">
      <node concept="3clFbS" id="5JXDlB6qz_3" role="2VODD2">
        <node concept="lc7rE" id="5JXDlB6qz_4" role="3cqZAp">
          <node concept="la8eA" id="5JXDlB6qz_5" role="lcghm">
            <property role="lacIc" value="Program" />
          </node>
        </node>
        <node concept="lc7rE" id="5JXDlB6qz_6" role="3cqZAp">
          <node concept="l9hG8" id="5JXDlB6qz_7" role="lcghm">
            <node concept="2OqwBi" id="5JXDlB6qz_8" role="lb14g">
              <node concept="117lpO" id="5JXDlB6qz_9" role="2Oq$k0" />
              <node concept="3TrcHB" id="5JXDlB6qz_a" role="2OqNvi">
                <ref role="3TsBF5" to="ti4n:5JXDlB6qzpX" resolve="Identifier" />
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="5JXDlB6qz_b" role="3cqZAp">
          <node concept="la8eA" id="5JXDlB6qz_c" role="lcghm">
            <property role="lacIc" value="is" />
          </node>
        </node>
        <node concept="lc7rE" id="5JXDlB6qz_d" role="3cqZAp">
          <node concept="l8MVK" id="5JXDlB6qz_e" role="lcghm" />
        </node>
        <node concept="lc7rE" id="5JXDlB6qz_f" role="3cqZAp">
          <node concept="la8eA" id="5JXDlB6qz_g" role="lcghm">
            <property role="lacIc" value="begin" />
          </node>
        </node>
        <node concept="lc7rE" id="5JXDlB6qz_h" role="3cqZAp">
          <node concept="l8MVK" id="5JXDlB6qz_i" role="lcghm" />
        </node>
        <node concept="11p84A" id="5JXDlB6qz_j" role="3cqZAp" />
        <node concept="3izx1p" id="5JXDlB6qz_k" role="3cqZAp">
          <node concept="3clFbS" id="5JXDlB6qz_l" role="3izTki">
            <node concept="1bpajm" id="5JXDlB6qz_m" role="3cqZAp" />
            <node concept="lc7rE" id="5JXDlB6qz_n" role="3cqZAp">
              <node concept="l9hG8" id="5JXDlB6qz_o" role="lcghm">
                <node concept="2OqwBi" id="5JXDlB6qz_p" role="lb14g">
                  <node concept="117lpO" id="5JXDlB6qz_q" role="2Oq$k0" />
                  <node concept="3TrEf2" id="5JXDlB6qz_r" role="2OqNvi">
                    <ref role="3Tt5mk" to="ti4n:5JXDlB6qzpY" resolve="Statements" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="11pn5k" id="5JXDlB6qz_s" role="3cqZAp" />
        <node concept="lc7rE" id="5JXDlB6qz_t" role="3cqZAp">
          <node concept="l8MVK" id="5JXDlB6qz_u" role="lcghm" />
        </node>
        <node concept="lc7rE" id="5JXDlB6qz_v" role="3cqZAp">
          <node concept="la8eA" id="5JXDlB6qz_w" role="lcghm">
            <property role="lacIc" value="end;" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

