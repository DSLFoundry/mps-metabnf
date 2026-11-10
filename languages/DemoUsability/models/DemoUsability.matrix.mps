<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:c26ac7ec-519b-4e32-a529-ef62a82b52bb(DemoUsability.matrix)">
  <persistence version="9" />
  <languages>
    <use id="711aebfa-a9db-4765-b49c-bbdc45921ab7" name="DemoUsability" version="0" />
  </languages>
  <imports />
  <registry>
    <language id="711aebfa-a9db-4765-b49c-bbdc45921ab7" name="DemoUsability">
      <concept id="4459790551685811815" name="DemoUsability.structure.StateMachine" flags="ng" index="2811m7">
        <property id="4459790551685811819" name="identifier" index="2811mb" />
        <child id="4459790551685811824" name="events" index="2811mg" />
        <child id="4459790551685811825" name="states" index="2811mh" />
      </concept>
      <concept id="4459790551685811816" name="DemoUsability.structure.Event" flags="ng" index="2811m8">
        <property id="4459790551685811820" name="identifier" index="2811mc" />
      </concept>
      <concept id="4459790551685811817" name="DemoUsability.structure.State" flags="ng" index="2811m9">
        <property id="4459790551685811821" name="identifier" index="2811md" />
        <child id="4459790551685811826" name="transitions" index="2811mi" />
      </concept>
      <concept id="4459790551685811818" name="DemoUsability.structure.Transition" flags="ng" index="2811ma">
        <property id="4459790551685811822" name="event" index="2811me" />
        <property id="4459790551685811823" name="target" index="2811mf" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="2811m7" id="3R$mY2PTWX_">
    <property role="2811mb" value="Door" />
    <property role="TrG5h" value="Door" />
    <node concept="2811m8" id="3R$mY2PTWXA" role="2811mg">
      <property role="2811mc" value="open" />
    </node>
    <node concept="2811m8" id="3R$mY2PTWXB" role="2811mg">
      <property role="2811mc" value="close" />
    </node>
    <node concept="2811m9" id="3R$mY2PTWXv" role="2811mh">
      <property role="2811md" value="Closed" />
      <node concept="2811ma" id="3R$mY2PTWXw" role="2811mi">
        <property role="2811me" value="open" />
        <property role="2811mf" value="Open" />
      </node>
      <node concept="2811ma" id="3R$mY2PTWXx" role="2811mi">
        <property role="2811me" value="close" />
        <property role="2811mf" value="Closed" />
      </node>
    </node>
    <node concept="2811m9" id="3R$mY2PTWXy" role="2811mh">
      <property role="2811md" value="Open" />
      <node concept="2811ma" id="3R$mY2PTWXz" role="2811mi">
        <property role="2811me" value="open" />
        <property role="2811mf" value="Open" />
      </node>
      <node concept="2811ma" id="3R$mY2PTWX$" role="2811mi">
        <property role="2811me" value="close" />
        <property role="2811mf" value="Closed" />
      </node>
    </node>
  </node>
</model>

