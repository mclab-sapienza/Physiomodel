within Physiomodel.Heat.Skin;
model SweatGland
    extends Physiolibrary.Icons.SweatGland;

    Physiolibrary.Types.BusConnector busConnector annotation (Placement(
    transformation(extent={{-100,81},{-80,101}}), iconTransformation(
      extent={{60,60},{80,80}})));
    Physiolibrary.Blocks.Factors.Normalization FuelEffect
    annotation (Placement(transformation(extent={{62,42},{82,62}})));
    Physiolibrary.Blocks.Factors.SplineLag      AcclimationEffect(
                                                   HalfTime=6*86400*Modelica.Math.log(2),
    stateName="SweatAcclimation.Effect",
    data={{60 + 459.67,0.5,0.0},{85 + 459.67,1.0,0.05},{100 + 459.67,2.0,0.0}},
    Xscale=5/9)
    annotation (Placement(transformation(extent={{62,22},{82,42}})));

    Physiolibrary.Blocks.Factors.Normalization SkinFunctionEffect
    annotation (Placement(transformation(extent={{62,2},{82,22}})));
    Physiolibrary.Chemical.Components.Substance             SweatFuel(
                         stateName="SweatFuel.Mass", solute_start(
    displayUnit="mol") = 1)
    annotation (Placement(transformation(extent={{56,-52},{78,-32}})));
    Physiolibrary.Chemical.Sources.UnlimitedSolutePump inputPump(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{34,-52},{54,-32}})));
    Physiolibrary.Chemical.Sources.UnlimitedSolutePumpOut
                                            outputPump(useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{82,-52},{102,-32}})));
    Modelica.Blocks.Math.Gain gain(k=0.4)    annotation (Placement(
      transformation(
      extent={{-4,-4},{4,4}},
      rotation=270,
      origin={92,-26})));
    Physiolibrary.Blocks.Factors.Spline MassEffect(data={{0.9,1.0,0.0},{1.0,
    0.0,0.0}})
    annotation (Placement(transformation(extent={{34,-38},{54,-18}})));
    Physiolibrary.Types.Constants.MolarFlowRateConst        Constant(k(displayUnit="mol/min")=
       6.6666666666667e-05)
    annotation (Placement(transformation(extent={{34,-20},{42,-12}})));
    Modelica.Blocks.Math.Feedback H2OOutflow
    annotation (Placement(transformation(extent={{18,-12},{2,4}})));
    Physiolibrary.Types.Constants.VolumeFlowRateConst H2OReab(k=0)
    annotation (Placement(transformation(extent={{-6,-22},{2,-14}})));
    Modelica.Blocks.Interfaces.RealInput HypothalamusSweating_NA
                                            annotation (Placement(
      transformation(extent={{-14,60},{6,80}}),   iconTransformation(
        extent={{-100,-80},{-60,-40}})));
    Physiolibrary.Thermal.Interfaces.HeatPort_a port_a annotation (Placement(
    transformation(extent={{-52,-76},{-46,-70}}), iconTransformation(
      extent={{-10,-110},{10,-90}})));
    Physiolibrary.Thermal.Interfaces.HeatPort_b port_b annotation (Placement(
    transformation(extent={{-24,-104},{-14,-94}}), iconTransformation(
      extent={{-10,90},{10,110}})));
    Modelica.Blocks.Math.Min H2OEvaporation annotation (Placement(
      transformation(
      extent={{-6,-6},{6,6}},
      rotation=180,
      origin={-50,-8})));
    Physiolibrary.Thermal.Sources.MassOutflow HeatSweatEvaporation(
    VaporizationHeat=2428344, useMassFlowInput=true) annotation (
    Placement(transformation(
    extent={{-10,10},{10,-10}},
    rotation=180,
    origin={-70,-74})));
    Physiolibrary.Blocks.Factors.Spline WindEffect(data={{0,1.0,0.0},{20,1.5,
    0.0}}, Xscale=0.44704)
    annotation (Placement(transformation(extent={{-94,-30},{-74,-10}})));
    Gases.Ventilation.VaporPressure vaporPressure
    annotation (Placement(transformation(extent={{-86,20},{-66,40}})));
    Modelica.Blocks.Math.Feedback Gradient
    annotation (Placement(transformation(extent={{8,-8},{-8,8}},
      rotation=90,
      origin={-54,16})));
    Gases.Ventilation.VaporPressure vaporPressure1 annotation (Placement(
    transformation(
    extent={{-10,-10},{10,10}},
    origin={-76,62})));
    Modelica.Blocks.Math.Product air_pH2O
    annotation (Placement(transformation(extent={{-54,56},{-44,46}})));
    Modelica.Blocks.Math.Gain sweatDensity(
    y(unit="kg/s"),
    k(unit="kg/m3") = 1000,
    u(unit="m3/s")) annotation (Placement(transformation(
      extent={{-4,-4},{4,4}},
      rotation=270,
      origin={-20,-24})));
    Physiolibrary.Thermal.Components.Stream HeatSweatConvection(
            useMassFlowInput=true, SpecificHeat=4186.8)
    annotation (Placement(transformation(extent={{-30,-84},{-10,-64}})));
    Physiolibrary.Blocks.Interpolation.Curve BasicEvaporation(
    slope={0,0},
    val(displayUnit="kg/s", nominal=0.001/60),
    u(displayUnit="Pa", nominal=(101325/760)),
    x={0,40},
    y={0,20},
    Xscale=101325/760,
    Yscale=0.001/60)                           annotation (Placement(
    transformation(
    extent={{-10,10},{10,-10}},
    rotation=180,
    origin={-80,8})));
    Modelica.Blocks.Math.Gain sweatDensity2(
    y(unit="kg/s"),
    k(unit="kg/m3") = 1000,
    u(unit="m3/s")) annotation (Placement(transformation(
      extent={{-4,-4},{4,4}},
      rotation=180,
      origin={-34,-4})));
    Physiolibrary.Blocks.Factors.Spline NerveEffect(data={{0.0,0.0,0.0},{4.0,30.0,0.0}})
    annotation (Placement(transformation(extent={{62,60},{82,80}})));
    Physiolibrary.Types.Constants.VolumeFlowRateConst H2ORateBasic(k=1.6666666666667e-08)
    annotation (Placement(transformation(extent={{46,86},{54,94}})));
