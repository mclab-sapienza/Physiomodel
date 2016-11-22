within Physiomodel.Electrolytes.Calcium.Factors;
model Y1
    extends Physiolibrary.Icons.BaseFactorIcon3;
    Modelica.Blocks.Interfaces.RealInput u
          annotation (Placement(transformation(extent={{-118,44},{-78,
        84}}),
    iconTransformation(extent={{-108,-10},{-88,10}})));
    parameter Real a;
    parameter Real b;
    parameter Real d;
    parameter Real affinity;
    parameter Real Y_Max;
    parameter Boolean positive "+1 or -1";
    Modelica.Blocks.Math.Product product annotation (Placement(transformation(
    extent={{-10,-10},{10,10}},
    rotation=270,
    origin={0,-32})));
    Real effect;
    Modelica.Blocks.Math.Tanh tanh
    annotation (Placement(transformation(extent={{-34,54},{-14,74}})));
    Modelica.Blocks.Math.Add add(k1=+1)  annotation (Placement(transformation(
    extent={{-4,-4},{4,4}},
    rotation=270,
    origin={-4,16})));
    Modelica.Blocks.Math.Feedback feedback
    annotation (Placement(transformation(extent={{-74,54},{-54,74}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant(k=
    affinity)
    annotation (Placement(transformation(extent={{-76,44},{-68,52}})));
    Modelica.Blocks.Math.Gain gain(k=b)
    annotation (Placement(transformation(extent={{-50,60},{-42,68}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant1(k=1)
    annotation (Placement(transformation(extent={{-20,20},{-12,28}})));
    Modelica.Blocks.Math.Gain gain1(k=a) annotation (Placement(transformation(
    extent={{-4,-4},{4,4}},
    rotation=270,
    origin={-4,4})));
    Modelica.Blocks.Math.Add add1(k1=+1) annotation (Placement(transformation(
    extent={{-4,-4},{4,4}},
    rotation=270,
    origin={-6,-10})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant2(k=d)
    annotation (Placement(transformation(extent={{-22,-6},{-14,2}})));
    Modelica.Blocks.Math.BooleanToReal booleanToReal(realFalse=-1)
    annotation (Placement(transformation(extent={{-22,36},{-10,48}})));
    Modelica.Blocks.Sources.BooleanConstant booleanConstant(k=positive)
    annotation (Placement(transformation(extent={{-38,38},{-30,46}})));
    Modelica.Blocks.Math.Product product1 annotation (Placement(transformation(
    extent={{-4,-4},{4,4}},
    rotation=270,
    origin={-2,30})));
equation
    effect = add1.y;
    connect(yBase, product.u1) annotation (Line(
    points={{6,80},{6,30},{6,-20},{6,-20}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(product.y, y) annotation (Line(
    points={{-2.02067e-015,-43},{-2.02067e-015,-55.5},{0,-55.5},{0,
      -60}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Constant.y, feedback.u2) annotation (Line(
    points={{-67.6,48},{-64,48},{-64,56}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(u, feedback.u1) annotation (Line(
    points={{-98,64},{-72,64}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(feedback.y, gain.u) annotation (Line(
    points={{-55,64},{-50.8,64}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(gain.y, tanh.u) annotation (Line(
    points={{-41.6,64},{-36,64}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Constant1.y, add.u2) annotation (Line(
    points={{-11.6,24},{-6.4,24},{-6.4,20.8}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(add.y, gain1.u) annotation (Line(
    points={{-4,11.6},{-4,10.9},{-4,10.9},{-4,10.2},{-4,8.8},{-4,8.8}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Constant2.y, add1.u2) annotation (Line(
    points={{-13.6,-2},{-8.4,-2},{-8.4,-5.2}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(gain1.y, add1.u1) annotation (Line(
    points={{-4,-0.4},{-4,-5.2},{-3.6,-5.2}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(booleanConstant.y, booleanToReal.u) annotation (Line(
    points={{-29.6,42},{-23.2,42}},
    color={255,0,255},
    smooth=Smooth.None));
    connect(product1.y, add.u1) annotation (Line(
    points={{-2,25.6},{-2,20.8},{-1.6,20.8}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(booleanToReal.y, product1.u2) annotation (Line(
    points={{-9.4,42},{-4.4,42},{-4.4,34.8}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(tanh.y, product1.u1) annotation (Line(
    points={{-13,64},{0.4,64},{0.4,34.8}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(add1.y, product.u2) annotation (Line(
    points={{-6,-14.4},{-6,-15.8},{-6,-15.8},{-6,-17.2},{-6,-20},{-6,
      -20}},
    color={0,0,127},
    smooth=Smooth.None));
    annotation ( Documentation(revisions="<html>
    <p><i>2009-2010</i></p>
    <p>Marek Matejak, Charles University, Prague, Czech Republic </p>
    </html>"));
end Y1;