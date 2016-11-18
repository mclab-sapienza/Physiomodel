within Physiomodel.Hormones;
model Thyroxine
    extends Physiolibrary.Icons.ThyroidGland;
    // outer parameter Real ECF_Vol(final displayUnit="ml");

        Physiolibrary.Chemical.Components.Substance ThyroidPool(
        stateName="ThyroidPool.Mass",
        useNormalizedVolume=false,
        solute_start=1168.05e-9/Substances.Thyroxine.mw,
        NominalSolute=1e-09)
        "default = 8.6 ug/dl = 8.6e-2 kg/m3, initial 1168.05 ug"
        annotation (Placement(transformation(extent={{-82,-54},{-62,-34}})));
        Physiolibrary.Chemical.Sources.UnlimitedSolutePump secretion(
        useSoluteFlowInput=true)
        annotation (Placement(transformation(extent={{76,-54},{56,-34}})));
        Physiolibrary.Types.Constants.MolarFlowRateConst hormoneFlowConstant(k(
          displayUnit="ng/min") = 8.33e-13/Substances.Thyroxine.mw)
        "typical degradation: 72 ug/day = 8.33e-13 kg/s (T3 .. 33.5 ug/day, T4 .. 87 ug/day)"
        annotation (Placement(transformation(extent={{80,-24},{68,-12}})));
        Physiolibrary.Blocks.Factors.Spline TSHEffect(data={{0.0,0.0,0},{4.0,1.0,
          0.4},{30.0,10.0,0}}) "4 uIU/ml = 4 IU/m3"
        annotation (Placement(transformation(extent={{56,-40},{76,-20}})));
        Physiolibrary.Chemical.Sensors.ConcentrationMeasure concentrationMeasure annotation (Placement(
          transformation(
          extent={{-10,-10},{10,10}},
          origin={-76,-30})));
        Physiolibrary.Chemical.Sources.UnlimitedSolutePumpOut Clearance(
        useSoluteFlowInput=true)
        annotation (Placement(transformation(extent={{-30,-98},{-10,-78}})));
        Modelica.Blocks.Math.Gain K(k(unit="1/s")=0.000041/60,y(unit="mol/s"))
        "typical degradation: 72 ug/day (T3 .. 33.5 ug/day, T4 .. 87 ug/day)"
        annotation (Placement(transformation(extent={{-3,-3},{3,3}},
            origin={-35,-77})));
        Physiolibrary.Types.BusConnector busConnector annotation (Placement(
          transformation(extent={{-88,78},{-68,98}}), iconTransformation(extent=
             {{-90,70},{-70,90}})));
        TSH_Physiolibrary.Types.RealIO.ConcentrationInput TSH(displayUnit=
            "uU_TSH/ml") "thyrotropin" annotation (Placement(transformation(extent=
                {{4,-40},{24,-20}}), iconTransformation(extent={{-100,0},{-60,
                40}})));
        Physiolibrary.Types.RealIO.ConcentrationOutput Thyroxine annotation (Placement(transformation(extent={{-50,-18},
                {-30,2}}),   iconTransformation(extent={{80,-20},{120,20}})));
        Physiolibrary.Blocks.Interpolation.Curve curve(
        x={0,8,40},
        y={0.7,1.0,1.5},
        slope={0,0.4,0},
        Xscale=1e-5/Substances.Thyroxine.mw) "8 ug/dl = 8e-9/1e-4 kg/m3"
        annotation (Placement(transformation(extent={{-54,18},{-34,38}})));
equation
    connect(ThyroidPool.q_out, secretion.q_out) annotation (Line(
      points={{-72,-44},{56,-44}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(concentrationMeasure.q_in, ThyroidPool.q_out) annotation (Line(
      points={{-76,-30},{-71.2,-30},{-71.2,-44},{-72,-44}},
      color={200,0,0},
      smooth=Smooth.None));
    connect(ThyroidPool.q_out, Clearance.q_in)
                                           annotation (Line(
      points={{-72,-44},{-54,-44},{-54,-88},{-30,-88}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(ThyroidPool.solute, K.u) annotation (Line(
    points={{-66,-54},{-66,-77},{-38.6,-77}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Clearance.soluteFlow, K.y) annotation (Line(
    points={{-16,-84},{-16,-77},{-31.7,-77}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(hormoneFlowConstant.y,TSHEffect. yBase) annotation (Line(
      points={{66.5,-18},{66,-18},{66,-28}},
      color={0,0,127},
      smooth=Smooth.None));

    connect(secretion.soluteFlow, TSHEffect.y) annotation (Line(
    points={{62,-40},{62,-38},{66,-38},{66,-34}},
    color={0,0,127},
    smooth=Smooth.None));

    connect(TSH, TSHEffect.u) annotation (Line(
      points={{14,-30},{58,-30}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(busConnector.ECFV_Vol, ThyroidPool.solutionVolume) annotation (Line(
    points={{-78,88},{-94,88},{-94,-40},{-76,-40}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(concentrationMeasure.concentration, Thyroxine) annotation (Line(
      points={{-76,-38},{-76,-8},{-40,-8}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(concentrationMeasure.concentration, curve.u) annotation (Line(
      points={{-76,-38},{-76,28},{-54,28}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(concentrationMeasure.concentration, busConnector.Thyroxine)
    annotation (Line(
    points={{-76,-38},{-76,88},{-78,88}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    annotation ( Icon(coordinateSystem(
          preserveAspectRatio=true, extent={{-100,-100},{100,100}}),
        graphics={Text(
          extent={{-124,114},{118,90}},
          lineColor={0,0,255},
          textString="%name")}));
end Thyroxine;