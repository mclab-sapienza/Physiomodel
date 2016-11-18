within Physiomodel.Hormones.FemaleSexHormones;
model LH
    //Library.Interfaces.Tissues.Hypothalamus;
    Physiolibrary.Chemical.Components.Substance LH_Circulating_Mass(
    q_out(conc(final displayUnit="IU/ml"), q(final displayUnit="IU/min")),
    stateName="LH-Circulating.Mass",
    useNormalizedVolume=false)
    annotation (Placement(transformation(extent={{-82,-54},{-62,-34}})));
    Physiolibrary.Chemical.Sensors.ConcentrationMeasure concentrationMeasure(
    concentration(final displayUnit="IU/l"),
    toAnotherUnitCoef=1,
    unitsString="IU/l") annotation (Placement(transformation(
    extent={{-10,-10},{10,10}},
    origin={-78,-22})));
    Physiolibrary.Chemical.Sources.UnlimitedSolutePumpOut Degradation(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{-30,-98},{-10,-78}})));
    Modelica.Blocks.Math.Gain K(k=0.005)
    annotation (Placement(transformation(extent={{-3,-3},{3,3}},
    origin={-35,-77})));
    Physiolibrary.Chemical.Sources.UnlimitedSolutePump AnteriorPituitary(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{76,-54},{56,-34}})));
    Physiolibrary.Blocks.Factors.Spline InhibinEffect(data={{0.0,1.0,0.0},{
    7000.0,0.4,0.0}})
    annotation (Placement(transformation(extent={{56,-36},{76,-16}})));
    Physiolibrary.Types.Constants.MassFlowRateConst hormoneFlowConstant1(k=(
    0.6)/60*MassPerIU)
    annotation (Placement(transformation(extent={{82,0},{70,12}})));
    Physiolibrary.Blocks.Factors.Spline EstradiolEffect(data={{0.0,1.0,0.0},{
    0.4,0.5,0.0},{1.5,0.5,0.0},{2.0,20.0,0.0}})
    annotation (Placement(transformation(extent={{56,-26},{76,-6}})));
    Physiolibrary.Blocks.Factors.Spline GnRHEffect(data={{0.0,2.0,0.0},{80.0,
    1.0,-0.01},{200.0,0.2,0.0}})
    annotation (Placement(transformation(extent={{56,-16},{76,4}})));
    Physiolibrary.Blocks.Factors.Spline TestosteroneEffect(data={{0.0,0.999,
    0.0},{50.0,0.2,0.0}})
    annotation (Placement(transformation(extent={{56,-44},{76,-24}})));
    Modelica.Blocks.Interfaces.RealInput Estradiol(
                                    quantity="Concentration", final displayUnit="nMol/l")
                   annotation (Placement(transformation(extent={{38,-20},{
      46,-12}}),          iconTransformation(extent={{-120,20},{-80,
      60}})));
    Modelica.Blocks.Interfaces.RealInput Inhibin(
                                  quantity="Concentration", final displayUnit="IU/l")
                   annotation (Placement(transformation(extent={{38,-30},{
      46,-22}}),          iconTransformation(extent={{-120,-100},{-80,-60}})));
    Modelica.Blocks.Interfaces.RealInput Testosterone(
                                       quantity="Concentration", final displayUnit=
     "nMol/l")     annotation (Placement(transformation(extent={{38,-38},{
      46,-30}}),          iconTransformation(extent={{-120,-60},{-80,-20}})));
    Modelica.Blocks.Interfaces.RealInput GnRH_Period(
                                      quantity="Time", final displayUnit="min")
                   annotation (Placement(transformation(extent={{38,-10},{
      46,-2}}),           iconTransformation(extent={{-120,-20},{-80,20}})));
    Modelica.Blocks.Interfaces.RealInput EFCV_Vol(
                                   quantity="Volume", final displayUnit="ml")
    "extracellular fluid volume"
                   annotation (Placement(transformation(extent={{-100,-40},
      {-92,-32}}),        iconTransformation(extent={{-122,60},{-82,
      100}})));
    Modelica.Blocks.Interfaces.RealOutput LH_Circulating(
                                          quantity="Concentration",
    final displayUnit="IU/l") annotation (Placement(transformation(extent={{-64,-8},{
      -56,0}}), iconTransformation(extent={{80,-40},{120,0}})));
    Modelica.Blocks.Math.Gain gain(k=0.001) "ml to l"
    annotation (Placement(transformation(extent={{-90,-38},{-84,-32}})));
equation
    connect(concentrationMeasure.q_in, LH_Circulating_Mass.q_out)
                                                      annotation (Line(
    points={{-78,-22},{-72,-22},{-72,-44}},
    color={200,0,0},
    smooth=Smooth.None));
    connect(LH_Circulating_Mass.q_out, Degradation.q_in)
                                         annotation (Line(
    points={{-72,-44},{-54,-44},{-54,-88},{-26,-88}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(LH_Circulating_Mass.solute, K.u) annotation (Line(
    points={{-72,-51.8},{-72,-77},{-38.6,-77}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Degradation.soluteFlow, K.y) annotation (Line(
    points={{-20,-84},{-20,-77},{-31.7,-77}},
    color={0,0,127},
    smooth=Smooth.None));

    connect(AnteriorPituitary.q_out, LH_Circulating_Mass.q_out)
                                                          annotation (
    Line(
    points={{60,-44},{-72,-44}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(TestosteroneEffect.y, AnteriorPituitary.soluteFlow) annotation (
    Line(
    points={{66,-36},{66,-40}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(InhibinEffect.y, TestosteroneEffect.yBase) annotation (Line(
    points={{66,-28},{66,-32}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(EstradiolEffect.y, InhibinEffect.yBase) annotation (Line(
    points={{66,-18},{66,-24}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(GnRHEffect.y, EstradiolEffect.yBase) annotation (Line(
    points={{66,-8},{66,-14}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(hormoneFlowConstant1.y, GnRHEffect.yBase) annotation (Line(
    points={{69.4,6},{66,6},{66,-4}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(EstradiolEffect.u, Estradiol) annotation (Line(
    points={{56.2,-16},{42,-16}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(InhibinEffect.u, Inhibin) annotation (Line(
    points={{56.2,-26},{42,-26}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(TestosteroneEffect.u, Testosterone) annotation (Line(
    points={{56.2,-34},{42,-34}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(GnRHEffect.u, GnRH_Period) annotation (Line(
    points={{56.2,-6},{42,-6}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(concentrationMeasure.concentration, LH_Circulating) annotation (
    Line(
    points={{-78,-18},{-78,-4},{-60,-4}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(EFCV_Vol, gain.u) annotation (Line(
    points={{-96,-36},{-92,-36},{-92,-35},{-90.6,-35}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(gain.y, LH_Circulating_Mass.solutionVolume) annotation (Line(
    points={{-83.7,-35},{-83.7,-35.5},{-80,-35.5},{-80,-38}},
    color={0,0,127},
    smooth=Smooth.None));
end LH;