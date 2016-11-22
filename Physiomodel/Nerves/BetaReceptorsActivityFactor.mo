within Physiomodel.Nerves;
model BetaReceptorsActivityFactor
    //extends Library.BaseFactor2;

    Modelica.Blocks.Interfaces.RealInput GangliaGeneral_NA(final quantity=
    "Frequency", final displayUnit="Hz")       annotation (Placement(transformation(extent={{-100,40},
        {-80,60}}), iconTransformation(extent={{-108,-70},{-88,-50}})));
    Modelica.Blocks.Interfaces.RealInput BetaPool_Effect
                                  annotation (Placement(transformation(extent={{-100,0},
        {-80,20}}),
    iconTransformation(extent={{-108,50},{-88,70}})));
    Modelica.Blocks.Interfaces.RealInput BetaBlockade_Effect
           annotation (Placement(transformation(extent={{-42,-46},{-22,-26}}),
    iconTransformation(extent={{-108,-10},{-88,10}})));
    Modelica.Blocks.Interfaces.RealInput yBase
                       annotation (Placement(transformation(extent={{-10,-10},
        {10,10}},
    rotation=270,
    origin={86,90}),
    iconTransformation(extent={{-10,-10},{10,10}},rotation=270,
    origin={0,70})));
    Modelica.Blocks.Interfaces.RealOutput y
                    annotation (Placement(transformation(extent={{-10,-10},
        {10,10}},
    rotation=270,
    origin={80,-90}),
    iconTransformation(extent={{-10,-10},{10,10}},  rotation=270,
    origin={0,-70})));

    parameter Real NEURALK(displayUnit="1/Hz") = 0.333;
    parameter Real HUMORALK = 0.5;
    parameter Boolean Switch = false;
    parameter Real Setting = 0;

    Modelica.Blocks.Math.Add TotalAgonism(k1=NEURALK, k2=HUMORALK)
    annotation (Placement(transformation(extent={{-58,20},{-38,40}})));
    Modelica.Blocks.Logical.Switch switch1
    annotation (Placement(transformation(extent={{18,28},{38,48}})));
    Modelica.Blocks.Sources.BooleanConstant booleanConstant(k=Switch)
    annotation (Placement(transformation(extent={{-28,38},{-8,58}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant(k=Setting)
    annotation (Placement(transformation(extent={{-30,76},{-10,96}})));
    Modelica.Blocks.Math.Product Activity
    annotation (Placement(transformation(extent={{-6,-40},{14,-20}})));
    Modelica.Blocks.Math.Product SympsEffect
                                    annotation (Placement(transformation(
    extent={{-10,-10},{10,10}},
    rotation=270,
    origin={80,-66})));
equation

    connect(Activity.u2, BetaBlockade_Effect) annotation (Line(
    points={{-8,-36},{-32,-36}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Activity.u1, switch1.y)
                             annotation (Line(
    points={{-8,-24},{-20,-24},{-20,2},{62,2},{62,38},{39,38}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(switch1.u3, TotalAgonism.y)
                         annotation (Line(
    points={{16,30},{-37,30}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(switch1.u2, booleanConstant.y) annotation (Line(
    points={{16,38},{-2,38},{-2,48},{-7,48}},
    color={255,0,255},
    smooth=Smooth.None));
    connect(switch1.u1, Constant.y) annotation (Line(
    points={{16,46},{10,46},{10,86},{-7.5,86}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(yBase, SympsEffect.u1)
                          annotation (Line(
    points={{86,90},{86,-54}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(SympsEffect.y, y)
                     annotation (Line(
    points={{80,-77},{80,-90}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(GangliaGeneral_NA, TotalAgonism.u1) annotation (Line(
    points={{-90,50},{-70,50},{-70,36},{-60,36}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(BetaPool_Effect, TotalAgonism.u2)  annotation (Line(
    points={{-90,10},{-70,10},{-70,24},{-60,24}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Activity.y, SympsEffect.u2) annotation (Line(
    points={{15,-30},{74,-30},{74,-54}},
    color={0,0,127},
    smooth=Smooth.None));
    annotation (Icon(coordinateSystem(preserveAspectRatio=true, extent={{-100,
        -100},{100,100}}), graphics={Rectangle(
      extent={{-100,70},{100,-70}},
      lineColor={112,143,0},
      fillPattern=FillPattern.Sphere,
      fillColor={255,255,255}), Text(
      extent={{-88,-40},{100,48}},
      lineColor={0,0,0},
      fillPattern=FillPattern.Sphere,
      fillColor={85,255,170},
      textString="%name")}));
end BetaReceptorsActivityFactor;