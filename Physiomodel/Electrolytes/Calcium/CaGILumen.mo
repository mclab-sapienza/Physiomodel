within Physiomodel.Electrolytes.Calcium;
model CaGILumen
    extends Physiolibrary.Icons.GILumen;
    Physiolibrary.Chemical.Interfaces.ChemicalPort_b q_out annotation (
    Placement(transformation(extent={{90,-10},{110,10}}),
    iconTransformation(extent={{90,-10},{110,10}})));
    Physiolibrary.Types.BusConnector busConnector annotation (Placement(
    transformation(extent={{-96,70},{-76,90}}), iconTransformation(
    extent={{-96,70},{-76,90}})));
    Physiolibrary.Chemical.Components.Diffusion resistorWithCondParam(
    Conductance=(0.0002)*(1e-6)/60)
    annotation (Placement(transformation(extent={{38,-10},{58,10}})));
    Physiolibrary.Molar.ConcentrationCompartment_knownConc
    GILumen(
    concentration=0.21/0.0002 + 2.4)
    annotation (Placement(transformation(extent={{-24,-10},{-4,10}})));
    Physiolibrary.Chemical.Sources.UnlimitedSolutePump inputPump(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{-50,30},{-30,50}})));
    CaTransportPool caTransportPool
    annotation (Placement(transformation(extent={{-28,-60},{-8,-40}})));
    Physiolibrary.Chemical.Sensors.ConcentrationMeasure concentrationMeasure
    annotation (Placement(transformation(
    extent={{-10,-10},{10,10}},
    rotation=180,
    origin={-52,-4})));
    Physiolibrary.Chemical.Components.SolutePump soluteFlowPump(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{40,-18},{60,-38}})));
    Modelica.Blocks.Math.Gain mlTOlitre(k=0.001)
                           annotation (Placement(transformation(
    extent={{-4,-4},{4,4}},
    origin={-36,8})));
equation
    connect(resistorWithCondParam.q_out, q_out) annotation (Line(
    points={{58,0},{100,0}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(GILumen.q_out, resistorWithCondParam.q_in) annotation (Line(
    points={{-14,0},{39.4,0}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(inputPump.q_out, GILumen.q_out) annotation (Line(
    points={{-34,40},{-14,40},{-14,0}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(busConnector.Diet_Ca_Intake, inputPump.soluteFlow) annotation (
    Line(
    points={{-86,80},{-36,80},{-36,44}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(busConnector.Calcitriol, caTransportPool.Calcitriol) annotation (Line(
    points={{-86,80},{-86,-44},{-26,-44}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(GILumen.q_out, concentrationMeasure.q_in) annotation (Line(
    points={{-14,0},{-52,0},{-52,-4}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(concentrationMeasure.concentration, caTransportPool.CaIntestinal)
    annotation (Line(
    points={{-52,-8},{-52,-52},{-26,-52}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(GILumen.q_out, soluteFlowPump.q_in) annotation (Line(
    points={{-14,0},{14,0},{14,-28},{40,-28}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(soluteFlowPump.q_out, q_out) annotation (Line(
    points={{60,-28},{80,-28},{80,0},{100,0}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(caTransportPool.J_ipCa_activeAbsorbtion, soluteFlowPump.soluteFlow)
    annotation (Line(
    points={{-8,-50},{54,-50},{54,-32}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(mlTOlitre.y, GILumen.SolventVolume) annotation (Line(
    points={{-31.6,8},{-24,8}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(busConnector.GILumenVolume_Mass, mlTOlitre.u) annotation (Line(
    points={{-86,80},{-86,8},{-40.8,8}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,
          -100},{100,100}}), graphics={Text(
        extent={{-108,-110},{104,-130}},
        fillColor={255,255,255},
        fillPattern=FillPattern.Solid,
        textString="%name",
        lineColor={0,0,127})}));
end CaGILumen;