<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:edb0b875-a5b3-45df-85ce-c6aa69d86475(mbnf.sandbox.CSharpComparison)">
  <persistence version="9" />
  <attribute name="doNotGenerate" value="true" />
  <languages>
    <use id="9c03c641-469f-49e7-aeed-44a3d19b7253" name="metabnf" version="0" />
    <use id="daafa647-f1f7-4b0b-b096-69cd7c8408c0" name="jetbrains.mps.baseLanguage.regexp" version="0" />
  </languages>
  <imports>
    <import index="3bo8" ref="r:d19057af-a743-4e69-acc1-6ce8663382f6(CSharpComparison.editor)" />
    <import index="lmxd" ref="r:848feee2-47c6-46a1-aeda-fd7591c87767(CSharpComparison.textGen)" />
    <import index="yiol" ref="r:da9593e3-393b-479e-8ed7-977e83834b16(CSharpComparison.structure)" />
  </imports>
  <registry>
    <language id="9c03c641-469f-49e7-aeed-44a3d19b7253" name="metabnf">
      <concept id="9053669553104626821" name="metabnf.structure.GenerationLedger" flags="ng" index="7dNNS">
        <property id="9053669553104626825" name="toolchain" index="7dNNO" />
        <property id="9053669553104626824" name="generatorVersion" index="7dNNP" />
        <property id="9053669553104626827" name="profileFingerprint" index="7dNNQ" />
        <property id="9053669553104626826" name="inputFingerprint" index="7dNNR" />
        <property id="9053669553104626823" name="version" index="7dNNU" />
        <reference id="9053669553104626831" name="grammar" index="7dNNM" />
        <child id="9053669553104626832" name="artifacts" index="7dNNH" />
      </concept>
      <concept id="9053669553104626822" name="metabnf.structure.GeneratedArtifact" flags="ng" index="7dNNV">
        <property id="9053669553104626829" name="baseline" index="7dNNK" />
        <property id="9053669553104626828" name="artifactKey" index="7dNNL" />
        <property id="9053669553104626830" name="decision" index="7dNNN" />
        <reference id="9053669553104626833" name="source" index="7dNNG" />
        <reference id="9053669553104626834" name="target" index="7dNNJ" />
      </concept>
      <concept id="5689872735553437610" name="metabnf.structure.RuleGroup" flags="ng" index="t8saL">
        <child id="5689872735553437613" name="rules" index="t8saQ" />
      </concept>
      <concept id="2738052631436817608" name="metabnf.structure.TerminalReference" flags="ng" index="2GSJ2k">
        <reference id="2738052631437369572" name="rule" index="2GQAiS" />
      </concept>
      <concept id="656738873848441252" name="metabnf.structure.UsabilityAnnotation" flags="ng" index="2WW1Oy">
        <property id="656738873848441255" name="evidence" index="2WW1Ox" />
        <property id="656738873848441253" name="origin" index="2WW1Oz" />
        <property id="1234082659529943262" name="recognitionKey" index="3xS3XX" />
      </concept>
      <concept id="656738873848441251" name="metabnf.structure.UsabilityAnnotations" flags="ng" index="2WW1O_">
        <reference id="656738873848441256" name="grammar" index="2WW1OI" />
        <child id="656738873848441257" name="annotations" index="2WW1OJ" />
      </concept>
      <concept id="656738873848441260" name="metabnf.structure.ListAnnotation" flags="ng" index="2WW1OE">
        <reference id="656738873848441261" name="target" index="2WW1OF" />
      </concept>
      <concept id="2504845739424006305" name="metabnf.structure.Keyword" flags="ng" index="3xhzXc" />
      <concept id="2504845739424006163" name="metabnf.structure.NonterminalRule" flags="ng" index="3xhzZY">
        <child id="2504845739424006198" name="terms" index="3xhzZr" />
      </concept>
      <concept id="2504845739424324587" name="metabnf.structure.NonterminalReference" flags="ng" index="3xiQg6">
        <property id="2504845739424658192" name="card" index="3xj4NX" />
        <reference id="2504845739424324590" name="rule" index="3xiQg3" />
      </concept>
      <concept id="2504845739423496082" name="metabnf.structure.grammar" flags="ng" index="3xJwxZ">
        <reference id="2504845739423551607" name="start" index="3xJMYq" />
        <child id="2504845739423551605" name="rules" index="3xJMYo" />
      </concept>
      <concept id="2504845739423561976" name="metabnf.structure.TerminalRule" flags="ng" index="3xJKsl">
        <child id="2861244223630461677" name="regexp" index="q_eir" />
      </concept>
      <concept id="2504845739423561804" name="metabnf.structure.ChoiceRule" flags="ng" index="3xJKux">
        <child id="2504845739423561868" name="nonterminals" index="3xJKtx" />
      </concept>
      <concept id="1234082659529943258" name="metabnf.structure.PatternAnnotation" flags="ng" index="3xS3XT">
        <property id="1234082659529943259" name="pattern" index="3xS3XS" />
        <property id="1234082659529943260" name="mappingImpact" index="3xS3XZ" />
        <reference id="1234082659529943261" name="target" index="3xS3XY" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="daafa647-f1f7-4b0b-b096-69cd7c8408c0" name="jetbrains.mps.baseLanguage.regexp">
      <concept id="1174482804200" name="jetbrains.mps.baseLanguage.regexp.structure.PlusRegexp" flags="ng" index="1OClNT" />
      <concept id="1174485235885" name="jetbrains.mps.baseLanguage.regexp.structure.UnaryRegexp" flags="ng" index="1OLBAW">
        <child id="1174485243418" name="regexp" index="1OLDsb" />
      </concept>
      <concept id="1174510540317" name="jetbrains.mps.baseLanguage.regexp.structure.InlineRegexpExpression" flags="nn" index="1Qi9sc">
        <child id="1174510571016" name="regexp" index="1QigWp" />
      </concept>
      <concept id="1174554186090" name="jetbrains.mps.baseLanguage.regexp.structure.SymbolClassRegexp" flags="ng" index="1SSD1V">
        <child id="1174557628217" name="part" index="1T5LoC" />
      </concept>
      <concept id="1174554211468" name="jetbrains.mps.baseLanguage.regexp.structure.PositiveSymbolClassRegexp" flags="ng" index="1SSJmt" />
      <concept id="1174558301835" name="jetbrains.mps.baseLanguage.regexp.structure.IntervalSymbolClassPart" flags="ng" index="1T8lYq">
        <property id="1174558315290" name="start" index="1T8p8b" />
        <property id="1174558317822" name="end" index="1T8pRJ" />
      </concept>
    </language>
  </registry>
  <node concept="3xJwxZ" id="6zxGQbUlIdX">
    <property role="TrG5h" value="CSharpComparison" />
    <ref role="3xJMYq" node="6zxGQbUlIdv" resolve="program" />
    <node concept="t8saL" id="6zxGQbUlIdA" role="3xJMYo">
      <property role="TrG5h" value="ANTLR" />
      <node concept="3xhzZY" id="6zxGQbUlIdv" role="t8saQ">
        <property role="TrG5h" value="program" />
        <node concept="3xiQg6" id="6zxGQbUlIdB" role="3xhzZr">
          <ref role="3xiQg3" node="6zxGQbUlIdw" resolve="block" />
        </node>
      </node>
      <node concept="3xhzZY" id="6zxGQbUlIdw" role="t8saQ">
        <property role="TrG5h" value="block" />
        <node concept="3xhzXc" id="6zxGQbUlIdC" role="3xhzZr">
          <property role="TrG5h" value="{" />
        </node>
        <node concept="3xiQg6" id="6zxGQbUlIdD" role="3xhzZr">
          <property role="3xj4NX" value="2b2ZYR3yDpK/ZeroOrMore" />
          <ref role="3xiQg3" node="6zxGQbUlIdx" resolve="statement" />
        </node>
        <node concept="3xhzXc" id="6zxGQbUlIdE" role="3xhzZr">
          <property role="TrG5h" value="}" />
        </node>
      </node>
      <node concept="3xJKux" id="6zxGQbUlIdx" role="t8saQ">
        <property role="TrG5h" value="statement" />
        <node concept="3xiQg6" id="6zxGQbUlIdG" role="3xJKtx">
          <ref role="3xiQg3" node="6zxGQbUlIdF" resolve="statement__ANTLRAlternative1" />
        </node>
        <node concept="3xiQg6" id="6zxGQbUlIdJ" role="3xJKtx">
          <ref role="3xiQg3" node="6zxGQbUlIdI" resolve="statement__ANTLRAlternative2" />
        </node>
      </node>
      <node concept="3xhzZY" id="6zxGQbUlIdF" role="t8saQ">
        <property role="TrG5h" value="statement__ANTLRAlternative1" />
        <node concept="3xiQg6" id="6zxGQbUlIdH" role="3xhzZr">
          <ref role="3xiQg3" node="6zxGQbUlIdw" resolve="block" />
        </node>
      </node>
      <node concept="3xhzZY" id="6zxGQbUlIdI" role="t8saQ">
        <property role="TrG5h" value="statement__ANTLRAlternative2" />
        <node concept="3xhzXc" id="6zxGQbUlIdK" role="3xhzZr">
          <property role="TrG5h" value="return" />
        </node>
        <node concept="3xiQg6" id="6zxGQbUlIdL" role="3xhzZr">
          <property role="3xj4NX" value="2b2ZYR3yDpL/AtMostOne" />
          <ref role="3xiQg3" node="6zxGQbUlId$" resolve="_AntlrGroup1" />
        </node>
        <node concept="3xhzXc" id="6zxGQbUlIdM" role="3xhzZr">
          <property role="TrG5h" value=";" />
        </node>
      </node>
      <node concept="3xhzZY" id="6zxGQbUlIdy" role="t8saQ">
        <property role="TrG5h" value="expression" />
        <node concept="2GSJ2k" id="6zxGQbUlIdN" role="3xhzZr">
          <ref role="2GQAiS" node="6zxGQbUlIdz" resolve="NUMBER" />
        </node>
        <node concept="3xiQg6" id="6zxGQbUlIdO" role="3xhzZr">
          <property role="3xj4NX" value="2b2ZYR3yDpK/ZeroOrMore" />
          <ref role="3xiQg3" node="6zxGQbUlId_" resolve="_AntlrGroup2" />
        </node>
      </node>
      <node concept="3xJKsl" id="6zxGQbUlIdz" role="t8saQ">
        <property role="TrG5h" value="NUMBER" />
        <node concept="1Qi9sc" id="6zxGQbUlIdP" role="q_eir">
          <node concept="1OClNT" id="6zxGQbUlIdS" role="1QigWp">
            <node concept="1SSJmt" id="6zxGQbUlIdQ" role="1OLDsb">
              <node concept="1T8lYq" id="6zxGQbUlIdR" role="1T5LoC">
                <property role="1T8p8b" value="0" />
                <property role="1T8pRJ" value="9" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3xhzZY" id="6zxGQbUlId$" role="t8saQ">
        <property role="TrG5h" value="_AntlrGroup1" />
        <node concept="3xhzXc" id="6zxGQbUlIdT" role="3xhzZr">
          <property role="TrG5h" value=" " />
        </node>
        <node concept="3xiQg6" id="6zxGQbUlIdU" role="3xhzZr">
          <ref role="3xiQg3" node="6zxGQbUlIdy" resolve="expression" />
        </node>
      </node>
      <node concept="3xhzZY" id="6zxGQbUlId_" role="t8saQ">
        <property role="TrG5h" value="_AntlrGroup2" />
        <node concept="3xhzXc" id="6zxGQbUlIdV" role="3xhzZr">
          <property role="TrG5h" value="+" />
        </node>
        <node concept="2GSJ2k" id="6zxGQbUlIdW" role="3xhzZr">
          <ref role="2GQAiS" node="6zxGQbUlIdz" resolve="NUMBER" />
        </node>
      </node>
    </node>
  </node>
  <node concept="2WW1O_" id="6zxGQbUlIdY">
    <ref role="2WW1OI" node="6zxGQbUlIdX" resolve="CSharpComparison" />
    <node concept="2WW1OE" id="6zxGQbUlIdZ" role="2WW1OJ">
      <property role="2WW1Oz" value="$td8qPViAx/Inferred" />
      <property role="2WW1Ox" value="Native repeated reference ZeroOrMore" />
      <property role="3xS3XX" value="metabnf-enrichment@1/block/06b8a5b74d1f2434a1f9d475091d89ca28d5aff25edd7d915535111e149778bf/terms[1]/ListAnnotation" />
      <ref role="2WW1OF" node="6zxGQbUlIdD" />
    </node>
    <node concept="3xS3XT" id="6zxGQbUlIe0" role="2WW1OJ">
      <property role="3xS3XS" value="14wlUfKK6z5/OptionalGroup" />
      <property role="3xS3XZ" value="true" />
      <property role="2WW1Oz" value="$td8qPViAy/Suggested" />
      <property role="2WW1Ox" value="Optional keyword-led group with payload; absence is distinct from present-empty. No group is flattened" />
      <property role="3xS3XX" value="metabnf-enrichment@1/statement__ANTLRAlternative2/d65bef461da57cd78d3bbbe6d4e9626d70a93e7e3a6e487c3c1f85540ffb7d38/terms[1]/PatternAnnotation/OptionalGroup" />
      <ref role="3xS3XY" node="6zxGQbUlIdL" />
    </node>
    <node concept="2WW1OE" id="6zxGQbUlIe1" role="2WW1OJ">
      <property role="2WW1Oz" value="$td8qPViAx/Inferred" />
      <property role="2WW1Ox" value="Native repeated reference ZeroOrMore" />
      <property role="3xS3XX" value="metabnf-enrichment@1/expression/186e02be12fa7b70a603c6a09f1228bfc260b87e400b72879001c6dcfc39955c/terms[1]/ListAnnotation" />
      <ref role="2WW1OF" node="6zxGQbUlIdO" />
    </node>
  </node>
  <node concept="7dNNS" id="6zxGQbUmcoV">
    <property role="7dNNU" value="1" />
    <property role="7dNNP" value="metabnf.protected-import/1" />
    <property role="7dNNO" value="261.25134.877|metabnf.protected-import/1|25.0.3+1-b329.124" />
    <property role="7dNNR" value="bcdd78ea03ca9dc7f01984ccecf058ec0ce36739f0d774fc39d1444a88521ca2" />
    <property role="7dNNQ" value="c324684378eac966e425572e6220eec0a56eacad6c95172d3a1eab6debb9303c" />
    <ref role="7dNNM" node="6zxGQbUlIdX" resolve="CSharpComparison" />
    <node concept="7dNNV" id="6zxGQbUmcoW" role="7dNNH">
      <property role="7dNNL" value="r:edb0b875-a5b3-45df-85ce-c6aa69d86475(mbnf.sandbox.CSharpComparison)/7557518887392568159|r:d19057af-a743-4e69-acc1-6ce8663382f6(CSharpComparison.editor)|18bc6592-03a6-4e29-a83a-7ff23bde13ba/1071666914219" />
      <property role="7dNNN" value="vanilla.generated-aspect; reviewed whole-root ownership" />
      <property role="7dNNK" value="50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/107166691421918:88415010797787934214:virtualPackage5:ANTLR105:conceptDeclaration=r:da9593e3-393b-479e-8ed7-977e83834b16(CSharpComparison.structure)/11013381179549682659:cellModel50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/107338944642317:3549674578477050014:childCellModel50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/107338988282318:788701605868969515106:relationDeclaration=r:da9593e3-393b-479e-8ed7-977e83834b16(CSharpComparison.structure)/10300544211033658821:/10:cellLayout50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/123730366982518:2845131486986371571:/1:/18:inspectedCellModel50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/107338944642318:16484470045372458710:cellLayout50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/110627057171018:4190610709981780821:/1:/1:/" />
      <ref role="7dNNG" node="6zxGQbUlIdv" resolve="program" />
      <ref role="7dNNJ" to="3bo8:L58tqU9gWI" />
    </node>
    <node concept="7dNNV" id="6zxGQbUmcoX" role="7dNNH">
      <property role="7dNNL" value="r:edb0b875-a5b3-45df-85ce-c6aa69d86475(mbnf.sandbox.CSharpComparison)/7557518887392568160|r:d19057af-a743-4e69-acc1-6ce8663382f6(CSharpComparison.editor)|18bc6592-03a6-4e29-a83a-7ff23bde13ba/1071666914219" />
      <property role="7dNNN" value="vanilla.generated-aspect; reviewed whole-root ownership" />
      <property role="7dNNK" value="50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/107166691421918:42805647749355660414:virtualPackage5:ANTLR104:conceptDeclaration=r:da9593e3-393b-479e-8ed7-977e83834b16(CSharpComparison.structure)/6187945316794017229:cellModel50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/107338944642318:21998617554975342814:childCellModel50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/107338957700619:10042992297856463254:text1:{1:/14:childCellModel50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/107339021198218:812478760693820294106:relationDeclaration=r:da9593e3-393b-479e-8ed7-977e83834b16(CSharpComparison.structure)/115247206327474829210:cellLayout50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/123730366982518:1697467552549862781:/2:id56:18bc6592-03a6-4e29-a83a-7ff23bde13ba/432350042812123343118:7013433948933938494:name4:list1:/11:nodeFactory50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/117689776447818:2206415386079565294:body50:f3061a53-9226-4cc5-a443-f952ceaf5816/106858012313618:9446608043679425149:statement50:f3061a53-9226-4cc5-a443-f952ceaf5816/106858124287819:109384758763945885910:expression50:f3061a53-9226-4cc5-a443-f952ceaf5816/114555297709318:5216892994925949227:creator50:7866978e-a0f0-4cc7-81bc-4d213d9375e1/118063677061318:81208243113280330111:createdType50:7866978e-a0f0-4cc7-81bc-4d213d9375e1/113805575469818:42418885403430133485:concept=r:0fbcf19f-c60b-479b-81cb-094b5b2b9f1d(metabnf.structure)/88227129355633429961:/1:/1:/1:/1:/1:/1:/14:childCellModel50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/107338957700618:7064285824486047174:text1:}1:/10:cellLayout50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/123730366982518:8160369256543149841:/1:/18:inspectedCellModel50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/107338944642318:27914049625401054810:cellLayout50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/110627057171018:1188021903221488071:/1:/1:/" />
      <ref role="7dNNG" node="6zxGQbUlIdw" resolve="block" />
      <ref role="7dNNJ" to="3bo8:nKKL$GNJlW" />
    </node>
    <node concept="7dNNV" id="6zxGQbUmcoY" role="7dNNH">
      <property role="7dNNL" value="r:edb0b875-a5b3-45df-85ce-c6aa69d86475(mbnf.sandbox.CSharpComparison)/7557518887392568171|r:d19057af-a743-4e69-acc1-6ce8663382f6(CSharpComparison.editor)|18bc6592-03a6-4e29-a83a-7ff23bde13ba/1071666914219" />
      <property role="7dNNN" value="vanilla.generated-aspect; reviewed whole-root ownership" />
      <property role="7dNNK" value="50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/107166691421919:114062408449366890614:virtualPackage5:ANTLR104:conceptDeclaration=r:da9593e3-393b-479e-8ed7-977e83834b16(CSharpComparison.structure)/8720285651603526399:cellModel50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/107338944642318:62313150451114338714:childCellModel50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/107338988282318:109469891950607029105:relationDeclaration=r:da9593e3-393b-479e-8ed7-977e83834b16(CSharpComparison.structure)/5900959000572835491:/10:cellLayout50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/123730366982518:1509987965140493311:/1:/18:inspectedCellModel50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/107338944642318:77165167762141880810:cellLayout50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/110627057171019:10343965814247791131:/1:/1:/" />
      <ref role="7dNNG" node="6zxGQbUlIdF" resolve="statement__ANTLRAlternative1" />
      <ref role="7dNNJ" to="3bo8:ZkjSZ2w18E" />
    </node>
    <node concept="7dNNV" id="6zxGQbUmcoZ" role="7dNNH">
      <property role="7dNNL" value="r:edb0b875-a5b3-45df-85ce-c6aa69d86475(mbnf.sandbox.CSharpComparison)/7557518887392568174|r:d19057af-a743-4e69-acc1-6ce8663382f6(CSharpComparison.editor)|18bc6592-03a6-4e29-a83a-7ff23bde13ba/1071666914219" />
      <property role="7dNNN" value="vanilla.generated-aspect; reviewed whole-root ownership" />
      <property role="7dNNK" value="50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/107166691421918:43161295410324408514:virtualPackage5:ANTLR104:conceptDeclaration=r:da9593e3-393b-479e-8ed7-977e83834b16(CSharpComparison.structure)/9893947183525338399:cellModel50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/107338944642318:81598196257260463314:childCellModel50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/107338957700618:6909480679333688514:text6:return1:/14:childCellModel50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/107338988282318:748836912159696363105:relationDeclaration=r:da9593e3-393b-479e-8ed7-977e83834b16(CSharpComparison.structure)/3477090476541832841:/14:childCellModel50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/107338957700618:9474937492914141324:text1:;1:/10:cellLayout50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/123730366982518:7024040600585077891:/1:/18:inspectedCellModel50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/107338944642318:76028794409407906410:cellLayout50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/110627057171018:5954499648695985331:/1:/1:/" />
      <ref role="7dNNG" node="6zxGQbUlIdI" resolve="statement__ANTLRAlternative2" />
      <ref role="7dNNJ" to="3bo8:nXpr7DLYkP" />
    </node>
    <node concept="7dNNV" id="6zxGQbUmcp0" role="7dNNH">
      <property role="7dNNL" value="r:edb0b875-a5b3-45df-85ce-c6aa69d86475(mbnf.sandbox.CSharpComparison)/7557518887392568162|r:d19057af-a743-4e69-acc1-6ce8663382f6(CSharpComparison.editor)|18bc6592-03a6-4e29-a83a-7ff23bde13ba/1071666914219" />
      <property role="7dNNN" value="vanilla.generated-aspect; reviewed whole-root ownership" />
      <property role="7dNNK" value="50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/107166691421918:70748591622938462514:virtualPackage5:ANTLR104:conceptDeclaration=r:da9593e3-393b-479e-8ed7-977e83834b16(CSharpComparison.structure)/3890193617878426259:cellModel50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/107338944642318:41183721767573715214:childCellModel50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/107338965841418:571814404766267816105:relationDeclaration=r:da9593e3-393b-479e-8ed7-977e83834b16(CSharpComparison.structure)/2111011901560400531:/14:childCellModel50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/107339021198218:443231921513951592105:relationDeclaration=r:da9593e3-393b-479e-8ed7-977e83834b16(CSharpComparison.structure)/29022092652848734710:cellLayout50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/123730366982519:10514566560014243011:/2:id56:18bc6592-03a6-4e29-a83a-7ff23bde13ba/432350042812123343118:4194214339814748054:name4:list1:/11:nodeFactory50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/117689776447817:106416101110364804:body50:f3061a53-9226-4cc5-a443-f952ceaf5816/106858012313618:6803745471108339409:statement50:f3061a53-9226-4cc5-a443-f952ceaf5816/106858124287818:94283210968836840110:expression50:f3061a53-9226-4cc5-a443-f952ceaf5816/114555297709318:4577995203943270187:creator50:7866978e-a0f0-4cc7-81bc-4d213d9375e1/118063677061318:81317442605158771211:createdType50:7866978e-a0f0-4cc7-81bc-4d213d9375e1/113805575469818:47705210997203595885:concept=r:0fbcf19f-c60b-479b-81cb-094b5b2b9f1d(metabnf.structure)/88227129355633429961:/1:/1:/1:/1:/1:/1:/10:cellLayout50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/123730366982518:9105641679864080781:/1:/18:inspectedCellModel50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/107338944642318:47244173533485875010:cellLayout50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/110627057171017:600276753428153481:/1:/1:/" />
      <ref role="7dNNG" node="6zxGQbUlIdy" resolve="expression" />
      <ref role="7dNNJ" to="3bo8:BhvF50srAL" />
    </node>
    <node concept="7dNNV" id="6zxGQbUmcp1" role="7dNNH">
      <property role="7dNNL" value="r:edb0b875-a5b3-45df-85ce-c6aa69d86475(mbnf.sandbox.CSharpComparison)/7557518887392568164|r:d19057af-a743-4e69-acc1-6ce8663382f6(CSharpComparison.editor)|18bc6592-03a6-4e29-a83a-7ff23bde13ba/1071666914219" />
      <property role="7dNNN" value="vanilla.generated-aspect; reviewed whole-root ownership" />
      <property role="7dNNK" value="50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/107166691421918:98112160876927841114:virtualPackage5:ANTLR104:conceptDeclaration=r:da9593e3-393b-479e-8ed7-977e83834b16(CSharpComparison.structure)/1223608230015595909:cellModel50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/107338944642318:72657463796804067414:childCellModel50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/107338957700619:10629347888886800534:text1: 1:/14:childCellModel50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/107338988282318:277850198152514206106:relationDeclaration=r:da9593e3-393b-479e-8ed7-977e83834b16(CSharpComparison.structure)/11324303073910353241:/10:cellLayout50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/123730366982518:9167173127157218451:/1:/18:inspectedCellModel50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/107338944642318:21469466147788632010:cellLayout50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/110627057171018:9116343738738569221:/1:/1:/" />
      <ref role="7dNNG" node="6zxGQbUlId$" resolve="_AntlrGroup1" />
      <ref role="7dNNJ" to="3bo8:QtDeuG9L7b" />
    </node>
    <node concept="7dNNV" id="6zxGQbUmcp2" role="7dNNH">
      <property role="7dNNL" value="r:edb0b875-a5b3-45df-85ce-c6aa69d86475(mbnf.sandbox.CSharpComparison)/7557518887392568165|r:d19057af-a743-4e69-acc1-6ce8663382f6(CSharpComparison.editor)|18bc6592-03a6-4e29-a83a-7ff23bde13ba/1071666914219" />
      <property role="7dNNN" value="vanilla.generated-aspect; reviewed whole-root ownership" />
      <property role="7dNNK" value="50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/107166691421918:55597028949042715814:virtualPackage5:ANTLR105:conceptDeclaration=r:da9593e3-393b-479e-8ed7-977e83834b16(CSharpComparison.structure)/10907583540428973569:cellModel50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/107338944642318:18875318542452680314:childCellModel50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/107338957700618:2263513552824286284:text1:+1:/14:childCellModel50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/107338965841418:380835493287335329104:relationDeclaration=r:da9593e3-393b-479e-8ed7-977e83834b16(CSharpComparison.structure)/660780892665835351:/10:cellLayout50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/123730366982518:4443541889489929121:/1:/18:inspectedCellModel50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/107338944642318:74004253264933088310:cellLayout50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/110627057171018:3789965344467943931:/1:/1:/" />
      <ref role="7dNNG" node="6zxGQbUlId_" resolve="_AntlrGroup2" />
      <ref role="7dNNJ" to="3bo8:uRd0xqJROm" />
    </node>
    <node concept="7dNNV" id="6zxGQbUmcp3" role="7dNNH">
      <property role="7dNNL" value="r:edb0b875-a5b3-45df-85ce-c6aa69d86475(mbnf.sandbox.CSharpComparison)/7557518887392568159|r:d19057af-a743-4e69-acc1-6ce8663382f6(CSharpComparison.editor)|18bc6592-03a6-4e29-a83a-7ff23bde13ba/1139535219966" />
      <property role="7dNNN" value="vanilla.generated-aspect; reviewed whole-root ownership" />
      <property role="7dNNK" value="50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/113953521996616:59906776165015864:name30:OptionalRepeatedList_ActionMap14:virtualPackage5:ANTLR105:applicableConcept=r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)/11339206416264:item50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/113953528061719:10601378167300511428:actionId24:g_hAxAO/delete_action_id11:description61:Remove a node only from an optional repeated containment list15:executeFunction50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/113953543910419:10191716874924372144:body50:f3061a53-9226-4cc5-a443-f952ceaf5816/106858012313618:8125323311587768429:statement50:f3061a53-9226-4cc5-a443-f952ceaf5816/106858124286418:82999586595325916924:localVariableDeclaration50:f3061a53-9226-4cc5-a443-f952ceaf5816/106858124286318:5916477039527678334:name8:selected4:type50:f3061a53-9226-4cc5-a443-f952ceaf5816/110753590467019:1146946487955503826105:classifier=8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)/~SNode1:/11:initializer56:18bc6592-03a6-4e29-a83a-7ff23bde13ba/140290632689567532518:3961404616031997021:/1:/1:/9:statement50:f3061a53-9226-4cc5-a443-f952ceaf5816/106858012315518:42423771817012053910:expression50:f3061a53-9226-4cc5-a443-f952ceaf5816/119702775622818:1204150426513503927:operand50:f3061a53-9226-4cc5-a443-f952ceaf5816/106849888629618:789838708929941073102:variableDeclaration=r:d19057af-a743-4e69-acc1-6ce8663382f6(CSharpComparison.editor)/5916477039527678331:/9:operation50:f3061a53-9226-4cc5-a443-f952ceaf5816/120294803947418:364470841783479774129:baseMethodDeclaration=8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)/~SNode.delete%28%291:/1:/1:/1:/1:/18:canExecuteFunction56:18bc6592-03a6-4e29-a83a-7ff23bde13ba/345916204370846708918:5097467500810846114:body50:f3061a53-9226-4cc5-a443-f952ceaf5816/106858012313618:8418473082229616479:statement50:f3061a53-9226-4cc5-a443-f952ceaf5816/106858124286418:12403846095048889824:localVariableDeclaration50:f3061a53-9226-4cc5-a443-f952ceaf5816/106858124286318:9363880651527815064:name8:selected4:type50:f3061a53-9226-4cc5-a443-f952ceaf5816/110753590467018:407192860806398898105:classifier=8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)/~SNode1:/11:initializer56:18bc6592-03a6-4e29-a83a-7ff23bde13ba/140290632689567532519:10083999790392525261:/1:/1:/9:statement50:f3061a53-9226-4cc5-a443-f952ceaf5816/106858124286418:31548840692655016224:localVariableDeclaration50:f3061a53-9226-4cc5-a443-f952ceaf5816/106858124286318:3722174757738867174:name4:link4:type50:f3061a53-9226-4cc5-a443-f952ceaf5816/110753590467018:340501292984211741119:classifier=8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)/~SContainmentLink1:/11:initializer50:f3061a53-9226-4cc5-a443-f952ceaf5816/119702775622818:2001407903216322447:operand50:f3061a53-9226-4cc5-a443-f952ceaf5816/106849888629618:492107235101134889102:variableDeclaration=r:d19057af-a743-4e69-acc1-6ce8663382f6(CSharpComparison.editor)/9363880651527815061:/9:operation50:f3061a53-9226-4cc5-a443-f952ceaf5816/120294803947419:1082303702535608150141:baseMethodDeclaration=8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)/~SNode.getContainmentLink%28%291:/1:/1:/1:/9:statement50:f3061a53-9226-4cc5-a443-f952ceaf5816/106858124287819:101967342282234258110:expression50:f3061a53-9226-4cc5-a443-f952ceaf5816/108012034071818:70576884657371904714:leftExpression50:f3061a53-9226-4cc5-a443-f952ceaf5816/108012034071818:39403986780688059414:leftExpression50:f3061a53-9226-4cc5-a443-f952ceaf5816/108012034071818:91544905392068590614:leftExpression50:f3061a53-9226-4cc5-a443-f952ceaf5816/107323943737519:103282877915996883714:leftExpression50:f3061a53-9226-4cc5-a443-f952ceaf5816/119702775622818:4452038077860219897:operand50:f3061a53-9226-4cc5-a443-f952ceaf5816/106849888629618:367898132557501343102:variableDeclaration=r:d19057af-a743-4e69-acc1-6ce8663382f6(CSharpComparison.editor)/9363880651527815061:/9:operation50:f3061a53-9226-4cc5-a443-f952ceaf5816/120294803947418:237879754871739253132:baseMethodDeclaration=8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)/~SNode.getParent%28%291:/1:/15:rightExpression50:f3061a53-9226-4cc5-a443-f952ceaf5816/107053405834318:6569798360593494911:/1:/15:rightExpression50:f3061a53-9226-4cc5-a443-f952ceaf5816/107323943737518:84048134460994985714:leftExpression50:f3061a53-9226-4cc5-a443-f952ceaf5816/106849888629618:450365036770023932102:variableDeclaration=r:d19057af-a743-4e69-acc1-6ce8663382f6(CSharpComparison.editor)/3722174757738867171:/15:rightExpression50:f3061a53-9226-4cc5-a443-f952ceaf5816/107053405834318:4883676679570530061:/1:/1:/15:rightExpression50:f3061a53-9226-4cc5-a443-f952ceaf5816/119702775622818:4694726629274240597:operand50:f3061a53-9226-4cc5-a443-f952ceaf5816/106849888629618:419436417332792314102:variableDeclaration=r:d19057af-a743-4e69-acc1-6ce8663382f6(CSharpComparison.editor)/3722174757738867171:/9:operation50:f3061a53-9226-4cc5-a443-f952ceaf5816/120294803947418:497292570911849744144:baseMethodDeclaration=8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)/~SAbstractLink.isMultiple%28%291:/1:/1:/15:rightExpression50:f3061a53-9226-4cc5-a443-f952ceaf5816/119702775622818:6005235687893523887:operand50:f3061a53-9226-4cc5-a443-f952ceaf5816/106849888629617:13957228127759420102:variableDeclaration=r:d19057af-a743-4e69-acc1-6ce8663382f6(CSharpComparison.editor)/3722174757738867171:/9:operation50:f3061a53-9226-4cc5-a443-f952ceaf5816/120294803947418:148432054709687584144:baseMethodDeclaration=8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)/~SAbstractLink.isOptional%28%291:/1:/1:/1:/1:/1:/1:/4:item50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/113953528061718:6939791404541518768:actionId28:13S4mXuSN7V/insert_action_id11:description74:Insert a blank sibling at the end of an optional repeated containment list15:executeFunction50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/113953543910419:10456339318603771694:body50:f3061a53-9226-4cc5-a443-f952ceaf5816/106858012313618:6990673442285008389:statement50:f3061a53-9226-4cc5-a443-f952ceaf5816/106858124286416:437337196389607424:localVariableDeclaration50:f3061a53-9226-4cc5-a443-f952ceaf5816/106858124286318:1508418859806981914:name8:selected4:type50:f3061a53-9226-4cc5-a443-f952ceaf5816/110753590467018:741531361841721360105:classifier=8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)/~SNode1:/11:initializer56:18bc6592-03a6-4e29-a83a-7ff23bde13ba/140290632689567532518:7539332619998996131:/1:/1:/9:statement50:f3061a53-9226-4cc5-a443-f952ceaf5816/106858124286418:41447557137567418024:localVariableDeclaration50:f3061a53-9226-4cc5-a443-f952ceaf5816/106858124286318:3199132114976018964:name1:n4:type50:f3061a53-9226-4cc5-a443-f952ceaf5816/110753590467016:4882965644744009105:classifier=8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)/~SNode1:/11:initializer50:f3061a53-9226-4cc5-a443-f952ceaf5816/119702775622817:786519487063104887:operand50:f3061a53-9226-4cc5-a443-f952ceaf5816/119702775622818:4646959847954964039:operation50:f3061a53-9226-4cc5-a443-f952ceaf5816/120294803947417:39838474977830146131:baseMethodDeclaration=8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)/~SNode.getModel%28%291:/7:operand50:f3061a53-9226-4cc5-a443-f952ceaf5816/106849888629618:145600659398756004102:variableDeclaration=r:d19057af-a743-4e69-acc1-6ce8663382f6(CSharpComparison.editor)/1508418859806981911:/1:/9:operation50:f3061a53-9226-4cc5-a443-f952ceaf5816/120294803947418:273787991155974844177:baseMethodDeclaration=8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)/~SModel.createNode%28org.jetbrains.mps.openapi.language.SConcept%2914:actualArgument50:f3061a53-9226-4cc5-a443-f952ceaf5816/119702775622818:5095671775819242199:operation50:f3061a53-9226-4cc5-a443-f952ceaf5816/120294803947418:746111253417656274133:baseMethodDeclaration=8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)/~SNode.getConcept%28%291:/7:operand50:f3061a53-9226-4cc5-a443-f952ceaf5816/106849888629618:660715500278884859102:variableDeclaration=r:d19057af-a743-4e69-acc1-6ce8663382f6(CSharpComparison.editor)/1508418859806981911:/1:/1:/1:/1:/1:/9:statement50:f3061a53-9226-4cc5-a443-f952ceaf5816/106858012315519:111435863476334769610:expression50:f3061a53-9226-4cc5-a443-f952ceaf5816/119702775622818:1481925284521344567:operand50:f3061a53-9226-4cc5-a443-f952ceaf5816/119702775622818:1002897504797024927:operand50:f3061a53-9226-4cc5-a443-f952ceaf5816/106849888629618:467174768351243021102:variableDeclaration=r:d19057af-a743-4e69-acc1-6ce8663382f6(CSharpComparison.editor)/1508418859806981911:/9:operation50:f3061a53-9226-4cc5-a443-f952ceaf5816/120294803947418:478229586236850597132:baseMethodDeclaration=8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)/~SNode.getParent%28%291:/1:/9:operation50:f3061a53-9226-4cc5-a443-f952ceaf5816/120294803947417:35502207772866183266:baseMethodDeclaration=8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)/~SNode.insertChildAfter%28org.jetbrains.mps.openapi.language.SContainmentLink,org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode%2914:actualArgument50:f3061a53-9226-4cc5-a443-f952ceaf5816/119702775622818:3045120369724795757:operand50:f3061a53-9226-4cc5-a443-f952ceaf5816/106849888629618:334731578867909967102:variableDeclaration=r:d19057af-a743-4e69-acc1-6ce8663382f6(CSharpComparison.editor)/1508418859806981911:/9:operation50:f3061a53-9226-4cc5-a443-f952ceaf5816/120294803947418:167733295556881089141:baseMethodDeclaration=8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)/~SNode.getContainmentLink%28%291:/1:/14:actualArgument50:f3061a53-9226-4cc5-a443-f952ceaf5816/106849888629617:75564546747318409102:variableDeclaration=r:d19057af-a743-4e69-acc1-6ce8663382f6(CSharpComparison.editor)/3199132114976018961:/14:actualArgument50:f3061a53-9226-4cc5-a443-f952ceaf5816/106849888629619:1152557496745234808102:variableDeclaration=r:d19057af-a743-4e69-acc1-6ce8663382f6(CSharpComparison.editor)/1508418859806981911:/1:/1:/1:/9:statement50:f3061a53-9226-4cc5-a443-f952ceaf5816/106858012315517:2409792456302884910:expression50:f3061a53-9226-4cc5-a443-f952ceaf5816/119702775622818:9110571802879553709:operation56:18bc6592-03a6-4e29-a83a-7ff23bde13ba/364714606698092227217:8236944184452138313:editorContext50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/116162298123118:4841244979224421491:/12:cellSelector56:18bc6592-03a6-4e29-a83a-7ff23bde13ba/216240311152305953618:9788852195361047726:cellId38:selector_first_editable|selector_first1:/1:/7:operand50:7866978e-a0f0-4cc7-81bc-4d213d9375e1/114013798749518:9191753026617893636:asCast4:true15:conceptArgument50:7866978e-a0f0-4cc7-81bc-4d213d9375e1/117702692458819:1083062078131701110106:conceptDeclaration=r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)/11339206416261:/14:leftExpression50:f3061a53-9226-4cc5-a443-f952ceaf5816/106849888629618:153795234012405810102:variableDeclaration=r:d19057af-a743-4e69-acc1-6ce8663382f6(CSharpComparison.editor)/3199132114976018961:/1:/1:/1:/1:/1:/18:canExecuteFunction56:18bc6592-03a6-4e29-a83a-7ff23bde13ba/345916204370846708918:8897393831078290984:body50:f3061a53-9226-4cc5-a443-f952ceaf5816/106858012313618:1404544748134862819:statement50:f3061a53-9226-4cc5-a443-f952ceaf5816/106858124286418:25215058876756344824:localVariableDeclaration50:f3061a53-9226-4cc5-a443-f952ceaf5816/106858124286318:4059436247112779644:name8:selected4:type50:f3061a53-9226-4cc5-a443-f952ceaf5816/110753590467019:1112680076951649341105:classifier=8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)/~SNode1:/11:initializer56:18bc6592-03a6-4e29-a83a-7ff23bde13ba/140290632689567532518:1686394561462167401:/1:/1:/9:statement50:f3061a53-9226-4cc5-a443-f952ceaf5816/106858124286418:43206104137052155424:localVariableDeclaration50:f3061a53-9226-4cc5-a443-f952ceaf5816/106858124286318:4702765993542289874:name4:link4:type50:f3061a53-9226-4cc5-a443-f952ceaf5816/110753590467018:997227611993486971119:classifier=8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)/~SContainmentLink1:/11:initializer50:f3061a53-9226-4cc5-a443-f952ceaf5816/119702775622819:10031827183090429227:operand50:f3061a53-9226-4cc5-a443-f952ceaf5816/106849888629618:973760390084568427102:variableDeclaration=r:d19057af-a743-4e69-acc1-6ce8663382f6(CSharpComparison.editor)/4059436247112779641:/9:operation50:f3061a53-9226-4cc5-a443-f952ceaf5816/120294803947418:937942978490967422141:baseMethodDeclaration=8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)/~SNode.getContainmentLink%28%291:/1:/1:/1:/9:statement50:f3061a53-9226-4cc5-a443-f952ceaf5816/106858124287818:98970434887894188210:expression50:f3061a53-9226-4cc5-a443-f952ceaf5816/108012034071818:14001334917343211414:leftExpression50:f3061a53-9226-4cc5-a443-f952ceaf5816/108012034071818:82331250083477941414:leftExpression50:f3061a53-9226-4cc5-a443-f952ceaf5816/108012034071818:11125071559467969514:leftExpression50:f3061a53-9226-4cc5-a443-f952ceaf5816/108012034071818:83371220420331662914:leftExpression50:f3061a53-9226-4cc5-a443-f952ceaf5816/107323943737519:108675850568412897414:leftExpression50:f3061a53-9226-4cc5-a443-f952ceaf5816/119702775622818:5015815508225181367:operand50:f3061a53-9226-4cc5-a443-f952ceaf5816/106849888629618:188018451397962761102:variableDeclaration=r:d19057af-a743-4e69-acc1-6ce8663382f6(CSharpComparison.editor)/4059436247112779641:/9:operation50:f3061a53-9226-4cc5-a443-f952ceaf5816/120294803947419:1022609987648676379132:baseMethodDeclaration=8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)/~SNode.getParent%28%291:/1:/15:rightExpression50:f3061a53-9226-4cc5-a443-f952ceaf5816/107053405834318:4675944727643783461:/1:/15:rightExpression50:f3061a53-9226-4cc5-a443-f952ceaf5816/107323943737518:59056605357810605914:leftExpression50:f3061a53-9226-4cc5-a443-f952ceaf5816/106849888629618:652366653420311359102:variableDeclaration=r:d19057af-a743-4e69-acc1-6ce8663382f6(CSharpComparison.editor)/4702765993542289871:/15:rightExpression50:f3061a53-9226-4cc5-a443-f952ceaf5816/107053405834319:10310596308527512701:/1:/1:/15:rightExpression50:f3061a53-9226-4cc5-a443-f952ceaf5816/119702775622817:347273465123157657:operand50:f3061a53-9226-4cc5-a443-f952ceaf5816/106849888629618:126299017879589959102:variableDeclaration=r:d19057af-a743-4e69-acc1-6ce8663382f6(CSharpComparison.editor)/4702765993542289871:/9:operation50:f3061a53-9226-4cc5-a443-f952ceaf5816/120294803947418:512628721215419202144:baseMethodDeclaration=8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)/~SAbstractLink.isMultiple%28%291:/1:/1:/15:rightExpression50:f3061a53-9226-4cc5-a443-f952ceaf5816/119702775622818:1892057990687935067:operand50:f3061a53-9226-4cc5-a443-f952ceaf5816/106849888629618:376643593767848774102:variableDeclaration=r:d19057af-a743-4e69-acc1-6ce8663382f6(CSharpComparison.editor)/4702765993542289871:/9:operation50:f3061a53-9226-4cc5-a443-f952ceaf5816/120294803947418:804046776237805051144:baseMethodDeclaration=8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)/~SAbstractLink.isOptional%28%291:/1:/1:/15:rightExpression50:f3061a53-9226-4cc5-a443-f952ceaf5816/119702775622818:9132551829596311747:operand50:f3061a53-9226-4cc5-a443-f952ceaf5816/119702775622818:4937810980199132637:operand56:18bc6592-03a6-4e29-a83a-7ff23bde13ba/140290632689567532518:1021038806255354291:/9:operation50:7866978e-a0f0-4cc7-81bc-4d213d9375e1/114351201588518:6560249974225433861:/1:/9:operation50:7866978e-a0f0-4cc7-81bc-4d213d9375e1/117199911687018:1637770813547867391:/1:/1:/1:/1:/1:/1:/1:/" />
      <ref role="7dNNG" node="6zxGQbUlIdv" resolve="program" />
      <ref role="7dNNJ" to="3bo8:li7PjiUdi" resolve="OptionalRepeatedList_ActionMap" />
    </node>
    <node concept="7dNNV" id="6zxGQbUmcp4" role="7dNNH">
      <property role="7dNNL" value="r:edb0b875-a5b3-45df-85ce-c6aa69d86475(mbnf.sandbox.CSharpComparison)/7557518887392568159|r:848feee2-47c6-46a1-aeda-fd7591c87767(CSharpComparison.textGen)|b83431fe-5c8f-40bc-8a36-65e25f4dd253/1233670071145" />
      <property role="7dNNN" value="vanilla.generated-aspect; reviewed whole-root ownership" />
      <property role="7dNNK" value="50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123367007114519:109810971151670375414:virtualPackage5:ANTLR105:conceptDeclaration=r:da9593e3-393b-479e-8ed7-977e83834b16(CSharpComparison.structure)/110133811795496826512:textGenBlock50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123374924788819:10236892989058757314:body50:f3061a53-9226-4cc5-a443-f952ceaf5816/106858012313618:6320835879647708799:statement50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123618813984618:4297541387714089034:list50:f3061a53-9226-4cc5-a443-f952ceaf5816/106858012313618:8228654712887666539:statement50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123730607917818:5457825868382482374:part50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123730533431218:8846690311093054255:value50:f3061a53-9226-4cc5-a443-f952ceaf5816/119702775622818:1449560235565128987:operand50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123374805591518:5773037024274230871:/9:operation50:7866978e-a0f0-4cc7-81bc-4d213d9375e1/113805614356218:99980413067665037091:link=r:da9593e3-393b-479e-8ed7-977e83834b16(CSharpComparison.structure)/10300544211033658821:/1:/1:/1:/1:/1:/1:/1:/1:/" />
      <ref role="7dNNG" node="6zxGQbUlIdv" resolve="program" />
      <ref role="7dNNJ" to="lmxd:WXhfrJn1Ka" />
    </node>
    <node concept="7dNNV" id="6zxGQbUmcp5" role="7dNNH">
      <property role="7dNNL" value="r:edb0b875-a5b3-45df-85ce-c6aa69d86475(mbnf.sandbox.CSharpComparison)/7557518887392568160|r:848feee2-47c6-46a1-aeda-fd7591c87767(CSharpComparison.textGen)|b83431fe-5c8f-40bc-8a36-65e25f4dd253/1233670071145" />
      <property role="7dNNN" value="vanilla.generated-aspect; reviewed whole-root ownership" />
      <property role="7dNNK" value="50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123367007114518:29330308084345409914:virtualPackage5:ANTLR104:conceptDeclaration=r:da9593e3-393b-479e-8ed7-977e83834b16(CSharpComparison.structure)/61879453167940172212:textGenBlock50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123374924788818:8184482570476242814:body50:f3061a53-9226-4cc5-a443-f952ceaf5816/106858012313618:2404609172884815579:statement50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123730607917818:1613606988340767994:part50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123730555763818:3835396058517193935:value1:{1:/1:/9:statement50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123618813984619:10607839163404126114:list50:f3061a53-9226-4cc5-a443-f952ceaf5816/106858012313618:1198715481472830149:statement50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123730607917817:529184557160070634:part50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123730549186818:47328024086751051113:withSeparator4:true4:list50:f3061a53-9226-4cc5-a443-f952ceaf5816/119702775622818:9019427829176239447:operand50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123374805591518:1220929641414108861:/9:operation50:7866978e-a0f0-4cc7-81bc-4d213d9375e1/113805628239318:77485095711041482391:link=r:da9593e3-393b-479e-8ed7-977e83834b16(CSharpComparison.structure)/11524720632747482921:/1:/1:/1:/1:/1:/9:statement50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123730607917819:10655678736772703154:part50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123730555763818:6720509202271885505:value1:}1:/1:/1:/1:/1:/" />
      <ref role="7dNNG" node="6zxGQbUlIdw" resolve="block" />
      <ref role="7dNNJ" to="lmxd:gi1p$pcUqj" />
    </node>
    <node concept="7dNNV" id="6zxGQbUmcp6" role="7dNNH">
      <property role="7dNNL" value="r:edb0b875-a5b3-45df-85ce-c6aa69d86475(mbnf.sandbox.CSharpComparison)/7557518887392568171|r:848feee2-47c6-46a1-aeda-fd7591c87767(CSharpComparison.textGen)|b83431fe-5c8f-40bc-8a36-65e25f4dd253/1233670071145" />
      <property role="7dNNN" value="vanilla.generated-aspect; reviewed whole-root ownership" />
      <property role="7dNNK" value="50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123367007114518:10498557927255457714:virtualPackage5:ANTLR104:conceptDeclaration=r:da9593e3-393b-479e-8ed7-977e83834b16(CSharpComparison.structure)/87202856516035263912:textGenBlock50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123374924788817:566913147574081604:body50:f3061a53-9226-4cc5-a443-f952ceaf5816/106858012313618:3470888182602368039:statement50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123618813984618:9546259475660953324:list50:f3061a53-9226-4cc5-a443-f952ceaf5816/106858012313618:3370587245398815969:statement50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123730607917818:8940575207063608304:part50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123730533431218:3055456452440112105:value50:f3061a53-9226-4cc5-a443-f952ceaf5816/119702775622818:7386840210264473317:operand50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123374805591518:7060505949004515691:/9:operation50:7866978e-a0f0-4cc7-81bc-4d213d9375e1/113805614356218:95471167471512308090:link=r:da9593e3-393b-479e-8ed7-977e83834b16(CSharpComparison.structure)/5900959000572835491:/1:/1:/1:/1:/1:/1:/1:/1:/" />
      <ref role="7dNNG" node="6zxGQbUlIdF" resolve="statement__ANTLRAlternative1" />
      <ref role="7dNNJ" to="lmxd:5OYXfZ54xh" />
    </node>
    <node concept="7dNNV" id="6zxGQbUmcp7" role="7dNNH">
      <property role="7dNNL" value="r:edb0b875-a5b3-45df-85ce-c6aa69d86475(mbnf.sandbox.CSharpComparison)/7557518887392568174|r:848feee2-47c6-46a1-aeda-fd7591c87767(CSharpComparison.textGen)|b83431fe-5c8f-40bc-8a36-65e25f4dd253/1233670071145" />
      <property role="7dNNN" value="vanilla.generated-aspect; reviewed whole-root ownership" />
      <property role="7dNNK" value="50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123367007114518:67438375492823467014:virtualPackage5:ANTLR104:conceptDeclaration=r:da9593e3-393b-479e-8ed7-977e83834b16(CSharpComparison.structure)/98939471835253383912:textGenBlock50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123374924788818:4001479064266322504:body50:f3061a53-9226-4cc5-a443-f952ceaf5816/106858012313618:7212999862468817509:statement50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123730607917818:9877674438842677694:part50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123730555763818:9715813811567790625:value6:return1:/1:/9:statement50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123618813984618:9744990364553599554:list50:f3061a53-9226-4cc5-a443-f952ceaf5816/106858012313618:8070116879235447369:statement50:f3061a53-9226-4cc5-a443-f952ceaf5816/106858012315918:8643969636499578606:ifTrue50:f3061a53-9226-4cc5-a443-f952ceaf5816/106858012313618:4578623519963455479:statement50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123730607917818:5555142428032216284:part50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123730533431219:10785762004447327375:value50:f3061a53-9226-4cc5-a443-f952ceaf5816/119702775622818:3633349824880339347:operand50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123374805591518:2441920950331686441:/9:operation50:7866978e-a0f0-4cc7-81bc-4d213d9375e1/113805614356218:89429792995480678690:link=r:da9593e3-393b-479e-8ed7-977e83834b16(CSharpComparison.structure)/3477090476541832841:/1:/1:/1:/1:/9:condition50:f3061a53-9226-4cc5-a443-f952ceaf5816/119702775622819:10442819410417363407:operand50:f3061a53-9226-4cc5-a443-f952ceaf5816/119702775622819:10158963085567792587:operand50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123374805591518:2380733607032924781:/9:operation50:7866978e-a0f0-4cc7-81bc-4d213d9375e1/113805614356216:377928072451877490:link=r:da9593e3-393b-479e-8ed7-977e83834b16(CSharpComparison.structure)/3477090476541832841:/1:/9:operation50:7866978e-a0f0-4cc7-81bc-4d213d9375e1/117200832023118:4036472075987912971:/1:/1:/1:/1:/9:statement50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123730607917818:1383074950050476244:part50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123730555763818:7110785022249568545:value1:;1:/1:/1:/1:/1:/" />
      <ref role="7dNNG" node="6zxGQbUlIdI" resolve="statement__ANTLRAlternative2" />
      <ref role="7dNNJ" to="lmxd:_rT7eUME2I" />
    </node>
    <node concept="7dNNV" id="6zxGQbUmcp8" role="7dNNH">
      <property role="7dNNL" value="r:edb0b875-a5b3-45df-85ce-c6aa69d86475(mbnf.sandbox.CSharpComparison)/7557518887392568162|r:848feee2-47c6-46a1-aeda-fd7591c87767(CSharpComparison.textGen)|b83431fe-5c8f-40bc-8a36-65e25f4dd253/1233670071145" />
      <property role="7dNNN" value="vanilla.generated-aspect; reviewed whole-root ownership" />
      <property role="7dNNK" value="50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123367007114518:29331178198167898714:virtualPackage5:ANTLR104:conceptDeclaration=r:da9593e3-393b-479e-8ed7-977e83834b16(CSharpComparison.structure)/38901936178784262512:textGenBlock50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123374924788818:7173306231580519174:body50:f3061a53-9226-4cc5-a443-f952ceaf5816/106858012313618:6985683484320448389:statement50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123730607917818:5476604696174451854:part50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123730533431218:9311645328331281805:value50:f3061a53-9226-4cc5-a443-f952ceaf5816/119702775622819:11269143538506230537:operand50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123374805591519:10487285656654600491:/9:operation50:7866978e-a0f0-4cc7-81bc-4d213d9375e1/113805602263918:52322757364000323694:property=r:da9593e3-393b-479e-8ed7-977e83834b16(CSharpComparison.structure)/2111011901560400531:/1:/1:/1:/9:statement50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123618813984618:5421275533767058964:list50:f3061a53-9226-4cc5-a443-f952ceaf5816/106858012313618:5698074222865098539:statement50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123730607917818:9463432875650187184:part50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123730549186819:105021867893988685413:withSeparator4:true4:list50:f3061a53-9226-4cc5-a443-f952ceaf5816/119702775622818:2474616818573002367:operand50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123374805591518:4398945183124147821:/9:operation50:7866978e-a0f0-4cc7-81bc-4d213d9375e1/113805628239318:17788291613298130790:link=r:da9593e3-393b-479e-8ed7-977e83834b16(CSharpComparison.structure)/2902209265284873471:/1:/1:/1:/1:/1:/1:/1:/1:/" />
      <ref role="7dNNG" node="6zxGQbUlIdy" resolve="expression" />
      <ref role="7dNNJ" to="lmxd:gi3obXt6Qb" />
    </node>
    <node concept="7dNNV" id="6zxGQbUmcp9" role="7dNNH">
      <property role="7dNNL" value="r:edb0b875-a5b3-45df-85ce-c6aa69d86475(mbnf.sandbox.CSharpComparison)/7557518887392568164|r:848feee2-47c6-46a1-aeda-fd7591c87767(CSharpComparison.textGen)|b83431fe-5c8f-40bc-8a36-65e25f4dd253/1233670071145" />
      <property role="7dNNN" value="vanilla.generated-aspect; reviewed whole-root ownership" />
      <property role="7dNNK" value="50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123367007114517:9413550469437531714:virtualPackage5:ANTLR104:conceptDeclaration=r:da9593e3-393b-479e-8ed7-977e83834b16(CSharpComparison.structure)/12236082300155959012:textGenBlock50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123374924788818:6503000870677061904:body50:f3061a53-9226-4cc5-a443-f952ceaf5816/106858012313618:6627855167403347789:statement50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123730607917819:11435731150947944494:part50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123730555763818:8487960637572901145:value1: 1:/1:/9:statement50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123618813984618:4129814554044441014:list50:f3061a53-9226-4cc5-a443-f952ceaf5816/106858012313618:4781231548660444659:statement50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123730607917818:3410409491474854224:part50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123730533431218:5655964416976477065:value50:f3061a53-9226-4cc5-a443-f952ceaf5816/119702775622818:4454205610029673747:operand50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123374805591516:77240988025370921:/9:operation50:7866978e-a0f0-4cc7-81bc-4d213d9375e1/113805614356218:25144179590059748491:link=r:da9593e3-393b-479e-8ed7-977e83834b16(CSharpComparison.structure)/11324303073910353241:/1:/1:/1:/1:/1:/1:/1:/1:/" />
      <ref role="7dNNG" node="6zxGQbUlId$" resolve="_AntlrGroup1" />
      <ref role="7dNNJ" to="lmxd:5erVSA3Rel" />
    </node>
    <node concept="7dNNV" id="6zxGQbUmcpa" role="7dNNH">
      <property role="7dNNL" value="r:edb0b875-a5b3-45df-85ce-c6aa69d86475(mbnf.sandbox.CSharpComparison)/7557518887392568165|r:848feee2-47c6-46a1-aeda-fd7591c87767(CSharpComparison.textGen)|b83431fe-5c8f-40bc-8a36-65e25f4dd253/1233670071145" />
      <property role="7dNNN" value="vanilla.generated-aspect; reviewed whole-root ownership" />
      <property role="7dNNK" value="50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123367007114518:11874025628760717214:virtualPackage5:ANTLR105:conceptDeclaration=r:da9593e3-393b-479e-8ed7-977e83834b16(CSharpComparison.structure)/109075835404289735612:textGenBlock50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123374924788818:8347953005459787914:body50:f3061a53-9226-4cc5-a443-f952ceaf5816/106858012313618:9483354149767674989:statement50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123730607917818:3541078141344519714:part50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123730555763817:448413138568872945:value1:+1:/1:/9:statement50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123730607917817:983726085139250124:part50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123730533431217:451346671391215885:value50:f3061a53-9226-4cc5-a443-f952ceaf5816/119702775622818:3483357933006101547:operand50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123374805591518:6772012022570069691:/9:operation50:7866978e-a0f0-4cc7-81bc-4d213d9375e1/113805602263918:88703772174840529793:property=r:da9593e3-393b-479e-8ed7-977e83834b16(CSharpComparison.structure)/660780892665835351:/1:/1:/1:/1:/1:/1:/" />
      <ref role="7dNNG" node="6zxGQbUlId_" resolve="_AntlrGroup2" />
      <ref role="7dNNJ" to="lmxd:6_Qq9czWA4" />
    </node>
    <node concept="7dNNV" id="6zxGQbUmcpb" role="7dNNH">
      <property role="7dNNL" value="r:edb0b875-a5b3-45df-85ce-c6aa69d86475(mbnf.sandbox.CSharpComparison)/7557518887392568159|r:da9593e3-393b-479e-8ed7-977e83834b16(CSharpComparison.structure)|c72da2b9-7cce-4447-8389-f407dc1158b7/1071489090640" />
      <property role="7dNNN" value="vanilla.generated-aspect; reviewed whole-root ownership" />
      <property role="7dNNK" value="50:c72da2b9-7cce-4447-8389-f407dc1158b7/107148909064019:11013381179549682659:conceptId19:108956276911215272712:intConceptId9:4054676524:name7:program8:rootable4:true14:virtualPackage5:ANTLR95:extends=r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)/113392064162615:linkDeclaration50:c72da2b9-7cce-4447-8389-f407dc1158b7/107148928829819:10300544211033658826:linkId18:5485856144739366069:metaClass19:fLJjDmT/aggregation4:role5:block17:sourceCardinality10:fLJekj4/_192:target=r:da9593e3-393b-479e-8ed7-977e83834b16(CSharpComparison.structure)/6187945316794017221:/1:/" />
      <ref role="7dNNG" node="6zxGQbUlIdv" resolve="program" />
      <ref role="7dNNJ" to="yiol:X8JiVyjpF9" resolve="program" />
    </node>
    <node concept="7dNNV" id="6zxGQbUmcpc" role="7dNNH">
      <property role="7dNNL" value="r:edb0b875-a5b3-45df-85ce-c6aa69d86475(mbnf.sandbox.CSharpComparison)/7557518887392568160|r:da9593e3-393b-479e-8ed7-977e83834b16(CSharpComparison.structure)|c72da2b9-7cce-4447-8389-f407dc1158b7/1071489090640" />
      <property role="7dNNN" value="vanilla.generated-aspect; reviewed whole-root ownership" />
      <property role="7dNNK" value="50:c72da2b9-7cce-4447-8389-f407dc1158b7/107148909064018:61879453167940172212:conceptAlias1:{9:conceptId18:90940148144923699912:intConceptId9:4054676524:name5:block14:virtualPackage5:ANTLR95:extends=r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)/113392064162615:linkDeclaration50:c72da2b9-7cce-4447-8389-f407dc1158b7/107148928829819:11524720632747482926:linkId17:781612021081325029:metaClass19:fLJjDmT/aggregation4:role9:statement17:sourceCardinality13:fLJekj5/_0__n92:target=r:da9593e3-393b-479e-8ed7-977e83834b16(CSharpComparison.structure)/4508609144268717231:/1:/" />
      <ref role="7dNNG" node="6zxGQbUlIdw" resolve="block" />
      <ref role="7dNNJ" to="yiol:ymp_$pH7rU" resolve="block" />
    </node>
    <node concept="7dNNV" id="6zxGQbUmcpd" role="7dNNH">
      <property role="7dNNL" value="r:edb0b875-a5b3-45df-85ce-c6aa69d86475(mbnf.sandbox.CSharpComparison)/7557518887392568161|r:da9593e3-393b-479e-8ed7-977e83834b16(CSharpComparison.structure)|c72da2b9-7cce-4447-8389-f407dc1158b7/1169125989551" />
      <property role="7dNNN" value="vanilla.generated-aspect; reviewed whole-root ownership" />
      <property role="7dNNK" value="50:c72da2b9-7cce-4447-8389-f407dc1158b7/116912598955118:4508609144268717239:conceptId18:20253353414285542712:intConceptId9:4056585954:name9:statement14:virtualPackage5:ANTLR1:/" />
      <ref role="7dNNG" node="6zxGQbUlIdx" resolve="statement" />
      <ref role="7dNNJ" to="yiol:p1LTNBxnYF" resolve="statement" />
    </node>
    <node concept="7dNNV" id="6zxGQbUmcpe" role="7dNNH">
      <property role="7dNNL" value="r:edb0b875-a5b3-45df-85ce-c6aa69d86475(mbnf.sandbox.CSharpComparison)/7557518887392568171|r:da9593e3-393b-479e-8ed7-977e83834b16(CSharpComparison.structure)|c72da2b9-7cce-4447-8389-f407dc1158b7/1071489090640" />
      <property role="7dNNN" value="vanilla.generated-aspect; reviewed whole-root ownership" />
      <property role="7dNNK" value="50:c72da2b9-7cce-4447-8389-f407dc1158b7/107148909064018:8720285651603526399:conceptId18:15952702166826567912:intConceptId9:4054676524:name28:statement__ANTLRAlternative114:virtualPackage5:ANTLR95:extends=r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)/113392064162615:linkDeclaration50:c72da2b9-7cce-4447-8389-f407dc1158b7/107148928829818:5900959000572835496:linkId18:5611289689291440139:metaClass19:fLJjDmT/aggregation4:role5:block17:sourceCardinality10:fLJekj4/_192:target=r:da9593e3-393b-479e-8ed7-977e83834b16(CSharpComparison.structure)/6187945316794017221:/10:implements50:c72da2b9-7cce-4447-8389-f407dc1158b7/116912762216818:57415266253382481491:intfc=r:da9593e3-393b-479e-8ed7-977e83834b16(CSharpComparison.structure)/4508609144268717231:/1:/" />
      <ref role="7dNNG" node="6zxGQbUlIdF" resolve="statement__ANTLRAlternative1" />
      <ref role="7dNNJ" to="yiol:Kq4lKso5HZ" resolve="statement__ANTLRAlternative1" />
    </node>
    <node concept="7dNNV" id="6zxGQbUmcpf" role="7dNNH">
      <property role="7dNNL" value="r:edb0b875-a5b3-45df-85ce-c6aa69d86475(mbnf.sandbox.CSharpComparison)/7557518887392568174|r:da9593e3-393b-479e-8ed7-977e83834b16(CSharpComparison.structure)|c72da2b9-7cce-4447-8389-f407dc1158b7/1071489090640" />
      <property role="7dNNN" value="vanilla.generated-aspect; reviewed whole-root ownership" />
      <property role="7dNNK" value="50:c72da2b9-7cce-4447-8389-f407dc1158b7/107148909064018:98939471835253383912:conceptAlias6:return9:conceptId18:18678367327023798012:intConceptId9:4054676524:name28:statement__ANTLRAlternative214:virtualPackage5:ANTLR95:extends=r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)/113392064162615:linkDeclaration50:c72da2b9-7cce-4447-8389-f407dc1158b7/107148928829818:3477090476541832846:linkId18:9245026128448023589:metaClass19:fLJjDmT/aggregation4:role12:_AntlrGroup192:target=r:da9593e3-393b-479e-8ed7-977e83834b16(CSharpComparison.structure)/1223608230015595901:/10:implements50:c72da2b9-7cce-4447-8389-f407dc1158b7/116912762216819:103085394157738606191:intfc=r:da9593e3-393b-479e-8ed7-977e83834b16(CSharpComparison.structure)/4508609144268717231:/1:/" />
      <ref role="7dNNG" node="6zxGQbUlIdI" resolve="statement__ANTLRAlternative2" />
      <ref role="7dNNJ" to="yiol:QV2k4q3e_f" resolve="statement__ANTLRAlternative2" />
    </node>
    <node concept="7dNNV" id="6zxGQbUmcpg" role="7dNNH">
      <property role="7dNNL" value="r:edb0b875-a5b3-45df-85ce-c6aa69d86475(mbnf.sandbox.CSharpComparison)/7557518887392568162|r:da9593e3-393b-479e-8ed7-977e83834b16(CSharpComparison.structure)|c72da2b9-7cce-4447-8389-f407dc1158b7/1071489090640" />
      <property role="7dNNN" value="vanilla.generated-aspect; reviewed whole-root ownership" />
      <property role="7dNNK" value="50:c72da2b9-7cce-4447-8389-f407dc1158b7/107148909064018:3890193617878426259:conceptId18:27334176069211844412:intConceptId9:4054676524:name10:expression14:virtualPackage5:ANTLR95:extends=r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)/113392064162619:propertyDeclaration50:c72da2b9-7cce-4447-8389-f407dc1158b7/107148928829918:2111011901560400534:name6:NUMBER10:propertyId18:11432726315398865494:dataType=r:da9593e3-393b-479e-8ed7-977e83834b16(CSharpComparison.structure)/8566158105178974661:/15:linkDeclaration50:c72da2b9-7cce-4447-8389-f407dc1158b7/107148928829818:2902209265284873476:linkId18:7795919696170561089:metaClass19:fLJjDmT/aggregation4:role12:_AntlrGroup217:sourceCardinality13:fLJekj5/_0__n93:target=r:da9593e3-393b-479e-8ed7-977e83834b16(CSharpComparison.structure)/10907583540428973561:/1:/" />
      <ref role="7dNNG" node="6zxGQbUlIdy" resolve="expression" />
      <ref role="7dNNJ" to="yiol:lA4KLA7h11" resolve="expression" />
    </node>
    <node concept="7dNNV" id="6zxGQbUmcph" role="7dNNH">
      <property role="7dNNL" value="r:edb0b875-a5b3-45df-85ce-c6aa69d86475(mbnf.sandbox.CSharpComparison)/7557518887392568163|r:da9593e3-393b-479e-8ed7-977e83834b16(CSharpComparison.structure)|c72da2b9-7cce-4447-8389-f407dc1158b7/1082978499127" />
      <property role="7dNNN" value="vanilla.generated-aspect; reviewed whole-root ownership" />
      <property role="7dNNK" value="50:c72da2b9-7cce-4447-8389-f407dc1158b7/108297849912718:85661581051789746610:constraint6:[0-9]+4:name6:NUMBER14:virtualPackage5:ANTLR1:/" />
      <ref role="7dNNG" node="6zxGQbUlIdz" resolve="NUMBER" />
      <ref role="7dNNJ" to="yiol:JzjSE6TL3U" resolve="NUMBER" />
    </node>
    <node concept="7dNNV" id="6zxGQbUmcpi" role="7dNNH">
      <property role="7dNNL" value="r:edb0b875-a5b3-45df-85ce-c6aa69d86475(mbnf.sandbox.CSharpComparison)/7557518887392568164|r:da9593e3-393b-479e-8ed7-977e83834b16(CSharpComparison.structure)|c72da2b9-7cce-4447-8389-f407dc1158b7/1071489090640" />
      <property role="7dNNN" value="vanilla.generated-aspect; reviewed whole-root ownership" />
      <property role="7dNNK" value="50:c72da2b9-7cce-4447-8389-f407dc1158b7/107148909064018:12236082300155959012:conceptAlias1: 9:conceptId18:76338701110777725312:intConceptId9:4054676524:name12:_AntlrGroup114:virtualPackage5:ANTLR95:extends=r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)/113392064162615:linkDeclaration50:c72da2b9-7cce-4447-8389-f407dc1158b7/107148928829819:11324303073910353246:linkId18:9847456008101065949:metaClass19:fLJjDmT/aggregation4:role10:expression17:sourceCardinality10:fLJekj4/_192:target=r:da9593e3-393b-479e-8ed7-977e83834b16(CSharpComparison.structure)/3890193617878426251:/1:/" />
      <ref role="7dNNG" node="6zxGQbUlId$" resolve="_AntlrGroup1" />
      <ref role="7dNNJ" to="yiol:6MHCkHrF8A" resolve="_AntlrGroup1" />
    </node>
    <node concept="7dNNV" id="6zxGQbUmcpj" role="7dNNH">
      <property role="7dNNL" value="r:edb0b875-a5b3-45df-85ce-c6aa69d86475(mbnf.sandbox.CSharpComparison)/7557518887392568165|r:da9593e3-393b-479e-8ed7-977e83834b16(CSharpComparison.structure)|c72da2b9-7cce-4447-8389-f407dc1158b7/1071489090640" />
      <property role="7dNNN" value="vanilla.generated-aspect; reviewed whole-root ownership" />
      <property role="7dNNK" value="50:c72da2b9-7cce-4447-8389-f407dc1158b7/107148909064019:109075835404289735612:conceptAlias1:+9:conceptId18:16942296636018864712:intConceptId9:4054676524:name12:_AntlrGroup214:virtualPackage5:ANTLR95:extends=r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)/113392064162619:propertyDeclaration50:c72da2b9-7cce-4447-8389-f407dc1158b7/107148928829917:660780892665835354:name6:NUMBER10:propertyId18:96930979534458687894:dataType=r:da9593e3-393b-479e-8ed7-977e83834b16(CSharpComparison.structure)/8566158105178974661:/1:/" />
      <ref role="7dNNG" node="6zxGQbUlId_" resolve="_AntlrGroup2" />
      <ref role="7dNNJ" to="yiol:Wz9J6$x4fc" resolve="_AntlrGroup2" />
    </node>
  </node>
</model>

