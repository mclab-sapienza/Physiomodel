within Physiomodel.Nerves;
model ExerciseSympathetic
    extends Physiolibrary.Icons.PhysicalExercise;
    parameter Real MotorRadiation_TotalEffect[:,3]={{    0,  0.0,  0.004}, {  500,  2.2,  0.002}, { 1000,  2.6,  0}};
    parameter Real PhOnNerveActivity[:,3]={{ 6.5,  5.0,  0}, { 6.9,  0.0,  0}};

    Physiolibrary.Blocks.Interpolation.Curve
    SkeletalMuscle_Metaboreflex_NerveActivity(
    x=PhOnNerveActivity[:, 1],
    y=PhOnNerveActivity[:, 2],
    slope=PhOnNerveActivity[:, 3])
    annotation (Placement(transformation(extent={{-54,20},{-34,40}})));
    Physiolibrary.Types.RealIO.pHInput   SkeletalMuscle_Ph
    annotation (Placement(transformation(extent={{-136,0},{-96,40}}),
        iconTransformation(extent={{-120,20},{-80,60}})));
    Physiolibrary.Blocks.Interpolation.Curve motorRadiation_TotalEffect(
    x=MotorRadiation_TotalEffect[:, 1],
    y=MotorRadiation_TotalEffect[:, 2],
    slope=MotorRadiation_TotalEffect[:, 3])
    annotation (Placement(transformation(extent={{-54,-10},{-34,10}})));
    Modelica.Blocks.Math.Sum totalEffect(nin=2)
    annotation (Placement(transformation(extent={{32,-10},{52,10}})));
    Modelica.Blocks.Math.Gain gain(k=0.32)
    annotation (Placement(transformation(extent={{-26,26},{-18,34}})));
    Physiolibrary.Types.RealIO.FractionOutput ExerciseSymps_TotalEffect
    annotation (Placement(transformation(extent={{78,-20},{118,20}})));
    Physiolibrary.Types.RealIO.PowerInput ExerciseMetabolism_TotalWats
    annotation (Placement(transformation(extent={{-118,-60},{-78,-20}}),
    iconTransformation(extent={{-118,-60},{-78,-20}})));
equation
    connect(SkeletalMuscle_Ph, SkeletalMuscle_Metaboreflex_NerveActivity.u)
                                    annotation (Line(
    points={{-116,20},{-85,20},{-85,30},{-54,30}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(SkeletalMuscle_Metaboreflex_NerveActivity.val, gain.u)
    annotation (Line(
    points={{-34,30},{-26.8,30}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(gain.y, totalEffect.u[1])
                         annotation (Line(
    points={{-17.6,30},{6,30},{6,-1},{30,-1}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(motorRadiation_TotalEffect.val, totalEffect.u[2])
                                                 annotation (Line(
    points={{-34,0},{-1.9,0},{-1.9,1},{30,1}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(ExerciseMetabolism_TotalWats, motorRadiation_TotalEffect.u)
                                    annotation (Line(
    points={{-98,-40},{-76,-40},{-76,0},{-54,0}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(totalEffect.y, ExerciseSymps_TotalEffect) annotation (Line(
    points={{53,0},{98,0}},
    color={0,0,127},
    smooth=Smooth.None));
    annotation ( Icon(coordinateSystem(
      preserveAspectRatio=true,  extent={{-100,-100},{100,100}}),
    graphics={
    Text(
      extent={{-132,142},{130,106}},
      lineColor={0,0,0},
      fillColor={213,255,170},
      fillPattern=FillPattern.Solid,
      textString="%name")}));
end ExerciseSympathetic;