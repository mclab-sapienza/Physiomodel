within Physiomodel.Electrolytes.Phosphate;
model Phosphate2
    import Physiomodel;
    extends Physiolibrary.Icons.Phosphate;
    Physiolibrary.Chemical.Components.Substance PO4Pool(
    stateName="PO4Pool.Mass",
    useNormalizedVolume=false,
    solute_start=(2.43011)/1000)
    annotation (Placement(transformation(extent={{-64,14},{-44,34}})));
    Physiolibrary.Chemical.Sources.UnlimitedSolutePump Diet(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{-84,-4},{-64,16}})));
    Physiolibrary.Chemical.Components.Stream glomerulusPhosphateRate(
    useSolutionFlowInput=true)
    annotation (Placement(transformation(extent={{0,14},{20,34}})));
    Physiomodel.Electrolytes.Sulphate.GlomerulusStrongAnionFiltration glomerulus
    annotation (Placement(transformation(extent={{-28,14},{-8,34}})));
    Physiolibrary.Chemical.Sensors.ConcentrationMeasure concentrationMeasure
    annotation (Placement(transformation(
    extent={{-10,-10},{10,10}},
    rotation=270,
    origin={-28,2})));
    Modelica.Blocks.Math.Gain gain(k=1000)
    annotation (Placement(transformation(extent={{-18,0},{-14,4}})));
    Physiolibrary.Chemical.Sensors.MolarFlowMeasure flowMeasure
    annotation (Placement(transformation(extent={{20,34},{40,14}})));
    Modelica.Blocks.Math.Gain gain1(k=0.5)
    annotation (Placement(transformation(extent={{-50,-14},{-46,-10}})));
    Physiolibrary.Chemical.Sensors.ConcentrationMeasure concentrationMeasure1(
    toAnotherUnitCoef=1000, unitsString="mmol/l") annotation (Placement(
    transformation(
    extent={{-10,-10},{10,10}},
    origin={-60,60})));
    Physiolibrary.Types.BusConnector busConnector annotation (Placement(
    transformation(extent={{-90,76},{-78,88}}), iconTransformation(
      extent={{60,60},{100,100}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant7(k=30/
    1440)
    annotation (Placement(transformation(extent={{-84,24},{-76,32}})));
    Physiolibrary.Blocks.Factors.Spline LeptinEffect2(data={{0,3.0,0},{8,1.0,
    -0.04},{50,0.0,0}}, Xscale=1e-6/Substances.Leptin.mw)
    annotation (Placement(transformation(extent={{-84,10},{-64,30}})));
    AcidDissociation acidDissociation
    annotation (Placement(transformation(extent={{30,-50},{50,-30}})));
    Real ECF_conc;
    Physiomodel.Electrolytes.Bladder bladder(stateVarName=
      "BladderPhosphate.Mass")
    annotation (Placement(transformation(extent={{66,6},{86,26}})));
equation
    ECF_conc =concentrationMeasure1.concentration;
    connect(PO4Pool.solutionVolume, busConnector.ECFV_Vol) annotation (Line(
    points={{-58,28},{-67,28},{-67,82},{-84,82}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{3,1},{3,1}}));

    connect(Diet.q_out, PO4Pool.q_out) annotation (Line(
    points={{-64,6},{-60,6},{-60,24},{-54,24}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));
    connect(glomerulusPhosphateRate.solutionFlow, busConnector.GlomerulusFiltrate_GFR)
    annotation (Line(
    points={{10,28},{10,82},{-84,82}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{3,1},{3,1}}));
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
    connect(concentrationMeasure.concentration, gain.u) annotation (Line(
    points={{-24,2},{-21.2,2},{-21.2,2},{-18.4,2}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(gain.y, busConnector. PO4Pool_conc_per_liter) annotation (Line(
    points={{-13.8,2},{-48.9,2},{-48.9,82},{-84,82}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{3,1},{3,1}}));
    connect(concentrationMeasure.q_in, PO4Pool.q_out) annotation (Line(
    points={{-30,2},{-34,2},{-34,24},{-54,24}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));
    connect(flowMeasure.molarFlowRate, busConnector.CD_PO4_Outflow)
    annotation (Line(
    points={{30,30},{30,-22},{98,-22},{98,82},{-84,82}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{3,1},{3,1}}));
    connect(glomerulusPhosphateRate.q_out, flowMeasure.q_in) annotation (
    Line(
    points={{20,24},{20,24}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));
    connect(busConnector.BloodIons_Cations, glomerulus.Cations) annotation (Line(
    points={{-84,82},{-24,82},{-24,29}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-3,1},{-3,1}}));
    connect(PO4Pool.solute, gain1.u) annotation (Line(
    points={{-54,14},{-54,-12},{-50.4,-12}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(gain1.y, busConnector. PO4Pool_Osmoles) annotation (Line(
    points={{-45.8,-12},{-64.9,-12},{-64.9,82},{-84,82}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{3,1},{3,1}}));
    connect(concentrationMeasure1.concentration, busConnector.ctPO4)
    annotation (Line(
    points={{-60,64},{-60,82},{-84,82}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{3,1},{3,1}}));
    connect(concentrationMeasure1.q_in, PO4Pool.q_out) annotation (Line(
    points={{-60,58},{-54,58},{-54,24}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));

    connect(busConnector.Leptin, LeptinEffect2.u) annotation (Line(
    points={{-84,82},{-92,82},{-92,20},{-82,20}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(Constant7.y,LeptinEffect2. yBase) annotation (Line(
    points={{-75,28},{-74,28},{-74,22}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(LeptinEffect2.y, Diet.soluteFlow) annotation (Line(
    points={{-74,16},{-74,10},{-70,10}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(flowMeasure.molarFlowRate, acidDissociation.CD_tPO4) annotation (
    Line(
    points={{30,30},{30,-22},{18,-22},{18,-32},{30,-32}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(busConnector.Urine_pH, acidDissociation.PHU) annotation (Line(
    points={{-84,82},{-92,82},{-92,-38},{30,-38},{30,-38}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(acidDissociation.CD_PO4_mEq, busConnector.CD_PO4_mEq_Outflow)
    annotation (Line(
    points={{50,-46},{98,-46},{98,82},{-84,82}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(busConnector.BloodIons_ProteinAnions, glomerulus.ProteinAnions)
    annotation (Line(
    points={{-84,82},{-20,82},{-20,29}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(bladder.busConnector, busConnector) annotation (Line(
    points={{84,24},{84,82},{-84,82}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None));
    connect(bladder.q_in, flowMeasure.q_out) annotation (Line(
    points={{76,24},{40,24}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    annotation ( Icon(coordinateSystem(
        preserveAspectRatio=true, extent={{-100,-100},{100,100}}),
      graphics={                 Text(
        extent={{-108,-98},{112,-124}},
        lineColor={0,0,255},
        textString="%name")}));
end Phosphate2;