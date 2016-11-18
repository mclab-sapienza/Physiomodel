within Physiomodel.Hormones;
model ANP
    extends Physiolibrary.Icons.Heart;
    // outer parameter Real ECF_Vol(final displayUnit="ml");

    Physiolibrary.Chemical.Components.Substance ANPPool(
    stateName="ANPPool.Mass",
    useNormalizedVolume=false,
    solute_start(displayUnit="pmol") = 2.85895e-10,
    NominalSolute=1e-12) "default = 20 pmol/l"
    annotation (Placement(transformation(extent={{-30,-42},{-10,-22}})));
    Physiolibrary.Chemical.Sources.UnlimitedSolutePump secretion(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{48,-54},{28,-34}})));
    Physiolibrary.Blocks.Factors.Spline LAPEffect(data={{0.0,0.0,0},{8.0,1.0,
      0.4},{20.0,10.0,0}}, Xscale=101325/760)
    annotation (Placement(transformation(extent={{54,60},{34,80}})));
    Physiolibrary.Types.Constants.MolarFlowRateConst hormoneFlowConstant(k=
      6.8333333333333e-13)
    annotation (Placement(transformation(extent={{6,82},{-2,90}})));
    Physiolibrary.Blocks.Factors.Spline RAPEffect(data={{0.0,0.0,0},{4.0,1.0,
      0.4},{20.0,10.0,0}}, Xscale=101325/760)
    annotation (Placement(transformation(extent={{-16,60},{4,80}})));
    Physiolibrary.Chemical.Sensors.ConcentrationMeasure concentrationMeasure annotation (Placement(
      transformation(
      extent={{-10,-10},{10,10}},
      origin={-26,-16})));
    Physiolibrary.Chemical.Sources.UnlimitedSolutePumpOut Degradation(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{12,-86},{32,-66}})));
    Modelica.Blocks.Math.Gain DegradeK(k=0.223/60)
    annotation (Placement(transformation(extent={{-3,-3},{3,3}},
        origin={7,-65})));
    Physiolibrary.Types.Constants.MolarFlowRateConst hormoneFlowConstant1(k=
      4.3333333333333e-13)
    annotation (Placement(transformation(extent={{56,82},{48,90}})));
    Modelica.Blocks.Math.Add SteadyState annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=270,
        origin={38,42})));
    Physiolibrary.Blocks.Math.Integrator integrator(
    stateName="ANPSecretion.NaturalRate",
    k=(1/20)/60,
    y_start=67e-12/60)
               annotation (Placement(transformation(
      extent={{-10,-10},{10,10}},
      rotation=270,
      origin={38,-14})));
    Modelica.Blocks.Math.Feedback feedback annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        rotation=270,
        origin={38,18})));
    Physiolibrary.Types.BusConnector busConnector annotation (Placement(
      transformation(extent={{-104,84},{-84,104}}), iconTransformation(
        extent={{-90,-70},{-70,-50}})));
    Modelica.Blocks.Interfaces.RealOutput ANP(
                                     quantity="Concentration", final displayUnit=
        "pmol/l",
    nominal=1e-8)                                           annotation (
      Placement(transformation(extent={{-24,2},{-4,22}}),
        iconTransformation(extent={{80,-20},{120,20}})));
    Physiolibrary.Blocks.Math.Log10AsEffect log10_1
    annotation (Placement(transformation(extent={{-32,6},{-44,18}})));
    Physiolibrary.Blocks.Math.Log10AsEffect log10_2
    annotation (Placement(transformation(extent={{-52,-88},{-64,-76}})));
    Physiolibrary.Blocks.Math.Integrator integrator1(
    stateName="NephronANP.[ANPDelayed]",
    k=(1/20)/60,
    y_start=20e-9) "initial 20 pmol/l"
               annotation (Placement(transformation(
      extent={{-5,-5},{5,5}},
      rotation=270,
      origin={-35,-65})));
    Modelica.Blocks.Math.Feedback feedback1
                                         annotation (Placement(
        transformation(
        extent={{-7,-7},{7,7}},
        rotation=270,
        origin={-35,-47})));
    Modelica.Blocks.Interfaces.RealOutput NephronANP_Log10Conc
                    annotation (Placement(transformation(extent={{-94,-64},
            {-74,-44}}), iconTransformation(extent={{80,-60},{120,-20}})));
