within Physiomodel.Electrolytes.Sulphate;

model Sulphate

    Modelica.Blocks.Interfaces.RealInput ECFV_Vol(final quantity="Volume",
    final displayUnit="ml")
    annotation (Placement(transformation(extent={{-76,28},{-68,36}}),
      iconTransformation(extent={{-100,64},{-88,76}})));
    Modelica.Blocks.Interfaces.RealInput BladderVolume_Mass(final quantity=
      "Volume", final displayUnit="ml")
    annotation (Placement(transformation(extent={{36,28},{44,36}}),
      iconTransformation(extent={{-100,40},{-88,52}})));
    Modelica.Blocks.Interfaces.RealInput DietIntakeElectrolytes_SO4(final
    quantity="VolumeFlowRate", final displayUnit="mEq/min")
    annotation (Placement(transformation(extent={{-84,8},{-76,16}}),
      iconTransformation(
      extent={{-6,-6},{6,6}},
      rotation=270,
      origin={20,98})));
    Modelica.Blocks.Interfaces.RealInput GlomerulusFiltrate_GFR(
                                                           final
    quantity =                                                            "Flow", final unit = "ml/min")
    annotation (Placement(transformation(extent={{-4,30},{4,38}}),
      iconTransformation(extent={{-100,-16},{-88,-4}})));
    Modelica.Blocks.Interfaces.RealInput BloodIons_Cations(
                                                final quantity=
      "Concentration", final displayUnit="mEq/l")
    annotation (Placement(transformation(extent={{-36,32},{-28,40}}),
      iconTransformation(extent={{-100,88},{-88,100}})));
    Modelica.Blocks.Interfaces.RealInput BloodIons_StrongAnionsLessSO4(
                                                            final
    quantity="Concentration", final displayUnit="mEq/l")
    annotation (Placement(transformation(extent={{-36,40},{-28,48}}),
      iconTransformation(extent={{-100,76},{-88,88}})));
    Modelica.Blocks.Interfaces.RealInput CO2Veins_HCO3(
                                            final quantity="Concentration",
    final displayUnit="mEq/l")
    annotation (Placement(transformation(extent={{-36,48},{-28,56}}),
      iconTransformation(extent={{-100,28},{-88,40}})));
    Modelica.Blocks.Interfaces.RealOutput SO4Pool_Osmoles(
                                               final displayUnit="mOsm")
                                annotation (Placement(transformation(extent={{-42,-8},
          {-34,0}}),         iconTransformation(extent={{100,80},{120,100}})));
    Modelica.Blocks.Interfaces.RealOutput SO4Pool_conc_per_liter(
                                                      final displayUnit="mEq/l")
                                annotation (Placement(transformation(extent={{-2,0},{
          6,8}}),            iconTransformation(extent={{100,60},{120,80}})));
    Modelica.Blocks.Interfaces.RealOutput CD_SO4_Outflow(
                                              final displayUnit="mEq/min")
                                annotation (Placement(transformation(extent={{32,10},
          {40,18}}),         iconTransformation(extent={{100,40},{120,60}})));
    Modelica.Blocks.Interfaces.RealInput BladderVoidFlow(
                                              final quantity="VolumeFlowRate",
    final displayUnit="ml/min")
    annotation (Placement(transformation(extent={{58,-6},{66,2}}),
      iconTransformation(
      extent={{-6,-6},{6,6}},
      origin={-94,-106})));

    Physiolibrary.Chemical.Components.Substance SO4Pool(
    stateName="SO4Pool.Mass",
    useNormalizedVolume=false,
    solute_start=(3.72875)/1000)
    annotation (Placement(transformation(extent={{-64,14},{-44,34}})));
    Physiolibrary.Chemical.Components.Substance Bladder(
    stateName="BladderSulphate.Mass",
    useNormalizedVolume=false,
    solute_start=(0)/1000)
    annotation (Placement(transformation(extent={{50,14},{70,34}})));
    Physiolibrary.Chemical.Sources.UnlimitedSolutePump Diet(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{-84,-4},{-64,16}})));
    Physiolibrary.Chemical.Components.Stream glomerulusPhosphateRate(
    useSolutionFlowInput=true)
    annotation (Placement(transformation(extent={{-2,14},{18,34}})));
    GlomerulusStrongAnionFiltration glomerulus
    annotation (Placement(transformation(extent={{-28,14},{-8,34}})));
    Physiolibrary.Chemical.Sensors.ConcentrationMeasure concentrationMeasure
    annotation (Placement(transformation(
    extent={{-10,-10},{10,10}},
    rotation=270,
    origin={-18,4})));
    Modelica.Blocks.Math.Gain gain(k=1000)
    annotation (Placement(transformation(extent={{-8,2},{-4,6}})));
    Physiolibrary.Chemical.Sensors.MolarFlowMeasure flowMeasure
    annotation (Placement(transformation(extent={{18,34},{38,14}})));
    Modelica.Blocks.Math.Gain gain1(k=0.5)
    annotation (Placement(transformation(extent={{-52,-6},{-48,-2}})));
    Physiolibrary.Chemical.Components.Clearance bladderVoid(
    useSolutionFlowInput=true)
    annotation (Placement(transformation(extent={{66,-18},{78,-6}})));
