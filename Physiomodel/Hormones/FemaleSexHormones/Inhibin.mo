within Physiomodel.Hormones.FemaleSexHormones;
model Inhibin

        Physiolibrary.Molar.ConcentrationCompartment_knownConc
        inhibin(
        q_out(conc(final displayUnit="IU/ml"), q(final displayUnit="IU/min")),
        concentration=0.027,
        stateName="Inhibin.Mass")
        annotation (Placement(transformation(extent={{-82,-54},{-62,-34}})));
        Physiolibrary.Chemical.Sources.UnlimitedSolutePump A(useSoluteFlowInput=
        true)
        annotation (Placement(transformation(extent={{76,-54},{56,-34}})));
        Physiolibrary.Types.Constants.MassFlowRateConst hormoneFlowConstant(k=(
        0.28)/60*MassPerIU)
        annotation (Placement(transformation(extent={{80,-24},{68,-12}})));
        Physiolibrary.Blocks.Factors.Normalization MassEffect2
        annotation (Placement(transformation(extent={{56,-40},{76,-20}})));
        Physiolibrary.Chemical.Sensors.ConcentrationMeasure concentrationMeasure(
        concentration(final displayUnit="IU/l"),
        toAnotherUnitCoef=1000,
        unitsString="IU/l") annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        origin={-76,-22})));
        Physiolibrary.Chemical.Sources.UnlimitedSolutePumpOut Degradation(
        useSoluteFlowInput=true)
        annotation (Placement(transformation(extent={{-30,-98},{-10,-78}})));
        Modelica.Blocks.Math.Gain K(k=0.008)
        annotation (Placement(transformation(extent={{-3,-3},{3,3}},
          origin={-35,-77})));
        Modelica.Blocks.Interfaces.RealInput EFCV_Vol(
                                           quantity="Volume", final displayUnit=
          "ml") "extracellular fluid volume"
                           annotation (Placement(transformation(extent={{-100,
              -40},{-92,-32}}),   iconTransformation(extent={{-120,60},{-80,
              100}})));
        Modelica.Blocks.Interfaces.RealInput CorpusLuteumMass(
                                                   quantity="Mass", final displayUnit=
             "mg")           annotation (Placement(transformation(extent={{34,-34},
              {42,-26}}),         iconTransformation(extent={{-120,-60},{
              -80,-20}})));
        Modelica.Blocks.Interfaces.RealOutput Inhibin(
                                           quantity="Concentration", final displayUnit=
             "IU/l") annotation (Placement(transformation(extent={{-60,-10},
              {-52,-2}}), iconTransformation(extent={{80,-40},{120,0}})));
        Physiolibrary.Blocks.Factors.Normalization MassEffect1
        annotation (Placement(transformation(extent={{56,-86},{76,-66}})));
        Physiolibrary.Types.Constants.MassFlowRateConst hormoneFlowConstant1(k=(
        0.28)/60*MassPerIU)
        annotation (Placement(transformation(extent={{82,-72},{70,-60}})));
        Physiolibrary.Chemical.Sources.UnlimitedSolutePump B(useSoluteFlowInput=
        true)
        annotation (Placement(transformation(extent={{76,-104},{56,-84}})));
        Modelica.Blocks.Interfaces.RealInput OvariesFollicleMass(
                                                      quantity="Mass",
        final displayUnit="mg")     annotation (Placement(transformation(extent={{34,-80},
              {42,-72}}),         iconTransformation(extent={{-120,-20},{
              -80,20}})));
        Physiolibrary.Factors.ZeroIfFalse zeroIfFalse
        annotation (Placement(transformation(extent={{56,-94},{76,-74}})));
        Modelica.Blocks.Interfaces.BooleanInput IsFollicular
        annotation (Placement(transformation(extent={{34,-88},{42,-80}}),
          iconTransformation(extent={{-120,20},{-80,60}})));
equation
    connect(inhibin.q_out, A.q_out)            annotation (Line(
    points={{-72,-44},{60,-44}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(concentrationMeasure.q_in, inhibin.q_out)     annotation (Line(
    points={{-76,-22},{-72,-22},{-72,-44}},
    color={200,0,0},
    smooth=Smooth.None));
    connect(inhibin.q_out, Degradation.q_in) annotation (Line(
    points={{-72,-44},{-54,-44},{-54,-88},{-26,-88}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(inhibin.soluteMass, K.u)        annotation (Line(
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

    connect(A.soluteFlow, MassEffect2.y) annotation (Line(
    points={{66,-40},{66,-32}},
    color={0,0,127},
    smooth=Smooth.None));

    connect(EFCV_Vol, inhibin.SolventVolume) annotation (Line(
    points={{-96,-36},{-82,-36}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(CorpusLuteumMass, MassEffect2.u) annotation (Line(
    points={{38,-30},{56.2,-30}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(concentrationMeasure.concentration, Inhibin) annotation (Line(
    points={{-76,-18},{-76,-6},{-56,-6}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(hormoneFlowConstant1.y, MassEffect1.yBase) annotation (Line(
    points={{69.4,-66},{66,-66},{66,-74}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(OvariesFollicleMass, MassEffect1.u) annotation (Line(
    points={{38,-76},{56.2,-76}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(zeroIfFalse.condition, IsFollicular) annotation (Line(
    points={{56.2,-84},{38,-84}},
    color={255,0,255},
    smooth=Smooth.None));
    connect(MassEffect1.y, zeroIfFalse.yBase) annotation (Line(
    points={{66,-78},{66,-82}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(zeroIfFalse.y, B.soluteFlow) annotation (Line(
    points={{66,-86},{66,-90}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(B.q_out, inhibin.q_out) annotation (Line(
    points={{60,-94},{22,-94},{22,-44},{-72,-44}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
end Inhibin;