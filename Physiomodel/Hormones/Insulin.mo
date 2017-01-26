within Physiomodel.Hormones;

model Insulin
    extends Physiolibrary.Icons.Pancreas;
    // outer parameter Real ECF_Vol(final displayUnit="ml");

    Insulin_Physiolibrary.Chemical.Components.Substance InsulinPool(
    stateName="InsulinPool.Mass",
    useNormalizedVolume=false,
    NominalSolute(displayUnit="U_Insulin") = 1e-6,
    solute_start(displayUnit="U_Insulin") = 0.324)
    "0.021 mU/ml * 15000 ml  = 307 mU .. all initial extracellular insulin"
    annotation (Placement(transformation(extent={{-86,-26},{-66,-6}})));
    Insulin_Physiolibrary.Chemical.Components.SolutePump secretion(useSoluteFlowInput=
    true)
    annotation (Placement(transformation(extent={{32,-14},{12,6}})));
    Insulin_Physiolibrary.Chemical.Sources.UnlimitedSolutePump synthesis(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{90,-14},{70,6}})));
    Insulin_Physiolibrary.Chemical.Sources.UnlimitedSolutePumpOut clearance(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{-54,-16},{-34,-36}})));
    Insulin_Physiolibrary.Chemical.Sensors.IncrementalFlowConcentrationMeasure
    PortalVeinConcentration(
    useSolutionFlowInput=true)
    annotation (Placement(transformation(extent={{-66,2},{-46,22}})));
    Insulin_Physiolibrary.Chemical.Components.Substance InsulinStorage(
    stateName="InsulinStorage.Mass",
    NominalSolute(displayUnit="U_Insulin") = Substances.Insulin.molpIU,
    solute_start(displayUnit="U_Insulin") = 1.95491) "initial 1954.91 mU"
                   annotation (Placement(transformation(
    extent={{-10,10},{10,-10}},
    rotation=180,
    origin={52,-4})));
    Modelica.Blocks.Math.Gain gain(k=0.0571413755/60)
    annotation (Placement(transformation(extent={{-64,-42},{-58,-36}})));
    Physiolibrary.Blocks.Factors.Spline KAEffect(data={{0.0,0.6,0},{0.5,1.0,
    0.05},{50.0,2.0,0}}, Xscale=0.01/Substances.KetoAcids.mw)
    "0.5 mg/dl = 0.005 kg/m3"
    annotation (Placement(transformation(extent={{12,0},{32,20}})));
    Physiolibrary.Blocks.Interpolation.Curve MassEffect(
    data={{0,200,0},{2000,17,-0.02},{3000,0,0}},
    Xscale=1e-3,
    Yscale=1e-3/60)
    "base insulin storage mass 2000 miu caused synthesis of 17 miu/min"
    annotation (Placement(transformation(extent={{58,62},{78,82}})));
    Physiolibrary.Blocks.Factors.Spline GlucoseEffect(data={{0,0.0,0},{105,1.0,
    0.01},{600,50.0,0}}, Xscale=0.01/Substances.Glucose.mw)
    "105 mg/dl = 1.05 kg/m3"
    annotation (Placement(transformation(extent={{12,4},{32,24}})));
    Physiolibrary.Blocks.Factors.Normalization FunctionEffect
    annotation (Placement(transformation(extent={{12,-4},{32,16}})));
    Physiolibrary.Blocks.Factors.Normalization BasicFraction
    annotation (Placement(transformation(extent={{32,8},{12,28}})));
    Physiolibrary.Types.Constants.FrequencyConst            Constant(k=
    0.00014166666666667)
    annotation (Placement(transformation(extent={{56,12},{44,24}})));
    Physiolibrary.Types.BusConnector busConnector annotation (Placement(
    transformation(extent={{-108,30},{-88,50}}), iconTransformation(
    extent={{-90,-70},{-70,-50}})));
    Insulin_Physiolibrary.Types.RealIO.ConcentrationOutput
                                    Insulin( displayUnit="uU_Insulin/ml")
                annotation (Placement(transformation(extent={{-88,-70},
        {-68,-50}}), iconTransformation(extent={{80,-20},{120,20}})));
    Insulin_Physiolibrary.Chemical.Sensors.ConcentrationMeasure concentrationMeasure1
    annotation (Placement(
    transformation(
    extent={{-10,-10},{10,10}},
    origin={-84,2})));
    Physiolibrary.Blocks.Math.Integrator integrator(
    stateName="InsulinSynthesis.Rate",
    k=(1/20)/60,
    NominalValue=Substances.Insulin.molpIU,
    y_start=18.1363e-3/60)
    "base synthesis 17 miu/min; tau of synthesis adaptation = 20 min"
                                      annotation (Placement(
    transformation(
    extent={{-10,-10},{10,10}},
    rotation=270,
    origin={80,24})));
    Modelica.Blocks.Math.Feedback feedback annotation (Placement(
    transformation(
    extent={{-10,-10},{10,10}},
    rotation=270,
    origin={90,56})));
