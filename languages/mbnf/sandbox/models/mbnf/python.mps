<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:b93f76a9-bff1-4cec-bcda-42793f5523c5(mbnf.python)">
  <persistence version="8" />
  <language namespace="9c03c641-469f-49e7-aeed-44a3d19b7253(metabnf)" />
  <language namespace="daafa647-f1f7-4b0b-b096-69cd7c8408c0(jetbrains.mps.baseLanguage.regexp)" />
  <language namespace="7866978e-a0f0-4cc7-81bc-4d213d9375e1(jetbrains.mps.lang.smodel)" />
  <import index="6o2a" modelUID="r:0fbcf19f-c60b-479b-81cb-094b5b2b9f1d(metabnf.structure)" version="11" implicit="yes" />
  <import index="tpck" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" implicit="yes" />
  <import index="tpfo" modelUID="r:00000000-0000-4000-0000-011c89590518(jetbrains.mps.baseLanguage.regexp.structure)" version="0" implicit="yes" />
  <root type="6o2a.grammar" typeId="6o2a.2504845739423496082" id="5689872735555037548" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="Python" />
    <link role="start" roleId="6o2a.2504845739423551607" targetNodeId="5689872735555037974" resolveInfo="program" />
    <node role="rules" roleId="6o2a.2504845739423551605" type="6o2a.Comment" typeId="6o2a.4939832016426343668" id="4939832016426431133" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="PoC definition of python grammar. Based on Python 3. w.i.p." />
    </node>
    <node role="rules" roleId="6o2a.2504845739423551605" type="6o2a.EmptyLine" typeId="6o2a.8822712935563342996" id="4939832016426431595" nodeInfo="ng" />
    <node role="rules" roleId="6o2a.2504845739423551605" type="6o2a.RuleGroup" typeId="6o2a.5689872735553437610" id="5689872735555042763" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="terminals" />
      <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.TerminalRule" typeId="6o2a.2504845739423561976" id="5689872735555042808" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="NAME" />
        <node role="regexp" roleId="6o2a.2861244223630461677" type="tpfo.InlineRegexpExpression" typeId="tpfo.1174510540317" id="2861244223630575272" nodeInfo="nn">
          <node role="regexp" roleId="tpfo.1174510571016" type="tpfo.SeqRegexp" typeId="tpfo.1174484562151" id="2861244223630575273" nodeInfo="ng">
            <node role="right" roleId="tpfo.1174485181039" type="tpfo.StarRegexp" typeId="tpfo.1174482808826" id="2861244223630575274" nodeInfo="ng">
              <node role="regexp" roleId="tpfo.1174485243418" type="tpfo.PositiveSymbolClassRegexp" typeId="tpfo.1174554211468" id="2861244223630575275" nodeInfo="ng">
                <node role="part" roleId="tpfo.1174557628217" type="tpfo.CharacterSymbolClassPart" typeId="tpfo.1174557878319" id="2861244223630575276" nodeInfo="ng">
                  <property name="character" nameId="tpfo.1174557887320" value="_" />
                </node>
                <node role="part" roleId="tpfo.1174557628217" type="tpfo.IntervalSymbolClassPart" typeId="tpfo.1174558301835" id="2861244223630575277" nodeInfo="ng">
                  <property name="start" nameId="tpfo.1174558315290" value="a" />
                  <property name="end" nameId="tpfo.1174558317822" value="z" />
                </node>
                <node role="part" roleId="tpfo.1174557628217" type="tpfo.IntervalSymbolClassPart" typeId="tpfo.1174558301835" id="2861244223630575278" nodeInfo="ng">
                  <property name="start" nameId="tpfo.1174558315290" value="A" />
                  <property name="end" nameId="tpfo.1174558317822" value="Z" />
                </node>
                <node role="part" roleId="tpfo.1174557628217" type="tpfo.IntervalSymbolClassPart" typeId="tpfo.1174558301835" id="2861244223630575279" nodeInfo="ng">
                  <property name="start" nameId="tpfo.1174558315290" value="0" />
                  <property name="end" nameId="tpfo.1174558317822" value="9" />
                </node>
              </node>
            </node>
            <node role="left" roleId="tpfo.1174485176897" type="tpfo.PositiveSymbolClassRegexp" typeId="tpfo.1174554211468" id="2861244223630575280" nodeInfo="ng">
              <node role="part" roleId="tpfo.1174557628217" type="tpfo.CharacterSymbolClassPart" typeId="tpfo.1174557878319" id="2861244223630575281" nodeInfo="ng">
                <property name="character" nameId="tpfo.1174557887320" value="_" />
              </node>
              <node role="part" roleId="tpfo.1174557628217" type="tpfo.IntervalSymbolClassPart" typeId="tpfo.1174558301835" id="2861244223630575282" nodeInfo="ng">
                <property name="start" nameId="tpfo.1174558315290" value="a" />
                <property name="end" nameId="tpfo.1174558317822" value="z" />
              </node>
              <node role="part" roleId="tpfo.1174557628217" type="tpfo.IntervalSymbolClassPart" typeId="tpfo.1174558301835" id="2861244223630575283" nodeInfo="ng">
                <property name="start" nameId="tpfo.1174558315290" value="A" />
                <property name="end" nameId="tpfo.1174558317822" value="Z" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.TerminalRule" typeId="6o2a.2504845739423561976" id="5689872735555054031" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="DOT" />
        <node role="regexp" roleId="6o2a.2861244223630461677" type="tpfo.InlineRegexpExpression" typeId="tpfo.1174510540317" id="2861244223630575038" nodeInfo="nn">
          <node role="regexp" roleId="tpfo.1174510571016" type="tpfo.PositiveSymbolClassRegexp" typeId="tpfo.1174554211468" id="2861244223630575039" nodeInfo="ng">
            <node role="part" roleId="tpfo.1174557628217" type="tpfo.CharacterSymbolClassPart" typeId="tpfo.1174557878319" id="2861244223630575040" nodeInfo="ng">
              <property name="character" nameId="tpfo.1174557887320" value="." />
            </node>
          </node>
        </node>
      </node>
      <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.TerminalRule" typeId="6o2a.2504845739423561976" id="5689872735555054188" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="ELLIPSIS" />
        <node role="regexp" roleId="6o2a.2861244223630461677" type="tpfo.InlineRegexpExpression" typeId="tpfo.1174510540317" id="2861244223630575002" nodeInfo="nn">
          <node role="regexp" roleId="tpfo.1174510571016" type="tpfo.SeqRegexp" typeId="tpfo.1174484562151" id="2861244223630575003" nodeInfo="ng">
            <node role="right" roleId="tpfo.1174485181039" type="tpfo.SeqRegexp" typeId="tpfo.1174484562151" id="2861244223630575004" nodeInfo="ng">
              <node role="left" roleId="tpfo.1174485176897" type="tpfo.PositiveSymbolClassRegexp" typeId="tpfo.1174554211468" id="2861244223630575005" nodeInfo="ng">
                <node role="part" roleId="tpfo.1174557628217" type="tpfo.CharacterSymbolClassPart" typeId="tpfo.1174557878319" id="2861244223630575006" nodeInfo="ng">
                  <property name="character" nameId="tpfo.1174557887320" value="." />
                </node>
              </node>
              <node role="right" roleId="tpfo.1174485181039" type="tpfo.PositiveSymbolClassRegexp" typeId="tpfo.1174554211468" id="2861244223630575007" nodeInfo="ng">
                <node role="part" roleId="tpfo.1174557628217" type="tpfo.CharacterSymbolClassPart" typeId="tpfo.1174557878319" id="2861244223630575008" nodeInfo="ng">
                  <property name="character" nameId="tpfo.1174557887320" value="." />
                </node>
              </node>
            </node>
            <node role="left" roleId="tpfo.1174485176897" type="tpfo.PositiveSymbolClassRegexp" typeId="tpfo.1174554211468" id="2861244223630575009" nodeInfo="ng">
              <node role="part" roleId="tpfo.1174557628217" type="tpfo.CharacterSymbolClassPart" typeId="tpfo.1174557878319" id="2861244223630575010" nodeInfo="ng">
                <property name="character" nameId="tpfo.1174557887320" value="." />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.TerminalRule" typeId="6o2a.2504845739423561976" id="7558265857383178347" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="STRING" />
        <node role="regexp" roleId="6o2a.2861244223630461677" type="tpfo.InlineRegexpExpression" typeId="tpfo.1174510540317" id="7558265857383178349" nodeInfo="nn">
          <node role="regexp" roleId="tpfo.1174510571016" type="tpfo.StringLiteralRegexp" typeId="tpfo.1174482753837" id="7558265857383178424" nodeInfo="ng">
            <property name="text" nameId="tpfo.1174482761807" value="todo" />
          </node>
        </node>
      </node>
      <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.TerminalRule" typeId="6o2a.2504845739423561976" id="7558265857383179550" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="NUMBER" />
        <node role="regexp" roleId="6o2a.2861244223630461677" type="tpfo.InlineRegexpExpression" typeId="tpfo.1174510540317" id="7558265857383179552" nodeInfo="nn">
          <node role="regexp" roleId="tpfo.1174510571016" type="tpfo.StringLiteralRegexp" typeId="tpfo.1174482753837" id="7558265857383179610" nodeInfo="ng">
            <property name="text" nameId="tpfo.1174482761807" value="todo" />
          </node>
        </node>
      </node>
      <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.EmptyLine" typeId="6o2a.8822712935563342996" id="7558265857383179503" nodeInfo="ng" />
      <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="7558265857383157339" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="True" />
        <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="7558265857383157376" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="True" />
        </node>
      </node>
      <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="7558265857383157420" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="False" />
        <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="7558265857383157459" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="False" />
        </node>
      </node>
      <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="7558265857383158564" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="None" />
        <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="7558265857383158605" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="None" />
        </node>
      </node>
      <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="7558265857383178478" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="number" />
        <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.TerminalReference" typeId="6o2a.2738052631436817608" id="7558265857383178525" nodeInfo="ng">
          <link role="rule" roleId="6o2a.2738052631437369572" targetNodeId="7558265857383179550" resolveInfo="NUMBER" />
        </node>
      </node>
      <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="7558265857383179622" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="string" />
        <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.TerminalReference" typeId="6o2a.2738052631436817608" id="7558265857383179623" nodeInfo="ng">
          <link role="rule" roleId="6o2a.2738052631437369572" targetNodeId="7558265857383178347" resolveInfo="STRING" />
        </node>
      </node>
      <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="7558265857383184045" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="strings" />
        <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="7558265857383184098" nodeInfo="ng">
          <property name="card" nameId="6o2a.2504845739424658192" value="AtleastOne" />
          <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="7558265857383179622" resolveInfo="string" />
        </node>
      </node>
      <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="5689872735555099105" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="name" />
        <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.TerminalReference" typeId="6o2a.2738052631436817608" id="2738052631437668059" nodeInfo="ng">
          <link role="rule" roleId="6o2a.2738052631437369572" targetNodeId="5689872735555042808" resolveInfo="NAME" />
        </node>
      </node>
      <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="5689872735555075828" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="simple_dot" />
        <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.TerminalReference" typeId="6o2a.2738052631436817608" id="2738052631437668062" nodeInfo="ng">
          <link role="rule" roleId="6o2a.2738052631437369572" targetNodeId="5689872735555054031" resolveInfo="DOT" />
        </node>
      </node>
      <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="5689872735555075848" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="ellipsis" />
        <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.TerminalReference" typeId="6o2a.2738052631436817608" id="2738052631437668065" nodeInfo="ng">
          <link role="rule" roleId="6o2a.2738052631437369572" targetNodeId="5689872735555054188" resolveInfo="ELLIPSIS" />
        </node>
      </node>
      <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.ChoiceRule" typeId="6o2a.2504845739423561804" id="7558265857383187027" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="constant" />
        <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="7558265857383187082" nodeInfo="ng">
          <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="7558265857383157339" resolveInfo="True" />
        </node>
        <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="7558265857383187084" nodeInfo="ng">
          <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="7558265857383157420" resolveInfo="False" />
        </node>
        <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="7558265857383187087" nodeInfo="ng">
          <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="7558265857383158564" resolveInfo="None" />
        </node>
        <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="7558265857383187223" nodeInfo="ng">
          <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="5689872735555075848" resolveInfo="ellipsis" />
        </node>
        <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="7558265857383187228" nodeInfo="ng">
          <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="7558265857383184045" resolveInfo="strings" />
        </node>
        <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="7558265857383188187" nodeInfo="ng">
          <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="7558265857383178478" resolveInfo="number" />
        </node>
      </node>
    </node>
    <node role="rules" roleId="6o2a.2504845739423551605" type="6o2a.EmptyLine" typeId="6o2a.8822712935563342996" id="5689872735555098900" nodeInfo="ng" />
    <node role="rules" roleId="6o2a.2504845739423551605" type="6o2a.RuleGroup" typeId="6o2a.5689872735553437610" id="4939832016426439720" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="operators" />
      <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.ChoiceRule" typeId="6o2a.2504845739423561804" id="4939832016426188462" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="bin_op" />
        <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="4939832016426189447" nodeInfo="ng">
          <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016426189421" resolveInfo="logical_op" />
        </node>
        <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="4939832016426196689" nodeInfo="ng">
          <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016426189930" resolveInfo="comparison_op" />
        </node>
        <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="4939832016426201271" nodeInfo="ng">
          <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016426201238" resolveInfo="bitwise_op" />
        </node>
        <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="4939832016426204082" nodeInfo="ng">
          <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016426201914" resolveInfo="arithmetic_op" />
        </node>
      </node>
      <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.EmptyLine" typeId="6o2a.8822712935563342996" id="4939832016426444857" nodeInfo="ng" />
      <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.RuleGroup" typeId="6o2a.5689872735553437610" id="4939832016426188947" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="logical" />
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.ChoiceRule" typeId="6o2a.2504845739423561804" id="4939832016426189421" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="logical_op" />
          <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="4939832016426189428" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016426188958" resolveInfo="log_and" />
          </node>
          <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="4939832016426189430" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016426188967" resolveInfo="log_or" />
          </node>
        </node>
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="4939832016426188958" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="log_and" />
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="4939832016426188961" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="and" />
          </node>
        </node>
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="4939832016426188967" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="log_or" />
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="4939832016426188972" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="or" />
          </node>
        </node>
      </node>
      <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.RuleGroup" typeId="6o2a.5689872735553437610" id="4939832016426201086" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="bitwise" />
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.ChoiceRule" typeId="6o2a.2504845739423561804" id="4939832016426201238" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="bitwise_op" />
          <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="4939832016426201251" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016426198991" resolveInfo="bw_and" />
          </node>
          <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="4939832016426201253" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016426198976" resolveInfo="bw_or_" />
          </node>
          <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="4939832016426201256" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016426199008" resolveInfo="bw_xor" />
          </node>
          <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="4939832016426201260" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016426198941" resolveInfo="bw_shl" />
          </node>
          <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="4939832016426201265" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016426200998" resolveInfo="bw_shr" />
          </node>
        </node>
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="4939832016426198976" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="bw_or_" />
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="4939832016426198977" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="|" />
          </node>
        </node>
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="4939832016426198991" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="bw_and" />
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="4939832016426198992" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="&amp;" />
          </node>
        </node>
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="4939832016426199008" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="bw_xor" />
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="4939832016426199009" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="^" />
          </node>
        </node>
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="4939832016426198941" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="bw_shl" />
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="4939832016426198942" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="&lt;&lt;" />
          </node>
        </node>
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="4939832016426200998" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="bw_shr" />
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="4939832016426200999" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="&gt;&gt;" />
          </node>
        </node>
      </node>
      <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.RuleGroup" typeId="6o2a.5689872735553437610" id="4939832016426189466" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="comparison" />
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.ChoiceRule" typeId="6o2a.2504845739423561804" id="4939832016426189930" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="comparison_op" />
          <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="4939832016426194715" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016426190387" resolveInfo="less_op" />
          </node>
          <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="4939832016426194717" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016426190847" resolveInfo="more_op" />
          </node>
          <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="4939832016426195192" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016426190855" resolveInfo="equal_op" />
          </node>
          <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="4939832016426195669" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016426190865" resolveInfo="atleast_op" />
          </node>
          <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="4939832016426195674" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016426192705" resolveInfo="atmost_op" />
          </node>
          <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="4939832016426196155" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016426193655" resolveInfo="not_equal_op" />
          </node>
          <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="4939832016426196162" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016426192719" resolveInfo="notequal_op" />
          </node>
          <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="4939832016426196647" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016426194135" resolveInfo="in_op" />
          </node>
          <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="4939832016426196656" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016426194155" resolveInfo="notin_op" />
          </node>
          <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="4939832016426196666" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016426194643" resolveInfo="is_op" />
          </node>
          <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="4939832016426196677" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016426194689" resolveInfo="isnot_op" />
          </node>
        </node>
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="4939832016426190387" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="less_op" />
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="4939832016426190841" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="&lt;" />
          </node>
        </node>
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="4939832016426190847" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="more_op" />
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="4939832016426190848" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="&gt;" />
          </node>
        </node>
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="4939832016426190855" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="equal_op" />
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="4939832016426190856" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="==" />
          </node>
        </node>
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="4939832016426190865" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="atleast_op" />
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="4939832016426190866" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="&gt;=" />
          </node>
        </node>
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="4939832016426192705" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="atmost_op" />
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="4939832016426192706" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="&lt;=" />
          </node>
        </node>
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="4939832016426192719" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="notequal_op" />
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="4939832016426192720" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="&lt;&gt;" />
          </node>
        </node>
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="4939832016426193655" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="not_equal_op" />
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="4939832016426193656" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="!=" />
          </node>
        </node>
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="4939832016426194135" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="in_op" />
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="4939832016426194136" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="in" />
          </node>
        </node>
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="4939832016426194155" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="notin_op" />
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="4939832016426194156" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="not in" />
          </node>
        </node>
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="4939832016426194643" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="is_op" />
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="4939832016426194644" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="is" />
          </node>
        </node>
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="4939832016426194689" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="isnot_op" />
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="4939832016426194690" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="is not" />
          </node>
        </node>
      </node>
      <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.RuleGroup" typeId="6o2a.5689872735553437610" id="4939832016426201843" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="arithmetic" />
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.ChoiceRule" typeId="6o2a.2504845739423561804" id="4939832016426201914" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="arithmetic_op" />
          <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="4939832016426204047" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016426201921" resolveInfo="add_op" />
          </node>
          <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="4939832016426204049" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016426201925" resolveInfo="sub_op" />
          </node>
          <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="4939832016426204052" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016426201929" resolveInfo="mul_op" />
          </node>
          <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="4939832016426204056" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016426201934" resolveInfo="div_op" />
          </node>
          <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="4939832016426204061" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016426202444" resolveInfo="divop" />
          </node>
          <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="4939832016426204067" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016426202451" resolveInfo="mod_op" />
          </node>
          <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="4939832016426204074" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016426202459" resolveInfo="exp_op" />
          </node>
        </node>
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="4939832016426201921" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="add_op" />
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="4939832016426203516" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="+" />
          </node>
        </node>
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="4939832016426201925" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="sub_op" />
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="4939832016426203519" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="-" />
          </node>
        </node>
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="4939832016426201929" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="mul_op" />
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="4939832016426203521" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="*" />
          </node>
        </node>
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="4939832016426201934" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="div_op" />
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="4939832016426203523" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="/" />
          </node>
        </node>
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="4939832016426202444" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="divop" />
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="4939832016426203525" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="//" />
          </node>
        </node>
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="4939832016426202451" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="mod_op" />
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="4939832016426203527" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="%" />
          </node>
        </node>
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="4939832016426202459" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="exp_op" />
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="4939832016426203529" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="**" />
          </node>
        </node>
      </node>
      <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.RuleGroup" typeId="6o2a.5689872735553437610" id="4939832016426205245" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="unary" />
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.ChoiceRule" typeId="6o2a.2504845739423561804" id="4939832016426205340" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="unary_op" />
          <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="4939832016426206504" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016426205351" resolveInfo="un_not" />
          </node>
          <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="4939832016426206506" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016426205907" resolveInfo="un_neg" />
          </node>
          <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="4939832016426206509" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016426205361" resolveInfo="un_plus" />
          </node>
          <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="4939832016426206513" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016426205368" resolveInfo="un_minus" />
          </node>
        </node>
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="4939832016426205351" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="un_not" />
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="4939832016426205355" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="not" />
          </node>
        </node>
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="4939832016426205907" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="un_neg" />
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="4939832016426205908" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="~" />
          </node>
        </node>
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="4939832016426205361" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="un_plus" />
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="4939832016426205362" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="+" />
          </node>
        </node>
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="4939832016426205368" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="un_minus" />
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="4939832016426205369" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="-" />
          </node>
        </node>
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="4939832016426207283" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="un_star" />
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="4939832016426207284" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="*" />
          </node>
        </node>
      </node>
      <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.EmptyLine" typeId="6o2a.8822712935563342996" id="4939832016426444129" nodeInfo="ng" />
      <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.RuleGroup" typeId="6o2a.5689872735553437610" id="5689872735555067637" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="inplace" />
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="5689872735555060431" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="add_assign" />
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="5689872735555060671" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="+=" />
          </node>
        </node>
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="5689872735555060725" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="sub_assign" />
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="5689872735555060726" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="-=" />
          </node>
        </node>
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="5689872735555060733" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="mul_assign" />
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="5689872735555060734" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="*=" />
          </node>
        </node>
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="5689872735555060743" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="div_assign" />
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="5689872735555060744" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="/=" />
          </node>
        </node>
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="5689872735555060755" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="mod_assign" />
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="5689872735555060756" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="%=" />
          </node>
        </node>
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="5689872735555060769" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="and_assign" />
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="5689872735555060770" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="&amp;=" />
          </node>
        </node>
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="5689872735555061031" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="_or_assign" />
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="5689872735555061032" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="|=" />
          </node>
        </node>
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="5689872735555061297" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="xor_assign" />
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="5689872735555061298" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="^=" />
          </node>
        </node>
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="5689872735555061567" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="shl_assign" />
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="5689872735555061568" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="&lt;&lt;=" />
          </node>
        </node>
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="5689872735555061589" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="shr_assign" />
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="5689872735555061590" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="&gt;&gt;=" />
          </node>
        </node>
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="5689872735555062125" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="exp_assign" />
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="5689872735555062126" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="**=" />
          </node>
        </node>
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="5689872735555062151" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="divassign" />
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="5689872735555062152" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="//=" />
          </node>
        </node>
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.ChoiceRule" typeId="6o2a.2504845739423561804" id="5689872735555059954" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="augassign" />
          <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="5689872735555062953" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="5689872735555060431" resolveInfo="add_assign" />
          </node>
          <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="5689872735555062955" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="5689872735555060725" resolveInfo="sub_assign" />
          </node>
          <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="5689872735555062958" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="5689872735555060733" resolveInfo="mul_assign" />
          </node>
          <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="5689872735555062962" nodeInfo="ng">
            <property name="card" nameId="6o2a.2504845739424658192" value="ExactlyOne" />
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="5689872735555060743" resolveInfo="div_assign" />
          </node>
          <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="5689872735555062973" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="5689872735555060755" resolveInfo="mod_assign" />
          </node>
          <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="5689872735555062980" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="5689872735555060769" resolveInfo="and_assign" />
          </node>
          <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="5689872735555062988" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="5689872735555061031" resolveInfo="_or_assign" />
          </node>
          <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="5689872735555062997" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="5689872735555061297" resolveInfo="xor_assign" />
          </node>
          <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="5689872735555063007" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="5689872735555061567" resolveInfo="shl_assign" />
          </node>
          <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="5689872735555063018" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="5689872735555061589" resolveInfo="shr_assign" />
          </node>
          <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="5689872735555063030" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="5689872735555062125" resolveInfo="exp_assign" />
          </node>
          <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="5689872735555515565" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="5689872735555062151" resolveInfo="divassign" />
          </node>
        </node>
      </node>
    </node>
    <node role="rules" roleId="6o2a.2504845739423551605" type="6o2a.EmptyLine" typeId="6o2a.8822712935563342996" id="4939832016426442473" nodeInfo="ng" />
    <node role="rules" roleId="6o2a.2504845739423551605" type="6o2a.RuleGroup" typeId="6o2a.5689872735553437610" id="5689872735555045400" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="expr" />
      <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.Comment" typeId="6o2a.4939832016426343668" id="4939832016426432734" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="Lots of work required here. Ideally we do not want to encode priority into the grammar rules," />
      </node>
      <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.Comment" typeId="6o2a.4939832016426343668" id="4939832016426432990" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="but use a more expressive mechanism instead. Eventually we want the generator to automatically" />
      </node>
      <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.Comment" typeId="6o2a.4939832016426343668" id="4939832016426433248" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="generate the rebalancing and left/right-transform behaviour to ensure proper textual usability." />
      </node>
      <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.Comment" typeId="6o2a.4939832016426343668" id="4939832016426452417" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="This requires several extensions to the mbnf language." />
      </node>
      <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.EmptyLine" typeId="6o2a.8822712935563342996" id="4939832016426442276" nodeInfo="ng" />
      <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="5689872735555045633" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="testlist" />
        <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="7558265857383142159" nodeInfo="ng">
          <property name="card" nameId="6o2a.2504845739424658192" value="AtleastOne" />
          <property name="sep" nameId="6o2a.4939832016425377885" value=", " />
          <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016425258804" resolveInfo="test" />
        </node>
      </node>
      <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.Comment" typeId="6o2a.4939832016426343668" id="3164669072550699261" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="We need some additional constraints on this one" />
      </node>
      <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.Comment" typeId="6o2a.4939832016426343668" id="3164669072550699521" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="Python grammar restricts this to star_expr" />
      </node>
      <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="5689872735555058043" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="exprlist" />
        <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="3164669072550700792" nodeInfo="ng">
          <property name="card" nameId="6o2a.2504845739424658192" value="AtleastOne" />
          <property name="sep" nameId="6o2a.4939832016425377885" value=", " />
          <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016425276350" resolveInfo="expr" />
        </node>
      </node>
      <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="5689872735555046045" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="yield_expr" />
        <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="7558265857383141245" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="yield" />
        </node>
        <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="7558265857383141251" nodeInfo="ng">
          <property name="card" nameId="6o2a.2504845739424658192" value="AtMostOne" />
          <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="5689872735555045633" resolveInfo="testlist" />
        </node>
      </node>
      <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.EmptyLine" typeId="6o2a.8822712935563342996" id="4939832016426437161" nodeInfo="ng" />
      <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.ChoiceRule" typeId="6o2a.2504845739423561804" id="4939832016425276350" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="expr" />
        <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="4939832016426207959" nodeInfo="ng">
          <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016426188450" resolveInfo="binary_expr" />
        </node>
        <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="4939832016426207961" nodeInfo="ng">
          <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016426206626" resolveInfo="unary_expr" />
        </node>
        <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="7558265857383143148" nodeInfo="ng">
          <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="7558265857383221104" resolveInfo="trailer_expr" />
        </node>
      </node>
      <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.EmptyLine" typeId="6o2a.8822712935563342996" id="4939832016426437447" nodeInfo="ng" />
      <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.ChoiceRule" typeId="6o2a.2504845739423561804" id="4939832016425258804" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="test" />
        <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="4939832016426436735" nodeInfo="ng">
          <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016426434879" resolveInfo="ternary_expr" />
        </node>
        <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="4939832016426436737" nodeInfo="ng">
          <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016426331902" resolveInfo="lambdef" />
        </node>
        <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="4939832016426436740" nodeInfo="ng">
          <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016425276350" resolveInfo="expr" />
        </node>
      </node>
      <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="4939832016426331902" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="lambdef" />
        <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="4939832016426332569" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="lambda" />
        </node>
        <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="4939832016426332574" nodeInfo="ng">
          <property name="card" nameId="6o2a.2504845739424658192" value="AtMostOne" />
          <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016425296160" resolveInfo="varargslist" />
        </node>
        <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="4939832016426332582" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value=":" />
        </node>
        <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="4939832016426333140" nodeInfo="ng">
          <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016425258804" resolveInfo="test" />
        </node>
      </node>
      <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="4939832016426434879" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="ternary_expr" />
        <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="4939832016426435570" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="TrueValue" />
          <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016425276350" resolveInfo="expr" />
        </node>
        <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="4939832016426435576" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="if" />
        </node>
        <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="4939832016426435584" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="condition" />
          <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016425276350" resolveInfo="expr" />
        </node>
        <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="4939832016426435594" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="else" />
        </node>
        <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="4939832016426436167" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="FalseValue" />
          <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016425258804" resolveInfo="test" />
        </node>
      </node>
      <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.ChoiceRule" typeId="6o2a.2504845739423561804" id="7558265857383201453" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="test_nocond" />
        <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="7558265857383201525" nodeInfo="ng">
          <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016425276350" resolveInfo="expr" />
        </node>
        <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="7558265857383204580" nodeInfo="ng">
          <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="7558265857383201600" resolveInfo="lambdef_nocond" />
        </node>
      </node>
      <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="7558265857383201600" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="lambdef_nocond" />
        <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="7558265857383202629" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="lambda" />
        </node>
        <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="7558265857383202634" nodeInfo="ng">
          <property name="card" nameId="6o2a.2504845739424658192" value="AtMostOne" />
          <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016425296160" resolveInfo="varargslist" />
        </node>
        <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="7558265857383203602" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value=":" />
        </node>
        <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="7558265857383203612" nodeInfo="ng">
          <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="7558265857383201453" resolveInfo="test_nocond" />
        </node>
      </node>
      <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.EmptyLine" typeId="6o2a.8822712935563342996" id="7558265857383200354" nodeInfo="ng" />
      <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="4939832016426188450" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="binary_expr" />
        <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="4939832016426188452" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="left" />
          <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016425276350" resolveInfo="expr" />
        </node>
        <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="4939832016426188468" nodeInfo="ng">
          <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016426188462" resolveInfo="bin_op" />
        </node>
        <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="4939832016426188486" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="right" />
          <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016425276350" resolveInfo="expr" />
        </node>
      </node>
      <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="4939832016426206626" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="unary_expr" />
        <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="4939832016426206735" nodeInfo="ng">
          <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016426205340" resolveInfo="unary_op" />
        </node>
        <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="4939832016426206740" nodeInfo="ng">
          <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016425276350" resolveInfo="expr" />
        </node>
      </node>
      <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.ChoiceRule" typeId="6o2a.2504845739423561804" id="7558265857383143106" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="atom" />
        <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="7558265857383180619" nodeInfo="ng">
          <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="7558265857383193034" resolveInfo="paren_expr" />
        </node>
        <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="7558265857383149757" nodeInfo="ng">
          <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="7558265857383145006" resolveInfo="list_comprehension" />
        </node>
        <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="7558265857383155456" nodeInfo="ng">
          <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="7558265857383149862" resolveInfo="dictorset_comprehension" />
        </node>
        <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="7558265857383180623" nodeInfo="ng">
          <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="5689872735555099105" resolveInfo="name" />
        </node>
        <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="7558265857383188233" nodeInfo="ng">
          <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="7558265857383187027" resolveInfo="constant" />
        </node>
      </node>
      <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.EmptyLine" typeId="6o2a.8822712935563342996" id="7558265857383194144" nodeInfo="ng" />
      <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.RuleGroup" typeId="6o2a.5689872735553437610" id="7558265857383381140" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="trailer" />
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.ChoiceRule" typeId="6o2a.2504845739423561804" id="7558265857383221104" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="trailer_expr" />
          <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="7558265857383242550" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="7558265857383222288" resolveInfo="funccall" />
          </node>
          <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="7558265857383242552" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="7558265857383225519" resolveInfo="deref" />
          </node>
          <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="7558265857383242555" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="7558265857383229743" resolveInfo="subscriptlist" />
          </node>
          <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="7558265857383242567" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="7558265857383143106" resolveInfo="atom" />
          </node>
        </node>
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="7558265857383222288" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="funccall" />
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="7558265857383222391" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="7558265857383221104" resolveInfo="trailer_expr" />
          </node>
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="7558265857383222397" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="(" />
          </node>
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="7558265857383222413" nodeInfo="ng">
            <property name="card" nameId="6o2a.2504845739424658192" value="AtMostOne" />
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="6217748898236596825" resolveInfo="arglist" />
          </node>
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="7558265857383223415" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value=")" />
          </node>
        </node>
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="7558265857383225519" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="deref" />
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="7558265857383225623" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="7558265857383221104" resolveInfo="trailer_expr" />
          </node>
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="7558265857383225628" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="." />
          </node>
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.TerminalReference" typeId="6o2a.2738052631436817608" id="7558265857383228627" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2738052631437369572" targetNodeId="5689872735555042808" resolveInfo="NAME" />
          </node>
        </node>
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="7558265857383229743" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="subscriptlist" />
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="7558265857383242544" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="7558265857383221104" resolveInfo="trailer_expr" />
          </node>
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="7558265857383230850" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="[" />
          </node>
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="7558265857383234093" nodeInfo="ng">
            <property name="card" nameId="6o2a.2504845739424658192" value="AtleastOne" />
            <property name="sep" nameId="6o2a.4939832016425377885" value=", " />
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="7558265857383233981" resolveInfo="subscript" />
          </node>
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="7558265857383231854" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="]" />
          </node>
        </node>
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.ChoiceRule" typeId="6o2a.2504845739423561804" id="7558265857383233981" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="subscript" />
          <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="7558265857383235099" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016425258804" resolveInfo="test" />
          </node>
          <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="7558265857383241525" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="7558265857383237337" resolveInfo="sliceop" />
          </node>
        </node>
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="7558265857383237223" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="slice" />
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="7558265857383239470" nodeInfo="ng">
            <property name="card" nameId="6o2a.2504845739424658192" value="AtMostOne" />
            <property name="name" nameId="tpck.1169194664001" value="low" />
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016425258804" resolveInfo="test" />
          </node>
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="7558265857383239475" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value=":" />
          </node>
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="7558265857383239489" nodeInfo="ng">
            <property name="card" nameId="6o2a.2504845739424658192" value="AtMostOne" />
            <property name="name" nameId="tpck.1169194664001" value="high" />
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016425258804" resolveInfo="test" />
          </node>
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="7558265857383240509" nodeInfo="ng">
            <property name="card" nameId="6o2a.2504845739424658192" value="AtMostOne" />
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="7558265857383237337" resolveInfo="sliceop" />
          </node>
        </node>
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="7558265857383237337" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="sliceop" />
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="7558265857383238455" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value=":" />
          </node>
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="7558265857383238460" nodeInfo="ng">
            <property name="card" nameId="6o2a.2504845739424658192" value="AtMostOne" />
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016425258804" resolveInfo="test" />
          </node>
        </node>
      </node>
      <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.EmptyLine" typeId="6o2a.8822712935563342996" id="7558265857383236107" nodeInfo="ng" />
      <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.RuleGroup" typeId="6o2a.5689872735553437610" id="7558265857383381552" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="bracketed" />
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="7558265857383193034" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="paren_expr" />
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="7558265857383193046" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="(" />
          </node>
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="7558265857383193060" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="7558265857383180614" resolveInfo="paren_expr_item" />
          </node>
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="7558265857383193052" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value=")" />
          </node>
        </node>
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.ChoiceRule" typeId="6o2a.2504845739423561804" id="7558265857383180614" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="paren_expr_item" />
          <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="7558265857383193065" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="5689872735555046045" resolveInfo="yield_expr" />
          </node>
          <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="7558265857383193075" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="7558265857383147917" resolveInfo="testlist_comp" />
          </node>
        </node>
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="7558265857383145006" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="list_comprehension" />
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="7558265857383145956" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="[" />
          </node>
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="7558265857383148830" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="7558265857383147917" resolveInfo="testlist_comp" />
          </node>
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="7558265857383148840" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="]" />
          </node>
        </node>
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="7558265857383149862" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="dictorset_comprehension" />
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="7558265857383154532" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="{" />
          </node>
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="7558265857383154508" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="7558265857383152672" resolveInfo="dictorsetmaker" />
          </node>
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="7558265857383154513" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="}" />
          </node>
        </node>
      </node>
      <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.EmptyLine" typeId="6o2a.8822712935563342996" id="7558265857383147870" nodeInfo="ng" />
      <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.RuleGroup" typeId="6o2a.5689872735553437610" id="7558265857383147823" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="comprehensions" />
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.ChoiceRule" typeId="6o2a.2504845739423561804" id="7558265857383152672" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="dictorsetmaker" />
          <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="3164669072550704420" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="3164669072550703252" resolveInfo="dictmaker" />
          </node>
          <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="3164669072550704422" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="3164669072550703225" resolveInfo="setmaker" />
          </node>
        </node>
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.EmptyLine" typeId="6o2a.8822712935563342996" id="3164669072550709227" nodeInfo="ng" />
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.RuleGroup" typeId="6o2a.5689872735553437610" id="3164669072550713430" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="setmaker" />
          <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="3164669072550703225" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="setmaker" />
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="3164669072550705570" nodeInfo="ng">
              <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016425258804" resolveInfo="test" />
            </node>
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="3164669072550708000" nodeInfo="ng">
              <property name="card" nameId="6o2a.2504845739424658192" value="AtMostOne" />
              <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="3164669072550706748" resolveInfo="setmaker_rest" />
            </node>
          </node>
          <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.ChoiceRule" typeId="6o2a.2504845739423561804" id="3164669072550706748" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="setmaker_rest" />
            <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="3164669072550706778" nodeInfo="ng">
              <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="7558265857383206651" resolveInfo="comp_for" />
            </node>
            <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="3164669072550707994" nodeInfo="ng">
              <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="3164669072550706811" resolveInfo="setmaker_tests" />
            </node>
          </node>
          <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="3164669072550706811" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="setmaker_tests" />
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="3164669072550719614" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value="," />
            </node>
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="3164669072550707992" nodeInfo="ng">
              <property name="card" nameId="6o2a.2504845739424658192" value="AtleastOne" />
              <property name="sep" nameId="6o2a.4939832016425377885" value=", " />
              <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016425258804" resolveInfo="test" />
            </node>
          </node>
        </node>
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.EmptyLine" typeId="6o2a.8822712935563342996" id="3164669072550713349" nodeInfo="ng" />
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.RuleGroup" typeId="6o2a.5689872735553437610" id="3164669072550713602" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="dictmaker" />
          <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="3164669072550703252" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="dictmaker" />
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="3164669072550720902" nodeInfo="ng">
              <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="3164669072550720857" resolveInfo="dictmaker_keyval" />
            </node>
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="3164669072550714896" nodeInfo="ng">
              <property name="card" nameId="6o2a.2504845739424658192" value="AtMostOne" />
              <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="3164669072550716075" resolveInfo="dictmaker_rest" />
            </node>
          </node>
          <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.ChoiceRule" typeId="6o2a.2504845739423561804" id="3164669072550716075" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="dictmaker_rest" />
            <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="3164669072550717250" nodeInfo="ng">
              <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="7558265857383206651" resolveInfo="comp_for" />
            </node>
            <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="3164669072550717252" nodeInfo="ng">
              <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="3164669072550713699" resolveInfo="dictmaker_tests" />
            </node>
          </node>
          <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="3164669072550713699" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="dictmaker_tests" />
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="3164669072550719618" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value="," />
            </node>
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="3164669072550720912" nodeInfo="ng">
              <property name="card" nameId="6o2a.2504845739424658192" value="AtleastOne" />
              <property name="sep" nameId="6o2a.4939832016425377885" value=", " />
              <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="3164669072550720857" resolveInfo="dictmaker_keyval" />
            </node>
          </node>
          <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="3164669072550720857" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="dictmaker_keyval" />
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="3164669072550720872" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value="key" />
              <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016425258804" resolveInfo="test" />
            </node>
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="3164669072550720877" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value=":" />
            </node>
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="3164669072550720888" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value="value" />
              <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016425258804" resolveInfo="test" />
            </node>
          </node>
        </node>
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.EmptyLine" typeId="6o2a.8822712935563342996" id="3164669072550709156" nodeInfo="ng" />
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.RuleGroup" typeId="6o2a.5689872735553437610" id="3164669072550710458" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="testlist" />
          <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="7558265857383147917" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="testlist_comp" />
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="7558265857383214877" nodeInfo="ng">
              <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016425258804" resolveInfo="test" />
            </node>
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="7558265857383219922" nodeInfo="ng">
              <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="7558265857383215881" resolveInfo="testlist_tail" />
            </node>
          </node>
          <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.ChoiceRule" typeId="6o2a.2504845739423561804" id="7558265857383215881" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="testlist_tail" />
            <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="7558265857383217949" nodeInfo="ng">
              <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="7558265857383206651" resolveInfo="comp_for" />
            </node>
            <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="7558265857383217947" nodeInfo="ng">
              <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="7558265857383216941" resolveInfo="testlist_tests" />
            </node>
          </node>
          <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="7558265857383216941" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="testlist_tests" />
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="7558265857383216962" nodeInfo="ng">
              <property name="card" nameId="6o2a.2504845739424658192" value="ZeroOrMore" />
              <property name="sep" nameId="6o2a.4939832016425377885" value=", " />
              <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016425258804" resolveInfo="test" />
            </node>
          </node>
        </node>
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.EmptyLine" typeId="6o2a.8822712935563342996" id="3164669072550709191" nodeInfo="ng" />
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.RuleGroup" typeId="6o2a.5689872735553437610" id="3164669072550710618" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="comp" />
          <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.ChoiceRule" typeId="6o2a.2504845739423561804" id="7558265857383208610" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="comp_iter" />
            <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="7558265857383208617" nodeInfo="ng">
              <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="7558265857383206651" resolveInfo="comp_for" />
            </node>
            <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="7558265857383208619" nodeInfo="ng">
              <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="7558265857383207621" resolveInfo="comp_if" />
            </node>
          </node>
          <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="7558265857383206651" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="comp_for" />
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="7558265857383209592" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value="for" />
            </node>
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="7558265857383209597" nodeInfo="ng">
              <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="5689872735555058043" resolveInfo="exprlist" />
            </node>
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="7558265857383210578" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value="in" />
            </node>
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="7558265857383210588" nodeInfo="ng">
              <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016425276350" resolveInfo="expr" />
            </node>
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="7558265857383211575" nodeInfo="ng">
              <property name="card" nameId="6o2a.2504845739424658192" value="AtMostOne" />
              <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="7558265857383208610" resolveInfo="comp_iter" />
            </node>
          </node>
          <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="7558265857383207621" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="comp_if" />
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="7558265857383212557" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value="if" />
            </node>
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="7558265857383212906" nodeInfo="ng">
              <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="7558265857383201453" resolveInfo="test_nocond" />
            </node>
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="7558265857383213894" nodeInfo="ng">
              <property name="card" nameId="6o2a.2504845739424658192" value="AtMostOne" />
              <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="7558265857383208610" resolveInfo="comp_iter" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="rules" roleId="6o2a.2504845739423551605" type="6o2a.EmptyLine" typeId="6o2a.8822712935563342996" id="7558265857383206097" nodeInfo="ng" />
    <node role="rules" roleId="6o2a.2504845739423551605" type="6o2a.RuleGroup" typeId="6o2a.5689872735553437610" id="4939832016425283606" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="arglist" />
      <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="9135769606281799481" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="fpdefval" />
        <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="9135769606281799495" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="=" />
        </node>
        <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="9135769606281800529" nodeInfo="ng">
          <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016425258804" resolveInfo="test" />
        </node>
      </node>
      <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.EmptyLine" typeId="6o2a.8822712935563342996" id="3164669072556183779" nodeInfo="ng" />
      <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.RuleGroup" typeId="6o2a.5689872735553437610" id="3164669072556179643" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="typed" />
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.ChoiceRule" typeId="6o2a.2504845739423561804" id="4939832016425287803" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="typedargslist" />
          <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="9135769606281813341" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="9135769606281804766" resolveInfo="simple_typedargslist" />
          </node>
          <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="9135769606281813339" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="9135769606281808951" resolveInfo="typed_argskwargslist" />
          </node>
        </node>
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.EmptyLine" typeId="6o2a.8822712935563342996" id="3164669072556185027" nodeInfo="ng" />
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="9135769606281804766" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="simple_typedargslist" />
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="9135769606281805821" nodeInfo="ng">
            <property name="card" nameId="6o2a.2504845739424658192" value="AtleastOne" />
            <property name="sep" nameId="6o2a.4939832016425377885" value=", " />
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="9135769606281802635" resolveInfo="tfpdefwdef" />
          </node>
        </node>
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.EmptyLine" typeId="6o2a.8822712935563342996" id="3164669072556185064" nodeInfo="ng" />
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="9135769606281808951" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="typed_argskwargslist" />
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="9135769606281810010" nodeInfo="ng">
            <property name="card" nameId="6o2a.2504845739424658192" value="ZeroOrMore" />
            <property name="sep" nameId="6o2a.4939832016425377885" value=", " />
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="9135769606281802635" resolveInfo="tfpdefwdef" />
          </node>
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="9135769606281812243" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="9135769606281812215" resolveInfo="typed_argskwargs_tail" />
          </node>
        </node>
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.ChoiceRule" typeId="6o2a.2504845739423561804" id="9135769606281812215" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="typed_argskwargs_tail" />
          <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="9135769606281829468" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="9135769606281815470" resolveInfo="typed_args_tail" />
          </node>
          <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="9135769606281829470" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="9135769606281813312" resolveInfo="typed_kwargs_tail" />
          </node>
        </node>
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="9135769606281815470" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="typed_args_tail" />
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="9135769606281816547" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="*" />
          </node>
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="9135769606281818644" nodeInfo="ng">
            <property name="card" nameId="6o2a.2504845739424658192" value="AtMostOne" />
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="9135769606281770832" resolveInfo="tfpdef" />
          </node>
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="9135769606281830532" nodeInfo="ng">
            <property name="card" nameId="6o2a.2504845739424658192" value="AtMostOne" />
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="9135769606281823015" resolveInfo="typed_args_tail1" />
          </node>
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="9135769606281830542" nodeInfo="ng">
            <property name="card" nameId="6o2a.2504845739424658192" value="AtMostOne" />
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="9135769606281827295" resolveInfo="typed_args_tail2" />
          </node>
        </node>
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="9135769606281823015" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="typed_args_tail1" />
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="9135769606281824098" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value=", " />
          </node>
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="9135769606281824103" nodeInfo="ng">
            <property name="card" nameId="6o2a.2504845739424658192" value="ZeroOrMore" />
            <property name="sep" nameId="6o2a.4939832016425377885" value=", " />
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="9135769606281802635" resolveInfo="tfpdefwdef" />
          </node>
        </node>
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="9135769606281827295" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="typed_args_tail2" />
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="9135769606281827333" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value=", " />
          </node>
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="9135769606281828409" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="9135769606281813312" resolveInfo="typed_kwargs_tail" />
          </node>
        </node>
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="9135769606281813312" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="typed_kwargs_tail" />
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="9135769606281814386" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="**" />
          </node>
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="9135769606281814391" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="9135769606281770832" resolveInfo="tfpdef" />
          </node>
        </node>
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.EmptyLine" typeId="6o2a.8822712935563342996" id="3164669072556184781" nodeInfo="ng" />
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="9135769606281802635" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="tfpdefwdef" />
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="9135769606281802652" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="9135769606281770832" resolveInfo="tfpdef" />
          </node>
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="9135769606281802657" nodeInfo="ng">
            <property name="card" nameId="6o2a.2504845739424658192" value="AtMostOne" />
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="9135769606281799481" resolveInfo="fpdefval" />
          </node>
        </node>
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="9135769606281770832" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="tfpdef" />
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.TerminalReference" typeId="6o2a.2738052631436817608" id="9135769606281790129" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2738052631437369572" targetNodeId="5689872735555042808" resolveInfo="NAME" />
          </node>
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="9135769606281794261" nodeInfo="ng">
            <property name="card" nameId="6o2a.2504845739424658192" value="AtMostOne" />
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="9135769606281794239" resolveInfo="tfpdeftype" />
          </node>
        </node>
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="9135769606281794239" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="tfpdeftype" />
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="9135769606281794249" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value=":" />
          </node>
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="9135769606281794254" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016425258804" resolveInfo="test" />
          </node>
        </node>
      </node>
      <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.EmptyLine" typeId="6o2a.8822712935563342996" id="9135769606281803712" nodeInfo="ng" />
      <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.RuleGroup" typeId="6o2a.5689872735553437610" id="3164669072556179984" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="untyped" />
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.ChoiceRule" typeId="6o2a.2504845739423561804" id="4939832016425296160" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="varargslist" />
          <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="3164669072550689983" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="6217748898236568263" resolveInfo="simple_varargslist" />
          </node>
          <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="3164669072550689985" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="6217748898236577147" resolveInfo="varargskwargslist" />
          </node>
        </node>
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.EmptyLine" typeId="6o2a.8822712935563342996" id="3164669072556185136" nodeInfo="ng" />
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="6217748898236568263" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="simple_varargslist" />
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="6217748898236576034" nodeInfo="ng">
            <property name="card" nameId="6o2a.2504845739424658192" value="AtleastOne" />
            <property name="sep" nameId="6o2a.4939832016425377885" value=", " />
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="6217748898236569368" resolveInfo="vfpdefwdef" />
          </node>
        </node>
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.EmptyLine" typeId="6o2a.8822712935563342996" id="3164669072556185361" nodeInfo="ng" />
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="6217748898236577147" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="varargskwargslist" />
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="6217748898236577197" nodeInfo="ng">
            <property name="card" nameId="6o2a.2504845739424658192" value="ZeroOrMore" />
            <property name="sep" nameId="6o2a.4939832016425377885" value=", " />
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="6217748898236569368" resolveInfo="vfpdefwdef" />
          </node>
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="6217748898236583217" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="6217748898236579382" resolveInfo="vargargskwargs_tail" />
          </node>
        </node>
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.ChoiceRule" typeId="6o2a.2504845739423561804" id="6217748898236579382" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="vargargskwargs_tail" />
          <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="6217748898236584293" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="6217748898236581859" resolveInfo="args_tail" />
          </node>
          <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="6217748898236584295" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="6217748898236580552" resolveInfo="kwargs_tail" />
          </node>
        </node>
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="6217748898236581859" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="args_tail" />
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="6217748898236585372" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="*" />
          </node>
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="6217748898236585377" nodeInfo="ng">
            <property name="card" nameId="6o2a.2504845739424658192" value="AtMostOne" />
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="9135769606281791151" resolveInfo="vfpdef" />
          </node>
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="6217748898236586461" nodeInfo="ng">
            <property name="card" nameId="6o2a.2504845739424658192" value="AtMostOne" />
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="6217748898236581971" resolveInfo="args_tail1" />
          </node>
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="6217748898236586471" nodeInfo="ng">
            <property name="card" nameId="6o2a.2504845739424658192" value="AtMostOne" />
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="6217748898236582085" resolveInfo="args_tail2" />
          </node>
        </node>
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="6217748898236581971" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="args_tail1" />
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="6217748898236587555" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="," />
          </node>
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="6217748898236587560" nodeInfo="ng">
            <property name="card" nameId="6o2a.2504845739424658192" value="ZeroOrMore" />
            <property name="sep" nameId="6o2a.4939832016425377885" value=", " />
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="6217748898236569368" resolveInfo="vfpdefwdef" />
          </node>
        </node>
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="6217748898236582085" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="args_tail2" />
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="6217748898236589724" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="," />
          </node>
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="6217748898236589729" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="6217748898236580552" resolveInfo="kwargs_tail" />
          </node>
        </node>
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="6217748898236580552" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="kwargs_tail" />
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="6217748898236580605" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="**" />
          </node>
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="6217748898236580610" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="9135769606281791151" resolveInfo="vfpdef" />
          </node>
        </node>
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.EmptyLine" typeId="6o2a.8822712935563342996" id="3164669072556185104" nodeInfo="ng" />
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="6217748898236569368" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="vfpdefwdef" />
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="6217748898236573903" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="9135769606281791151" resolveInfo="vfpdef" />
          </node>
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="6217748898236574969" nodeInfo="ng">
            <property name="card" nameId="6o2a.2504845739424658192" value="AtMostOne" />
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="9135769606281799481" resolveInfo="fpdefval" />
          </node>
        </node>
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="9135769606281791151" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="vfpdef" />
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.TerminalReference" typeId="6o2a.2738052631436817608" id="9135769606281791152" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2738052631437369572" targetNodeId="5689872735555042808" resolveInfo="NAME" />
          </node>
        </node>
      </node>
      <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.EmptyLine" typeId="6o2a.8822712935563342996" id="6217748898236598135" nodeInfo="ng" />
      <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.RuleGroup" typeId="6o2a.5689872735553437610" id="3164669072556185509" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="argument" />
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="6217748898236596825" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="arglist" />
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="6217748898236596898" nodeInfo="ng">
            <property name="card" nameId="6o2a.2504845739424658192" value="ZeroOrMore" />
            <property name="sep" nameId="6o2a.4939832016425377885" value=", " />
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="6217748898236593359" resolveInfo="argument" />
          </node>
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="6217748898236598427" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="6217748898236598351" resolveInfo="arglist_tail" />
          </node>
        </node>
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.EmptyLine" typeId="6o2a.8822712935563342996" id="3164669072556232914" nodeInfo="ng" />
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.ChoiceRule" typeId="6o2a.2504845739423561804" id="6217748898236598351" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="arglist_tail" />
          <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="6217748898236599518" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="6217748898236593359" resolveInfo="argument" />
          </node>
          <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="6217748898236599520" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="6217748898236606310" resolveInfo="args_argument" />
          </node>
          <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="6217748898236606390" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="6217748898236601778" resolveInfo="kwargs_argument" />
          </node>
        </node>
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="6217748898236606310" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="args_argument" />
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="6217748898236606394" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="*" />
          </node>
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="6217748898236606399" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016425258804" resolveInfo="test" />
          </node>
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="6217748898236611168" nodeInfo="ng">
            <property name="card" nameId="6o2a.2504845739424658192" value="AtMostOne" />
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="6217748898236607582" resolveInfo="args_argument1" />
          </node>
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="6217748898236611178" nodeInfo="ng">
            <property name="card" nameId="6o2a.2504845739424658192" value="AtMostOne" />
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="6217748898236607750" resolveInfo="args_argument2" />
          </node>
        </node>
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="6217748898236607582" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="args_argument1" />
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="6217748898236608944" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="," />
          </node>
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="6217748898236608949" nodeInfo="ng">
            <property name="card" nameId="6o2a.2504845739424658192" value="ZeroOrMore" />
            <property name="sep" nameId="6o2a.4939832016425377885" value=", " />
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="6217748898236593359" resolveInfo="argument" />
          </node>
        </node>
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="6217748898236607750" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="args_argument2" />
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="6217748898236607835" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="," />
          </node>
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="6217748898236607840" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="6217748898236601778" resolveInfo="kwargs_argument" />
          </node>
        </node>
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="6217748898236601778" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="kwargs_argument" />
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="6217748898236602945" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="**" />
          </node>
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="6217748898236604042" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016425258804" resolveInfo="test" />
          </node>
        </node>
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.EmptyLine" typeId="6o2a.8822712935563342996" id="3164669072556232950" nodeInfo="ng" />
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.ChoiceRule" typeId="6o2a.2504845739423561804" id="6217748898236593359" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="argument" />
          <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="3164669072550697989" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="3164669072550691209" resolveInfo="arg_comp" />
          </node>
          <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="3164669072550697991" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="3164669072550691397" resolveInfo="arg_keyword" />
          </node>
        </node>
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.Comment" typeId="6o2a.4939832016426343668" id="3164669072550697480" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="Warning, there is an ambiguity between &lt;test&gt; and &lt;NAME&gt; here" />
        </node>
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.Comment" typeId="6o2a.4939832016426343668" id="3164669072550697682" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="Python parser handles this by replacing &lt;NAME&gt; by &lt;test&gt; in arg_keyword case" />
        </node>
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.Comment" typeId="6o2a.4939832016426343668" id="3164669072550697886" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="and post-checking it is actually a &lt;NAME&gt;" />
        </node>
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="3164669072550691209" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="arg_comp" />
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="3164669072550694875" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016425258804" resolveInfo="test" />
          </node>
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="3164669072550694880" nodeInfo="ng">
            <property name="card" nameId="6o2a.2504845739424658192" value="AtMostOne" />
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="7558265857383206651" resolveInfo="comp_for" />
          </node>
        </node>
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="3164669072550691397" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="arg_keyword" />
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.TerminalReference" typeId="6o2a.2738052631436817608" id="3164669072550696014" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2738052631437369572" targetNodeId="5689872735555042808" resolveInfo="NAME" />
          </node>
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="3164669072550696019" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="=" />
          </node>
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="3164669072550696030" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016425258804" resolveInfo="test" />
          </node>
        </node>
      </node>
    </node>
    <node role="rules" roleId="6o2a.2504845739423551605" type="6o2a.EmptyLine" typeId="6o2a.8822712935563342996" id="4939832016425370334" nodeInfo="ng" />
    <node role="rules" roleId="6o2a.2504845739423551605" type="6o2a.RuleGroup" typeId="6o2a.5689872735553437610" id="5689872735555038466" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="statements" />
      <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.Comment" typeId="6o2a.4939832016426343668" id="2924121441060141326" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="We add small_stmt here to allow for non-simple_stmt small_stmt nodes" />
      </node>
      <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.ChoiceRule" typeId="6o2a.2504845739423561804" id="5689872735555038475" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="stmt" />
        <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="5689872735555039459" nodeInfo="ng">
          <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="5689872735555039137" resolveInfo="simple_stmt" />
        </node>
        <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="2924121441060141600" nodeInfo="ng">
          <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="5689872735555039785" resolveInfo="small_stmt" />
        </node>
        <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="5689872735555039461" nodeInfo="ng">
          <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="5689872735555039457" resolveInfo="compound_stmt" />
        </node>
      </node>
      <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.EmptyLine" typeId="6o2a.8822712935563342996" id="5689872735555039464" nodeInfo="ng" />
      <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.RuleGroup" typeId="6o2a.5689872735553437610" id="5689872735555038931" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="simple" />
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="5689872735555039137" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="simple_stmt" />
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="5689872735555039898" nodeInfo="ng">
            <property name="card" nameId="6o2a.2504845739424658192" value="AtleastOne" />
            <property name="sep" nameId="6o2a.4939832016425377885" value="; " />
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="5689872735555039785" resolveInfo="small_stmt" />
          </node>
        </node>
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.ChoiceRule" typeId="6o2a.2504845739423561804" id="5689872735555039785" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="small_stmt" />
          <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="5689872735555041346" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="5689872735555040830" resolveInfo="expr_stmt" />
          </node>
          <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="5689872735555043401" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="5689872735555041850" resolveInfo="del_stmt" />
          </node>
          <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="5689872735555043553" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="5689872735555042016" resolveInfo="pass_stmt" />
          </node>
          <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="5689872735555041348" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="5689872735555041344" resolveInfo="flow_stmt" />
          </node>
          <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="5689872735555041351" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="5689872735555041597" resolveInfo="import_stmt" />
          </node>
          <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="5689872735555041599" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="5689872735555042293" resolveInfo="global_stmt" />
          </node>
          <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="5689872735555043707" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="5689872735555043099" resolveInfo="nonlocal_stmt" />
          </node>
          <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="5689872735555043863" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="5689872735555043249" resolveInfo="assert_stmt" />
          </node>
        </node>
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.EmptyLine" typeId="6o2a.8822712935563342996" id="5689872735555040473" nodeInfo="ng" />
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.RuleGroup" typeId="6o2a.5689872735553437610" id="5689872735555040484" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="expr" />
          <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="5689872735555040830" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="expr_stmt" />
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="5689872735555063313" nodeInfo="ng">
              <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="5689872735555045633" resolveInfo="testlist" />
            </node>
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="5689872735555067191" nodeInfo="ng">
              <property name="card" nameId="6o2a.2504845739424658192" value="AtMostOne" />
              <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="5689872735555063755" resolveInfo="assignment" />
            </node>
          </node>
          <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.EmptyLine" typeId="6o2a.8822712935563342996" id="5689872735555068249" nodeInfo="ng" />
          <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.RuleGroup" typeId="6o2a.5689872735553437610" id="5689872735555068128" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="assign" />
            <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.ChoiceRule" typeId="6o2a.2504845739423561804" id="5689872735555063755" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value="assignment" />
              <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="5689872735555066900" nodeInfo="ng">
                <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="5689872735555064387" resolveInfo="basic_assign" />
              </node>
              <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="5689872735555066902" nodeInfo="ng">
                <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="5689872735555064433" resolveInfo="inplace_assign" />
              </node>
            </node>
            <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="5689872735555064387" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value="basic_assign" />
              <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="4939832016426182070" nodeInfo="ng">
                <property name="name" nameId="tpck.1169194664001" value="=" />
              </node>
              <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="5689872735555065770" nodeInfo="ng">
                <property name="card" nameId="6o2a.2504845739424658192" value="AtleastOne" />
                <property name="sep" nameId="6o2a.4939832016425377885" value="=" />
                <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="5689872735555065163" resolveInfo="yield_or_list" />
              </node>
            </node>
            <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="5689872735555064433" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value="inplace_assign" />
              <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="5689872735555066330" nodeInfo="ng">
                <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="5689872735555059954" resolveInfo="augassign" />
              </node>
              <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="5689872735555066615" nodeInfo="ng">
                <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="5689872735555065163" resolveInfo="yield_or_list" />
              </node>
            </node>
            <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.ChoiceRule" typeId="6o2a.2504845739423561804" id="5689872735555065163" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value="yield_or_list" />
              <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="5689872735555065209" nodeInfo="ng">
                <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="5689872735555046045" resolveInfo="yield_expr" />
              </node>
              <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="5689872735555065211" nodeInfo="ng">
                <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="5689872735555045633" resolveInfo="testlist" />
              </node>
            </node>
          </node>
        </node>
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.EmptyLine" typeId="6o2a.8822712935563342996" id="5689872735555047024" nodeInfo="ng" />
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.RuleGroup" typeId="6o2a.5689872735553437610" id="5689872735555041082" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="flow" />
          <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.ChoiceRule" typeId="6o2a.2504845739423561804" id="5689872735555041344" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="flow_stmt" />
            <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="5689872735555046556" nodeInfo="ng">
              <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="5689872735555044335" resolveInfo="break_statement" />
            </node>
            <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="5689872735555046558" nodeInfo="ng">
              <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="5689872735555044499" resolveInfo="continue_statement" />
            </node>
            <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="5689872735555046727" nodeInfo="ng">
              <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="5689872735555044506" resolveInfo="return_statement" />
            </node>
            <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="5689872735555046731" nodeInfo="ng">
              <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="5689872735555044838" resolveInfo="yield_statement" />
            </node>
            <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="5689872735555046904" nodeInfo="ng">
              <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="5689872735555044670" resolveInfo="raise_statement" />
            </node>
          </node>
          <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.EmptyLine" typeId="6o2a.8822712935563342996" id="5689872735555047356" nodeInfo="ng" />
          <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="5689872735555044335" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="break_statement" />
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="5689872735555044489" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value="break" />
            </node>
          </node>
          <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="5689872735555044499" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="continue_statement" />
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="5689872735555044500" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value="continue" />
            </node>
          </node>
          <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="5689872735555044506" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="return_statement" />
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="5689872735555044507" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value="return" />
            </node>
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="5689872735555045712" nodeInfo="ng">
              <property name="card" nameId="6o2a.2504845739424658192" value="AtMostOne" />
              <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="5689872735555045633" resolveInfo="testlist" />
            </node>
          </node>
          <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="5689872735555044838" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="yield_statement" />
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="5689872735555046213" nodeInfo="ng">
              <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="5689872735555046045" resolveInfo="yield_expr" />
            </node>
          </node>
          <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="5689872735555044670" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="raise_statement" />
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="3164669072550679451" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value="raise" />
            </node>
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="3164669072550682948" nodeInfo="ng">
              <property name="card" nameId="6o2a.2504845739424658192" value="AtMostOne" />
              <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="3164669072550680579" resolveInfo="raise_expr" />
            </node>
          </node>
          <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="3164669072550680579" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="raise_expr" />
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="3164669072550682936" nodeInfo="ng">
              <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016425258804" resolveInfo="test" />
            </node>
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="3164669072550682941" nodeInfo="ng">
              <property name="card" nameId="6o2a.2504845739424658192" value="AtMostOne" />
              <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="3164669072550680600" resolveInfo="raise_from" />
            </node>
          </node>
          <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="3164669072550680600" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="raise_from" />
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="3164669072550681728" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value="from" />
            </node>
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="3164669072550681821" nodeInfo="ng">
              <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016425258804" resolveInfo="test" />
            </node>
          </node>
        </node>
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.EmptyLine" typeId="6o2a.8822712935563342996" id="5689872735555046933" nodeInfo="ng" />
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.RuleGroup" typeId="6o2a.5689872735553437610" id="5689872735555041091" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="import" />
          <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.ChoiceRule" typeId="6o2a.2504845739423561804" id="5689872735555041597" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="import_stmt" />
            <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="5689872735555049626" nodeInfo="ng">
              <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="5689872735555047675" resolveInfo="import_name" />
            </node>
            <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="5689872735555049628" nodeInfo="ng">
              <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="5689872735555051135" resolveInfo="import_from" />
            </node>
          </node>
          <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.EmptyLine" typeId="6o2a.8822712935563342996" id="5689872735555047485" nodeInfo="ng" />
          <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="5689872735555047675" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="import_name" />
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="5689872735555047681" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value="import" />
            </node>
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="5689872735555048612" nodeInfo="ng">
              <property name="card" nameId="6o2a.2504845739424658192" value="AtleastOne" />
              <property name="sep" nameId="6o2a.4939832016425377885" value="," />
              <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="5689872735555047872" resolveInfo="dotted_as_name" />
            </node>
          </node>
          <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="5689872735555051135" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="import_from" />
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="5689872735555051158" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value="from" />
            </node>
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="5689872735555051163" nodeInfo="ng">
              <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="5689872735555050883" resolveInfo="relative_module" />
            </node>
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="5689872735555051171" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value="import" />
            </node>
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="5689872735555051424" nodeInfo="ng">
              <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="5689872735555051399" resolveInfo="import_clause" />
            </node>
          </node>
          <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.EmptyLine" typeId="6o2a.8822712935563342996" id="5689872735555053208" nodeInfo="ng" />
          <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.RuleGroup" typeId="6o2a.5689872735553437610" id="5689872735555057053" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="auxiliary" />
            <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="5689872735555047872" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value="dotted_as_name" />
              <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="5689872735555049190" nodeInfo="ng">
                <property name="name" nameId="tpck.1169194664001" value="Importee" />
                <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="5689872735555048808" resolveInfo="dotted_name" />
              </node>
              <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="5689872735555048427" nodeInfo="ng">
                <property name="name" nameId="tpck.1169194664001" value="ImportAs" />
                <property name="card" nameId="6o2a.2504845739424658192" value="AtMostOne" />
                <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="1658893429742216432" resolveInfo="as_name" />
              </node>
            </node>
            <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="5689872735555048808" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value="dotted_name" />
              <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="5689872735555049002" nodeInfo="ng">
                <property name="card" nameId="6o2a.2504845739424658192" value="AtleastOne" />
                <property name="sep" nameId="6o2a.4939832016425377885" value="." />
                <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="5689872735555099105" resolveInfo="name" />
              </node>
            </node>
            <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="5689872735555050049" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value="import_as_name" />
              <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.TerminalReference" typeId="6o2a.2738052631436817608" id="2738052631438277713" nodeInfo="ng">
                <link role="rule" roleId="6o2a.2738052631437369572" targetNodeId="5689872735555042808" resolveInfo="NAME" />
              </node>
              <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="5689872735555050446" nodeInfo="ng">
                <property name="name" nameId="tpck.1169194664001" value="ImportAs" />
                <property name="card" nameId="6o2a.2504845739424658192" value="AtMostOne" />
                <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="1658893429742216432" resolveInfo="as_name" />
              </node>
            </node>
            <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.ChoiceRule" typeId="6o2a.2504845739423561804" id="5689872735555053853" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value="just_dots" />
              <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="2738052631438277709" nodeInfo="ng">
                <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="5689872735555075828" resolveInfo="simple_dot" />
              </node>
              <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="5689872735555054880" nodeInfo="ng">
                <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="5689872735555075848" resolveInfo="ellipsis" />
              </node>
            </node>
            <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="1658893429742216432" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value="as_name" />
              <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="1658893429742216448" nodeInfo="ng">
                <property name="name" nameId="tpck.1169194664001" value="as" />
              </node>
              <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.TerminalReference" typeId="6o2a.2738052631436817608" id="2738052631438277705" nodeInfo="ng">
                <link role="rule" roleId="6o2a.2738052631437369572" targetNodeId="5689872735555042808" resolveInfo="NAME" />
              </node>
            </node>
          </node>
          <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.EmptyLine" typeId="6o2a.8822712935563342996" id="5689872735555057209" nodeInfo="ng" />
          <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.RuleGroup" typeId="6o2a.5689872735553437610" id="5689872735555057160" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="module" />
            <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.ChoiceRule" typeId="6o2a.2504845739423561804" id="5689872735555050883" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value="relative_module" />
              <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="5689872735555056907" nodeInfo="ng">
                <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="5689872735555055654" resolveInfo="named_relative_module" />
              </node>
              <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="5689872735555056909" nodeInfo="ng">
                <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="5689872735555055700" resolveInfo="unnamed_relative_module" />
              </node>
            </node>
            <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="5689872735555055654" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value="named_relative_module" />
              <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="5689872735555055973" nodeInfo="ng">
                <property name="card" nameId="6o2a.2504845739424658192" value="ZeroOrMore" />
                <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="5689872735555053853" resolveInfo="just_dots" />
              </node>
              <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="5689872735555056438" nodeInfo="ng">
                <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="5689872735555048808" resolveInfo="dotted_name" />
              </node>
            </node>
            <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="5689872735555055700" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value="unnamed_relative_module" />
              <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="5689872735555056673" nodeInfo="ng">
                <property name="card" nameId="6o2a.2504845739424658192" value="AtleastOne" />
                <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="5689872735555053853" resolveInfo="just_dots" />
              </node>
            </node>
          </node>
          <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.EmptyLine" typeId="6o2a.8822712935563342996" id="5689872735555057424" nodeInfo="ng" />
          <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.RuleGroup" typeId="6o2a.5689872735553437610" id="5689872735555057314" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="elements" />
            <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.ChoiceRule" typeId="6o2a.2504845739423561804" id="5689872735555051399" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value="import_clause" />
              <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="5689872735555052219" nodeInfo="ng">
                <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="5689872735555051650" resolveInfo="import_all" />
              </node>
              <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="5689872735555052221" nodeInfo="ng">
                <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="5689872735555051733" resolveInfo="import_names" />
              </node>
              <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="5689872735555052224" nodeInfo="ng">
                <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="5689872735555052171" resolveInfo="import_names_paren" />
              </node>
            </node>
            <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="5689872735555051650" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value="import_all" />
              <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="5689872735555051676" nodeInfo="ng">
                <property name="name" nameId="tpck.1169194664001" value="*" />
              </node>
            </node>
            <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="5689872735555051733" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value="import_names" />
              <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="5689872735555051961" nodeInfo="ng">
                <property name="card" nameId="6o2a.2504845739424658192" value="AtleastOne" />
                <property name="sep" nameId="6o2a.4939832016425377885" value="," />
                <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="5689872735555050049" resolveInfo="import_as_name" />
              </node>
            </node>
            <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="5689872735555052171" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value="import_names_paren" />
              <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="5689872735555052206" nodeInfo="ng">
                <property name="name" nameId="tpck.1169194664001" value="(" />
              </node>
              <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="5689872735555052172" nodeInfo="ng">
                <property name="card" nameId="6o2a.2504845739424658192" value="AtleastOne" />
                <property name="sep" nameId="6o2a.4939832016425377885" value="," />
                <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="5689872735555050049" resolveInfo="import_as_name" />
              </node>
              <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="5689872735555052214" nodeInfo="ng">
                <property name="name" nameId="tpck.1169194664001" value=")" />
              </node>
            </node>
          </node>
        </node>
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.EmptyLine" typeId="6o2a.8822712935563342996" id="5689872735555047438" nodeInfo="ng" />
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.RuleGroup" typeId="6o2a.5689872735553437610" id="5689872735555041100" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="misc" />
          <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="5689872735555041850" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="del_stmt" />
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="3164669072550684066" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value="del" />
            </node>
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="3164669072550684072" nodeInfo="ng">
              <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="5689872735555058043" resolveInfo="exprlist" />
            </node>
          </node>
          <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="5689872735555042016" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="pass_stmt" />
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="5689872735555042144" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value="pass" />
            </node>
          </node>
          <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="5689872735555042293" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="global_stmt" />
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="3164669072550688840" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value="global" />
            </node>
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="3164669072550688846" nodeInfo="ng">
              <property name="card" nameId="6o2a.2504845739424658192" value="AtleastOne" />
              <property name="sep" nameId="6o2a.4939832016425377885" value=", " />
              <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="5689872735555099105" resolveInfo="name" />
            </node>
          </node>
          <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="5689872735555043099" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="nonlocal_stmt" />
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="3164669072550688850" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value="nonlocal" />
            </node>
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="3164669072550688855" nodeInfo="ng">
              <property name="sep" nameId="6o2a.4939832016425377885" value=", " />
              <property name="card" nameId="6o2a.2504845739424658192" value="AtleastOne" />
              <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="5689872735555099105" resolveInfo="name" />
            </node>
          </node>
          <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="5689872735555043249" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="assert_stmt" />
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="3164669072550686317" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value="assert" />
            </node>
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="3164669072550686322" nodeInfo="ng">
              <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016425258804" resolveInfo="test" />
            </node>
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="3164669072550686330" nodeInfo="ng">
              <property name="card" nameId="6o2a.2504845739424658192" value="AtMostOne" />
              <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="3164669072550685192" resolveInfo="assert_message" />
            </node>
          </node>
          <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="3164669072550685192" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="assert_message" />
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="3164669072550687453" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value="," />
            </node>
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="3164669072550687714" nodeInfo="ng">
              <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016425258804" resolveInfo="test" />
            </node>
          </node>
        </node>
      </node>
      <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.EmptyLine" typeId="6o2a.8822712935563342996" id="4939832016425297571" nodeInfo="ng" />
      <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.RuleGroup" typeId="6o2a.5689872735553437610" id="4939832016425256520" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="suite" />
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="4939832016425256863" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="stats" />
          <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="4939832016425257172" nodeInfo="ng">
            <property name="card" nameId="6o2a.2504845739424658192" value="AtleastOne" />
            <property name="sep" nameId="6o2a.4939832016425377885" value="\n" />
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="5689872735555038475" resolveInfo="stmt" />
          </node>
        </node>
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.ChoiceRule" typeId="6o2a.2504845739423561804" id="4939832016425257195" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="suite" />
          <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="4939832016425257201" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="5689872735555039137" resolveInfo="simple_stmt" />
          </node>
          <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="4939832016425257203" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016425256863" resolveInfo="stats" />
          </node>
        </node>
      </node>
      <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.EmptyLine" typeId="6o2a.8822712935563342996" id="4939832016425364959" nodeInfo="ng" />
      <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.RuleGroup" typeId="6o2a.5689872735553437610" id="5689872735555039348" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="compound" />
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.ChoiceRule" typeId="6o2a.2504845739423561804" id="5689872735555039457" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="compound_stmt" />
          <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="4939832016425280734" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016425264827" resolveInfo="if_stmt" />
          </node>
          <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="4939832016425280736" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016425260944" resolveInfo="while_stmt" />
          </node>
          <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="4939832016425281126" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016425259220" resolveInfo="for_stmt" />
          </node>
          <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="4939832016425281518" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016425273501" resolveInfo="try_stmt" />
          </node>
          <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="4939832016425281912" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016425276744" resolveInfo="with_stmt" />
          </node>
          <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="4939832016425282308" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016425279576" resolveInfo="funcdef" />
          </node>
          <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="4939832016425282706" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016425279961" resolveInfo="classdef" />
          </node>
          <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="4939832016425283106" nodeInfo="ng">
            <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016425280347" resolveInfo="decorated" />
          </node>
        </node>
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.EmptyLine" typeId="6o2a.8822712935563342996" id="4939832016425247596" nodeInfo="ng" />
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.RuleGroup" typeId="6o2a.5689872735553437610" id="1658893429742287375" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="definitions" />
          <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="4939832016425279576" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="funcdef" />
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="4939832016425286613" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value="def" />
            </node>
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="4939832016425286955" nodeInfo="ng">
              <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="5689872735555099105" resolveInfo="name" />
            </node>
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="4939832016425287373" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value="(" />
            </node>
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="4939832016425288224" nodeInfo="ng">
              <property name="card" nameId="6o2a.2504845739424658192" value="AtMostOne" />
              <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016425287803" resolveInfo="typedargslist" />
            </node>
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="4939832016425288648" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value=")" />
            </node>
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="4939832016425289520" nodeInfo="ng">
              <property name="card" nameId="6o2a.2504845739424658192" value="AtMostOne" />
              <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="1658893429742308054" resolveInfo="func_result" />
            </node>
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="4939832016425289953" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value=":" />
            </node>
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="4939832016425289973" nodeInfo="ng">
              <property name="indent" nameId="6o2a.513220601742038498" value="true" />
              <property name="newline" nameId="6o2a.513220601742038557" value="true" />
              <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016425257195" resolveInfo="suite" />
            </node>
          </node>
          <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="4939832016425279961" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="classdef" />
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="4939832016425284802" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value="class" />
            </node>
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="4939832016425284819" nodeInfo="ng">
              <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="5689872735555099105" resolveInfo="name" />
            </node>
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="4939832016425285229" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value="(" />
            </node>
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="4939832016425285239" nodeInfo="ng">
              <property name="card" nameId="6o2a.2504845739424658192" value="AtMostOne" />
              <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="6217748898236596825" resolveInfo="arglist" />
            </node>
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="4939832016425285251" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value=")" />
            </node>
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="4939832016425285669" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value=":" />
            </node>
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="4939832016425285685" nodeInfo="ng">
              <property name="indent" nameId="6o2a.513220601742038498" value="true" />
              <property name="newline" nameId="6o2a.513220601742038557" value="true" />
              <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016425257195" resolveInfo="suite" />
            </node>
          </node>
          <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="1658893429742308054" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="func_result" />
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="1658893429742308075" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value="-&gt;" />
            </node>
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="1658893429742308124" nodeInfo="ng">
              <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016425258804" resolveInfo="test" />
            </node>
          </node>
        </node>
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.EmptyLine" typeId="6o2a.8822712935563342996" id="4939832016425259198" nodeInfo="ng" />
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.RuleGroup" typeId="6o2a.5689872735553437610" id="1658893429742286861" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="loops" />
          <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="4939832016425260944" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="while_stmt" />
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="4939832016425260945" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value="while" />
            </node>
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="4939832016425260946" nodeInfo="ng">
              <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016425258804" resolveInfo="test" />
            </node>
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="4939832016425260947" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value=":" />
            </node>
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="4939832016425260948" nodeInfo="ng">
              <property name="newline" nameId="6o2a.513220601742038557" value="true" />
              <property name="indent" nameId="6o2a.513220601742038498" value="true" />
              <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016425257195" resolveInfo="suite" />
            </node>
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="1658893429742214165" nodeInfo="ng">
              <property name="card" nameId="6o2a.2504845739424658192" value="AtMostOne" />
              <property name="newline" nameId="6o2a.513220601742038557" value="true" />
              <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="1658893429742213944" resolveInfo="else_clause" />
            </node>
          </node>
          <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="4939832016425259220" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="for_stmt" />
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="4939832016425259243" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value="for" />
            </node>
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="4939832016425259248" nodeInfo="ng">
              <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="5689872735555058043" resolveInfo="exprlist" />
            </node>
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="4939832016425259576" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value="in" />
            </node>
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="4939832016425259907" nodeInfo="ng">
              <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="5689872735555045633" resolveInfo="testlist" />
            </node>
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="4939832016425260241" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value=":" />
            </node>
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="4939832016425260585" nodeInfo="ng">
              <property name="card" nameId="6o2a.2504845739424658192" value="ExactlyOne" />
              <property name="newline" nameId="6o2a.513220601742038557" value="true" />
              <property name="indent" nameId="6o2a.513220601742038498" value="true" />
              <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016425257195" resolveInfo="suite" />
            </node>
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="1658893429742214195" nodeInfo="ng">
              <property name="card" nameId="6o2a.2504845739424658192" value="AtMostOne" />
              <property name="newline" nameId="6o2a.513220601742038557" value="true" />
              <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="1658893429742213944" resolveInfo="else_clause" />
            </node>
          </node>
        </node>
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.EmptyLine" typeId="6o2a.8822712935563342996" id="1658893429742286736" nodeInfo="ng" />
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.RuleGroup" typeId="6o2a.5689872735553437610" id="4939832016425263728" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="selection" />
          <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="4939832016425264827" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="if_stmt" />
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="4939832016425264836" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value="if" />
            </node>
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="4939832016425265181" nodeInfo="ng">
              <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016425258804" resolveInfo="test" />
            </node>
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="4939832016425265189" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value=":" />
            </node>
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="4939832016425265199" nodeInfo="ng">
              <property name="newline" nameId="6o2a.513220601742038557" value="true" />
              <property name="indent" nameId="6o2a.513220601742038498" value="true" />
              <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016425257195" resolveInfo="suite" />
            </node>
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="4939832016425265554" nodeInfo="ng">
              <property name="card" nameId="6o2a.2504845739424658192" value="ZeroOrMore" />
              <property name="newline" nameId="6o2a.513220601742038557" value="true" />
              <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016425264105" resolveInfo="elif_clause" />
            </node>
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="1658893429742214090" nodeInfo="ng">
              <property name="card" nameId="6o2a.2504845739424658192" value="AtMostOne" />
              <property name="newline" nameId="6o2a.513220601742038557" value="true" />
              <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="1658893429742213944" resolveInfo="else_clause" />
            </node>
          </node>
          <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="4939832016425264105" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="elif_clause" />
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="4939832016425264109" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value="elif" />
            </node>
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="4939832016425264448" nodeInfo="ng">
              <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016425258804" resolveInfo="test" />
            </node>
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="4939832016425264456" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value=":" />
            </node>
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="4939832016425264466" nodeInfo="ng">
              <property name="indent" nameId="6o2a.513220601742038498" value="true" />
              <property name="newline" nameId="6o2a.513220601742038557" value="true" />
              <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016425257195" resolveInfo="suite" />
            </node>
          </node>
          <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="1658893429742213944" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="else_clause" />
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="1658893429742214063" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value="else" />
            </node>
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="1658893429742214068" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value=":" />
            </node>
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="1658893429742214076" nodeInfo="ng">
              <property name="newline" nameId="6o2a.513220601742038557" value="true" />
              <property name="indent" nameId="6o2a.513220601742038498" value="true" />
              <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016425257195" resolveInfo="suite" />
            </node>
          </node>
          <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.EmptyLine" typeId="6o2a.8822712935563342996" id="4939832016425263769" nodeInfo="ng" />
        </node>
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.RuleGroup" typeId="6o2a.5689872735553437610" id="4939832016425255856" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="try" />
          <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.Comment" typeId="6o2a.4939832016426343668" id="1658893429742214834" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="alternative:" />
          </node>
          <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.Comment" typeId="6o2a.4939832016426343668" id="1658893429742214896" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="try : &lt;suite&gt; &lt;except_clause&gt;* &lt;else_clause&gt;? &lt;finally_clause&gt;?" />
          </node>
          <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.Comment" typeId="6o2a.4939832016426343668" id="1658893429742214960" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="with constraint sizeof(except_clause) + sizeof(else_clause) + sizeof(finally_clause) != 0" />
          </node>
          <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.EmptyLine" typeId="6o2a.8822712935563342996" id="1658893429742214993" nodeInfo="ng" />
          <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="4939832016425273501" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="try_stmt" />
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="4939832016425273895" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value="try" />
            </node>
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="4939832016426326267" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value=":" />
            </node>
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="4939832016425274274" nodeInfo="ng">
              <property name="indent" nameId="6o2a.513220601742038498" value="true" />
              <property name="newline" nameId="6o2a.513220601742038557" value="true" />
              <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016425257195" resolveInfo="suite" />
            </node>
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="4939832016425274652" nodeInfo="ng">
              <property name="newline" nameId="6o2a.513220601742038557" value="true" />
              <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016425270455" resolveInfo="except_finally" />
            </node>
          </node>
          <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.EmptyLine" typeId="6o2a.8822712935563342996" id="1658893429742217300" nodeInfo="ng" />
          <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.ChoiceRule" typeId="6o2a.2504845739423561804" id="4939832016425270455" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="except_finally" />
            <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="4939832016425273447" nodeInfo="ng">
              <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016425271220" resolveInfo="except_clauses" />
            </node>
            <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="4939832016425273449" nodeInfo="ng">
              <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016425271192" resolveInfo="finally_clause" />
            </node>
          </node>
          <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="4939832016425271192" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="finally_clause" />
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="4939832016425273074" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value="finally:" />
            </node>
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="4939832016425273079" nodeInfo="ng">
              <property name="newline" nameId="6o2a.513220601742038557" value="true" />
              <property name="indent" nameId="6o2a.513220601742038498" value="true" />
              <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016425257195" resolveInfo="suite" />
            </node>
          </node>
          <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="4939832016425271220" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="except_clauses" />
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="4939832016425271592" nodeInfo="ng">
              <property name="card" nameId="6o2a.2504845739424658192" value="AtleastOne" />
              <property name="sep" nameId="6o2a.4939832016425377885" value="\n" />
              <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016425267893" resolveInfo="except_clause" />
            </node>
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="1658893429742214120" nodeInfo="ng">
              <property name="card" nameId="6o2a.2504845739424658192" value="AtMostOne" />
              <property name="newline" nameId="6o2a.513220601742038557" value="true" />
              <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="1658893429742213944" resolveInfo="else_clause" />
            </node>
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="1658893429742214143" nodeInfo="ng">
              <property name="card" nameId="6o2a.2504845739424658192" value="AtMostOne" />
              <property name="newline" nameId="6o2a.513220601742038557" value="true" />
              <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016425271192" resolveInfo="finally_clause" />
            </node>
          </node>
          <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.EmptyLine" typeId="6o2a.8822712935563342996" id="1658893429742217226" nodeInfo="ng" />
          <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="4939832016425267893" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="except_clause" />
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="4939832016425267898" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value="except" />
            </node>
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="4939832016425269346" nodeInfo="ng">
              <property name="card" nameId="6o2a.2504845739424658192" value="AtMostOne" />
              <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016425268263" resolveInfo="except_test" />
            </node>
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="4939832016425269354" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value=":" />
            </node>
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="4939832016425269719" nodeInfo="ng">
              <property name="indent" nameId="6o2a.513220601742038498" value="true" />
              <property name="newline" nameId="6o2a.513220601742038557" value="true" />
              <property name="card" nameId="6o2a.2504845739424658192" value="ExactlyOne" />
              <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016425257195" resolveInfo="suite" />
            </node>
          </node>
          <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="4939832016425268263" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="except_test" />
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="4939832016425268621" nodeInfo="ng">
              <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016425258804" resolveInfo="test" />
            </node>
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="4939832016425268985" nodeInfo="ng">
              <property name="card" nameId="6o2a.2504845739424658192" value="AtMostOne" />
              <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="1658893429742214644" resolveInfo="except_rename" />
            </node>
          </node>
          <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="1658893429742214644" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="except_rename" />
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="1658893429742214673" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value="as" />
            </node>
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="1658893429742214738" nodeInfo="ng">
              <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="5689872735555099105" resolveInfo="name" />
            </node>
          </node>
        </node>
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.EmptyLine" typeId="6o2a.8822712935563342996" id="4939832016425256183" nodeInfo="ng" />
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.RuleGroup" typeId="6o2a.5689872735553437610" id="4939832016425256174" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="with" />
          <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="4939832016425276744" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="with_stmt" />
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="4939832016425277128" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value="with" />
            </node>
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="4939832016425277511" nodeInfo="ng">
              <property name="card" nameId="6o2a.2504845739424658192" value="AtleastOne" />
              <property name="sep" nameId="6o2a.4939832016425377885" value="," />
              <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016425257837" resolveInfo="with_item" />
            </node>
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="4939832016425277897" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value=":" />
            </node>
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="4939832016425277907" nodeInfo="ng">
              <property name="indent" nameId="6o2a.513220601742038498" value="true" />
              <property name="newline" nameId="6o2a.513220601742038557" value="true" />
              <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016425257195" resolveInfo="suite" />
            </node>
          </node>
          <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="4939832016425257837" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="with_item" />
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="4939832016425275957" nodeInfo="ng">
              <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016425258804" resolveInfo="test" />
            </node>
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="4939832016425276357" nodeInfo="ng">
              <property name="card" nameId="6o2a.2504845739424658192" value="AtMostOne" />
              <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="1658893429742214755" resolveInfo="with_rename" />
            </node>
          </node>
          <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="1658893429742214755" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="with_rename" />
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="1658893429742214767" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value="as" />
            </node>
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="1658893429742214798" nodeInfo="ng">
              <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016425276350" resolveInfo="expr" />
            </node>
          </node>
        </node>
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.EmptyLine" typeId="6o2a.8822712935563342996" id="4939832016425283705" nodeInfo="ng" />
        <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.RuleGroup" typeId="6o2a.5689872735553437610" id="4939832016425279107" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="decorators" />
          <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="4939832016425280347" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="decorated" />
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="4939832016425294815" nodeInfo="ng">
              <property name="card" nameId="6o2a.2504845739424658192" value="AtleastOne" />
              <property name="sep" nameId="6o2a.4939832016425377885" value="\n" />
              <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016425291294" resolveInfo="decorator" />
            </node>
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="4939832016425295248" nodeInfo="ng">
              <property name="newline" nameId="6o2a.513220601742038557" value="true" />
              <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016425290848" resolveInfo="decoratee" />
            </node>
          </node>
          <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.ChoiceRule" typeId="6o2a.2504845739423561804" id="4939832016425290848" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="decoratee" />
            <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="4939832016425290852" nodeInfo="ng">
              <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016425279961" resolveInfo="classdef" />
            </node>
            <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="4939832016425290854" nodeInfo="ng">
              <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="4939832016425279576" resolveInfo="funcdef" />
            </node>
          </node>
          <node role="rules" roleId="6o2a.5689872735553437613" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="4939832016425291294" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="decorator" />
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="4939832016425292145" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value="@" />
            </node>
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="4939832016425292590" nodeInfo="ng">
              <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="5689872735555048808" resolveInfo="dotted_name" />
            </node>
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="4939832016425293022" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value="(" />
            </node>
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="4939832016425293933" nodeInfo="ng">
              <property name="card" nameId="6o2a.2504845739424658192" value="AtMostOne" />
              <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="6217748898236596825" resolveInfo="arglist" />
            </node>
            <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.Keyword" typeId="6o2a.2504845739424006305" id="4939832016425293947" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value=")" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="rules" roleId="6o2a.2504845739423551605" type="6o2a.EmptyLine" typeId="6o2a.8822712935563342996" id="4939832016427593227" nodeInfo="ng" />
    <node role="rules" roleId="6o2a.2504845739423551605" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="5689872735555038321" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="EmptyLine" />
    </node>
    <node role="rules" roleId="6o2a.2504845739423551605" type="6o2a.ChoiceRule" typeId="6o2a.2504845739423561804" id="5689872735555038069" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="IProgramElement" />
      <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="5689872735555038326" nodeInfo="ng">
        <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="5689872735555038321" resolveInfo="EmptyLine" />
      </node>
      <node role="nonterminals" roleId="6o2a.2504845739423561868" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="5689872735555038328" nodeInfo="ng">
        <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="5689872735555038475" resolveInfo="stmt" />
      </node>
    </node>
    <node role="rules" roleId="6o2a.2504845739423551605" type="6o2a.NonterminalRule" typeId="6o2a.2504845739424006163" id="5689872735555037974" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="program" />
      <node role="terms" roleId="6o2a.2504845739424006198" type="6o2a.NonterminalReference" typeId="6o2a.2504845739424324587" id="5689872735555038574" nodeInfo="ng">
        <property name="card" nameId="6o2a.2504845739424658192" value="ZeroOrMore" />
        <property name="sep" nameId="6o2a.4939832016425377885" value="\n" />
        <link role="rule" roleId="6o2a.2504845739424324590" targetNodeId="5689872735555038069" resolveInfo="IProgramElement" />
      </node>
    </node>
  </root>
</model>

