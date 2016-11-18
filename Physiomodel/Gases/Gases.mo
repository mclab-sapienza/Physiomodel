within Physiomodel.Gases;
model Gases
    extends Physiolibrary.Icons.Gases;

    Physiolibrary.Types.BusConnector busConnector annotation (Placement(
      transformation(extent={{38,-4},{58,16}}), iconTransformation(extent={
          {60,60},{100,100}})));
    O2.O2 oxygen annotation (Placement(transformation(extent={{-62,-24},{-42,
            -4}})));
    CO2.CO2 carbonDioxyd
    annotation (Placement(transformation(extent={{-22,-22},{-2,-2}})));
    Ventilation.Ventilation ventilation
    annotation (Placement(transformation(extent={{-50,28},{-30,48}})));
equation
    connect(carbonDioxyd.busConnector, busConnector) annotation (Line(
      points={{-4,-6},{-4,6},{48,6}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None));
    connect(oxygen.busConnector, busConnector) annotation (Line(
      points={{-44,-6},{-44,6},{48,6}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None));
    connect(ventilation.busConnector, busConnector) annotation (Line(
      points={{-30,44},{-28,44},{-28,6},{48,6}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None));
    annotation (Icon(coordinateSystem(preserveAspectRatio=true,  extent={{-100,
            -100},{100,100}}), graphics={
        Text(
          extent={{-122,-106},{126,-132}},
          lineColor={0,0,255},
          textString="%name"),
        Text(
          extent={{-82,24},{-8,58}},
          lineColor={0,0,0},
          textString="CO2"),
        Text(
          extent={{6,-64},{80,-30}},
          lineColor={0,0,0},
          textString="O2"),
        Text(
          extent={{-104,-70},{-30,-36}},
          lineColor={255,255,255},
          textString="pH")}));
end Gases;
