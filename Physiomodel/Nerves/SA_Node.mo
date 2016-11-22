within Physiomodel.Nerves;
model SA_Node
    extends Physiolibrary.Icons.SinoatrialNode;
    parameter Real SympatheticEffect[:,3]={{ 0.0,    0,  0}, { 1.0,   10,  10}, { 5.0,  120,  0}};
    parameter Real ParasympatheticEffect[:,3]={{ 0.0,    0,  0}, { 2.0,  -20,  -8}, { 8.0,  -40,  0}};

    Modelica.Blocks.Interfaces.RealInput GangliaGeneral_NA
    annotation (Placement(transformation(extent={{-120,-40},{-80,0}})));
    Physiolibrary.Blocks.Interpolation.Curve parasympatheticEffect(
    x=ParasympatheticEffect[:, 1],
    y=ParasympatheticEffect[:, 2],
    slope=ParasympatheticEffect[:, 3],
    Yscale=1/60)
    annotation (Placement(transformation(extent={{-50,-70},{-30,-50}})));
    Modelica.Blocks.Math.Sum rate(nin=3)
    annotation (Placement(transformation(extent={{64,-10},{84,10}})));
    Modelica.Blocks.Interfaces.RealOutput Rate
    annotation (Placement(transformation(extent={{78,-20},{118,20}})));
    Physiolibrary.Types.RealIO.FrequencyInput VagusNerve_NA_Hz
    annotation (Placement(transformation(extent={{-120,-80},{-80,-40}})));
    Physiomodel.Nerves.BetaReceptorsActivityFactor betaReceptorsActivityFactor
    annotation (Placement(transformation(extent={{10,62},{30,82}})));
    Physiolibrary.Types.Constants.OneConst                  Constant
    annotation (Placement(transformation(extent={{-2,82},{10,94}})));
    Physiolibrary.Types.Constants.FrequencyConst            Constant1(k(
      displayUnit="1/min") = 1.3666666666667)
    annotation (Placement(transformation(extent={{-6,-10},{14,10}})));
    Modelica.Blocks.Interfaces.RealInput BetaBlockade_Effect
    annotation (Placement(transformation(extent={{-120,0},{-80,40}})));
    Modelica.Blocks.Interfaces.RealInput BetaPool_Effect
    annotation (Placement(transformation(extent={{-120,40},{-80,80}})));
    Physiolibrary.Blocks.Interpolation.Curve sympatheticEffect(
    x=SympatheticEffect[:, 1],
    y=SympatheticEffect[:, 2],
    slope=SympatheticEffect[:, 3],
    Yscale=1/60)
    annotation (Placement(transformation(extent={{26,20},{46,40}})));
equation
    connect(parasympatheticEffect.val, rate.u[2])      annotation (Line(
    points={{-30,-60},{54.1,-60},{54.1,1.11022e-016},{62,1.11022e-016}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(VagusNerve_NA_Hz, parasympatheticEffect.u)
                                    annotation (Line(
    points={{-100,-60},{-50,-60}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(rate.y, Rate) annotation (Line(
    points={{85,0},{98,0}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Constant.y, betaReceptorsActivityFactor.yBase) annotation (Line(
    points={{11.5,88},{20,88},{20,79}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Constant1.y, rate.u[1]) annotation (Line(
    points={{16.5,0},{14,0},{14,-1.33333},{62,-1.33333}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(BetaPool_Effect, betaReceptorsActivityFactor.BetaPool_Effect)
    annotation (Line(
    points={{-100,60},{-46,60},{-46,78},{10.2,78}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(betaReceptorsActivityFactor.BetaBlockade_Effect, BetaBlockade_Effect)
    annotation (Line(
    points={{10.2,72},{-40,72},{-40,20},{-100,20}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(GangliaGeneral_NA, betaReceptorsActivityFactor.GangliaGeneral_NA)
    annotation (Line(
    points={{-100,-20},{-30,-20},{-30,66},{10.2,66}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(betaReceptorsActivityFactor.y, sympatheticEffect.u) annotation (
    Line(
    points={{20,65},{20,30},{26,30}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(sympatheticEffect.val, rate.u[3]) annotation (Line(
    points={{46,30},{54,30},{54,1.33333},{62,1.33333}},
    color={0,0,127},
    smooth=Smooth.None));
    annotation ( Icon(coordinateSystem(
      preserveAspectRatio=true,  extent={{-100,-100},{100,100}}),
    graphics={
    Text(
      extent={{-102,134},{100,102}},
      lineColor={0,0,0},
      fillColor={213,255,170},
      fillPattern=FillPattern.Solid,
      textString="%name")}));
end SA_Node;