within Physiomodel.Nerves;
model GangliaKidney
    extends Physiolibrary.Icons.Kidney;
    parameter Real LowPressureEffect[:,3]={{ 0.0,  1.5,  0}, { 1.0,  1.0,  -0.4}, { 4.0,  0.2,  0}};
    parameter Real FuelEffect[:,3]={{ 0.30,  0.0,  0}, { 0.60,  3.0,  0}, { 0.80,  0.0,  0}};

    Modelica.Blocks.Interfaces.RealInput SympsCNS_BaroEffect
    annotation (Placement(transformation(extent={{-120,-60},{-80,-20}}),
    iconTransformation(extent={{-120,-60},{-80,-20}})));
    Modelica.Blocks.Interfaces.RealOutput NA
    annotation (Placement(transformation(extent={{60,42},{100,82}})));
    Modelica.Blocks.Interfaces.RealInput LowPressureReceptors_NA
    annotation (Placement(transformation(extent={{-120,20},{-80,60}}),
    iconTransformation(extent={{-120,20},{-80,60}})));
    Modelica.Blocks.Interfaces.RealInput brain_Fuel_FractUseDelay
    annotation (Placement(transformation(extent={{-100,60},{-60,100}}),
    iconTransformation(extent={{-100,60},{-60,100}})));
    Modelica.Blocks.Interfaces.RealInput SympsCNS_A2Effect
    annotation (Placement(transformation(extent={{-100,-100},{-60,-60}}),
    iconTransformation(extent={{-100,-100},{-60,-60}})));
    Modelica.Blocks.Interfaces.RealInput ExerciseSymps_TotalEffect
    annotation (Placement(transformation(extent={{-120,-20},{-80,20}}),
    iconTransformation(extent={{-120,-20},{-80,20}})));
    Modelica.Blocks.Math.Product      ReflexNA
    annotation (Placement(transformation(extent={{-12,4},{8,24}})));
    Physiolibrary.Blocks.Interpolation.Curve LowPressureEffectCurve(
    x=LowPressureEffect[:, 1],
    y=LowPressureEffect[:, 2],
    slope=LowPressureEffect[:, 3])
    annotation (Placement(transformation(extent={{-66,22},{-30,58}})));
    Physiolibrary.Blocks.Interpolation.Curve FuelEffectCurve(
    x=FuelEffect[:, 1],
    y=FuelEffect[:, 2],
    slope=FuelEffect[:, 3])
    annotation (Placement(transformation(extent={{-34,62},{2,98}})));
    Modelica.Blocks.Math.Sum sum1(nin=3)
    annotation (Placement(transformation(extent={{32,16},{52,36}})));
    Modelica.Blocks.Math.Product NeuralActivity
    annotation (Placement(transformation(extent={{62,-28},{82,-8}})));
    Modelica.Blocks.Math.Gain toHz(k=1.5)
    annotation (Placement(transformation(extent={{88,-4},{96,4}})));
equation
    connect(LowPressureReceptors_NA, LowPressureEffectCurve.u) annotation (Line(
    points={{-100,40},{-66,40}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(brain_Fuel_FractUseDelay, FuelEffectCurve.u) annotation (Line(
    points={{-80,80},{-34,80}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(ReflexNA.y, sum1.u[1]) annotation (Line(
    points={{9,14},{18,14},{18,24.6667},{30,24.6667}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(ExerciseSymps_TotalEffect, sum1.u[2]) annotation (Line(
    points={{-100,0},{16,0},{16.8848,25.502},{30,26}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(FuelEffectCurve.val, sum1.u[3]) annotation (Line(
    points={{2,80},{16,80},{16,26},{30,26},{30,27.3333}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(sum1.y, NeuralActivity.u1) annotation (Line(
    points={{53,26},{56,26},{56,-12},{60,-12}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(SympsCNS_A2Effect, NeuralActivity.u2) annotation (Line(
    points={{-80,-80},{42,-80},{42,-24},{60,-24}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(NeuralActivity.y, toHz.u) annotation (Line(
    points={{83,-18},{86,-18},{86,0},{87.2,0}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(toHz.y, NA) annotation (Line(
    points={{96.4,0},{98,0},{98,36},{68,36},{68,62},{80,62}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(LowPressureEffectCurve.val, ReflexNA.u1) annotation (Line(
    points={{-30,40},{-22,40},{-22,20},{-14,20}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(SympsCNS_BaroEffect, ReflexNA.u2) annotation (Line(
    points={{-100,-40},{-58,-40},{-58,8},{-14,8}},
    color={0,0,127},
    smooth=Smooth.None));
    annotation ( Icon(coordinateSystem(
      preserveAspectRatio=true,  extent={{-100,-100},{100,100}}),
    graphics={Text(
      extent={{-112,138},{110,106}},
      lineColor={0,0,0},
      fillColor={213,255,170},
      fillPattern=FillPattern.Solid,
      textString="%name"), Ellipse(extent={{-106,104},{100,-98}},
        lineColor={0,0,0})}));
end GangliaKidney;