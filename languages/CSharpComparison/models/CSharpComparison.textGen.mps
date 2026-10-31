<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:848feee2-47c6-46a1-aeda-fd7591c87767(CSharpComparison.textGen)">
  <persistence version="9" />
  <languages>
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="b83431fe-5c8f-40bc-8a36-65e25f4dd253" name="jetbrains.mps.lang.textGen" version="1" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <devkit ref="fa73d85a-ac7f-447b-846c-fcdc41caa600(jetbrains.mps.devkit.aspect.textgen)" />
  </languages>
  <imports>
    <import index="yiol" ref="r:da9593e3-393b-479e-8ed7-977e83834b16(CSharpComparison.structure)" />
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
  <node concept="WtQ9Q" id="WXhfrJn1Ka">
    <property role="3GE5qa" value="ANTLR" />
    <ref role="WuzLi" to="yiol:X8JiVyjpF9" resolve="program" />
    <node concept="11bSqf" id="SORZTtDOkj" role="11c4hB">
      <node concept="3clFbS" id="z5BaMwZDCZ" role="2VODD2">
        <node concept="3izx1p" id="nQMLMYekw7" role="3cqZAp">
          <node concept="3clFbS" id="HFpW_i6v2X" role="3izTki">
            <node concept="lc7rE" id="uj0_VX5AGH" role="3cqZAp">
              <node concept="l9hG8" id="L6YsJJ3Mhh" role="lcghm">
                <node concept="2OqwBi" id="82ZbL48TM2" role="lb14g">
                  <node concept="117lpO" id="w2ZEyuH55J" role="2Oq$k0" />
                  <node concept="3TrEf2" id="Rw18X5WN62" role="2OqNvi">
                    <ref role="3Tt5mk" to="yiol:TbvgBtbWVU" resolve="block" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="gi1p$pcUqj">
    <property role="3GE5qa" value="ANTLR" />
    <ref role="WuzLi" to="yiol:ymp_$pH7rU" resolve="block" />
    <node concept="11bSqf" id="HrH_DWn7Dp" role="11c4hB">
      <node concept="3clFbS" id="dmiuS_m3cl" role="2VODD2">
        <node concept="lc7rE" id="8XhbduHGhZ" role="3cqZAp">
          <node concept="la8eA" id="liANPc5srx" role="lcghm">
            <property role="lacIc" value="{" />
          </node>
        </node>
        <node concept="3izx1p" id="USElC4UK33" role="3cqZAp">
          <node concept="3clFbS" id="6DRCAPZFh6" role="3izTki">
            <node concept="lc7rE" id="2W0gSr0WMn" role="3cqZAp">
              <node concept="l9S2W" id="qhrtWs7CzJ" role="lcghm">
                <property role="XA4eZ" value="true" />
                <node concept="2OqwBi" id="M4m2UJy428" role="lbANJ">
                  <node concept="117lpO" id="6LKItHeiD6" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="F0OHsks0RB" role="2OqNvi">
                    <ref role="3TtcxE" to="yiol:ZYpNL93oA4" resolve="statement" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="V9E5nyAxOF" role="3cqZAp">
          <node concept="la8eA" id="_jAG1j7qX6" role="lcghm">
            <property role="lacIc" value="}" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="5OYXfZ54xh">
    <property role="3GE5qa" value="ANTLR" />
    <ref role="WuzLi" to="yiol:Kq4lKso5HZ" resolve="statement__ANTLRAlternative1" />
    <node concept="11bSqf" id="39q7ddXLmw" role="11c4hB">
      <node concept="3clFbS" id="jh6R3PUlC3" role="2VODD2">
        <node concept="3izx1p" id="OZwNRi33J$" role="3cqZAp">
          <node concept="3clFbS" id="iHuhZ8DlxW" role="3izTki">
            <node concept="lc7rE" id="LCl9g2u1nY" role="3cqZAp">
              <node concept="l9hG8" id="gXx2kZrXba" role="lcghm">
                <node concept="2OqwBi" id="D0ljgiytZz" role="lb14g">
                  <node concept="117lpO" id="BcpkpQvE3L" role="2Oq$k0" />
                  <node concept="3TrEf2" id="OZOjmUk2Q8" role="2OqNvi">
                    <ref role="3Tt5mk" to="yiol:wKshwUl2Jt" resolve="block" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="_rT7eUME2I">
    <property role="3GE5qa" value="ANTLR" />
    <ref role="WuzLi" to="yiol:QV2k4q3e_f" resolve="statement__ANTLRAlternative2" />
    <node concept="11bSqf" id="mdB6qsbfwU" role="11c4hB">
      <node concept="3clFbS" id="C2$CggJl7m" role="2VODD2">
        <node concept="lc7rE" id="QPgk6XqHzT" role="3cqZAp">
          <node concept="la8eA" id="PVK1TmeVgQ" role="lcghm">
            <property role="lacIc" value="return" />
          </node>
        </node>
        <node concept="3izx1p" id="Q67rn_Stnj" role="3cqZAp">
          <node concept="3clFbS" id="GN5dEWhnaw" role="3izTki">
            <node concept="3clFbJ" id="JYX7lFi2Z$" role="3cqZAp">
              <node concept="3clFbS" id="pqDQ8uL5Nb" role="3clFbx">
                <node concept="lc7rE" id="uP_kaPXchW" role="3cqZAp">
                  <node concept="l9hG8" id="VRRPrUGIl1" role="lcghm">
                    <node concept="2OqwBi" id="kaONRlF0Ee" role="lb14g">
                      <node concept="117lpO" id="dzyQEDqhc4" role="2Oq$k0" />
                      <node concept="3TrEf2" id="LDbNEAkGK2" role="2OqNvi">
                        <ref role="3Tt5mk" to="yiol:jjjS_uBv5O" resolve="_AntlrGroup1" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="TY2ehX9uEk" role="3clFbw">
                <node concept="2OqwBi" id="Spc4XCa4VU" role="2Oq$k0">
                  <node concept="117lpO" id="ddNBnfd0gY" role="2Oq$k0" />
                  <node concept="3TrEf2" id="drjLt5QtQ" role="2OqNvi">
                    <ref role="3Tt5mk" to="yiol:jjjS_uBv5O" resolve="_AntlrGroup1" />
                  </node>
                </node>
                <node concept="3x8VRR" id="mq2JWBwhE1" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="7FnuWlzcH8" role="3cqZAp">
          <node concept="la8eA" id="Bugy5sygQQ" role="lcghm">
            <property role="lacIc" value=";" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="gi3obXt6Qb">
    <property role="3GE5qa" value="ANTLR" />
    <ref role="WuzLi" to="yiol:lA4KLA7h11" resolve="expression" />
    <node concept="11bSqf" id="BOu6qNQ6hd" role="11c4hB">
      <node concept="3clFbS" id="ALO3oNBTcA" role="2VODD2">
        <node concept="lc7rE" id="upF$I_4$_1" role="3cqZAp">
          <node concept="l9hG8" id="NGajm6XwVO" role="lcghm">
            <node concept="2OqwBi" id="YzAE9pzyhd" role="lb14g">
              <node concept="117lpO" id="UdPhbQiQXh" role="2Oq$k0" />
              <node concept="3TrcHB" id="t2SbiZw7U$" role="2OqNvi">
                <ref role="3TsBF5" to="yiol:bHYQBUUrtP" resolve="NUMBER" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3izx1p" id="u61ycLY5PC" role="3cqZAp">
          <node concept="3clFbS" id="vCndjzLbst" role="3izTki">
            <node concept="lc7rE" id="Oy5zj2SQpu" role="3cqZAp">
              <node concept="l9S2W" id="Uj85bYGik6" role="lcghm">
                <property role="XA4eZ" value="true" />
                <node concept="2OqwBi" id="dJahqEC0sc" role="lbANJ">
                  <node concept="117lpO" id="oqOrJmDMSY" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="9RXT7rHSCV" role="2OqNvi">
                    <ref role="3TtcxE" to="yiol:g74Akw7nYN" resolve="_AntlrGroup2" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="5erVSA3Rel">
    <property role="3GE5qa" value="ANTLR" />
    <ref role="WuzLi" to="yiol:6MHCkHrF8A" resolve="_AntlrGroup1" />
    <node concept="11bSqf" id="$6l7Jn4Sde" role="11c4hB">
      <node concept="3clFbS" id="$MFYDR_diU" role="2VODD2">
        <node concept="lc7rE" id="ZuMr1NUo3h" role="3cqZAp">
          <node concept="la8eA" id="J7xSnr0cE2" role="lcghm">
            <property role="lacIc" value=" " />
          </node>
        </node>
        <node concept="3izx1p" id="mVd78kdaB5" role="3cqZAp">
          <node concept="3clFbS" id="qyCBB$FvSL" role="3izTki">
            <node concept="lc7rE" id="iVBIYNN4jI" role="3cqZAp">
              <node concept="l9hG8" id="vppJuhBfLq" role="lcghm">
                <node concept="2OqwBi" id="oIsUfEfb5e" role="lb14g">
                  <node concept="117lpO" id="rsgr_lta4" role="2Oq$k0" />
                  <node concept="3TrEf2" id="dXjfGIlQjG" role="2OqNvi">
                    <ref role="3Tt5mk" to="yiol:YRcPPsVtuW" resolve="expression" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="6_Qq9czWA4">
    <property role="3GE5qa" value="ANTLR" />
    <ref role="WuzLi" to="yiol:Wz9J6$x4fc" resolve="_AntlrGroup2" />
    <node concept="11bSqf" id="IlMus_dm6B" role="11c4hB">
      <node concept="3clFbS" id="ODaw$hBeoa" role="2VODD2">
        <node concept="lc7rE" id="jE2MT9F8W3" role="3cqZAp">
          <node concept="la8eA" id="2vjIZRGTBY" role="lcghm">
            <property role="lacIc" value="+" />
          </node>
        </node>
        <node concept="lc7rE" id="5tvlR26tYk" role="3cqZAp">
          <node concept="l9hG8" id="2wmrQpSw6O" role="lcghm">
            <node concept="2OqwBi" id="jlyoVQf9LE" role="lb14g">
              <node concept="117lpO" id="__TIvdZL5T" role="2Oq$k0" />
              <node concept="3TrcHB" id="Lfp1INbRKL" role="2OqNvi">
                <ref role="3TsBF5" to="yiol:3EKqKeaXvJ" resolve="NUMBER" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

