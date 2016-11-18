within Physiomodel.Hormones.FemaleSexHormones;
model OvarianCycle

    Modelica.StateGraph.InitialStepWithSignal FOLLICULAR(
                                           nIn=3)
    annotation (Placement(transformation(extent={{-94,18},{-74,38}})));
    Modelica.StateGraph.TransitionWithSignal Follicle
    annotation (Placement(transformation(extent={{-68,38},{-48,18}})));
    Modelica.StateGraph.StepWithSignal OVULATORY(
                                   nOut=2)
    annotation (Placement(transformation(extent={{-42,18},{-22,38}})));
    Modelica.StateGraph.TransitionWithSignal Ovulation
    annotation (Placement(transformation(extent={{-10,38},{10,18}})));
    Modelica.StateGraph.StepWithSignal LUTEAL(
                                nOut=2)
    annotation (Placement(transformation(extent={{16,18},{36,38}})));
    Modelica.StateGraph.StepWithSignal IDLE
    annotation (Placement(transformation(extent={{74,18},{94,38}})));
    Modelica.StateGraph.TransitionWithSignal CorpusLuteum
    annotation (Placement(transformation(extent={{48,38},{68,18}})));
    Modelica.StateGraph.TransitionWithSignal PrimaryFollicleFromIdle
    annotation (Placement(transformation(extent={{88,-20},{68,0}})));
    Modelica.StateGraph.TransitionWithSignal PrimaryFollicleFromLuteal
    annotation (Placement(transformation(extent={{38,-20},{18,0}})));
    Modelica.StateGraph.TransitionWithSignal PrimaryFollicleFromOvulation
    annotation (Placement(transformation(extent={{-20,-20},{-40,0}})));
    Modelica.Blocks.Interfaces.RealInput FSH_Circulating(
                                              quantity="Concentration",
    final displayUnit="IU/l") annotation (Placement(transformation(extent={{24,-92},{
          32,-84}}),          iconTransformation(extent={{-120,80},{-80,
          120}})));
    Modelica.Blocks.Interfaces.RealInput LH_Circulating(
                                             quantity="Concentration",
    final displayUnit="IU/l") annotation (Placement(transformation(extent={{-96,90},{
          -88,98}}),          iconTransformation(extent={{-120,40},{-80,
          80}})));
    Modelica.Blocks.Interfaces.BooleanInput
                                      Cycling
                         annotation (Placement(transformation(extent={{-4,-4},
          {4,4}},
      rotation=90,
      origin={82,-90}),       iconTransformation(extent={{-120,-120},{-80,-80}})));
    Modelica.Blocks.Logical.GreaterThreshold greaterThreshold(threshold=3)
    annotation (Placement(transformation(extent={{44,-92},{52,-84}})));
    Modelica.Blocks.Interfaces.RealInput FollicleMass(
                                           quantity="Mass", final displayUnit="mg")
                         annotation (Placement(transformation(extent={{-96,78},
          {-88,86}}),         iconTransformation(extent={{-120,-80},{-80,-40}})));
    Modelica.Blocks.Interfaces.RealInput CorpusLuteumMass(
                                               quantity="Mass", final displayUnit="mg")
                         annotation (Placement(transformation(extent={{16,78},
          {24,86}}),          iconTransformation(extent={{-120,-40},{-80,0}})));
    Modelica.Blocks.Math.Add mass
    annotation (Placement(transformation(extent={{22,-66},{30,-58}})));
    Modelica.Blocks.Logical.LessEqualThreshold lessEqualThreshold(threshold=400)
    annotation (Placement(transformation(extent={{44,-66},{52,-58}})));
    Modelica.Blocks.Logical.And and1
    annotation (Placement(transformation(extent={{62,-80},{72,-70}})));
    Modelica.Blocks.Logical.And and2 annotation (Placement(transformation(
      extent={{-4,-4},{4,4}},
      rotation=90,
      origin={78,-58})));
    Modelica.Blocks.Logical.GreaterThreshold greaterThreshold1(threshold=20)
    annotation (Placement(transformation(extent={{-74,90},{-66,98}})));
    Modelica.Blocks.Logical.GreaterThreshold greaterThreshold2(threshold=2800)
    annotation (Placement(transformation(extent={{-74,78},{-66,86}})));
    Modelica.Blocks.Logical.And and3 annotation (Placement(transformation(
      extent={{-4,-4},{4,4}},
      rotation=270,
      origin={-58,70})));
    Modelica.Blocks.Interfaces.RealInput Progesterone(
                                           quantity="Concentration", final displayUnit=
         "nMol/l")     annotation (Placement(transformation(extent={{-32,90},{
          -24,98}}),          iconTransformation(extent={{-120,0},{-80,
          40}})));
    Modelica.Blocks.Logical.GreaterEqualThreshold greaterEqualThreshold(threshold=
     8) annotation (Placement(transformation(extent={{-14,90},{-6,98}})));
    Modelica.Blocks.Logical.LessThreshold greaterThreshold3(threshold=100)
    annotation (Placement(transformation(
      extent={{4,-4},{-4,4}},
      rotation=180,
      origin={46,82})));
    Modelica.Blocks.Logical.And and4 annotation (Placement(transformation(
      extent={{-4,-4},{4,4}},
      rotation=270,
      origin={58,72})));
    Modelica.Blocks.Interfaces.BooleanOutput IsFollicular annotation (Placement(
      transformation(extent={{-78,4},{-72,10}}), iconTransformation(extent={{80,
          60},{120,100}})));
    Modelica.Blocks.Interfaces.BooleanOutput IsOvulatory annotation (Placement(
      transformation(extent={{-24,8},{-18,14}}), iconTransformation(extent={{80,
          20},{120,60}})));
    Modelica.Blocks.Interfaces.BooleanOutput IsLuteal annotation (Placement(
      transformation(extent={{32,10},{38,16}}), iconTransformation(extent={{80,
          -20},{120,20}})));
    Modelica.Blocks.Interfaces.BooleanOutput IsIdle annotation (Placement(
      transformation(extent={{90,10},{96,16}}), iconTransformation(extent={{80,
          -60},{120,-20}})));
