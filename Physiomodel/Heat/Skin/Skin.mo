within Physiomodel.Heat.Skin;
model Skin
    extends Physiolibrary.Icons.Skin;
    parameter Real bodyPart=1/3;
    Physiolibrary.Types.Constants.VolumeFlowRateConst flowConstant(k=1*
    bodyPart)
    annotation (Placement(transformation(extent={{62,80},{70,88}})));
    Physiolibrary.Blocks.Factors.Spline NerveEffect(data={{0.0,0.0,0.0},{4.0,
    30.0,0.0}})
    annotation (Placement(transformation(extent={{62,54},{82,74}})));
    Physiolibrary.Types.BusConnector busConnector annotation (Placement(
    transformation(extent={{-100,81},{-80,101}}), iconTransformation(
      extent={{60,60},{80,80}})));
    Physiolibrary.Blocks.Factors.Normalization FuelEffect
    annotation (Placement(transformation(extent={{62,42},{82,62}})));
    Physiomodel.Metabolism.deprecated.Input2EffectDelayed AcclimationEffect(Tau=6,
    data={{60,0.5,0.0},{85,1.0,0.05},{100,2.0,0.0}})
    annotation (Placement(transformation(extent={{62,22},{82,42}})));
    Physiolibrary.Blocks.Factors.Normalization SkinFunctionEffect
    annotation (Placement(transformation(extent={{62,2},{82,22}})));
    Physiolibrary.NonSIunits.degC_to_degF degC_to_degF
    annotation (Placement(transformation(extent={{48,28},{56,36}})));
    Physiolibrary.Chemical.MassStorageCompartment          SweatFuel(
    initialSoluteMass=1, stateName="SweatFuel.Mass")
    annotation (Placement(transformation(extent={{56,-52},{78,-32}})));
    Physiolibrary.Chemical.InputPump          inputPump
    annotation (Placement(transformation(extent={{34,-52},{54,-32}})));
    Physiolibrary.Chemical.OutputPump          outputPump
    annotation (Placement(transformation(extent={{82,-52},{102,-32}})));
    Modelica.Blocks.Math.Gain gain(k=0.0004) annotation (Placement(
      transformation(
      extent={{-4,-4},{4,4}},
      rotation=270,
      origin={92,-26})));
    Physiolibrary.Blocks.Factors.Spline MassEffect(data={{0.9,1.0,0.0},{1.0,
    0.0,0.0}})
    annotation (Placement(transformation(extent={{34,-38},{54,-18}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant(k=0.004)
    annotation (Placement(transformation(extent={{34,-20},{42,-12}})));
    Modelica.Blocks.Math.Feedback H2OOutflow
    annotation (Placement(transformation(extent={{-2,-12},{-18,4}})));
    Physiolibrary.Types.Constants.VolumeFlowRateConst H2OReab(k=0)
    annotation (Placement(transformation(extent={{-26,-22},{-18,-14}})));
    Physiolibrary.Types.Constants.VolumeFlowRateConst H2OReab1(k=0.37*
    bodyPart)
    annotation (Placement(transformation(extent={{-48,-64},{-40,-56}})));
    Modelica.Blocks.Logical.Switch switch1
    annotation (Placement(transformation(extent={{-28,-82},{-8,-62}})));
    Modelica.Blocks.Logical.Greater greater
    annotation (Placement(transformation(extent={{-70,-82},{-50,-62}})));
    Physiolibrary.Types.Constants.VolumeFlowRateConst H2OReab2(k=0)
    annotation (Placement(transformation(extent={{-74,-98},{-66,-90}})));
    Physiolibrary.Osmotic.Interfaces.OsmoticPort_b q_out annotation (
    Placement(transformation(extent={{-48,-44},{-30,-28}}),
    iconTransformation(extent={{-90,-50},{-70,-30}})));
    Physiolibrary.Osmotic.Sources.SolventOutflux sweat(useSolutionFlowInput=
    true)
    annotation (Placement(transformation(extent={{-62,-46},{-82,-26}})));
    Physiolibrary.Osmotic.Sources.SolventOutflux vapor(useSolutionFlowInput=
    true)
    annotation (Placement(transformation(extent={{6,-92},{26,-72}})));
    Modelica.Blocks.Interfaces.RealOutput LiquidVol(
                                         final displayUnit="ml")
    "all tissue water volume"
    annotation (Placement(transformation(extent={{90,70},{130,110}}),
    iconTransformation(extent={{80,60},{120,100}})));
equation
    connect(flowConstant.y, NerveEffect.yBase) annotation (Line(
    points={{71,84},{72,84},{72,66}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(busConnector.HypothalamusSweating_NA, NerveEffect.u)
    annotation (Line(
    points={{-90,91},{-56,91},{-56,64},{64,64}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(busConnector.skin_FunctionEffect, SkinFunctionEffect.u)
    annotation (Line(
    points={{-90,91},{-56,91},{-56,12},{64,12}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(AcclimationEffect.y, SkinFunctionEffect.yBase) annotation (Line(
    points={{72,30},{72,14}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(NerveEffect.y, FuelEffect.yBase) annotation (Line(
    points={{72,60},{72,54}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(FuelEffect.y, AcclimationEffect.yBase) annotation (Line(
    points={{72,50},{72,34}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(busConnector.skin_T, degC_to_degF.degC) annotation (Line(
    points={{-90,91},{-56,91},{-56,32},{47.2,32}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(degC_to_degF.degF, AcclimationEffect.u) annotation (Line(
    points={{56.8,32},{62.2,32}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(SweatFuel.soluteMass, FuelEffect.u) annotation (Line(
    points={{67,-49.4},{67,-58},{22,-58},{22,52},{62.2,52}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(inputPump.q_out, SweatFuel.q_out) annotation (Line(
    points={{50,-42},{67,-42}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(SweatFuel.q_out, outputPump.q_in) annotation (Line(
    points={{67,-42},{86,-42}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(gain.y, outputPump.desiredFlow) annotation (Line(
    points={{92,-30.4},{92,-38}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(MassEffect.y, inputPump.desiredFlow) annotation (Line(
    points={{44,-30},{44,-38}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(SweatFuel.soluteMass, MassEffect.u) annotation (Line(
    points={{67,-49.4},{67,-58},{22,-58},{22,-28},{34.2,-28}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Constant.y, MassEffect.yBase) annotation (Line(
    points={{43,-16},{44,-16},{44,-26}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(SkinFunctionEffect.y, H2OOutflow.u1) annotation (Line(
    points={{72,8},{72,-4},{-3.6,-4}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(H2OReab.y, H2OOutflow.u2) annotation (Line(
    points={{-17,-18},{-10,-18},{-10,-10.4}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(SkinFunctionEffect.y, gain.u) annotation (Line(
    points={{72,8},{72,-4},{92,-4},{92,-21.2}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(greater.y, switch1.u2) annotation (Line(
    points={{-49,-72},{-30,-72}},
    color={255,0,255},
    smooth=Smooth.None));
    connect(H2OReab1.y, switch1.u1) annotation (Line(
    points={{-39,-60},{-36,-60},{-36,-64},{-30,-64}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(H2OReab2.y, switch1.u3) annotation (Line(
    points={{-65,-94},{-34,-94},{-34,-80},{-30,-80}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(H2OReab2.y, greater.u2) annotation (Line(
    points={{-65,-94},{-60,-94},{-60,-86},{-76,-86},{-76,-80},{-72,-80}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(busConnector.skin_BloodFlow, greater.u1) annotation (Line(
    points={{-90,91},{-90,-72},{-72,-72}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(vapor.q_in, q_out) annotation (Line(
    points={{10,-82},{4,-82},{4,-36},{-39,-36}},
    color={127,127,0},
    thickness=1,
    smooth=Smooth.None));
    connect(sweat.q_in, q_out) annotation (Line(
    points={{-66,-36},{-39,-36}},
    color={127,127,0},
    thickness=1,
    smooth=Smooth.None));
    connect(switch1.y, vapor.solutionFlow) annotation (Line(
    points={{-7,-72},{16,-72},{16,-78}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(H2OOutflow.y, sweat.solutionFlow) annotation (Line(
    points={{-17.2,-4},{-72,-4},{-72,-32}},
    color={0,0,127},
    smooth=Smooth.None));
    annotation ( Icon(coordinateSystem(
        preserveAspectRatio=true,  extent={{-100,-100},{100,100}}),
      graphics={Text(
        extent={{-155,-83},{126,-108}},
        lineColor={0,0,255},
        textString="%name")}));
end Skin;