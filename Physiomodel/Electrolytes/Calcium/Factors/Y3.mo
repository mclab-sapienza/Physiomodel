within Physiomodel.Electrolytes.Calcium.Factors;
model Y3
    extends Physiolibrary.Icons.BaseFactorIcon3;
    Modelica.Blocks.Interfaces.RealInput u
          annotation (Placement(transformation(extent={{-118,44},{-78,
        84}}),
    iconTransformation(extent={{-108,-10},{-88,10}})));
    parameter Real k;

    Modelica.Blocks.Math.Product product annotation (Placement(transformation(
    extent={{-10,-10},{10,10}},
    rotation=270,
    origin={0,-32})));
    Real effect;
    Modelica.Blocks.Math.Gain gain
    annotation (Placement(transformation(extent={{-54,54},{-34,74}})));
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
    connect(u, gain.u) annotation (Line(
    points={{-98,64},{-56,64}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(gain.y, product.u2) annotation (Line(
    points={{-33,64},{-6,64},{-6,-20}},
    color={0,0,127},
    smooth=Smooth.None));
    annotation ( Documentation(revisions="<html>
    <p><i>2009-2010</i></p>
    <p>Marek Matejak, Charles University, Prague, Czech Republic </p>
    </html>"));
end Y3;