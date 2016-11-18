within Physiomodel.Hormones.FemaleSexHormones;
model GnRH
    Physiolibrary.Types.Constants.TimeConst hormoneFlowConstant1(k=4800)
    annotation (Placement(transformation(extent={{30,40},{18,52}})));
    Physiolibrary.Blocks.Factors.Spline EstradiolEffect(data={{0.0,1.0,0.0},{
    1.0,1.5,0.0},{2.0,0.5,0.0}})
    annotation (Placement(transformation(extent={{4,14},{24,34}})));
    Physiolibrary.Blocks.Factors.Spline TestosteroneEffect(data={{5.0,1.0,0.0},
    {20.0,2.0,0.0}})
    annotation (Placement(transformation(extent={{4,-4},{24,16}})));
    Modelica.Blocks.Interfaces.RealInput Estradiol(
                                        quantity="Concentration", final displayUnit="nMol/l")
                       annotation (Placement(transformation(extent={{-14,20},{
          -6,28}}),           iconTransformation(extent={{-120,60},{-80,100}})));
    Modelica.Blocks.Interfaces.RealInput Testosterone(
                                           quantity="Concentration", final displayUnit=
         "nMol/l")     annotation (Placement(transformation(extent={{-14,2},{-6,
          10}}),              iconTransformation(extent={{-120,-60},{-80,-20}})));
    Modelica.Blocks.Interfaces.RealOutput GnRH_period(
                                           quantity="Time", final displayUnit="min")
    annotation (Placement(transformation(extent={{24,-24},{32,-16}}),
      iconTransformation(extent={{80,-100},{120,-60}})));
equation

    connect(EstradiolEffect.u, Estradiol) annotation (Line(
    points={{4.2,24},{-10,24}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(TestosteroneEffect.u, Testosterone) annotation (Line(
    points={{4.2,6},{-10,6}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(TestosteroneEffect.y, GnRH_period) annotation (Line(
    points={{14,4},{14,-20},{28,-20}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(hormoneFlowConstant1.y, EstradiolEffect.yBase) annotation (Line(
    points={{17.4,46},{14,46},{14,26}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(EstradiolEffect.y, TestosteroneEffect.yBase) annotation (Line(
    points={{14,22},{14,8}},
    color={0,0,127},
    smooth=Smooth.None));
end GnRH;