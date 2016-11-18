within Physiomodel.Hormones.FemaleSexHormones;

model CorpusLuteum
    Modelica.Blocks.Interfaces.RealInput hCG(
                                  quantity="Concentration", final displayUnit="IU/l")
                       annotation (Placement(transformation(extent={{-42,34},{
          -34,42}}),          iconTransformation(extent={{-120,60},{-80,100}})));
    Modelica.Blocks.Interfaces.RealInput OvariesFollicleAtresia(
                                                     quantity="MassChange",
    final displayUnit="mg/min")
                       annotation (Placement(transformation(extent={{-46,2},{-38,
          10}}),              iconTransformation(extent={{-120,20},{-80,60}})));
    Physiolibrary.Blocks.Factors.Normalization massEffect
    annotation (Placement(transformation(extent={{-26,22},{-6,42}})));
    Physiolibrary.Blocks.Factors.Spline hCGEffect(data={{0.0,1.0,0.0},{100.0,
    -0.5,0.0}})
    annotation (Placement(transformation(extent={{-26,28},{-6,48}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant1(k=
    0.0001)
    annotation (Placement(transformation(extent={{-28,42},{-20,50}})));
    Modelica.Blocks.Math.Feedback Change
    annotation (Placement(transformation(extent={{-26,16},{-6,-4}})));
    Modelica.Blocks.Continuous.Integrator Mass(k=1/Physiomodel.Metabolism.deprecated.SecPerMin,
    final y_start=0)
    annotation (Placement(transformation(extent={{8,-4},{28,16}})));
    Modelica.Blocks.Interfaces.RealOutput CorpusLuteumMass(
                                                quantity="Mass", final displayUnit="mg")
    annotation (Placement(transformation(extent={{48,2},{56,10}}),
    iconTransformation(extent={{80,-40},{120,0}})));
equation
    connect(hCGEffect.y, massEffect.yBase)  annotation (Line(
    points={{-16,36},{-16,34}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Constant1.y, hCGEffect.yBase)   annotation (Line(
    points={{-19.6,46},{-16,46},{-16,40}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Change.y, Mass.u) annotation (Line(
    points={{-7,6},{6,6}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(massEffect.y, Change.u2)
                                annotation (Line(
    points={{-16,30},{-16,14}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(OvariesFollicleAtresia, Change.u1) annotation (Line(
    points={{-42,6},{-24,6}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(hCG, hCGEffect.u) annotation (Line(
    points={{-38,38},{-25.8,38}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Mass.y, massEffect.u) annotation (Line(
    points={{29,6},{36,6},{36,60},{-46,60},{-46,32},{-25.8,32}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Mass.y, CorpusLuteumMass) annotation (Line(
    points={{29,6},{52,6}},
    color={0,0,127},
    smooth=Smooth.None));
end CorpusLuteum;