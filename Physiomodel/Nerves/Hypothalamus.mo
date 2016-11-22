within Physiomodel.Nerves;
model Hypothalamus
    Modelica.Blocks.Interfaces.RealInput BrainFunctionEffect
    annotation (Placement(transformation(extent={{-120,40},{-80,80}})));
    Modelica.Blocks.Interfaces.RealOutput HypothalamusSkinFlow_NA
    annotation (Placement(transformation(extent={{80,-40},{120,0}})));
    Physiolibrary.Types.RealIO.TemperatureInput HeatCore_Temp
    annotation (Placement(transformation(extent={{-120,-20},{-80,20}})));
    Physiolibrary.Blocks.Factors.Spline TemperatureEffect_(data={{-2.0,0.0,0},{
    0.0,1.0,1.8},{2.0,4.0,0}})
    annotation (Placement(transformation(extent={{-52,-24},{-32,-4}})));
    Modelica.Blocks.Math.Feedback feedback annotation (Placement(
    transformation(
    extent={{6,-6},{-6,6}},
    rotation=180,
    origin={-60,-14})));
    Physiolibrary.Types.Constants.TemperatureConst temperatureConstant(k=310.15)
    annotation (Placement(transformation(extent={{-44,-6},{-52,2}})));
    Physiolibrary.Blocks.Factors.Spline SkinTempOffset(data={{24 + 273.15,0.0,0},
    {32 + 273.15,-1.0,0}})
    annotation (Placement(transformation(extent={{-62,-62},{-42,-42}})));
    Physiolibrary.Types.RealIO.TemperatureInput HeatSkin_Temp
    annotation (Placement(transformation(extent={{-120,-60},{-80,-20}})));
    Physiolibrary.Types.Constants.TemperatureConst temperatureConstant1(k=310.15)
    annotation (Placement(transformation(extent={{-40,-46},{-48,-38}})));
    Modelica.Blocks.Math.Feedback feedback1 annotation (Placement(
    transformation(
    extent={{6,-6},{-6,6}},
    rotation=180,
    origin={-52,-80})));
    Physiolibrary.Blocks.Interpolation.Curve NerveActivity(
    x={-2,0},
    y={4,0},
    slope={0,0})
    annotation (Placement(transformation(extent={{-32,-90},{-12,-70}})));
    Physiolibrary.Blocks.Factors.SplineLag      HypothalamusShiveringAcclimation(
    HalfTime=7*86400*Modelica.Math.log(2),
    integrator(y_start=0),
    stateName="HypothalamusShiveringAcclimation.Offset",
    data={{20 + 273.15,0.3,0},{28 + 273.15,0.0,-0.04},{39 + 273.15,-0.3,0}})
    annotation (Placement(transformation(extent={{-62,-72},{-42,-52}})));
    Modelica.Blocks.Interfaces.RealOutput HypothalamusShivering_NA
    annotation (Placement(transformation(extent={{80,-100},{120,-60}})));
    Modelica.Blocks.Interfaces.RealOutput HypothalamusSweating_NA
    annotation (Placement(transformation(extent={{80,20},{120,60}})));
    Physiolibrary.Blocks.Interpolation.Curve NerveActivity1(
    slope={0,0},
    x={0,2},
    y={0,4}) annotation (Placement(transformation(extent={{64,30},{84,50}})));
    Modelica.Blocks.Math.Feedback feedback2 annotation (Placement(
    transformation(
    extent={{6,-6},{-6,6}},
    rotation=180,
    origin={50,40})));
    Modelica.Blocks.Math.Sum SetPoint(nin=3)
    annotation (Placement(transformation(extent={{40,70},{48,78}})));
    Physiolibrary.Types.Constants.TemperatureConst temperatureConstant2(k=310.15)
    annotation (Placement(transformation(extent={{24,80},{32,88}})));
    Physiolibrary.Blocks.Interpolation.Curve SkinTempOffset_Sweating(
    slope={0,0},
    y={1,0},
    x={25 + 273.15,35 + 273.15})
       annotation (Placement(transformation(extent={{-2,14},{18,34}})));
    Physiolibrary.Blocks.Factors.SplineLag      HypothalamusSweatingAcclimation1(
    integrator(y_start=0),
    HalfTime=7*86400*Modelica.Math.log(2),
    stateName="HypothalamusSweatingAcclimation.Offset",
    data={{20 + 273.15,0.3,0},{28 + 273.15,0.0,-0.04},{39 + 273.15,-0.3,0}})
    annotation (Placement(transformation(extent={{-2,70},{18,90}})));
    Physiolibrary.Types.Constants.OneConst                  Constant
    annotation (Placement(transformation(extent={{-2,84},{6,92}})));