equation
    connect(ANPPool.q_out, secretion.q_out)     annotation (Line(
      points={{-20,-32},{-2,-32},{-2,-44},{28,-44}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(concentrationMeasure.q_in, ANPPool.q_out)     annotation (Line(
      points={{-26,-18},{-19.2,-18},{-19.2,-32},{-20,-32}},
      color={200,0,0},
      smooth=Smooth.None));
    connect(ANPPool.q_out, Degradation.q_in) annotation (Line(
      points={{-20,-32},{-2,-32},{-2,-76},{12,-76}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(ANPPool.solute, DegradeK.u) annotation (Line(
    points={{-14,-42},{-14,-65},{3.4,-65}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Degradation.soluteFlow, DegradeK.y) annotation (Line(
    points={{26,-72},{26,-65},{10.3,-65}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(hormoneFlowConstant1.y, LAPEffect.yBase) annotation (Line(
      points={{47,86},{44,86},{44,72}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(hormoneFlowConstant.y, RAPEffect.yBase) annotation (Line(
      points={{-3,86},{-6,86},{-6,72}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(RAPEffect.y, SteadyState.u2) annotation (Line(
      points={{-6,66},{-6,60},{32,60},{32,54}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(LAPEffect.y, SteadyState.u1) annotation (Line(
      points={{44,66},{44,54}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(feedback.y,integrator. u) annotation (Line(
      points={{38,9},{38,-2}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(integrator.y,feedback. u2) annotation (Line(
      points={{38,-25},{38,-34},{14,-34},{14,18},{30,18}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(SteadyState.y, feedback.u1) annotation (Line(
      points={{38,31},{38,26}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(integrator.y, secretion.soluteFlow) annotation (Line(
    points={{38,-25},{38,-40},{34,-40}},
    color={0,0,127},
    smooth=Smooth.None));

    connect(concentrationMeasure.concentration, ANP) annotation (Line(
    points={{-26,-12},{-26,12},{-14,12}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(concentrationMeasure.concentration, log10_1.u) annotation (Line(
    points={{-26,-12},{-26,12},{-30.8,12}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(busConnector.NephronANP_Log10Conc, log10_2.y) annotation (Line(
      points={{-94,94},{-94,-82},{-64.6,-82}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-6,3},{-6,3}}));
    connect(busConnector.ANPPool_Log10Conc, log10_1.y) annotation (Line(
      points={{-94,94},{-94,12},{-44.6,12}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-6,3},{-6,3}}));
    connect(busConnector.ANP, concentrationMeasure.concentration) annotation (
    Line(
    points={{-94,94},{-94,-8},{-26,-8},{-26,-12}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(busConnector.ECFV_Vol, ANPPool.solutionVolume) annotation (Line(
    points={{-94,94},{-94,-28},{-24,-28}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(feedback1.y, integrator1.u)
                                    annotation (Line(
      points={{-35,-53.3},{-36,-54},{-35,-54},{-35,-59}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(integrator1.y, feedback1.u2)
                                     annotation (Line(
      points={{-35,-70.5},{-35,-74},{-50,-74},{-50,-47},{-40.6,-47}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(integrator1.y, log10_2.u) annotation (Line(
      points={{-35,-70.5},{-35,-82},{-50.8,-82}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(concentrationMeasure.concentration, feedback1.u1) annotation (Line(
    points={{-26,-12},{-26,-8},{-35,-8},{-35,-41.4}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(log10_2.y, NephronANP_Log10Conc) annotation (Line(
      points={{-64.6,-82},{-94,-82},{-94,-54},{-84,-54}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(busConnector.rightAtrium_TMP, RAPEffect.u) annotation (Line(
    points={{-94,94},{-94,70},{-14,70},{-14,70}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(LAPEffect.u, busConnector.leftAtrium_TMP) annotation (Line(
    points={{52,70},{86,70},{86,94},{-94,94}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    annotation ( Icon(coordinateSystem(
          preserveAspectRatio=true, extent={{-100,-100},{100,100}}),
        graphics={Text(
          extent={{-120,94},{114,72}},
          lineColor={0,0,255},
          textString="%name")}));
end ANP;