equation
    connect(InsulinPool.solute, gain.u) annotation (Line(
    points={{-70,-26},{-70,-39},{-64.6,-39}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(gain.y, clearance.soluteFlow) annotation (Line(
    points={{-57.7,-39},{-40,-39},{-40,-30}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(secretion.soluteFlow, FunctionEffect.y) annotation (Line(
      points={{18,0},{22,0},{22,2}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(FunctionEffect.yBase, KAEffect.y) annotation (Line(
      points={{22,8},{22,6}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(KAEffect.yBase, GlucoseEffect.y) annotation (Line(
      points={{22,12},{22,10}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(GlucoseEffect.yBase, BasicFraction.y) annotation (Line(
      points={{22,16},{22,14}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(Constant.y, BasicFraction.u) annotation (Line(
      points={{42.5,18},{30,18}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(busConnector.Glucose, GlucoseEffect.u) annotation (Line(
      points={{-98,40},{-6,40},{-6,14},{14,14}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(busConnector.GITract_FunctionEffect, FunctionEffect.u) annotation (Line(
      points={{-98,40},{-5.9,40},{-5.9,6},{14,6}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(InsulinPool.q_out, PortalVeinConcentration.q_in) annotation (Line(
      points={{-76,-16},{-76,12},{-66,12}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(InsulinPool.q_out, secretion.q_out) annotation (Line(
      points={{-76,-16},{-58,-16},{-58,-4},{12,-4}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(secretion.q_in, InsulinStorage.q_out) annotation (Line(
      points={{32,-4},{52,-4}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(InsulinStorage.q_out, synthesis.q_out) annotation (Line(
      points={{52,-4},{70,-4}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(clearance.q_in, InsulinPool.q_out) annotation (Line(
      points={{-54,-26},{-58,-26},{-58,-16},{-76,-16}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));

    connect(busConnector.PortalVein_PlasmaFlow, PortalVeinConcentration.solutionFlow)
    annotation (Line(
      points={{-98,40},{-56,40},{-56,19}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-3,3},{-3,3}}));
    connect(busConnector.ECFV_Vol, InsulinPool.solutionVolume) annotation (Line(
    points={{-98,40},{-98,-12},{-80,-12}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(concentrationMeasure1.concentration, Insulin) annotation (Line(
      points={{-84,-6},{-84,10},{-90,10},{-90,-60},{-78,-60}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(InsulinPool.q_out, concentrationMeasure1.q_in) annotation (Line(
      points={{-76,-16},{-80,-16},{-80,2},{-84,2}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(concentrationMeasure1.concentration, busConnector.Insulin)
    annotation (Line(
      points={{-84,-6},{-84,40},{-98,40}},
      color={0,0,127},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}}));
    connect(feedback.y,integrator. u) annotation (Line(
      points={{90,47},{90,38},{80,38},{80,36}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(integrator.y,feedback. u2) annotation (Line(
      points={{80,13},{80,4},{62,4},{62,56},{82,56}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(integrator.y, synthesis.soluteFlow) annotation (Line(
    points={{80,13},{80,0},{76,0}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(PortalVeinConcentration.concentration, busConnector.PortalVein_Insulin)
    annotation (Line(
      points={{-56,5.8},{-26,5.8},{-26,40},{-98,40}},
      color={0,0,127},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}}));
    connect(FunctionEffect.y, PortalVeinConcentration.addition) annotation (Line(
      points={{22,2},{-22,2},{-22,24},{-50,24},{-50,16}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(MassEffect.val, feedback.u1) annotation (Line(
      points={{78,72},{90,72},{90,64}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(InsulinStorage.solute, MassEffect.u) annotation (Line(
      points={{46,-14},{46,-20},{40,-20},{40,72},{58,72}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(InsulinStorage.solute, BasicFraction.yBase) annotation (Line(
      points={{46,-14},{46,-20},{40,-20},{40,30},{22,30},{22,20}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(busConnector.KAPool, KAEffect.u) annotation (Line(
    points={{-98,40},{-6,40},{-6,10},{14,10}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    annotation ( Icon(coordinateSystem(
          preserveAspectRatio=true, extent={{-100,-100},{100,100}}),
        graphics={Text(
          extent={{-100,80},{100,100}},
          lineColor={0,0,255},
          textString="%name")}));
end Insulin;
