within Physiomodel.Hormones;

model Hormones3
    extends Physiolibrary.Icons.Hormones;
    Aldosterone aldosterone
    annotation (Placement(transformation(extent={{20,72},{40,92}})));
    Angiotensine2 angiotensine2
    annotation (Placement(transformation(extent={{-28,72},{-8,92}})));
    ANP atriopeptin
    annotation (Placement(transformation(extent={{-78,-28},{-58,-8}})));
    EPO erythropoietin
      annotation (Placement(transformation(extent={{-78,0},{-58,20}})));
    Glucagon glucagon
    annotation (Placement(transformation(extent={{-28,-64},{-8,-44}})));
    Insulin insulin
    annotation (Placement(transformation(extent={{-78,-64},{-58,-44}})));
    Renin renin
    annotation (Placement(transformation(extent={{-80,72},{-60,92}})));
    Thyrotropin thyrotropin
    annotation (Placement(transformation(extent={{-78,-96},{-58,-76}})));
    Thyroxine thyroxine
    annotation (Placement(transformation(extent={{-28,-96},{-8,-76}})));
    Physiolibrary.Types.BusConnector busConnector annotation (Placement(
    transformation(extent={{-98,20},{-78,40}}), iconTransformation(extent=
     {{-80,40},{-42,78}})));
    Physiomodel.Hormones.FemaleSexHormones.FemaleSexHormones femaleSexHormones
    annotation (Placement(transformation(extent={{42,26},{62,46}})));
    Catechols.Catechols catechols
    annotation (Placement(transformation(extent={{20,-14},{40,6}})));
    Modelica.Blocks.Sources.BooleanConstant Cycling
    annotation (Placement(transformation(extent={{20,24},{30,34}})));
    Leptin leptin
    annotation (Placement(transformation(extent={{22,-62},{42,-42}})));
equation
        connect(busConnector, aldosterone.busConnector) annotation (Line(
        points={{-88,30},{16,30},{16,76},{22,76}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None));
        connect(busConnector, angiotensine2.busConnector)   annotation (Line(
        points={{-88,30},{-34,30},{-34,76},{-26,76}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None));
        connect(busConnector, renin.busConnector) annotation (Line(
        points={{-88,30},{-84,30},{-84,76},{-78,76}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None));
        connect(busConnector, erythropoietin.busConnector)
                                          annotation (Line(
        points={{-88,30},{-84,30},{-84,4},{-76,4}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None));
        connect(busConnector, glucagon.busConnector) annotation (Line(
        points={{-88,30},{-34,30},{-34,-60},{-26,-60}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None));
        connect(busConnector, thyroxine.busConnector) annotation (Line(
        points={{-88,30},{-34,30},{-34,-94},{-26,-94},{-26,-78}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None));
        connect(busConnector, atriopeptin.busConnector)
                                          annotation (Line(
        points={{-88,30},{-84,30},{-84,-24},{-76,-24}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None));
        connect(busConnector, insulin.busConnector) annotation (Line(
        points={{-88,30},{-84,30},{-84,-60},{-76,-60}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None));
        connect(busConnector, thyrotropin.busConnector) annotation (Line(
        points={{-88,30},{-84,30},{-84,-92},{-76,-92}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None));
        connect(renin.ReninPool_PRA, angiotensine2.ReninPool_PRA) annotation (
        Line(
        points={{-60,82},{-52,82},{-52,86},{-26,86}},
        color={0,0,127},
        smooth=Smooth.None));
        connect(angiotensine2.A2Pool_Log10Conc, aldosterone.A2Pool_Log10Conc)
        annotation (Line(
        points={{-8,78},{2,78},{2,88},{22,88}},
        color={0,0,127},
        smooth=Smooth.None));
        connect(insulin.Insulin, glucagon.Insulin) annotation (Line(
        points={{-58,-54},{-36,-54},{-36,-48},{-26,-48}},
        color={0,0,127},
        smooth=Smooth.None));
        connect(busConnector, catechols.busConnector) annotation (Line(
        points={{-88,30},{16,30},{16,-10},{22,-10}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None));
        connect(thyrotropin.TSH, thyroxine.TSH) annotation (Line(
        points={{-58,-86},{-36,-86},{-36,-84},{-26,-84}},
        color={0,0,127},
        smooth=Smooth.None));
        connect(thyroxine.Thyroxine, thyrotropin.Thyroxine) annotation (Line(
        points={{-8,-86},{0,-86},{0,-72},{-80,-72},{-80,-78},{-76,-78}},
        color={0,0,127},
        smooth=Smooth.None));

        connect(busConnector.ECFV_Vol, femaleSexHormones.EFCV_Vol) annotation (
        Line(
        points={{-88,30},{16,30},{16,44},{42,44}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
        connect(Cycling.y, femaleSexHormones.Cycling) annotation (Line(
        points={{30.5,29},{36,29},{36,40},{42,40}},
        color={255,0,255},
        smooth=Smooth.None));
        connect(busConnector, leptin.busConnector) annotation (Line(
        points={{-88,30},{16,30},{16,-58},{24,-58}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None));
        annotation ( Icon(coordinateSystem(
          preserveAspectRatio=true, extent={{-100,-100},{100,100}}),
        graphics={                  Text(
          extent={{-120,-98},{122,-132}},
          lineColor={0,0,255},
          textString="%name")}));
end Hormones3;
