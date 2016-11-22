within Physiomodel.Heat;
model Lungs
    extends Physiolibrary.Icons.Lungs;
    Physiolibrary.Types.BusConnector busConnector annotation (Placement(
    transformation(extent={{-76,32},{-56,52}}), iconTransformation(extent=
     {{-82,-16},{-62,4}})));
    Physiolibrary.Thermal.Interfaces.HeatPort_a positiveHeatFlow annotation (
    Placement(transformation(extent={{0,-14},{20,6}}),iconTransformation(
    extent={{-24,-56},{-4,-36}})));
    Physiolibrary.Thermal.Sources.MassOutflow lungsVapor(
    useMassFlowInput=true,
    VaporizationHeat(displayUnit="kcal/g") = 2428344,
    SpecificHeat=4186.8)
    annotation (Placement(transformation(extent={{62,-14},{82,6}})));
    Modelica.Blocks.Math.Feedback gradient
    annotation (Placement(transformation(extent={{-32,74},{-12,94}})));
    Gases.Ventilation.VaporPressure vaporPressure1 annotation (Placement(
    transformation(
    extent={{-10,-10},{10,10}},
    origin={-62,56})));
    Modelica.Blocks.Math.Product air_pH2O
    annotation (Placement(transformation(extent={{-42,60},{-32,70}})));
    Gases.Ventilation.VaporPressure vaporPressure2 annotation (Placement(
    transformation(
    extent={{-10,-10},{10,10}},
    origin={-52,84})));
    Modelica.Blocks.Math.Division division
    annotation (Placement(transformation(extent={{-2,46},{18,66}})));
    Modelica.Blocks.Math.Product product
    annotation (Placement(transformation(extent={{34,36},{54,56}})));
    Modelica.Blocks.Math.Gain K(k=0.80E-3)
    annotation (Placement(transformation(extent={{64,36},{84,56}})));
    Physiolibrary.Thermal.Interfaces.HeatPort_b air annotation (Placement(
    transformation(extent={{-92,-14},{-72,6}}),   iconTransformation(
    extent={{-24,52},{-4,72}})));
    Physiolibrary.Thermal.Components.Conductor resistorWithCond(
    useConductanceInput=true)
    annotation (Placement(transformation(extent={{-32,-14},{-12,6}})));
    Modelica.Blocks.Math.Gain SpecificHeat_Air(k=0.31*4186.4)
    annotation (Placement(transformation(extent={{-48,6},{-28,26}})));
    Modelica.Blocks.Math.Gain waterDensity(
    y(unit="kg/s"),
    k(unit="kg/m3") = 1000,
    u(unit="m3/s")) annotation (Placement(transformation(
    extent={{-5,-5},{5,5}},
    rotation=270,
    origin={73,17})));
equation

    connect(positiveHeatFlow, lungsVapor.q_in) annotation (Line(
    points={{10,-4},{62,-4}},
    color={255,128,0},
    thickness=1,
    smooth=Smooth.None));
    connect(busConnector.AmbientTemperature, vaporPressure1.T) annotation (
    Line(
    points={{-66,42},{-90,42},{-90,56},{-70.6,56}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(busConnector.EnvironmentRelativeHumidity, air_pH2O.u1)
    annotation (Line(
    points={{-66,42},{-90,42},{-90,68},{-43,68}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(busConnector.core_T, vaporPressure2.T) annotation (Line(
    points={{-66,42},{-90,42},{-90,84},{-60.6,84}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(air_pH2O.y, gradient.u2) annotation (Line(
    points={{-31.5,65},{-22,65},{-22,76}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(gradient.y, division.u1) annotation (Line(
    points={{-13,84},{-8,84},{-8,62},{-4,62}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(division.y, product.u1) annotation (Line(
    points={{19,56},{26,56},{26,52},{32,52}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(busConnector.BreathingTotalVentilation, product.u2) annotation (
    Line(
    points={{-66,42},{-18,42},{-18,40},{32,40}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(product.y, K.u) annotation (Line(
    points={{55,46},{62,46}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(positiveHeatFlow, resistorWithCond.q_out) annotation (Line(
    points={{10,-4},{-12,-4}},
    color={255,128,0},
    thickness=1,
    smooth=Smooth.None));
    connect(resistorWithCond.q_in, air) annotation (Line(
    points={{-32,-4},{-82,-4}},
    color={255,128,0},
    thickness=1,
    smooth=Smooth.None));
    connect(busConnector.BreathingTotalVentilation, SpecificHeat_Air.u)
    annotation (Line(
    points={{-66,42},{-66,16},{-50,16}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(waterDensity.y, lungsVapor.massFlow) annotation (Line(
    points={{73,11.5},{73,7.75},{64,7.75},{64,3}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(K.y, waterDensity.u) annotation (Line(
    points={{85,46},{92,46},{92,30},{73,30},{73,23}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(vaporPressure1.VaporPressure_, air_pH2O.u2) annotation (Line(
    points={{-50.6,56},{-48,56},{-48,62},{-43,62}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(vaporPressure2.VaporPressure_, gradient.u1) annotation (Line(
    points={{-40.6,84},{-30,84}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(busConnector.BarometerPressure, division.u2) annotation (Line(
    points={{-66,42},{-36,42},{-36,50},{-4,50}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(SpecificHeat_Air.y, resistorWithCond.conductance) annotation (Line(
    points={{-27,16},{-22,16},{-22,0}},
    color={0,0,127},
    smooth=Smooth.None));
end Lungs;