equation
    connect(busConnector.skin_FunctionEffect, SkinFunctionEffect.u)
    annotation (Line(
    points={{-90,91},{30,91},{30,12},{64,12}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(AcclimationEffect.y, SkinFunctionEffect.yBase) annotation (Line(
    points={{72,28},{72,14}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(FuelEffect.y, AcclimationEffect.yBase) annotation (Line(
    points={{72,48},{72,34}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(inputPump.q_out, SweatFuel.q_out) annotation (Line(
    points={{54,-42},{67,-42}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(SweatFuel.q_out, outputPump.q_in) annotation (Line(
    points={{67,-42},{82,-42}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(MassEffect.y, inputPump.soluteFlow) annotation (Line(
    points={{44,-32},{44,-38},{48,-38}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Constant.y, MassEffect.yBase) annotation (Line(
    points={{43,-16},{44,-16},{44,-26}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(SkinFunctionEffect.y, H2OOutflow.u1) annotation (Line(
    points={{72,8},{72,-4},{16.4,-4}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(H2OReab.y, H2OOutflow.u2) annotation (Line(
    points={{3,-18},{10,-18},{10,-10.4}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(SkinFunctionEffect.y, gain.u) annotation (Line(
    points={{72,8},{72,-4},{92,-4},{92,-21.2}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(port_a, HeatSweatEvaporation.q_in) annotation (Line(
    points={{-49,-73},{-54.5,-73},{-54.5,-74},{-60,-74}},
    color={255,128,0},
    thickness=1,
    smooth=Smooth.None));
    connect(WindEffect.y, H2OEvaporation.u1) annotation (Line(
    points={{-84,-24},{-84,-28},{-36,-28},{-36,-11.6},{-42.8,-11.6}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(busConnector.EnvironmentRelativeHumidity, air_pH2O.u1)
    annotation (Line(
    points={{-90,91},{-100,91},{-100,48},{-55,48}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(busConnector.AmbientTemperature, vaporPressure1.T) annotation (
    Line(
    points={{-90,91},{-100,91},{-100,62},{-84.6,62}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(air_pH2O.y, Gradient.u2) annotation (Line(
    points={{-43.5,51},{-40,51},{-40,16},{-47.6,16}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(busConnector.skin_T, vaporPressure.T) annotation (Line(
    points={{-90,91},{-100,91},{-100,30},{-84.6,30}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(H2OOutflow.y, busConnector.SweatDuct_H2OOutflow) annotation (
    Line(
    points={{2.8,-4},{-26,-4},{-26,92},{-90,92},{-90,91}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(H2OOutflow.y, sweatDensity.u) annotation (Line(
    points={{2.8,-4},{-20,-4},{-20,-19.2}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(port_a,HeatSweatConvection. q_in) annotation (Line(
    points={{-49,-73},{-41.5,-73},{-41.5,-74},{-30,-74}},
    color={255,128,0},
    thickness=1,
    smooth=Smooth.None));
    connect(HeatSweatConvection.q_out, port_b) annotation (Line(
    points={{-10,-74},{-10,-99},{-19,-99}},
    color={255,128,0},
    thickness=1,
    smooth=Smooth.None));
    connect(vaporPressure1.VaporPressure_, air_pH2O.u2) annotation (Line(
    points={{-64.6,62},{-55,62},{-55,54}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(vaporPressure.VaporPressure_, Gradient.u1) annotation (Line(
    points={{-64.6,30},{-54,30},{-54,22.4}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Gradient.y, BasicEvaporation.u) annotation (Line(
    points={{-54,8.8},{-62,8.8},{-62,8},{-70,8}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(BasicEvaporation.val, WindEffect.yBase) annotation (Line(
    points={{-90,8},{-92,8},{-92,-10},{-84,-10},{-84,-18}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(H2OOutflow.y, sweatDensity2.u) annotation (Line(
    points={{2.8,-4},{-29.2,-4}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(sweatDensity2.y, H2OEvaporation.u2) annotation (Line(
    points={{-38.4,-4},{-40,-4},{-40,-4.4},{-42.8,-4.4}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(H2OEvaporation.y, HeatSweatEvaporation.massFlow) annotation (Line(
    points={{-56.6,-8},{-62,-8},{-62,-67}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(sweatDensity.y, HeatSweatConvection.massFlow) annotation (Line(
    points={{-20,-28.4},{-20,-67},{-28,-67}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(busConnector.WindSpeed, WindEffect.u) annotation (Line(
    points={{-90,91},{-100,91},{-100,-20},{-92,-20}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(busConnector.skin_T, AcclimationEffect.u) annotation (Line(
    points={{-90,91},{30,91},{30,32},{64,32}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(FuelEffect.yBase, NerveEffect.y) annotation (Line(
    points={{72,54},{72,66}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(H2ORateBasic.y, NerveEffect.yBase) annotation (Line(
    points={{55,90},{72,90},{72,72}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(HypothalamusSweating_NA, NerveEffect.u) annotation (Line(
    points={{-4,70},{64,70}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(outputPump.soluteFlow, gain.y) annotation (Line(
    points={{96,-38},{96,-30.4},{92,-30.4}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(SweatFuel.solute, MassEffect.u) annotation (Line(
    points={{73.6,-52},{68,-52},{68,-62},{24,-62},{24,-28},{36,-28}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(SweatFuel.solute, FuelEffect.u) annotation (Line(
    points={{73.6,-52},{68,-52},{68,-62},{24,-62},{24,52},{64,52}},
    color={0,0,127},
    smooth=Smooth.None));
    annotation ( Icon(coordinateSystem(
        preserveAspectRatio=true,  extent={{-100,-100},{100,100}}),
      graphics={Text(
        extent={{-137,-103},{144,-128}},
        lineColor={0,0,255},
        textString="%name")}));
end SweatGland;