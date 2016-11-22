within Physiomodel.Electrolytes.Sodium;
model KidneyNa
    import Physiomodel;
    extends Physiolibrary.Icons.Kidney;
    Physiolibrary.Chemical.Interfaces.ChemicalPort_a q_in
    "sodium concentration in blood incomming to glomerulus capillaries; sodium mass flow is filtration - reabsorbtion"
    annotation (Placement(transformation(extent={{-64,-4},{-46,14}}),
    iconTransformation(extent={{10,-10},{30,10}})));
    Physiolibrary.Chemical.Components.Stream glomerulusSudiumRate(
    useSolutionFlowInput=true)
    annotation (Placement(transformation(extent={{-16,14},{4,34}})));
    Physiolibrary.Chemical.Components.Reabsorption PT(
    useBaseReabsorption=true,
    useEffect=true,
    useMaxReabInput=true)
    annotation (Placement(transformation(extent={{8,14},{28,34}})));
    Physiolibrary.Types.Constants.FractionConst const1(k=0.58)
    annotation (Placement(transformation(extent={{2,34},{8,40}})));
    Physiolibrary.Blocks.Factors.Spline IFPEffect(data={{1.0,1.4,0},{4.0,1.0,
    -0.2},{7.0,0.3,0}}, Xscale=101325/760)
    annotation (Placement(transformation(extent={{14,32},{34,52}})));
    Physiolibrary.Blocks.Factors.LagSpline
                                  ANPEffect(data={{0.0,1.2,0},{1.3,1.0,
    -0.2},{2.7,0.6,0}},
    Xscale=1e-9,
    UsePositiveLog10=true,
    HalfTime=Modelica.Math.log(2)*20*60,
    initialValue=20)
    "1 pmol/l = 1e-9 mmol/l, NephronAnp.Tau = 20 min, initial: 20 pmol/l"
    annotation (Placement(transformation(extent={{14,40},{34,60}})));
    Physiolibrary.Blocks.Factors.Spline SympsEffect(data={{0.6,0.6,0},{1.0,
    1.0,0.5},{4.0,1.5,0}})
    annotation (Placement(transformation(extent={{14,48},{34,68}})));
    Physiolibrary.Blocks.Factors.Spline A2Effect(
    data={{0.7,0.8,0},{1.3,1.0,0.8},{1.6,1.2,0}},
    UsePositiveLog10=true,
    Xscale=1e-9/Physiomodel.Substances.AngiotensinII.mw)
    "1 pg/ml =  0.956 pmol/l = 0.956e-9 mmol/l"
    annotation (Placement(transformation(extent={{14,56},{34,76}})));
    Physiolibrary.Chemical.Components.Reabsorption LH(
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
    useBaseReabsorption=true,
    useEffect=true,
    useMaxReabInput=true)
    annotation (Placement(transformation(extent={{30,-74},{10,-54}})));
    Physiolibrary.Types.Constants.FractionConst const3(k=0.75)
    annotation (Placement(transformation(extent={{38,-56},{32,-50}})));
    Physiolibrary.Types.Constants.FractionConst const4(k=0.75)
    annotation (Placement(transformation(extent={{82,-54},{76,-48}})));
    Physiolibrary.Blocks.Factors.Spline Furosemide(data={{0.0,1.0,-1},{0.1,
    0.0,0}}, Xscale=1e-3/Physiomodel.Substances.Furosemide.mw)
    annotation (Placement(transformation(extent={{64,62},{84,82}})));
    Physiolibrary.Blocks.Factors.LagSpline
                                  AldoEffect(data={{0.0,0.7,0},{10.0,
    1.0,0}},
    HalfTime=Modelica.Math.log(2)*3*60*60,
    Xscale=1e-8/Physiomodel.Substances.Aldosterone.mw,
    initialValue=12)
    "1 ng/dl = 1e-8 kg/m3, 0.036 ng/dl = 1 pmol/l, NephronAldo.Tau = 3 h, initial: 11 ng/dl"
    annotation (Placement(transformation(extent={{76,40},{96,60}})));
    Physiolibrary.Blocks.Factors.Spline LoadEffect(data={{0.0,3.0,0},{7.2,1.0,
    -0.2},{20.0,0.5,0}}, Xscale=1e-3/60)
    annotation (Placement(transformation(extent={{76,32},{96,52}})));
    Physiolibrary.Blocks.Factors.Normalization FurosemideEffect
    annotation (Placement(transformation(extent={{76,48},{96,68}})));
    Physiolibrary.Blocks.Factors.Normalization Filtering_xNormal
    annotation (Placement(transformation(extent={{64,54},{84,74}})));
    Physiolibrary.Chemical.Sensors.MolarFlowMeasure flowMeasure
    annotation (Placement(transformation(extent={{38,18},{58,38}})));
    Physiolibrary.Chemical.Sensors.MolarFlowMeasure flowMeasure1
    annotation (Placement(transformation(extent={{98,-74},{78,-54}})));
    Physiolibrary.Blocks.Factors.Spline LoadEffect1(data={{0.0,2.0,0},{1.6,
    1.0,0}}, Xscale=1e-3/60)
    annotation (Placement(transformation(extent={{72,-56},{52,-36}})));
    Physiolibrary.Blocks.Factors.Spline ThiazideEffect(data={{0.0,1.0,-2.0},{
    0.6,0.2,0.0}})
    annotation (Placement(transformation(extent={{72,-48},{52,-28}})));
    Physiolibrary.Chemical.Sensors.MolarFlowMeasure flowMeasure2
    annotation (Placement(transformation(extent={{58,-74},{38,-54}})));
    Physiolibrary.Blocks.Factors.Spline LoadEffect2(data={{0.0,2.0,0},{0.4,
    1.0,0}}, Xscale=1e-3/60)
    annotation (Placement(transformation(extent={{22,-58},{2,-38}})));
    Physiolibrary.Blocks.Factors.LagSpline
                                  ANPEffect2(data={{0.0,1.2,0},{1.3,1.0,
    -0.4},{2.7,0.2,0}},
    Xscale=1e-9,
    UsePositiveLog10=true,
    HalfTime=Modelica.Math.log(2)*20*60,
    initialValue=20)
    annotation (Placement(transformation(extent={{22,-50},{2,-30}})));
    Physiolibrary.Blocks.Factors.Normalization AldoEffect2 annotation (
    Placement(transformation(
    extent={{10,-10},{-10,10}},
    rotation=270,
    origin={84,-78})));
    Physiolibrary.Types.Constants.FractionConst             const5(k=2)
    annotation (Placement(transformation(extent={{94,-80},{90,-76}})));
    Physiolibrary.Chemical.Sensors.MolarFlowMeasure flowMeasure3
    annotation (Placement(transformation(extent={{10,-54},{-10,-74}})));
    Physiolibrary.Chemical.Components.Substance Medulla(
    stateName="MedullaNa.Mass",
    useNormalizedVolume=false,
    solute_start=(13)/1000)
    annotation (Placement(transformation(extent={{28,-102},{48,-82}})));
    Physiolibrary.Chemical.Components.Stream VasaRectaOutflow(
    useSolutionFlowInput=true)
    annotation (Placement(transformation(extent={{-4,-100},{-20,-84}})));
    Modelica.Blocks.Math.Gain gain(k=0.03)
    annotation (Placement(transformation(extent={{-28,-88},{-20,-80}})));
    Physiolibrary.Chemical.Sensors.MolarFlowMeasure flowMeasure4
    annotation (Placement(transformation(extent={{64,-68},{44,-88}})));
    Physiolibrary.Chemical.Sensors.MolarFlowMeasure flowMeasure5
    annotation (Placement(transformation(extent={{68,8},{48,-12}})));
    Physiolibrary.Chemical.Sensors.MolarFlowMeasure flowMeasure6 annotation (
    Placement(transformation(
    extent={{10,10},{-10,-10}},
    rotation=90,
    origin={18,-4})));
    Physiolibrary.Types.BusConnector busConnector annotation (Placement(
    transformation(extent={{-98,86},{-86,98}}), iconTransformation(
      extent={{60,60},{100,100}})));
    Modelica.Blocks.Math.Gain Osm(k=2)
    annotation (Placement(transformation(extent={{68,-104},{74,-98}})));
    Physiolibrary.Blocks.Factors.LagSpline
                                  AldoEffect1(data={{0.0,0.5,0},{12.0,
    1.0,0.08},{50.0,3.0,0}},
    HalfTime=Modelica.Math.log(2)*3*60*60,
    Xscale=1e-8/Physiomodel.Substances.Aldosterone.mw,
    initialValue=12) "12 ng/dl = 12e-8 kg/m3"
    annotation (Placement(transformation(extent={{54,-38},{74,-18}})));
    Modelica.Blocks.Math.Division division(y(unit="mol/m3"))
    annotation (Placement(transformation(extent={{80,-16},{86,-10}})));

    Physiolibrary.Chemical.Sensors.ConcentrationMeasure concentrationMeasure2 annotation (Placement(
      transformation(
      extent={{-9,-9},{9,9}},
      rotation=270,
      origin={57,-95})));
    GlomerulusCationFiltration glomerulus
    annotation (Placement(transformation(extent={{-40,14},{-20,34}})));
    Physiolibrary.Chemical.Interfaces.ChemicalPort_b q_out
    "sodium mass outflow to urine from collecting ducts" annotation (
    Placement(transformation(extent={{-24,-70},{-8,-56}}),
    iconTransformation(extent={{10,-90},{30,-70}})));
    Physiolibrary.Types.Constants.MolarFlowRateConst const6(k=14)
    annotation (Placement(transformation(extent={{4,10},{8,6}})));
    Physiolibrary.Types.Constants.MolarFlowRateConst const7(k=7)
    annotation (Placement(transformation(extent={{60,12},{66,18}})));
    Physiolibrary.Types.Constants.MolarFlowRateConst const8(k=0.7)
    annotation (Placement(transformation(
    extent={{-3,-3},{3,3}},
    rotation=180,
    origin={35,-73})));
    Modelica.Blocks.Math.Gain gain1(k=Modelica.Constants.F)
    annotation (Placement(transformation(extent={{-62,48},{-52,58}})));
