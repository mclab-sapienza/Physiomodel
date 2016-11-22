within Physiomodel.Electrolytes.Potassium.test;
model Potassium
    Physiolibrary.Chemical.Components.Substance KPool(useNormalizedVolume=
    false, solute_start=(66.0)/1000)
    annotation (Placement(transformation(extent={{-34,14},{-14,34}})));
    Modelica.Blocks.Interfaces.RealInput ECFV_Vol(final quantity="Volume",
    final displayUnit="ml")
    annotation (Placement(transformation(extent={{-46,28},{-38,36}}),
    iconTransformation(extent={{-100,52},{-88,64}})));
    Physiolibrary.Chemical.Components.Substance GILumen(useNormalizedVolume=
    false, solute_start=(25)/1000)
    annotation (Placement(transformation(extent={{-18,-36},{2,-16}})));
    Modelica.Blocks.Interfaces.RealInput GILumenVolume_Mass(final
    quantity=
    "Volume", final displayUnit="ml")
    annotation (Placement(transformation(extent={{-34,-22},{-26,-14}}),
    iconTransformation(extent={{-100,40},{-88,52}})));
    Physiolibrary.Chemical.Components.SolutePump Absorbtion(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{6,-20},{18,-32}})));
    Modelica.Blocks.Math.Gain Perm(k=0.002)
    annotation (Placement(transformation(extent={{0,-48},{6,-42}})));
    Physiolibrary.Chemical.Sources.UnlimitedSolutePumpOut Hemorrhage(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{20,-86},{40,-66}})));
    Physiolibrary.Chemical.Sources.UnlimitedSolutePumpOut DialyzerActivity(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{20,-100},{40,-80}})));
    Physiolibrary.Chemical.Sources.UnlimitedSolutePumpOut SweatDuct(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{20,-72},{40,-52}})));
    Physiolibrary.Chemical.Sources.UnlimitedSolutePump IVDrip(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{0,-80},{20,-60}})));
    Physiolibrary.Chemical.Sources.UnlimitedSolutePump Transfusion(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{0,-94},{20,-74}})));
    Physiolibrary.Chemical.Components.Substance Bladder(useNormalizedVolume=
    false, solute_start=(0)/1000)
    annotation (Placement(transformation(extent={{78,14},{98,34}})));
    Modelica.Blocks.Interfaces.RealInput BladderVolume_Mass(final
    quantity=
    "Volume", final displayUnit="ml")
    annotation (Placement(transformation(extent={{64,28},{72,36}}),
    iconTransformation(extent={{-100,28},{-88,40}})));
    Physiolibrary.Factors.NonlinearSystemPatch.SplineValue3 NaEffect( data=
    {{0.0,0.3,0},{0.4,1.0,1.5},{4.0,3.0,0}})
    annotation (Placement(transformation(extent={{44,30},{24,50}})));
    Physiolibrary.Factors.NonlinearSystemPatch.SplineValue3 AldoEffect1(
    data={{0.0,0.5,0},{12.0,1.0,0.08},{50.0,3.0,0}})
    annotation (Placement(transformation(extent={{44,38},{24,58}})));
    Physiolibrary.Factors.NonlinearSystemPatch.SplineValue2
    ThiazideEffect(
    data={{0.0,1.0,2.0},{0.6,2.0,0}})
    annotation (Placement(transformation(extent={{44,46},{24,66}})));
    Modelica.Blocks.Interfaces.RealInput ThiazidePool_Thiazide_conc(final
    quantity="Concentration", final displayUnit="ug/ml")
    annotation (Placement(transformation(extent={{64,52},{56,60}}),
    iconTransformation(extent={{-100,-20},{-88,-8}})));
    Modelica.Blocks.Interfaces.RealInput IVDrip_KRate(final quantity="VolumeFlowRate",
    final displayUnit="mEq/min")
    annotation (Placement(transformation(extent={{-4,-68},{4,-60}}),
    iconTransformation(
    extent={{-6,-6},{6,6}},
    rotation=270,
    origin={-40,98})));
    Modelica.Blocks.Interfaces.RealInput Transfusion_KRate(final quantity="VolumeFlowRate", final displayUnit="mEq/min")
    annotation (Placement(transformation(extent={{-4,-84},{4,-76}}),
    iconTransformation(
    extent={{-6,-6},{6,6}},
    rotation=270,
    origin={-28,98})));
    Modelica.Blocks.Interfaces.RealInput SweatDuct_KRate(final quantity="VolumeFlowRate", final displayUnit="mEq/min")
    annotation (Placement(transformation(extent={{42,-60},{36,-54}}),
    iconTransformation(
    extent={{-6,-6},{6,6}},
    rotation=270,
    origin={-16,98})));
    Modelica.Blocks.Interfaces.RealInput Hemorrhage_KRate(final quantity="VolumeFlowRate", final displayUnit="mEq/min")
    annotation (Placement(transformation(extent={{42,-74},{36,-68}}),
    iconTransformation(
    extent={{-6,-6},{6,6}},
    rotation=270,
    origin={-4,98})));
    Modelica.Blocks.Interfaces.RealInput DialyzerActivity_K_Flux(final
    quantity="VolumeFlowRate", final displayUnit="mEq/min")
    annotation (Placement(transformation(extent={{42,-88},{36,-82}}),
    iconTransformation(
    extent={{-6,-6},{6,6}},
    rotation=270,
    origin={8,98})));
    Physiolibrary.Chemical.Sources.UnlimitedSolutePump Diet(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{-36,-42},{-16,-22}})));
    Modelica.Blocks.Interfaces.RealInput DietIntakeElectrolytes_K(final
    quantity="VolumeFlowRate", final displayUnit="mEq/min")
    annotation (Placement(transformation(extent={{-36,-30},{-28,-22}}),
    iconTransformation(
    extent={{-6,-6},{6,6}},
    rotation=270,
    origin={20,98})));
    Physiolibrary.Chemical.Sources.UnlimitedSolutePumpOut Diarrhea(
    useSoluteFlowInput=true) annotation (Placement(transformation(
    extent={{-10,-10},{10,10}},
    rotation=180,
    origin={-26,-44})));
    Modelica.Blocks.Interfaces.RealInput GILumenDiarrhea_KLoss(final
    quantity="VolumeFlowRate", final displayUnit="mEq/min")
    annotation (Placement(transformation(extent={{3,-3},{-3,3}},
    rotation=180,
    origin={-29,-51}),
    iconTransformation(
    extent={{-6,-6},{6,6}},
    rotation=270,
    origin={32,98})));
    Physiolibrary.Chemical.Components.Substance KCell(useNormalizedVolume=
    false, solute_start=(3980)/1000)
    annotation (Placement(transformation(extent={{-30,70},{-10,90}})));
    Modelica.Blocks.Interfaces.RealInput CellH2O_Vol(final quantity=
    "Volume", final displayUnit="ml")
    annotation (Placement(transformation(extent={{-50,82},{-42,90}}),
    iconTransformation(extent={{-100,64},{-88,76}})));
    Physiolibrary.Chemical.Components.SolutePump KFluxToCell(
    useSoluteFlowInput=true)                             annotation (
    Placement(transformation(
    extent={{-6,-6},{6,6}},
    rotation=90,
    origin={-30,58})));
    Modelica.Blocks.Math.Gain Perm1(k=0.002)
    annotation (Placement(transformation(extent={{-3,-3},{3,3}},
    rotation=90,
    origin={-55,53})));
    Physiolibrary.Chemical.Components.SolutePump KFluxToPool(
    useSoluteFlowInput=true)                             annotation (
    Placement(transformation(
    extent={{-6,-6},{6,6}},
    rotation=270,
    origin={-12,48})));
    Modelica.Blocks.Interfaces.RealInput AldoPool_Aldo(final quantity=
    "Concentration", final displayUnit="pmol/l")
    annotation (Placement(transformation(extent={{-60,68},{-52,76}}),
    iconTransformation(extent={{-100,16},{-88,28}})));
    Modelica.Blocks.Math.Feedback feedback
    annotation (Placement(transformation(extent={{-10,62},{-2,54}})));
    Physiolibrary.Types.Constants.ElectricChargeConst KCell_CaptiveMass(k=
    210338.040982)
    annotation (Placement(transformation(extent={{10,78},{-2,66}})));
    Modelica.Blocks.Math.Gain Perm2(k=7.4e-5)
    annotation (Placement(transformation(extent={{-3,-3},{3,3}},
    rotation=270,
    origin={3,53})));
    Modelica.Blocks.Interfaces.RealInput NephronAldo_conc_in_nG_per_dL(
                                                                final
    quantity =                                                                  "Concentration", final unit = "ng/dl")
    annotation (Placement(transformation(extent={{-4,-4},{4,4}},
    rotation=180,
    origin={60,48}),
    iconTransformation(extent={{-100,-8},{-88,4}})));
    Modelica.Blocks.Interfaces.RealInput DT_Na_Outflow(final quantity="VolumeFlowRate", final displayUnit="mEq/min")
    annotation (Placement(transformation(extent={{62,36},{56,42}}),
    iconTransformation(
    extent={{-6,-6},{6,6}},
    origin={-94,10})));
    Physiolibrary.Types.Constants.ElectricCurrentConst
    electrolytesFlowConstant(k=0.08040444991666501)
    annotation (Placement(transformation(extent={{18,76},{30,88}})));
    Physiolibrary.Chemical.Components.SolutePump DT_K(useSoluteFlowInput=
    true)                                       annotation (Placement(
    transformation(
    extent={{-6,-6},{6,6}},
    origin={34,22})));
    Physiolibrary.Factors.NonlinearSystemPatch.SplineValue3 KEffect( data={
    {0.0,0.0,0},{4.4,1.0,0.5},{5.5,3.0,0}})
    annotation (Placement(transformation(extent={{24,22},{44,42}})));
    Modelica.Blocks.Math.Gain mEq_per_L(k=1000)
    annotation (Placement(transformation(extent={{-3,-3},{3,3}},
    origin={15,31})));
    Modelica.Blocks.Math.Division division
    annotation (Placement(transformation(extent={{-18,6},{-14,10}})));
    Physiolibrary.Blocks.Factors.Normalization KidneyFunction
    annotation (Placement(transformation(extent={{44,54},{24,74}})));
    Modelica.Blocks.Interfaces.RealInput KidneyFunctionEffect(final
    quantity="Effect", final displayUnit="1")
    annotation (Placement(transformation(extent={{64,60},{56,68}}),
    iconTransformation(extent={{-100,76},{-88,88}})));
    Modelica.Blocks.Interfaces.RealOutput CD_Outflow
                              annotation (Placement(transformation(extent={{-4,-4},
        {4,4}},
    origin={62,26}),       iconTransformation(extent={{100,0},{120,20}})));
    Modelica.Blocks.Interfaces.RealOutput KCell_Mass
                              annotation (Placement(transformation(extent={{-4,-4},
        {4,4}},
    origin={-18,68}),      iconTransformation(extent={{100,20},{120,
        40}})));
    Modelica.Blocks.Interfaces.RealOutput KPool_mass
                              annotation (Placement(transformation(extent={{-16,-6},
        {-8,2}}),          iconTransformation(extent={{100,80},{120,
        100}})));
    Modelica.Blocks.Interfaces.RealOutput KPool_conc_per_liter
                              annotation (Placement(transformation(extent={{46,2},{
        54,10}}),          iconTransformation(extent={{100,60},{120,
        80}})));
    Physiolibrary.Chemical.Sensors.ConcentrationMeasure
    concentrationMeasure annotation (Placement(transformation(
    extent={{-10,-10},{10,10}},
    rotation=270,
    origin={30,6})));
    Modelica.Blocks.Math.Gain gain(k=1000)
    annotation (Placement(transformation(extent={{40,4},{44,8}})));
    Physiolibrary.Factors.NonlinearSystemPatch.Spline3DelayByDay
    splineDelayByDay(Tau=120/1440, data={{0,0.9,0.0},{300,1.0,0.00025},{
    1500,1.1,0.0}})                               annotation (
    Placement(transformation(
    extent={{10,-10},{-10,10}},
    rotation=90,
    origin={-48,58})));
    Physiolibrary.Chemical.Components.Clearance bladderVoid(
    useSolutionFlowInput=true)
    annotation (Placement(transformation(extent={{82,-20},{94,-8}})));
    Modelica.Blocks.Interfaces.RealInput BladderVoidFlow(
                                            final quantity="VolumeFlowRate",
    final displayUnit="ml/min")
    annotation (Placement(transformation(extent={{74,-8},{82,0}}),
    iconTransformation(
    extent={{-6,-6},{6,6}},
    origin={-94,-106})));
    Modelica.Blocks.Interfaces.RealOutput GILumenPotasium_Mass
                              annotation (Placement(transformation(extent={{4,-60},
        {12,-52}}),        iconTransformation(extent={{100,-40},{120,
        -20}})));
    Physiolibrary.Chemical.Sensors.ConcentrationMeasure
    concentrationMeasure1(toAnotherUnitCoef=1000, unitsString="mEq/l")
    annotation (Placement(transformation(
    extent={{-10,-10},{10,10}},
    origin={-8,80})));
    Modelica.Blocks.Interfaces.RealOutput KCell_conc
                              annotation (Placement(transformation(extent={{-8,84},
        {0,92}}),          iconTransformation(extent={{100,40},{120,
        60}})));
    Physiolibrary.Chemical.Sensors.MolarFlowMeasure flowMeasure annotation (
    Placement(transformation(
    extent={{-8,8},{8,-8}},
    rotation=90,
    origin={-24,34})));
    Modelica.Blocks.Interfaces.RealOutput PotassiumToCells(
                                              displayUnit="mEq/min")
                              annotation (Placement(transformation(
      extent={{-20,30},{-12,38}}), iconTransformation(extent={{100,
        -80},{120,-60}})));
    Physiolibrary.Chemical.Components.SolutePump KFluxToCellWithGlucose(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(
    extent={{-6,-6},{6,6}},
    rotation=90,
    origin={-70,50})));
    Modelica.Blocks.Math.Gain CGL3(k=0.03)
    "glucose flow into cells to potassium flow into cells"
    annotation (Placement(transformation(extent={{-4,-4},{4,4}},
    origin={-82,50})));
    Modelica.Blocks.Interfaces.RealInput GlucoseToCellsFlow(final
    quantity="VolumeFlowRate", final displayUnit="mmol/min")
    annotation (Placement(transformation(extent={{-102,46},{-94,54}}),
    iconTransformation(extent={{-100,88},{-88,100}})));
    IkedaPotasiumIntoICFFactor IkedaIntoICF annotation (Placement(
    transformation(
    extent={{-10,-10},{10,10}},
    rotation=90,
    origin={-40,58})));
    Modelica.Blocks.Interfaces.RealInput Artys_pH
    annotation (Placement(transformation(extent={{-56,38},{-48,46}}),
    iconTransformation(extent={{-100,-32},{-88,-20}})));
    Physiolibrary.Chemical.Sensors.ConcentrationMeasure
    concentrationMeasure2(toAnotherUnitCoef=1000, unitsString="mEq/l")
    annotation (Placement(transformation(
    extent={{-10,-10},{10,10}},
    origin={-48,24})));
    Modelica.Blocks.Interfaces.RealOutput KPool_per_liter(
                                             displayUnit="mEq/l")
                              annotation (Placement(transformation(extent={{-70,26},
        {-78,34}}),        iconTransformation(extent={{100,-60},{120,
    -40}})));
