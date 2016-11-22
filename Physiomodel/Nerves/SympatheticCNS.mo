within Physiomodel.Nerves;

model SympatheticCNS
    extends Physiolibrary.Icons.SympatheticNerves;
    parameter Real BaroEffect[:,3]={{ 0.0,  1.5,  0}, { 1.0,  1.0,  -0.5}, { 2.0,  0.5,  0}};
    parameter Real LowPressureEffect[:, 3]={{ 0.0,  1.1,  0}, { 1.0,  1.0,  -0.1}, { 4.0,  0.9,  0}};
    parameter Real FuelEffect[:,3]={{ 0.30,  0.0,  0}, { 0.60,  3.0,  0}, { 0.80,  0.0,  0}};
    parameter Real A2ConcEffect[:,3]={{ 1.7,  1.0,  0}, { 2.3,  1.4,  0}};

    Modelica.Blocks.Interfaces.RealInput CarotidSinusReceptors
    annotation (Placement(transformation(extent={{-100,60},{-60,100}}),
    iconTransformation(extent={{-100,60},{-60,100}})));
    Modelica.Blocks.Interfaces.RealInput LowPressureReceptors
    annotation (Placement(transformation(extent={{-120,20},{-80,60}})));
    Physiolibrary.Blocks.Interpolation.Curve baroEffect(
    x=BaroEffect[:, 1],
    y=BaroEffect[:, 2],
    slope=BaroEffect[:, 3])
    annotation (Placement(transformation(extent={{-46,70},{-26,90}})));
    Physiolibrary.Blocks.Interpolation.Curve lowPressureEffect(
    x=LowPressureEffect[:, 1],
    y=LowPressureEffect[:, 2],
    slope=LowPressureEffect[:, 3])
    annotation (Placement(transformation(extent={{-46,30},{-26,50}})));
    Modelica.Blocks.Interfaces.RealInput brain_Fuel_FractUseDelay
    annotation (Placement(transformation(extent={{-120,-20},{-80,20}})));
    Physiolibrary.Blocks.Interpolation.Curve fuelEffect(
    x=FuelEffect[:, 1],
    y=FuelEffect[:, 2],
    slope=FuelEffect[:, 3])
    annotation (Placement(transformation(extent={{-46,-10},{-26,10}})));
    Physiolibrary.Types.RealIO.ConcentrationInput Angiotensin2 annotation (
    Placement(transformation(extent={{-100,-100},{-60,-60}}),
    iconTransformation(extent={{-100,-100},{-60,-60}})));
    Modelica.Blocks.Math.Product reflexNA
    annotation (Placement(transformation(extent={{-2,54},{18,74}})));
    Modelica.Blocks.Math.Product neuralActivity
    annotation (Placement(transformation(extent={{56,-10},{76,10}})));
    Modelica.Blocks.Math.Sum stimulus(nin=3)
    annotation (Placement(transformation(extent={{28,8},{48,28}})));
    Physiolibrary.Types.RealIO.FrequencyOutput
                                    NA(
                                displayUnit="Hz")
    annotation (Placement(transformation(extent={{80,-80},{120,-40}}),
    iconTransformation(extent={{80,-80},{120,-40}})));
    Modelica.Blocks.Interfaces.RealInput ExerciseSymps_TotalEffect
    annotation (Placement(transformation(extent={{-120,-60},{-80,-20}})));
    Modelica.Blocks.Math.Gain gain(k=1.5)
    annotation (Placement(transformation(extent={{84,-4},{92,4}})));
    Modelica.Blocks.Interfaces.RealOutput SympsCNS_A2Effect
    annotation (Placement(transformation(extent={{82,18},{122,58}}),
    iconTransformation(extent={{80,20},{120,60}})));
    Modelica.Blocks.Interfaces.RealOutput SympsCNS_BaroEffect
    annotation (Placement(transformation(extent={{60,60},{100,100}}),
    iconTransformation(extent={{60,60},{100,100}})));
    Physiolibrary.Blocks.Factors.Spline V0_A2_Effect(
    Xscale=1e-9/Substances.AngiotensinII.mw,
    UsePositiveLog10=true,
    data=A2ConcEffect)
    annotation (Placement(transformation(extent={{-30,-89},{-10,-69}})));
    Physiolibrary.Types.Constants.FractionConst fraction(k(displayUnit="1") = 1)
    annotation (Placement(transformation(extent={{-34,-64},{-26,-56}})));
equation
    connect(CarotidSinusReceptors, baroEffect.u) annotation (Line(
    points={{-80,80},{-46,80}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(LowPressureReceptors, lowPressureEffect.u) annotation (Line(
    points={{-100,40},{-46,40}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(brain_Fuel_FractUseDelay, fuelEffect.u) annotation (Line(
    points={{-100,0},{-46,0}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(baroEffect.val, reflexNA.u1) annotation (Line(
    points={{-26,80},{-14,80},{-14,70},{-4,70}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(lowPressureEffect.val, reflexNA.u2) annotation (Line(
    points={{-26,40},{-14,40},{-14,58},{-4,58}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(fuelEffect.val, stimulus.u[1])
                                 annotation (Line(
    points={{-26,0},{20,0},{20,18},{26,18},{26,16.6667}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(stimulus.y, neuralActivity.u1)
                          annotation (Line(
    points={{49,18},{49.5,18},{49.5,6},{54,6}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(reflexNA.y, stimulus.u[2])
                             annotation (Line(
    points={{19,64},{22,64},{22,18},{26,18}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(ExerciseSymps_TotalEffect, stimulus.u[3]) annotation (Line(
    points={{-100,-40},{22,-40},{22,19.3333},{26,19.3333}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(neuralActivity.y, gain.u) annotation (Line(
    points={{77,0},{83.2,0}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(gain.y, NA) annotation (Line(
    points={{92.4,0},{96,0},{96,-60},{100,-60}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(baroEffect.val, SympsCNS_BaroEffect) annotation (Line(
    points={{-26,80},{80,80}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Angiotensin2, V0_A2_Effect.u) annotation (Line(
    points={{-80,-80},{-46,-80},{-46,-79},{-28,-79}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(V0_A2_Effect.y, SympsCNS_A2Effect) annotation (Line(
    points={{-20,-83},{-20,-96},{38,-96},{38,38},{102,38}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(V0_A2_Effect.y, neuralActivity.u2) annotation (Line(
    points={{-20,-83},{-20,-96},{38,-96},{38,-6},{54,-6}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(fraction.y, V0_A2_Effect.yBase) annotation (Line(
    points={{-25,-60},{-20,-60},{-20,-77}},
    color={0,0,127},
    smooth=Smooth.None));
    annotation ( Icon(coordinateSystem(
      preserveAspectRatio=true,  extent={{-100,-100},{100,100}}),
    graphics={Text(
      extent={{-160,198},{156,164}},
      lineColor={0,0,0},
      fillColor={213,255,170},
      fillPattern=FillPattern.Solid,
      textString="%name")}));
end SympatheticCNS;
