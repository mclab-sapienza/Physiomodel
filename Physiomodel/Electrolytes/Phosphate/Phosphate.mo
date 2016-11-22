within Physiomodel.Electrolytes.Phosphate;
model Phosphate
    Physiolibrary.Chemical.Components.Substance PO4Pool(
    stateName="PO4Pool.Mass",
    useNormalizedVolume=false,
    solute_start=(2.23728)/1000)
    annotation (Placement(transformation(extent={{-64,14},{-44,34}})));
    Modelica.Blocks.Interfaces.RealInput ECFV_Vol(final quantity="Volume",
    final displayUnit="ml")
    annotation (Placement(transformation(extent={{-76,28},{-68,36}}),
    iconTransformation(extent={{-100,64},{-88,76}})));
    Physiolibrary.Chemical.Components.Substance Bladder(
    stateName="BladderPhosphate.Mass",
    useNormalizedVolume=false,
    solute_start=(0)/1000)
    annotation (Placement(transformation(extent={{50,14},{70,34}})));
    Modelica.Blocks.Interfaces.RealInput BladderVolume_Mass(final quantity=
    "Volume", final displayUnit="ml")
    annotation (Placement(transformation(extent={{36,28},{44,36}}),
    iconTransformation(extent={{-100,40},{-88,52}})));
    Physiolibrary.Chemical.Sources.UnlimitedSolutePump Diet(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{-84,-4},{-64,16}})));
    Modelica.Blocks.Interfaces.RealInput DietIntakeElectrolytes_PO4(final
    quantity="VolumeFlowRate", final displayUnit="mEq/min")
    annotation (Placement(transformation(extent={{-84,8},{-76,16}}),
    iconTransformation(
    extent={{-6,-6},{6,6}},
    rotation=270,
    origin={20,98})));
    Physiolibrary.Chemical.Components.Stream glomerulusPhosphateRate(
    useSolutionFlowInput=true)
    annotation (Placement(transformation(extent={{0,14},{20,34}})));
    Modelica.Blocks.Interfaces.RealInput GlomerulusFiltrate_GFR(
                                                       final
    quantity =                                                            "Flow", final unit = "ml/min")
    annotation (Placement(transformation(extent={{-4,30},{4,38}}),
    iconTransformation(extent={{-100,-16},{-88,-4}})));
    Modelica.Blocks.Interfaces.RealInput BloodIons_Cations(
                                            final quantity=
    "Concentration", final displayUnit="mEq/l")
    annotation (Placement(transformation(extent={{-34,32},{-26,40}}),
    iconTransformation(extent={{-100,88},{-88,100}})));
    GlomerulusStrongAnionFiltration glomerulus
    annotation (Placement(transformation(extent={{-28,14},{-8,34}})));
    Modelica.Blocks.Interfaces.RealInput BloodIons_StrongAnionsLessPO4(
                                                        final
    quantity="Concentration", final displayUnit="mEq/l")
    annotation (Placement(transformation(extent={{-34,40},{-26,48}}),
    iconTransformation(extent={{-100,76},{-88,88}})));
    Modelica.Blocks.Interfaces.RealInput CO2Veins_HCO3(
                                        final quantity="Concentration",
    final displayUnit="mEq/l")
    annotation (Placement(transformation(extent={{-34,48},{-26,56}}),
    iconTransformation(extent={{-100,28},{-88,40}})));
    Modelica.Blocks.Interfaces.RealOutput PO4Pool_Osmoles(
                                           final displayUnit="mOsm")
                            annotation (Placement(transformation(extent={{-38,-16},
      {-30,-8}}),        iconTransformation(extent={{100,80},{120,
      100}})));
    Modelica.Blocks.Interfaces.RealOutput PO4Pool_conc_per_liter(
                                                  final displayUnit="mEq/l")
                            annotation (Placement(transformation(extent={{-2,-2},
      {6,6}}),           iconTransformation(extent={{100,60},{120,
      80}})));
    Physiolibrary.Chemical.Sensors.ConcentrationMeasure concentrationMeasure
    annotation (Placement(transformation(
    extent={{-10,-10},{10,10}},
    rotation=270,
    origin={-28,2})));
    Modelica.Blocks.Math.Gain gain(k=1000)
    annotation (Placement(transformation(extent={{-18,0},{-14,4}})));
    Physiolibrary.Chemical.Sensors.MolarFlowMeasure flowMeasure
    annotation (Placement(transformation(extent={{20,34},{40,14}})));
    Modelica.Blocks.Interfaces.RealOutput CD_PO4_Outflow(
                                          final displayUnit="mEq/min")
    "renal phosphate excretion rate"
                            annotation (Placement(transformation(extent={{34,10},
      {42,18}}),         iconTransformation(extent={{100,40},{120,
      60}})));
    Modelica.Blocks.Math.Gain gain1(k=0.5)
    annotation (Placement(transformation(extent={{-50,-14},{-46,-10}})));
    Physiolibrary.Chemical.Components.Clearance bladderVoid(
    useSolutionFlowInput=true)
    annotation (Placement(transformation(extent={{66,-20},{78,-8}})));
    Modelica.Blocks.Interfaces.RealInput BladderVoidFlow(
                                          final quantity="VolumeFlowRate",
    final displayUnit="ml/min")
    annotation (Placement(transformation(extent={{58,-8},{66,0}}),
    iconTransformation(
    extent={{-6,-6},{6,6}},
    origin={-94,-106})));
    Modelica.Blocks.Interfaces.RealOutput ctPO4(
                                 final displayUnit="mmol/l")
                            annotation (Placement(transformation(extent={{-60,64},
      {-52,72}}),        iconTransformation(extent={{100,80},{120,
      100}})));
    Physiolibrary.Chemical.Sensors.ConcentrationMeasure concentrationMeasure1(
    toAnotherUnitCoef=1000, unitsString="mmol/l") annotation (Placement(
    transformation(
    extent={{-10,-10},{10,10}},
    origin={-60,60})));
