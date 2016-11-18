within Physiomodel.Hormones.FemaleSexHormones;
model Estradiol

    Physiolibrary.Molar.ConcentrationCompartment_knownConc
    estradiol(
    q_out(conc(final displayUnit="nMol/ml"), q(final displayUnit="nMol/min")),
    concentration=0.00015,
    stateName="Estradiol.Mass")
    annotation (Placement(transformation(extent={{-82,-54},{-62,-34}})));
    Physiolibrary.Chemical.Sources.UnlimitedSolutePump
    CorpusLuteum_OvariesSecretion(useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{76,-54},{56,-34}})));
    Physiolibrary.Types.Constants.MolarFlowRateConst hormoneFlowConstant(k=
    5.0000000000001e-012)
    annotation (Placement(transformation(extent={{80,-24},{68,-12}})));
    Physiolibrary.Blocks.Factors.Spline MassEffect2(data={{0.0,0.0,0.0},{
    4000.0,10.0,0.0}})
    annotation (Placement(transformation(extent={{56,-40},{76,-20}})));
    Physiolibrary.Chemical.Sensors.ConcentrationMeasure concentrationMeasure(
    concentration(final displayUnit="nMol/l"),
    toAnotherUnitCoef=1000,
    unitsString="nMol/l") annotation (Placement(transformation(
    extent={{-10,-10},{10,10}},
    origin={-78,-22})));
    Physiolibrary.Chemical.Sources.UnlimitedSolutePumpOut Degradation(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{-30,-98},{-10,-78}})));
    Modelica.Blocks.Math.Gain K(k=0.11)
    annotation (Placement(transformation(extent={{-3,-3},{3,3}},
      origin={-35,-77})));
    Physiolibrary.Chemical.Sources.UnlimitedSolutePump
    Follicle_OvariesSecretion(useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{76,-98},{56,-78}})));
    Physiolibrary.Blocks.Factors.Spline MassEffect(data={{0.0,0.0,0.0},{
    4000.0,10.0,0.0}})
    annotation (Placement(transformation(extent={{56,-80},{76,-60}})));
    Physiolibrary.Types.Constants.MolarFlowRateConst hormoneFlowConstant1(k=
    5.0000000000001e-012)
    annotation (Placement(transformation(extent={{82,-66},{70,-54}})));
    Physiolibrary.Factors.ZeroIfFalse onlyIf
    annotation (Placement(transformation(extent={{56,-88},{76,-68}})));
    Modelica.Blocks.Interfaces.RealInput EFCV_Vol(
                                       quantity="Volume", final displayUnit=
      "ml") "extracellular fluid volume"
                       annotation (Placement(transformation(extent={{-100,
      -40},{-92,-32}}),   iconTransformation(extent={{-120,60},{-80,
              100}})));
    Modelica.Blocks.Interfaces.BooleanInput IsFollicular
      annotation (Placement(transformation(extent={{22,-82},{30,-74}}),
          iconTransformation(extent={{-120,20},{-80,60}})));
    Modelica.Blocks.Interfaces.RealInput OvariesFollicleMass(
                                                      quantity="Mass",
        final displayUnit="mg")     annotation (Placement(transformation(extent={{22,-74},
              {30,-66}}),         iconTransformation(extent={{-120,-60},{
              -80,-20}})));
    Modelica.Blocks.Interfaces.RealInput CorpusLuteumMass(
                                                   quantity="Mass", final displayUnit=
             "mg")           annotation (Placement(transformation(extent={{22,-34},
              {30,-26}}),         iconTransformation(extent={{-120,-20},{
              -80,20}})));
    Modelica.Blocks.Interfaces.RealOutput Estradiol(
                                             quantity="Concentration",
        final displayUnit="nMol/l") annotation (Placement(transformation(extent={{
              -64,-2},{-56,6}}), iconTransformation(extent={{80,-40},{120,0}})));
equation
    connect(estradiol.q_out, CorpusLuteum_OvariesSecretion.q_out)
                                           annotation (Line(
    points={{-72,-44},{60,-44}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(concentrationMeasure.q_in,estradiol. q_out)   annotation (Line(
    points={{-78,-22},{-72,-22},{-72,-44}},
    color={200,0,0},
    smooth=Smooth.None));
    connect(estradiol.q_out, Degradation.q_in)
                                         annotation (Line(
    points={{-72,-44},{-54,-44},{-54,-88},{-26,-88}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(estradiol.soluteMass, K.u)      annotation (Line(
    points={{-72,-51.8},{-72,-77},{-38.6,-77}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Degradation.soluteFlow, K.y) annotation (Line(
    points={{-20,-84},{-20,-77},{-31.7,-77}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(hormoneFlowConstant.y, MassEffect2.yBase)
                                                annotation (Line(
    points={{67.4,-18},{66,-18},{66,-28}},
    color={0,0,127},
    smooth=Smooth.None));

    connect(CorpusLuteum_OvariesSecretion.soluteFlow, MassEffect2.y)
    annotation (Line(
    points={{66,-40},{66,-32}},
    color={0,0,127},
    smooth=Smooth.None));

    connect(Follicle_OvariesSecretion.q_out,estradiol. q_out) annotation (
    Line(
    points={{60,-88},{-4,-88},{-4,-44},{-72,-44}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(MassEffect.yBase, hormoneFlowConstant1.y) annotation (Line(
    points={{66,-68},{66,-60},{69.4,-60}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(MassEffect.y, onlyIf.yBase)        annotation (Line(
    points={{66,-72},{66,-76}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(onlyIf.y, Follicle_OvariesSecretion.soluteFlow) annotation (Line(
    points={{66,-80},{66,-84}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(EFCV_Vol, estradiol.SolventVolume) annotation (Line(
    points={{-96,-36},{-82,-36}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(IsFollicular, onlyIf.condition) annotation (Line(
    points={{26,-78},{56.2,-78}},
    color={255,0,255},
    smooth=Smooth.None));
    connect(OvariesFollicleMass, MassEffect.u) annotation (Line(
    points={{26,-70},{56.2,-70}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(MassEffect2.u, CorpusLuteumMass) annotation (Line(
    points={{56.2,-30},{26,-30}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(concentrationMeasure.concentration, Estradiol) annotation (Line(
    points={{-78,-18},{-78,2},{-60,2}},
    color={0,0,127},
    smooth=Smooth.None));
end Estradiol;