within Physiomodel.Electrolytes.Sodium.test;
model Sodium
    Physiolibrary.Chemical.Components.Substance NaPool(useNormalizedVolume=
    false, solute_start=(2170.0)/1000)
    annotation (Placement(transformation(extent={{-82,14},{-62,34}})));
    Modelica.Blocks.Interfaces.RealInput ECFV_Vol(final quantity="Volume",
    final displayUnit="ml") "Extracellular fluid volume"
    annotation (Placement(transformation(extent={{-98,28},{-90,36}}),
    iconTransformation(extent={{-100,70},{-88,82}})));
    Physiolibrary.Chemical.Components.Substance GILumen(useNormalizedVolume=
    false, solute_start=(80.0)/1000)
    annotation (Placement(transformation(extent={{-82,-36},{-62,-16}})));
    Modelica.Blocks.Interfaces.RealInput GILumenVolume_Mass(final
    quantity=
    "Volume", final displayUnit="ml")
    annotation (Placement(transformation(extent={{-98,-22},{-90,-14}}),
    iconTransformation(extent={{-100,58},{-88,70}})));
    Physiolibrary.Chemical.Components.SolutePump Absorbtion(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{-58,-20},{-46,-32}})));
    Modelica.Blocks.Math.Gain Perm(k=0.0015)
    annotation (Placement(transformation(extent={{-62,-46},{-56,-40}})));
    Physiolibrary.Chemical.Sources.UnlimitedSolutePumpOut Hemorrhage(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{-58,64},{-38,84}})));
    Physiolibrary.Chemical.Sources.UnlimitedSolutePumpOut DialyzerActivity(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{-58,50},{-38,70}})));
    Physiolibrary.Chemical.Sources.UnlimitedSolutePumpOut SweatDuct(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{-58,78},{-38,98}})));
    Physiolibrary.Chemical.Sources.UnlimitedSolutePump IVDrip(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{-78,70},{-58,90}})));
    Physiolibrary.Chemical.Sources.UnlimitedSolutePump Transfusion(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{-78,56},{-58,76}})));
    Physiolibrary.Chemical.Components.Stream glomerulusSudiumRate(
    useSolutionFlowInput=true)
    annotation (Placement(transformation(extent={{-16,14},{4,34}})));
    Modelica.Blocks.Interfaces.RealInput GlomerulusFiltrate_GFR(final
    quantity="VolumeFlowRate", final displayUnit="ml/min")
    annotation (Placement(transformation(extent={{-16,30},{-8,38}}),
    iconTransformation(extent={{-100,-16},{-88,-4}})));
    Physiomodel.Electrolytes.Sodium.GlomerulusCationFiltration glomerulus
    annotation (Placement(transformation(extent={{-40,14},{-20,34}})));
    Modelica.Blocks.Interfaces.RealInput KPool(final quantity=
    "Concentration", final displayUnit="mEq/l")
    annotation (Placement(transformation(extent={{-48,32},{-40,40}}),
    iconTransformation(extent={{-100,94},{-88,106}})));
    Modelica.Blocks.Interfaces.RealInput BloodIons_ProteinAnions(final
    quantity="Concentration", final displayUnit="mEq/l")
    annotation (Placement(transformation(extent={{-48,40},{-40,48}}),
    iconTransformation(extent={{-100,82},{-88,94}})));
    Physiolibrary.Chemical.Components.Reabsorption PT(
    useBaseReabsorption=true,
    useEffect=true,
    useMaxReabInput=true)
    annotation (Placement(transformation(extent={{8,14},{28,34}})));
    Physiolibrary.Types.Constants.FractionConst const1(k=0.58)
    annotation (Placement(transformation(extent={{2,30},{8,36}})));
    Physiolibrary.Factors.NonlinearSystemPatch.SplineValue3 IFPEffect( data=
    {{1.0,1.4,0},{4.0,1.0,-0.2},{7.0,0.3,0}})
    annotation (Placement(transformation(extent={{14,32},{34,52}})));
    Physiolibrary.Factors.NonlinearSystemPatch.SplineValue3 ANPEffect( data=
    {{0.0,1.2,0},{1.3,1.0,-0.2},{2.7,0.6,0}})
    annotation (Placement(transformation(extent={{14,40},{34,60}})));
    Physiolibrary.Factors.NonlinearSystemPatch.SplineValue3 SympsEffect(
    data={{0.6,0.6,0},{1.0,1.0,0.5},{4.0,1.5,0}})
    annotation (Placement(transformation(extent={{14,48},{34,68}})));
    Physiolibrary.Factors.NonlinearSystemPatch.SplineValue3 A2Effect( data=
    {{0.7,0.8,0},{1.3,1.0,0.8},{1.6,1.2,0}})
    annotation (Placement(transformation(extent={{14,56},{34,76}})));
    Modelica.Blocks.Interfaces.RealInput NephronIFP_Pressure(final
    quantity=
    "Pressure", final displayUnit="mmHg")
    annotation (Placement(transformation(extent={{-4,38},{4,46}}),
    iconTransformation(extent={{-100,-28},{-88,-16}})));
    Modelica.Blocks.Interfaces.RealInput NephronANP_Log10Conc(final displayUnit=
    "log10(pMol/L)")
    annotation (Placement(transformation(extent={{-4,46},{4,54}}),
    iconTransformation(extent={{-100,-64},{-88,-52}})));
    Modelica.Blocks.Interfaces.RealInput KidneyAlpha_PT_NA(final displayUnit="Hz")
    annotation (Placement(transformation(extent={{-4,54},{4,62}}),
    iconTransformation(extent={{-100,-40},{-88,-28}})));
    Modelica.Blocks.Interfaces.RealInput A2Pool_Log10Con(final displayUnit=
    "log10(pG/mL)")
    annotation (Placement(transformation(extent={{-4,62},{4,70}}),
    iconTransformation(extent={{-100,-52},{-88,-40}})));
    Modelica.Blocks.Interfaces.RealInput KidneyFunctionEffect(final displayUnit=
    "1")
    annotation (Placement(transformation(extent={{12,80},{20,88}}),
    iconTransformation(extent={{-100,8},{-88,20}})));
    Physiolibrary.Chemical.Components.Reabsorption LH(
    MaxReab=7,
    useBaseReabsorption=true,
    useEffect=true,
    useMaxReabInput=true)
    annotation (Placement(transformation(extent={{68,14},{88,34}})));
    Physiolibrary.Types.Constants.FractionConst const2(k=0.75)
    annotation (Placement(transformation(extent={{64,30},{70,36}})));
    Physiolibrary.Chemical.Components.Reabsorption DT(
    useBaseReabsorption=true,
    useEffect=true,
    useMaxReabInput=true)
    annotation (Placement(transformation(extent={{80,-74},{60,-54}})));
    Physiolibrary.Chemical.Components.Reabsorption CD(
    MaxReab=0.7,
    useBaseReabsorption=true,
    useEffect=true,
    useMaxReabInput=true)
    annotation (Placement(transformation(extent={{30,-74},{10,-54}})));
    Physiolibrary.Types.Constants.FractionConst const3(k=0.75)
    annotation (Placement(transformation(extent={{18,-58},{24,-52}})));
    Physiolibrary.Types.Constants.FractionConst const4(k=0.75)
    annotation (Placement(transformation(extent={{68,-58},{74,-52}})));
    Physiolibrary.Chemical.Components.Substance Bladder(useNormalizedVolume=
    false, solute_start=(0)/1000)
    annotation (Placement(transformation(extent={{-28,-34},{-8,-14}})));
    Modelica.Blocks.Interfaces.RealInput BladderVolume_Mass(final
    quantity=
    "Volume", final displayUnit="ml")
    annotation (Placement(transformation(extent={{-12,-10},{-20,-2}}),
    iconTransformation(extent={{-100,46},{-88,58}})));
    Physiolibrary.Factors.NonlinearSystemPatch.SplineValue2 Furosemide(
    data={{0.0,1.0,-1},{0.1,0.0,0}})
    annotation (Placement(transformation(extent={{64,62},{84,82}})));
    Physiolibrary.Factors.NonlinearSystemPatch.SplineValue2 AldoEffect(
    data={{0.0,0.7,0},{10.0,1.0,0}})
    annotation (Placement(transformation(extent={{76,40},{96,60}})));
    Modelica.Blocks.Interfaces.RealInput
    KidneyNephronCount_Filtering_xNormal(final displayUnit="1")
    annotation (Placement(transformation(extent={{50,60},{58,68}}),
    iconTransformation(extent={{-100,-4},{-88,8}})));
    Modelica.Blocks.Interfaces.RealInput FurosemidePool_Furosemide_conc(
    final quantity="Concentration", final displayUnit="ug/ml")
    annotation (Placement(transformation(extent={{50,68},{58,76}}),
    iconTransformation(extent={{-100,-88},{-88,-76}})));
    Modelica.Blocks.Interfaces.RealInput NephronAldo_conc_in_nG_per_dL(
    final quantity="Concentration", final displayUnit="ng/dl")
    annotation (Placement(transformation(extent={{56,46},{64,54}}),
    iconTransformation(extent={{-100,-76},{-88,-64}})));
    Physiolibrary.Factors.NonlinearSystemPatch.SplineValue3 LoadEffect(
    data={{0.0,3.0,0},{7.2,1.0,-0.2},{20.0,0.5,0}})
    annotation (Placement(transformation(extent={{76,32},{96,52}})));
    Physiolibrary.Blocks.Factors.Normalization FurosemideEffect
    annotation (Placement(transformation(extent={{76,48},{96,68}})));
    Physiolibrary.Blocks.Factors.Normalization Filtering_xNormal
    annotation (Placement(transformation(extent={{64,54},{84,74}})));
    Physiolibrary.Chemical.Sensors.MolarFlowMeasure flowMeasure
    annotation (Placement(transformation(extent={{50,14},{70,34}})));
    Physiolibrary.Chemical.Sensors.MolarFlowMeasure flowMeasure1
    annotation (Placement(transformation(extent={{98,-74},{78,-54}})));
    Physiolibrary.Factors.NonlinearSystemPatch.SplineValue2 LoadEffect1(
    data={{0.0,2.0,0},{1.6,1.0,0}})
    annotation (Placement(transformation(extent={{72,-56},{52,-36}})));
    Physiolibrary.Factors.NonlinearSystemPatch.SplineValue2
    ThiazideEffect(data={{0.0,1.0,-2.0},{0.6,0.2,0.0}})
    annotation (Placement(transformation(extent={{72,-40},{52,-20}})));
    Modelica.Blocks.Interfaces.RealInput ThiazidePool_Thiazide_conc(final
    quantity="Concentration", final displayUnit="ug/ml")
    annotation (Placement(transformation(extent={{92,-34},{84,-26}}),
    iconTransformation(extent={{-100,-100},{-88,-88}})));
    Physiolibrary.Chemical.Sensors.MolarFlowMeasure flowMeasure2
    annotation (Placement(transformation(extent={{58,-74},{38,-54}})));
    Physiolibrary.Factors.NonlinearSystemPatch.SplineValue2 LoadEffect2(
    data={{0.0,2.0,0},{0.4,1.0,0}})
    annotation (Placement(transformation(extent={{22,-58},{2,-38}})));
    Physiolibrary.Factors.NonlinearSystemPatch.SplineValue3 ANPEffect2(
    data={{0.0,1.2,0},{1.3,1.0,-0.4},{2.7,0.2,0}})
    annotation (Placement(transformation(extent={{22,-50},{2,-30}})));
    Modelica.Blocks.Interfaces.RealInput IVDrip_NaRate(final quantity="VolumeFlowRate", final displayUnit="mEq/min")
    annotation (Placement(transformation(extent={{-82,82},{-74,90}}),
    iconTransformation(
    extent={{-6,-6},{6,6}},
    rotation=270,
    origin={-40,98})));
    Modelica.Blocks.Interfaces.RealInput Transfusion_NaRate(final
    quantity="VolumeFlowRate", final displayUnit="mEq/min")
    annotation (Placement(transformation(extent={{-82,66},{-74,74}}),
    iconTransformation(
    extent={{-6,-6},{6,6}},
    rotation=270,
    origin={-28,98})));
    Modelica.Blocks.Interfaces.RealInput SweatDuct_NaRate(final quantity="VolumeFlowRate", final displayUnit="mEq/min")
    annotation (Placement(transformation(extent={{-36,90},{-42,96}}),
    iconTransformation(
    extent={{-6,-6},{6,6}},
    rotation=270,
    origin={-16,98})));
    Modelica.Blocks.Interfaces.RealInput Hemorrhage_NaRate(final quantity="VolumeFlowRate", final displayUnit="mEq/min")
    annotation (Placement(transformation(extent={{-36,76},{-42,82}}),
    iconTransformation(
    extent={{-6,-6},{6,6}},
    rotation=270,
    origin={-4,98})));
    Physiolibrary.Blocks.Factors.Normalization AldoEffect2 annotation (
    Placement(transformation(
    extent={{10,-10},{-10,10}},
    rotation=270,
    origin={84,-78})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant const5(k=2)
    annotation (Placement(transformation(extent={{94,-80},{90,-76}})));
    Modelica.Blocks.Interfaces.RealInput DialyzerActivity_Na_Flux(final
    quantity="VolumeFlowRate", final displayUnit="mEq/min")
    annotation (Placement(transformation(extent={{-36,62},{-42,68}}),
    iconTransformation(
    extent={{-6,-6},{6,6}},
    rotation=270,
    origin={8,98})));
    Physiolibrary.Chemical.Sources.UnlimitedSolutePump Diet(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{-100,-42},{-80,-22}})));
    Modelica.Blocks.Interfaces.RealInput DietIntakeElectrolytes_Na(final
    quantity="VolumeFlowRate", final displayUnit="mEq/min")
    annotation (Placement(transformation(extent={{-100,-30},{-92,-22}}),
    iconTransformation(
    extent={{-6,-6},{6,6}},
    rotation=270,
    origin={20,98})));
    Physiolibrary.Chemical.Sources.UnlimitedSolutePumpOut Diarrhea(
    useSoluteFlowInput=true) annotation (Placement(transformation(
    extent={{-10,-10},{10,10}},
    rotation=180,
    origin={-90,-44})));
    Modelica.Blocks.Interfaces.RealInput GILumenDiarrhea_NaLoss(final
    quantity="VolumeFlowRate", final displayUnit="mEq/min")
    annotation (Placement(transformation(extent={{3,-3},{-3,3}},
    rotation=180,
    origin={-93,-51}),
    iconTransformation(
    extent={{-6,-6},{6,6}},
    rotation=270,
    origin={32,98})));
    Modelica.Blocks.Interfaces.RealOutput PT_FractReab
                          annotation (Placement(transformation(extent={{28,16},
    {36,24}}),         iconTransformation(extent={{100,60},{120,
    80}})));
    Modelica.Blocks.Interfaces.RealOutput LH_FractReab
                          annotation (Placement(transformation(extent={{88,6},{
    96,14}}),          iconTransformation(extent={{100,40},{120,
    60}})));
    Modelica.Blocks.Interfaces.RealOutput DT_Outflow
                          annotation (Placement(transformation(extent={{-4,-4},
    {4,4}},
    rotation=180,
    origin={46,-54}),      iconTransformation(extent={{100,20},{120,
    40}})));
    Modelica.Blocks.Interfaces.RealOutput CD_Outflow
                          annotation (Placement(transformation(extent={{-4,-4},
    {4,4}},
    rotation=180,
    origin={-4,-72}),      iconTransformation(extent={{100,0},{120,20}})));
    Modelica.Blocks.Interfaces.RealOutput Medulla_Conc
                          annotation (Placement(transformation(extent={{54,-96},
    {62,-88}}),        iconTransformation(extent={{100,-20},{120,
    0}})));
    Physiolibrary.Chemical.Sensors.MolarFlowMeasure flowMeasure3
    annotation (Placement(transformation(extent={{10,-54},{-10,-74}})));
    Physiolibrary.Chemical.Components.Substance Medulla(useNormalizedVolume=
    false, solute_start=(13)/1000)
    annotation (Placement(transformation(extent={{28,-102},{48,-82}})));
    Physiolibrary.Chemical.Sensors.ConcentrationMeasure
    concentrationMeasure annotation (Placement(transformation(
    extent={{-10,-10},{10,10}},
    rotation=270,
    origin={46,-92})));
    Physiolibrary.Chemical.Components.Stream VasaRectaOutflow(
    useSolutionFlowInput=true)
    annotation (Placement(transformation(extent={{-4,-100},{-20,-84}})));
    Modelica.Blocks.Interfaces.RealInput VasaRecta_Outflow(final quantity="VolumeFlowRate", final displayUnit="ml/min")
    annotation (Placement(transformation(extent={{-46,-88},{-38,-80}}),
    iconTransformation(
    extent={{-6,-6},{6,6}},
    origin={-94,26})));
    Modelica.Blocks.Math.Gain gain(k=0.03)
    annotation (Placement(transformation(extent={{-28,-88},{-20,-80}})));
    Modelica.Blocks.Interfaces.RealInput Medulla_Volume(final quantity=
    "Volume", final displayUnit="ml")
    annotation (Placement(transformation(extent={{8,-88},{16,-80}}),
    iconTransformation(
    extent={{-6,-6},{6,6}},
    origin={-94,40})));
    Modelica.Blocks.Interfaces.RealOutput NaPool_mass
                          annotation (Placement(transformation(extent={{-68,2},
    {-60,10}}),        iconTransformation(extent={{100,100},{120,
    120}})));
    Modelica.Blocks.Interfaces.RealOutput NaPool_conc_per_liter
                          annotation (Placement(transformation(extent={{-64,-8},
    {-56,0}}),         iconTransformation(extent={{100,80},{120,
    100}})));
    Physiolibrary.Chemical.Sensors.ConcentrationMeasure
    concentrationMeasure1 annotation (Placement(transformation(
    extent={{-10,-10},{10,10}},
    rotation=270,
    origin={-80,-4})));
    Modelica.Blocks.Math.Gain gain1(k=1000)
    annotation (Placement(transformation(extent={{-70,-6},{-66,-2}})));
    Physiolibrary.Chemical.Components.Clearance bladderVoid(
    useSolutionFlowInput=true)
    annotation (Placement(transformation(extent={{12,-22},{24,-10}})));
    Modelica.Blocks.Interfaces.RealInput BladderVoidFlow(final quantity="VolumeFlowRate", final displayUnit="ml/min")
    annotation (Placement(transformation(extent={{4,-10},{12,-2}}),
    iconTransformation(
    extent={{-6,-6},{6,6}},
    origin={-94,-106})));
    Modelica.Blocks.Interfaces.RealOutput GILumenSodium_Mass
                          annotation (Placement(transformation(extent={{-64,-60},
    {-56,-52}}),       iconTransformation(extent={{100,-40},{120,
    -20}})));
    Physiolibrary.Blocks.Factors.Normalization AldosteroneEffect
    annotation (Placement(transformation(extent={{72,-48},{52,-28}})));
    Physiolibrary.Blocks.Interpolation.NonlinearSystemPatch.Curve3
    DT_AldoEffect(
    x={0,12,50},
    y={0.5,1,3},
    slope={0,0.08,0})
    annotation (Placement(transformation(extent={{60,-22},{80,-2}})));
    Modelica.Blocks.Interfaces.RealOutput DT_AldosteroneEffect
                          annotation (Placement(transformation(
    extent={{90,-16},{98,-8}}), iconTransformation(extent={{100,-60},
    {120,-40}})));
    Modelica.Blocks.Interfaces.RealOutput DT_Na_Reab
                          annotation (Placement(transformation(
    extent={{60,-86},{68,-78}}), iconTransformation(extent={{100,-80},
    {120,-60}})));
    Physiolibrary.Chemical.Sensors.MolarFlowMeasure flowMeasure4
    annotation (Placement(transformation(extent={{64,-68},{44,-88}})));
    Modelica.Blocks.Interfaces.RealOutput LH_Na_Reab
                          annotation (Placement(transformation(
    extent={{76,-2},{84,6}}), iconTransformation(extent={{100,-100},
    {120,-80}})));
    Physiolibrary.Chemical.Sensors.MolarFlowMeasure flowMeasure5
    annotation (Placement(transformation(extent={{80,16},{60,-4}})));
    Physiolibrary.Chemical.Sensors.MolarFlowMeasure flowMeasure6
    annotation (Placement(transformation(
    extent={{10,10},{-10,-10}},
    rotation=90,
    origin={18,12})));
    Modelica.Blocks.Interfaces.RealOutput PT_Na_Reab
                          annotation (Placement(transformation(
    extent={{24,8},{32,16}}), iconTransformation(extent={{100,-120},
    {120,-100}})));
