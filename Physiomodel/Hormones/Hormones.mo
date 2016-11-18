within Physiomodel.Hormones;
model Hormones
    extends Physiolibrary.Icons.Hormones;
    Aldosterone aldosterone
    annotation (Placement(transformation(extent={{20,72},{40,92}})));
    Angiotensine2 angiotensine2
    annotation (Placement(transformation(extent={{-44,68},{-24,88}})));
    Renin renin
    annotation (Placement(transformation(extent={{-80,72},{-60,92}})));
    Physiolibrary.Types.BusConnector busConnector annotation (Placement(
      transformation(extent={{-98,20},{-78,40}}), iconTransformation(extent=
         {{-80,40},{-42,78}})));
    Catechols.Catechols catechols
    annotation (Placement(transformation(extent={{20,-14},{40,6}})));
equation
    connect(busConnector, aldosterone.busConnector) annotation (Line(
    points={{-88,30},{16,30},{16,76},{22,76}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None));
    connect(busConnector, angiotensine2.busConnector)   annotation (Line(
    points={{-88,30},{-48,30},{-48,72},{-42,72}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None));
    connect(busConnector, renin.busConnector) annotation (Line(
    points={{-88,30},{-84,30},{-84,76},{-78,76}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None));
    connect(busConnector, catechols.busConnector) annotation (Line(
    points={{-88,30},{16,30},{16,-10},{22,-10}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None));

    connect(renin.Renin, angiotensine2.Renin)
    annotation (Line(
    points={{-60,82},{-42,82}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(angiotensine2.Angiotensine2, aldosterone.AngiotensinII) annotation (Line(
    points={{-24,78},{8,78},{8,88},{22,88}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(angiotensine2.Angiotensine2, renin.Angiotensin2) annotation (Line(
    points={{-24,78},{-10,78},{-10,96},{-94,96},{-94,86},{-78,86}},
    color={0,0,127},
    smooth=Smooth.None));
    annotation ( Icon(coordinateSystem(
      preserveAspectRatio=true, extent={{-100,-100},{100,100}}),
    graphics={                  Text(
      extent={{-120,-98},{122,-132}},
      lineColor={0,0,255},
      textString="%name")}));
end Hormones;