within Physiomodel.Electrolytes.Sodium.test;
model Sodium2
    Physiolibrary.Chemical.Components.Substance NaPool(
    stateName="NaPool.Mass",
    useNormalizedVolume=false,
    solute_start=(2058.45)/1000)
    annotation (Placement(transformation(extent={{-86,14},{-66,34}})));
    Physiolibrary.Chemical.Components.Substance GILumen(
    stateName="GILumenSodium.Mass",
    useNormalizedVolume=false,
    solute_start=(80)/1000)
    annotation (Placement(transformation(extent={{-60,-46},{-40,-26}})));
    Physiolibrary.Chemical.Components.SolutePump Absorbtion(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{-44,-10},{-56,-22}})));
    Modelica.Blocks.Math.Gain Perm(k=0.0015)
    annotation (Placement(transformation(extent={{-40,-56},{-34,-50}})));
    Physiolibrary.Chemical.Sources.UnlimitedSolutePumpOut Hemorrhage(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{-58,64},{-38,84}})));
    Physiolibrary.Chemical.Sources.UnlimitedSolutePumpOut DialyzerActivity(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{-58,50},{-38,70}})));
    Physiolibrary.Chemical.Sources.UnlimitedSolutePump IVDrip(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{-78,70},{-58,90}})));
    Physiolibrary.Chemical.Sources.UnlimitedSolutePump Transfusion(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{-78,56},{-58,76}})));
    Physiolibrary.Molar.SolventFlowPump_InitialPatch
    glomerulusSudiumRate
    annotation (Placement(transformation(extent={{-16,14},{4,34}})));
    Physiomodel.Electrolytes.Sodium.GlomerulusCationFiltration glomerulus
    annotation (Placement(transformation(extent={{-40,14},{-20,34}})));
    Physiolibrary.Chemical.Components.Reabsorption PT(
    useBaseReabsorption=true,
    useEffect=true,
    useMaxReabInput=true)
    annotation (Placement(transformation(extent={{8,14},{28,34}})));
    Physiolibrary.Types.Constants.FractionConst const1(k=0.58)
    annotation (Placement(transformation(extent={{2,34},{8,40}})));
    Physiolibrary.Blocks.Factors.Spline IFPEffect(data={{1.0,1.4,0},{4.0,
      1.0,-0.2},{7.0,0.3,0}})
    annotation (Placement(transformation(extent={{14,32},{34,52}})));
    Physiolibrary.Blocks.Factors.Spline ANPEffect(data={{0.0,1.2,0},{1.3,
      1.0,-0.2},{2.7,0.6,0}})
    annotation (Placement(transformation(extent={{14,40},{34,60}})));
    Physiolibrary.Blocks.Factors.Spline SympsEffect(data={{0.6,0.6,0},{1.0,
      1.0,0.5},{4.0,1.5,0}})
    annotation (Placement(transformation(extent={{14,48},{34,68}})));
    Physiolibrary.Blocks.Factors.Spline A2Effect(data={{0.7,0.8,0},{1.3,1.0,
      0.8},{1.6,1.2,0}})
    annotation (Placement(transformation(extent={{14,56},{34,76}})));
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
    Physiolibrary.Chemical.Components.Substance Bladder(
    stateName="BladderSodium.Mass",
    STEADY=false,
    useNormalizedVolume=false,
    solute_start=(0)/1000)
    annotation (Placement(transformation(extent={{-28,-26},{-8,-6}})));
    Physiolibrary.Blocks.Factors.Spline Furosemide(data={{0.0,1.0,-1},{0.1,
      0.0,0}})
    annotation (Placement(transformation(extent={{64,62},{84,82}})));
    Physiolibrary.Blocks.Factors.Spline AldoEffect(data={{0.0,0.7,0},{10.0,
      1.0,0}})
    annotation (Placement(transformation(extent={{76,40},{96,60}})));
    Physiolibrary.Blocks.Factors.Spline LoadEffect(data={{0.0,3.0,0},{7.2,
      1.0,-0.2},{20.0,0.5,0}})
    annotation (Placement(transformation(extent={{76,32},{96,52}})));
    Physiolibrary.Blocks.Factors.Normalization FurosemideEffect
    annotation (Placement(transformation(extent={{76,48},{96,68}})));
    Physiolibrary.Blocks.Factors.Normalization Filtering_xNormal
    annotation (Placement(transformation(extent={{64,54},{84,74}})));
    Physiolibrary.Chemical.Sensors.MolarFlowMeasure flowMeasure
    annotation (Placement(transformation(extent={{50,14},{70,34}})));
    Physiolibrary.Chemical.Sensors.MolarFlowMeasure flowMeasure1
    annotation (Placement(transformation(extent={{98,-74},{78,-54}})));
    Physiolibrary.Blocks.Factors.Spline LoadEffect1(data={{0.0,2.0,0},{1.6,
      1.0,0}})
    annotation (Placement(transformation(extent={{72,-56},{52,-36}})));
    Physiolibrary.Blocks.Factors.Spline ThiazideEffect(data={{0.0,1.0,-2.0},
      {0.6,0.2,0.0}})
    annotation (Placement(transformation(extent={{72,-48},{52,-28}})));
    Physiolibrary.Chemical.Sensors.MolarFlowMeasure flowMeasure2
    annotation (Placement(transformation(extent={{58,-74},{38,-54}})));
    Physiolibrary.Blocks.Factors.Spline LoadEffect2(data={{0.0,2.0,0},{0.4,
      1.0,0}})
    annotation (Placement(transformation(extent={{22,-58},{2,-38}})));
    Physiolibrary.Blocks.Factors.Spline ANPEffect2(data={{0.0,1.2,0},{1.3,
      1.0,-0.4},{2.7,0.2,0}})
    annotation (Placement(transformation(extent={{22,-50},{2,-30}})));
    Physiolibrary.Blocks.Factors.Normalization AldoEffect2 annotation (
    Placement(transformation(
      extent={{10,-10},{-10,10}},
      rotation=270,
      origin={84,-78})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant const5(k=2)
    annotation (Placement(transformation(extent={{94,-80},{90,-76}})));
    Physiolibrary.Chemical.Sources.UnlimitedSolutePump Diet(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{-90,-60},{-70,-40}})));
    Physiolibrary.Chemical.Sources.UnlimitedSolutePumpOut Diarrhea(
    useSoluteFlowInput=true) annotation (Placement(transformation(
      extent={{-10,-10},{10,10}},
      rotation=180,
      origin={-80,-64})));
    Physiolibrary.Chemical.Sensors.MolarFlowMeasure flowMeasure3
    annotation (Placement(transformation(extent={{10,-54},{-10,-74}})));
    Physiolibrary.Chemical.Components.Substance Medulla(
    stateName="MedullaNa.Mass",
    useNormalizedVolume=false,
    solute_start=(13)/1000)
    annotation (Placement(transformation(extent={{28,-102},{48,-82}})));
    Physiolibrary.Chemical.Sensors.ConcentrationMeasure
    concentrationMeasure(toAnotherUnitCoef=1000, unitsString="mEq/l")
    annotation (Placement(transformation(
      extent={{-9,-9},{9,9}},
      rotation=270,
      origin={57,-97})));
    Physiolibrary.Chemical.Components.Stream VasaRectaOutflow(
    useSolutionFlowInput=true)
    annotation (Placement(transformation(extent={{-4,-100},{-20,-84}})));
    Modelica.Blocks.Math.Gain gain(k=0.03)
    annotation (Placement(transformation(extent={{-28,-88},{-20,-80}})));
    Physiolibrary.Chemical.Sensors.ConcentrationMeasure
    concentrationMeasure1(toAnotherUnitCoef=1000, unitsString="mEq/l")
    annotation (Placement(transformation(
      extent={{-10,-10},{10,10}},
      origin={-92,36})));
    Physiolibrary.Chemical.Components.Clearance bladderVoid(
    useSolutionFlowInput=true)
    annotation (Placement(transformation(extent={{12,-22},{24,-10}})));
    Physiolibrary.Chemical.Sensors.MolarFlowMeasure flowMeasure4
    annotation (Placement(transformation(extent={{64,-68},{44,-88}})));
    Physiolibrary.Chemical.Sensors.MolarFlowMeasure flowMeasure5
    annotation (Placement(transformation(extent={{80,16},{60,-4}})));
    Physiolibrary.Chemical.Sensors.MolarFlowMeasure flowMeasure6
    annotation (Placement(transformation(
      extent={{10,10},{-10,-10}},
      rotation=90,
      origin={18,12})));
    Physiolibrary.Types.BusConnector busConnector annotation (Placement(
      transformation(extent={{-98,86},{-86,98}}), iconTransformation(
        extent={{60,60},{100,100}})));
    Modelica.Blocks.Math.Gain Osm(k=2)
    annotation (Placement(transformation(extent={{68,-100},{74,-94}})));
    Physiolibrary.Blocks.Factors.Spline AldoEffect1(data={{0.0,0.5,0},{12.0,
      1.0,0.08},{50.0,3.0,0}})
    annotation (Placement(transformation(extent={{52,-40},{72,-20}})));
    Modelica.Blocks.Math.Division division
    annotation (Placement(transformation(extent={{80,-16},{86,-10}})));
    Modelica.Blocks.Math.Gain ml2l(k=1000)
    annotation (Placement(transformation(extent={{90,-16},{96,-10}})));
    Physiolibrary.Blocks.Factors.Spline LeptinEffect2(data={{0,3.0,0},{8,
      1.0,-0.04},{50,0.0,0}})
    annotation (Placement(transformation(extent={{-90,-50},{-70,-30}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant7(k=180
      /1440)
    annotation (Placement(transformation(extent={{-90,-36},{-82,-28}})));
    Real ECF_conc;
    Physiolibrary.Chemical.Sensors.ConcentrationMeasure
    concentrationMeasure2(toAnotherUnitCoef=1, unitsString="mEq/ml")
    annotation (Placement(transformation(
      extent={{-9,-9},{9,9}},
      rotation=270,
      origin={57,-93})));
    SweatGlandSalt sweatGlandSalt
    annotation (Placement(transformation(extent={{4,74},{20,90}})));
equation
    ECF_conc =concentrationMeasure1.concentration;

    connect(NaPool.solutionVolume, busConnector.ECFV_Vol) annotation (Line(
    points={{-84,30},{-97,30},{-97,92},{-92,92}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(GILumen.solutionVolume, busConnector.GILumenVolume_Mass)
    annotation (Line(
    points={{-58,-30},{-97,-30},{-97,92},{-92,92}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(GILumen.q_out, Absorbtion.q_in) annotation (Line(
    points={{-50,-36},{-38,-36},{-38,-16},{-44,-16}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));
    connect(Absorbtion.q_out, NaPool.q_out) annotation (Line(
    points={{-56,-16},{-100,-16},{-100,24},{-76,24}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));
    connect(Hemorrhage.q_in, NaPool.q_out) annotation (Line(
    points={{-54,74},{-58,74},{-58,24},{-76,24}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));
    connect(DialyzerActivity.q_in, NaPool.q_out) annotation (Line(
    points={{-54,60},{-58,60},{-58,24},{-76,24}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));
    connect(Transfusion.q_out, NaPool.q_out) annotation (Line(
    points={{-62,66},{-58,66},{-58,24},{-76,24}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));
    connect(IVDrip.q_out, NaPool.q_out) annotation (Line(
    points={{-62,80},{-58,80},{-58,24},{-76,24}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));
    connect(glomerulusSudiumRate.solventFlow, busConnector. GlomerulusFiltrate_GFR)
    annotation (Line(
    points={{-6,30},{-6,38},{-32,38},{-32,92},{-92,92}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(glomerulus.q_in, NaPool.q_out) annotation (Line(
    points={{-40,24},{-76,24}},
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
    points={{8.3,37},{12,37},{12,28}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(A2Effect.yBase, busConnector. kidney_FunctionEffect) annotation (Line(
    points={{24,68},{24,92},{-92,92}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
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
    connect(busConnector.A2Pool_Log10Conc, A2Effect.u) annotation (Line(
    points={{-92,92},{-18.9,92},{-18.9,66},{14.2,66}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(SympsEffect.u, busConnector. KidneyAlpha_PT_NA) annotation (Line(
    points={{14.2,58},{-18.9,58},{-18.9,92},{-92,92}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(busConnector.NephronANP_Log10Conc, ANPEffect.u) annotation (Line(
    points={{-92,92},{-18.9,92},{-18.9,50},{14.2,50}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(busConnector.NephronIFP_Pressure, IFPEffect.u) annotation (Line(
    points={{-92,92},{-18.9,92},{-18.9,42},{14.2,42}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
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
    connect(Bladder.solutionVolume, busConnector.BladderVolume_Mass)
    annotation (Line(
    points={{-26,-10},{-98,-10},{-98,92},{-92,92}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(Furosemide.u, busConnector. FurosemidePool_Furosemide_conc)
                                        annotation (Line(
    points={{64.2,72},{48,72},{48,92},{-92,92}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
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
    connect(Filtering_xNormal.u, busConnector. Kidney_NephronCount_Filtering_xNormal)
    annotation (Line(
    points={{64.2,64},{48,64},{48,92},{-92,92}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(Filtering_xNormal.y, FurosemideEffect.u) annotation (Line(
    points={{74,62},{74,58},{76.2,58}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Furosemide.y, Filtering_xNormal.yBase) annotation (Line(
    points={{74,70},{74,66}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(busConnector.kidney_FunctionEffect, Furosemide.yBase) annotation (Line(
    points={{-92,92},{74,92},{74,74}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(FurosemideEffect.yBase, busConnector. kidney_FunctionEffect) annotation (Line(
    points={{86,60},{86,92},{-92,92}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
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
    points={{92,-64},{98,-64},{98,24},{88,24}},
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
    connect(ThiazideEffect.u, busConnector. ThiazidePool_Thiazide_conc) annotation (Line(
    points={{71.8,-38},{99.9,-38},{99.9,92},{-92,92}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
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
    connect(ANPEffect2.yBase, busConnector. kidney_FunctionEffect) annotation (Line(
    points={{12,-38},{12,-36},{48,-36},{48,92},{-92,92}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(ANPEffect2.u, busConnector. NephronANP_Log10Conc) annotation (Line(
    points={{21.8,-40},{48,-40},{48,92},{-92,92}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(IVDrip.soluteFlow, busConnector.IVDrip_NaRate) annotation (Line(
    points={{-68,84},{-68,92},{-92,92}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(Transfusion.soluteFlow, busConnector.Transfusion_NaRate)
    annotation (Line(
    points={{-68,70},{-60,70},{-60,92},{-92,92}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(const5.y, AldoEffect2.yBase) annotation (Line(
    points={{89.8,-78},{86,-78}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(AldoEffect2.y, DT.MaxReab) annotation (Line(
    points={{82,-78},{76,-78},{76,-68.2}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(busConnector.Hemorrhage_NaRate, Hemorrhage.soluteFlow)
    annotation (Line(
    points={{-92,92},{-47.5,92},{-47.5,78},{-48,78}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(DialyzerActivity.soluteFlow, busConnector.DialyzerActivity_Na_Flux)
    annotation (Line(
    points={{-48,64},{-48,92},{-92,92}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(glomerulus.otherCations, busConnector. KPool) annotation (Line(
    points={{-36,29},{-36,38},{-32,38},{-32,92},{-92,92}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(glomerulus.ProteinAnions, busConnector. BloodIons_ProteinAnions) annotation (
    Line(
    points={{-32,29},{-32,92},{-92,92}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(Diet.q_out, GILumen.q_out) annotation (Line(
    points={{-74,-50},{-58,-50},{-58,-36},{-50,-36}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));
    connect(Diarrhea.soluteFlow, busConnector.GILumenDiarrhea_NaLoss)
    annotation (Line(
    points={{-80,-68},{-80,-70},{-98,-70},{-98,92},{-92,92}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(GILumen.q_out, Diarrhea.q_in) annotation (Line(
    points={{-50,-36},{-58,-36},{-58,-64},{-74,-64}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));
    connect(GILumen.solute, Perm.u) annotation (Line(
    points={{-50,-43.8},{-50,-53},{-40.6,-53}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Perm.y, Absorbtion.soluteFlow) annotation (Line(
    points={{-33.7,-53},{-32,-54},{-32,-24},{-50,-24},{-50,-19.6}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(CD.Outflow, flowMeasure3.q_in) annotation (Line(
    points={{10,-64},{4,-64}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));
    connect(flowMeasure3.q_out, Bladder.q_out) annotation (Line(
    points={{-4,-64},{-6,-64},{-6,-16},{-18,-16}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));
    connect(CD.Reabsorption, Medulla.q_out) annotation (Line(
    points={{20,-68},{20,-92},{38,-92}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));
    connect(Medulla.q_out, concentrationMeasure.q_in) annotation (Line(
    points={{38,-92},{42,-92},{42,-97},{57,-97}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));
    connect(Medulla.q_out, VasaRectaOutflow.q_in) annotation (Line(
    points={{38,-92},{-4,-92}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));
    connect(VasaRectaOutflow.q_out, NaPool.q_out) annotation (Line(
    points={{-20,-92},{-100,-92},{-100,24},{-76,24}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));
    connect(gain.y, VasaRectaOutflow.solutionFlow) annotation (Line(
    points={{-19.6,-84},{-12,-84},{-12,-87.2}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(busConnector.VasaRecta_Outflow, gain.u) annotation (Line(
    points={{-92,92},{-98.4,92},{-98.4,-84},{-28.8,-84}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(Medulla.solutionVolume, busConnector.Medulla_Volume)
    annotation (Line(
    points={{30,-86},{26,-86},{26,-78},{-98,-78},{-98,92},{-92,92}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(NaPool.solute, busConnector.NaPool_mass) annotation (Line(
    points={{-76,16.2},{-76,14},{-98,14},{-98,92},{-92,92}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(concentrationMeasure1.q_in, NaPool.q_out) annotation (Line(
    points={{-92,36},{-76,36},{-76,24}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));
    connect(Bladder.q_out, bladderVoid.q_in) annotation (Line(
    points={{-18,-16},{12,-16}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(bladderVoid.solutionFlow, busConnector.BladderVoidFlow)
    annotation (Line(
    points={{18,-12.4},{18,-6},{-98,-6},{-98,92},{-92,92}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(GILumen.solute, busConnector.GILumenSodium_Mass) annotation (
    Line(
    points={{-50,-43.8},{-50,-60},{-76,-60},{-76,92},{-92,92}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(AldoEffect1.y, busConnector. DT_AldosteroneEffect) annotation (Line(
    points={{62,-32},{62,-34},{100,-34},{100,92},{-92,92}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(DT.Reabsorption, flowMeasure4.q_in) annotation (Line(
    points={{70,-68},{70,-78},{58,-78}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(flowMeasure4.q_out, NaPool.q_out) annotation (Line(
    points={{50,-78},{-100,-78},{-100,24},{-76,24}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(flowMeasure5.molarFlowRate, busConnector.LH_Na_Reab)
    annotation (Line(
    points={{70,1},{100,1},{100,92},{-92,92}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(LH.Reabsorption, flowMeasure5.q_in) annotation (Line(
    points={{78,20},{78,6},{74,6}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(flowMeasure5.q_out, NaPool.q_out) annotation (Line(
    points={{66,6},{-100,6},{-100,24},{-76,24}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(flowMeasure6.molarFlowRate, busConnector.PT_Na_Reab)
    annotation (Line(
    points={{23,12},{47.5,12},{47.5,92},{-92,92}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(PT.Reabsorption, flowMeasure6.q_in) annotation (Line(
    points={{18,20},{18,16}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(flowMeasure6.q_out, NaPool.q_out) annotation (Line(
    points={{18,8},{18,6},{-100,6},{-100,24},{-76,24}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));

    connect(concentrationMeasure1.concentration, busConnector.NaPool_conc_per_liter)
    annotation (Line(
    points={{-92,40},{-92,46},{-98,46},{-98,92},{-92,92}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(concentrationMeasure.concentration, Osm.u) annotation (Line(
    points={{60.6,-97},{67.4,-97}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Osm.y, busConnector.MedullaNa_Osmolarity) annotation (Line(
    points={{74.3,-97},{100,-97},{100,92},{-92,92}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(busConnector.kidney_FunctionEffect, AldoEffect1.yBase) annotation (
    Line(
    points={{-92,92},{48,92},{48,-28},{62,-28}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(AldoEffect1.y, ThiazideEffect.yBase) annotation (Line(
    points={{62,-32},{62,-36}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(ThiazideEffect.y, LoadEffect1.yBase) annotation (Line(
    points={{62,-40},{62,-44}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(AldoEffect1.y, AldoEffect2.u) annotation (Line(
    points={{62,-32},{62,-34},{96,-34},{96,-90},{84,-90},{84,-87.8}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(LH.ReabFract, busConnector. LH_Na_FractReab) annotation (Line(
    points={{88,20},{100,20},{100,92},{-92,92}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(PT.ReabFract, busConnector. PT_Na_FractReab) annotation (Line(
    points={{28,20},{48,20},{48,92},{-92,92}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(flowMeasure2.molarFlowRate, busConnector.DT_Na_Outflow)
    annotation (Line(
    points={{48,-59},{48,92},{-92,92}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(flowMeasure3.molarFlowRate, busConnector.CD_Na_Outflow)
    annotation (Line(
    points={{0,-69},{0,-74},{-98,-74},{-98,92},{-92,92}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(flowMeasure4.molarFlowRate, busConnector.DT_Na_Reab)
    annotation (Line(
    points={{54,-83},{54,-90},{100,-90},{100,92},{-92,92}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(flowMeasure1.molarFlowRate, division.u1) annotation (Line(
    points={{88,-59},{88,-24},{74,-24},{74,-11.2},{79.4,-11.2}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(busConnector.LH_H2O_Outflow, division.u2) annotation (Line(
    points={{-92,92},{-98,92},{-98,-6},{56,-6},{56,-14.8},{79.4,-14.8}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));

    connect(ml2l.u, division.y) annotation (Line(
    points={{89.4,-13},{89.4,-12.5},{86.3,-12.5},{86.3,-13}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(ml2l.y, busConnector.MD_Na) annotation (Line(
    points={{96.3,-13},{100,-14},{100,92},{-92,92}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(busConnector.NephronAldo_conc_in_nG_per_dl, AldoEffect.u)
    annotation (Line(
    points={{-92,92},{48,92},{48,50},{76.2,50}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(busConnector.NephronAldo_conc_in_nG_per_dl, AldoEffect1.u)
    annotation (Line(
    points={{-92,92},{48,92},{48,-30},{52.2,-30}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(Constant7.y,LeptinEffect2. yBase) annotation (Line(
    points={{-81.6,-32},{-80,-32},{-80,-38}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(LeptinEffect2.y, Diet.soluteFlow) annotation (Line(
    points={{-80,-42},{-80,-46}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(busConnector.Leptin, LeptinEffect2.u) annotation (Line(
    points={{-92,92},{-98,92},{-98,-40},{-89.8,-40}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(Medulla.q_out, concentrationMeasure2.q_in) annotation (Line(
    points={{38,-92},{52,-92},{52,-93},{57,-93}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(concentrationMeasure2.concentration, busConnector.MedullaNa_conc)
    annotation (Line(
    points={{60.6,-93},{100,-93},{100,92},{-92,92}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(NaPool.q_out, sweatGlandSalt.salt) annotation (Line(
    points={{-76,24},{-58,24},{-58,80},{4,80},{4,77.2}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(busConnector.Aldo_conc_in_nG_per_dl, sweatGlandSalt.Aldo)
    annotation (Line(
    points={{-92,92},{-50,92},{-50,86.8},{4,86.8}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(busConnector.SweatGland_H2ORate, sweatGlandSalt.H2OIntflow)
    annotation (Line(
    points={{-92,92},{-50,92},{-50,83.6},{4,83.6}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    annotation ( Icon(coordinateSystem(
      preserveAspectRatio=true, extent={{-100,-100},{100,100}}),
    graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName=
          "../Physiolibrary/icons/Na.jpg"), Text(
      extent={{-110,-104},{110,-130}},
      lineColor={0,0,255},
      textString="%name")}),
    Documentation(revisions="<html>

    <table>
    <tr>
    <td>Author:</td>
    <td>Marek Matejak</td>
    </tr>
    <tr>
    <td>License:</td>
    <td><a href=\"http://www.physiomodel.org/license.html\">Physiomodel License 1.0</a> </td>
    </tr>
    <tr>
    <td>By:</td>
    <td>Charles University, Prague</td>
    </tr>
    <tr>
    <td>Date of:</td>
    <td>2009</td>
    </tr>
    <tr>
    <td>References:</td>
    <td>Tom Coleman: QHP 2008 beta 3, University of Mississippi Medical Center</td>
    </tr>
    </table>
    <br/><p>Copyright &copy; 2014 Marek Matejak, Charles University in Prague.</p><br/>

    </html>"));
end Sodium2;
