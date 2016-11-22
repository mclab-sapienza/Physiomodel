within Physiomodel.Heat;
model MuscleHeat
    extends Physiolibrary.Icons.SkeletalMuscle;
    Physiolibrary.Thermal.Components.HeatAccumulation skeletalMuscle(
    stateName="HeatSkeletalMuscle.Mass",
    q_in(T(start=310.666)),
    useMassInput=true,
    relativeHeat_start=0)
    annotation (Placement(transformation(extent={{-8,-8},{12,12}})));
                       //(29579490.792) - 310.15*weight*(3475.044))

     // initialTemperature=310.166,
    Physiolibrary.Thermal.Components.IdealRadiator muscleFlux(SpecificHeat=
      3851.856, useMassFlowInput=true)
    annotation (Placement(transformation(extent={{40,-8},{20,12}})));
    Modelica.Blocks.Math.Gain bloodDensity(
    y(unit="kg/s"),
    k(unit="kg/m3") = 1000,
    u(unit="m3/s")) annotation (Placement(transformation(
        extent={{-4,-4},{4,4}},
        rotation=270,
        origin={38,24})));
    Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow Metabolism2
    annotation (Placement(transformation(extent={{-38,-24},{-18,-4}})));
    Physiolibrary.Types.BusConnector busConnector annotation (Placement(
      transformation(extent={{-102,32},{-82,52}}), iconTransformation(
        extent={{-104,86},{-84,106}})));
    Physiolibrary.Thermal.Interfaces.HeatPort_b q_out annotation (Placement(
      transformation(extent={{10,-70},{50,-30}}), iconTransformation(extent=
         {{-10,-10},{10,10}})));
    Modelica.Thermal.HeatTransfer.Sensors.TemperatureSensor temperatureSensor
    annotation (Placement(transformation(extent={{-50,-72},{-70,-52}})));
equation
    connect(busConnector.skeletalMuscle_BloodFlow, bloodDensity.u) annotation (
      Line(
      points={{-92,42},{38,42},{38,28.8}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-6,3},{-6,3}}));
    connect(Metabolism2.port, skeletalMuscle.q_in) annotation (Line(
    points={{-18,-14},{-6,-14},{-6,2},{2,2}},
    color={255,128,0},
    thickness=1,
    smooth=Smooth.None));
    connect(bloodDensity.y, muscleFlux.massFlow) annotation (Line(
      points={{38,19.6},{38,9}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(skeletalMuscle.q_in, muscleFlux.q_out) annotation (Line(
    points={{2,2},{16,2},{16,12},{30,12}},
    color={255,128,0},
    thickness=1,
    smooth=Smooth.None));
    connect(muscleFlux.q_in, q_out) annotation (Line(
    points={{40,4},{44,4},{44,-22},{30,-22},{30,-50}},
    color={255,128,0},
    thickness=1,
    smooth=Smooth.None));
    connect(busConnector.skeletalMuscle_SizeMass, skeletalMuscle.weight)
    annotation (Line(
      points={{-92,42},{-92,10},{-8,10}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-6,3},{-6,3}}));
    connect(busConnector.skeletalMuscle_T, temperatureSensor.T) annotation (Line(
      points={{-92,42},{-92,-62},{-70,-62}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-6,3},{-6,3}}));
    connect(skeletalMuscle.q_in, temperatureSensor.port) annotation (Line(
      points={{2,2},{-6,2},{-6,-62},{-50,-62}},
      color={191,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(busConnector.skeletalMuscle_heatProduction, Metabolism2.Q_flow)
    annotation (Line(
    points={{-92,42},{-66,42},{-66,-14},{-38,-14}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
end MuscleHeat;