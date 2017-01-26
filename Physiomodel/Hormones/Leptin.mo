within Physiomodel.Hormones;

model Leptin
    extends Physiolibrary.Icons.Fat;
    // outer parameter Real ECF_Vol(final displayUnit="ml");

    Modelica.Blocks.Math.Gain gain(                        y(unit="mol/s"), k(unit=
        "1/s") = 0.01/60)
    annotation (Placement(transformation(extent={{-44,-32},{-38,-26}})));
    Physiolibrary.Chemical.Sources.UnlimitedSolutePumpOut clearance(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{-34,-6},{-14,-26}})));
    Physiolibrary.Chemical.Components.Substance LeptinPool(
    stateName="LeptinPool.Mass",
    useNormalizedVolume=false,
    solute_start=(8e-6/Substances.Leptin.mw)*0.0143610097207699)
    "8 ng/ml = 8e-6 kg/m3, in 14.36 liter of extracellular fluid"
    annotation (Placement(transformation(extent={{-66,-18},{-46,2}})));
    Physiolibrary.Chemical.Sources.UnlimitedSolutePump secretion(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{78,-16},{58,4}})));
    Physiolibrary.Types.Constants.MolarFlowRateConst hormoneFlowConstant_pG(k(
      displayUnit="pmol/min") = 1.2e-9/(60*Substances.Leptin.mw))
    "1.2 ug/min = 1.2e-9/60 kg/s"
    annotation (Placement(transformation(extent={{80,18},{72,26}})));
    Physiolibrary.Blocks.Factors.Spline AdiposeEffect(data={{0,0.0,0},{13300,
      1.0,0.00008},{100000,6.0,0}}, Xscale=1e-3/Substances.FattyAcids.mw)
    "13300 g = 13.3 kg"
    annotation (Placement(transformation(extent={{78,0},{58,20}})));
    Physiolibrary.Blocks.Factors.Normalization FunctionEffect
    annotation (Placement(transformation(extent={{58,-4},{78,16}})));
    Physiolibrary.Types.BusConnector busConnector annotation (Placement(
      transformation(extent={{-98,68},{-78,88}}), iconTransformation(extent=
         {{-90,-70},{-70,-50}})));
    Physiolibrary.Chemical.Sensors.ConcentrationMeasure concentrationMeasure
     annotation (Placement(transformation(
      extent={{-10,-10},{10,10}},
      origin={-60,8})));
    Physiolibrary.Types.RealIO.ConcentrationOutput
                                        Leptin(displayUnit=
           "ng/ml") annotation (Placement(transformation(extent={{-78,-62},{-58,
          -42}}),        iconTransformation(extent={{80,-20},{120,20}})));
equation

    connect(LeptinPool.solute, gain.u) annotation (Line(
    points={{-50,-18},{-50,-29},{-44.6,-29}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(gain.y, clearance.soluteFlow) annotation (Line(
    points={{-37.7,-29},{-20,-29},{-20,-20}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(clearance.q_in, LeptinPool.q_out)   annotation (Line(
      points={{-34,-16},{-38,-16},{-38,-8},{-56,-8}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(busConnector.fat_FunctionEffect, FunctionEffect.u) annotation (Line(
      points={{-88,78},{12.1,78},{12.1,6},{60,6}},
      color={0,0,127},
      smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(AdiposeEffect.y, FunctionEffect.yBase) annotation (Line(
      points={{68,6},{68,8}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(secretion.soluteFlow, FunctionEffect.y) annotation (Line(
    points={{64,-2},{64,0},{68,0},{68,2}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(secretion.q_out, LeptinPool.q_out)   annotation (Line(
      points={{58,-6},{2,-6},{2,-8},{-56,-8}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));

    connect(LeptinPool.q_out, concentrationMeasure.q_in)   annotation (Line(
      points={{-56,-8},{-54,-8},{-54,6},{-60,6}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(hormoneFlowConstant_pG.y, AdiposeEffect.yBase) annotation (Line(
      points={{71,22},{68,22},{68,12}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(concentrationMeasure.concentration, Leptin) annotation (Line(
    points={{-60,12},{-60,20},{-82,20},{-82,-52},{-68,-52}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(concentrationMeasure.concentration, busConnector.Leptin)
    annotation (Line(
    points={{-60,12},{-60,78},{-88,78}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(busConnector.ECFV_Vol, LeptinPool.solutionVolume) annotation (Line(
    points={{-88,78},{-90,78},{-90,2},{-60,2},{-60,-4}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(AdiposeEffect.u, busConnector.LipidDepositsFA) annotation (Line(
    points={{76,10},{94,10},{94,78},{-88,78}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    annotation ( Icon(coordinateSystem(
          preserveAspectRatio=true, extent={{-100,-100},{100,100}}),
        graphics={Text(
          extent={{-100,80},{100,100}},
          lineColor={0,0,255},
          textString="%name")}));
end Leptin;
