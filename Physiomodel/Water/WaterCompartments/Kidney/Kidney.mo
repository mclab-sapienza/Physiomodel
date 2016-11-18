within Physiomodel.Water.WaterCompartments.Kidney;

model Kidney
    extends Physiolibrary.Icons.Kidney;
    import QHP = Physiomodel;
    Physiolibrary.Osmotic.Interfaces.OsmoticPort_b     urine
    "H2O excretion" annotation (Placement(transformation(extent={{78,-82},
          {100,-62}}),iconTransformation(extent={{-10,-110},{10,-90}})));
    Physiolibrary.Osmotic.Components.Reabsorption   LoopOfHenle
    annotation (Placement(transformation(extent={{-12,-68},{6,-50}})));
    Modelica.Blocks.Math.Gain gain(k=0.37)
    annotation (Placement(transformation(extent={{4,-4},{-4,4}},      rotation=180,
        origin={-24,-64})));
    Physiolibrary.Blocks.Factors.Normalization ADHEffect(yBase(nominal=1e-5),
    y(nominal=1e-7))
    annotation (Placement(transformation(extent={{34,50},{14,70}})));
    Physiolibrary.Osmotic.Components.Reabsorption   CollectingDuct(
    useExternalOutflowMin=true)
    annotation (Placement(transformation(extent={{34,-26},{54,-6}})));
    Modelica.Blocks.Math.Gain gain1(k=0.5)
    annotation (Placement(transformation(extent={{54,24},{50,28}})));
    Modelica.Blocks.Math.Sum sum1(nin=4)
    annotation (Placement(transformation(extent={{3,-3},{-5,5}},
        rotation=90,
        origin={49,17})));
    Physiolibrary.Blocks.Factors.Normalization MedullaNaEffect
    annotation (Placement(transformation(extent={{58,-4},{38,16}})));
    Physiolibrary.Osmotic.Interfaces.OsmoticPort_a plasma "blood plasma"
    annotation (Placement(transformation(extent={{-108,20},{-88,40}}),
        iconTransformation(extent={{30,-10},{50,10}})));
    QHP.Water.WaterCompartments.Kidney.CD_H2OChannels H2OChannels(
    initialActive=0.969492,
    InactivateKinv=0.008,
    ReactivateK=6.6666666666667e-06)
    annotation (Placement(transformation(extent={{34,-68},{54,-48}})));
    Physiolibrary.Blocks.Math.Reciprocal inv1 annotation (Placement(
      transformation(
      extent={{2,-2},{-2,2}},
      origin={38,60})));
    Physiolibrary.Blocks.Math.Reciprocal inv2 annotation (Placement(
      transformation(
      extent={{-5,-5},{3,3}},
      rotation=180,
      origin={65,5})));
    Physiolibrary.Osmotic.Sensors.FlowMeasure   flowMeasure1
    annotation (Placement(transformation(extent={{62,-2},{82,-22}})));
    Physiolibrary.Blocks.Factors.LagSpline
                                    NephronADHOnPerm(data={{0.0,0.3,0},
      {2.0,1.0,0.5},{10.0,3.0,0}}, Xscale=1e-9/QHP.Substances.Vasopressin.mw,
    HalfTime=Modelica.Math.log(2)*20*60,
    initialValue=2.0)
    annotation (Placement(transformation(
      extent={{10,-10},{-10,10}},
      rotation=270,
      origin={72,-44})));
    Physiolibrary.Blocks.Factors.Spline PermOnOutflow(data={{0.3,0.00,0},{
      1.0,0.93,0.1},{3.0,1.00,0}}) annotation (Placement(transformation(
      extent={{10,-10},{-10,10}},
      rotation=270,
      origin={66,-30})));
    Physiolibrary.Types.Constants.FractionConst             Constant(k=1)
    annotation (Placement(transformation(extent={{76,-32},{72,-28}})));
    Physiolibrary.Types.Constants.FractionConst             Constant1(k=1)
    annotation (Placement(transformation(extent={{38,72},{44,78}})));
    Physiolibrary.Blocks.Factors.LagSpline
                                    NephronADHEffect(data={{0.0,0.060,0},
      {2.0,0.110,0.02},{10,0.160,0}}, Xscale=1e-9/QHP.Substances.Vasopressin.mw,
    HalfTime=Modelica.Math.log(2)*20*60,
    initialValue=2.0,
    Yscale=1e3) "initial: 2 pg/ml = 2e-9 kg/m3, NephronADH.Tau = 20 min"
    annotation (Placement(transformation(
      extent={{10,-10},{-10,10}},
      origin={46,68})));
    Physiolibrary.Osmotic.Sensors.FlowMeasure   flowMeasure2 annotation (
    Placement(transformation(
      extent={{-10,10},{10,-10}},
      rotation=180,
      origin={26,-80})));
    Physiolibrary.Osmotic.Sensors.FlowMeasure   flowMeasure3 annotation (
    Placement(transformation(
      extent={{-10,10},{10,-10}},
      rotation=90,
      origin={12,-30})));
    Physiolibrary.Types.BusConnector busConnector annotation (Placement(
      transformation(extent={{-102,76},{-82,96}}), iconTransformation(
        extent={{-70,66},{-50,86}})));
    Physiolibrary.Osmotic.Components.Membrane glomerulus(
      useHydraulicPressureInputs=true,
    useConductanceInput=true)
    annotation (Placement(transformation(extent={{-66,48},{-46,68}})));
    Physiolibrary.Osmotic.Sensors.FlowMeasure flowMeasure4 annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        rotation=270,
        origin={-44,24})));
    Physiolibrary.Types.Constants.PressureConst PelvisPressure(k=0)
    annotation (Placement(transformation(extent={{-34,70},{-42,78}})));
    Physiolibrary.Osmotic.Components.Reabsorption ProximalTubule
    annotation (Placement(transformation(extent={{10,-10},{-10,10}},
      rotation=90,
      origin={-18,44})));
    Physiolibrary.Types.Constants.VolumeConst MedullaVolume(k=3.1e-05)
    annotation (Placement(transformation(extent={{-86,-94},{-78,-86}})));
    Physiolibrary.Types.Constants.OsmoticPermeabilityConst Perm(k(displayUnit="ml/(mmHg.min)")=
         6.500533657329e-10)
    "glomerular Kf and PT conductance (permeability"
    annotation (Placement(transformation(extent={{-68,90},{-60,98}})));
    Physiolibrary.Blocks.Factors.Normalization NephronCountEffect
    annotation (Placement(transformation(extent={{-66,68},{-46,88}})));
    Physiolibrary.Osmotic.Components.IdealOverflowFiltration
                                                       glomerulusFlow(
      useSolutionFlowInput=true) annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={-78,44})));
    Physiolibrary.Osmotic.Components.SolventFlux distalTubule(
    useSolutionFlowInput=true) annotation (Placement(transformation(
      extent={{-10,-10},{10,10}},
      origin={24,46})));
    QHP.Water.WaterCompartments.Kidney.ZeroOsmol zeroOsmol annotation (
    Placement(transformation(
      extent={{-10,-10},{10,10}},
      rotation=90,
      origin={-4,70})));