equation
    connect(FOLLICULAR.outPort[1], Follicle.inPort) annotation (Line(
    points={{-73.5,28},{-62,28}},
    color={0,0,0},
    smooth=Smooth.None));
    connect(Follicle.outPort, OVULATORY.inPort[1]) annotation (Line(
    points={{-56.5,28},{-43,28}},
    color={0,0,0},
    smooth=Smooth.None));
    connect(OVULATORY.outPort[1], Ovulation.inPort) annotation (Line(
    points={{-21.5,28.25},{-6.75,28.25},{-6.75,28},{-4,28}},
    color={0,0,0},
    smooth=Smooth.None));
    connect(Ovulation.outPort, LUTEAL.inPort[1]) annotation (Line(
    points={{1.5,28},{15,28}},
    color={0,0,0},
    smooth=Smooth.None));
    connect(LUTEAL.outPort[1], CorpusLuteum.inPort) annotation (Line(
    points={{36.5,28.25},{54,28.25},{54,28}},
    color={0,0,0},
    smooth=Smooth.None));
    connect(CorpusLuteum.outPort, IDLE.inPort[1]) annotation (Line(
    points={{59.5,28},{73,28}},
    color={0,0,0},
    smooth=Smooth.None));
    connect(IDLE.outPort[1], PrimaryFollicleFromIdle.inPort) annotation (
    Line(
    points={{94.5,28},{96,28},{96,-10},{82,-10}},
    color={0,0,0},
    smooth=Smooth.None));
    connect(PrimaryFollicleFromLuteal.outPort, FOLLICULAR.inPort[1])
    annotation (Line(
    points={{26.5,-10},{10,-10},{10,-34},{-98,-34},{-98,28.6667},{-95,
        28.6667}},
    color={0,0,0},
    smooth=Smooth.None));
    connect(PrimaryFollicleFromIdle.outPort, FOLLICULAR.inPort[2])
    annotation (Line(
    points={{76.5,-10},{62,-10},{62,-34},{-98,-34},{-98,28},{-95,28}},
    color={0,0,0},
    smooth=Smooth.None));
    connect(OVULATORY.outPort[2], PrimaryFollicleFromOvulation.inPort)
    annotation (Line(
    points={{-21.5,27.75},{-12,27.75},{-12,-10},{-26,-10}},
    color={0,0,0},
    smooth=Smooth.None));
    connect(LUTEAL.outPort[2], PrimaryFollicleFromLuteal.inPort)
    annotation (Line(
    points={{36.5,27.75},{46,27.75},{46,-10},{32,-10}},
    color={0,0,0},
    smooth=Smooth.None));
    connect(PrimaryFollicleFromOvulation.outPort, FOLLICULAR.inPort[3])
    annotation (Line(
    points={{-31.5,-10},{-50,-10},{-50,-34},{-98,-34},{-98,28},{-94,28},
        {-94,27.3333},{-95,27.3333}},
    color={0,0,0},
    smooth=Smooth.None));
    connect(FSH_Circulating, greaterThreshold.u) annotation (Line(
    points={{28,-88},{43.2,-88}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(mass.y, lessEqualThreshold.u) annotation (Line(
    points={{30.4,-62},{43.2,-62}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(lessEqualThreshold.y, and1.u1) annotation (Line(
    points={{52.4,-62},{56,-62},{56,-75},{61,-75}},
    color={255,0,255},
    smooth=Smooth.None));
    connect(greaterThreshold.y, and1.u2) annotation (Line(
    points={{52.4,-88},{56,-88},{56,-79},{61,-79}},
    color={255,0,255},
    smooth=Smooth.None));
    connect(and2.y, PrimaryFollicleFromIdle.condition) annotation (Line(
    points={{78,-53.6},{78,-22}},
    color={255,0,255},
    smooth=Smooth.None));
    connect(and2.y, PrimaryFollicleFromLuteal.condition) annotation (Line(
    points={{78,-53.6},{78,-30},{28,-30},{28,-22}},
    color={255,0,255},
    smooth=Smooth.None));
    connect(and2.y, PrimaryFollicleFromOvulation.condition) annotation (Line(
    points={{78,-53.6},{78,-30},{-30,-30},{-30,-22}},
    color={255,0,255},
    smooth=Smooth.None));
    connect(greaterThreshold1.u, LH_Circulating) annotation (Line(
    points={{-74.8,94},{-92,94}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(FollicleMass, greaterThreshold2.u) annotation (Line(
    points={{-92,82},{-74.8,82}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(greaterThreshold1.y, and3.u1) annotation (Line(
    points={{-65.6,94},{-58,94},{-58,74.8}},
    color={255,0,255},
    smooth=Smooth.None));
    connect(greaterThreshold2.y, and3.u2) annotation (Line(
    points={{-65.6,82},{-61.2,82},{-61.2,74.8}},
    color={255,0,255},
    smooth=Smooth.None));
    connect(and1.y, and2.u1) annotation (Line(
    points={{72.5,-75},{78,-75},{78,-62.8}},
    color={255,0,255},
    smooth=Smooth.None));
    connect(Cycling, and2.u2) annotation (Line(
    points={{82,-90},{82,-62.8},{81.2,-62.8}},
    color={255,0,255},
    smooth=Smooth.None));
    connect(and3.y, Follicle.condition) annotation (Line(
    points={{-58,65.6},{-58,40}},
    color={255,0,255},
    smooth=Smooth.None));
    connect(Progesterone, greaterEqualThreshold.u) annotation (Line(
    points={{-28,94},{-14.8,94}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(greaterEqualThreshold.y, Ovulation.condition) annotation (Line(
    points={{-5.6,94},{0,94},{0,40}},
    color={255,0,255},
    smooth=Smooth.None));
    connect(greaterThreshold3.u, CorpusLuteumMass) annotation (Line(
    points={{41.2,82},{20,82}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(CorpusLuteumMass, mass.u2) annotation (Line(
    points={{20,82},{38,82},{38,92},{100,92},{100,-98},{10,-98},{10,-64.4},{21.2,
        -64.4}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(FollicleMass, mass.u1) annotation (Line(
    points={{-92,82},{-84,82},{-84,70},{-100,70},{-100,-59.6},{21.2,-59.6}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(greaterThreshold3.y, and4.u2) annotation (Line(
    points={{50.4,82},{54,82},{54,76.8},{54.8,76.8}},
    color={255,0,255},
    smooth=Smooth.None));
    connect(CorpusLuteum.condition, and4.y) annotation (Line(
    points={{58,40},{58,67.6}},
    color={255,0,255},
    smooth=Smooth.None));
    connect(Cycling, and4.u1) annotation (Line(
    points={{82,-90},{82,-72},{98,-72},{98,82},{58,82},{58,76.8}},
    color={255,0,255},
    smooth=Smooth.None));
    connect(IsFollicular, FOLLICULAR.active) annotation (Line(
    points={{-75,7},{-84,7},{-84,17}},
    color={255,0,255},
    smooth=Smooth.None));
    connect(OVULATORY.active, IsOvulatory) annotation (Line(
    points={{-32,17},{-32,11},{-21,11}},
    color={255,0,255},
    smooth=Smooth.None));
    connect(LUTEAL.active, IsLuteal) annotation (Line(
    points={{26,17},{26,13},{35,13}},
    color={255,0,255},
    smooth=Smooth.None));
    connect(IDLE.active, IsIdle) annotation (Line(
    points={{84,17},{84,13},{93,13}},
    color={255,0,255},
    smooth=Smooth.None));
end OvarianCycle;