within Physiomodel.Water.WaterCompartments;
model Outtake
    Physiolibrary.Osmotic.Interfaces.OsmoticPort_a     H2OLoss annotation (
    Placement(transformation(extent={{-120,-20},{-80,20}}),
    iconTransformation(extent={{-110,-10},{-90,10}})));

    //parameter Real H2OTarget(final quantity="VolumeFlowRate",final displayUnit="ml/min") = 0;

    parameter Real H2OMassEffect[ :,3] = {{  0.0,  0.0,  0.0}, { 50.0,  1.0,  0.0}}
    "volume to outtake effect";

    Physiolibrary.Osmotic.Sources.SolventOutflux  outputPump(
    useSolutionFlowInput=true)
    annotation (Placement(transformation(extent={{20,-20},{60,20}})));
    Physiolibrary.Blocks.Interpolation.Curve curve(
    x=H2OMassEffect[:, 1],
    y=H2OMassEffect[:, 2],
    slope=H2OMassEffect[:, 3])
    annotation (Placement(transformation(extent={{-60,24},{-40,44}})));
    Modelica.Blocks.Math.Product product
    annotation (Placement(transformation(extent={{-8,30},{12,50}})));
    Physiolibrary.Types.RealIO.VolumeFlowRateOutput
                                      outflow "volume flow rate"
                                       annotation (Placement(
      transformation(extent={{80,-60},{120,-20}}), iconTransformation(
      extent={{-20,-20},{20,20}},
      origin={100,-40})));
    Physiolibrary.Types.RealIO.VolumeFlowRateInput
                                     H2OTarget(displayUnit="ml/min")
    "maximal volume outflow rate"
    annotation (Placement(transformation(extent={{-100,60},{-60,100}}),
      iconTransformation(
      extent={{-20,-20},{20,20}},
      rotation=270,
      origin={0,40})));
    Physiolibrary.Types.RealIO.VolumeInput H2OVolume "volume" annotation (
    Placement(transformation(extent={{-118,22},{-78,62}}), iconTransformation(
      extent={{-20,-20},{20,20}},
      rotation=270,
    origin={-60,40})));
equation
    connect(curve.val, product.u2) annotation (Line(
    points={{-40,34},{-10,34}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(product.y, outflow) annotation (Line(
    points={{13,40},{84,40},{84,-40},{100,-40}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(H2OTarget, product.u1) annotation (Line(
    points={{-80,80},{-24,80},{-24,46},{-10,46}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(product.y, outputPump.solutionFlow) annotation (Line(
    points={{13,40},{40,40},{40,14}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(H2OVolume, curve.u) annotation (Line(
    points={{-98,42},{-80,42},{-80,34},{-60,34}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(H2OLoss, outputPump.q_in) annotation (Line(
    points={{-100,0},{28,0}},
    color={127,127,0},
    thickness=1,
    smooth=Smooth.None));
    annotation (Icon(coordinateSystem(preserveAspectRatio=false,extent={{-100,-100},
          {100,100}}),       graphics={Rectangle(
        extent={{-100,40},{100,-40}},
        lineColor={0,0,255},
        fillPattern=FillPattern.Solid,
        fillColor={255,255,255}), Text(
        extent={{-90,-40},{100,40}},
        lineColor={0,0,255},
        fillColor={255,255,255},
        fillPattern=FillPattern.Solid,
        textString="%name")}));
end Outtake;