within Physiomodel.Metabolism;
model KetoAcids
    extends Physiolibrary.Icons.KetoAcids;
    Physiolibrary.Chemical.Components.Substance KAPool(
    stateName="KAPool.Mass",
    useNormalizedVolume=false,
    solute_start=0.000725)
    "initial 0.725 mmol,  (initial of RC2013: 316.7 mg)"
    annotation (Placement(transformation(extent={{-32,14},{-12,34}})));
    Physiolibrary.Chemical.Sources.UnlimitedSolutePump KAPump(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{-74,32},{-54,52}})));
    Physiolibrary.Chemical.Components.Stream glomerulusKARate(
    useSolutionFlowInput=true)
    annotation (Placement(transformation(extent={{-18,-56},{2,-36}})));
    Electrolytes.Phosphate.GlomerulusStrongAnionFiltration glomerulus
    annotation (Placement(transformation(extent={{-42,-56},{-22,-36}})));
    Physiolibrary.Chemical.Components.Reabsorption NephronKetoacids(
    useBaseReabsorption=true,
    useEffect=true,
    useMaxReabInput=true)
    annotation (Placement(transformation(extent={{42,-56},{62,-36}})));
    Physiolibrary.Types.Constants.FractionConst             Constant(k=1)
    annotation (Placement(transformation(extent={{72,-22},{64,-14}})));
    Physiolibrary.Blocks.Factors.Spline PhEffect(data={{7.00,0.0,0},{7.40,1.0,0}})
    annotation (Placement(transformation(extent={{16,-36},{36,-16}})));
    Physiolibrary.Types.Constants.FractionConst             Constant1(k=1)
    annotation (Placement(transformation(extent={{38,-22},{30,-14}})));
    Physiolibrary.Chemical.Sources.UnlimitedSolutePumpOut
                                              KADecomposition(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{-50,26},{-70,6}})));
    Modelica.Blocks.Math.Gain K(k=0.024/60)
    "(before 0.0007 per min) marek fix: to reach steady state of ketogenesis and brain consumption is needed the typical flux of 1.74 mg/min"
    annotation (Placement(transformation(extent={{-32,6},{-38,12}})));
    Physiolibrary.Chemical.Interfaces.ChemicalPort_b q_out(conc(final
      displayUnit="mg/ml"), q(final displayUnit="mg/min")) annotation (
    Placement(transformation(extent={{-68,64},{-52,80}}),
      iconTransformation(extent={{-10,-70},{10,-50}})));
    Physiolibrary.Chemical.Sensors.MolarFlowMeasure flowMeasure
    annotation (Placement(transformation(extent={{70,-36},{90,-56}})));
    Physiolibrary.Types.BusConnector busConnector annotation (Placement(
      transformation(extent={{-96,82},{-76,102}}), iconTransformation(
        extent={{-100,90},{-80,110}})));
    Physiolibrary.Types.Constants.MolarFlowRateConst electrolytesFlowConstant4(
                                                                          k=
     0) annotation (Placement(transformation(extent={{-78,48},{-72,54}})));
    Physiolibrary.Chemical.Sensors.ConcentrationMeasure concentrationMeasure1
    annotation (Placement(transformation(
      extent={{-10,-10},{10,10}},
      origin={-8,44})));
    Physiolibrary.Chemical.Sensors.MolarFlowMeasure flowMeasure1
    annotation (Placement(transformation(extent={{-40,62},{-20,42}})));
    Electrolytes.Bladder bladder(                      stateVarName=
        "BladderKetoacid.Mass")
    annotation (Placement(transformation(extent={{78,-100},{98,-80}})));
    Physiolibrary.Types.Constants.MolarFlowRateConst Constant2(k(displayUnit=
        "mmol/min") = 30e-6/60/Substances.KetoAcids.mw) "30 mg/min"
      annotation (Placement(transformation(extent={{30,-66},{38,-58}})));
