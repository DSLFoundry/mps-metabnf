<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:2655fdd9-5e4e-4901-8b30-fc4c402d27e1(mbnf.sandbox.InteractiveFixture)">
  <persistence version="9" />
  <languages>
    <use id="9c03c641-469f-49e7-aeed-44a3d19b7253" name="metabnf" version="0" />
  </languages>
  <imports>
    <import index="hoko" ref="r:ca936f89-ba77-4ff7-9a03-c2760446caa0(DemoUsability.editor)" />
    <import index="xgq7" ref="r:07cfe27d-a615-4ff4-b232-6224567a8742(DemoUsability.textGen)" />
    <import index="n2m4" ref="r:29df74a9-1ef8-4ba0-9f28-0451ab1e71a4(DemoUsability.structure)" />
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
      <concept id="4939832016427306382" name="metabnf.structure.Flag" flags="ng" index="2DNoa5" />
      <concept id="656738873848441252" name="metabnf.structure.UsabilityAnnotation" flags="ng" index="2WW1Oy">
        <property id="656738873848441254" name="suppressed" index="2WW1Ow" />
        <property id="656738873848441255" name="evidence" index="2WW1Ox" />
        <property id="656738873848441253" name="origin" index="2WW1Oz" />
      </concept>
      <concept id="656738873848441251" name="metabnf.structure.UsabilityAnnotations" flags="ng" index="2WW1O_">
        <reference id="656738873848441256" name="grammar" index="2WW1OI" />
        <child id="656738873848441257" name="annotations" index="2WW1OJ" />
      </concept>
      <concept id="656738873848441262" name="metabnf.structure.OptionalGroupAnnotation" flags="ng" index="2WW1OC">
        <property id="656738873848441266" name="distinguishEmpty" index="2WW1OO" />
        <reference id="656738873848441263" name="owner" index="2WW1OD" />
        <reference id="656738873848441264" name="first" index="2WW1OQ" />
        <reference id="656738873848441265" name="last" index="2WW1OR" />
      </concept>
      <concept id="656738873848441260" name="metabnf.structure.ListAnnotation" flags="ng" index="2WW1OE">
        <reference id="656738873848441261" name="target" index="2WW1OF" />
      </concept>
      <concept id="656738873848441258" name="metabnf.structure.FlagAnnotation" flags="ng" index="2WW1OG">
        <reference id="656738873848441259" name="target" index="2WW1OH" />
      </concept>
      <concept id="1320136301544282198" name="metabnf.structure.StringProperty" flags="ng" index="3uXKyI" />
      <concept id="2504845739424006305" name="metabnf.structure.Keyword" flags="ng" index="3xhzXc" />
      <concept id="2504845739424006197" name="metabnf.structure.ITerm" flags="ngI" index="3xhzZo">
        <property id="513220601742038557" name="newline" index="d84lQ" />
        <property id="513220601742038498" name="indent" index="d84q9" />
      </concept>
      <concept id="2504845739424006163" name="metabnf.structure.NonterminalRule" flags="ng" index="3xhzZY">
        <child id="2504845739424006198" name="terms" index="3xhzZr" />
      </concept>
      <concept id="2504845739424324587" name="metabnf.structure.NonterminalReference" flags="ng" index="3xiQg6">
        <property id="4939832016425377885" name="sep" index="2DFMXm" />
        <property id="2504845739424658192" name="card" index="3xj4NX" />
        <reference id="2504845739424324590" name="rule" index="3xiQg3" />
      </concept>
      <concept id="2504845739423496082" name="metabnf.structure.grammar" flags="ng" index="3xJwxZ">
        <reference id="2504845739423551607" name="start" index="3xJMYq" />
        <child id="2504845739423551605" name="rules" index="3xJMYo" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="3xJwxZ" id="2RLAZYDJSlD">
    <property role="TrG5h" value="DemoUsability" />
    <ref role="3xJMYq" node="2RLAZYDJSlE" resolve="Program" />
    <node concept="3xhzZY" id="2RLAZYDJSlE" role="3xJMYo">
      <property role="TrG5h" value="Program" />
      <node concept="3xhzXc" id="2RLAZYDJSlF" role="3xhzZr">
        <property role="TrG5h" value="program" />
      </node>
      <node concept="2DNoa5" id="2RLAZYDJSlG" role="3xhzZr">
        <property role="TrG5h" value="static" />
      </node>
      <node concept="3xiQg6" id="2RLAZYDJSlH" role="3xhzZr">
        <property role="TrG5h" value="statements" />
        <property role="3xj4NX" value="2b2ZYR3yDpO/AtleastOne" />
        <ref role="3xiQg3" node="2RLAZYDJSlK" resolve="Statement" />
      </node>
      <node concept="3xhzXc" id="2RLAZYDJSlI" role="3xhzZr">
        <property role="TrG5h" value="else" />
      </node>
      <node concept="3xiQg6" id="2RLAZYDJSlJ" role="3xhzZr">
        <property role="TrG5h" value="elseStatements" />
        <property role="3xj4NX" value="2b2ZYR3yDpO/AtleastOne" />
        <ref role="3xiQg3" node="2RLAZYDJSlK" resolve="Statement" />
      </node>
    </node>
    <node concept="3xhzZY" id="2RLAZYDJSlK" role="3xJMYo">
      <property role="TrG5h" value="Statement" />
      <node concept="3xhzXc" id="2RLAZYDJSlL" role="3xhzZr">
        <property role="TrG5h" value="skip" />
      </node>
    </node>
    <node concept="3xhzZY" id="2RLAZYDJSlM" role="3xJMYo">
      <property role="TrG5h" value="Declaration" />
      <node concept="2DNoa5" id="2RLAZYDJSlN" role="3xhzZr">
        <property role="TrG5h" value="public" />
      </node>
      <node concept="3uXKyI" id="2RLAZYDJSlO" role="3xhzZr">
        <property role="TrG5h" value="identifier" />
      </node>
      <node concept="3xiQg6" id="2RLAZYDJSlP" role="3xhzZr">
        <property role="TrG5h" value="clause" />
        <property role="3xj4NX" value="2b2ZYR3yDpL/AtMostOne" />
        <ref role="3xiQg3" node="2RLAZYDJSlQ" resolve="ElseClause" />
      </node>
    </node>
    <node concept="3xhzZY" id="2RLAZYDJSlQ" role="3xJMYo">
      <property role="TrG5h" value="ElseClause" />
      <node concept="3xhzXc" id="2RLAZYDJSlR" role="3xhzZr">
        <property role="TrG5h" value="else" />
      </node>
      <node concept="3xiQg6" id="2RLAZYDJSlS" role="3xhzZr">
        <property role="TrG5h" value="statements" />
        <property role="3xj4NX" value="2b2ZYR3yDpK/ZeroOrMore" />
        <ref role="3xiQg3" node="2RLAZYDJSlK" resolve="Statement" />
      </node>
    </node>
    <node concept="3xhzZY" id="54cyhNXsM8C" role="3xJMYo">
      <property role="TrG5h" value="Block" />
      <node concept="3xhzXc" id="54cyhNXsM8D" role="3xhzZr">
        <property role="TrG5h" value="begin" />
      </node>
      <node concept="3xiQg6" id="54cyhNXsM8E" role="3xhzZr">
        <property role="TrG5h" value="statements" />
        <property role="3xj4NX" value="2b2ZYR3yDpK/ZeroOrMore" />
        <property role="2DFMXm" value=";" />
        <property role="d84q9" value="true" />
        <property role="d84lQ" value="true" />
        <ref role="3xiQg3" node="2RLAZYDJSlK" resolve="Statement" />
      </node>
      <node concept="3xhzXc" id="54cyhNXsM8G" role="3xhzZr">
        <property role="TrG5h" value="end" />
      </node>
      <node concept="3xiQg6" id="54cyhNXtU1$" role="3xhzZr">
        <property role="TrG5h" value="child" />
        <property role="3xj4NX" value="2b2ZYR3yDpL/AtMostOne" />
        <ref role="3xiQg3" node="54cyhNXsM8C" resolve="Block" />
      </node>
    </node>
  </node>
  <node concept="2WW1O_" id="2RLAZYDJSlT">
    <ref role="2WW1OI" node="2RLAZYDJSlD" resolve="DemoUsability" />
    <node concept="2WW1OG" id="2RLAZYDJSlU" role="2WW1OJ">
      <property role="2WW1Ox" value="Demonstrates reuse of the existing Flag term" />
      <ref role="2WW1OH" node="2RLAZYDJSlG" resolve="static" />
    </node>
    <node concept="2WW1OE" id="2RLAZYDJSlV" role="2WW1OJ">
      <property role="2WW1Oz" value="$td8qPViAx/Inferred" />
      <property role="2WW1Ox" value="Reference has one-or-more cardinality" />
      <ref role="2WW1OF" node="2RLAZYDJSlH" resolve="statements" />
    </node>
    <node concept="2WW1OC" id="2RLAZYDJSlW" role="2WW1OJ">
      <property role="2WW1Oz" value="$td8qPViAy/Suggested" />
      <property role="2WW1Ox" value="Keyword-led clause; author has suppressed optional interpretation" />
      <property role="2WW1Ow" value="true" />
      <property role="2WW1OO" value="true" />
      <ref role="2WW1OD" node="2RLAZYDJSlE" resolve="Program" />
      <ref role="2WW1OQ" node="2RLAZYDJSlI" resolve="else" />
      <ref role="2WW1OR" node="2RLAZYDJSlJ" resolve="elseStatements" />
    </node>
    <node concept="2WW1OG" id="2RLAZYDJSlX" role="2WW1OJ">
      <ref role="2WW1OH" node="2RLAZYDJSlN" resolve="public" />
    </node>
    <node concept="2WW1OC" id="2RLAZYDJSlY" role="2WW1OJ">
      <property role="2WW1OO" value="true" />
      <ref role="2WW1OD" node="2RLAZYDJSlQ" resolve="ElseClause" />
      <ref role="2WW1OQ" node="2RLAZYDJSlR" resolve="else" />
      <ref role="2WW1OR" node="2RLAZYDJSlS" resolve="statements" />
    </node>
    <node concept="2WW1OE" id="54cyhNXsM8H" role="2WW1OJ">
      <property role="2WW1Ox" value="Zero-or-more block statement list" />
      <ref role="2WW1OF" node="54cyhNXsM8E" resolve="statements" />
    </node>
  </node>
  <node concept="7dNNS" id="39m6c$Kgpj2">
    <property role="7dNNU" value="1" />
    <property role="7dNNP" value="metabnf.protected-import/1" />
    <property role="7dNNO" value="261.25134.877|metabnf.protected-import/1|25.0.3+1-b329.124" />
    <property role="7dNNR" value="ed684aebcd69bb98ba617dbef6627cc15e5ec2263dce95f422ef2f9e9e703350" />
    <property role="7dNNQ" value="c324684378eac966e425572e6220eec0a56eacad6c95172d3a1eab6debb9303c" />
    <ref role="7dNNM" node="2RLAZYDJSlD" resolve="DemoUsability" />
    <node concept="7dNNV" id="39m6c$Kgpj3" role="7dNNH">
      <property role="7dNNL" value="r:2655fdd9-5e4e-4901-8b30-fc4c402d27e1(mbnf.sandbox.InteractiveFixture)/3310598723460892010|r:ca936f89-ba77-4ff7-9a03-c2760446caa0(DemoUsability.editor)|18bc6592-03a6-4e29-a83a-7ff23bde13ba/1071666914219" />
      <property role="7dNNN" value="vanilla.generated-aspect; reviewed whole-root ownership" />
      <property role="7dNNK" value="50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/107166691421918:345277244222437890101:conceptDeclaration=r:29df74a9-1ef8-4ba0-9f28-0451ab1e71a4(DemoUsability.structure)/2222962236758459309:cellModel50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/107338944642318:96368614709517884014:childCellModel50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/107338957700618:3283977339178425634:text7:program1:/14:childCellModel50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/107338944642318:64128123458017869410:cellLayout50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/110627057171018:4572216985207010511:/2:id56:18bc6592-03a6-4e29-a83a-7ff23bde13ba/432350042812123343118:8234169700211181504:name22:flag_projection_static1:/14:childCellModel50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/107476792076518:88656926869259969312:modelAcessor50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/117671799674818:2154915922354187656:getter50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/117671784177718:3009004199538424824:body50:f3061a53-9226-4cc5-a443-f952ceaf5816/106858012313618:3499768614565930759:statement50:f3061a53-9226-4cc5-a443-f952ceaf5816/106858124287818:74651212159682087910:expression50:f3061a53-9226-4cc5-a443-f952ceaf5816/116366889620118:9081601977453715779:condition50:f3061a53-9226-4cc5-a443-f952ceaf5816/119702775622818:9618203272962423399:operation50:7866978e-a0f0-4cc7-81bc-4d213d9375e1/113805602263917:3526310786612630291:property=r:29df74a9-1ef8-4ba0-9f28-0451ab1e71a4(DemoUsability.structure)/4712847708633574561:/7:operand50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/114288681158918:8413790086569444021:/1:/6:ifTrue50:f3061a53-9226-4cc5-a443-f952ceaf5816/107047592680018:8054608280802853745:value6:static1:/7:ifFalse50:f3061a53-9226-4cc5-a443-f952ceaf5816/107047592680018:2037590785150224961:/1:/1:/1:/1:/6:setter50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/117671787125418:2117420793724984714:body50:f3061a53-9226-4cc5-a443-f952ceaf5816/106858012313618:5419943138005242679:statement50:f3061a53-9226-4cc5-a443-f952ceaf5816/106858012315518:32630441004782690710:expression50:f3061a53-9226-4cc5-a443-f952ceaf5816/106849888629418:9089330568272971866:lValue50:f3061a53-9226-4cc5-a443-f952ceaf5816/119702775622819:10614204755945740399:operation50:7866978e-a0f0-4cc7-81bc-4d213d9375e1/113805602263918:55293699685928224891:property=r:29df74a9-1ef8-4ba0-9f28-0451ab1e71a4(DemoUsability.structure)/4712847708633574561:/7:operand50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/114288681158918:8614145637696144741:/1:/6:rValue50:f3061a53-9226-4cc5-a443-f952ceaf5816/119702775622818:6354013101545990527:operand50:f3061a53-9226-4cc5-a443-f952ceaf5816/107047592680017:388855868508731495:value6:static1:/9:operation50:f3061a53-9226-4cc5-a443-f952ceaf5816/120294803947419:1050446454277867602116:baseMethodDeclaration=6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)/~String.equals%28java.lang.Object%2914:actualArgument50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/117671777994018:5454299647656719801:/1:/1:/1:/1:/1:/1:/9:validator50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/117671788842817:538840231680049894:body50:f3061a53-9226-4cc5-a443-f952ceaf5816/106858012313618:5678003933877962659:statement50:f3061a53-9226-4cc5-a443-f952ceaf5816/106858124287818:70906390196914149210:expression50:f3061a53-9226-4cc5-a443-f952ceaf5816/108022342671918:42526992976629184914:leftExpression50:f3061a53-9226-4cc5-a443-f952ceaf5816/119702775622818:5738258504950961937:operand50:f3061a53-9226-4cc5-a443-f952ceaf5816/107047592680019:10588532871458209791:/9:operation50:f3061a53-9226-4cc5-a443-f952ceaf5816/120294803947418:224506196136215950116:baseMethodDeclaration=6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)/~String.equals%28java.lang.Object%2914:actualArgument50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/117671777994019:10929529956579045381:/1:/1:/15:rightExpression50:f3061a53-9226-4cc5-a443-f952ceaf5816/119702775622818:6627505887139701167:operand50:f3061a53-9226-4cc5-a443-f952ceaf5816/107047592680018:8554150324267463495:value6:static1:/9:operation50:f3061a53-9226-4cc5-a443-f952ceaf5816/120294803947418:308074194152088596116:baseMethodDeclaration=6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)/~String.equals%28java.lang.Object%2914:actualArgument50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/117671777994018:7678543176969454421:/1:/1:/1:/1:/1:/1:/1:/2:id56:18bc6592-03a6-4e29-a83a-7ff23bde13ba/432350042812123343118:5647810796211330494:name11:flag_static1:/14:menuDescriptor50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/116482471799618:67012898355236214612:cellMenuPart50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/116542445311017:1191414197046661612:matchingText6:static15:handlerFunction50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/116542465744318:2274964838863462214:body50:f3061a53-9226-4cc5-a443-f952ceaf5816/106858012313617:815761284879209019:statement50:f3061a53-9226-4cc5-a443-f952ceaf5816/106858012315518:38969510676530027610:expression50:f3061a53-9226-4cc5-a443-f952ceaf5816/106849888629418:5146055392302580886:lValue50:f3061a53-9226-4cc5-a443-f952ceaf5816/119702775622818:7785457698779223929:operation50:7866978e-a0f0-4cc7-81bc-4d213d9375e1/113805602263917:8359149994766126591:property=r:29df74a9-1ef8-4ba0-9f28-0451ab1e71a4(DemoUsability.structure)/4712847708633574561:/7:operand50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/116361382247918:5980114118127751131:/1:/6:rValue50:f3061a53-9226-4cc5-a443-f952ceaf5816/106858012313718:8649305854432183655:value4:true1:/1:/1:/9:statement50:f3061a53-9226-4cc5-a443-f952ceaf5816/106858012315519:105668174878569155610:expression50:f3061a53-9226-4cc5-a443-f952ceaf5816/119702775622818:6759192942819644987:operand50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/116162298123118:6815518945174336321:/9:operation50:f3061a53-9226-4cc5-a443-f952ceaf5816/120294803947418:420936803378924698138:baseMethodDeclaration=1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor(MPS.Editor/)/~EditorContext.flushEvents%28%291:/1:/1:/9:statement50:f3061a53-9226-4cc5-a443-f952ceaf5816/106858012315519:104686236648401266810:expression50:f3061a53-9226-4cc5-a443-f952ceaf5816/119702775622818:1977548561840863967:operand50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/116361382247918:8772566199015187351:/9:operation56:18bc6592-03a6-4e29-a83a-7ff23bde13ba/364714606698092227219:100185301463301772213:editorContext50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/116162298123118:1064443261908619621:/12:cellSelector56:18bc6592-03a6-4e29-a83a-7ff23bde13ba/216240311152305953618:7958290077126480616:cellId11:flag_static1:/14:selectionStart50:f3061a53-9226-4cc5-a443-f952ceaf5816/106858032002017:533676954940334345:value1:61:/12:selectionEnd50:f3061a53-9226-4cc5-a443-f952ceaf5816/106858032002018:7339702057127254795:value1:61:/1:/1:/1:/1:/1:/1:/12:cellMenuPart50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/116542445311018:88659948193909621912:matchingText15:static (remove)15:handlerFunction50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/116542465744318:9039449285291132224:body50:f3061a53-9226-4cc5-a443-f952ceaf5816/106858012313618:5307779827032988059:statement50:f3061a53-9226-4cc5-a443-f952ceaf5816/106858012315518:36957819546942183310:expression50:f3061a53-9226-4cc5-a443-f952ceaf5816/106849888629417:252582874425705336:lValue50:f3061a53-9226-4cc5-a443-f952ceaf5816/119702775622818:4215896128750631259:operation50:7866978e-a0f0-4cc7-81bc-4d213d9375e1/113805602263918:18446804222580614591:property=r:29df74a9-1ef8-4ba0-9f28-0451ab1e71a4(DemoUsability.structure)/4712847708633574561:/7:operand50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/116361382247918:7739160273107680531:/1:/6:rValue50:f3061a53-9226-4cc5-a443-f952ceaf5816/106858012313718:1198409612200847461:/1:/1:/9:statement50:f3061a53-9226-4cc5-a443-f952ceaf5816/106858012315518:38101910606559074610:expression50:f3061a53-9226-4cc5-a443-f952ceaf5816/119702775622817:284858618110503237:operand50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/116162298123118:5844670752623909571:/9:operation50:f3061a53-9226-4cc5-a443-f952ceaf5816/120294803947419:1111891264933672709138:baseMethodDeclaration=1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor(MPS.Editor/)/~EditorContext.flushEvents%28%291:/1:/1:/9:statement50:f3061a53-9226-4cc5-a443-f952ceaf5816/106858012315518:49623961093271644710:expression50:f3061a53-9226-4cc5-a443-f952ceaf5816/119702775622819:10767847012210840997:operand50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/116361382247918:4824230024086213991:/9:operation56:18bc6592-03a6-4e29-a83a-7ff23bde13ba/364714606698092227218:16538415669536479713:editorContext50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/116162298123118:4780330020024206571:/12:cellSelector56:18bc6592-03a6-4e29-a83a-7ff23bde13ba/216240311152305953618:6594335224197534146:cellId11:flag_static1:/14:selectionStart50:f3061a53-9226-4cc5-a443-f952ceaf5816/106858032002018:5276681812185316595:value1:01:/12:selectionEnd50:f3061a53-9226-4cc5-a443-f952ceaf5816/106858032002018:3303452275322899905:value1:01:/1:/1:/1:/1:/1:/1:/1:/1:/1:/14:childCellModel50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/107339021198218:911931471346587102103:relationDeclaration=r:29df74a9-1ef8-4ba0-9f28-0451ab1e71a4(DemoUsability.structure)/101876643226970251410:cellLayout50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/123730366982518:1216967805312722401:/2:id56:18bc6592-03a6-4e29-a83a-7ff23bde13ba/432350042812123343118:8080355508148246184:name4:list1:/1:/14:childCellModel50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/107338957700619:11495033706935518274:text4:else1:/14:childCellModel50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/107339021198218:485702952434699555102:relationDeclaration=r:29df74a9-1ef8-4ba0-9f28-0451ab1e71a4(DemoUsability.structure)/80594888049129364910:cellLayout50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/123730366982518:8114486435652042161:/2:id56:18bc6592-03a6-4e29-a83a-7ff23bde13ba/432350042812123343118:5231606278277620234:name4:list1:/1:/10:cellLayout50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/123730366982518:2216483714670195341:/1:/18:inspectedCellModel50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/107338944642318:10496343481552603010:cellLayout50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/110627057171018:2539773038455267041:/14:childCellModel50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/107338944642318:79619280901099090510:cellLayout50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/110627057171018:3713738048676137181:/14:childCellModel55:602c36ad-cc55-47ff-8c40-73d7f12f035c/31242938003261938418:690860933284316825102:propertyDeclaration=r:29df74a9-1ef8-4ba0-9f28-0451ab1e71a4(DemoUsability.structure)/4712847708633574562:ui56:602c36ad-cc55-47ff-8c40-73d7f12f035c/702440909314662232318:1883727738343776411:/5:label50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/107338957700617:712553057033093044:text6:static1:/1:/2:id56:18bc6592-03a6-4e29-a83a-7ff23bde13ba/432350042812123343118:4424548422473004484:name16:flag_form_static1:/1:/1:/1:/" />
      <ref role="7dNNG" node="2RLAZYDJSlE" resolve="Program" />
      <ref role="7dNNJ" to="hoko:jaEXc2TRC2" />
    </node>
    <node concept="7dNNV" id="39m6c$Kgpj4" role="7dNNH">
      <property role="7dNNL" value="r:2655fdd9-5e4e-4901-8b30-fc4c402d27e1(mbnf.sandbox.InteractiveFixture)/3310598723460892016|r:ca936f89-ba77-4ff7-9a03-c2760446caa0(DemoUsability.editor)|18bc6592-03a6-4e29-a83a-7ff23bde13ba/1071666914219" />
      <property role="7dNNN" value="vanilla.generated-aspect; reviewed whole-root ownership" />
      <property role="7dNNK" value="50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/107166691421918:946707679083978483101:conceptDeclaration=r:29df74a9-1ef8-4ba0-9f28-0451ab1e71a4(DemoUsability.structure)/4572073364843582509:cellModel50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/107338944642318:76954617020616184214:childCellModel50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/107338957700618:8113920167066006174:text4:skip1:/10:cellLayout50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/123730366982518:1498776433182904901:/1:/18:inspectedCellModel50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/107338944642318:68033896768827331510:cellLayout50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/110627057171018:9840760183523116161:/1:/1:/" />
      <ref role="7dNNG" node="2RLAZYDJSlK" resolve="Statement" />
      <ref role="7dNNJ" to="hoko:OzopT5VPVN" />
    </node>
    <node concept="7dNNV" id="39m6c$Kgpj5" role="7dNNH">
      <property role="7dNNL" value="r:2655fdd9-5e4e-4901-8b30-fc4c402d27e1(mbnf.sandbox.InteractiveFixture)/3310598723460892018|r:ca936f89-ba77-4ff7-9a03-c2760446caa0(DemoUsability.editor)|18bc6592-03a6-4e29-a83a-7ff23bde13ba/1071666914219" />
      <property role="7dNNN" value="vanilla.generated-aspect; reviewed whole-root ownership" />
      <property role="7dNNK" value="50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/107166691421917:36816555433819710101:conceptDeclaration=r:29df74a9-1ef8-4ba0-9f28-0451ab1e71a4(DemoUsability.structure)/2473699376905601839:cellModel50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/107338944642318:90245373051809319514:childCellModel50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/107338944642318:33400107662917263510:cellLayout50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/110627057171018:4183835179893641821:/2:id56:18bc6592-03a6-4e29-a83a-7ff23bde13ba/432350042812123343118:5034938973223141144:name22:flag_projection_public1:/14:childCellModel50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/107476792076518:67252405955099009312:modelAcessor50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/117671799674818:8156533345687067766:getter50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/117671784177718:4589181764344078964:body50:f3061a53-9226-4cc5-a443-f952ceaf5816/106858012313618:5314446402739028869:statement50:f3061a53-9226-4cc5-a443-f952ceaf5816/106858124287818:29089502714515744410:expression50:f3061a53-9226-4cc5-a443-f952ceaf5816/116366889620118:2753538026766398749:condition50:f3061a53-9226-4cc5-a443-f952ceaf5816/119702775622819:10992583964695939809:operation50:7866978e-a0f0-4cc7-81bc-4d213d9375e1/113805602263918:43311996835649143690:property=r:29df74a9-1ef8-4ba0-9f28-0451ab1e71a4(DemoUsability.structure)/381495440130653551:/7:operand50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/114288681158917:744199841728658951:/1:/6:ifTrue50:f3061a53-9226-4cc5-a443-f952ceaf5816/107047592680018:8458981165457119655:value6:public1:/7:ifFalse50:f3061a53-9226-4cc5-a443-f952ceaf5816/107047592680018:3584471819634742611:/1:/1:/1:/1:/6:setter50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/117671787125418:5864409130445022324:body50:f3061a53-9226-4cc5-a443-f952ceaf5816/106858012313618:9558912663916119419:statement50:f3061a53-9226-4cc5-a443-f952ceaf5816/106858012315518:84655665716962809010:expression50:f3061a53-9226-4cc5-a443-f952ceaf5816/106849888629419:11350609704621976656:lValue50:f3061a53-9226-4cc5-a443-f952ceaf5816/119702775622818:3515993295184118279:operation50:7866978e-a0f0-4cc7-81bc-4d213d9375e1/113805602263918:52393760530607762190:property=r:29df74a9-1ef8-4ba0-9f28-0451ab1e71a4(DemoUsability.structure)/381495440130653551:/7:operand50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/114288681158918:6875902340991241541:/1:/6:rValue50:f3061a53-9226-4cc5-a443-f952ceaf5816/119702775622819:10790906506166141237:operand50:f3061a53-9226-4cc5-a443-f952ceaf5816/107047592680018:1021320647265326325:value6:public1:/9:operation50:f3061a53-9226-4cc5-a443-f952ceaf5816/120294803947418:135394350669992040116:baseMethodDeclaration=6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)/~String.equals%28java.lang.Object%2914:actualArgument50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/117671777994018:3589361946506475451:/1:/1:/1:/1:/1:/1:/9:validator50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/117671788842818:3938932316072275504:body50:f3061a53-9226-4cc5-a443-f952ceaf5816/106858012313618:3375701150752262229:statement50:f3061a53-9226-4cc5-a443-f952ceaf5816/106858124287818:34255122290697627610:expression50:f3061a53-9226-4cc5-a443-f952ceaf5816/108022342671918:38341703521908325914:leftExpression50:f3061a53-9226-4cc5-a443-f952ceaf5816/119702775622817:514371756332458417:operand50:f3061a53-9226-4cc5-a443-f952ceaf5816/107047592680018:2626325183112832601:/9:operation50:f3061a53-9226-4cc5-a443-f952ceaf5816/120294803947418:522826324786473570116:baseMethodDeclaration=6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)/~String.equals%28java.lang.Object%2914:actualArgument50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/117671777994018:2462142801553814681:/1:/1:/15:rightExpression50:f3061a53-9226-4cc5-a443-f952ceaf5816/119702775622819:11296953114284471747:operand50:f3061a53-9226-4cc5-a443-f952ceaf5816/107047592680018:4877060451585112825:value6:public1:/9:operation50:f3061a53-9226-4cc5-a443-f952ceaf5816/120294803947418:680112064863926608116:baseMethodDeclaration=6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)/~String.equals%28java.lang.Object%2914:actualArgument50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/117671777994019:11084425790012493821:/1:/1:/1:/1:/1:/1:/1:/2:id56:18bc6592-03a6-4e29-a83a-7ff23bde13ba/432350042812123343118:2317067163539758344:name11:flag_public1:/14:menuDescriptor50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/116482471799618:79948146423319900112:cellMenuPart50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/116542445311018:71084004168214395112:matchingText6:public15:handlerFunction50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/116542465744319:10103185276443799624:body50:f3061a53-9226-4cc5-a443-f952ceaf5816/106858012313618:2211519589828691749:statement50:f3061a53-9226-4cc5-a443-f952ceaf5816/106858012315518:58521246980564306810:expression50:f3061a53-9226-4cc5-a443-f952ceaf5816/106849888629418:1750457098577795646:lValue50:f3061a53-9226-4cc5-a443-f952ceaf5816/119702775622818:6225988081072759119:operation50:7866978e-a0f0-4cc7-81bc-4d213d9375e1/113805602263919:108708159231801018590:property=r:29df74a9-1ef8-4ba0-9f28-0451ab1e71a4(DemoUsability.structure)/381495440130653551:/7:operand50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/116361382247919:10196379493776840731:/1:/6:rValue50:f3061a53-9226-4cc5-a443-f952ceaf5816/106858012313718:1506957990566165785:value4:true1:/1:/1:/9:statement50:f3061a53-9226-4cc5-a443-f952ceaf5816/106858012315519:105830587412293126810:expression50:f3061a53-9226-4cc5-a443-f952ceaf5816/119702775622818:6390362768609235587:operand50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/116162298123119:11105800360523618741:/9:operation50:f3061a53-9226-4cc5-a443-f952ceaf5816/120294803947418:905848964488458761138:baseMethodDeclaration=1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor(MPS.Editor/)/~EditorContext.flushEvents%28%291:/1:/1:/9:statement50:f3061a53-9226-4cc5-a443-f952ceaf5816/106858012315518:44453957838881883510:expression50:f3061a53-9226-4cc5-a443-f952ceaf5816/119702775622818:4245596398626395987:operand50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/116361382247918:2416123851930237761:/9:operation56:18bc6592-03a6-4e29-a83a-7ff23bde13ba/364714606698092227218:90124159711782228413:editorContext50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/116162298123118:2087236095376694221:/12:cellSelector56:18bc6592-03a6-4e29-a83a-7ff23bde13ba/216240311152305953618:5714444429223301016:cellId11:flag_public1:/14:selectionStart50:f3061a53-9226-4cc5-a443-f952ceaf5816/106858032002018:3297621117898411425:value1:61:/12:selectionEnd50:f3061a53-9226-4cc5-a443-f952ceaf5816/106858032002018:9783334524850564455:value1:61:/1:/1:/1:/1:/1:/1:/12:cellMenuPart50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/116542445311018:61803665198174477712:matchingText15:public (remove)15:handlerFunction50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/116542465744318:9447511673750898524:body50:f3061a53-9226-4cc5-a443-f952ceaf5816/106858012313618:1705530484113439999:statement50:f3061a53-9226-4cc5-a443-f952ceaf5816/106858012315518:23069165217307022610:expression50:f3061a53-9226-4cc5-a443-f952ceaf5816/106849888629419:11417806913654973136:lValue50:f3061a53-9226-4cc5-a443-f952ceaf5816/119702775622818:2562918249740281269:operation50:7866978e-a0f0-4cc7-81bc-4d213d9375e1/113805602263919:113936461767621393490:property=r:29df74a9-1ef8-4ba0-9f28-0451ab1e71a4(DemoUsability.structure)/381495440130653551:/7:operand50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/116361382247917:856521039236848081:/1:/6:rValue50:f3061a53-9226-4cc5-a443-f952ceaf5816/106858012313718:4365722450487700381:/1:/1:/9:statement50:f3061a53-9226-4cc5-a443-f952ceaf5816/106858012315518:15045016566459774610:expression50:f3061a53-9226-4cc5-a443-f952ceaf5816/119702775622818:8501419136461936487:operand50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/116162298123118:3576688249852158751:/9:operation50:f3061a53-9226-4cc5-a443-f952ceaf5816/120294803947418:251194198126300225138:baseMethodDeclaration=1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor(MPS.Editor/)/~EditorContext.flushEvents%28%291:/1:/1:/9:statement50:f3061a53-9226-4cc5-a443-f952ceaf5816/106858012315518:23272134223221510610:expression50:f3061a53-9226-4cc5-a443-f952ceaf5816/119702775622818:2878846823703842167:operand50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/116361382247918:4506630246668145741:/9:operation56:18bc6592-03a6-4e29-a83a-7ff23bde13ba/364714606698092227218:24174481408059205213:editorContext50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/116162298123118:6818326801017367071:/12:cellSelector56:18bc6592-03a6-4e29-a83a-7ff23bde13ba/216240311152305953618:8179425579651080606:cellId11:flag_public1:/14:selectionStart50:f3061a53-9226-4cc5-a443-f952ceaf5816/106858032002018:1855745401349174825:value1:01:/12:selectionEnd50:f3061a53-9226-4cc5-a443-f952ceaf5816/106858032002018:7693764884972142385:value1:01:/1:/1:/1:/1:/1:/1:/1:/1:/1:/14:childCellModel50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/107338965841418:857982418108140505102:relationDeclaration=r:29df74a9-1ef8-4ba0-9f28-0451ab1e71a4(DemoUsability.structure)/3690726891731841691:/14:childCellModel50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/107338988282318:353981621126493576101:relationDeclaration=r:29df74a9-1ef8-4ba0-9f28-0451ab1e71a4(DemoUsability.structure)/260943942528364641:/10:cellLayout50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/123730366982519:11526915801000808701:/1:/18:inspectedCellModel50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/107338944642318:67844968437455930410:cellLayout50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/110627057171018:1909472326983667201:/14:childCellModel50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/107338944642318:53160029630482173810:cellLayout50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/110627057171018:9095702810729960321:/14:childCellModel55:602c36ad-cc55-47ff-8c40-73d7f12f035c/31242938003261938418:417074939122250617101:propertyDeclaration=r:29df74a9-1ef8-4ba0-9f28-0451ab1e71a4(DemoUsability.structure)/381495440130653552:ui56:602c36ad-cc55-47ff-8c40-73d7f12f035c/702440909314662232318:8315224431752097521:/5:label50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/107338957700618:2726470189180839644:text6:public1:/1:/2:id56:18bc6592-03a6-4e29-a83a-7ff23bde13ba/432350042812123343117:563036448249548794:name16:flag_form_public1:/1:/1:/1:/" />
      <ref role="7dNNG" node="2RLAZYDJSlM" resolve="Declaration" />
      <ref role="7dNNJ" to="hoko:22N7pcv7SY" />
    </node>
    <node concept="7dNNV" id="39m6c$Kgpj6" role="7dNNH">
      <property role="7dNNL" value="r:2655fdd9-5e4e-4901-8b30-fc4c402d27e1(mbnf.sandbox.InteractiveFixture)/3310598723460892022|r:ca936f89-ba77-4ff7-9a03-c2760446caa0(DemoUsability.editor)|18bc6592-03a6-4e29-a83a-7ff23bde13ba/1071666914219" />
      <property role="7dNNN" value="vanilla.generated-aspect; reviewed whole-root ownership" />
      <property role="7dNNK" value="50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/107166691421918:119964715373064518101:conceptDeclaration=r:29df74a9-1ef8-4ba0-9f28-0451ab1e71a4(DemoUsability.structure)/2930444253924967539:cellModel50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/107338944642318:27562064524337408714:childCellModel50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/107338957700618:2150198736643084474:text4:else1:/14:childCellModel50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/107339021198218:472079706252507370102:relationDeclaration=r:29df74a9-1ef8-4ba0-9f28-0451ab1e71a4(DemoUsability.structure)/77708229437137168210:cellLayout50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/123730366982519:10831231170255588821:/2:id56:18bc6592-03a6-4e29-a83a-7ff23bde13ba/432350042812123343118:9990580146992226194:name4:list1:/1:/10:cellLayout50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/123730366982518:4703978284838661611:/1:/18:inspectedCellModel50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/107338944642318:21546716720723708310:cellLayout50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/110627057171018:6383484935127214431:/1:/1:/" />
      <ref role="7dNNG" node="2RLAZYDJSlQ" resolve="ElseClause" />
      <ref role="7dNNJ" to="hoko:6EcOn_p756" />
    </node>
    <node concept="7dNNV" id="39m6c$Kgpj7" role="7dNNH">
      <property role="7dNNL" value="r:2655fdd9-5e4e-4901-8b30-fc4c402d27e1(mbnf.sandbox.InteractiveFixture)/3310598723460892010|r:07cfe27d-a615-4ff4-b232-6224567a8742(DemoUsability.textGen)|b83431fe-5c8f-40bc-8a36-65e25f4dd253/1233670071145" />
      <property role="7dNNN" value="vanilla.generated-aspect; reviewed whole-root ownership" />
      <property role="7dNNK" value="50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123367007114518:753254349240448266101:conceptDeclaration=r:29df74a9-1ef8-4ba0-9f28-0451ab1e71a4(DemoUsability.structure)/22229622367584593012:textGenBlock50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123374924788818:5282100313211508564:body50:f3061a53-9226-4cc5-a443-f952ceaf5816/106858012313618:2592163300296112109:statement50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123730607917818:6073971468869438804:part50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123730555763818:5931042746202899385:value7:program1:/1:/9:statement50:f3061a53-9226-4cc5-a443-f952ceaf5816/106858012315919:10453269247667336819:condition50:f3061a53-9226-4cc5-a443-f952ceaf5816/119702775622816:15278171122988877:operand50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123374805591518:5219908087839511761:/9:operation50:7866978e-a0f0-4cc7-81bc-4d213d9375e1/113805602263918:45236602155618040991:property=r:29df74a9-1ef8-4ba0-9f28-0451ab1e71a4(DemoUsability.structure)/4712847708633574561:/1:/6:ifTrue50:f3061a53-9226-4cc5-a443-f952ceaf5816/106858012313618:3460183502879182939:statement50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123730607917818:8010124550378011154:part50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123730555763818:2715453114896219515:value6:static1:/1:/1:/1:/9:statement50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123618813984618:3300615928441751284:list50:f3061a53-9226-4cc5-a443-f952ceaf5816/106858012313617:531767522172951179:statement50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123730607917818:2768428083287141564:part50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123730549186818:75083134540447960813:withSeparator4:true4:list50:f3061a53-9226-4cc5-a443-f952ceaf5816/119702775622818:3731104496722234817:operand50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123374805591518:6646945340687479241:/9:operation50:7866978e-a0f0-4cc7-81bc-4d213d9375e1/113805628239319:110181973940310276088:link=r:29df74a9-1ef8-4ba0-9f28-0451ab1e71a4(DemoUsability.structure)/10187664322697025141:/1:/1:/1:/1:/1:/9:statement50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123730607917818:6468980476831384044:part50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123730555763818:7609414158353683515:value4:else1:/1:/9:statement50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123618813984618:1805630478649585134:list50:f3061a53-9226-4cc5-a443-f952ceaf5816/106858012313619:10341409670792612519:statement50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123730607917819:11273216358817846484:part50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123730549186818:76530412242360630513:withSeparator4:true4:list50:f3061a53-9226-4cc5-a443-f952ceaf5816/119702775622818:4452075280131560947:operand50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123374805591518:1167375347531342611:/9:operation50:7866978e-a0f0-4cc7-81bc-4d213d9375e1/113805628239318:31362896693994758587:link=r:29df74a9-1ef8-4ba0-9f28-0451ab1e71a4(DemoUsability.structure)/8059488804912936491:/1:/1:/1:/1:/1:/1:/1:/1:/" />
      <ref role="7dNNG" node="2RLAZYDJSlE" resolve="Program" />
      <ref role="7dNNJ" to="xgq7:DO6drRZFka" />
    </node>
    <node concept="7dNNV" id="39m6c$Kgpj8" role="7dNNH">
      <property role="7dNNL" value="r:2655fdd9-5e4e-4901-8b30-fc4c402d27e1(mbnf.sandbox.InteractiveFixture)/3310598723460892016|r:07cfe27d-a615-4ff4-b232-6224567a8742(DemoUsability.textGen)|b83431fe-5c8f-40bc-8a36-65e25f4dd253/1233670071145" />
      <property role="7dNNN" value="vanilla.generated-aspect; reviewed whole-root ownership" />
      <property role="7dNNK" value="50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123367007114518:998969245413749049101:conceptDeclaration=r:29df74a9-1ef8-4ba0-9f28-0451ab1e71a4(DemoUsability.structure)/45720733648435825012:textGenBlock50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123374924788819:11301141824979412954:body50:f3061a53-9226-4cc5-a443-f952ceaf5816/106858012313618:4625058065540406819:statement50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123730607917818:2600202262252030194:part50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123730555763818:7063564158245180605:value4:skip1:/1:/1:/1:/1:/" />
      <ref role="7dNNG" node="2RLAZYDJSlK" resolve="Statement" />
      <ref role="7dNNJ" to="xgq7:Rt3jLArj4T" />
    </node>
    <node concept="7dNNV" id="39m6c$Kgpj9" role="7dNNH">
      <property role="7dNNL" value="r:2655fdd9-5e4e-4901-8b30-fc4c402d27e1(mbnf.sandbox.InteractiveFixture)/3310598723460892018|r:07cfe27d-a615-4ff4-b232-6224567a8742(DemoUsability.textGen)|b83431fe-5c8f-40bc-8a36-65e25f4dd253/1233670071145" />
      <property role="7dNNN" value="vanilla.generated-aspect; reviewed whole-root ownership" />
      <property role="7dNNK" value="50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123367007114518:465781689059028098101:conceptDeclaration=r:29df74a9-1ef8-4ba0-9f28-0451ab1e71a4(DemoUsability.structure)/24736993769056018312:textGenBlock50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123374924788818:2087353143710486194:body50:f3061a53-9226-4cc5-a443-f952ceaf5816/106858012313618:4964886488937326469:statement50:f3061a53-9226-4cc5-a443-f952ceaf5816/106858012315917:456258432473246979:condition50:f3061a53-9226-4cc5-a443-f952ceaf5816/119702775622817:669026184651725527:operand50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123374805591517:694990602199605261:/9:operation50:7866978e-a0f0-4cc7-81bc-4d213d9375e1/113805602263918:47169205683516426690:property=r:29df74a9-1ef8-4ba0-9f28-0451ab1e71a4(DemoUsability.structure)/381495440130653551:/1:/6:ifTrue50:f3061a53-9226-4cc5-a443-f952ceaf5816/106858012313619:11350099037314237849:statement50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123730607917818:9755020458796531764:part50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123730555763818:2911033308326930575:value6:public1:/1:/1:/1:/9:statement50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123730607917819:11079300007912036924:part50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123730533431217:367657722298784275:value50:f3061a53-9226-4cc5-a443-f952ceaf5816/119702775622818:3138857486397412327:operand50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123374805591518:3462713912930204761:/9:operation50:7866978e-a0f0-4cc7-81bc-4d213d9375e1/113805602263918:57956641092693839791:property=r:29df74a9-1ef8-4ba0-9f28-0451ab1e71a4(DemoUsability.structure)/3690726891731841691:/1:/1:/1:/9:statement50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123618813984618:2534373961030469924:list50:f3061a53-9226-4cc5-a443-f952ceaf5816/106858012313617:809345346099287569:statement50:f3061a53-9226-4cc5-a443-f952ceaf5816/106858012315919:11200491458922329156:ifTrue50:f3061a53-9226-4cc5-a443-f952ceaf5816/106858012313619:10402717488348988029:statement50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123730607917818:8166498736548396924:part50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123730533431218:8796733062844607995:value50:f3061a53-9226-4cc5-a443-f952ceaf5816/119702775622819:10777858452807059347:operand50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123374805591518:8378817940329843271:/9:operation50:7866978e-a0f0-4cc7-81bc-4d213d9375e1/113805614356218:37706798460705069886:link=r:29df74a9-1ef8-4ba0-9f28-0451ab1e71a4(DemoUsability.structure)/260943942528364641:/1:/1:/1:/1:/9:condition50:f3061a53-9226-4cc5-a443-f952ceaf5816/119702775622818:7799941442793685727:operand50:f3061a53-9226-4cc5-a443-f952ceaf5816/119702775622818:2863558632338351157:operand50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123374805591518:9286413485961711491:/9:operation50:7866978e-a0f0-4cc7-81bc-4d213d9375e1/113805614356219:106669943711580786086:link=r:29df74a9-1ef8-4ba0-9f28-0451ab1e71a4(DemoUsability.structure)/260943942528364641:/1:/9:operation50:7866978e-a0f0-4cc7-81bc-4d213d9375e1/117200832023118:2809617713098393481:/1:/1:/1:/1:/1:/1:/1:/" />
      <ref role="7dNNG" node="2RLAZYDJSlM" resolve="Declaration" />
      <ref role="7dNNJ" to="xgq7:pQMvDRfEM2" />
    </node>
    <node concept="7dNNV" id="39m6c$Kgpja" role="7dNNH">
      <property role="7dNNL" value="r:2655fdd9-5e4e-4901-8b30-fc4c402d27e1(mbnf.sandbox.InteractiveFixture)/3310598723460892022|r:07cfe27d-a615-4ff4-b232-6224567a8742(DemoUsability.textGen)|b83431fe-5c8f-40bc-8a36-65e25f4dd253/1233670071145" />
      <property role="7dNNN" value="vanilla.generated-aspect; reviewed whole-root ownership" />
      <property role="7dNNK" value="50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123367007114519:1144694974386020458101:conceptDeclaration=r:29df74a9-1ef8-4ba0-9f28-0451ab1e71a4(DemoUsability.structure)/29304442539249675312:textGenBlock50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123374924788818:1266653125348742304:body50:f3061a53-9226-4cc5-a443-f952ceaf5816/106858012313618:8964979013335830069:statement50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123730607917818:9295848847107116364:part50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123730555763819:10362789435170204975:value4:else1:/1:/9:statement50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123618813984618:3234121761981768054:list50:f3061a53-9226-4cc5-a443-f952ceaf5816/106858012313617:356167343505886019:statement50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123730607917816:14858822089081494:part50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123730549186818:51187352639364024913:withSeparator4:true4:list50:f3061a53-9226-4cc5-a443-f952ceaf5816/119702775622818:9519975716551551407:operand50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123374805591518:5029748708012839581:/9:operation50:7866978e-a0f0-4cc7-81bc-4d213d9375e1/113805628239317:4305885289176959587:link=r:29df74a9-1ef8-4ba0-9f28-0451ab1e71a4(DemoUsability.structure)/7770822943713716821:/1:/1:/1:/1:/1:/1:/1:/1:/" />
      <ref role="7dNNG" node="2RLAZYDJSlQ" resolve="ElseClause" />
      <ref role="7dNNJ" to="xgq7:ZyLweGt21E" />
    </node>
    <node concept="7dNNV" id="39m6c$Kgpjb" role="7dNNH">
      <property role="7dNNL" value="r:2655fdd9-5e4e-4901-8b30-fc4c402d27e1(mbnf.sandbox.InteractiveFixture)/3310598723460892010|r:29df74a9-1ef8-4ba0-9f28-0451ab1e71a4(DemoUsability.structure)|c72da2b9-7cce-4447-8389-f407dc1158b7/1071489090640" />
      <property role="7dNNN" value="vanilla.generated-aspect; reviewed whole-root ownership" />
      <property role="7dNNK" value="50:c72da2b9-7cce-4447-8389-f407dc1158b7/107148909064018:22229622367584593012:conceptAlias7:program9:conceptId18:30492017506553648012:intConceptId9:4054676524:name7:Program8:rootable4:true95:extends=r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)/113392064162619:propertyDeclaration50:c72da2b9-7cce-4447-8389-f407dc1158b7/107148928829918:4712847708633574564:name6:static10:propertyId18:63010370080925140596:dataType=r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)/10829836570631:/15:linkDeclaration50:c72da2b9-7cce-4447-8389-f407dc1158b7/107148928829819:10187664322697025146:linkId18:6773945155738923709:metaClass19:fLJjDmT/aggregation4:role10:statements17:sourceCardinality13:fLJekj6/_1__n89:target=r:29df74a9-1ef8-4ba0-9f28-0451ab1e71a4(DemoUsability.structure)/4572073364843582501:/15:linkDeclaration50:c72da2b9-7cce-4447-8389-f407dc1158b7/107148928829818:8059488804912936496:linkId18:2052871434099729699:metaClass19:fLJjDmT/aggregation4:role14:elseStatements17:sourceCardinality13:fLJekj6/_1__n89:target=r:29df74a9-1ef8-4ba0-9f28-0451ab1e71a4(DemoUsability.structure)/4572073364843582501:/1:/" />
      <ref role="7dNNG" node="2RLAZYDJSlE" resolve="Program" />
      <ref role="7dNNJ" to="n2m4:clKjNn70OE" resolve="Program" />
    </node>
    <node concept="7dNNV" id="39m6c$Kgpjc" role="7dNNH">
      <property role="7dNNL" value="r:2655fdd9-5e4e-4901-8b30-fc4c402d27e1(mbnf.sandbox.InteractiveFixture)/3310598723460892016|r:29df74a9-1ef8-4ba0-9f28-0451ab1e71a4(DemoUsability.structure)|c72da2b9-7cce-4447-8389-f407dc1158b7/1071489090640" />
      <property role="7dNNN" value="vanilla.generated-aspect; reviewed whole-root ownership" />
      <property role="7dNNK" value="50:c72da2b9-7cce-4447-8389-f407dc1158b7/107148909064018:45720733648435825012:conceptAlias4:skip9:conceptId18:33070364534654654112:intConceptId9:4054676524:name9:Statement95:extends=r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)/11339206416261:/" />
      <ref role="7dNNG" node="2RLAZYDJSlK" resolve="Statement" />
      <ref role="7dNNJ" to="n2m4:pokUpJQ$xE" resolve="Statement" />
    </node>
    <node concept="7dNNV" id="39m6c$Kgpjd" role="7dNNH">
      <property role="7dNNL" value="r:2655fdd9-5e4e-4901-8b30-fc4c402d27e1(mbnf.sandbox.InteractiveFixture)/3310598723460892018|r:29df74a9-1ef8-4ba0-9f28-0451ab1e71a4(DemoUsability.structure)|c72da2b9-7cce-4447-8389-f407dc1158b7/1071489090640" />
      <property role="7dNNN" value="vanilla.generated-aspect; reviewed whole-root ownership" />
      <property role="7dNNK" value="50:c72da2b9-7cce-4447-8389-f407dc1158b7/107148909064018:2473699376905601839:conceptId18:13119063298385452012:intConceptId9:4054676524:name11:Declaration95:extends=r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)/113392064162619:propertyDeclaration50:c72da2b9-7cce-4447-8389-f407dc1158b7/107148928829917:381495440130653554:name6:public10:propertyId18:74741249154073043596:dataType=r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)/10829836570631:/19:propertyDeclaration50:c72da2b9-7cce-4447-8389-f407dc1158b7/107148928829918:3690726891731841694:name10:identifier10:propertyId18:42504949830274928196:dataType=r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)/10829830418431:/15:linkDeclaration50:c72da2b9-7cce-4447-8389-f407dc1158b7/107148928829817:260943942528364646:linkId18:4577875867361618799:metaClass19:fLJjDmT/aggregation4:role6:clause89:target=r:29df74a9-1ef8-4ba0-9f28-0451ab1e71a4(DemoUsability.structure)/2930444253924967531:/1:/" />
      <ref role="7dNNG" node="2RLAZYDJSlM" resolve="Declaration" />
      <ref role="7dNNJ" to="n2m4:dIPqnga0qR" resolve="Declaration" />
    </node>
    <node concept="7dNNV" id="39m6c$Kgpje" role="7dNNH">
      <property role="7dNNL" value="r:2655fdd9-5e4e-4901-8b30-fc4c402d27e1(mbnf.sandbox.InteractiveFixture)/3310598723460892022|r:29df74a9-1ef8-4ba0-9f28-0451ab1e71a4(DemoUsability.structure)|c72da2b9-7cce-4447-8389-f407dc1158b7/1071489090640" />
      <property role="7dNNN" value="vanilla.generated-aspect; reviewed whole-root ownership" />
      <property role="7dNNK" value="50:c72da2b9-7cce-4447-8389-f407dc1158b7/107148909064018:29304442539249675312:conceptAlias4:else9:conceptId18:89405025149978373512:intConceptId9:4054676524:name10:ElseClause95:extends=r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)/113392064162615:linkDeclaration50:c72da2b9-7cce-4447-8389-f407dc1158b7/107148928829818:7770822943713716826:linkId18:5414874960200768959:metaClass19:fLJjDmT/aggregation4:role10:statements17:sourceCardinality13:fLJekj5/_0__n89:target=r:29df74a9-1ef8-4ba0-9f28-0451ab1e71a4(DemoUsability.structure)/4572073364843582501:/1:/" />
      <ref role="7dNNG" node="2RLAZYDJSlQ" resolve="ElseClause" />
      <ref role="7dNNJ" to="n2m4:gh6_CIVq1L" resolve="ElseClause" />
    </node>
    <node concept="7dNNV" id="54cyhNXsNN8" role="7dNNH">
      <property role="7dNNL" value="r:2655fdd9-5e4e-4901-8b30-fc4c402d27e1(mbnf.sandbox.InteractiveFixture)/5840193574396961320|r:ca936f89-ba77-4ff7-9a03-c2760446caa0(DemoUsability.editor)|18bc6592-03a6-4e29-a83a-7ff23bde13ba/1071666914219" />
      <property role="7dNNN" value="vanilla.generated-aspect; reviewed whole-root ownership" />
      <property role="7dNNK" value="50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/107166691421918:668560488841184010101:conceptDeclaration=r:29df74a9-1ef8-4ba0-9f28-0451ab1e71a4(DemoUsability.structure)/1408801770361426839:cellModel50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/107338944642319:111957401741552575814:childCellModel50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/107338957700618:8006829142521938484:text5:begin1:/14:childCellModel50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/107339021198218:19938063165805895513:separatorText1:;102:relationDeclaration=r:29df74a9-1ef8-4ba0-9f28-0451ab1e71a4(DemoUsability.structure)/4361896168020192149:styleItem50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/123730790004118:1229853433565598804:flag4:true1:/9:styleItem50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/123738557894218:3750745791895986554:flag4:true1:/10:cellLayout50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/123730366982518:6275845464939896511:/2:id56:18bc6592-03a6-4e29-a83a-7ff23bde13ba/432350042812123343118:4940691209220956634:name4:list1:/1:/14:childCellModel50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/107338957700619:10640542241434095064:text3:end1:/14:childCellModel50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/107338988282317:73144432081811220102:relationDeclaration=r:29df74a9-1ef8-4ba0-9f28-0451ab1e71a4(DemoUsability.structure)/7039263343446549531:/10:cellLayout50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/123730366982518:8181227027900697581:/1:/18:inspectedCellModel50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/107338944642317:8387271407473913710:cellLayout50:18bc6592-03a6-4e29-a83a-7ff23bde13ba/110627057171019:10065228718485209861:/1:/1:/" />
      <ref role="7dNNG" node="54cyhNXsM8C" resolve="Block" />
      <ref role="7dNNJ" to="hoko:_7d3zKfoca" />
    </node>
    <node concept="7dNNV" id="54cyhNXsNN9" role="7dNNH">
      <property role="7dNNL" value="r:2655fdd9-5e4e-4901-8b30-fc4c402d27e1(mbnf.sandbox.InteractiveFixture)/5840193574396961320|r:07cfe27d-a615-4ff4-b232-6224567a8742(DemoUsability.textGen)|b83431fe-5c8f-40bc-8a36-65e25f4dd253/1233670071145" />
      <property role="7dNNN" value="vanilla.generated-aspect; reviewed whole-root ownership" />
      <property role="7dNNK" value="50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123367007114518:461119301836308442101:conceptDeclaration=r:29df74a9-1ef8-4ba0-9f28-0451ab1e71a4(DemoUsability.structure)/14088017703614268312:textGenBlock50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123374924788817:829188979501403714:body50:f3061a53-9226-4cc5-a443-f952ceaf5816/106858012313618:6082321619301789429:statement50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123730607917818:5796224248982221284:part50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123730555763818:9653957314493994345:value5:begin1:/1:/9:statement50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123730607917818:8614843588210318594:part50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123730520878418:3099557740589792861:/1:/9:statement50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123375271941718:5852546031769668811:/9:statement50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123618813984618:9577243696746528104:list50:f3061a53-9226-4cc5-a443-f952ceaf5816/106858012313618:2998415109661991849:statement50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123392050119318:9028949920737547181:/9:statement50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123730607917818:6503510536550932204:part50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123730549186818:7126077183490390539:separator1:;13:withSeparator4:true4:list50:f3061a53-9226-4cc5-a443-f952ceaf5816/119702775622818:9978920491364585017:operand50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123374805591518:1806002256189006941:/9:operation50:7866978e-a0f0-4cc7-81bc-4d213d9375e1/113805628239318:60163021175170225287:link=r:29df74a9-1ef8-4ba0-9f28-0451ab1e71a4(DemoUsability.structure)/4361896168020192141:/1:/1:/1:/1:/1:/9:statement50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123375278087518:5339617824948684501:/9:statement50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123730607917818:2415522878696694634:part50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123730555763818:5957128000894186895:value3:end1:/1:/9:statement50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123618813984618:9053018844727003964:list50:f3061a53-9226-4cc5-a443-f952ceaf5816/106858012313617:461754090035619239:statement50:f3061a53-9226-4cc5-a443-f952ceaf5816/106858012315918:1594858023579853876:ifTrue50:f3061a53-9226-4cc5-a443-f952ceaf5816/106858012313618:1467456307436920719:statement50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123730607917818:3974402396250392494:part50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123730533431218:7297290738621680045:value50:f3061a53-9226-4cc5-a443-f952ceaf5816/119702775622818:9043561002008541627:operand50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123374805591518:5943124390095965951:/9:operation50:7866978e-a0f0-4cc7-81bc-4d213d9375e1/113805614356218:28020228118050222287:link=r:29df74a9-1ef8-4ba0-9f28-0451ab1e71a4(DemoUsability.structure)/7039263343446549531:/1:/1:/1:/1:/9:condition50:f3061a53-9226-4cc5-a443-f952ceaf5816/119702775622818:8604241971947051737:operand50:f3061a53-9226-4cc5-a443-f952ceaf5816/119702775622819:10079251263303199797:operand50:b83431fe-5c8f-40bc-8a36-65e25f4dd253/123374805591518:7581360278235715641:/9:operation50:7866978e-a0f0-4cc7-81bc-4d213d9375e1/113805614356218:48964010061971097587:link=r:29df74a9-1ef8-4ba0-9f28-0451ab1e71a4(DemoUsability.structure)/7039263343446549531:/1:/9:operation50:7866978e-a0f0-4cc7-81bc-4d213d9375e1/117200832023118:9615377560406535671:/1:/1:/1:/1:/1:/1:/1:/" />
      <ref role="7dNNG" node="54cyhNXsM8C" resolve="Block" />
      <ref role="7dNNJ" to="xgq7:pAeoZp1RZq" />
    </node>
    <node concept="7dNNV" id="54cyhNXsNNa" role="7dNNH">
      <property role="7dNNL" value="r:2655fdd9-5e4e-4901-8b30-fc4c402d27e1(mbnf.sandbox.InteractiveFixture)/5840193574396961320|r:29df74a9-1ef8-4ba0-9f28-0451ab1e71a4(DemoUsability.structure)|c72da2b9-7cce-4447-8389-f407dc1158b7/1071489090640" />
      <property role="7dNNN" value="vanilla.generated-aspect; reviewed whole-root ownership" />
      <property role="7dNNK" value="50:c72da2b9-7cce-4447-8389-f407dc1158b7/107148909064018:14088017703614268312:conceptAlias5:begin9:conceptId18:27375412476715740212:intConceptId9:4054676524:name5:Block95:extends=r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)/113392064162615:linkDeclaration50:c72da2b9-7cce-4447-8389-f407dc1158b7/107148928829818:4361896168020192146:linkId18:5619293951846848269:metaClass19:fLJjDmT/aggregation4:role10:statements17:sourceCardinality13:fLJekj5/_0__n89:target=r:29df74a9-1ef8-4ba0-9f28-0451ab1e71a4(DemoUsability.structure)/4572073364843582501:/15:linkDeclaration50:c72da2b9-7cce-4447-8389-f407dc1158b7/107148928829818:7039263343446549536:linkId18:3707569253542973559:metaClass19:fLJjDmT/aggregation4:role5:child89:target=r:29df74a9-1ef8-4ba0-9f28-0451ab1e71a4(DemoUsability.structure)/1408801770361426831:/1:/" />
      <ref role="7dNNG" node="54cyhNXsM8C" resolve="Block" />
      <ref role="7dNNJ" to="n2m4:7Owspc8yxr" resolve="Block" />
    </node>
  </node>
</model>