equation

    connect(gain1.y, sum1.u[1]) annotation (Line(
      points={{49.8,26},{48.6,26},{48.6,20.8}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(MedullaNaEffect.yBase, sum1.y)   annotation (Line(
      points={{48,8},{48,11.6}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(inv1.y, ADHEffect.u)  annotation (Line(
      points={{35.8,60},{32,60}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(inv2.y, MedullaNaEffect.u) annotation (Line(
      points={{61.6,6},{56,6}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(H2OChannels.Active, NephronADHOnPerm.yBase) annotation (Line(
      points={{55.6,-51.4},{66,-51.4},{66,-58},{78,-58},{78,-44},{74,
        -44}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(NephronADHOnPerm.y, PermOnOutflow.u) annotation (Line(
      points={{68,-44},{66,-44},{66,-38}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(PermOnOutflow.y, CollectingDuct.FractReab) annotation (Line(
      points={{62,-30},{30,-30},{30,-20},{36,-20}},
      color={0,0,127},
      smooth=Smooth.None));

    connect(Constant.y, PermOnOutflow.yBase) annotation (Line(
      points={{71.5,-30},{68,-30}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(Constant1.y, NephronADHEffect.yBase) annotation (Line(
      points={{44.75,75},{46,75},{46,70}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(NephronADHEffect.y, inv1.u) annotation (Line(
      points={{46,64},{46,60},{40.4,60}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(LoopOfHenle.FractReab, gain.y) annotation (Line(
      points={{-10.2,-62.6},{-15.82,-62.6},{-15.82,-64},{-19.6,-64}},
      color={0,0,127},
      smooth=Smooth.None));

    connect(CollectingDuct.outflowMin, MedullaNaEffect.y) annotation (
      Line(
      points={{48,-8},{48,2}},
      color={0,0,127},
      smooth=Smooth.None));

    //!!!

    connect(busConnector.DT_Na_Outflow, ADHEffect.yBase)       annotation (Line(
      points={{-92,86},{24,86},{24,62}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(gain.u, busConnector.LH_Na_FractReab) annotation (Line(
      points={{-28.8,-64},{-36,-64},{-36,86},{-92,86}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(inv2.u, busConnector.MedullaNa_conc) annotation (Line(
      points={{70.8,6},{96,6},{96,86},{-92,86}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(busConnector.CD_Glucose_Outflow, gain1.u) annotation (Line(
      points={{-92,86},{96.1,86},{96.1,26},{54.4,26}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(busConnector.CD_NH4_Outflow, sum1.u[2]) annotation (Line(
      points={{-92,86},{98,86},{98,20.8},{48.2,20.8}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(busConnector.CD_K_Outflow, sum1.u[3]) annotation (Line(
      points={{-92,86},{98,86},{98,20.8},{47.8,20.8}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(busConnector.CD_Na_Outflow, sum1.u[4]) annotation (Line(
      points={{-92,86},{98,86},{98,20.8},{47.4,20.8}},
      color={0,0,127},
      smooth=Smooth.None));

    connect(NephronADHEffect.u, busConnector.Vasopressin) annotation (Line(
    points={{54,68},{78,68},{78,86},{-92,86}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(NephronADHOnPerm.u, busConnector.Vasopressin) annotation (Line(
    points={{72,-52},{96,-52},{96,86},{-92,86}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(busConnector.GlomerulusBloodPressure, glomerulus.hydraulicPressureIn)
    annotation (Line(
      points={{-92,86},{-92,66},{-64,66}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-6,3},{-6,3}}));
    connect(glomerulus.q_out, flowMeasure4.q_in) annotation (Line(
      points={{-46,58},{-44,58},{-44,34}},
      color={127,127,0},
      thickness=1,
      smooth=Smooth.None));
    connect(PelvisPressure.y, glomerulus.hydraulicPressureOut) annotation (
    Line(
    points={{-43,74},{-48,74},{-48,66}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(busConnector.GlomerulusFiltrate_GFR, flowMeasure4.volumeFlowRate)
    annotation (Line(
      points={{-92,86},{-92,24},{-52,24}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-6,3},{-6,3}}));
    connect(flowMeasure4.q_out, ProximalTubule.Inflow) annotation (Line(
      points={{-44,14},{-44,12},{-34,12},{-34,58},{-22,58},{-22,54}},
      color={127,127,0},
      thickness=1,
      smooth=Smooth.None));
    connect(ProximalTubule.Outflow, LoopOfHenle.Inflow) annotation (Line(
      points={{-22,34},{-22,-55.4},{-12,-55.4}},
      color={127,127,0},
      thickness=1,
      smooth=Smooth.None));
    connect(LoopOfHenle.Outflow, flowMeasure3.q_in) annotation (Line(
      points={{6,-55.4},{6,-56},{12,-56},{12,-40}},
      color={127,127,0},
      thickness=1,
      smooth=Smooth.None));
    connect(busConnector.LH_H2O_Outflow, flowMeasure3.volumeFlowRate) annotation (
     Line(
      points={{-92,86},{-92,-30},{4,-30}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-6,3},{-6,3}}));
    connect(flowMeasure1.volumeFlowRate, busConnector.CD_H2O_Outflow) annotation (
     Line(
      points={{72,-4},{98,-4},{98,86},{-92,86}},
      color={0,0,127},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}}));
    connect(CollectingDuct.Reabsorption, H2OChannels.CD_H2O_Reab) annotation (
      Line(
      points={{44,-26},{44,-48}},
      color={127,127,0},
      thickness=1,
      smooth=Smooth.None));
    connect(flowMeasure2.volumeFlowRate, busConnector.CD_H2O_Reab) annotation (
      Line(
      points={{26,-88},{98,-88},{98,86},{-92,86}},
      color={0,0,127},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}}));
    connect(flowMeasure2.q_in, H2OChannels.q_out) annotation (Line(
      points={{36,-80},{44,-80},{44,-68}},
      color={127,127,0},
      thickness=1,
      smooth=Smooth.None));
    connect(flowMeasure2.q_out, plasma) annotation (Line(
      points={{16,-80},{-98,-80},{-98,30}},
      color={127,127,0},
      thickness=1,
      smooth=Smooth.None));
    connect(LoopOfHenle.Reabsorption, plasma) annotation (Line(
      points={{-3,-68},{-2,-68},{-2,-80},{-98,-80},{-98,30}},
      color={127,127,0},
      thickness=1,
      smooth=Smooth.None));

    connect(ProximalTubule.FractReab, busConnector.PT_Na_FractReab) annotation (Line(
      points={{-14,52},{-14,86},{-92,86}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(MedullaVolume.y, busConnector.Medulla_Volume) annotation (Line(
    points={{-77,-90},{98,-90},{98,86},{-92,86}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(busConnector.Glomerulus_GFR, flowMeasure4.volumeFlowRate)
    annotation (Line(
    points={{-92,86},{-92,24},{-52,24}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None));
    connect(CollectingDuct.Outflow, flowMeasure1.q_in) annotation (Line(
    points={{54,-12},{62,-12}},
    color={127,127,0},
    thickness=1,
    smooth=Smooth.None));
    connect(flowMeasure1.q_out, urine) annotation (Line(
    points={{82,-12},{94,-12},{94,-72},{89,-72}},
    color={127,127,0},
    thickness=1,
    smooth=Smooth.None));
    connect(Perm.y, NephronCountEffect.yBase) annotation (Line(
    points={{-59,94},{-56,94},{-56,80}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(NephronCountEffect.y, glomerulus.conduction) annotation (Line(
    points={{-56,74},{-56,66}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(busConnector.Kidney_NephronCount_Total_xNormal,
    NephronCountEffect.u) annotation (Line(
    points={{-92,86},{-92,78},{-64,78}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(plasma, glomerulusFlow.port_a) annotation (Line(
      points={{-98,30},{-82,30},{-82,34.4}},
      color={127,127,0},
      thickness=1,
      smooth=Smooth.None));
    connect(glomerulus.q_in, glomerulusFlow.filtrate) annotation (Line(
      points={{-66,58},{-66,44},{-67.8,44}},
      color={127,127,0},
      thickness=1,
      smooth=Smooth.None));
    connect(busConnector.KidneyPlasmaFlow, glomerulusFlow.solutionFlow)
    annotation (Line(
      points={{-92,86},{-92,44},{-85,44}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-6,3},{-6,3}}));
    connect(ADHEffect.y, distalTubule.solutionFlow) annotation (Line(
    points={{24,56},{24,53}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(flowMeasure3.q_out, distalTubule.q_in) annotation (Line(
    points={{12,-20},{12,46},{14,46}},
    color={127,127,0},
    thickness=1,
    smooth=Smooth.None));
    connect(distalTubule.q_out, CollectingDuct.Inflow) annotation (Line(
    points={{34,46},{40,46},{40,36},{30,36},{30,-12},{34,-12}},
    color={127,127,0},
    thickness=1,
    smooth=Smooth.None));
    connect(distalTubule.q_in, zeroOsmol.q_in) annotation (Line(
    points={{14,46},{-4,46},{-4,60}},
    color={127,127,0},
    thickness=1,
    smooth=Smooth.None));
    connect(ProximalTubule.Reabsorption, zeroOsmol.q_in) annotation (Line(
    points={{-8,44},{-4,44},{-4,60}},
    color={127,127,0},
    thickness=1,
    smooth=Smooth.None));
    connect(zeroOsmol.q_out, plasma) annotation (Line(
    points={{-4,80},{-4,100},{-98,100},{-98,30}},
    color={127,127,0},
    thickness=1,
    smooth=Smooth.None));
end Kidney;
