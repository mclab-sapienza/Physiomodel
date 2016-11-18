within Physiomodel.Hormones.FemaleSexHormones;

model Testosterone
    Physiolibrary.Molar.ConcentrationCompartment_knownConc
    testosterone(q_out(conc(final displayUnit="nMol/ml"), q(final displayUnit=
          "nMol/min")), concentration=0.0006,
    stateName="Testosterone.Mass")
    annotation (Placement(transformation(extent={{-82,-54},{-62,-34}})));
    Physiolibrary.Chemical.Sources.UnlimitedSolutePump OvariesSecretion(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{76,-54},{56,-34}})));
    Physiolibrary.Types.Constants.MolarFlowRateConst hormoneFlowConstant(k=
    4.16666666666675e-012)
    annotation (Placement(transformation(extent={{84,-34},{72,-22}})));
    Physiolibrary.Chemical.Sensors.ConcentrationMeasure concentrationMeasure(
    concentration(final displayUnit="nMol/l"),
    toAnotherUnitCoef=1000,
    unitsString="nMol/l") annotation (Placement(transformation(
    extent={{-10,-10},{10,10}},
    origin={-78,-22})));
    Physiolibrary.Chemical.Sources.UnlimitedSolutePumpOut Degradation(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{-30,-98},{-10,-78}})));
    Modelica.Blocks.Math.Gain K(k=0.043)
    annotation (Placement(transformation(extent={{-3,-3},{3,3}},
      origin={-35,-77})));
    Modelica.Blocks.Interfaces.RealInput EFCV_Vol(
                                       quantity="Volume", final displayUnit=
      "ml") "extracellular fluid volume"
                       annotation (Placement(transformation(extent={{-100,
          -40},{-92,-32}}),   iconTransformation(extent={{-120,60},{-80,
          100}})));
    Modelica.Blocks.Interfaces.RealOutput Testosterone(
                                            quantity="Concentration",
    final displayUnit="nMol/l") annotation (Placement(transformation(extent={{
          -60,-10},{-52,-2}}), iconTransformation(extent={{80,-40},{120,
          0}})));
equation
        connect(testosterone.q_out, OvariesSecretion.q_out)
                                               annotation (Line(
        points={{-72,-44},{60,-44}},
        color={200,0,0},
        thickness=1,
        smooth=Smooth.None));
        connect(concentrationMeasure.q_in, testosterone.q_out)
                                                          annotation (Line(
        points={{-78,-22},{-72,-22},{-72,-44}},
        color={200,0,0},
        smooth=Smooth.None));
        connect(testosterone.q_out, Degradation.q_in)
                                             annotation (Line(
        points={{-72,-44},{-54,-44},{-54,-88},{-26,-88}},
        color={200,0,0},
        thickness=1,
        smooth=Smooth.None));
        connect(testosterone.soluteMass, K.u)   annotation (Line(
        points={{-72,-51.8},{-72,-77},{-38.6,-77}},
        color={0,0,127},
        smooth=Smooth.None));
        connect(Degradation.soluteFlow, K.y) annotation (Line(
        points={{-20,-84},{-20,-77},{-31.7,-77}},
        color={0,0,127},
        smooth=Smooth.None));

        connect(EFCV_Vol, testosterone.SolventVolume) annotation (Line(
        points={{-96,-36},{-82,-36}},
        color={0,0,127},
        smooth=Smooth.None));
        connect(concentrationMeasure.concentration, Testosterone) annotation (
        Line(
        points={{-78,-18},{-78,-6},{-56,-6}},
        color={0,0,127},
        smooth=Smooth.None));
        connect(hormoneFlowConstant.y, OvariesSecretion.soluteFlow) annotation (
        Line(
        points={{71.4,-28},{66,-28},{66,-40}},
        color={0,0,127},
        smooth=Smooth.None));
end Testosterone;