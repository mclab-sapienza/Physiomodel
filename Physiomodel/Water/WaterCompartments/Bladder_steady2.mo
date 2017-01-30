within Physiomodel.Water.WaterCompartments;
model Bladder_steady2
    // extends Library.PressureFlow.VolumeCompartement;
    extends Physiolibrary.Icons.Bladder;
    Physiolibrary.Osmotic.Interfaces.OsmoticPort_a     con annotation (
    Placement(transformation(extent={{-84,18},{-44,58}}),
      iconTransformation(extent={{-120,-20},{-80,20}})));
    Physiolibrary.Osmotic.Sources.SolventOutflux  bladderVoidFlow(
    useSolutionFlowInput=true)
    annotation (Placement(transformation(extent={{-58,-23},{-73,-8}})));
    Physiolibrary.Types.BusConnector busConnector annotation (Placement(
      transformation(extent={{-100,69},{-80,89}}), iconTransformation(
        extent={{-100,-100},{-80,-80}})));

    Physiolibrary.Osmotic.Sensors.FlowMeasure   flowMeasure annotation (
    Placement(transformation(
      extent={{-10,10},{10,-10}},
      rotation=270,
      origin={-38,6})));

    Physiolibrary.Osmotic.Components.OsmoticCell bladder(volume_start=0.0003)
    annotation (Placement(transformation(extent={{-26,28},{-6,48}})));
equation
    connect(busConnector.CD_H2O_Outflow, bladderVoidFlow.solutionFlow)
    annotation (Line(
    points={{-90,79},{-90,8},{-66,8},{-66,-10.25},{-65.5,-10.25}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(con, bladder.q_in[1]) annotation (Line(
      points={{-64,38},{-16,38}},
      color={127,127,0},
      thickness=1,
      smooth=Smooth.None));
    connect(flowMeasure.q_in, bladder.q_in[1]) annotation (Line(
      points={{-38,16},{-38,38},{-16,38}},
      color={127,127,0},
      thickness=1,
      smooth=Smooth.None));
    connect(flowMeasure.q_out, bladderVoidFlow.q_in) annotation (Line(
      points={{-38,-4},{-38,-15.5},{-61,-15.5}},
      color={127,127,0},
      thickness=1,
      smooth=Smooth.None));
    connect(bladder.volume, busConnector.BladderVolume_Mass) annotation (Line(
      points={{-10,28},{22,28},{22,79},{-90,79}},
      color={0,0,127},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}}));
    connect(flowMeasure.volumeFlowRate, busConnector.BladderVoidFlow)
    annotation (Line(
      points={{-32,6},{30,6},{30,79},{-90,79}},
      color={0,0,127},
      smooth=Smooth.None));
    annotation (Icon(coordinateSystem(preserveAspectRatio=true, extent={{-100,
            -100},{100,100}}), graphics={Text(
          extent={{-100,96},{100,80}},
          lineColor={0,0,255},
          textString="%name")}));
end Bladder_steady2;