equation
    connect(TemperatureEffect_.u, feedback.y) annotation (Line(
    points={{-50,-14},{-54.6,-14}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(feedback.u2, temperatureConstant.y) annotation (Line(
    points={{-60,-9.2},{-60,-2},{-53,-2}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(TemperatureEffect_.yBase, BrainFunctionEffect) annotation (Line(
    points={{-42,-12},{-42,60},{-100,60}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(TemperatureEffect_.y, HypothalamusSkinFlow_NA) annotation (Line(
    points={{-42,-18},{-42,-20},{100,-20}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(HeatCore_Temp, feedback.u1) annotation (Line(
    points={{-100,0},{-72,0},{-72,-14},{-64.8,-14}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(HeatSkin_Temp, SkinTempOffset.u) annotation (Line(
    points={{-100,-40},{-68,-40},{-68,-52},{-60,-52}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(temperatureConstant1.y, SkinTempOffset.yBase) annotation (Line(
    points={{-49,-42},{-52,-42},{-52,-50}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(HeatCore_Temp, feedback1.u1) annotation (Line(
    points={{-100,0},{-72,0},{-72,-80},{-56.8,-80}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(feedback1.y, NerveActivity.u) annotation (Line(
    points={{-46.6,-80},{-32,-80}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(HeatSkin_Temp, HypothalamusShiveringAcclimation.u)
                                                        annotation (
    Line(
    points={{-100,-40},{-68,-40},{-68,-62},{-60,-62}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(SkinTempOffset.y, HypothalamusShiveringAcclimation.yBase)
    annotation (Line(
    points={{-52,-56},{-52,-60}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(HypothalamusShiveringAcclimation.y, feedback1.u2)
                                                       annotation (Line(
    points={{-52,-66},{-52,-75.2}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(NerveActivity.val, HypothalamusShivering_NA) annotation (Line(
    points={{-12,-80},{100,-80}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(NerveActivity1.val, HypothalamusSweating_NA) annotation (Line(
    points={{84,40},{100,40}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(feedback2.u1, HeatCore_Temp) annotation (Line(
    points={{45.2,40},{-72,40},{-72,0},{-100,0}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(feedback2.y, NerveActivity1.u) annotation (Line(
    points={{55.4,40},{64,40}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(SetPoint.y, feedback2.u2) annotation (Line(
    points={{48.4,74},{50,74},{50,44.8}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(temperatureConstant2.y, SetPoint.u[1]) annotation (Line(
    points={{33,84},{34,84},{34,73.4667},{39.2,73.4667}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(SkinTempOffset_Sweating.val, SetPoint.u[2]) annotation (Line(
    points={{18,24},{36,24},{36,74},{39.2,74}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(HeatSkin_Temp, SkinTempOffset_Sweating.u) annotation (Line(
    points={{-100,-40},{-68,-40},{-68,-34},{-12,-34},{-12,24},{-2,24}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(HypothalamusSweatingAcclimation1.y, SetPoint.u[3]) annotation (
    Line(
    points={{8,76},{8,74.5333},{39.2,74.5333}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(HeatSkin_Temp, HypothalamusSweatingAcclimation1.u) annotation (
    Line(
    points={{-100,-40},{-68,-40},{-68,-34},{-12,-34},{-12,80},{0,80}},
    color={0,0,127},
    smooth=Smooth.None));

    connect(Constant.y, HypothalamusSweatingAcclimation1.yBase) annotation (
    Line(
    points={{7,88},{8,88},{8,82}},
    color={0,0,127},
    smooth=Smooth.None));
end Hypothalamus;