equation
    connect(PO4Pool.solutionVolume, ECFV_Vol) annotation (Line(
    points={{-58,28},{-67,28},{-67,32},{-72,32}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Bladder.solutionVolume, BladderVolume_Mass) annotation (Line(
    points={{56,28},{46,28},{46,32},{40,32}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Diet.soluteFlow, DietIntakeElectrolytes_PO4) annotation (Line(
    points={{-70,10},{-70,12},{-80,12}},
    color={0,0,127},
    smooth=Smooth.None));

    connect(Diet.q_out, PO4Pool.q_out) annotation (Line(
    points={{-64,6},{-60,6},{-60,24},{-54,24}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));
    connect(glomerulusPhosphateRate.solutionFlow, GlomerulusFiltrate_GFR)
    annotation (Line(
    points={{10,28},{10,34},{0,34}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(glomerulus.q_out, glomerulusPhosphateRate.q_in)
                                                 annotation (Line(
    points={{-8,24},{0,24}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));
    connect(PO4Pool.q_out, glomerulus.q_in) annotation (Line(
    points={{-54,24},{-28,24}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));
    connect(glomerulus.HCO3, CO2Veins_HCO3)  annotation (Line(
    points={{-16,29},{-16,52},{-30,52}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(concentrationMeasure.concentration, gain.u) annotation (Line(
    points={{-24,2},{-21.2,2},{-21.2,2},{-18.4,2}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(gain.y, PO4Pool_conc_per_liter) annotation (Line(
    points={{-13.8,2},{2,2}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(concentrationMeasure.q_in, PO4Pool.q_out) annotation (Line(
    points={{-30,2},{-34,2},{-34,24},{-54,24}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));
    connect(flowMeasure.molarFlowRate, CD_PO4_Outflow) annotation (Line(
    points={{30,30},{30,14},{38,14}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(flowMeasure.q_out, Bladder.q_out) annotation (Line(
    points={{40,24},{60,24}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));
    connect(glomerulusPhosphateRate.q_out, flowMeasure.q_in) annotation (
    Line(
    points={{20,24},{20,24}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));
    connect(BloodIons_StrongAnionsLessPO4, glomerulus.otherStrongAnions)
    annotation (Line(
    points={{-30,44},{-20,44},{-20,29}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(BloodIons_Cations, glomerulus.Cations) annotation (Line(
    points={{-30,36},{-24,36},{-24,29}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(PO4Pool.solute, gain1.u) annotation (Line(
    points={{-54,14},{-54,-12},{-50.4,-12}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(gain1.y, PO4Pool_Osmoles) annotation (Line(
    points={{-45.8,-12},{-34,-12}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Bladder.q_out, bladderVoid.q_in) annotation (Line(
    points={{60,24},{50,24},{50,-14},{66,-14}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(bladderVoid.solutionFlow, BladderVoidFlow) annotation (Line(
    points={{72,-11.6},{72,-4},{62,-4}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(concentrationMeasure1.concentration, ctPO4) annotation (Line(
    points={{-60,64},{-60,68},{-56,68}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(concentrationMeasure1.q_in, PO4Pool.q_out) annotation (Line(
    points={{-60,58},{-54,58},{-54,24}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
end Phosphate;