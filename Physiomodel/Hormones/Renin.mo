within Physiomodel.Hormones;
model Renin
    extends Physiolibrary.Icons.Kidney;
    // outer parameter Real ECF_Vol(final displayUnit="ml");
    Renin_Physiolibrary.Chemical.Components.Substance ReninPool(
    stateName="ReninPool.Mass",
    useNormalizedVolume=false,
    NominalSolute=Substances.Renin.molpGU,
    solute_start(displayUnit="GU_PRA") = 17153.7)
    " 2 GU/ml * 0.6 * 15000 ml =  18000 GU , initial: 17153.7 GU"
    annotation (Placement(transformation(extent={{-82,-54},{-62,-34}})));
    Renin_Physiolibrary.Chemical.Components.SolutePump secretion(useSoluteFlowInput=
      true)
    annotation (Placement(transformation(extent={{12,-54},{-8,-34}})));
    Physiolibrary.Blocks.Factors.Normalization CountEffect
    annotation (Placement(transformation(extent={{36,62},{56,82}})));
    Physiolibrary.Types.Constants.FrequencyConst            hormoneFlowConstant(k(
      displayUnit="1/min") = 5.5e-05)
    annotation (Placement(transformation(extent={{-20,-10},{-12,-2}})));
    Physiolibrary.Blocks.Factors.Spline TGFEffect(data={{0.0,8.0,0},{0.5,2.0,-4.0},
      {1.0,1.0,-1.0},{3.0,0.5,0}})
    annotation (Placement(transformation(extent={{12,-22},{-8,-2}})));
    Renin_Physiolibrary.Chemical.Sensors.ConcentrationMeasure concentrationMeasure
    annotation (Placement(transformation(
      extent={{-10,-10},{10,10}},
      origin={-62,-32})));                                                //(unitsString="GU/ml")
    Renin_Physiolibrary.Chemical.Sources.UnlimitedSolutePumpOut Clearance(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{-30,-98},{-10,-78}})));
    Modelica.Blocks.Math.Gain K(k=0.0161/60)
    annotation (Placement(transformation(extent={{-3,-3},{3,3}},
        origin={-35,-59})));
    Renin_Physiolibrary.Types.Constants.MolarFlowRateConst hormoneFlowConstant1(k(
      displayUnit="GU_PRA/min") = 290/60) "290 GU/min"
    annotation (Placement(transformation(extent={{62,76},{50,88}})));
    Modelica.Blocks.Math.Gain VODIST(k=0.6)
    annotation (Placement(transformation(extent={{-6,-6},{6,6}},
        origin={-68,-2})));
    Physiolibrary.Blocks.Factors.Normalization FunctionEffect
    annotation (Placement(transformation(extent={{36,56},{56,76}})));
    Physiolibrary.Blocks.Factors.Normalization BaseFraction
    annotation (Placement(transformation(extent={{-8,-16},{12,4}})));
    Renin_Physiolibrary.Chemical.Components.Substance ReninFree(
    stateName="ReninFree.Mass",
    useNormalizedVolume=true,
    NominalSolute=Substances.Renin.molpGU,
    solute_start(displayUnit="GU_PRA") = 87000) "initial: 87000 GU"
                                         annotation (Placement(
      transformation(
      extent={{-10,10},{10,-10}},
      rotation=180,
      origin={36,-44})));
    Renin_Physiolibrary.Chemical.Components.Substance ReninGranules(
    stateName="ReninGranules.Mass",
    useNormalizedVolume=true,
    NominalSolute=Substances.Renin.molpGU,
    solute_start(displayUnit="GU_PRA") = 870000) "initial: 870000 GU"
                                         annotation (Placement(
      transformation(
      extent={{-10,10},{10,-10}},
      rotation=180,
      origin={86,-44})));
    Renin_Physiolibrary.Chemical.Sources.UnlimitedSolutePump synthesis(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{56,-30},{36,-10}})));
    Physiolibrary.Blocks.Factors.Spline TGFEffect1(data={{0.0,10.0,0},{0.6,2.0,
      -4.0},{1.0,1.0,-1.0},{2.0,0.3,0}})
    annotation (Placement(transformation(extent={{56,34},{36,54}})));
    Physiolibrary.Blocks.Math.Integrator integrator(
    stateName="ReninSynthesis.Rate",
    k=(1/60)/60,
    y_start=(290/60)) "initial 290 GU/min"
    annotation (Placement(transformation(
      extent={{-10,-10},{10,10}},
      rotation=270,
      origin={46,6})));
    Modelica.Blocks.Math.Feedback feedback annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        rotation=270,
        origin={46,28})));
    Physiolibrary.Types.BusConnector busConnector annotation (Placement(
      transformation(extent={{-88,80},{-68,100}}), iconTransformation(
        extent={{-90,-70},{-70,-50}})));
    Renin_Physiolibrary.Types.RealIO.ConcentrationOutput Renin(displayUnit="GU_Renin/ml") annotation (Placement(
        transformation(extent={{-48,-46},{-28,-26}}), iconTransformation(extent={{80,-20},{120,20}})));
    Nerves.BetaReceptorsActivityFactor betaReceptorsActivityFactor
    annotation (Placement(transformation(extent={{-12,14},{8,34}})));
    Physiolibrary.Blocks.Factors.Spline NaEffect(data={{0,0.0,0.0},{48,1.0,0.03},
      {100,2.0,0.0}})
    annotation (Placement(transformation(extent={{82,54},{62,74}})));
    Physiolibrary.Blocks.Factors.Spline ANPEffect(data={{0.0,1.2,0.0},{1.3,1.0,
      -0.3},{2.7,0.8,0.0}},
    Xscale=1e-9,
    UsePositiveLog10=true) "normal ANP .. 20 pmol/l"
    annotation (Placement(transformation(extent={{82,50},{62,70}})));
    Physiolibrary.Blocks.Factors.Spline A2Effect(
    data={{0.0,0.9,0.0},{1.3,1.0,0.1},{2.5,2.0,2.0},{3.5,5.0,0.0}},
    Xscale=1e-9/Substances.AngiotensinII.mw,
    UsePositiveLog10=true) "normal ... 20 pg/ml = 20 ug/m3"
    annotation (Placement(transformation(extent={{82,46},{62,66}})));
    Physiolibrary.Blocks.Factors.Spline FurosemideEffect(data={{0.0,1.0,0.0},{
      1.3,0.2,0.0}}, Xscale=1e-3/Substances.Furosemide.mw)
    "mg/l = 1e-3 kg/m3"
    annotation (Placement(transformation(extent={{82,42},{62,62}})));
    Physiolibrary.Types.Constants.FractionConst             Constant2(k=1)
    annotation (Placement(transformation(extent={{60,68},{66,74}})));
    Physiolibrary.Blocks.Factors.Spline SympsEffect(data={{0.0,0.5,0},{1.0,1.0,
      1.0},{3.0,4.0,0}})
    annotation (Placement(transformation(extent={{-8,-34},{12,-14}})));
    Physiolibrary.Types.Constants.FractionConst             Constant3(k=1)
    annotation (Placement(transformation(extent={{-12,36},{-6,42}})));
    Physiolibrary.Blocks.Factors.Spline SympsEffect1(data={{0.0,0.5,0},{1.0,1.0,
      1.0},{2.5,4.0,0}})
    annotation (Placement(transformation(extent={{36,44},{56,64}})));
    Renin_Physiolibrary.Chemical.Components.SolutePump fluxReninFree(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{60,-44},{70,-34}})));
    Renin_Physiolibrary.Chemical.Components.SolutePump fluxReninGranules(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{70,-46},{60,-56}})));
    Modelica.Blocks.Math.Gain gain1(k=0.01/60)
    annotation (Placement(transformation(extent={{-5,-5},{5,5}},
        rotation=270,
        origin={65,-27})));
    Modelica.Blocks.Math.Gain gain3(k=0.001/60)
    annotation (Placement(transformation(extent={{-5,-5},{5,5}},
        rotation=90,
        origin={65,-63})));
    Modelica.Blocks.Interfaces.RealInput Angiotensin2 annotation (Placement(transformation(extent={{70,68},{
          90,88}}), iconTransformation(extent={{-100,20},{-60,60}})));