equation

    connect(glomerulusSudiumRate.solutionFlow, busConnector.GlomerulusFiltrate_GFR)
    annotation (Line(
    points={{-6,31},{-6,38},{-32,38},{-32,92},{-92,92}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(glomerulusSudiumRate.q_out, PT.Inflow) annotation (Line(
    points={{4,24},{6,24},{6,28},{8,28}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));
    connect(const1.y, PT.baseReabsorption) annotation (Line(
    points={{8.75,37},{22,37},{22,34}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(A2Effect.yBase, busConnector. KidneyFunctionEffect) annotation (Line(
    points={{24,68},{24,92},{-92,92}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(A2Effect.y, SympsEffect.yBase) annotation (Line(
    points={{24,62},{24,60}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(SympsEffect.y, ANPEffect.yBase) annotation (Line(
    points={{24,54},{24,52}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(ANPEffect.y, IFPEffect.yBase) annotation (Line(
    points={{24,46},{24,44}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(IFPEffect.y, PT.Effect) annotation (Line(
    points={{24,38},{24,34},{18,34}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(SympsEffect.u, busConnector. KidneyAlpha_PT_NA) annotation (Line(
    points={{16,58},{-22.9,58},{-22.9,92},{-92,92}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(busConnector.NephronIFP_Pressure, IFPEffect.u) annotation (Line(
    points={{-92,92},{-22.9,92},{-22.9,42},{16,42}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(const2.y, LH.baseReabsorption) annotation (Line(
    points={{70.75,33},{82,33},{82,34}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(const3.y, CD.baseReabsorption) annotation (Line(
    points={{31.25,-53},{16,-53},{16,-54}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(const4.y, DT.baseReabsorption) annotation (Line(
    points={{75.25,-51},{66,-51},{66,-54}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Furosemide.u, busConnector. FurosemidePool_Furosemide_conc)
                                          annotation (Line(
    points={{66,72},{48,72},{48,92},{-92,92}},
    color={255,0,0},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(AldoEffect.y, LoadEffect.yBase) annotation (Line(
    points={{86,46},{86,44}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(LoadEffect.y, LH.Effect) annotation (Line(
    points={{86,38},{86,34},{78,34}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(FurosemideEffect.y, AldoEffect.yBase) annotation (Line(
    points={{86,54},{86,52}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Filtering_xNormal.u, busConnector. Kidney_NephronCount_Filtering_xNormal)
    annotation (Line(
    points={{66,64},{48,64},{48,92},{-92,92}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(Filtering_xNormal.y, FurosemideEffect.u) annotation (Line(
    points={{74,60},{74,58},{78,58}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Furosemide.y, Filtering_xNormal.yBase) annotation (Line(
    points={{74,68},{74,66}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(busConnector.KidneyFunctionEffect, Furosemide.yBase) annotation (Line(
    points={{-92,92},{74,92},{74,74}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(FurosemideEffect.yBase, busConnector. KidneyFunctionEffect) annotation (Line(
    points={{86,60},{86,92},{-92,92}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(PT.Outflow, flowMeasure.q_in) annotation (Line(
    points={{28,28},{38,28}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));
    connect(flowMeasure.q_out, LH.Inflow) annotation (Line(
    points={{58,28},{68,28}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));
    connect(flowMeasure.molarFlowRate, LoadEffect.u) annotation (Line(
    points={{48,20},{48,42},{78,42}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(DT.Inflow, flowMeasure1.q_out) annotation (Line(
    points={{80,-60},{80,-64},{80,-64},{78,-64}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));
    connect(flowMeasure1.q_in, LH.Outflow) annotation (Line(
    points={{98,-64},{98,28},{88,28}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));
    connect(LoadEffect1.y, DT.Effect) annotation (Line(
    points={{62,-50},{62,-54},{70,-54}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(LoadEffect1.u, flowMeasure1.molarFlowRate) annotation (Line(
    points={{70,-46},{88,-46},{88,-72}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(ThiazideEffect.u, busConnector. ThiazidePool_Thiazide_conc) annotation (Line(
    points={{70,-38},{99.9,-38},{99.9,92},{-92,92}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(CD.Inflow, flowMeasure2.q_out) annotation (Line(
    points={{30,-60},{34,-60},{34,-64},{38,-64}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));
    connect(flowMeasure2.q_in, DT.Outflow) annotation (Line(
    points={{58,-64},{60,-64},{60,-60},{60,-60}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));
    connect(LoadEffect2.y, CD.Effect) annotation (Line(
    points={{12,-52},{12,-54},{20,-54}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(ANPEffect2.y, LoadEffect2.yBase) annotation (Line(
    points={{12,-44},{12,-46}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(ANPEffect2.yBase, busConnector. KidneyFunctionEffect) annotation (Line(
    points={{12,-38},{12,-36},{48,-36},{48,92},{-92,92}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(const5.y, AldoEffect2.yBase) annotation (Line(
    points={{89.5,-78},{86,-78}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(AldoEffect2.y, DT.MaxReab) annotation (Line(
    points={{80,-78},{78,-78},{78,-70}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(CD.Outflow, flowMeasure3.q_in) annotation (Line(
    points={{10,-60},{10,-64}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));
    connect(CD.Reabsorption, Medulla.q_out) annotation (Line(
    points={{20,-74},{20,-92},{38,-92}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));
    connect(Medulla.q_out, VasaRectaOutflow.q_in) annotation (Line(
    points={{38,-92},{-4,-92}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));
    connect(gain.y, VasaRectaOutflow.solutionFlow) annotation (Line(
    points={{-19.6,-84},{-12,-84},{-12,-86.4}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(busConnector.VasaRecta_Outflow, gain.u) annotation (Line(
    points={{-92,92},{-98.4,92},{-98.4,-84},{-28.8,-84}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(Medulla.solutionVolume, busConnector.Medulla_Volume) annotation (
    Line(
    points={{34,-88},{26,-88},{26,-78},{-98,-78},{-98,92},{-92,92}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(AldoEffect1.y, busConnector. DT_AldosteroneEffect) annotation (Line(
    points={{64,-32},{102,-32},{102,92},{-92,92}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(DT.Reabsorption, flowMeasure4.q_in) annotation (Line(
    points={{70,-74},{70,-78},{64,-78}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(flowMeasure5.molarFlowRate, busConnector.LH_Na_Reab) annotation (
    Line(
    points={{58,6},{100,6},{100,92},{-92,92}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(LH.Reabsorption, flowMeasure5.q_in) annotation (Line(
    points={{78,14},{78,-2},{68,-2}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(flowMeasure6.molarFlowRate, busConnector.PT_Na_Reab) annotation (
    Line(
    points={{10,-4},{47.5,-4},{47.5,92},{-92,92}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(PT.Reabsorption, flowMeasure6.q_in) annotation (Line(
    points={{18,14},{18,6}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));

    connect(Osm.y, busConnector.MedullaNa_Osmolarity) annotation (Line(
    points={{74.3,-101},{100,-101},{100,92},{-92,92}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(busConnector.KidneyFunctionEffect, AldoEffect1.yBase) annotation (
    Line(
    points={{-92,92},{48,92},{48,-26},{64,-26}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(AldoEffect1.y, ThiazideEffect.yBase) annotation (Line(
    points={{64,-32},{64,-34},{62,-34},{62,-36}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(ThiazideEffect.y, LoadEffect1.yBase) annotation (Line(
    points={{62,-42},{62,-44}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(AldoEffect1.y, AldoEffect2.u) annotation (Line(
    points={{64,-32},{96,-32},{96,-90},{84,-90},{84,-86}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(LH.ReabFract, busConnector. LH_Na_FractReab) annotation (Line(
    points={{88,16},{100,16},{100,92},{-92,92}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(PT.ReabFract, busConnector. PT_Na_FractReab) annotation (Line(
    points={{28,16},{48,16},{48,92},{-92,92}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(flowMeasure2.molarFlowRate, busConnector.DT_Na_Outflow)
    annotation (Line(
    points={{48,-72},{48,92},{-92,92}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(flowMeasure3.molarFlowRate, busConnector.CD_Na_Outflow)
    annotation (Line(
    points={{0,-56},{0,-54},{-98,-54},{-98,92},{-92,92}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(flowMeasure4.molarFlowRate, busConnector.DT_Na_Reab) annotation (
    Line(
    points={{54,-70},{54,-90},{100,-90},{100,92},{-92,92}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(flowMeasure1.molarFlowRate, division.u1) annotation (Line(
    points={{88,-72},{88,-24},{74,-24},{74,-11.2},{79.4,-11.2}},
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

    connect(Medulla.q_out, concentrationMeasure2.q_in) annotation (Line(
    points={{38,-92},{52,-92},{52,-95},{57,-95}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(concentrationMeasure2.concentration, busConnector.MedullaNa_conc)
    annotation (Line(
    points={{49.8,-95},{100,-95},{100,92},{-92,92}},
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
    connect(glomerulusSudiumRate.q_in, glomerulus.q_out) annotation (Line(
    points={{-16,24},{-20,24}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(glomerulus.q_in, q_in) annotation (Line(
    points={{-40,24},{-54,24},{-54,5},{-55,5}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(flowMeasure6.q_out, q_in) annotation (Line(
    points={{18,-14},{18,-18},{-8,-18},{-54,-18},{-54,2},{-54,6},{-54,5},{-55,
        5}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(flowMeasure5.q_out, q_in) annotation (Line(
    points={{48,-2},{40,-2},{40,-18},{-54,-18},{-54,5},{-55,5}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(flowMeasure4.q_out, q_in) annotation (Line(
    points={{44,-78},{-55,-78},{-55,5}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(VasaRectaOutflow.q_out, q_in) annotation (Line(
    points={{-20,-92},{-55,-92},{-55,5}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(flowMeasure3.q_out, q_out) annotation (Line(
    points={{-10,-64},{-16,-64},{-16,-63}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(const6.y, PT.MaxReab) annotation (Line(
    points={{8.5,8},{8.5,9.5},{10,9.5},{10,18}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(const7.y, LH.MaxReab) annotation (Line(
    points={{66.75,15},{70,15},{70,18}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(CD.MaxReab, const8.y) annotation (Line(
    points={{28,-70},{28,-73},{31.25,-73}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(division.y, busConnector.MD_Na) annotation (Line(
    points={{86.3,-13},{100,-13},{100,92},{-92,92}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(concentrationMeasure2.concentration, Osm.u) annotation (Line(
    points={{49.8,-95},{64.3,-95},{64.3,-101},{67.4,-101}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(flowMeasure2.molarFlowRate, LoadEffect2.u) annotation (Line(
    points={{48,-72},{48,-48},{20,-48}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(gain1.y, glomerulus.otherCations) annotation (Line(
    points={{-51.5,53},{-36,52},{-36,29}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(busConnector.KPool, gain1.u) annotation (Line(
    points={{-92,92},{-94,92},{-94,53},{-63,53}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(busConnector.Angiotensin2, A2Effect.u) annotation (Line(
    points={{-92,92},{-22,92},{-22,66},{16,66}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(busConnector.ANP, ANPEffect.u) annotation (Line(
    points={{-92,92},{-22,92},{-22,50},{16,50}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(busConnector.Aldosterone, AldoEffect.u) annotation (Line(
    points={{-92,92},{48,92},{48,50},{78,50}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(ANPEffect2.u, busConnector.ANP) annotation (Line(
    points={{20,-40},{48,-40},{48,92},{-92,92}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(busConnector.Aldosterone, AldoEffect1.u) annotation (Line(
    points={{-92,92},{48,92},{48,-28},{56,-28}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    annotation ( Icon(coordinateSystem(
        preserveAspectRatio=true, extent={{-100,-100},{100,100}}),
      graphics={Text(
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
end KidneyNa;