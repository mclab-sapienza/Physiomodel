within Physiomodel.Gases.O2.Tissues;
model TissueO2Base

    Physiolibrary.Chemical.Interfaces.ChemicalPort_a arty annotation (
    Placement(transformation(extent={{-82,-6},{-62,14}}),
      iconTransformation(extent={{80,0},{120,40}})));
    Physiolibrary.Chemical.Interfaces.ChemicalPort_b vein annotation (
    Placement(transformation(extent={{62,-6},{82,14}}),
      iconTransformation(extent={{-120,0},{-80,40}})));

    parameter Physiolibrary.Types.AmountOfSubstance initialMass;
    Physiolibrary.Types.RealIO.ConcentrationInput ctHb
    "concentration of haemoglobin"                        annotation (Placement(transformation(extent={{72,-20},
            {64,-12}}),           iconTransformation(extent={{-100,-30},{-80,-10}})));
    Physiolibrary.Types.RealIO.ConcentrationInput cDPG
    "outgoing concentration of DPG" annotation (Placement(transformation(extent={{62,-16},
            {54,-8}}),            iconTransformation(extent={{-100,90},{-80,110}})));
    Physiolibrary.Types.RealIO.VolumeFlowRateInput BloodFlow
    "blood flow through tissue"      annotation (Placement(transformation(extent={{-50,-4},
            {-42,4}}),            iconTransformation(extent={{-10,-10},{10,10}},
        rotation=180,
        origin={90,-100})));

    Physiolibrary.Types.RealIO.TemperatureInput T "outgoing temperature"
                                                         annotation (Placement(transformation(extent={{-38,-12},
            {-30,-4}}),           iconTransformation(extent={{-10,-10},{10,10}},
        rotation=180,
        origin={90,-60})));
    Physiolibrary.Types.RealIO.PressureInput pCO
    "outgoing partial pressure of CO"
                                   annotation (Placement(transformation(extent={{38,-4},
            {30,4}}),             iconTransformation(
        extent={{-10,-10},{10,10}},
        origin={-90,60})));
    Physiolibrary.Types.RealIO.FractionInput FHbF
    "Foetal haemoglobin fraction"    annotation (Placement(transformation(extent={{46,-8},
            {38,0}}),             iconTransformation(
        extent={{-10,-10},{10,10}},
        origin={-90,-60})));
    Physiolibrary.Types.RealIO.FractionInput FMetHb
    "methaemoglobin fraction"                             annotation (Placement(transformation(extent={{56,-12},
            {48,-4}}),            iconTransformation(extent={{-10,-10},{10,10}},
        rotation=180,
        origin={90,60})));

    Physiolibrary.Types.RealIO.MolarFlowRateInput
                                       Tissue_O2Use
                                   annotation (Placement(transformation(extent={{-82,-64},
            {-74,-56}}),          iconTransformation(
        extent={{-10,-10},{10,10}},
        rotation=180,
        origin={90,-20})));
    Physiolibrary.Types.RealIO.pHInput pH_plasma
    "outgoing veins pH of plasma"                          annotation (Placement(transformation(extent={{-60,-20},
            {-52,-12}}),          iconTransformation(extent={{-10,-10},{10,10}},
        rotation=180,
        origin={90,100})));
    BloodO2_Siggaard O2Tissue
    annotation (Placement(transformation(extent={{-18,4},{2,-16}})));
    Physiolibrary.Chemical.Sources.UnlimitedSolutePumpOut
                                              Metabolism_O2Use(
      useSoluteFlowInput=true) annotation (Placement(transformation(
      extent={{-10,10},{10,-10}},
      rotation=270,
      origin={-8,-84})));
    Physiolibrary.Types.RealIO.FractionOutput sO2
                                           annotation (Placement(
        transformation(extent={{8,14},{14,20}}),     iconTransformation(
          extent={{-10,-10},{10,10}},
        rotation=270,
        origin={0,-110})));
    Physiolibrary.Types.RealIO.PressureInput pCO2
    "outgoing veins CO2 partial pressure"                  annotation (Placement(transformation(extent={{-46,-16},
            {-38,-8}}),           iconTransformation(extent={{-10,-10},{10,10}},
        origin={-90,-100})));
    Physiolibrary.Types.RealIO.PressureOutput pO2       annotation (Placement(
        transformation(extent={{10,8},{18,16}}),     iconTransformation(
          extent={{-10,-10},{10,10}},
        rotation=270,
        origin={-20,-110})));

    //  Real O2Use_ml_per_min;
    // Real O2Use_mmol_per_min;
equation
    //  O2Use_mmol_per_min = fromMLtoMMOL.q_MMOL.q;
    //  O2Use_ml_per_min = -fromMLtoMMOL.q_ML.q;

    connect(O2Tissue.sO2, sO2)          annotation (Line(
    points={{-8,6},{-8,17},{11,17}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(pH_plasma, O2Tissue.pH)
                       annotation (Line(
    points={{-56,-16},{-17,-16}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(T, O2Tissue.T) annotation (Line(
    points={{-34,-8},{-17,-8}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(O2Tissue.pCO2, pCO2) annotation (Line(
    points={{-17,-12},{-42,-12}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(BloodFlow, O2Tissue.BloodFlow) annotation (Line(
    points={{-46,0},{-32,0},{-32,-2.6},{-18,-2.6}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(O2Tissue.ctHb, ctHb) annotation (Line(
    points={{1,-16},{68,-16}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(O2Tissue.cDPG, cDPG) annotation (Line(
    points={{1,-12},{58,-12}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(FMetHb, O2Tissue.FMetHb) annotation (Line(
    points={{52,-8},{1,-8}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(FHbF, O2Tissue.FHbF) annotation (Line(
    points={{42,-4},{1,-4}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(O2Tissue.pCO, pCO) annotation (Line(
    points={{1,0},{34,0}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(arty, O2Tissue.q_in) annotation (Line(
    points={{-72,4},{-44,4},{-44,3},{-17,3}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(O2Tissue.q_out, vein) annotation (Line(
    points={{1,3},{36,3},{36,4},{72,4}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(O2Tissue.pO2, pO2) annotation (Line(
    points={{-4,6},{-4,12},{14,12}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Tissue_O2Use, Metabolism_O2Use.soluteFlow) annotation (Line(
    points={{-78,-60},{-46,-60},{-46,-88},{-12,-88}},
    color={0,0,127},
    smooth=Smooth.None));
    annotation ( Icon(coordinateSystem(
      preserveAspectRatio=true, extent={{-100,-100},{100,100}}),
    graphics={
    Text(
      extent={{-80,-80},{80,-100}},
      lineColor={127,0,0},
      fillPattern=FillPattern.Solid,
      textString="(init %initialMass mEq)"),
    Text(
      extent={{28,94},{76,34}},
      lineColor={0,0,0},
      textString="O"),
    Text(
      extent={{62,34},{82,62}},
      lineColor={0,0,0},
      textString="2"),
    Rectangle(extent={{-100,100},{100,-100}}, lineColor={0,0,0})}));
end TissueO2Base;