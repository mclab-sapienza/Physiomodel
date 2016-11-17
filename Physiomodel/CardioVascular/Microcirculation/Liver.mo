within Physiomodel.CardioVascular.Microcirculation;
model Liver
    extends Interfaces.BaseDO;
    extends Physiolibrary.Icons.Liver;
    Physiolibrary.Hydraulic.Interfaces.HydraulicPort_a portalVein annotation (
    extent=[-10,-110; 10,-90], Placement(transformation(extent={{-14,-22},
        {6,-2}}), iconTransformation(extent={{12,-58},{32,-38}})));
    Physiolibrary.Hydraulic.Components.Conductor liverPortalConductance(
    Conductance=2.2251826750088e-08)
    "corrected to flow 1250ml/min in pressure gradient 1 mmHg"
    annotation (Placement(transformation(extent={{-52,-8},{-68,8}})));
    Physiolibrary.Hydraulic.Sensors.FlowMeasure flowMeasure1 annotation (
    Placement(transformation(
    extent={{-10,10},{10,-10}},
    rotation=180,
    origin={-84,0})));
    Physiolibrary.Hydraulic.Sensors.FlowMeasure flowMeasure2 annotation (
    Placement(transformation(
    extent={{-10,10},{10,-10}},
    rotation=180,
    origin={-24,-16})));
    Physiolibrary.Hydraulic.Components.Conductor HepaticArtyConductance(
    Conductance=3.5002873539464e-10)
    annotation (Placement(transformation(extent={{0,36},{-20,56}})));
    Physiolibrary.Hydraulic.Sensors.FlowMeasure flowMeasure3 annotation (
    Placement(transformation(
    extent={{-10,10},{10,-10}},
    rotation=180,
    origin={12,46})));
equation
    connect(flowMeasure1.volumeFlow, busConnector.Liver_BloodFlow)
      annotation (Line(
        points={{-84,12},{-84,90},{-90,90}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(flowMeasure2.volumeFlow, busConnector.PortalVein_BloodFlow)
      annotation (Line(
        points={{-24,-4},{-24,90},{-90,90}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(flowMeasure3.volumeFlow, busConnector.HepaticArty_BloodFlow)
      annotation (Line(
        points={{12,58},{12,90},{-90,90}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
    connect(portalVein, flowMeasure2.q_in) annotation (Line(
        points={{-4,-12},{-4,-16},{-14,-16}},
        color={0,0,0},
        thickness=1,
        smooth=Smooth.None));
    connect(flowMeasure.q_out, flowMeasure3.q_in) annotation (Line(
        points={{78,0},{32,0},{32,46},{22,46}},
        color={0,0,0},
        thickness=1,
        smooth=Smooth.None));
    connect(flowMeasure3.q_out, HepaticArtyConductance.q_in) annotation (
        Line(
        points={{2,46},{0,46}},
        color={0,0,0},
        thickness=1,
        smooth=Smooth.None));
    connect(liverPortalConductance.q_out, flowMeasure1.q_in) annotation (Line(
      points={{-68,0},{-67,0},{-67,-7.34788e-016},{-74,-7.34788e-016}},
      color={0,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(flowMeasure1.q_out, q_out) annotation (Line(
        points={{-94,7.34788e-016},{-94,0},{-100,0}},
        color={0,0,0},
        thickness=1,
        smooth=Smooth.None));
    connect(flowMeasure2.q_out, liverPortalConductance.q_in) annotation (Line(
      points={{-34,-16},{-50,-16},{-50,0},{-52,0}},
      color={0,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(liverPortalConductance.q_in, HepaticArtyConductance.q_out)
    annotation (Line(
      points={{-52,2.22045e-016},{-50,2.22045e-016},{-50,46},{-20,46}},
      color={0,0,0},
      thickness=1,
      smooth=Smooth.None));
end Liver;