equation
    connect(ReninPool.q_out, secretion.q_out)   annotation (Line(
      points={{-72,-44},{-8,-44}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(concentrationMeasure.q_in, ReninPool.q_out)   annotation (Line(
      points={{-62,-32},{-71.2,-32},{-71.2,-44},{-72,-44}},
      color={200,0,0},
      smooth=Smooth.None));
    connect(concentrationMeasure.concentration, busConnector.Renin) annotation (
    Line(
    points={{-62,-40},{-47,-40},{-47,90},{-78,90}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(ReninPool.q_out, Clearance.q_in) annotation (Line(
      points={{-72,-44},{-54,-44},{-54,-88},{-30,-88}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(ReninPool.solute, K.u) annotation (Line(
    points={{-66,-54},{-66,-59},{-38.6,-59}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Clearance.soluteFlow, K.y) annotation (Line(
    points={{-16,-84},{-16,-59},{-31.7,-59}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(busConnector.Kidney_NephronCount_Total_xNormal, CountEffect.u)
                                       annotation (Line(
      points={{-78,90},{-28.9,90},{-28.9,72},{38,72}},
      color={0,0,127},
      smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(hormoneFlowConstant1.y, CountEffect.yBase)
                                                   annotation (Line(
      points={{48.5,82},{46,82},{46,74}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(busConnector.ECFV_Vol, VODIST.u) annotation (Line(
      points={{-78,90},{-94.6,90},{-94.6,-2},{-75.2,-2}},
      color={0,0,127},
      smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(VODIST.y, ReninPool.solutionVolume) annotation (Line(
    points={{-61.4,-2},{-56,-2},{-56,-16},{-90,-16},{-90,-40},{-76,-40}},
    color={0,0,127},
    smooth=Smooth.None));

    connect(CountEffect.y, FunctionEffect.yBase) annotation (Line(
      points={{46,68},{46,68}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(BaseFraction.y, TGFEffect.yBase) annotation (Line(
      points={{2,-10},{2,-10}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(hormoneFlowConstant.y, BaseFraction.u) annotation (Line(
      points={{-11,-6},{-6,-6}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(ReninFree.solute, BaseFraction.yBase) annotation (Line(
    points={{30,-54},{30,-58},{18,-58},{18,0},{2,0},{2,-4}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(feedback.y,integrator. u) annotation (Line(
      points={{46,19},{46,18}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(integrator.y,feedback. u2) annotation (Line(
      points={{46,-5},{46,-8},{28,-8},{28,28},{38,28}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(integrator.y, synthesis.soluteFlow) annotation (Line(
    points={{46,-5},{46,-16},{42,-16}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(secretion.q_in, ReninFree.q_out) annotation (Line(
      points={{12,-44},{36,-44}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(ReninFree.q_out, synthesis.q_out) annotation (Line(
      points={{36,-44},{36,-20}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));

    connect(concentrationMeasure.concentration, Renin) annotation (Line(
      points={{-62,-40},{-52,-40},{-52,-36},{-38,-36}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(busConnector.BetaPool_Effect, betaReceptorsActivityFactor.BetaPool_Effect)
    annotation (Line(
      points={{-78,90},{-42,90},{-42,30},{-11.8,30}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-6,3},{-6,3}}));
    connect(busConnector.BetaBlocade_Effect, betaReceptorsActivityFactor.BetaBlockade_Effect)
    annotation (Line(
      points={{-78,90},{-42,90},{-42,24},{-11.8,24}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-6,3},{-6,3}}));
    connect(busConnector.GangliaKidney_NA, betaReceptorsActivityFactor.GangliaGeneral_NA)
    annotation (Line(
      points={{-78,90},{-42,90},{-42,18},{-11.8,18}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-6,3},{-6,3}}));
    connect(Constant2.y, NaEffect.yBase) annotation (Line(
      points={{66.75,71},{72,71},{72,66}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(NaEffect.y, ANPEffect.yBase) annotation (Line(
      points={{72,60},{72,62}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(ANPEffect.y, A2Effect.yBase) annotation (Line(
      points={{72,56},{72,58}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(A2Effect.y, FurosemideEffect.yBase) annotation (Line(
      points={{72,52},{72,54}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(busConnector.kidney_FunctionEffect, FunctionEffect.u) annotation (
      Line(
      points={{-78,90},{-28,90},{-28,66},{38,66}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-6,3},{-6,3}}));
    connect(TGFEffect1.y, feedback.u1) annotation (Line(
      points={{46,40},{46,36}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(FurosemideEffect.y, TGFEffect1.u) annotation (Line(
      points={{72,48},{72,44},{54,44}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(FurosemideEffect.u, busConnector.FurosemidePool_Loss) annotation (
     Line(
      points={{80,52},{98,52},{98,90},{-78,90}},
      color={0,0,127},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}}));
    connect(TGFEffect.u, FurosemideEffect.y) annotation (Line(
      points={{10,-12},{72,-12},{72,48}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(TGFEffect.y, SympsEffect.yBase) annotation (Line(
      points={{2,-16},{2,-22}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(SympsEffect.y, secretion.soluteFlow) annotation (Line(
      points={{2,-28},{2,-34},{2,-40},{-2,-40}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(betaReceptorsActivityFactor.y, SympsEffect.u) annotation (Line(
      points={{-2,17},{-2,6},{-28,6},{-28,-24},{-6,-24}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(Constant3.y, betaReceptorsActivityFactor.yBase) annotation (Line(
      points={{-5.25,39},{-2,39},{-2,31}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(SympsEffect1.y, TGFEffect1.yBase) annotation (Line(
      points={{46,50},{46,46}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(FunctionEffect.y, SympsEffect1.yBase) annotation (Line(
      points={{46,62},{46,56}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(betaReceptorsActivityFactor.y, SympsEffect1.u) annotation (Line(
      points={{-2,17},{-2,6},{18,6},{18,54},{38,54}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(NaEffect.u, busConnector.MD_Na) annotation (Line(
      points={{80,64},{98,64},{98,90},{-78,90}},
      color={0,0,127},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}}));
    connect(gain1.y, fluxReninFree.soluteFlow)
                                        annotation (Line(
      points={{65,-32.5},{67,-34},{67,-37}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(gain3.y, fluxReninGranules.soluteFlow)
                                      annotation (Line(
      points={{65,-57.5},{65,-53},{63,-53}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(fluxReninFree.q_out, ReninGranules.q_out) annotation (Line(
      points={{70,-39},{74,-39},{74,-44},{86,-44}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(fluxReninGranules.q_in, ReninGranules.q_out) annotation (Line(
      points={{70,-51},{74,-51},{74,-44},{86,-44}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(ReninFree.q_out, fluxReninFree.q_in) annotation (Line(
      points={{36,-44},{48,-44},{48,-39},{60,-39}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(ReninFree.q_out, fluxReninGranules.q_out) annotation (Line(
      points={{36,-44},{48,-44},{48,-51},{60,-51}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(ReninGranules.solute, gain3.u) annotation (Line(
    points={{80,-54},{80,-72},{64,-72},{64,-69},{65,-69}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(ReninFree.solute, gain1.u) annotation (Line(
    points={{30,-54},{30,-58},{58,-58},{58,-16},{65,-16},{65,-21}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(ANPEffect.u, busConnector.ANP) annotation (Line(
      points={{80,60},{98,60},{98,90},{-78,90}},
      color={0,0,127},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}}));
    connect(Angiotensin2, A2Effect.u) annotation (Line(
    points={{80,78},{98,78},{98,56},{80,56}},
    color={0,0,127},
    smooth=Smooth.None));
    annotation ( Icon(coordinateSystem(
          preserveAspectRatio=true, extent={{-100,-100},{100,100}}),
        graphics={Text(
          extent={{-112,108},{122,86}},
          lineColor={0,0,255},
          textString="%name")}));
end Renin;