equation
    connect(glomerulus.q_out,glomerulusKARate. q_in)     annotation (Line(
      points={{-22,-46},{-18,-46}},
      color={0,0,0},
      smooth=Smooth.None,
      thickness=1));
    connect(glomerulusKARate.q_out, NephronKetoacids.Inflow) annotation (
      Line(
      points={{2,-46},{22,-46},{22,-42},{42,-42}},
      color={200,0,0},
      smooth=Smooth.None,
      thickness=1));
    connect(NephronKetoacids.Effect, Constant.y) annotation (Line(
    points={{52,-36},{52,-18},{63,-18}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Constant1.y, PhEffect.yBase) annotation (Line(
      points={{29,-18},{26,-18},{26,-24}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(NephronKetoacids.Outflow, flowMeasure.q_in) annotation (Line(
      points={{62,-42},{66,-42},{66,-46},{70,-46}},
      color={200,0,0},
      smooth=Smooth.None,
      thickness=1));
    connect(PhEffect.u,busConnector. BloodPh_ArtysPh) annotation (Line(
      points={{18,-26},{-84,-26},{-84,92},{-86,92}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(busConnector.BloodCations, glomerulus.Cations) annotation (Line(
      points={{-86,92},{-84,92},{-84,-28},{-38,-28},{-38,-41}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(electrolytesFlowConstant4.y, KAPump.soluteFlow) annotation (Line(
    points={{-71.25,51},{-60,51},{-60,46}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(flowMeasure.molarFlowRate, busConnector.CD_KA_Outflow) annotation (
    Line(
    points={{80,-38},{80,92},{-86,92}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(KAPool.q_out, concentrationMeasure1.q_in) annotation (Line(
      points={{-22,24},{-16,24},{-16,44},{-8,44}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(KAPump.q_out, flowMeasure1.q_in) annotation (Line(
      points={{-54,42},{-46,42},{-46,52},{-40,52}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(KADecomposition.q_in, flowMeasure1.q_in) annotation (Line(
      points={{-50,16},{-46,16},{-46,52},{-40,52}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(q_out, flowMeasure1.q_in) annotation (Line(
      points={{-60,72},{-46,72},{-46,52},{-40,52}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(flowMeasure1.q_out, KAPool.q_out) annotation (Line(
      points={{-20,52},{-22,52},{-22,24}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(PhEffect.y, NephronKetoacids.baseReabsorption) annotation (Line(
    points={{26,-30},{26,-32},{56,-32},{56,-36}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(KAPool.q_out, glomerulus.q_in) annotation (Line(
      points={{-22,24},{6,24},{6,-4},{-62,-4},{-62,-46},{-42,-46}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(NephronKetoacids.Reabsorption, KAPool.q_out) annotation (Line(
      points={{52,-56},{52,-70},{-62,-70},{-62,-4},{6,-4},{6,24},{-22,24}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));

    connect(busConnector.BloodIons_ProteinAnions, glomerulus.ProteinAnions)
    annotation (Line(
      points={{-86,92},{-84,92},{-84,-28},{-34,-28},{-34,-41}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-6,3},{-6,3}}));
    connect(flowMeasure.q_out, bladder.q_in) annotation (Line(
      points={{90,-46},{88,-46},{88,-82}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(bladder.busConnector, busConnector) annotation (Line(
      points={{96,-82},{96,92},{-86,92}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None));
    connect(glomerulusKARate.solutionFlow, busConnector.GlomerulusFiltrate_GFR)
    annotation (Line(
    points={{-8,-39},{-8,-28},{-84,-28},{-84,92},{-86,92}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Constant2.y, NephronKetoacids.MaxReab) annotation (Line(
    points={{39,-62},{44,-62},{44,-52}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(busConnector.ECFV_Vol, KAPool.solutionVolume) annotation (Line(
    points={{-86,92},{-84,92},{-84,28},{-26,28}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(KAPool.solute, busConnector.KAPool_Osmoles) annotation (Line(
    points={{-16,14},{-16,8},{82,8},{82,92},{-86,92}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(KAPool.solute, K.u) annotation (Line(
    points={{-16,14},{-16,9},{-31.4,9}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(flowMeasure1.molarFlowRate, busConnector.KA_Change_mmol_per_min)
    annotation (Line(
    points={{-30,60},{-30,92},{-86,92}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(concentrationMeasure1.concentration, busConnector.KAPool)
    annotation (Line(
    points={{-8,36},{44,36},{44,92},{-86,92}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(K.y, KADecomposition.soluteFlow) annotation (Line(
    points={{-38.3,9},{-64.15,9},{-64.15,12},{-64,12}},
    color={0,0,127},
    smooth=Smooth.None));
    annotation (Diagram(coordinateSystem(preserveAspectRatio=false,extent={{-100,
          -100},{100,100}}),   graphics={Text(
          extent={{-80,-18},{-64,-20}},
          lineColor={0,0,0},
          textString="StrongAnions")}),         Icon(coordinateSystem(
          preserveAspectRatio=true, extent={{-100,-100},{100,100}}),
        graphics={
        Text(
          extent={{-162,-98},{158,-126}},
          lineColor={0,0,255},
          textString="%name"),
        Rectangle(extent={{-100,100},{100,-100}}, lineColor={0,0,0})}));
end KetoAcids;