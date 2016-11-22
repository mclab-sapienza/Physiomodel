within Physiomodel.Nerves;
model Pituitary
    extends Physiolibrary.Icons.Hypophysis;
    parameter Real BaroreflexOnBaroEffectData[:,3]={{ 0.0,  1.5,  0}, { 1.0,  1.0,  -0.5}, { 2.0,  0.5,  0}};

    Physiolibrary.Blocks.Interpolation.Curve BaroreflexOnBaroEffect(
    x=BaroreflexOnBaroEffectData[:, 1],
    y=BaroreflexOnBaroEffectData[:, 2],
    slope=BaroreflexOnBaroEffectData[:, 3])
    annotation (Placement(transformation(extent={{-54,-10},{-34,10}})));
    Modelica.Blocks.Interfaces.RealOutput BaroEffect
    annotation (Placement(transformation(extent={{78,-20},{118,20}})));
    Modelica.Blocks.Interfaces.RealInput Baroreflex_NA
    annotation (Placement(transformation(extent={{-120,-20},{-80,20}})));
    Modelica.Blocks.Math.Feedback sub
    annotation (Placement(transformation(extent={{-18,-10},{2,10}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant(k=1)
    annotation (Placement(transformation(extent={{-22,-20},{-14,-12}})));
    Modelica.Blocks.Math.Add add
    annotation (Placement(transformation(extent={{46,-10},{66,10}})));
    Modelica.Blocks.Math.Product product
    annotation (Placement(transformation(extent={{12,2},{32,22}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant BaroSensitivity(k=1)
    annotation (Placement(transformation(extent={{-12,30},{-4,38}})));
equation
    connect(Baroreflex_NA, BaroreflexOnBaroEffect.u)
                                    annotation (Line(
    points={{-100,0},{-54,0}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(BaroreflexOnBaroEffect.val, sub.u1) annotation (Line(
    points={{-34,0},{-16,0}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Constant.y, sub.u2) annotation (Line(
    points={{-13,-16},{-8,-16},{-8,-8}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(add.y, BaroEffect) annotation (Line(
    points={{67,0},{98,0}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Constant.y, add.u2) annotation (Line(
    points={{-13,-16},{16,-16},{16,-6},{44,-6}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(product.y, add.u1) annotation (Line(
    points={{33,12},{38,12},{38,6},{44,6}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(sub.y, product.u2) annotation (Line(
    points={{1,0},{6,0},{6,6},{10,6}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(BaroSensitivity.y, product.u1) annotation (Line(
    points={{-3,34},{4,34},{4,18},{10,18}},
    color={0,0,127},
    smooth=Smooth.None));
    annotation ( Icon(coordinateSystem(
      preserveAspectRatio=false, extent={{-100,-100},{100,100}}),
    graphics={Text(
      extent={{-110,128},{110,102}},
      lineColor={0,0,0},
      fillColor={213,255,170},
      fillPattern=FillPattern.Solid,
      textString="%name")}));
end Pituitary;