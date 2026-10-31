<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:07cfe27d-a615-4ff4-b232-6224567a8742(DemoUsability.textGen)">
  <persistence version="9" />
  <languages>
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="b83431fe-5c8f-40bc-8a36-65e25f4dd253" name="jetbrains.mps.lang.textGen" version="1" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <devkit ref="fa73d85a-ac7f-447b-846c-fcdc41caa600(jetbrains.mps.devkit.aspect.textgen)" />
  </languages>
  <imports>
    <import index="n2m4" ref="r:29df74a9-1ef8-4ba0-9f28-0451ab1e71a4(DemoUsability.structure)" />
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
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
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
        <property id="1237306003719" name="separator" index="lbP0B" />
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
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
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
  <node concept="WtQ9Q" id="DO6drRZFka">
    <ref role="WuzLi" to="n2m4:clKjNn70OE" />
    <node concept="11bSqf" id="tk_3AjGvm8" role="11c4hB">
      <node concept="3clFbS" id="eoUY3Rpjza" role="2VODD2">
        <node concept="lc7rE" id="xHU7MDM3i8" role="3cqZAp">
          <node concept="la8eA" id="wV8j83wxei" role="lcghm">
            <property role="lacIc" value="program" />
          </node>
        </node>
        <node concept="3clFbJ" id="U1JOMSRQlL" role="3cqZAp">
          <node concept="2OqwBi" id="5roE$gEm7" role="3clFbw">
            <node concept="117lpO" id="sYuXZX_xl8" role="2Oq$k0" />
            <node concept="3TrcHB" id="p787ZRk1mT" role="2OqNvi">
              <ref role="3TsBF5" to="n2m4:qalK2bn9Sg" />
            </node>
          </node>
          <node concept="3clFbS" id="jdjtGQFpjl" role="3clFbx">
            <node concept="lc7rE" id="GtL9lVchar" role="3cqZAp">
              <node concept="la8eA" id="f4IgmBKJYZ" role="lcghm">
                <property role="lacIc" value="static" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3izx1p" id="ikBkkruwso" role="3cqZAp">
          <node concept="3clFbS" id="2WUZ_Me8$d" role="3izTki">
            <node concept="lc7rE" id="fnyL513vuG" role="3cqZAp">
              <node concept="l9S2W" id="DFvi5H40xS" role="lcghm">
                <property role="XA4eZ" value="true" />
                <node concept="2OqwBi" id="kHzvCAGJFT" role="lbANJ">
                  <node concept="117lpO" id="$Tu2wNjVUk" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="XasNstCECC" role="2OqNvi">
                    <ref role="3TtcxE" to="n2m4:SzoEKCxLlM" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="zUf_zi31d$" role="3cqZAp">
          <node concept="la8eA" id="Efq2YxJZIv" role="lcghm">
            <property role="lacIc" value="else" />
          </node>
        </node>
        <node concept="3izx1p" id="a1viaBznSL" role="3cqZAp">
          <node concept="3clFbS" id="Tq0rFYs3h3" role="3izTki">
            <node concept="lc7rE" id="Y_3gSmm9l8" role="3cqZAp">
              <node concept="l9S2W" id="EuU0HEcRKx" role="lcghm">
                <property role="XA4eZ" value="true" />
                <node concept="2OqwBi" id="oHGudezsVY" role="lbANJ">
                  <node concept="117lpO" id="6uJ2HqU_qP" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="hqeY8XIB91" role="2OqNvi">
                    <ref role="3TtcxE" to="n2m4:GJjzMoNEJh" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="Rt3jLArj4T">
    <ref role="WuzLi" to="n2m4:pokUpJQ$xE" />
    <node concept="11bSqf" id="YIYdM3qVsJ" role="11c4hB">
      <node concept="3clFbS" id="pF9Diydo_D" role="2VODD2">
        <node concept="lc7rE" id="erLKiy$utb" role="3cqZAp">
          <node concept="la8eA" id="BduQFM2tIG" role="lcghm">
            <property role="lacIc" value="skip" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="pQMvDRfEM2">
    <ref role="WuzLi" to="n2m4:dIPqnga0qR" />
    <node concept="11bSqf" id="b_$UApaBiF" role="11c4hB">
      <node concept="3clFbS" id="rzSsIKkLsA" role="2VODD2">
        <node concept="3clFbJ" id="2y67pNlpSp" role="3cqZAp">
          <node concept="2OqwBi" id="3HFTeSafL8" role="3clFbw">
            <node concept="117lpO" id="3QUgrGC_Ne" role="2Oq$k0" />
            <node concept="3TrcHB" id="qbMmON28xE" role="2OqNvi">
              <ref role="3TsBF5" to="n2m4:27ycVzfuMb" />
            </node>
          </node>
          <node concept="3clFbS" id="Z0nnTKtzCC" role="3clFbx">
            <node concept="lc7rE" id="Q9Fv4UkHcS" role="3cqZAp">
              <node concept="la8eA" id="gadeZzdNt1" role="lcghm">
                <property role="lacIc" value="public" />
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="Xwa7sPa6XG" role="3cqZAp">
          <node concept="l9hG8" id="22B$pDDUar" role="lcghm">
            <node concept="2OqwBi" id="hr9mNzIFkK" role="lb14g">
              <node concept="117lpO" id="jecZVDTD$W" role="2Oq$k0" />
              <node concept="3TrcHB" id="wb29hZ35$t" role="2OqNvi">
                <ref role="3TsBF5" to="n2m4:kvdqv6tNUD" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3izx1p" id="e4oZwfxqtg" role="3cqZAp">
          <node concept="3clFbS" id="4vyov9v88O" role="3izTki">
            <node concept="3clFbJ" id="YbdGefSHVj" role="3cqZAp">
              <node concept="3clFbS" id="TJMqjrbrdM" role="3clFbx">
                <node concept="lc7rE" id="HlkFIT47Ac" role="3cqZAp">
                  <node concept="l9hG8" id="KPezoruCFZ" role="lcghm">
                    <node concept="2OqwBi" id="VP48gjTCQe" role="lb14g">
                      <node concept="117lpO" id="IwKgPD6A47" role="2Oq$k0" />
                      <node concept="3TrEf2" id="kVBlmeFfJa" role="2OqNvi">
                        <ref role="3Tt5mk" to="n2m4:1sHbqs4rTK" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="Fj68ECE1dW" role="3clFbw">
                <node concept="2OqwBi" id="fTlMfNpN1F" role="2Oq$k0">
                  <node concept="117lpO" id="NzcAbEO86d" role="2Oq$k0" />
                  <node concept="3TrEf2" id="VdFnM7ppxO" role="2OqNvi">
                    <ref role="3Tt5mk" to="n2m4:1sHbqs4rTK" />
                  </node>
                </node>
                <node concept="3x8VRR" id="fAbjSeoNfO" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="ZyLweGt21E">
    <ref role="WuzLi" to="n2m4:gh6_CIVq1L" />
    <node concept="11bSqf" id="720mSZ0kxQ" role="11c4hB">
      <node concept="3clFbS" id="LL01tARLiu" role="2VODD2">
        <node concept="lc7rE" id="NAz8s9Ki5k" role="3cqZAp">
          <node concept="la8eA" id="TxAzlGz95h" role="lcghm">
            <property role="lacIc" value="else" />
          </node>
        </node>
        <node concept="3izx1p" id="hWZq$Al10_" role="3cqZAp">
          <node concept="3clFbS" id="1YyjGJ1FET" role="3izTki">
            <node concept="lc7rE" id="5hQrDfndP" role="3cqZAp">
              <node concept="l9S2W" id="sqy$auBDkT" role="lcghm">
                <property role="XA4eZ" value="true" />
                <node concept="2OqwBi" id="OQbbXtyzR4" role="lbANJ">
                  <node concept="117lpO" id="rUVfFD3JHQ" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="2oYsLJ3bFV" role="2OqNvi">
                    <ref role="3TtcxE" to="n2m4:F8K3F5g4Ey" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="pAeoZp1RZq">
    <property role="3GE5qa" value="" />
    <ref role="WuzLi" to="n2m4:7Owspc8yxr" resolve="Block" />
    <node concept="11bSqf" id="4A_$Lxv2vj" role="11c4hB">
      <node concept="3clFbS" id="xKRYR0Of5Y" role="2VODD2">
        <node concept="lc7rE" id="wbeSp3UbwK" role="3cqZAp">
          <node concept="la8eA" id="P_L$Q8I4ya" role="lcghm">
            <property role="lacIc" value="begin" />
          </node>
        </node>
        <node concept="lc7rE" id="JOARn35iYN" role="3cqZAp">
          <node concept="l8MVK" id="hdbM9wRtZm" role="lcghm" />
        </node>
        <node concept="11p84A" id="wvfvnPxBFx" role="3cqZAp" />
        <node concept="3izx1p" id="PaxjPJckMa" role="3cqZAp">
          <node concept="3clFbS" id="gDg4fY3Ceg" role="3izTki">
            <node concept="1bpajm" id="M7IzoC2gxu" role="3cqZAp" />
            <node concept="lc7rE" id="$6wHpGqqZ$" role="3cqZAp">
              <node concept="l9S2W" id="BzGf6Wpmnd" role="lcghm">
                <property role="XA4eZ" value="true" />
                <property role="lbP0B" value=";" />
                <node concept="2OqwBi" id="RpeowoXLG5" role="lbANJ">
                  <node concept="117lpO" id="a1BJb6nFrm" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="xpqRPLAAVG" role="2OqNvi">
                    <ref role="3TtcxE" to="n2m4:odE2kWcFue" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="11pn5k" id="tD0QA1frfy" role="3cqZAp" />
        <node concept="lc7rE" id="dqaCqD9T1n" role="3cqZAp">
          <node concept="la8eA" id="x4pqaHuUJ1" role="lcghm">
            <property role="lacIc" value="end" />
          </node>
        </node>
        <node concept="3izx1p" id="MghOhQvaRG" role="3cqZAp">
          <node concept="3clFbS" id="2$34CN10f3" role="3izTki">
            <node concept="3clFbJ" id="8QARS4h11F" role="3cqZAp">
              <node concept="3clFbS" id="89m5YCOocB" role="3clFbx">
                <node concept="lc7rE" id="m3ZsFeiYQh" role="3cqZAp">
                  <node concept="l9hG8" id="CwxbBPP4R4" role="lcghm">
                    <node concept="2OqwBi" id="McULjAVvai" role="lb14g">
                      <node concept="117lpO" id="wZr0eOKPiN" role="2Oq$k0" />
                      <node concept="3TrEf2" id="fzuBPV19ze" role="2OqNvi">
                        <ref role="3Tt5mk" to="n2m4:B4Qkm2DZ1D" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="JKPNY_We$l" role="3clFbw">
                <node concept="2OqwBi" id="RWRCZF70hF" role="2Oq$k0">
                  <node concept="117lpO" id="E5sbdlQo9G" role="2Oq$k0" />
                  <node concept="3TrEf2" id="rbzhf9en7Z" role="2OqNvi">
                    <ref role="3Tt5mk" to="n2m4:B4Qkm2DZ1D" />
                  </node>
                </node>
                <node concept="3x8VRR" id="Po4nUyVuFZ" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

