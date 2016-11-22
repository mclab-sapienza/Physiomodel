within Physiomodel.Heat;
model GILumenHeat
    extends Physiolibrary.Icons.GILumen;

    parameter Physiolibrary.Types.Density ChymusDensity=1000;

    Physiolibrary.Thermal.Components.HeatAccumulation GILumen(
    stateName="GILumenTemperature.Mass",
    useMassInput=true,
    relativeHeat_start=0)
    annotation (Placement(transformation(extent={{-50,-82},{-30,-62}})));
                   //(1293302.52) - 310.15*weight*(4186.8))

    //  initialTemperature(displayUnit="degC") = 310,
    Physiolibrary.Thermal.Components.Conductor resistorWithCondParam(
    Conductance(displayUnit="kcal/(min.degC)") =            0.6978)
    annotation (Placement(transformation(
    extent={{-10,-10},{10,10}},
    rotation=90,
    origin={-26,-44})));
    Physiolibrary.Thermal.Components.Stream Convection(
    useMassFlowInput=true, SpecificHeat=4186.8)
                       annotation (Placement(transformation(
    extent={{-10,10},{10,-10}},
    rotation=90,
    origin={-8,-28})));
    Physiolibrary.Types.BusConnector busConnector annotation (Placement(
    transformation(extent={{-100,-10},{-80,10}}), iconTransformation(
    extent={{-104,86},{-84,106}})));
    Physiolibrary.Thermal.Interfaces.HeatPort_b q_out annotation (Placement(
    transformation(extent={{-46,0},{-6,40}}), iconTransformation(extent={
      {-10,-10},{10,10}})));
    Modelica.Blocks.Math.Gain absorbedChymusDensity(
    y(unit="kg/s"),
    u(unit="m3/s"),
    k(unit="kg/m3") = ChymusDensity)
                annotation (Placement(transformation(
    extent={{-4,-4},{4,4}},
    rotation=180,
    origin={16,-36})));
    Physiolibrary.Thermal.Sources.MassInflow massInflow(
    useMassFlowInput=true,
    useTemperatureInput=true,
    SpecificHeat(displayUnit="kcal/(kg.K)")) annotation (Placement(
    transformation(
    extent={{10,-10},{-10,10}},
    rotation=90,
    origin={-40,-28})));
    Modelica.Blocks.Math.Gain absorbedChymusDensity1(
    y(unit="kg/s"),
    u(unit="m3/s"),
    k(unit="kg/m3") = ChymusDensity)
                annotation (Placement(transformation(
    extent={{4,-4},{-4,4}},
    rotation=180,
    origin={-56,-20})));
    Modelica.Blocks.Math.Gain absorbedChymusDensity2(
    k(unit="kg/m3") = ChymusDensity,
    u(unit="m3"),
    y(unit="kg"))     annotation (Placement(transformation(
    extent={{4,-4},{-4,4}},
    rotation=180,
    origin={-68,-64})));
equation
    connect(GILumen.q_in,resistorWithCondParam. q_in) annotation (Line(
    points={{-40,-72},{-26,-72},{-26,-54}},
    color={255,128,0},
    thickness=1,
    smooth=Smooth.None));
    connect(GILumen.q_in,Convection. q_in) annotation (Line(
    points={{-40,-72},{-8,-72},{-8,-38}},
    color={255,128,0},
    thickness=1,
    smooth=Smooth.None));
    connect(Convection.q_out, q_out) annotation (Line(
    points={{-8,-18},{-8,20},{-26,20}},
    color={255,128,0},
    thickness=1,
    smooth=Smooth.None));
    connect(resistorWithCondParam.q_out, q_out) annotation (Line(
    points={{-26,-34},{-26,20}},
    color={255,128,0},
    thickness=1,
    smooth=Smooth.None));
    connect(absorbedChymusDensity.u, busConnector.GILumenVolume_Absorption)
    annotation (Line(
    points={{20.8,-36},{36,-36},{36,-92},{-90,-92},{-90,0}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(Convection.massFlow, absorbedChymusDensity.y) annotation (Line(
    points={{-1,-36},{11.6,-36}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(massInflow.q_out, GILumen.q_in) annotation (Line(
    points={{-40,-38},{-40,-72}},
    color={191,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(busConnector.DietGoalH2O_DegK, massInflow.t) annotation (Line(
    points={{-90,0},{-90,-28},{-47,-28}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(absorbedChymusDensity1.y, massInflow.massFlow)
    annotation (Line(
    points={{-51.6,-20},{-47,-20}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(busConnector.GILumenVolume_Intake, absorbedChymusDensity1.u) annotation (Line(
    points={{-90,0},{-90,-20},{-60.8,-20}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(GILumen.weight, absorbedChymusDensity2.y) annotation (Line(
    points={{-50,-64},{-63.6,-64}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(busConnector.GILumenVolume_Mass, absorbedChymusDensity2.u)
    annotation (Line(
    points={{-90,0},{-90,-64},{-72.8,-64}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
end GILumenHeat;