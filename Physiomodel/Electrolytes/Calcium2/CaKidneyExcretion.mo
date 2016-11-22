within Physiomodel.Electrolytes.Calcium2;
model CaKidneyExcretion
    extends Physiolibrary.Icons.Kidney;
    Physiolibrary.Chemical.Components.Stream v_4to_u_glomerulalFiltration(
    useSolutionFlowInput=true)
    annotation (Placement(transformation(extent={{16,-84},{32,-68}})));
    Factors.H H4to_u(delta=1.573, alpha=12.0877126)
    annotation (Placement(transformation(extent={{14,-4},{34,16}})));
    Factors.H H7_4to_u(delta=53.9/14, alpha=1.0615)
    annotation (Placement(transformation(extent={{14,-12},{34,8}})));
    Factors.H_minus H64_minus(
    alpha=2,
    delta=90,
    ro=0)
    annotation (Placement(transformation(extent={{14,-74},{34,-54}})));
    Physiolibrary.Blocks.Factors.Normalization simpleMultiply
    annotation (Placement(transformation(extent={{14,-64},{34,-44}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant(k=0.3)
    annotation (Placement(transformation(extent={{-4,-58},{4,-50}})));
    Physiolibrary.Chemical.Components.SolutePump v_4to_u_reabsorbtion(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(
    extent={{10,-10},{-10,10}},
    origin={24,-22})));
    Factors.H_minus H64_minus1(
    alpha=2,
    delta=90,
    ro=0) annotation (Placement(transformation(extent={{14,-20},{34,0}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant1(k=1)
    annotation (Placement(transformation(extent={{12,12},{20,20}})));
    Physiolibrary.Chemical.Sensors.ConcentrationMeasure concentrationMeasure
    annotation (Placement(transformation(
    extent={{-10,-10},{10,10}},
    rotation=270,
    origin={-16,6})));
    Physiolibrary.Types.BusConnector busConnector
    annotation (Placement(transformation(extent={{-100,80},{-80,100}})));
    Physiolibrary.Chemical.Interfaces.ChemicalPort_a q_in annotation (
    Placement(transformation(extent={{-68,-2},{-48,20}}),
    iconTransformation(extent={{10,-10},{30,10}})));
    Physiolibrary.Chemical.Interfaces.ChemicalPort_b q_out annotation (
    Placement(transformation(extent={{10,-110},{30,-90}}),
    iconTransformation(extent={{10,-110},{30,-90}})));
    Modelica.Blocks.Math.Gain to_liters_per_hours(k=60/1000)
                               annotation (Placement(transformation(
      extent={{-4,-4},{4,4}},
    origin={18,-42})));
equation
    connect(busConnector.Calcitriol, H64_minus.u) annotation (Line(
    points={{-90,90},{-10,90},{-10,-64},{14.2,-64}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(H64_minus.y, v_4to_u_glomerulalFiltration.solutionFlow)
    annotation (Line(
    points={{24,-66},{24,-71.2}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(simpleMultiply.y, H64_minus.yBase) annotation (Line(
    points={{24,-56},{24,-62}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Constant.y, simpleMultiply.u) annotation (Line(
    points={{4.4,-54},{14.2,-54}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(v_4to_u_reabsorbtion.q_in, v_4to_u_glomerulalFiltration.q_out)
    annotation (Line(
    points={{34,-22},{40,-22},{40,-76},{32,-76}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(busConnector.Calcitriol, H64_minus1.u) annotation (Line(
    points={{-90,90},{-10,90},{-10,-10},{14.2,-10}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(H64_minus1.y, v_4to_u_reabsorbtion.soluteFlow) annotation (Line(
    points={{24,-12},{24,-16}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(H7_4to_u.y, H64_minus1.yBase) annotation (Line(
    points={{24,-4},{24,-8}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(H4to_u.y, H7_4to_u.yBase) annotation (Line(
    points={{24,4},{24,0}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(busConnector.PTH, H7_4to_u.u) annotation (Line(
    points={{-90,90},{-10,90},{-10,-2},{14.2,-2}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(Constant1.y, H4to_u.yBase) annotation (Line(
    points={{20.4,16},{24,16},{24,8}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(concentrationMeasure.concentration, H4to_u.u) annotation (Line(
    points={{-12,6},{1.1,6},{1.1,6},{14.2,6}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(q_in, v_4to_u_reabsorbtion.q_out) annotation (Line(
    points={{-58,9},{-16,9},{-16,-22},{14,-22}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(q_in, concentrationMeasure.q_in) annotation (Line(
    points={{-58,9},{-16,9},{-16,6}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(q_in, v_4to_u_glomerulalFiltration.q_in) annotation (Line(
    points={{-58,9},{-16,9},{-16,-76},{16,-76}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(v_4to_u_glomerulalFiltration.q_out, q_out) annotation (Line(
    points={{32,-76},{40,-76},{40,-100},{20,-100}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(to_liters_per_hours.y, simpleMultiply.yBase) annotation (Line(
    points={{22.4,-42},{24,-42},{24,-52}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(busConnector.Glomerulus_GFR, to_liters_per_hours.u) annotation (
    Line(
    points={{-90,90},{-10,90},{-10,-42},{13.2,-42}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    annotation ( Icon(coordinateSystem(
        preserveAspectRatio=true, extent={{-100,-100},{100,100}}),
      graphics={Text(
        extent={{-112,120},{100,100}},
        fillColor={255,255,255},
        fillPattern=FillPattern.Solid,
        textString="%name",
        lineColor={0,0,127})}));
end CaKidneyExcretion;