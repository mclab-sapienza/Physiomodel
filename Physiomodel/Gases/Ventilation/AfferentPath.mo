within Physiomodel.Gases.Ventilation;
model AfferentPath
    extends Physiolibrary.Icons.RespiratoryCenter;
    parameter Real RadiationTotalDrive[:,3]={{    0,  0.0,  0}, {  500,  3.5,  0.003}, { 1000,  4.0,  0}};
    parameter Real OutputRate[:,3]={{  0,   0,  12}, {  1,  12,   4}, { 10,  40,   0}};

    Physiolibrary.Types.RealIO.FractionOutput TotalDrive
    annotation (Placement(transformation(extent={{80,-20},{120,20}}),
      iconTransformation(extent={{74,20},{114,60}})));
    Physiolibrary.Types.BusConnector busConnector annotation (Placement(
    transformation(extent={{-42,82},{-22,102}}), iconTransformation(
      extent={{-62,62},{-22,102}})));
    Physiolibrary.Types.RealIO.FractionInput Chemoreceptors_FiringRate
    annotation (Placement(transformation(extent={{-100,40},{-60,80}}),
      iconTransformation(extent={{-100,40},{-60,80}})));
    Physiolibrary.Blocks.Interpolation.Curve Radiation(
    x=RadiationTotalDrive[:, 1],
    y=RadiationTotalDrive[:, 2],
    slope=RadiationTotalDrive[:, 3])
    annotation (Placement(transformation(extent={{-10,12},{10,32}})));
    Modelica.Blocks.Math.Add RespiratoryCenterChemical_TotalDrive(k1=0.6,
    k2=0.4)
    annotation (Placement(transformation(extent={{36,52},{56,72}})));
    Physiolibrary.Types.RealIO.FractionInput Metaboreflex
    annotation (Placement(transformation(extent={{-120,0},{-80,40}}),
      iconTransformation(extent={{-118,0},{-78,40}})));
    Modelica.Blocks.Math.Add RespiratoryCenterExercise_TotalDrive
    annotation (Placement(transformation(extent={{26,18},{46,38}})));
    Modelica.Blocks.Math.Add RespiratoryCenterIntegration_TotalDrive
    annotation (Placement(transformation(extent={{66,24},{86,44}})));
    Physiolibrary.Types.RealIO.FractionInput CentralChemoreceptors
    annotation (Placement(transformation(extent={{-100,66},{-60,106}}),
      iconTransformation(extent={{-100,-50},{-60,-10}})));
equation
    connect(Radiation.val, RespiratoryCenterExercise_TotalDrive.u2) annotation (
        Line(
        points={{10,22},{24,22}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(Metaboreflex, RespiratoryCenterExercise_TotalDrive.u1) annotation (
        Line(
        points={{-100,20},{-44,20},{-44,34},{24,34}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(RespiratoryCenterChemical_TotalDrive.y,
      RespiratoryCenterIntegration_TotalDrive.u1) annotation (Line(
        points={{57,62},{60,62},{60,40},{64,40}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(RespiratoryCenterExercise_TotalDrive.y,
      RespiratoryCenterIntegration_TotalDrive.u2) annotation (Line(
        points={{47,28},{64,28}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(RespiratoryCenterChemical_TotalDrive.u1, CentralChemoreceptors)
      annotation (Line(
        points={{34,68},{-18,68},{-18,86},{-80,86}},
        color={0,0,127},
        smooth=Smooth.None));

    connect(RespiratoryCenterIntegration_TotalDrive.y, TotalDrive)
      annotation (Line(
        points={{87,34},{94,34},{94,0},{100,0}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(Chemoreceptors_FiringRate, RespiratoryCenterChemical_TotalDrive.u2)
      annotation (Line(
        points={{-80,60},{-23,60},{-23,56},{34,56}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(busConnector.Exercise_Metabolism_MotionWatts, Radiation.u)
    annotation (Line(
      points={{-32,92},{-32,22},{-10,22}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-6,3},{-6,3}}));
    annotation ( Icon(coordinateSystem(
            preserveAspectRatio=true,  extent={{-100,-100},{100,100}}),
          graphics={
          Text(
            extent={{-66,32},{76,-22}},
            lineColor={0,0,0},
            fillColor={213,255,170},
            fillPattern=FillPattern.Solid,
            textString="%name"),
          Text(
            extent={{-124,-104},{124,-130}},
            lineColor={0,0,255},
            textString="%name")}));
end AfferentPath;
