within Physiomodel.Heat;
model BladderHeat
    extends Physiolibrary.Icons.Bladder;

    parameter Physiolibrary.Types.Density urineDensity = 1000; // kg/m3
    Physiolibrary.Thermal.Components.HeatAccumulation Bladder(
    stateName="BladderTemperature.Mass",
    useMassInput=true,
    relativeHeat_start=0)
    annotation (Placement(transformation(extent={{6,-80},{26,-60}})));
                        //(259707.204) - 310.15*weight*(4186.8))
    //    initialTemperature(displayUnit="degC"),
    Physiolibrary.Types.BusConnector busConnector annotation (Placement(
      transformation(extent={{-72,-44},{-52,-24}}), iconTransformation(
        extent={{-104,86},{-84,106}})));
    Physiolibrary.Thermal.Sources.MassOutflow bladderVoid(useMassFlowInput=true)
    annotation (Placement(transformation(extent={{54,-72},{66,-60}})));
    Physiolibrary.Thermal.Interfaces.HeatPort_a positiveHeatFlow annotation (
    Placement(transformation(extent={{-6,26},{14,46}}), iconTransformation(
        extent={{-6,66},{14,86}})));
    Modelica.Blocks.Math.Gain density(k=urineDensity) "kg/m3"
    annotation (Placement(transformation(extent={{26,-44},{46,-24}})));
    Modelica.Blocks.Math.Gain density1(k=urineDensity) "kg/m3"
    annotation (Placement(transformation(extent={{-36,-72},{-16,-52}})));
equation
    connect(Bladder.q_in, bladderVoid.q_in) annotation (Line(
      points={{16,-70},{36,-70},{36,-66},{54,-66}},
      color={255,128,0},
      thickness=1,
      smooth=Smooth.None));
    connect(positiveHeatFlow, Bladder.q_in) annotation (Line(
      points={{4,36},{16,36},{16,-70}},
      color={255,128,0},
      thickness=1,
      smooth=Smooth.None));
    connect(busConnector.BladderVoidFlow, density.u) annotation (Line(
    points={{-62,-34},{24,-34}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(density.y, bladderVoid.massFlow) annotation (Line(
    points={{47,-34},{56,-34},{56,-61.8},{55.2,-61.8}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(density1.y, Bladder.weight) annotation (Line(
    points={{-15,-62},{6,-62}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(busConnector.BladderVolume_Mass, density1.u) annotation (Line(
    points={{-62,-34},{-62,-62},{-38,-62}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
end BladderHeat;