equation
    connect(SO4Pool.solutionVolume, ECFV_Vol) annotation (Line(
    points={{-58,28},{-67,28},{-67,32},{-72,32}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Bladder.solutionVolume, BladderVolume_Mass) annotation (Line(
    points={{56,28},{46,28},{46,32},{40,32}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Diet.soluteFlow, DietIntakeElectrolytes_SO4) annotation (Line(
    points={{-70,10},{-70,12},{-80,12}},
    color={0,0,127},
    smooth=Smooth.None));

    connect(Diet.q_out,SO4Pool. q_out) annotation (Line(
    points={{-64,6},{-60,6},{-60,24},{-54,24}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));
    connect(glomerulusPhosphateRate.solutionFlow, GlomerulusFiltrate_GFR)
    annotation (Line(
    points={{8,28},{8,34},{0,34}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(glomerulus.q_out, glomerulusPhosphateRate.q_in)
                                                     annotation (Line(
    points={{-8,24},{-2,24}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));
    connect(SO4Pool.q_out, glomerulus.q_in) annotation (Line(
    points={{-54,24},{-28,24}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));
    connect(glomerulus.HCO3, CO2Veins_HCO3)  annotation (Line(
    points={{-16,29},{-16,52},{-32,52}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(concentrationMeasure.concentration, gain.u) annotation (Line(
    points={{-14,4},{-11.2,4},{-11.2,4},{-8.4,4}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(gain.y, SO4Pool_conc_per_liter) annotation (Line(
    points={{-3.8,4},{2,4}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(concentrationMeasure.q_in, SO4Pool.q_out) annotation (Line(
    points={{-20,4},{-36,4},{-36,24},{-54,24}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));
    connect(flowMeasure.molarFlowRate, CD_SO4_Outflow) annotation (Line(
    points={{28,30},{28,14},{36,14}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(flowMeasure.q_out, Bladder.q_out) annotation (Line(
    points={{38,24},{60,24}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));
    connect(glomerulusPhosphateRate.q_out, flowMeasure.q_in) annotation (
    Line(
    points={{18,24},{18,24}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));
    connect(BloodIons_StrongAnionsLessSO4, glomerulus.otherStrongAnions)
    annotation (Line(
    points={{-32,44},{-20,44},{-20,29}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(BloodIons_Cations, glomerulus.Cations) annotation (Line(
    points={{-32,36},{-24,36},{-24,29}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(gain1.y, SO4Pool_Osmoles) annotation (Line(
    points={{-47.8,-4},{-38,-4}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(gain1.u, SO4Pool.solute) annotation (Line(
    points={{-52.4,-4},{-54,-4},{-54,14}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Bladder.q_out, bladderVoid.q_in) annotation (Line(
    points={{60,24},{50,24},{50,-12},{66,-12}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(bladderVoid.solutionFlow, BladderVoidFlow) annotation (Line(
    points={{72,-9.6},{72,-2},{62,-2}},
    color={0,0,127},
    smooth=Smooth.None));
end Sulphate;