within Physiomodel.Electrolytes.Calcium.Factors;
model Y2
    extends Physiolibrary.Icons.BaseFactorIcon3;
    Modelica.Blocks.Interfaces.RealInput u
          annotation (Placement(transformation(extent={{-118,44},{-78,
        84}}),
    iconTransformation(extent={{-108,-10},{-88,10}})));
    parameter Real affinity;
    parameter Real Y_Max;
    Modelica.Blocks.Math.Product product annotation (Placement(transformation(
    extent={{-10,-10},{10,10}},
    rotation=270,
    origin={0,-32})));
    Real effect;
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant(k=
    affinity)
    annotation (Placement(transformation(extent={{-76,48},{-68,56}})));
    Modelica.Blocks.Math.Add add2(
                           k1=+1)  annotation (Placement(transformation(
    extent={{-4,-4},{4,4}},
    origin={-58,62})));
    Modelica.Blocks.Math.Division division
    annotation (Placement(transformation(extent={{-36,58},{-16,78}})));
equation
    effect = division.y;
    connect(yBase, product.u1) annotation (Line(
    points={{6,80},{6,30},{6,-20},{6,-20}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(product.y, y) annotation (Line(
    points={{-2.02067e-015,-43},{-2.02067e-015,-55.5},{0,-55.5},{0,
      -60}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(u, add2.u1) annotation (Line(
    points={{-98,64},{-84,64},{-84,64.4},{-62.8,64.4}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Constant.y, add2.u2) annotation (Line(
    points={{-67.6,52},{-66,52},{-66,59.6},{-62.8,59.6}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(add2.y, division.u2) annotation (Line(
    points={{-53.6,62},{-38,62}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(u, division.u1) annotation (Line(
    points={{-98,64},{-76,64},{-76,74},{-38,74}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(division.y, product.u2) annotation (Line(
    points={{-15,68},{-6,68},{-6,-20}},
    color={0,0,127},
    smooth=Smooth.None));
    annotation ( Documentation(revisions="<html>
    <p><i>2009-2010</i></p>
    <p>Marek Matejak, Charles University, Prague, Czech Republic </p>
    </html>"));
end Y2;