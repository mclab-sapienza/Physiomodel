within Physiomodel.Metabolism;
model Lipids
    extends Physiolibrary.Icons.Lipids;
    //outer parameter Real EFC_Vol(final displayUnit="ml");
    Physiolibrary.Chemical.Components.Substance LipidDepositsFA(stateName=
      "LipidDeposits.Mass", solute_start=12.0324/Substances.FattyAcids.mw)
    "amount of fatty acids stored as lipid deposits (initial 12.0324 kg)"
    annotation (Placement(transformation(extent={{98,12},{78,32}})));
    Physiolibrary.Chemical.Components.SolutePump LipidDeposits_Uptake(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{6,32},{26,52}})));
    Physiolibrary.Chemical.Components.SolutePump LipidDeposits_Release(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{26,-18},{6,2}})));
    Physiolibrary.Types.Constants.MolarFlowRateConst massFlowConstant2(k(
      displayUnit="mol/s") = 100e-6/Substances.FattyAcids.mw/60)
    "100 mg/min"
    annotation (Placement(transformation(extent={{32,58},{22,68}})));
    Physiolibrary.Blocks.Factors.Spline InsulinEffect(data={{0,0.5,0.0},{20,1.0,
      0.03},{100,2.0,0.0}})
    annotation (Placement(transformation(extent={{6,44},{26,64}})));
    Physiolibrary.Blocks.Factors.Spline FattyAcidEffect(data={{0,0.0,0.0},{15,
      1.0,0.10},{50,3.0,0.0}}, Xscale=1e-2/Substances.FattyAcids.mw)
    annotation (Placement(transformation(extent={{6,40},{26,60}})));
    Physiolibrary.Blocks.Factors.Spline GlucagonEffect(data={{120,1.0,0.0},{200,
      2.0,0.0}}, Xscale=1e-9)
    annotation (Placement(transformation(extent={{6,-2},{26,18}})));
    Physiolibrary.Blocks.Factors.Spline InsulinEffect_(data={{0,2.0,0.0},{20,
      1.0,-0.04},{100,0.0,0.0}})
    annotation (Placement(transformation(extent={{6,2},{26,22}})));
    Physiolibrary.Blocks.Factors.Spline EpinephrineEffect(data={{0,0.5,0.0},{40,
      1.0,0.013},{400,4.0,0.0}}, Xscale=1e-9/Substances.Epinephrine.mw)
    "40 pg/ml = 40e-9 kg/m3"
    annotation (Placement(transformation(extent={{6,-6},{26,14}})));
    Physiolibrary.Chemical.Interfaces.ChemicalPort_b FattyAcids(conc(final
      displayUnit="mg/ml"), q(final displayUnit="mg/min"))
    "extracellular storage" annotation (Placement(transformation(extent={{-76,
          -54},{-56,-34}}), iconTransformation(extent={{-10,-10},{10,10}})));
    Physiolibrary.Types.BusConnector busConnector annotation (Placement(
      transformation(extent={{-108,86},{-88,106}}), iconTransformation(
        extent={{-90,-48},{-70,-28}})));
    Physiolibrary.Chemical.Sensors.ConcentrationMeasure concentrationMeasure
    annotation (Placement(transformation(extent={{-44,-28},{-24,-8}})));
    Physiolibrary.Blocks.Factors.Spline FattyAcidEffect_(data={{0,3.0,0.0},{15,
      1.0,-0.04},{100,0.0,0.0}}, Xscale=1e-2/Substances.FattyAcids.mw)
    annotation (Placement(transformation(extent={{6,-10},{26,10}})));
    Physiolibrary.Chemical.Components.Substance Triglyceride(
    stateName="TriglyceridePool.Mass",
    useNormalizedVolume=false,
    solute_start=17000e-6/Substances.Triglycerides.mw) "initial 17000 mg"
    annotation (Placement(transformation(extent={{-56,56},{-76,76}})));
    Modelica.Blocks.Math.Gain K(k(unit="1/s")=0.0007/60)
    annotation (Placement(transformation(extent={{-56,50},{-50,56}})));
    Physiolibrary.Chemical.Sources.UnlimitedSolutePumpOut
                                              Decomposition(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{-58,32},{-38,52}})));
    Physiolibrary.Chemical.Components.Substance FAPool(
    stateName="FAPool.Mass",
    useNormalizedVolume=false,
    solute_start=2400e-6/Substances.FattyAcids.mw) "initial 2400 mg"
    annotation (Placement(transformation(extent={{0,-64},{20,-44}})));
    Physiolibrary.Chemical.Sources.UnlimitedSolutePumpOut
                                              FADecomposition(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{16,-90},{36,-70}})));
    Modelica.Blocks.Math.Gain K1(k(unit="1/s")=0.0007/60)
    annotation (Placement(transformation(extent={{16,-74},{22,-68}})));
    Physiolibrary.Chemical.Sensors.ConcentrationMeasure concentrationMeasure2
    annotation (Placement(transformation(
      extent={{-10,-10},{10,10}},
      rotation=270,
      origin={24,-48})));
    Physiolibrary.Chemical.Interfaces.ChemicalPort_b toTriglicerides(conc(
      final displayUnit="mg/ml"), q(final displayUnit="mg/min"))
    "from GILumen" annotation (Placement(transformation(extent={{-108,72},{-88,
          92}}), iconTransformation(extent={{-10,-90},{10,-70}})));
    Physiolibrary.Chemical.Components.SolutePump TriglycerideHydrolysis(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(
      extent={{-10,-10},{10,10}},
      rotation=270,
      origin={-66,4})));
    Physiolibrary.Blocks.Factors.Spline TriglycerideEffect1(data={{0,0.0,0.0},{
      100,1.0,0.03},{200,3.0,0.0}}, Xscale=1e-2/Substances.Triglycerides.mw)
    annotation (Placement(transformation(
      extent={{-10,-10},{10,10}},
      rotation=270,
      origin={-54,4})));
    Physiolibrary.Chemical.Sensors.ConcentrationMeasure concentrationMeasure3
    annotation (Placement(transformation(
      extent={{-10,-10},{10,10}},
      rotation=270,
      origin={-66,18})));
    Physiomodel.Metabolism.deprecated.ContinualReaction TRIG_TO_FFA(a=0.89*(Substances.Triglycerides.mw
      /Substances.FattyAcids.mw)) "may be 3:1?" annotation (Placement(
      transformation(
      extent={{10,-10},{-10,10}},
      rotation=90,
      origin={-66,-22})));
    Physiolibrary.Types.Constants.MolarFlowRateConst massFlowConstant1(k(
      displayUnit="mmol/min") = 100e-6/Substances.FattyAcids.mw/60)
    "100 mg/min"
    annotation (Placement(transformation(extent={{-32,4},{-42,14}})));
    Physiomodel.Metabolism.deprecated.ContinualReaction FFA_TO_TRIG(a=0.89*(Substances.Triglycerides.mw
      /Substances.FattyAcids.mw)) annotation (Placement(transformation(
      extent={{-10,-10},{10,10}},
      rotation=180,
      origin={-78,84})));
    Modelica.Blocks.Math.Gain FA_releaseBase(k=0.0075e-3/60)
    "base fatty-acids flux from lipid deposits of 13 kg is 100 mg/min"
    annotation (Placement(transformation(extent={{44,14},{32,26}})));
