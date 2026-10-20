<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:80d6dd30-c4c3-47a0-9c0b-e46d1827505b(Demo.textGen)">
  <persistence version="9" />
  <languages>
    <use id="b83431fe-5c8f-40bc-8a36-65e25f4dd253" name="jetbrains.mps.lang.textGen" version="1" />
    <devkit ref="fa73d85a-ac7f-447b-846c-fcdc41caa600(jetbrains.mps.devkit.aspect.textgen)" />
  </languages>
  <imports>
    <import index="zejt" ref="r:2338345e-d246-468d-922d-9f8162ca4e3b(Demo.structure)" />
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
  <node concept="WtQ9Q" id="6LRoTum0v2k">
    <property role="3GE5qa" value="expressions" />
    <ref role="WuzLi" to="zejt:6LRoTum0v0Q" resolve="Bool" />
    <node concept="11bSqf" id="6LRoTum0v2l" role="11c4hB">
      <node concept="3clFbS" id="6LRoTum0v2m" role="2VODD2">
        <node concept="lc7rE" id="6LRoTum0v2n" role="3cqZAp">
          <node concept="l9hG8" id="6LRoTum0v2o" role="lcghm">
            <node concept="2OqwBi" id="6LRoTum0v2p" role="lb14g">
              <node concept="117lpO" id="6LRoTum0v2q" role="2Oq$k0" />
              <node concept="3TrcHB" id="6LRoTum0v2r" role="2OqNvi">
                <ref role="3TsBF5" to="zejt:6LRoTum0v0R" resolve="BooleanValue" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="6LRoTum0v2s">
    <property role="3GE5qa" value="expressions" />
    <ref role="WuzLi" to="zejt:6LRoTum0v0T" resolve="Number" />
    <node concept="11bSqf" id="6LRoTum0v2t" role="11c4hB">
      <node concept="3clFbS" id="6LRoTum0v2u" role="2VODD2">
        <node concept="lc7rE" id="6LRoTum0v2v" role="3cqZAp">
          <node concept="l9hG8" id="6LRoTum0v2w" role="lcghm">
            <node concept="2OqwBi" id="6LRoTum0v2x" role="lb14g">
              <node concept="117lpO" id="6LRoTum0v2y" role="2Oq$k0" />
              <node concept="3TrcHB" id="6LRoTum0v2z" role="2OqNvi">
                <ref role="3TsBF5" to="zejt:6LRoTum0v0U" resolve="NumberValue" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="6LRoTum0v2$">
    <property role="3GE5qa" value="statements" />
    <ref role="WuzLi" to="zejt:6LRoTum0v0Z" resolve="Skip" />
    <node concept="11bSqf" id="6LRoTum0v2_" role="11c4hB">
      <node concept="3clFbS" id="6LRoTum0v2A" role="2VODD2">
        <node concept="lc7rE" id="6LRoTum0v2B" role="3cqZAp">
          <node concept="la8eA" id="6LRoTum0v2C" role="lcghm">
            <property role="lacIc" value="skip" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="6LRoTum0v2D">
    <property role="3GE5qa" value="statements" />
    <ref role="WuzLi" to="zejt:6LRoTum0v11" resolve="Assignment" />
    <node concept="11bSqf" id="6LRoTum0v2E" role="11c4hB">
      <node concept="3clFbS" id="6LRoTum0v2F" role="2VODD2">
        <node concept="lc7rE" id="6LRoTum0v2G" role="3cqZAp">
          <node concept="l9hG8" id="6LRoTum0v2H" role="lcghm">
            <node concept="2OqwBi" id="6LRoTum0v2I" role="lb14g">
              <node concept="117lpO" id="6LRoTum0v2J" role="2Oq$k0" />
              <node concept="3TrcHB" id="6LRoTum0v2K" role="2OqNvi">
                <ref role="3TsBF5" to="zejt:6LRoTum0v12" resolve="Identifier" />
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="6LRoTum0v2L" role="3cqZAp">
          <node concept="la8eA" id="6LRoTum0v2M" role="lcghm">
            <property role="lacIc" value=":=" />
          </node>
        </node>
        <node concept="3izx1p" id="6LRoTum0v2N" role="3cqZAp">
          <node concept="3clFbS" id="6LRoTum0v2O" role="3izTki">
            <node concept="lc7rE" id="6LRoTum0v2P" role="3cqZAp">
              <node concept="l9hG8" id="6LRoTum0v2Q" role="lcghm">
                <node concept="2OqwBi" id="6LRoTum0v2R" role="lb14g">
                  <node concept="117lpO" id="6LRoTum0v2S" role="2Oq$k0" />
                  <node concept="3TrEf2" id="6LRoTum0v2T" role="2OqNvi">
                    <ref role="3Tt5mk" to="zejt:6LRoTum0v13" resolve="Expression" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="6LRoTum0v2U" role="3cqZAp">
          <node concept="la8eA" id="6LRoTum0v2V" role="lcghm">
            <property role="lacIc" value=";" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="6LRoTum0v2W">
    <property role="3GE5qa" value="statements" />
    <ref role="WuzLi" to="zejt:6LRoTum0v15" resolve="Selection" />
    <node concept="11bSqf" id="6LRoTum0v2X" role="11c4hB">
      <node concept="3clFbS" id="6LRoTum0v2Y" role="2VODD2">
        <node concept="lc7rE" id="6LRoTum0v2Z" role="3cqZAp">
          <node concept="la8eA" id="6LRoTum0v30" role="lcghm">
            <property role="lacIc" value="if" />
          </node>
        </node>
        <node concept="3izx1p" id="6LRoTum0v31" role="3cqZAp">
          <node concept="3clFbS" id="6LRoTum0v32" role="3izTki">
            <node concept="lc7rE" id="6LRoTum0v33" role="3cqZAp">
              <node concept="l9hG8" id="6LRoTum0v34" role="lcghm">
                <node concept="2OqwBi" id="6LRoTum0v35" role="lb14g">
                  <node concept="117lpO" id="6LRoTum0v36" role="2Oq$k0" />
                  <node concept="3TrEf2" id="6LRoTum0v37" role="2OqNvi">
                    <ref role="3Tt5mk" to="zejt:6LRoTum0v16" resolve="Condition" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="6LRoTum0v38" role="3cqZAp">
          <node concept="la8eA" id="6LRoTum0v39" role="lcghm">
            <property role="lacIc" value="then" />
          </node>
        </node>
        <node concept="lc7rE" id="6LRoTum0v3a" role="3cqZAp">
          <node concept="l8MVK" id="6LRoTum0v3b" role="lcghm" />
        </node>
        <node concept="11p84A" id="6LRoTum0v3c" role="3cqZAp" />
        <node concept="3izx1p" id="6LRoTum0v3d" role="3cqZAp">
          <node concept="3clFbS" id="6LRoTum0v3e" role="3izTki">
            <node concept="1bpajm" id="6LRoTum0v3f" role="3cqZAp" />
            <node concept="lc7rE" id="6LRoTum0v3g" role="3cqZAp">
              <node concept="l9hG8" id="6LRoTum0v3h" role="lcghm">
                <node concept="2OqwBi" id="6LRoTum0v3i" role="lb14g">
                  <node concept="117lpO" id="6LRoTum0v3j" role="2Oq$k0" />
                  <node concept="3TrEf2" id="6LRoTum0v3k" role="2OqNvi">
                    <ref role="3Tt5mk" to="zejt:6LRoTum0v17" resolve="thenstats" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="11pn5k" id="6LRoTum0v3l" role="3cqZAp" />
        <node concept="lc7rE" id="6LRoTum0v3m" role="3cqZAp">
          <node concept="l8MVK" id="6LRoTum0v3n" role="lcghm" />
        </node>
        <node concept="lc7rE" id="6LRoTum0v3o" role="3cqZAp">
          <node concept="la8eA" id="6LRoTum0v3p" role="lcghm">
            <property role="lacIc" value="else" />
          </node>
        </node>
        <node concept="lc7rE" id="6LRoTum0v3q" role="3cqZAp">
          <node concept="l8MVK" id="6LRoTum0v3r" role="lcghm" />
        </node>
        <node concept="11p84A" id="6LRoTum0v3s" role="3cqZAp" />
        <node concept="3izx1p" id="6LRoTum0v3t" role="3cqZAp">
          <node concept="3clFbS" id="6LRoTum0v3u" role="3izTki">
            <node concept="1bpajm" id="6LRoTum0v3v" role="3cqZAp" />
            <node concept="lc7rE" id="6LRoTum0v3w" role="3cqZAp">
              <node concept="l9hG8" id="6LRoTum0v3x" role="lcghm">
                <node concept="2OqwBi" id="6LRoTum0v3y" role="lb14g">
                  <node concept="117lpO" id="6LRoTum0v3z" role="2Oq$k0" />
                  <node concept="3TrEf2" id="6LRoTum0v3$" role="2OqNvi">
                    <ref role="3Tt5mk" to="zejt:6LRoTum0v18" resolve="elsestats" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="11pn5k" id="6LRoTum0v3_" role="3cqZAp" />
        <node concept="lc7rE" id="6LRoTum0v3A" role="3cqZAp">
          <node concept="l8MVK" id="6LRoTum0v3B" role="lcghm" />
        </node>
        <node concept="lc7rE" id="6LRoTum0v3C" role="3cqZAp">
          <node concept="la8eA" id="6LRoTum0v3D" role="lcghm">
            <property role="lacIc" value="fi" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="6LRoTum0v3E">
    <property role="3GE5qa" value="statements" />
    <ref role="WuzLi" to="zejt:6LRoTum0v1a" resolve="Loop" />
    <node concept="11bSqf" id="6LRoTum0v3F" role="11c4hB">
      <node concept="3clFbS" id="6LRoTum0v3G" role="2VODD2">
        <node concept="lc7rE" id="6LRoTum0v3H" role="3cqZAp">
          <node concept="la8eA" id="6LRoTum0v3I" role="lcghm">
            <property role="lacIc" value="while" />
          </node>
        </node>
        <node concept="3izx1p" id="6LRoTum0v3J" role="3cqZAp">
          <node concept="3clFbS" id="6LRoTum0v3K" role="3izTki">
            <node concept="lc7rE" id="6LRoTum0v3L" role="3cqZAp">
              <node concept="l9hG8" id="6LRoTum0v3M" role="lcghm">
                <node concept="2OqwBi" id="6LRoTum0v3N" role="lb14g">
                  <node concept="117lpO" id="6LRoTum0v3O" role="2Oq$k0" />
                  <node concept="3TrEf2" id="6LRoTum0v3P" role="2OqNvi">
                    <ref role="3Tt5mk" to="zejt:6LRoTum0v1b" resolve="Condition" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="6LRoTum0v3Q" role="3cqZAp">
          <node concept="la8eA" id="6LRoTum0v3R" role="lcghm">
            <property role="lacIc" value="do" />
          </node>
        </node>
        <node concept="lc7rE" id="6LRoTum0v3S" role="3cqZAp">
          <node concept="l8MVK" id="6LRoTum0v3T" role="lcghm" />
        </node>
        <node concept="11p84A" id="6LRoTum0v3U" role="3cqZAp" />
        <node concept="3izx1p" id="6LRoTum0v3V" role="3cqZAp">
          <node concept="3clFbS" id="6LRoTum0v3W" role="3izTki">
            <node concept="1bpajm" id="6LRoTum0v3X" role="3cqZAp" />
            <node concept="lc7rE" id="6LRoTum0v3Y" role="3cqZAp">
              <node concept="l9hG8" id="6LRoTum0v3Z" role="lcghm">
                <node concept="2OqwBi" id="6LRoTum0v40" role="lb14g">
                  <node concept="117lpO" id="6LRoTum0v41" role="2Oq$k0" />
                  <node concept="3TrEf2" id="6LRoTum0v42" role="2OqNvi">
                    <ref role="3Tt5mk" to="zejt:6LRoTum0v1c" resolve="Statement" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="11pn5k" id="6LRoTum0v43" role="3cqZAp" />
        <node concept="lc7rE" id="6LRoTum0v44" role="3cqZAp">
          <node concept="l8MVK" id="6LRoTum0v45" role="lcghm" />
        </node>
        <node concept="lc7rE" id="6LRoTum0v46" role="3cqZAp">
          <node concept="la8eA" id="6LRoTum0v47" role="lcghm">
            <property role="lacIc" value="od" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="6LRoTum0v48">
    <property role="3GE5qa" value="statements" />
    <ref role="WuzLi" to="zejt:6LRoTum0v1f" resolve="Statements" />
    <node concept="11bSqf" id="6LRoTum0v49" role="11c4hB">
      <node concept="3clFbS" id="6LRoTum0v4a" role="2VODD2">
        <node concept="3izx1p" id="6LRoTum0v4b" role="3cqZAp">
          <node concept="3clFbS" id="6LRoTum0v4c" role="3izTki">
            <node concept="lc7rE" id="6LRoTum0v4d" role="3cqZAp">
              <node concept="l9S2W" id="6LRoTum0v4e" role="lcghm">
                <property role="XA4eZ" value="true" />
                <node concept="2OqwBi" id="6LRoTum0v4f" role="lbANJ">
                  <node concept="117lpO" id="6LRoTum0v4g" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="6LRoTum0v4h" role="2OqNvi">
                    <ref role="3TtcxE" to="zejt:6LRoTum0v1g" resolve="Statement" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="6LRoTum0v4i">
    <property role="3GE5qa" value="" />
    <ref role="WuzLi" to="zejt:6LRoTum0v1h" resolve="Program" />
    <node concept="11bSqf" id="6LRoTum0v4j" role="11c4hB">
      <node concept="3clFbS" id="6LRoTum0v4k" role="2VODD2">
        <node concept="lc7rE" id="6LRoTum0v4l" role="3cqZAp">
          <node concept="la8eA" id="6LRoTum0v4m" role="lcghm">
            <property role="lacIc" value="Program" />
          </node>
        </node>
        <node concept="lc7rE" id="6LRoTum0v4n" role="3cqZAp">
          <node concept="l9hG8" id="6LRoTum0v4o" role="lcghm">
            <node concept="2OqwBi" id="6LRoTum0v4p" role="lb14g">
              <node concept="117lpO" id="6LRoTum0v4q" role="2Oq$k0" />
              <node concept="3TrcHB" id="6LRoTum0v4r" role="2OqNvi">
                <ref role="3TsBF5" to="zejt:6LRoTum0v1i" resolve="Identifier" />
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="6LRoTum0v4s" role="3cqZAp">
          <node concept="la8eA" id="6LRoTum0v4t" role="lcghm">
            <property role="lacIc" value="is" />
          </node>
        </node>
        <node concept="lc7rE" id="6LRoTum0v4u" role="3cqZAp">
          <node concept="l8MVK" id="6LRoTum0v4v" role="lcghm" />
        </node>
        <node concept="lc7rE" id="6LRoTum0v4w" role="3cqZAp">
          <node concept="la8eA" id="6LRoTum0v4x" role="lcghm">
            <property role="lacIc" value="begin" />
          </node>
        </node>
        <node concept="lc7rE" id="6LRoTum0v4y" role="3cqZAp">
          <node concept="l8MVK" id="6LRoTum0v4z" role="lcghm" />
        </node>
        <node concept="11p84A" id="6LRoTum0v4$" role="3cqZAp" />
        <node concept="3izx1p" id="6LRoTum0v4_" role="3cqZAp">
          <node concept="3clFbS" id="6LRoTum0v4A" role="3izTki">
            <node concept="1bpajm" id="6LRoTum0v4B" role="3cqZAp" />
            <node concept="lc7rE" id="6LRoTum0v4C" role="3cqZAp">
              <node concept="l9hG8" id="6LRoTum0v4D" role="lcghm">
                <node concept="2OqwBi" id="6LRoTum0v4E" role="lb14g">
                  <node concept="117lpO" id="6LRoTum0v4F" role="2Oq$k0" />
                  <node concept="3TrEf2" id="6LRoTum0v4G" role="2OqNvi">
                    <ref role="3Tt5mk" to="zejt:6LRoTum0v1j" resolve="Statements" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="11pn5k" id="6LRoTum0v4H" role="3cqZAp" />
        <node concept="lc7rE" id="6LRoTum0v4I" role="3cqZAp">
          <node concept="l8MVK" id="6LRoTum0v4J" role="lcghm" />
        </node>
        <node concept="lc7rE" id="6LRoTum0v4K" role="3cqZAp">
          <node concept="la8eA" id="6LRoTum0v4L" role="lcghm">
            <property role="lacIc" value="end;" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

