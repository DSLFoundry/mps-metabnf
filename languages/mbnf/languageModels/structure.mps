<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:0fbcf19f-c60b-479b-81cb-094b5b2b9f1d(metabnf.structure)">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="1" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="tpfo" ref="r:00000000-0000-4000-0000-011c89590518(jetbrains.mps.baseLanguage.regexp.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="1082978164219" name="jetbrains.mps.lang.structure.structure.EnumerationDataTypeDeclaration" flags="ng" index="AxPO7">
        <property id="1197591154882" name="memberIdentifierPolicy" index="3lZH7k" />
        <reference id="1083171729157" name="memberDataType" index="M4eZT" />
        <child id="1083172003582" name="member" index="M5hS2" />
      </concept>
      <concept id="1083171877298" name="jetbrains.mps.lang.structure.structure.EnumerationMemberDeclaration" flags="ig" index="M4N5e">
        <property id="1083923523172" name="externalValue" index="1uS6qo" />
        <property id="1083923523171" name="internalValue" index="1uS6qv" />
      </concept>
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="4628067390765907488" name="conceptShortDescription" index="R4oN_" />
        <property id="5092175715804935370" name="conceptAlias" index="34LRSv" />
        <property id="1587916991969465369" name="conceptId" index="1pbfSe" />
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
        <reference id="1082985295845" name="dataType" index="AX2Wp" />
      </concept>
      <concept id="1071489288298" name="jetbrains.mps.lang.structure.structure.LinkDeclaration" flags="ig" index="1TJgyj">
        <property id="1071599776563" name="role" index="20kJfa" />
        <property id="1071599893252" name="sourceCardinality" index="20lbJX" />
        <property id="1071599937831" name="metaClass" index="20lmBu" />
        <reference id="1071599976176" name="target" index="20lvS9" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1TIwiD" id="2b2ZYR3vfui">
    <property role="TrG5h" value="grammar" />
    <property role="19KtqR" value="true" />
    <property role="1pbfSe" value="432015489" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="2b2ZYR3vt1R" role="1TKVEi">
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="start" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="2b2ZYR3xc0j" resolve="NonterminalRule" />
    </node>
    <node concept="1TJgyj" id="2b2ZYR3vt1P" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="rules" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="4VQvhHjPdwf" resolve="IGrammarContent" />
    </node>
    <node concept="PrWs8" id="2b2ZYR3vt1M" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="PlHQZ" id="2b2ZYR3vt1O">
    <property role="TrG5h" value="INamedGrammarContent" />
    <property role="3GE5qa" value="content" />
    <property role="1pbfSe" value="431959967" />
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
    <property role="1pbfSe" value="431949857" />
    <node concept="PrWs8" id="4VQvhHjPP7L" role="PrDN$">
      <ref role="PrY4T" node="4VQvhHjPP6Z" resolve="IGrammarRule" />
    </node>
  </node>
  <node concept="1TIwiD" id="2b2ZYR3vvxc">
    <property role="TrG5h" value="ChoiceRule" />
    <property role="34LRSv" value="|" />
    <property role="3GE5qa" value="rules.nonterminals" />
    <property role="1pbfSe" value="431949767" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="2b2ZYR3vvyc" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="nonterminals" />
      <property role="20lbJX" value="0..n" />
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
    <property role="1pbfSe" value="431949595" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="2uPbBoX8sFH" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="regexp" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="tpfo:h5Qi9ot" resolve="InlineRegexpExpression" />
    </node>
    <node concept="PrWs8" id="2b2ZYR3vv$h" role="PzmwI">
      <ref role="PrY4T" node="2b2ZYR3vvzV" resolve="ITerminalRule" />
    </node>
  </node>
  <node concept="PlHQZ" id="2b2ZYR3vvzV">
    <property role="TrG5h" value="ITerminalRule" />
    <property role="3GE5qa" value="rules.terminals" />
    <property role="1pbfSe" value="431949592" />
    <node concept="PrWs8" id="4VQvhHjPP7O" role="PrDN$">
      <ref role="PrY4T" node="4VQvhHjPP6Z" resolve="IGrammarRule" />
    </node>
  </node>
  <node concept="1TIwiD" id="2b2ZYR3xc0j">
    <property role="TrG5h" value="NonterminalRule" />
    <property role="34LRSv" value=":" />
    <property role="3GE5qa" value="rules.nonterminals" />
    <property role="1pbfSe" value="431505408" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="2b2ZYR3xc0Q" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="terms" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="2b2ZYR3xc0P" resolve="ITerm" />
    </node>
    <node concept="PrWs8" id="2b2ZYR3xc0k" role="PzmwI">
      <ref role="PrY4T" node="2b2ZYR3vvvM" resolve="INonterminalRule" />
    </node>
  </node>
  <node concept="PlHQZ" id="2b2ZYR3xc0P">
    <property role="TrG5h" value="ITerm" />
    <property role="3GE5qa" value="terms" />
    <property role="1pbfSe" value="431505374" />
    <node concept="1TJgyi" id="svkQGafLny" role="1TKVEl">
      <property role="TrG5h" value="indent" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyi" id="svkQGafLot" role="1TKVEl">
      <property role="TrG5h" value="newline" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
  </node>
  <node concept="1TIwiD" id="2b2ZYR3xc2x">
    <property role="3GE5qa" value="terms" />
    <property role="TrG5h" value="Keyword" />
    <property role="34LRSv" value="&quot;" />
    <property role="1pbfSe" value="431505266" />
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
    <property role="1pbfSe" value="431186984" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="2b2ZYR3zFcg" role="1TKVEl">
      <property role="TrG5h" value="card" />
      <ref role="AX2Wp" node="2b2ZYR3yDpJ" resolve="RuleCardinality" />
    </node>
    <node concept="1TJgyi" id="4idNKJH8I1t" role="1TKVEl">
      <property role="TrG5h" value="sep" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyj" id="2b2ZYR3ypJI" role="1TKVEi">
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="rule" />
      <property role="20lbJX" value="1" />
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
    <property role="1pbfSe" value="431149469" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="2b2ZYR3yyUE" role="PzmwI">
      <ref role="PrY4T" node="2b2ZYR3xc0P" resolve="ITerm" />
    </node>
  </node>
  <node concept="AxPO7" id="2b2ZYR3yDpJ">
    <property role="TrG5h" value="RuleCardinality" />
    <property role="3lZH7k" value="derive_from_internal_value" />
    <property role="3GE5qa" value="terms.references" />
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
  <node concept="1TIwiD" id="7DK$EIfvNik">
    <property role="3GE5qa" value="content" />
    <property role="TrG5h" value="EmptyLine" />
    <property role="1pbfSe" value="166709055" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="4VQvhHjPGo_" role="PzmwI">
      <ref role="PrY4T" node="4VQvhHjPdwf" resolve="IGrammarContent" />
    </node>
  </node>
  <node concept="1TIwiD" id="7DK$EIfvTU7">
    <property role="3GE5qa" value="terms.references" />
    <property role="TrG5h" value="IdReference" />
    <property role="34LRSv" value="Ref" />
    <property role="1pbfSe" value="166736178" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="7DK$EIfvTUX" role="1TKVEi">
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="Rule" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="2b2ZYR3vt1O" resolve="INamedGrammarContent" />
    </node>
    <node concept="PrWs8" id="7DK$EIfvTUV" role="PzmwI">
      <ref role="PrY4T" node="2b2ZYR3xc0P" resolve="ITerm" />
    </node>
    <node concept="PrWs8" id="44Pv0YAIt1u" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="44Pv0YANLlz">
    <property role="3GE5qa" value="generator" />
    <property role="TrG5h" value="ImplementedInterface" />
    <property role="R4oN_" value="auxiliary concept used in generation only" />
    <property role="1pbfSe" value="402353806" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="44Pv0YANLmZ" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="PlHQZ" id="4VQvhHjPdwf">
    <property role="TrG5h" value="IGrammarContent" />
    <property role="3GE5qa" value="content" />
    <property role="1pbfSe" value="1563732694" />
  </node>
  <node concept="PlHQZ" id="4VQvhHjPP6Z">
    <property role="3GE5qa" value="rules" />
    <property role="TrG5h" value="IGrammarRule" />
    <property role="1pbfSe" value="1563570470" />
    <node concept="PrWs8" id="4VQvhHjPP70" role="PrDN$">
      <ref role="PrY4T" node="2b2ZYR3vt1O" resolve="INamedGrammarContent" />
    </node>
  </node>
  <node concept="1TIwiD" id="4VQvhHjPVYE">
    <property role="TrG5h" value="RuleGroup" />
    <property role="34LRSv" value="{" />
    <property role="3GE5qa" value="content" />
    <property role="1pbfSe" value="1563542331" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="4VQvhHjPVYH" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="rules" />
      <property role="20lbJX" value="0..n" />
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
    <property role="1pbfSe" value="834628607" />
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
    <property role="1pbfSe" value="835591321" />
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
    <property role="1pbfSe" value="292701683" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="6xuOfBzZZec" role="1TKVEl">
      <property role="TrG5h" value="generator" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyj" id="svkQGakJb4" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="grammar" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="2b2ZYR3vfui" resolve="grammar" />
    </node>
  </node>
  <node concept="1TIwiD" id="2nZx5M97nj8">
    <property role="3GE5qa" value="terms.references" />
    <property role="TrG5h" value="TerminalReference" />
    <property role="1pbfSe" value="1357055708" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="2nZx5M99u3$" role="1TKVEi">
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="rule" />
      <property role="20lbJX" value="1" />
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
    <property role="1pbfSe" value="1588846562" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="70uSrrI_je4" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="values" />
      <property role="20lbJX" value="1..n" />
      <ref role="20lvS9" node="70uSrrI_fSJ" resolve="EnumValue" />
    </node>
    <node concept="PrWs8" id="70uSrrI_fSH" role="PzmwI">
      <ref role="PrY4T" node="2b2ZYR3vvzV" resolve="ITerminalRule" />
    </node>
  </node>
  <node concept="1TIwiD" id="70uSrrI_fSJ">
    <property role="3GE5qa" value="rules.terminals" />
    <property role="TrG5h" value="EnumValue" />
    <property role="1pbfSe" value="1588846565" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="70uSrrI_fSK" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="19i4fzcDeVl">
    <property role="3GE5qa" value="terms.properties" />
    <property role="TrG5h" value="BooleanProperty" />
    <property role="34LRSv" value="bool" />
    <property role="1pbfSe" value="554238003" />
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
    <property role="1pbfSe" value="554227378" />
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
    <property role="1pbfSe" value="554218641" />
    <node concept="PrWs8" id="19i4fzcDjDS" role="PrDN$">
      <ref role="PrY4T" node="2b2ZYR3xc0P" resolve="ITerm" />
    </node>
  </node>
  <node concept="1TIwiD" id="4ggFLSKEkpW">
    <property role="3GE5qa" value="terms.properties" />
    <property role="TrG5h" value="IntegerProperty" />
    <property role="34LRSv" value="int" />
    <property role="1pbfSe" value="1958344090" />
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
    <property role="1pbfSe" value="408984800" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="1qPaejjkJRF" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
</model>

