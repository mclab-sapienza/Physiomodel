within Physiomodel.Electrolytes;
model SweatGlandSalt
extends Physiolibrary.Icons.SweatGland;

parameter Real FractReabBasic=0.8;
parameter Real FractReabK=log( FractReabBasic)  / 15.0;

Physiolibrary.Blocks.Factors.Spline AldoEffect(data={{0,0.5,0.0},{12,1.0,
  0.03},{100,2.0,0.0}}, Xscale=1e-9/0.036)
annotation (Placement(transformation(extent={{-40,32},{-20,52}})));
Physiolibrary.Types.Constants.FractionConst             Constant(k=1)
annotation (Placement(transformation(extent={{-40,56},{-32,64}})));
Modelica.Blocks.Math.Division division
annotation (Placement(transformation(extent={{-4,32},{16,52}})));
Modelica.Blocks.Math.Exp FractReab
annotation (Placement(transformation(extent={{26,32},{46,52}})));
Modelica.Blocks.Math.Product product
annotation (Placement(transformation(extent={{-48,4},{-28,24}})));
Physiolibrary.Types.Constants.FractionConst             Constant1(k=
  FractReabK)
annotation (Placement(transformation(extent={{-72,4},{-64,12}})));
Modelica.Blocks.Math.Product Reab
annotation (Placement(transformation(extent={{72,26},{92,46}})));
Modelica.Blocks.Math.Feedback Outflow annotation (Placement(
    transformation(
    extent={{-10,10},{10,-10}},
    rotation=270,
    origin={78,-12})));
Physiolibrary.Chemical.Interfaces.ChemicalPort_a salt annotation (Placement(
  transformation(extent={{-110,-70},{-90,-50}}), iconTransformation(
    extent={{-110,-70},{-90,-50}})));
Physiolibrary.Chemical.Sources.UnlimitedSolutePumpOut outputPump(soluteFlow(
  start=0), useSoluteFlowInput=true)
annotation (Placement(transformation(extent={{66,-72},{90,-48}})));
Physiolibrary.Chemical.Sensors.ConcentrationMeasure    concentrationMeasure
annotation (Placement(transformation(
    extent={{-10,-10},{10,10}},
    origin={2,-58})));
Physiolibrary.Types.BusConnector busConnector annotation (Placement(
  transformation(extent={{-88,76},{-76,88}}), iconTransformation(extent=
     {{60,60},{100,100}})));
Modelica.Blocks.Math.Product SaltInflow
annotation (Placement(transformation(extent={{16,-30},{36,-10}})));
equation
    connect(Constant.y, AldoEffect.yBase) annotation (Line(
    points={{-31,60},{-30,60},{-30,44}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(AldoEffect.y, division.u2) annotation (Line(
    points={{-30,38},{-30,36},{-6,36}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(division.y, FractReab.u) annotation (Line(
    points={{17,42},{24,42}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(product.y, division.u1) annotation (Line(
    points={{-27,14},{-14,14},{-14,48},{-6,48}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Constant1.y, product.u2) annotation (Line(
    points={{-63,8},{-50,8}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(FractReab.y, Reab.u1) annotation (Line(
    points={{47,42},{70,42}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Reab.y, Outflow.u2) annotation (Line(
    points={{93,36},{100,36},{100,-12},{86,-12}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(salt, outputPump.q_in) annotation (Line(
    points={{-100,-60},{66,-60}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(outputPump.soluteFlow, Outflow.y) annotation (Line(
    points={{82.8,-55.2},{82.8,-38},{78,-38},{78,-21}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(salt, concentrationMeasure.q_in) annotation (Line(
    points={{-100,-60},{2,-60}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(busConnector.SweatGland_H2ORate, product.u1) annotation (Line(
    points={{-82,82},{-80,82},{-80,20},{-50,20}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(concentrationMeasure.concentration, SaltInflow.u2) annotation (Line(
    points={{2,-54},{2,-26},{14,-26}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(busConnector.SweatGland_H2ORate, SaltInflow.u1) annotation (Line(
    points={{-82,82},{-80,82},{-80,-14},{14,-14}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(SaltInflow.y, Reab.u2) annotation (Line(
    points={{37,-20},{54,-20},{54,30},{70,30}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(SaltInflow.y, Outflow.u1) annotation (Line(
    points={{37,-20},{54,-20},{54,2},{78,2},{78,-4}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(busConnector.Aldosterone, AldoEffect.u) annotation (Line(
    points={{-82,82},{-80,82},{-80,42},{-38,42}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
end SweatGlandSalt;