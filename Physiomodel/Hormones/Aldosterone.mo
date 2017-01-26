within Physiomodel.Hormones;
model Aldosterone
    extends Physiolibrary.Icons.AdrenalGland;

    Physiolibrary.Chemical.Components.Substance AldoPool(
    stateName="AldoPool.Mass",
    useNormalizedVolume=false,
    solute_start(displayUnit="pmol") = 1.34779e-08,
    NominalSolute=1e-09)
    " 0.33 pmol/ml * 43000 ml = 14190.0 pmol .. all initial extracellular insulin"
    annotation (Placement(transformation(extent={{-50,-26},{-30,-6}})));
    Physiolibrary.Chemical.Sources.UnlimitedSolutePump adrenalCortex(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{66,-14},{46,6}})));
    Physiolibrary.Chemical.Components.Clearance Clearance(K=0.78,
    useSolutionFlowInput=true)
    annotation (Placement(transformation(extent={{2,-42},{22,-22}})));
    Physiolibrary.Blocks.Factors.Spline KEffect(data={{3.0,0.3,0},{4.4,1.0,1.0},
      {6.0,3.0,0}})
    annotation (Placement(transformation(extent={{46,0},{66,20}})));
    Physiolibrary.Types.Constants.MolarFlowRateConst hormoneFlowConstant(k(displayUnit="mol/min") = 5.5e-12)
    annotation (Placement(transformation(extent={{68,26},{60,34}})));
    Physiolibrary.Blocks.Factors.Spline A2Effect(
    data={{0.0,0.4,0},{1.3,1.0,1.0},{4.0,4.0,0}},
    Xscale=1e-9/Substances.AngiotensinII.mw,
    UsePositiveLog10=true)
    annotation (Placement(transformation(extent={{46,4},{66,24}})));
    Physiolibrary.Blocks.Factors.Normalization FunctionEffect
    annotation (Placement(transformation(extent={{46,8},{66,28}})));
    Physiolibrary.Chemical.Sensors.ConcentrationMeasure concentrationMeasure
     annotation (Placement(
      transformation(
      extent={{-10,-10},{10,10}},
      origin={-44,-2})));                                               //(toAnotherUnitCoef=1000, unitsString="pmol/l")
    Physiolibrary.Chemical.Sources.UnlimitedSolutePumpOut Degradation(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{0,-68},{20,-48}})));
    Modelica.Blocks.Math.Gain DegradeK(k=0.0007/60)
    annotation (Placement(transformation(extent={{-3,-3},{3,3}},
        origin={-3,-49})));
    Physiolibrary.Types.BusConnector busConnector annotation (Placement(
      transformation(extent={{-100,80},{-80,100}}), iconTransformation(
        extent={{-90,-70},{-70,-50}})));
    Modelica.Blocks.Interfaces.RealInput AngiotensinII annotation (Placement(transformation(extent={{-28,4},{
          -8,24}}), iconTransformation(extent={{-100,40},{-60,80}})));
    Modelica.Blocks.Interfaces.RealOutput Aldo(
                                      quantity="Concentration", final displayUnit=
        "pmol/l")   annotation (Placement(transformation(extent={{-36,34},{-16,54}}),
                         iconTransformation(extent={{80,-20},{120,20}})));
                                                                //(toAnotherUnitCoef=36, unitsString="ng/dl")
equation
    connect(KEffect.yBase, A2Effect.y)       annotation (Line(
      points={{56,12},{56,10}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(A2Effect.yBase, FunctionEffect.y)     annotation (Line(
      points={{56,16},{56,14}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(AldoPool.q_out, adrenalCortex.q_out)
                                              annotation (Line(
      points={{-40,-16},{-22,-16},{-22,-4},{46,-4}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(Clearance.q_in, AldoPool.q_out)    annotation (Line(
      points={{2,-32},{-22,-32},{-22,-16},{-40,-16}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(concentrationMeasure.q_in, AldoPool.q_out)    annotation (Line(
      points={{-44,-4},{-39.2,-4},{-39.2,-16},{-40,-16}},
      color={200,0,0},
      smooth=Smooth.None));
    connect(AldoPool.q_out, Degradation.q_in) annotation (Line(
      points={{-40,-16},{-22,-16},{-22,-58},{0,-58}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(busConnector.BodyH2O_Vol, AldoPool.solutionVolume) annotation (Line(
    points={{-90,90},{-90,-12},{-44,-12}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(busConnector.Liver_BloodFlow, Clearance.solutionFlow) annotation (
    Line(
    points={{-90,90},{12,90},{12,-25}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(AldoPool.solute, DegradeK.u) annotation (Line(
    points={{-34,-26},{-34,-49},{-6.6,-49}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(FunctionEffect.u, busConnector. otherTissue_FunctionEffect) annotation (Line(
      points={{48,18},{12,18},{12,90},{-90,90}},
      color={0,0,127},
      smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(adrenalCortex.soluteFlow, KEffect.y) annotation (Line(
    points={{52,0},{52,2},{56,2},{56,6}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(FunctionEffect.yBase, hormoneFlowConstant.y) annotation (Line(
      points={{56,20},{56,30},{59,30}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(Degradation.soluteFlow, DegradeK.y) annotation (Line(
    points={{14,-54},{14,-49},{0.3,-49}},
    color={0,0,127},
    smooth=Smooth.None));

    connect(AngiotensinII, A2Effect.u)
    annotation (Line(
    points={{-18,14},{48,14}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(concentrationMeasure.concentration, Aldo) annotation (Line(
    points={{-44,2},{-44,44},{-26,44}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(busConnector.Aldosterone, concentrationMeasure.concentration) annotation (Line(
    points={{-90,90},{-90,2},{-44,2}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(busConnector.KPool, KEffect.u) annotation (Line(
    points={{-90,90},{12,90},{12,10},{48,10}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    annotation ( Icon(coordinateSystem(
          preserveAspectRatio=true, extent={{-100,-100},{100,100}}),
        graphics={Text(
          extent={{-116,104},{118,82}},
          lineColor={0,0,255},
          textString="%name")}));
end Aldosterone;