equation
    connect(KPool.solutionVolume, ECFV_Vol) annotation (Line(
    points={{-32,30},{-37,30},{-37,32},{-42,32}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(GILumen.solutionVolume, GILumenVolume_Mass) annotation (Line(
    points={{-16,-20},{-23,-20},{-23,-18},{-30,-18}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(GILumen.q_out, Absorbtion.q_in) annotation (Line(
      points={{-8,-26},{-1,-26},{-1,-26},{6,-26}},
      color={200,0,0},
      smooth=Smooth.None,
      thickness=1));
    connect(Absorbtion.q_out, KPool.q_out)  annotation (Line(
      points={{18,-26},{22,-26},{22,24},{-24,24}},
      color={200,0,0},
      smooth=Smooth.None,
      thickness=1));
    connect(Hemorrhage.q_in, KPool.q_out)  annotation (Line(
      points={{24,-76},{22,-76},{22,24},{-24,24}},
      color={200,0,0},
      smooth=Smooth.None,
      thickness=1));
    connect(DialyzerActivity.q_in, KPool.q_out)  annotation (Line(
      points={{24,-90},{22,-90},{22,24},{-24,24}},
      color={200,0,0},
      smooth=Smooth.None,
      thickness=1));
    connect(KPool.q_out, SweatDuct.q_in)  annotation (Line(
      points={{-24,24},{22,24},{22,-62},{24,-62}},
      color={200,0,0},
      smooth=Smooth.None,
      thickness=1));
    connect(Transfusion.q_out, KPool.q_out)  annotation (Line(
      points={{16,-84},{22,-84},{22,24},{-24,24}},
      color={200,0,0},
      smooth=Smooth.None,
      thickness=1));
    connect(IVDrip.q_out, KPool.q_out)  annotation (Line(
      points={{16,-70},{22,-70},{22,24},{-24,24}},
      color={200,0,0},
      smooth=Smooth.None,
      thickness=1));
    connect(Bladder.solutionVolume, BladderVolume_Mass) annotation (Line(
    points={{80,30},{74,30},{74,32},{68,32}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(AldoEffect1.y, NaEffect.yBase)    annotation (Line(
      points={{34,46},{34,42}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(ThiazideEffect.y, AldoEffect1.yBase) annotation (Line(
      points={{34,54},{34,50}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(ThiazideEffect.u, ThiazidePool_Thiazide_conc) annotation (Line(
      points={{43.8,56},{60,56}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(IVDrip.soluteFlow, IVDrip_KRate) annotation (Line(
    points={{10,-66},{10,-64},{0,-64}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Transfusion.soluteFlow, Transfusion_KRate) annotation (Line(
    points={{10,-80},{0,-80}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(SweatDuct.soluteFlow, SweatDuct_KRate) annotation (Line(
    points={{30,-58},{30,-57},{39,-57}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Hemorrhage_KRate, Hemorrhage.soluteFlow) annotation (Line(
    points={{39,-71},{30.5,-71},{30.5,-72},{30,-72}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(DialyzerActivity.soluteFlow, DialyzerActivity_K_Flux)
    annotation (Line(
    points={{30,-86},{30,-85},{39,-85}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Diet.soluteFlow, DietIntakeElectrolytes_K) annotation (Line(
    points={{-26,-28},{-26,-26},{-32,-26}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Diet.q_out, GILumen.q_out) annotation (Line(
      points={{-20,-32},{-16,-32},{-16,-26},{-8,-26}},
      color={200,0,0},
      smooth=Smooth.None,
      thickness=1));
    connect(Diarrhea.soluteFlow, GILumenDiarrhea_KLoss) annotation (Line(
    points={{-26,-48},{-26,-51},{-29,-51}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(GILumen.q_out, Diarrhea.q_in) annotation (Line(
      points={{-8,-26},{-16,-26},{-16,-44},{-20,-44}},
      color={200,0,0},
      smooth=Smooth.None,
      thickness=1));
    connect(KCell.solutionVolume, CellH2O_Vol) annotation (Line(
    points={{-28,86},{-46,86}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Perm.y, Absorbtion.soluteFlow) annotation (Line(
      points={{6.3,-45},{12,-45},{12,-29.6}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(Perm.u, GILumen.solute) annotation (Line(
    points={{-0.6,-45},{-8,-45},{-8,-33.8}},
    color={0,0,127},
    smooth=Smooth.None));

    connect(KFluxToCell.q_out, KCell.q_out) annotation (Line(
      points={{-30,64},{-30,80},{-20,80}},
      color={200,0,0},
      smooth=Smooth.None,
      thickness=1));
    connect(KCell.q_out, KFluxToPool.q_in) annotation (Line(
      points={{-20,80},{-12,80},{-12,54}},
      color={200,0,0},
      smooth=Smooth.None,
      thickness=1));
    connect(KPool.solute, Perm1.u) annotation (Line(
    points={{-24,16.2},{-24,10},{-55,10},{-55,49.4}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(KCell.solute, feedback.u1) annotation (Line(
    points={{-20,72.2},{-20,58},{-9.2,58}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(KCell_CaptiveMass.y, feedback.u2) annotation (Line(
      points={{-2.6,72},{-6,72},{-6,61.2}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(feedback.y, Perm2.u) annotation (Line(
      points={{-2.4,58},{3.3,58},{3.3,56.6},{3,56.6}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(KFluxToPool.soluteFlow, Perm2.y) annotation (Line(
      points={{-8.4,48},{3,48},{3,49.7}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(AldoEffect1.u, NephronAldo_conc_in_nG_per_dL) annotation (Line(
      points={{43.8,48},{60,48}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(NaEffect.u, DT_Na_Outflow) annotation (Line(
      points={{43.8,40},{51.4,40},{51.4,39},{59,39}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(KPool.q_out, DT_K.q_in) annotation (Line(
      points={{-24,24},{22,24},{22,22},{28,22}},
      color={200,0,0},
      smooth=Smooth.None,
      thickness=1));
    connect(NaEffect.y, KEffect.yBase) annotation (Line(
      points={{34,38},{34,34}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(KEffect.y, DT_K.soluteFlow) annotation (Line(
      points={{34,30},{34,25.6}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(mEq_per_L.y, KEffect.u) annotation (Line(
      points={{18.3,31},{21.15,31},{21.15,32},{24.2,32}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(division.u1, KPool.solute) annotation (Line(
    points={{-18.4,9.2},{-24,9.2},{-24,16.2}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(ECFV_Vol, division.u2) annotation (Line(
      points={{-42,32},{-38,32},{-38,6.8},{-18.4,6.8}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(division.y, mEq_per_L.u) annotation (Line(
      points={{-13.8,8},{-8,8},{-8,31},{11.4,31}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(electrolytesFlowConstant.y, KidneyFunction.yBase) annotation (
      Line(
      points={{30.6,82},{34,82},{34,66}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(KidneyFunction.y, ThiazideEffect.yBase) annotation (Line(
      points={{34,62},{34,58}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(KidneyFunction.u, KidneyFunctionEffect) annotation (Line(
      points={{43.8,64},{60,64}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(DT_K.q_out, Bladder.q_out) annotation (Line(
      points={{40,22},{64,22},{64,24},{88,24}},
      color={200,0,0},
      smooth=Smooth.None,
      thickness=1));
    connect(KEffect.y, CD_Outflow) annotation (Line(
      points={{34,30},{34,26},{62,26}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(KCell_Mass, KCell.solute) annotation (Line(
    points={{-18,68},{-20,68},{-20,72.2}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(KPool.solute, KPool_mass) annotation (Line(
    points={{-24,16.2},{-24,-2},{-12,-2}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(concentrationMeasure.q_in, KPool.q_out) annotation (Line(
      points={{30,6},{22,6},{22,24},{-24,24}},
      color={200,0,0},
      smooth=Smooth.None,
      thickness=1));
    connect(concentrationMeasure.concentration, gain.u) annotation (Line(
    points={{34,6},{36.8,6},{36.8,6},{39.6,6}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(gain.y, KPool_conc_per_liter) annotation (Line(
      points={{44.2,6},{50,6}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(Perm1.y, splineDelayByDay.yBase) annotation (Line(
      points={{-55,56.3},{-55,58},{-50,58}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(splineDelayByDay.u, AldoPool_Aldo) annotation (Line(
      points={{-48,67.8},{-48,72},{-56,72}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(Bladder.q_out, bladderVoid.q_in) annotation (Line(
      points={{88,24},{66,24},{66,-14},{82,-14}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(bladderVoid.solutionFlow, BladderVoidFlow) annotation (Line(
    points={{88,-10.4},{88,-4},{78,-4}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(GILumen.solute, GILumenPotasium_Mass) annotation (Line(
    points={{-8,-33.8},{-8,-56},{8,-56}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(KCell.q_out, concentrationMeasure1.q_in) annotation (Line(
      points={{-20,80},{-8,80}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(concentrationMeasure1.concentration, KCell_conc) annotation (
    Line(
    points={{-8,84},{-8,88},{-4,88}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(KPool.q_out, flowMeasure.q_in) annotation (Line(
      points={{-24,24},{-24,30.8}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(flowMeasure.q_out, KFluxToPool.q_out) annotation (Line(
      points={{-24,37.2},{-24,38},{-12,38},{-12,42}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(flowMeasure.q_out, KFluxToCell.q_in) annotation (Line(
      points={{-24,37.2},{-24,38},{-30,38},{-30,52}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(flowMeasure.molarFlowRate, PotassiumToCells) annotation (Line(
    points={{-20,34},{-16,34}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(flowMeasure.q_out, KFluxToCellWithGlucose.q_in) annotation (
      Line(
      points={{-24,37.2},{-24,38},{-70,38},{-70,44}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(KFluxToCellWithGlucose.q_out, KCell.q_out) annotation (Line(
      points={{-70,56},{-70,80},{-20,80}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(CGL3.y, KFluxToCellWithGlucose.soluteFlow) annotation (Line(
      points={{-77.6,50},{-73.6,50}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(GlucoseToCellsFlow, CGL3.u) annotation (Line(
      points={{-98,50},{-86.8,50}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(IkedaIntoICF.y, KFluxToCell.soluteFlow) annotation (Line(
      points={{-34.8,58},{-33.6,58}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(splineDelayByDay.y, IkedaIntoICF.yBase) annotation (Line(
      points={{-46,58},{-45,58}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(IkedaIntoICF.Artys_pH, Artys_pH) annotation (Line(
      points={{-43,48},{-43,42},{-52,42}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(concentrationMeasure2.q_in, KPool.q_out) annotation (Line(
      points={{-48,24},{-24,24}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(concentrationMeasure2.concentration, IkedaIntoICF.PotasiumECF_conc)
    annotation (Line(
    points={{-48,28},{-48,40},{-37,40},{-37,48}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(concentrationMeasure2.concentration, KPool_per_liter)
    annotation (Line(
    points={{-48,28},{-48,30},{-74,30}},
    color={0,0,127},
    smooth=Smooth.None));
    annotation ( Icon(coordinateSystem(
          preserveAspectRatio=true, extent={{-100,-100},{100,100}}),
        graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName=
              "../Physiolibrary/icons/K.jpg")}));
end Potassium;