<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:0fbcf19f-c60b-479b-81cb-094b5b2b9f1d(metabnf.structure)" version="9">
  <persistence version="8" />
  <language namespace="c72da2b9-7cce-4447-8389-f407dc1158b7(jetbrains.mps.lang.structure)" />
  <devkit namespace="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  <import index="tpfo" modelUID="r:00000000-0000-4000-0000-011c89590518(jetbrains.mps.baseLanguage.regexp.structure)" version="0" />
  <import index="tpck" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" implicit="yes" />
  <import index="tpce" modelUID="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" version="0" implicit="yes" />
  <import index="6o2a" modelUID="r:0fbcf19f-c60b-479b-81cb-094b5b2b9f1d(metabnf.structure)" version="9" implicit="yes" />
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="2504845739423496082" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="grammar" />
    <property name="rootable" nameId="tpce.1096454100552" value="true" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="2504845739423551607" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="reference" />
      <property name="role" nameId="tpce.1071599776563" value="start" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="2504845739424006163" resolveInfo="NonterminalRule" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="2504845739423551605" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="rules" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="0..n" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="5689872735553247247" resolveInfo="IGrammarContent" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="2504845739423551602" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1169194658468" resolveInfo="INamedConcept" />
    </node>
  </root>
  <root type="tpce.InterfaceConceptDeclaration" typeId="tpce.1169125989551" id="2504845739423551604" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="INamedGrammarContent" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="content" />
    <node role="extends" roleId="tpce.1169127546356" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="5689872735553373668" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="5689872735553247247" resolveInfo="IGrammarContent" />
    </node>
    <node role="extends" roleId="tpce.1169127546356" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="2504845739423561980" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1169194658468" resolveInfo="INamedConcept" />
    </node>
  </root>
  <root type="tpce.InterfaceConceptDeclaration" typeId="tpce.1169125989551" id="2504845739423561714" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="INonterminalRule" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="rules.nonterminals" />
    <node role="extends" roleId="tpce.1169127546356" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="5689872735553409521" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="5689872735553409471" resolveInfo="IGrammarRule" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="2504845739423561804" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="ChoiceRule" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="|" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="rules.nonterminals" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="2504845739423561868" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="nonterminals" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="0..n" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="2504845739424324587" resolveInfo="NonterminalReference" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="2504845739423561805" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="2504845739423561714" resolveInfo="INonterminalRule" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="2504845739423561976" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="TerminalRule" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="&quot;" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="rules.terminals" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="2861244223630461677" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="regexp" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tpfo.1174510540317" resolveInfo="InlineRegexpExpression" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="2504845739423562001" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="2504845739423561979" resolveInfo="ITerminalRule" />
    </node>
  </root>
  <root type="tpce.InterfaceConceptDeclaration" typeId="tpce.1169125989551" id="2504845739423561979" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="ITerminalRule" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="rules.terminals" />
    <node role="extends" roleId="tpce.1169127546356" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="5689872735553409524" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="5689872735553409471" resolveInfo="IGrammarRule" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="2504845739424006163" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="NonterminalRule" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value=":" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="rules.nonterminals" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="2504845739424006198" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="terms" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="0..n" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="2504845739424006197" resolveInfo="ITerm" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="2504845739424006164" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="2504845739423561714" resolveInfo="INonterminalRule" />
    </node>
  </root>
  <root type="tpce.InterfaceConceptDeclaration" typeId="tpce.1169125989551" id="2504845739424006197" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="ITerm" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="terms" />
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="513220601742038498" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="indent" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983657063" resolveInfo="boolean" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="513220601742038557" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="newline" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983657063" resolveInfo="boolean" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="2504845739424006305" nodeInfo="ig">
    <property name="virtualPackage" nameId="tpck.1193676396447" value="terms" />
    <property name="name" nameId="tpck.1169194664001" value="Keyword" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="&quot;" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="2504845739424006306" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="2504845739424006197" resolveInfo="ITerm" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="2504845739424006313" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1169194658468" resolveInfo="INamedConcept" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="2504845739424324587" nodeInfo="ig">
    <property name="virtualPackage" nameId="tpck.1193676396447" value="terms.references" />
    <property name="name" nameId="tpck.1169194664001" value="NonterminalReference" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="2504845739424658192" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="card" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="2504845739424388719" resolveInfo="RuleCardinality" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="4939832016425377885" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="sep" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="2504845739424324590" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="reference" />
      <property name="role" nameId="tpce.1071599776563" value="rule" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="2504845739423561714" resolveInfo="INonterminalRule" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="6512940670976072619" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="2504845739424006197" resolveInfo="ITerm" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="4698798192894406230" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1169194658468" resolveInfo="INamedConcept" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="2504845739424362102" nodeInfo="ig">
    <property name="virtualPackage" nameId="tpck.1193676396447" value="terms" />
    <property name="name" nameId="tpck.1169194664001" value="Name" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="&lt;name&gt;" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="2504845739424362154" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="2504845739424006197" resolveInfo="ITerm" />
    </node>
  </root>
  <root type="tpce.EnumerationDataTypeDeclaration" typeId="tpce.1082978164219" id="2504845739424388719" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="RuleCardinality" />
    <property name="memberIdentifierPolicy" nameId="tpce.1197591154882" value="derive_from_internal_value" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="terms.references" />
    <link role="memberDataType" roleId="tpce.1083171729157" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="2504845739424388808" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="ExactlyOne" />
      <property name="externalValue" nameId="tpce.1083923523172" value="&gt;" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="2504845739424388720" nodeInfo="ig">
      <property name="externalValue" nameId="tpce.1083923523172" value="&gt;*" />
      <property name="internalValue" nameId="tpce.1083923523171" value="ZeroOrMore" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="2504845739424388724" nodeInfo="ig">
      <property name="externalValue" nameId="tpce.1083923523172" value="&gt;+" />
      <property name="internalValue" nameId="tpce.1083923523171" value="AtleastOne" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="2504845739424388721" nodeInfo="ig">
      <property name="externalValue" nameId="tpce.1083923523172" value="&gt;?" />
      <property name="internalValue" nameId="tpce.1083923523171" value="AtMostOne" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="8822712935563342996" nodeInfo="ig">
    <property name="virtualPackage" nameId="tpck.1193676396447" value="content" />
    <property name="name" nameId="tpck.1169194664001" value="EmptyLine" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="5689872735553373733" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="5689872735553247247" resolveInfo="IGrammarContent" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="8822712935563370119" nodeInfo="ig">
    <property name="virtualPackage" nameId="tpck.1193676396447" value="terms.references" />
    <property name="name" nameId="tpck.1169194664001" value="IdReference" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="Ref" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="8822712935563370173" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="reference" />
      <property name="role" nameId="tpce.1071599776563" value="Rule" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="2504845739423551604" resolveInfo="INamedGrammarContent" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="8822712935563370171" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="2504845739424006197" resolveInfo="ITerm" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="4698798192894529630" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1169194658468" resolveInfo="INamedConcept" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="4698798192895923555" nodeInfo="ig">
    <property name="virtualPackage" nameId="tpck.1193676396447" value="generator" />
    <property name="name" nameId="tpck.1169194664001" value="ImplementedInterface" />
    <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="auxiliary concept used in generation only" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="4698798192895923647" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1169194658468" resolveInfo="INamedConcept" />
    </node>
  </root>
  <root type="tpce.InterfaceConceptDeclaration" typeId="tpce.1169125989551" id="5689872735553247247" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="IGrammarContent" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="content" />
  </root>
  <root type="tpce.InterfaceConceptDeclaration" typeId="tpce.1169125989551" id="5689872735553409471" nodeInfo="ig">
    <property name="virtualPackage" nameId="tpck.1193676396447" value="rules" />
    <property name="name" nameId="tpck.1169194664001" value="IGrammarRule" />
    <node role="extends" roleId="tpce.1169127546356" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="5689872735553409472" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="2504845739423551604" resolveInfo="INamedGrammarContent" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="5689872735553437610" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="RuleGroup" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="{" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="content" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="5689872735553437613" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="rules" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="0..n" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="5689872735553247247" resolveInfo="IGrammarContent" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="5689872735553437611" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="2504845739423551604" resolveInfo="INamedGrammarContent" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="4939832016426343668" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="Comment" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="#" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="content" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="4939832016426343669" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="5689872735553247247" resolveInfo="IGrammarContent" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="4939832016426343674" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1169194658468" resolveInfo="INamedConcept" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="4939832016427306382" nodeInfo="ig">
    <property name="virtualPackage" nameId="tpck.1193676396447" value="terms" />
    <property name="name" nameId="tpck.1169194664001" value="Flag" />
    <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="Optional (toggle-able) keyword" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="[" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="1320136301544649452" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="1320136301544290935" resolveInfo="IPropertyTerm" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="4939832016427306444" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1169194658468" resolveInfo="INamedConcept" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="513220601743340168" nodeInfo="ig">
    <property name="virtualPackage" nameId="tpck.1193676396447" value="generator" />
    <property name="name" nameId="tpck.1169194664001" value="GenerationModel" />
    <property name="rootable" nameId="tpce.1096454100552" value="true" />
    <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="Helper node to support generation of multiple outputs" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="7520678199445943180" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="generator" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983657062" resolveInfo="integer" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="513220601743340228" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="grammar" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="2504845739423496082" resolveInfo="grammar" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="2738052631436817608" nodeInfo="ig">
    <property name="virtualPackage" nameId="tpck.1193676396447" value="terms.references" />
    <property name="name" nameId="tpck.1169194664001" value="TerminalReference" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="2738052631437369572" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="reference" />
      <property name="role" nameId="tpce.1071599776563" value="rule" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="2504845739423561979" resolveInfo="ITerminalRule" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="1320136301544290938" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="1320136301544290935" resolveInfo="IPropertyTerm" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="2738052631436817614" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1169194658468" resolveInfo="INamedConcept" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="8079142957352287788" nodeInfo="ig">
    <property name="virtualPackage" nameId="tpck.1193676396447" value="rules.terminals" />
    <property name="name" nameId="tpck.1169194664001" value="EnumRule" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="enum" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="8079142957352301444" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="values" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1..n" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="8079142957352287791" resolveInfo="EnumValue" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="8079142957352287789" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="2504845739423561979" resolveInfo="ITerminalRule" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="8079142957352287791" nodeInfo="ig">
    <property name="virtualPackage" nameId="tpck.1193676396447" value="rules.terminals" />
    <property name="name" nameId="tpck.1169194664001" value="EnumValue" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="8079142957352287792" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1169194658468" resolveInfo="INamedConcept" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1320136301544271573" nodeInfo="ig">
    <property name="virtualPackage" nameId="tpck.1193676396447" value="terms.properties" />
    <property name="name" nameId="tpck.1169194664001" value="BooleanProperty" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="bool" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="1320136301544290942" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="1320136301544290935" resolveInfo="IPropertyTerm" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="1320136301544390648" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1169194658468" resolveInfo="INamedConcept" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1320136301544282198" nodeInfo="ig">
    <property name="virtualPackage" nameId="tpck.1193676396447" value="terms.properties" />
    <property name="name" nameId="tpck.1169194664001" value="StringProperty" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="str" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="1320136301544290946" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="1320136301544290935" resolveInfo="IPropertyTerm" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="1320136301544390652" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1169194658468" resolveInfo="INamedConcept" />
    </node>
  </root>
  <root type="tpce.InterfaceConceptDeclaration" typeId="tpce.1169125989551" id="1320136301544290935" nodeInfo="ig">
    <property name="virtualPackage" nameId="tpck.1193676396447" value="terms.properties" />
    <property name="name" nameId="tpck.1169194664001" value="IPropertyTerm" />
    <node role="extends" roleId="tpce.1169127546356" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="1320136301544290936" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="2504845739424006197" resolveInfo="ITerm" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="4904612538406749820" nodeInfo="ig">
    <property name="virtualPackage" nameId="tpck.1193676396447" value="terms.properties" />
    <property name="name" nameId="tpck.1169194664001" value="IntegerProperty" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="int" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="4904612538406749872" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="1320136301544290935" resolveInfo="IPropertyTerm" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="4904612538406749877" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1169194658468" resolveInfo="INamedConcept" />
    </node>
  </root>
</model>

