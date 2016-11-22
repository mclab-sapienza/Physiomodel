within Physiomodel.Heat.Skin;

model InsensibleSkin2
    extends Physiolibrary.Icons.Skin;
    parameter Real bodyPart=1/3;
    Physiolibrary.Types.BusConnector busConnector annotation (Placement(
    transformation(extent={{-100,81},{-80,101}}), iconTransformation(
      extent={{60,60},{80,80}})));
    Physiolibrary.Types.Constants.VolumeFlowRateConst H2OReab1(k=0.37*
    bodyPart)
    annotation (Placement(transformation(extent={{-48,-64},{-40,-56}})));
    Modelica.Blocks.Logical.Switch switch1
    annotation (Placement(transformation(extent={{-28,-82},{-8,-62}})));
    Modelica.Blocks.Logical.Greater greater
    annotation (Placement(transformation(extent={{-70,-82},{-50,-62}})));
    Physiolibrary.Types.Constants.VolumeFlowRateConst H2OReab2(k=0)
    annotation (Placement(transformation(extent={{-74,-98},{-66,-90}})));
    Physiolibrary.Osmotic.Interfaces.OsmoticPort_b q_out annotation (
    Placement(transformation(extent={{-48,-44},{-30,-28}}),
    iconTransformation(extent={{-90,-50},{-70,-30}})));
    Physiolibrary.Osmotic.Sources.SolventOutflux vapor(useSolutionFlowInput=
    true)
    annotation (Placement(transformation(extent={{6,-92},{26,-72}})));
equation
    connect(greater.y, switch1.u2) annotation (Line(
    points={{-49,-72},{-30,-72}},
    color={255,0,255},
    smooth=Smooth.None));
    connect(H2OReab1.y, switch1.u1) annotation (Line(
    points={{-39,-60},{-36,-60},{-36,-64},{-30,-64}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(H2OReab2.y, switch1.u3) annotation (Line(
    points={{-65,-94},{-34,-94},{-34,-80},{-30,-80}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(H2OReab2.y, greater.u2) annotation (Line(
    points={{-65,-94},{-60,-94},{-60,-86},{-76,-86},{-76,-80},{-72,-80}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(busConnector.skin_BloodFlow, greater.u1) annotation (Line(
    points={{-90,91},{-90,-72},{-72,-72}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(vapor.q_in, q_out) annotation (Line(
    points={{10,-82},{4,-82},{4,-36},{-39,-36}},
    color={127,127,0},
    thickness=1,
    smooth=Smooth.None));
    connect(switch1.y, vapor.solutionFlow) annotation (Line(
    points={{-7,-72},{16,-72},{16,-78}},
    color={0,0,127},
    smooth=Smooth.None));
    annotation ( Icon(coordinateSystem(
        preserveAspectRatio=true,  extent={{-100,-100},{100,100}}),
      graphics={Text(
        extent={{-155,-83},{126,-108}},
        lineColor={0,0,255},
        textString="%name")}));
end InsensibleSkin2;