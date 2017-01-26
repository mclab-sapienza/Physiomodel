within Physiomodel.Hormones;
model Glucagon
    extends Physiolibrary.Icons.Pancreas;
    // outer parameter Real ECF_Vol(final displayUnit="ml");

    Modelica.Blocks.Math.Gain gain(k=0.05/60)
    annotation (Placement(transformation(extent={{-44,-32},{-38,-26}})));
    Physiolibrary.Chemical.Sources.UnlimitedSolutePumpOut clearance(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{-34,-6},{-14,-26}})));
    Physiolibrary.Chemical.Components.Substance GlucagonPool(
    stateName="GlucagonPool.Mass",
    useNormalizedVolume=false,
    solute_start=(990.792e-12)/Substances.Glucagon.mw,
    NominalSolute=1e-09)
    "66.2 pg/ml * 15000 ml * 0.001 ng/pg = 993 ng .. all initial extracellular glucagon"
    annotation (Placement(transformation(extent={{-66,-16},{-46,4}})));
    Physiolibrary.Chemical.Sensors.IncrementalFlowConcentrationMeasure
    PortalVeinConcentration(
      useSolutionFlowInput=true)
    annotation (Placement(transformation(extent={{-54,8},{-34,28}})));
    Physiolibrary.Chemical.Sources.UnlimitedSolutePump synthesis(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{78,-16},{58,4}})));
    Physiolibrary.Types.Constants.MolarFlowRateConst hormoneFlowConstant_pG(k(
      displayUnit="ng/min") = (50e-12)/Substances.Glucagon.mw/60)
    "50 ng/min"
    annotation (Placement(transformation(extent={{80,18},{72,26}})));
    Physiolibrary.Blocks.Factors.Spline InsulinEffect(data={{0,6.0,0},{7,1.3,-0.020},
      {20,1.0,-0.006},{100,0.6,0}}, Xscale=Substances.Insulin.molpIU)
    annotation (Placement(transformation(extent={{78,0},{58,20}})));
    Physiolibrary.Blocks.Factors.Spline GlucoseEffect(data={{0,2.5,0},{70,1.1,-0.005},
      {110,1.0,-0.001},{400,0.6,0}}, Xscale=0.01/Substances.Glucose.mw)
    annotation (Placement(transformation(extent={{58,4},{78,24}})));
    Physiolibrary.Blocks.Factors.Normalization FunctionEffect
    annotation (Placement(transformation(extent={{58,-4},{78,16}})));
    Physiolibrary.Types.BusConnector busConnector annotation (Placement(
      transformation(extent={{-98,68},{-78,88}}), iconTransformation(extent=
         {{-90,-70},{-70,-50}})));
    Insulin_Physiolibrary.Types.RealIO.ConcentrationInput Insulin(
                                        displayUnit="uU_insulin/ml") annotation (Placement(
        transformation(extent={{58,34},{78,54}}), iconTransformation(extent={{-100,40},
            {-60,80}})));
    Physiolibrary.Chemical.Sensors.ConcentrationMeasure concentrationMeasure annotation (Placement(transformation(
      extent={{-10,-10},{10,10}},
      origin={-60,8})));
    Physiolibrary.Types.RealIO.ConcentrationOutput
                                        Glucagon( displayUnit=
           "ng/l")  annotation (Placement(transformation(extent={{-78,-60},
    {-58,-40}}), iconTransformation(extent={{80,-20},{120,20}})));
equation

        connect(GlucagonPool.solute, gain.u) annotation (Line(
        points={{-50,-16},{-50,-29},{-44.6,-29}},
        color={0,0,127},
        smooth=Smooth.None));
        connect(gain.y, clearance.soluteFlow) annotation (Line(
        points={{-37.7,-29},{-20,-29},{-20,-20}},
        color={0,0,127},
        smooth=Smooth.None));
        connect(clearance.q_in, GlucagonPool.q_out) annotation (Line(
        points={{-34,-16},{-38,-16},{-38,-6},{-56,-6}},
        color={200,0,0},
        thickness=1,
        smooth=Smooth.None));
        connect(GlucagonPool.q_out, PortalVeinConcentration.q_in) annotation (
        Line(
        points={{-56,-6},{-54,-6},{-54,18}},
        color={200,0,0},
        thickness=1,
        smooth=Smooth.None));
        connect(PortalVeinConcentration.concentration, busConnector.PortalVein_Glucagon)
        annotation (Line(
        points={{-44,11.8},{4.1,11.8},{4.1,78},{-88,78}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
        connect(busConnector.GITract_FunctionEffect, FunctionEffect.u) annotation (Line(
        points={{-88,78},{12.1,78},{12.1,6},{60,6}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
        connect(busConnector.Glucose, GlucoseEffect.u) annotation (Line(
        points={{-88,78},{12,78},{12,14},{60,14}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
        connect(InsulinEffect.yBase, GlucoseEffect.y) annotation (Line(
        points={{68,12},{68,10}},
        color={0,0,127},
        smooth=Smooth.None));
        connect(InsulinEffect.y, FunctionEffect.yBase) annotation (Line(
        points={{68,6},{68,8}},
        color={0,0,127},
        smooth=Smooth.None));
        connect(synthesis.soluteFlow, FunctionEffect.y) annotation (Line(
        points={{64,-2},{64,0},{68,0},{68,2}},
        color={0,0,127},
        smooth=Smooth.None));
        connect(hormoneFlowConstant_pG.y, GlucoseEffect.yBase) annotation (Line(
        points={{71,22},{68,22},{68,16}},
        color={0,0,127},
        smooth=Smooth.None));
        connect(synthesis.q_out, GlucagonPool.q_out) annotation (Line(
        points={{58,-6},{-56,-6}},
        color={200,0,0},
        thickness=1,
        smooth=Smooth.None));

        connect(Insulin, InsulinEffect.u) annotation (Line(
        points={{68,44},{90,44},{90,10},{76,10}},
        color={0,0,127},
        smooth=Smooth.None));
        connect(GlucagonPool.q_out, concentrationMeasure.q_in) annotation (Line(
        points={{-56,-6},{-54,-6},{-54,8},{-60,8}},
        color={200,0,0},
        thickness=1,
        smooth=Smooth.None));
        connect(concentrationMeasure.concentration, Glucagon) annotation (Line(
        points={{-60,0},{-80,0},{-80,-50},{-68,-50}},
        color={0,0,127},
        smooth=Smooth.None));
        connect(busConnector.Glucagon_conc, concentrationMeasure.concentration)
        annotation (Line(
        points={{-88,78},{-88,0},{-60,0}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
        connect(FunctionEffect.y, PortalVeinConcentration.addition) annotation (Line(
        points={{68,2},{8,2},{8,28},{-38,28},{-38,22}},
        color={0,0,127},
        smooth=Smooth.None));
        connect(busConnector.PortalVein_PlasmaFlow, PortalVeinConcentration.solutionFlow)
        annotation (Line(
        points={{-88,78},{-44,78},{-44,25}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
        connect(busConnector.ECFV_Vol, GlucagonPool.solutionVolume) annotation (Line(
        points={{-88,78},{-92,78},{-92,-2},{-60,-2}},
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
end Glucagon;
