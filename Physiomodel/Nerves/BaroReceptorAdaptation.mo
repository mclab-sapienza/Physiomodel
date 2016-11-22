within Physiomodel.Nerves;
model BaroReceptorAdaptation
    extends Physiolibrary.Icons.Barroreceptor;
    Physiolibrary.Types.RealIO.PressureInput pressure
                                     annotation (Placement(transformation(
      extent={{-120,-20},{-80,20}}), iconTransformation(extent={{-110,-10},
        {-90,10}})));
    Physiolibrary.Blocks.Math.Integrator adaptivePressure(
    y_start=AdaptivePressure,
    stateName="Baroreflex.AdaptedPressure",
    k=1/Tau)
    annotation (Placement(transformation(extent={{-22,-10},{-2,10}})));
    Modelica.Blocks.Math.Feedback pressureChange
    annotation (Placement(transformation(extent={{-70,-10},{-50,10}})));
    Physiolibrary.Blocks.Interpolation.Curve pressureChangeOnNA(
    x=PressureChangeOnNA[:, 1],
    y=PressureChangeOnNA[:, 2],
    slope=PressureChangeOnNA[:, 3],
    Xscale=101325/760)
    annotation (Placement(transformation(extent={{30,16},{66,52}})));
    Physiolibrary.Types.RealIO.FractionOutput NA
    annotation (Placement(transformation(extent={{80,-20},{120,20}})));
    parameter Physiolibrary.Types.Pressure AdaptivePressure(displayUnit="mmHg");
    parameter Physiolibrary.Types.Time Tau(displayUnit="h");
    parameter Real PressureChangeOnNA[3,:];
equation
    connect(pressureChange.u2, adaptivePressure.y) annotation (Line(
    points={{-60,-8},{-60,-22},{12,-22},{12,0},{-1,0}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(pressureChange.y, adaptivePressure.u) annotation (Line(
    points={{-51,0},{-24,0}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(pressureChangeOnNA.val, NA) annotation (Line(
    points={{66,34},{88,34},{88,0},{100,0}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(pressureChange.y, pressureChangeOnNA.u) annotation (Line(
    points={{-51,0},{-40,0},{-40,34},{30,34}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(pressure, pressureChange.u1) annotation (Line(
    points={{-100,0},{-68,0}},
    color={0,0,127},
    smooth=Smooth.None));
    annotation ( Icon(coordinateSystem(
      preserveAspectRatio=true, extent={{-100,-100},{100,100}}),
    graphics={
    Text(
      extent={{-122,130},{118,102}},
      lineColor={0,0,0},
      fillColor={213,255,170},
      fillPattern=FillPattern.Solid,
          textString="%name")}));
end BaroReceptorAdaptation;