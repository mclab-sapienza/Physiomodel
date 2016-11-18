within Physiomodel.Hormones.FemaleSexHormones;

model OvariesFollicle

    Modelica.Blocks.Interfaces.RealInput FSH_Circulating(
                                                  quantity="Concentration",
        final displayUnit="IU/l") annotation (Placement(transformation(extent={{-70,6},{-62,
              14}}),              iconTransformation(extent={{-120,60},{-80,
              100}})));
    Physiolibrary.Blocks.Factors.Spline FSHEffect(data={{0.0,0.8,0.0},{5.0,
        2.0,0.2},{15.0,3.0,0.0}})
    annotation (Placement(transformation(extent={{-50,0},{-30,20}})));
    Physiolibrary.Blocks.Factors.Spline EstradiolEffect(data={{0.0,1.0,0.0},{
        3.0,3.0,0.0}})
    annotation (Placement(transformation(extent={{-50,-6},{-30,14}})));
    Physiolibrary.Blocks.Factors.Spline MassEffect(data={{0.0,1.0,0.005},{
        4000.0,10.0,0.0}})
    annotation (Placement(transformation(extent={{-50,-12},{-30,8}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant BasicGrowth(k=
        0.02)
    annotation (Placement(transformation(extent={{-52,16},{-44,24}})));
    Physiolibrary.Factors.ZeroIfFalse OnlyIf
      annotation (Placement(transformation(extent={{-50,-18},{-30,2}})));
    Modelica.Blocks.Interfaces.RealInput Estradiol(
                                            quantity="Concentration",
        final displayUnit="nMol/l") annotation (Placement(transformation(extent={{-78,0},
              {-70,8}}),          iconTransformation(extent={{-120,20},{-80,
              60}})));
    Physiolibrary.Factors.ZeroIfFalse OnlyIf2
      annotation (Placement(transformation(extent={{30,-16},{50,4}})));
    Physiolibrary.Blocks.Factors.Spline MassEffect1(data={{0.0,0.0,0.0},{
        200.0,1.0,0.0}})
    annotation (Placement(transformation(extent={{30,-10},{50,10}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant1(k=0.5)
    annotation (Placement(transformation(extent={{28,4},{36,12}})));
    Modelica.Blocks.Math.Feedback Change
      annotation (Placement(transformation(extent={{30,-30},{50,-50}})));
    Modelica.Blocks.Interfaces.BooleanInput IsFollicular
      annotation (Placement(transformation(extent={{-78,-12},{-70,-4}}),
          iconTransformation(extent={{-120,-20},{-80,20}})));
    Modelica.Blocks.Interfaces.BooleanInput IsOvulatory
      annotation (Placement(transformation(extent={{-8,-8},{0,0}}),
          iconTransformation(extent={{-120,-60},{-80,-20}})));
    Modelica.Blocks.Interfaces.BooleanInput IsLuteal
      annotation (Placement(transformation(extent={{-8,-16},{0,-8}}),
          iconTransformation(extent={{-120,-100},{-80,-60}})));
    Modelica.Blocks.Logical.Or or1
      annotation (Placement(transformation(extent={{12,-10},{20,-2}})));
    Physiolibrary.Blocks.IntegratorWithRestart Mass(y_start=65, k=1/Physiomodel.Metabolism.deprecated.SecPerMin)
    annotation (Placement(transformation(extent={{60,-50},{80,-30}})));
    Modelica.Blocks.Logical.Edge edge1
      annotation (Placement(transformation(extent={{-4,-84},{16,-64}})));
    Modelica.Blocks.Interfaces.RealOutput Atresia
                                           annotation (Placement(transformation(
            extent={{44,-26},{54,-16}}), iconTransformation(extent={{80,20},{120,60}})));
    Modelica.Blocks.Interfaces.RealOutput FollicleMass(
                                                quantity="Mass", final displayUnit="mg")
      annotation (Placement(transformation(extent={{86,-44},{94,-36}}),
          iconTransformation(extent={{80,-40},{120,0}})));
equation
    connect(EstradiolEffect.y, MassEffect.yBase) annotation (Line(
    points={{-40,2},{-40,0}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(FSHEffect.y, EstradiolEffect.yBase) annotation (Line(
    points={{-40,8},{-40,6}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(BasicGrowth.y, FSHEffect.yBase) annotation (Line(
    points={{-43.6,20},{-40,20},{-40,12}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(FSHEffect.u, FSH_Circulating) annotation (Line(
    points={{-49.8,10},{-66,10}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(MassEffect.y, OnlyIf.yBase)        annotation (Line(
    points={{-40,-4},{-40,-6}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(EstradiolEffect.u, Estradiol) annotation (Line(
    points={{-49.8,4},{-74,4}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(MassEffect1.y, OnlyIf2.yBase)   annotation (Line(
    points={{40,-2},{40,-4}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Constant1.y, MassEffect1.yBase) annotation (Line(
    points={{36.4,8},{40,8},{40,2}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Change.y, Mass.u) annotation (Line(
    points={{49,-40},{58,-40}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Change.u1, OnlyIf.y)        annotation (Line(
    points={{32,-40},{-40,-40},{-40,-10}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(OnlyIf.condition, IsFollicular) annotation (Line(
    points={{-49.8,-8},{-74,-8}},
    color={255,0,255},
    smooth=Smooth.None));
    connect(or1.y, OnlyIf2.condition)   annotation (Line(
    points={{20.4,-6},{30.2,-6}},
    color={255,0,255},
    smooth=Smooth.None));
    connect(IsOvulatory, or1.u1) annotation (Line(
    points={{-4,-4},{4,-4},{4,-6},{11.2,-6}},
    color={255,0,255},
    smooth=Smooth.None));
    connect(IsLuteal, or1.u2) annotation (Line(
    points={{-4,-12},{4,-12},{4,-9.2},{11.2,-9.2}},
    color={255,0,255},
    smooth=Smooth.None));
    connect(Mass.y, MassEffect1.u) annotation (Line(
    points={{81,-40},{86,-40},{86,36},{24,36},{24,0},{30.2,0}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Mass.y, MassEffect.u) annotation (Line(
    points={{81,-40},{86,-40},{86,36},{-92,36},{-92,-2},{-49.8,-2}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(OnlyIf2.y, Change.u2)   annotation (Line(
    points={{40,-8},{40,-32}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(IsFollicular, edge1.u) annotation (Line(
    points={{-74,-8},{-60,-8},{-60,-74},{-6,-74}},
    color={255,0,255},
    smooth=Smooth.None));
    connect(edge1.y, Mass.restart) annotation (Line(
    points={{17,-74},{52,-74},{52,-48},{58,-48}},
    color={255,0,255},
    smooth=Smooth.None));
    connect(OnlyIf2.y, Atresia) annotation (Line(
    points={{40,-8},{40,-21},{49,-21}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Mass.y, FollicleMass) annotation (Line(
    points={{81,-40},{90,-40}},
    color={0,0,127},
    smooth=Smooth.None));
end OvariesFollicle;