within Physiomodel.Hormones.Catechols;

model Catechols
    extends Physiolibrary.Icons.AdrenalGland;
    Physiolibrary.Types.BusConnector busConnector annotation (Placement(
    transformation(extent={{-88,78},{-68,98}}), iconTransformation(
      extent={{-90,-70},{-70,-50}})));

    Epinephrine epinephrine
    annotation (Placement(transformation(extent={{-30,46},{-10,66}})));
    Norepinephrine norepinephrine
    annotation (Placement(transformation(extent={{-30,14},{-10,34}})));
    Modelica.Blocks.Interfaces.RealOutput EpinephrineConc(             quantity="Concentration", final displayUnit=
         "pg/ml")                                       annotation (
    Placement(transformation(extent={{38,46},{58,66}}),
      iconTransformation(extent={{80,-40},{120,0}})));
    Modelica.Blocks.Interfaces.RealOutput NorepinephrineConc(
                                                  quantity="Concentration", final displayUnit=
         "pg/ml")                                       annotation (
    Placement(transformation(extent={{38,14},{58,34}}),
      iconTransformation(extent={{80,0},{120,40}})));
    Physiolibrary.Blocks.Math.Log10AsEffect log10_1
    annotation (Placement(transformation(extent={{10,-66},{30,-46}})));
    Modelica.Blocks.Math.Add3 AlphaTotal(
    k3=5,
    k1=0.021*Substances.Norepinephrine.mw/(1e-9),
    k2=0.125*Substances.Epinephrine.mw/(1e-9))
    annotation (Placement(transformation(extent={{-28,-66},{-8,-46}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Desglymidodrine(k=
    0)
    annotation (Placement(transformation(extent={{-62,-68},{-54,-60}})));
    Modelica.Blocks.Math.Add BetaTotal(k1=0.021*Substances.Norepinephrine.mw
    /(1e-9), k2=0.125*Substances.Epinephrine.mw/(1e-9))
    "1 pg/ml = 1e-9 kg/m3"
    annotation (Placement(transformation(extent={{-24,-32},{-8,-16}})));
    Physiolibrary.Types.Constants.FractionConst             Constant(k=1)
    annotation (Placement(transformation(extent={{32,-66},{40,-58}})));
    Physiolibrary.Types.Constants.FractionConst             Constant1(k=1)
    annotation (Placement(transformation(extent={{26,-34},{34,-26}})));
    Physiolibrary.Blocks.Math.Log10AsEffect log10_2
    annotation (Placement(transformation(extent={{4,-34},{24,-14}})));
equation
    connect(busConnector.ECFV_Vol, epinephrine.ECFV_Vol) annotation (Line(
        points={{-78,88},{-78,65},{-29,65}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
    connect(busConnector.ECFV_Vol, norepinephrine.ECFV_Vol) annotation (
        Line(
        points={{-78,88},{-78,33},{-29,33}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
    connect(busConnector.AdrenalNerve_NA, epinephrine.AdrenalNerve_NA)
      annotation (Line(
        points={{-78,88},{-78,57},{-29,57}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
    connect(busConnector.OtherTissueFunctionEffect, epinephrine.OtherTissueFunctionEffect)
      annotation (Line(
        points={{-78,88},{-78,61},{-29,61}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
    connect(busConnector.OtherTissueFunctionEffect, norepinephrine.OtherTissueFunctionEffect)
      annotation (Line(
        points={{-78,88},{-78,21},{-29,21}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
    connect(busConnector.AdrenalNerve_NA, norepinephrine.AdrenalNerve_NA)
      annotation (Line(
        points={{-78,88},{-78,29},{-29,29}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
    connect(busConnector.GangliaGeneral_NA, norepinephrine.GangliaGeneral_NA)
      annotation (Line(
        points={{-78,88},{-78,25},{-29,25}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
    connect(epinephrine.Epinephrine, busConnector.Epinephrine) annotation (
        Line(
        points={{-9,56},{32,56},{32,88},{-78,88}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
    connect(norepinephrine.Norepinephrine, NorepinephrineConc) annotation (Line(
        points={{-9,24},{48,24}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(epinephrine.Epinephrine, EpinephrineConc) annotation (Line(
        points={{-9,56},{48,56}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(log10_1.y, busConnector.AlphaPool_Effect) annotation (Line(
        points={{31,-56},{78,-56},{78,90},{-78,90},{-78,88}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
    connect(AlphaTotal.y, log10_1.u) annotation (Line(
        points={{-7,-56},{8,-56}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(AlphaTotal.u1, norepinephrine.Norepinephrine) annotation (Line(
        points={{-30,-48},{-36,-48},{-36,-2},{-4,-2},{-4,24},{-9,24}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(epinephrine.Epinephrine, AlphaTotal.u2) annotation (Line(
        points={{-9,56},{16,56},{16,2},{-40,2},{-40,-56},{-30,-56}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(Desglymidodrine.y, AlphaTotal.u3) annotation (Line(
        points={{-53,-64},{-30,-64}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(BetaTotal.u1, norepinephrine.Norepinephrine) annotation (Line(
        points={{-25.6,-19.2},{-36,-19.2},{-36,-2},{-4,-2},{-4,24},{-9,24}},
        color={0,0,127},
        smooth=Smooth.None));

    connect(BetaTotal.u2, epinephrine.Epinephrine) annotation (Line(
        points={{-25.6,-28.8},{-40,-28.8},{-40,2},{16,2},{16,56},{-9,56}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(BetaTotal.y, log10_2.u) annotation (Line(
        points={{-7.2,-24},{2,-24}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(log10_2.y, busConnector.BetaPool_Effect) annotation (Line(
        points={{25,-24},{78,-24},{78,88},{-78,88}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
    connect(Constant.y, busConnector.AlphaBlocade_Effect) annotation (Line(
        points={{41,-62},{78,-62},{78,88},{-78,88}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(Constant1.y, busConnector.BetaBlocade_Effect) annotation (Line(
        points={{35,-30},{78,-30},{78,88},{-78,88}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(norepinephrine.Norepinephrine, busConnector.Norepinephrine)
    annotation (Line(
      points={{-9,24},{26,24},{26,88},{-78,88}},
      color={0,0,127},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}}));
    annotation ( Icon(coordinateSystem(preserveAspectRatio=true,
            extent={{-100,-100},{100,100}}), graphics={Text(
            extent={{-100,80},{100,100}},
            lineColor={0,0,255},
            textString="%name")}));
end Catechols;