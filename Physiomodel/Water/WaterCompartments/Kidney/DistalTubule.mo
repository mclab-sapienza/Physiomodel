within Physiomodel.Water.WaterCompartments.Kidney;

model DistalTubule

    Physiolibrary.Osmotic.Interfaces.OsmoticPort_a Inflow annotation (
        Placement(transformation(extent={{-120,-20},{-80,20}}),
          iconTransformation(extent={{-120,-20},{-80,20}})));
    Physiolibrary.Osmotic.Interfaces.OsmoticPort_b Outflow
      annotation (Placement(transformation(extent={{80,-20},{120,20}})));
    Physiolibrary.Osmotic.Interfaces.OsmoticPort_b Reabsorbtion
      annotation (Placement(transformation(extent={{-20,-60},{20,-20}}),
          iconTransformation(extent={{-20,-60},{20,-20}})));
      Physiolibrary.Types.RealIO.VolumeFlowRateInput DesiredFlow(displayUnit="ml/min")
                                   annotation (Placement(transformation(extent={{-20,20},{20,
                60}}), iconTransformation(extent={{-20,-20},{20,20}},
                                                                    rotation=-90,
            origin={60,40})));
equation
    Outflow.q + Inflow.q + Reabsorbtion.q = 0;
    Inflow.o = Outflow.o;
    Outflow.q = - DesiredFlow;
    annotation (Icon(coordinateSystem(preserveAspectRatio=false,extent={{-100,
          -100},{100,100}}),   graphics={
        Rectangle(
          extent={{-100,40},{100,-40}},
          lineColor={127,127,0},
          fillColor={255,255,170},
          fillPattern=FillPattern.HorizontalCylinder),
        Line(
          points={{-70,14},{-70,-18},{-52,-12},{-36,-14},{-18,-20},{-2,
              -28},{6,-36},{8,-40},{6,-22},{0,-12},{-8,-6},{-22,2},{-40,
              8},{-58,12},{-70,14}},
          color={0,0,255},
          smooth=Smooth.None),
        Text(
          extent={{12,-42},{166,-72}},
          lineColor={0,0,255},
          textString="%name"),
        Polygon(
          points={{20,14},{20,-14},{82,-2},{20,14}},
          lineColor={0,0,255},
          smooth=Smooth.None,
          fillColor={0,0,255},
          fillPattern=FillPattern.Solid)}));
end DistalTubule;