equation
    connect(NaPool.solutionVolume, ECFV_Vol) annotation (Line(
    points={{-80,30},{-87,30},{-87,32},{-94,32}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(GILumen.solutionVolume, GILumenVolume_Mass) annotation (Line(
    points={{-80,-20},{-87,-20},{-87,-18},{-94,-18}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(GILumen.q_out, Absorbtion.q_in) annotation (Line(
    points={{-72,-26},{-65,-26},{-65,-26},{-58,-26}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));
    connect(Absorbtion.q_out, NaPool.q_out) annotation (Line(
    points={{-46,-26},{-44,-26},{-44,24},{-72,24}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));
    connect(Hemorrhage.q_in, NaPool.q_out) annotation (Line(
    points={{-54,74},{-58,74},{-58,24},{-72,24}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));
    connect(DialyzerActivity.q_in, NaPool.q_out) annotation (Line(
    points={{-54,60},{-58,60},{-58,24},{-72,24}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));
    connect(NaPool.q_out, SweatDuct.q_in) annotation (Line(
    points={{-72,24},{-58,24},{-58,88},{-54,88}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));
    connect(Transfusion.q_out, NaPool.q_out) annotation (Line(
    points={{-62,66},{-58,66},{-58,24},{-72,24}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));
    connect(IVDrip.q_out, NaPool.q_out) annotation (Line(
    points={{-62,80},{-58,80},{-58,24},{-72,24}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));
    connect(glomerulusSudiumRate.solutionFlow, GlomerulusFiltrate_GFR)
    annotation (Line(
    points={{-6,30},{-6,34},{-12,34}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(glomerulus.q_in, NaPool.q_out) annotation (Line(
    points={{-40,24},{-72,24}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));
    connect(glomerulus.q_out, glomerulusSudiumRate.q_in) annotation (Line(
    points={{-20,24},{-16,24}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));
    connect(glomerulusSudiumRate.q_out, PT.Inflow) annotation (Line(
    points={{4,24},{8,24}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));
    connect(const1.y, PT.baseReabsorption) annotation (Line(
    points={{8.3,33},{12,33},{12,28}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(A2Effect.yBase, KidneyFunctionEffect) annotation (Line(
    points={{24,68},{24,84},{16,84}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(A2Effect.y, SympsEffect.yBase) annotation (Line(
    points={{24,64},{24,60}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(SympsEffect.y, ANPEffect.yBase) annotation (Line(
    points={{24,56},{24,52}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(ANPEffect.y, IFPEffect.yBase) annotation (Line(
    points={{24,48},{24,44}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(IFPEffect.y, PT.Effect) annotation (Line(
    points={{24,40},{24,28},{26,28}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(A2Pool_Log10Con, A2Effect.u) annotation (Line(
    points={{0,66},{14.2,66}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(SympsEffect.u, KidneyAlpha_PT_NA) annotation (Line(
    points={{14.2,58},{0,58}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(NephronANP_Log10Conc, ANPEffect.u) annotation (Line(
    points={{0,50},{14.2,50}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(NephronIFP_Pressure, IFPEffect.u) annotation (Line(
    points={{0,42},{14.2,42}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(const2.y, LH.baseReabsorption) annotation (Line(
    points={{70.3,33},{72,33},{72,28}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(const3.y, CD.baseReabsorption) annotation (Line(
    points={{24.3,-55},{26,-55},{26,-60}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(const4.y, DT.baseReabsorption) annotation (Line(
    points={{74.3,-55},{76,-55},{76,-60}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Bladder.solutionVolume, BladderVolume_Mass) annotation (Line(
    points={{-26,-18},{-36,-18},{-36,-6},{-16,-6}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(NephronAldo_conc_in_nG_per_dL, AldoEffect.u)
                                   annotation (Line(
    points={{60,50},{76.2,50}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Furosemide.u, FurosemidePool_Furosemide_conc)
                                        annotation (Line(
    points={{64.2,72},{54,72}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(AldoEffect.y, LoadEffect.yBase) annotation (Line(
    points={{86,48},{86,44}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(LoadEffect.y, LH.Effect) annotation (Line(
    points={{86,40},{86,28}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(FurosemideEffect.y, AldoEffect.yBase) annotation (Line(
    points={{86,56},{86,52}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Filtering_xNormal.u, KidneyNephronCount_Filtering_xNormal)
    annotation (Line(
    points={{64.2,64},{54,64}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Filtering_xNormal.y, FurosemideEffect.u) annotation (Line(
    points={{74,62},{74,58},{76.2,58}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Furosemide.y, Filtering_xNormal.yBase) annotation (Line(
    points={{74,70},{74,66}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(KidneyFunctionEffect, Furosemide.yBase) annotation (Line(
    points={{16,84},{74,84},{74,74}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(FurosemideEffect.yBase, KidneyFunctionEffect) annotation (Line(
    points={{86,60},{86,84},{16,84}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(PT.Outflow, flowMeasure.q_in) annotation (Line(
    points={{28,24},{56,24}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));
    connect(flowMeasure.q_out, LH.Inflow) annotation (Line(
    points={{64,24},{68,24}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));
    connect(flowMeasure.molarFlowRate, LoadEffect.u) annotation (Line(
    points={{60,29},{60,42},{76.2,42}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(DT.Inflow, flowMeasure1.q_out) annotation (Line(
    points={{80,-64},{84,-64}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));
    connect(flowMeasure1.q_in, LH.Outflow) annotation (Line(
    points={{92,-64},{100,-64},{100,24},{88,24}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));
    connect(LoadEffect1.y, DT.Effect) annotation (Line(
    points={{62,-48},{62,-60}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(LoadEffect1.u, flowMeasure1.molarFlowRate) annotation (Line(
    points={{71.8,-46},{88,-46},{88,-59}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(DT_AldoEffect.u, NephronAldo_conc_in_nG_per_dL)
                                                    annotation (Line(
    points={{60,-12},{50,-12},{50,48},{66,48},{66,50},{60,50}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(ThiazideEffect.yBase, KidneyFunctionEffect) annotation (Line(
    points={{62,-28},{62,-26},{46,-26},{46,84},{16,84}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(ThiazideEffect.u, ThiazidePool_Thiazide_conc) annotation (Line(
    points={{71.8,-30},{88,-30}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(CD.Inflow, flowMeasure2.q_out) annotation (Line(
    points={{30,-64},{44,-64}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));
    connect(flowMeasure2.q_in, DT.Outflow) annotation (Line(
    points={{52,-64},{60,-64}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));
    connect(LoadEffect2.y, CD.Effect) annotation (Line(
    points={{12,-50},{12,-60}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(LoadEffect2.u, flowMeasure2.molarFlowRate) annotation (Line(
    points={{21.8,-48},{48,-48},{48,-59}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(ANPEffect2.y, LoadEffect2.yBase) annotation (Line(
    points={{12,-42},{12,-46}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(ANPEffect2.yBase, KidneyFunctionEffect) annotation (Line(
    points={{12,-38},{12,-26},{46,-26},{46,84},{16,84}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(ANPEffect2.u, NephronANP_Log10Conc) annotation (Line(
    points={{21.8,-40},{40,-40},{40,38},{6,38},{6,50},{0,50}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(IVDrip.soluteFlow, IVDrip_NaRate) annotation (Line(
    points={{-68,84},{-68,86},{-78,86}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Transfusion.soluteFlow, Transfusion_NaRate) annotation (Line(
    points={{-68,70},{-78,70}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(SweatDuct.soluteFlow, SweatDuct_NaRate) annotation (Line(
    points={{-48,92},{-48,93},{-39,93}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(const5.y, AldoEffect2.yBase) annotation (Line(
    points={{89.8,-78},{86,-78}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(AldoEffect2.y, DT.MaxReab) annotation (Line(
    points={{82,-78},{76,-78},{76,-68.2}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Hemorrhage_NaRate, Hemorrhage.soluteFlow) annotation (Line(
    points={{-39,79},{-47.5,79},{-47.5,78},{-48,78}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(DialyzerActivity.soluteFlow, DialyzerActivity_Na_Flux)
    annotation (Line(
    points={{-48,64},{-48,65},{-39,65}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(glomerulus.otherCations, KPool) annotation (Line(
    points={{-36,29},{-36,36},{-44,36}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(glomerulus.ProteinAnions, BloodIons_ProteinAnions) annotation (
    Line(
    points={{-32,29},{-32,44},{-44,44}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Diet.soluteFlow, DietIntakeElectrolytes_Na) annotation (Line(
    points={{-90,-28},{-94,-28},{-94,-26},{-96,-26}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Diet.q_out, GILumen.q_out) annotation (Line(
    points={{-84,-32},{-80,-32},{-80,-26},{-72,-26}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));
    connect(Diarrhea.soluteFlow, GILumenDiarrhea_NaLoss) annotation (Line(
    points={{-90,-48},{-90,-51},{-93,-51}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(GILumen.q_out, Diarrhea.q_in) annotation (Line(
    points={{-72,-26},{-80,-26},{-80,-44},{-84,-44}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));
    connect(GILumen.solute, Perm.u) annotation (Line(
    points={{-72,-33.8},{-72,-43},{-62.6,-43}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Perm.y, Absorbtion.soluteFlow) annotation (Line(
    points={{-55.7,-43},{-52,-43},{-52,-29.6}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(PT.ReabFract, PT_FractReab) annotation (Line(
    points={{28,20},{32,20}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(LH.ReabFract, LH_FractReab) annotation (Line(
    points={{88,20},{92,20},{92,10},{92,10}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(flowMeasure2.molarFlowRate, DT_Outflow) annotation (Line(
    points={{48,-59},{48,-54},{46,-54}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(CD.Outflow, flowMeasure3.q_in) annotation (Line(
    points={{10,-64},{4,-64}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));
    connect(flowMeasure3.q_out, Bladder.q_out) annotation (Line(
    points={{-4,-64},{-6,-64},{-6,-24},{-18,-24}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));
    connect(flowMeasure3.molarFlowRate, CD_Outflow) annotation (Line(
    points={{0,-69},{0,-72},{-4,-72}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(CD.Reabsorption, Medulla.q_out) annotation (Line(
    points={{20,-68},{20,-92},{38,-92}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));
    connect(Medulla.q_out, concentrationMeasure.q_in) annotation (Line(
    points={{38,-92},{46,-92}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));
    connect(concentrationMeasure.concentration, Medulla_Conc) annotation (
    Line(
    points={{50,-92},{58,-92}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Medulla.q_out, VasaRectaOutflow.q_in) annotation (Line(
    points={{38,-92},{-4,-92}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));
    connect(VasaRectaOutflow.q_out, NaPool.q_out) annotation (Line(
    points={{-20,-92},{-44,-92},{-44,24},{-72,24}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));
    connect(gain.y, VasaRectaOutflow.solutionFlow) annotation (Line(
    points={{-19.6,-84},{-12,-84},{-12,-87.2}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(VasaRecta_Outflow, gain.u) annotation (Line(
    points={{-42,-84},{-28.8,-84}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Medulla.solutionVolume, Medulla_Volume) annotation (Line(
    points={{30,-86},{21,-86},{21,-84},{12,-84}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(NaPool.solute, NaPool_mass) annotation (Line(
    points={{-72,16.2},{-72,6},{-64,6}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(concentrationMeasure1.concentration, gain1.u) annotation (Line(
    points={{-76,-4},{-73.2,-4},{-73.2,-4},{-70.4,-4}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(gain1.y, NaPool_conc_per_liter) annotation (Line(
    points={{-65.8,-4},{-60,-4}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(concentrationMeasure1.q_in, NaPool.q_out) annotation (Line(
    points={{-80,-4},{-80,24},{-72,24}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));
    connect(Bladder.q_out, bladderVoid.q_in) annotation (Line(
    points={{-18,-24},{-4,-24},{-4,-16},{12,-16}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(bladderVoid.solutionFlow, BladderVoidFlow) annotation (Line(
    points={{18,-12.4},{18,-6},{8,-6}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(GILumen.solute, GILumenSodium_Mass) annotation (Line(
    points={{-72,-33.8},{-72,-56},{-60,-56}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(AldosteroneEffect.y, LoadEffect1.yBase) annotation (Line(
    points={{62,-40},{62,-44}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(ThiazideEffect.y, AldosteroneEffect.yBase) annotation (Line(
    points={{62,-32},{62,-36}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(AldosteroneEffect.u, DT_AldoEffect.val) annotation (Line(
    points={{71.8,-38},{96,-38},{96,-12},{80.2,-12}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(DT_AldoEffect.val, AldoEffect2.u) annotation (Line(
    points={{80.2,-12},{96,-12},{96,-94},{84,-94},{84,-87.8}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(DT_AldoEffect.val, DT_AldosteroneEffect) annotation (Line(
    points={{80.2,-12},{94,-12}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(flowMeasure4.molarFlowRate, DT_Na_Reab) annotation (Line(
    points={{54,-83},{60,-83},{60,-82},{64,-82}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(DT.Reabsorption, flowMeasure4.q_in) annotation (Line(
    points={{70,-68},{70,-78},{58,-78}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(flowMeasure4.q_out, NaPool.q_out) annotation (Line(
    points={{50,-78},{-44,-78},{-44,24},{-72,24}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(flowMeasure5.molarFlowRate, LH_Na_Reab) annotation (Line(
    points={{70,1},{76,1},{76,2},{80,2}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(LH.Reabsorption, flowMeasure5.q_in) annotation (Line(
    points={{78,20},{78,6},{74,6}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(flowMeasure5.q_out, NaPool.q_out) annotation (Line(
    points={{66,6},{-44,6},{-44,24},{-72,24}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(flowMeasure6.molarFlowRate, PT_Na_Reab) annotation (Line(
    points={{23,12},{28,12}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(PT.Reabsorption, flowMeasure6.q_in) annotation (Line(
    points={{18,20},{18,16}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(flowMeasure6.q_out, NaPool.q_out) annotation (Line(
    points={{18,8},{18,6},{-44,6},{-44,24},{-72,24}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    annotation ( Icon(coordinateSystem(
      preserveAspectRatio=true, extent={{-100,-100},{100,100}}),
    graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName=
          "../Physiolibrary/icons/Na.jpg")}));
end Sodium;