equation
    connect(InsulinEffect.y, FattyAcidEffect.yBase)
                                             annotation (Line(
      points={{16,50},{16,52}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(EpinephrineEffect.yBase,GlucagonEffect. y) annotation (Line(
      points={{16,6},{16,4}},
      color={0,0,127},
      smooth=Smooth.None));

    connect(FattyAcids, concentrationMeasure.q_in) annotation (Line(
      points={{-66,-44},{-30,-44},{-30,-20},{-34,-20}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(massFlowConstant2.y, InsulinEffect.yBase) annotation (Line(
      points={{20.75,63},{16,63},{16,56}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(busConnector.Insulin, InsulinEffect.u) annotation (Line(
      points={{-98,96},{-28,96},{-28,54},{8,54}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-6,3},{-6,3}}));
    connect(FattyAcidEffect.y, LipidDeposits_Uptake.soluteFlow)
                                                   annotation (Line(
      points={{16,46},{20,46}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(busConnector.Insulin, InsulinEffect_.u) annotation (Line(
      points={{-98,96},{-28,96},{-28,12},{8,12}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-6,3},{-6,3}}));
    connect(GlucagonEffect.yBase, InsulinEffect_.y) annotation (Line(
      points={{16,10},{16,8}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(busConnector.Glucagon_conc, GlucagonEffect.u) annotation (Line(
      points={{-98,96},{-28,96},{-28,8},{8,8}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-6,3},{-6,3}}));
    connect(LipidDeposits_Release.soluteFlow, FattyAcidEffect_.y)
                                                  annotation (Line(
      points={{12,-4},{14,-4},{14,-6},{16,-6},{16,-4}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(EpinephrineEffect.y, FattyAcidEffect_.yBase) annotation (Line(
      points={{16,0},{16,2}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(FattyAcids, LipidDeposits_Release.q_out)
                                     annotation (Line(
      points={{-66,-44},{-30,-44},{-30,-8},{6,-8}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(Decomposition.q_in, Triglyceride.q_out) annotation (Line(
      points={{-58,42},{-66,42},{-66,66}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(FAPool.q_out, concentrationMeasure2.q_in)
                                                   annotation (Line(
      points={{10,-54},{16,-54},{16,-48},{22,-48}},
      color={200,0,0},
      smooth=Smooth.None));
    connect(FAPool.q_out, FattyAcids) annotation (Line(
      points={{10,-54},{-30,-54},{-30,-44},{-66,-44}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(TriglycerideEffect1.y, TriglycerideHydrolysis.soluteFlow)
                                                   annotation (Line(
      points={{-58,4},{-59,4},{-59,-8.88178e-016},{-62,-8.88178e-016}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(Triglyceride.q_out, TriglycerideHydrolysis.q_in)
                                                         annotation (Line(
      points={{-66,66},{-66,14}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(Triglyceride.q_out,concentrationMeasure3. q_in) annotation (Line(
      points={{-66,66},{-66,18},{-68,18}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(TriglycerideEffect1.yBase, massFlowConstant1.y) annotation (Line(
      points={{-52,4},{-52.75,4},{-52.75,9},{-43.25,9}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(FattyAcids, LipidDeposits_Uptake.q_in) annotation (Line(
      points={{-66,-44},{-30,-44},{-30,42},{6,42}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));

    connect(FAPool.q_out, FADecomposition.q_in) annotation (Line(
      points={{10,-54},{-2,-54},{-2,-80},{16,-80}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(FFA_TO_TRIG.A, Triglyceride.q_out) annotation (Line(
      points={{-68,84},{-66,66}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(toTriglicerides, FFA_TO_TRIG.B) annotation (Line(
      points={{-98,82},{-92,82},{-92,81},{-88,81}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(TriglycerideHydrolysis.q_out, TRIG_TO_FFA.A) annotation (Line(
      points={{-66,-6},{-66,-12}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(TRIG_TO_FFA.B, FattyAcids) annotation (Line(
      points={{-69,-32},{-66,-32},{-66,-44}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(busConnector.ECFV_Vol, FAPool.solutionVolume) annotation (Line(
    points={{-98,96},{-100,96},{-100,-50},{6,-50}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(FAPool.solute, K1.u) annotation (Line(
    points={{16,-64},{16,-71},{15.4,-71}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(K1.y, FADecomposition.soluteFlow) annotation (Line(
    points={{22.3,-71},{30,-71},{30,-76}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(concentrationMeasure.concentration, FattyAcidEffect_.u) annotation (
    Line(
    points={{-34,-14},{-34,0},{8,0}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(concentrationMeasure.concentration, FattyAcidEffect.u) annotation (
    Line(
    points={{-34,-14},{-34,50},{8,50}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(LipidDepositsFA.q_out, LipidDeposits_Release.q_in) annotation (Line(
    points={{88,22},{58,22},{58,-8},{26,-8}},
    color={107,45,134},
    thickness=1,
    smooth=Smooth.None));
    connect(LipidDepositsFA.q_out, LipidDeposits_Uptake.q_out) annotation (Line(
    points={{88,22},{58,22},{58,42},{26,42}},
    color={107,45,134},
    thickness=1,
    smooth=Smooth.None));
    connect(Triglyceride.solutionVolume, busConnector.ECFV_Vol) annotation (
    Line(
    points={{-62,70},{-28,70},{-28,96},{-98,96}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(Triglyceride.solute, K.u) annotation (Line(
    points={{-72,56},{-64,56},{-64,53},{-56.6,53}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(K.y, Decomposition.soluteFlow) annotation (Line(
    points={{-49.7,53},{-44,53},{-44,46}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(concentrationMeasure3.concentration, TriglycerideEffect1.u)
    annotation (Line(
    points={{-62,18},{-54,18},{-54,12}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(LipidDepositsFA.solute, busConnector.LipidDepositsFA) annotation (
    Line(
    points={{82,12},{82,2},{100,2},{100,96},{-98,96}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(busConnector.Epinephrine, EpinephrineEffect.u) annotation (Line(
    points={{-98,96},{-28,96},{-28,4},{8,4}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(FA_releaseBase.u, LipidDepositsFA.solute) annotation (Line(
    points={{45.2,20},{52,20},{52,4},{82,4},{82,12}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(FA_releaseBase.y, InsulinEffect_.yBase) annotation (Line(
    points={{31.4,20},{16,20},{16,14}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(concentrationMeasure3.concentration, busConnector.Triglycerides)
    annotation (Line(
    points={{-62,18},{-36,18},{-36,96},{-98,96}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(concentrationMeasure2.concentration, busConnector.FattyAcids)
    annotation (Line(
    points={{28,-48},{100,-48},{100,96},{-98,96}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    annotation (                Icon(coordinateSystem(
          preserveAspectRatio=true, extent={{-100,-100},{100,100}},
        grid={2,2}), graphics={
        Text(
          extent={{-168,-100},{152,-128}},
          lineColor={0,0,255},
          textString="%name"),
        Rectangle(extent={{-100,100},{100,-100}}, lineColor={0,0,0})}));
end Lipids;