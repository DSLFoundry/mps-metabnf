<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:0fbcf19f-c60b-479b-81cb-094b5b2b9f1d(metabnf.structure)">
  <persistence version="9" />
  <languages>
    <use id="982eb8df-2c96-4bd7-9963-11712ea622e5" name="jetbrains.mps.lang.resources" version="2" />
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="tpfo" ref="r:00000000-0000-4000-0000-011c89590518(jetbrains.mps.baseLanguage.regexp.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="3348158742936976480" name="jetbrains.mps.lang.structure.structure.EnumerationMemberDeclaration" flags="ng" index="25R33">
        <property id="1421157252384165432" name="memberId" index="3tVfz5" />
        <property id="672037151186491528" name="presentation" index="1L1pqM" />
        <reference id="899069222106091871" name="oldMember" index="2wpffI" />
      </concept>
      <concept id="3348158742936976479" name="jetbrains.mps.lang.structure.structure.EnumerationDeclaration" flags="ng" index="25R3W">
        <reference id="1075010451642646892" name="defaultMember" index="1H5jkz" />
        <child id="3348158742936976577" name="members" index="25R1y" />
      </concept>
      <concept id="6491077959632463275" name="jetbrains.mps.lang.structure.structure.EnumPropertyMigrationInfo" flags="ng" index="3l_iC">
        <child id="6491077959632463286" name="oldProperty" index="3l_iP" />
      </concept>
      <concept id="1082978164218" name="jetbrains.mps.lang.structure.structure.DataTypeDeclaration" flags="ng" index="AxPO6">
        <property id="7791109065626895363" name="datatypeId" index="3F6X1D" />
      </concept>
      <concept id="1082978164219" name="jetbrains.mps.lang.structure.structure.EnumerationDataTypeDeclaration_Old" flags="ng" index="AxPO7">
        <property id="1197591154882" name="memberIdentifierPolicy" index="3lZH7k" />
        <reference id="1083171729157" name="memberDataType" index="M4eZT" />
        <child id="1083172003582" name="member" index="M5hS2" />
      </concept>
      <concept id="1588368162884797030" name="jetbrains.mps.lang.structure.structure.EnumMigrationInfo" flags="ng" index="2JgGob">
        <property id="6491077959634662372" name="valueOpMigration" index="3scbB" />
        <property id="6491077959634650670" name="nameOpMigration" index="3sfsH" />
        <child id="6491077959632451996" name="oldEnum" index="3lCyv" />
      </concept>
      <concept id="1083171877298" name="jetbrains.mps.lang.structure.structure.EnumerationMemberDeclaration_Old" flags="ig" index="M4N5e">
        <property id="1083923523172" name="externalValue" index="1uS6qo" />
        <property id="1083923523171" name="internalValue" index="1uS6qv" />
      </concept>
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
        <property id="4628067390765907488" name="conceptShortDescription" index="R4oN_" />
        <property id="5092175715804935370" name="conceptAlias" index="34LRSv" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
        <child id="1071489727084" name="propertyDeclaration" index="1TKVEl" />
      </concept>
      <concept id="1169125989551" name="jetbrains.mps.lang.structure.structure.InterfaceConceptDeclaration" flags="ig" index="PlHQZ">
        <child id="1169127546356" name="extends" index="PrDN$" />
      </concept>
      <concept id="1169127622168" name="jetbrains.mps.lang.structure.structure.InterfaceConceptReference" flags="ig" index="PrWs8">
        <reference id="1169127628841" name="intfc" index="PrY4T" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <property id="1096454100552" name="rootable" index="19KtqR" />
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
        <child id="1169129564478" name="implements" index="PzmwI" />
      </concept>
      <concept id="1071489288299" name="jetbrains.mps.lang.structure.structure.PropertyDeclaration" flags="ig" index="1TJgyi">
        <property id="241647608299431129" name="propertyId" index="IQ2nx" />
        <reference id="1082985295845" name="dataType" index="AX2Wp" />
      </concept>
      <concept id="1071489288298" name="jetbrains.mps.lang.structure.structure.LinkDeclaration" flags="ig" index="1TJgyj">
        <property id="1071599776563" name="role" index="20kJfa" />
        <property id="1071599893252" name="sourceCardinality" index="20lbJX" />
        <property id="1071599937831" name="metaClass" index="20lmBu" />
        <property id="241647608299431140" name="linkId" index="IQ2ns" />
        <reference id="1071599976176" name="target" index="20lvS9" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1TIwiD" id="2b2ZYR3vfui">
    <property role="TrG5h" value="grammar" />
    <property role="19KtqR" value="true" />
    <property role="EcuMT" value="2504845739423496082" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="2b2ZYR3vt1R" role="1TKVEi">
      <property role="20kJfa" value="start" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <property role="IQ2ns" value="2504845739423551607" />
      <ref role="20lvS9" node="2b2ZYR3xc0j" resolve="NonterminalRule" />
    </node>
    <node concept="1TJgyj" id="2b2ZYR3vt1P" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="rules" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <property role="IQ2ns" value="2504845739423551605" />
      <ref role="20lvS9" node="4VQvhHjPdwf" resolve="IGrammarContent" />
    </node>
    <node concept="PrWs8" id="2b2ZYR3vt1M" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="PlHQZ" id="2b2ZYR3vt1O">
    <property role="TrG5h" value="INamedGrammarContent" />
    <property role="3GE5qa" value="content" />
    <property role="EcuMT" value="2504845739423551604" />
    <node concept="PrWs8" id="4VQvhHjPGn$" role="PrDN$">
      <ref role="PrY4T" node="4VQvhHjPdwf" resolve="IGrammarContent" />
    </node>
    <node concept="PrWs8" id="2b2ZYR3vvzW" role="PrDN$">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="PlHQZ" id="2b2ZYR3vvvM">
    <property role="TrG5h" value="INonterminalRule" />
    <property role="3GE5qa" value="rules.nonterminals" />
    <property role="EcuMT" value="2504845739423561714" />
    <node concept="PrWs8" id="4VQvhHjPP7L" role="PrDN$">
      <ref role="PrY4T" node="4VQvhHjPP6Z" resolve="IGrammarRule" />
    </node>
  </node>
  <node concept="1TIwiD" id="2b2ZYR3vvxc">
    <property role="TrG5h" value="ChoiceRule" />
    <property role="34LRSv" value="|" />
    <property role="3GE5qa" value="rules.nonterminals" />
    <property role="EcuMT" value="2504845739423561804" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="2b2ZYR3vvyc" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="nonterminals" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <property role="IQ2ns" value="2504845739423561868" />
      <ref role="20lvS9" node="2b2ZYR3ypJF" resolve="NonterminalReference" />
    </node>
    <node concept="PrWs8" id="2b2ZYR3vvxd" role="PzmwI">
      <ref role="PrY4T" node="2b2ZYR3vvvM" resolve="INonterminalRule" />
    </node>
  </node>
  <node concept="1TIwiD" id="2b2ZYR3vvzS">
    <property role="TrG5h" value="TerminalRule" />
    <property role="34LRSv" value="&quot;" />
    <property role="3GE5qa" value="rules.terminals" />
    <property role="EcuMT" value="2504845739423561976" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="2uPbBoX8sFH" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="regexp" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <property role="IQ2ns" value="2861244223630461677" />
      <ref role="20lvS9" to="tpfo:h5Qi9ot" resolve="InlineRegexpExpression" />
    </node>
    <node concept="PrWs8" id="2b2ZYR3vv$h" role="PzmwI">
      <ref role="PrY4T" node="2b2ZYR3vvzV" resolve="ITerminalRule" />
    </node>
  </node>
  <node concept="PlHQZ" id="2b2ZYR3vvzV">
    <property role="TrG5h" value="ITerminalRule" />
    <property role="3GE5qa" value="rules.terminals" />
    <property role="EcuMT" value="2504845739423561979" />
    <node concept="PrWs8" id="4VQvhHjPP7O" role="PrDN$">
      <ref role="PrY4T" node="4VQvhHjPP6Z" resolve="IGrammarRule" />
    </node>
  </node>
  <node concept="1TIwiD" id="2b2ZYR3xc0j">
    <property role="TrG5h" value="NonterminalRule" />
    <property role="34LRSv" value=":" />
    <property role="3GE5qa" value="rules.nonterminals" />
    <property role="EcuMT" value="2504845739424006163" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="2b2ZYR3xc0Q" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="terms" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <property role="IQ2ns" value="2504845739424006198" />
      <ref role="20lvS9" node="2b2ZYR3xc0P" resolve="ITerm" />
    </node>
    <node concept="PrWs8" id="2b2ZYR3xc0k" role="PzmwI">
      <ref role="PrY4T" node="2b2ZYR3vvvM" resolve="INonterminalRule" />
    </node>
  </node>
  <node concept="PlHQZ" id="2b2ZYR3xc0P">
    <property role="TrG5h" value="ITerm" />
    <property role="3GE5qa" value="terms" />
    <property role="EcuMT" value="2504845739424006197" />
    <node concept="1TJgyi" id="svkQGafLny" role="1TKVEl">
      <property role="TrG5h" value="indent" />
      <property role="IQ2nx" value="513220601742038498" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyi" id="svkQGafLot" role="1TKVEl">
      <property role="TrG5h" value="newline" />
      <property role="IQ2nx" value="513220601742038557" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
  </node>
  <node concept="1TIwiD" id="2b2ZYR3xc2x">
    <property role="3GE5qa" value="terms" />
    <property role="TrG5h" value="Keyword" />
    <property role="34LRSv" value="&quot;" />
    <property role="EcuMT" value="2504845739424006305" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="2b2ZYR3xc2y" role="PzmwI">
      <ref role="PrY4T" node="2b2ZYR3xc0P" resolve="ITerm" />
    </node>
    <node concept="PrWs8" id="2b2ZYR3xc2D" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="2b2ZYR3ypJF">
    <property role="3GE5qa" value="terms.references" />
    <property role="TrG5h" value="NonterminalReference" />
    <property role="EcuMT" value="2504845739424324587" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="21bD4dVyEsP" role="1TKVEl">
      <property role="TrG5h" value="card" />
      <property role="IQ2nx" value="2504845739424658192" />
      <ref role="AX2Wp" node="21bD4dVyEsJ" resolve="RuleCardinality" />
      <node concept="3l_iC" id="21bD4dVyEsQ" role="lGtFl">
        <node concept="1TJgyi" id="2b2ZYR3zFcg" role="3l_iP">
          <property role="TrG5h" value="card" />
          <property role="IQ2nx" value="2504845739424658192" />
          <ref role="AX2Wp" node="2b2ZYR3yDpJ" resolve="RuleCardinality" />
        </node>
      </node>
    </node>
    <node concept="1TJgyi" id="4idNKJH8I1t" role="1TKVEl">
      <property role="TrG5h" value="sep" />
      <property role="IQ2nx" value="4939832016425377885" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyj" id="2b2ZYR3ypJI" role="1TKVEi">
      <property role="20kJfa" value="rule" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <property role="IQ2ns" value="2504845739424324590" />
      <ref role="20lvS9" node="2b2ZYR3vvvM" resolve="INonterminalRule" />
    </node>
    <node concept="PrWs8" id="5DyBgy0IhIF" role="PzmwI">
      <ref role="PrY4T" node="2b2ZYR3xc0P" resolve="ITerm" />
    </node>
    <node concept="PrWs8" id="44Pv0YAHYTm" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="2b2ZYR3yyTQ">
    <property role="3GE5qa" value="terms" />
    <property role="TrG5h" value="Name" />
    <property role="34LRSv" value="&lt;name&gt;" />
    <property role="EcuMT" value="2504845739424362102" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="2b2ZYR3yyUE" role="PzmwI">
      <ref role="PrY4T" node="2b2ZYR3xc0P" resolve="ITerm" />
    </node>
  </node>
  <node concept="1TIwiD" id="7DK$EIfvNik">
    <property role="3GE5qa" value="content" />
    <property role="TrG5h" value="EmptyLine" />
    <property role="EcuMT" value="8822712935563342996" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="4VQvhHjPGo_" role="PzmwI">
      <ref role="PrY4T" node="4VQvhHjPdwf" resolve="IGrammarContent" />
    </node>
  </node>
  <node concept="1TIwiD" id="7DK$EIfvTU7">
    <property role="3GE5qa" value="terms.references" />
    <property role="TrG5h" value="IdReference" />
    <property role="34LRSv" value="Ref" />
    <property role="EcuMT" value="8822712935563370119" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="7DK$EIfvTUX" role="1TKVEi">
      <property role="20kJfa" value="Rule" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <property role="IQ2ns" value="8822712935563370173" />
      <ref role="20lvS9" node="2b2ZYR3vt1O" resolve="INamedGrammarContent" />
    </node>
    <node concept="PrWs8" id="7DK$EIfvTUV" role="PzmwI">
      <ref role="PrY4T" node="2b2ZYR3xc0P" resolve="ITerm" />
    </node>
    <node concept="PrWs8" id="44Pv0YAIt1u" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="PlHQZ" id="4VQvhHjPdwf">
    <property role="TrG5h" value="IGrammarContent" />
    <property role="3GE5qa" value="content" />
    <property role="EcuMT" value="5689872735553247247" />
  </node>
  <node concept="PlHQZ" id="4VQvhHjPP6Z">
    <property role="3GE5qa" value="rules" />
    <property role="TrG5h" value="IGrammarRule" />
    <property role="EcuMT" value="5689872735553409471" />
    <node concept="PrWs8" id="4VQvhHjPP70" role="PrDN$">
      <ref role="PrY4T" node="2b2ZYR3vt1O" resolve="INamedGrammarContent" />
    </node>
  </node>
  <node concept="1TIwiD" id="4VQvhHjPVYE">
    <property role="TrG5h" value="RuleGroup" />
    <property role="34LRSv" value="{" />
    <property role="3GE5qa" value="content" />
    <property role="EcuMT" value="5689872735553437610" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="4VQvhHjPVYH" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="rules" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <property role="IQ2ns" value="5689872735553437613" />
      <ref role="20lvS9" node="4VQvhHjPdwf" resolve="IGrammarContent" />
    </node>
    <node concept="PrWs8" id="4VQvhHjPVYF" role="PzmwI">
      <ref role="PrY4T" node="2b2ZYR3vt1O" resolve="INamedGrammarContent" />
    </node>
  </node>
  <node concept="1TIwiD" id="4idNKJHcpNO">
    <property role="TrG5h" value="Comment" />
    <property role="34LRSv" value="#" />
    <property role="3GE5qa" value="content" />
    <property role="EcuMT" value="4939832016426343668" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="4idNKJHcpNP" role="PzmwI">
      <ref role="PrY4T" node="4VQvhHjPdwf" resolve="IGrammarContent" />
    </node>
    <node concept="PrWs8" id="4idNKJHcpNU" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="4idNKJHg4Qe">
    <property role="3GE5qa" value="terms" />
    <property role="TrG5h" value="Flag" />
    <property role="R4oN_" value="Optional (toggle-able) keyword" />
    <property role="34LRSv" value="[" />
    <property role="EcuMT" value="4939832016427306382" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="19i4fzcEFbG" role="PzmwI">
      <ref role="PrY4T" node="19i4fzcDjDR" resolve="IPropertyTerm" />
    </node>
    <node concept="PrWs8" id="4idNKJHg4Rc" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="svkQGakJa8">
    <property role="3GE5qa" value="generator" />
    <property role="TrG5h" value="GenerationModel" />
    <property role="19KtqR" value="true" />
    <property role="R4oN_" value="Helper node to support generation of multiple outputs" />
    <property role="EcuMT" value="513220601743340168" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="6xuOfBzZZec" role="1TKVEl">
      <property role="TrG5h" value="generator" />
      <property role="IQ2nx" value="7520678199445943180" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyj" id="svkQGakJb4" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="grammar" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <property role="IQ2ns" value="513220601743340228" />
      <ref role="20lvS9" node="2b2ZYR3vfui" resolve="grammar" />
    </node>
  </node>
  <node concept="1TIwiD" id="2nZx5M97nj8">
    <property role="3GE5qa" value="terms.references" />
    <property role="TrG5h" value="TerminalReference" />
    <property role="EcuMT" value="2738052631436817608" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="2nZx5M99u3$" role="1TKVEi">
      <property role="20kJfa" value="rule" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <property role="IQ2ns" value="2738052631437369572" />
      <ref role="20lvS9" node="2b2ZYR3vvzV" resolve="ITerminalRule" />
    </node>
    <node concept="PrWs8" id="19i4fzcDjDU" role="PzmwI">
      <ref role="PrY4T" node="19i4fzcDjDR" resolve="IPropertyTerm" />
    </node>
    <node concept="PrWs8" id="2nZx5M97nje" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="70uSrrI_fSG">
    <property role="3GE5qa" value="rules.terminals" />
    <property role="TrG5h" value="EnumRule" />
    <property role="34LRSv" value="enum" />
    <property role="EcuMT" value="8079142957352287788" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="70uSrrI_je4" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="values" />
      <property role="20lbJX" value="fLJekj6/_1__n" />
      <property role="IQ2ns" value="8079142957352301444" />
      <ref role="20lvS9" node="70uSrrI_fSJ" resolve="EnumValue" />
    </node>
    <node concept="PrWs8" id="70uSrrI_fSH" role="PzmwI">
      <ref role="PrY4T" node="2b2ZYR3vvzV" resolve="ITerminalRule" />
    </node>
  </node>
  <node concept="1TIwiD" id="70uSrrI_fSJ">
    <property role="3GE5qa" value="rules.terminals" />
    <property role="TrG5h" value="EnumValue" />
    <property role="EcuMT" value="8079142957352287791" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="70uSrrI_fSK" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="19i4fzcDeVl">
    <property role="3GE5qa" value="terms.properties" />
    <property role="TrG5h" value="BooleanProperty" />
    <property role="34LRSv" value="bool" />
    <property role="EcuMT" value="1320136301544271573" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="19i4fzcDjDY" role="PzmwI">
      <ref role="PrY4T" node="19i4fzcDjDR" resolve="IPropertyTerm" />
    </node>
    <node concept="PrWs8" id="19i4fzcDFZS" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="19i4fzcDhxm">
    <property role="3GE5qa" value="terms.properties" />
    <property role="TrG5h" value="StringProperty" />
    <property role="34LRSv" value="str" />
    <property role="EcuMT" value="1320136301544282198" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="19i4fzcDjE2" role="PzmwI">
      <ref role="PrY4T" node="19i4fzcDjDR" resolve="IPropertyTerm" />
    </node>
    <node concept="PrWs8" id="19i4fzcDFZW" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="PlHQZ" id="19i4fzcDjDR">
    <property role="3GE5qa" value="terms.properties" />
    <property role="TrG5h" value="IPropertyTerm" />
    <property role="EcuMT" value="1320136301544290935" />
    <node concept="PrWs8" id="19i4fzcDjDS" role="PrDN$">
      <ref role="PrY4T" node="2b2ZYR3xc0P" resolve="ITerm" />
    </node>
  </node>
  <node concept="1TIwiD" id="4ggFLSKEkpW">
    <property role="3GE5qa" value="terms.properties" />
    <property role="TrG5h" value="IntegerProperty" />
    <property role="34LRSv" value="int" />
    <property role="EcuMT" value="4904612538406749820" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="4ggFLSKEkqK" role="PzmwI">
      <ref role="PrY4T" node="19i4fzcDjDR" resolve="IPropertyTerm" />
    </node>
    <node concept="PrWs8" id="4ggFLSKEkqP" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="5LjIHYW3e81">
    <property role="3GE5qa" value="generator" />
    <property role="TrG5h" value="TargetInjector" />
    <property role="19KtqR" value="true" />
    <property role="EcuMT" value="6652866544651788801" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="1qPaejjkJRF" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="25R3W" id="21bD4dVyEsJ">
    <property role="TrG5h" value="RuleCardinality" />
    <property role="3GE5qa" value="terms.references" />
    <property role="3F6X1D" value="2504845739424388719" />
    <ref role="1H5jkz" node="21bD4dVyEsL" resolve="ExactlyOne" />
    <node concept="2JgGob" id="21bD4dVyEsK" role="lGtFl">
      <property role="3scbB" value="5CkWgdpp3eY/string_name" />
      <property role="3sfsH" value="5CkWgdpp0p1/by_name" />
      <node concept="AxPO7" id="2b2ZYR3yDpJ" role="3lCyv">
        <property role="TrG5h" value="RuleCardinality" />
        <property role="3lZH7k" value="hrlZj6Q/derive_from_internal_value" />
        <property role="3GE5qa" value="terms.references" />
        <property role="3F6X1D" value="2504845739424388719" />
        <ref role="M4eZT" to="tpck:fKAOsGN" resolve="string" />
        <node concept="M4N5e" id="2b2ZYR3yDr8" role="M5hS2">
          <property role="1uS6qv" value="ExactlyOne" />
          <property role="1uS6qo" value="&gt;" />
        </node>
        <node concept="M4N5e" id="2b2ZYR3yDpK" role="M5hS2">
          <property role="1uS6qo" value="&gt;*" />
          <property role="1uS6qv" value="ZeroOrMore" />
        </node>
        <node concept="M4N5e" id="2b2ZYR3yDpO" role="M5hS2">
          <property role="1uS6qo" value="&gt;+" />
          <property role="1uS6qv" value="AtleastOne" />
        </node>
        <node concept="M4N5e" id="2b2ZYR3yDpL" role="M5hS2">
          <property role="1uS6qo" value="&gt;?" />
          <property role="1uS6qv" value="AtMostOne" />
        </node>
      </node>
    </node>
    <node concept="25R33" id="21bD4dVyEsL" role="25R1y">
      <property role="TrG5h" value="ExactlyOne" />
      <property role="1L1pqM" value="&gt;" />
      <property role="3tVfz5" value="2504845739424388808" />
      <ref role="2wpffI" node="2b2ZYR3yDr8" />
    </node>
    <node concept="25R33" id="21bD4dVyEsM" role="25R1y">
      <property role="TrG5h" value="ZeroOrMore" />
      <property role="1L1pqM" value="&gt;*" />
      <property role="3tVfz5" value="2504845739424388720" />
      <ref role="2wpffI" node="2b2ZYR3yDpK" />
    </node>
    <node concept="25R33" id="21bD4dVyEsN" role="25R1y">
      <property role="TrG5h" value="AtleastOne" />
      <property role="1L1pqM" value="&gt;+" />
      <property role="3tVfz5" value="2504845739424388724" />
      <ref role="2wpffI" node="2b2ZYR3yDpO" />
    </node>
    <node concept="25R33" id="21bD4dVyEsO" role="25R1y">
      <property role="TrG5h" value="AtMostOne" />
      <property role="1L1pqM" value="&gt;?" />
      <property role="3tVfz5" value="2504845739424388721" />
      <ref role="2wpffI" node="2b2ZYR3yDpL" />
    </node>
  </node>
</model>

