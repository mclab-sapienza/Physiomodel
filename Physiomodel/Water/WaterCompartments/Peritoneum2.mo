within Physiomodel.Water.WaterCompartments;


model Peritoneum2
    extends Physiolibrary.Icons.Peritoneum;
    Physiolibrary.Osmotic.Interfaces.OsmoticPort_a flux
    "plasma proteins concentration" annotation (Placement(transformation(
      extent={{76,-8},{96,12}}), iconTransformation(extent={{-10,30},{
        10,50}})));

    parameter Physiolibrary.Types.Volume initialVolume = 0
    "initial water in peritoneum";

    Physiomodel.Metabolism.deprecated.HydraulicPressure colloidhydraulicPressure0_1
    annotation (Placement(transformation(extent={{68,34},{60,42}})));
    Physiomodel.Metabolism.deprecated.HydraulicPressure colloidhydraulicPressure0_2
    annotation (Placement(transformation(extent={{64,-6},{56,2}})));
    Physiolibrary.Types.Constants.PressureConst ExternalPressure(k=
    1199.901486735)
    annotation (Placement(transformation(extent={{-72,60},{-64,68}})));
    Physiolibrary.Hydraulic.Components.ElasticVessel
    vascularElasticBloodCompartment(volume_start=initialVolume, stateName=
      "PeritoneumSpace.Volume",
    useV0Input=true,
    useComplianceInput=true,
    useExternalPressureInput=true)
    annotation (Placement(transformation(extent={{-70,14},{-50,34}})));
    Physiolibrary.Types.Constants.VolumeConst PeritoneumSpace_V0(k=0)
    "PeritoneumSpace.V0"
    annotation (Placement(transformation(extent={{-78,36},{-70,44}})));
    Physiolibrary.Types.Constants.HydraulicComplianceConst complianceConstant(
    k=5.700467976427015e-006)
    annotation (Placement(transformation(extent={{-74,48},{-66,56}})));

    Physiolibrary.Types.BusConnector busConnector annotation (Placement(
    transformation(extent={{-84,71},{-64,91}}), iconTransformation(
      extent={{60,60},{80,80}})));

    Physiolibrary.Hydraulic.Components.IdealValve idealValve
    annotation (Placement(transformation(extent={{30,-8},{50,12}})));
    Physiolibrary.Hydraulic.Components.Conductor lymph(Conductance=1.8751539396141e-10)
    annotation (Placement(transformation(extent={{-32,-8},{-12,12}})));
    Physiolibrary.Hydraulic.Sensors.FlowMeasure flowMeasure
    annotation (Placement(transformation(extent={{2,-8},{22,12}})));
    Physiolibrary.Hydraulic.Components.Conductor splanchnic(Conductance=1.8751539396141e-10)
    annotation (Placement(transformation(extent={{-28,32},{-8,52}})));
    Physiolibrary.Hydraulic.Sensors.FlowMeasure flowMeasure1
    annotation (Placement(transformation(extent={{20,52},{0,32}})));

    Physiolibrary.Osmotic.Sensors.FlowMeasure flowMeasure2
    annotation (Placement(transformation(extent={{82,32},{70,16}})));
equation
    connect(colloidhydraulicPressure0_2.hydraulicPressure, ExternalPressure.y)
    annotation (Line(
    points={{58.4,2.8},{58.4,20},{-38,20},{-38,64},{-63,64}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(busConnector.SplanchnicVeins_Pressure,
    colloidhydraulicPressure0_1.hydraulicPressure) annotation (Line(
    points={{-74,81},{62.4,81},{62.4,42.8}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(colloidhydraulicPressure0_2.withoutCOP, idealValve.q_out) annotation (
    Line(
    points={{56,2},{50,2}},
    color={0,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(lymph.q_out, flowMeasure.q_in) annotation (Line(
    points={{-12,2},{2,2}},
    color={0,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(idealValve.q_in, flowMeasure.q_out) annotation (Line(
    points={{30,2},{22,2}},
    color={0,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(flowMeasure.volumeFlow, busConnector.PeritoneumSpace_Loss)
    annotation (Line(
    points={{12,14},{12,-16},{94,-16},{94,81},{-74,81}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(flowMeasure1.q_in, colloidhydraulicPressure0_1.withoutCOP)
    annotation (Line(
    points={{20,42},{60,42}},
    color={0,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(flowMeasure1.q_out, splanchnic.q_out) annotation (Line(
    points={{0,42},{-8,42}},
    color={0,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(flowMeasure1.volumeFlow, busConnector.PeritoneumSpace_Gain)
    annotation (Line(
    points={{10,30},{10,81},{-74,81}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(PeritoneumSpace_V0.y, vascularElasticBloodCompartment.zeroPressureVolume)
    annotation (Line(
    points={{-69,40},{-68,40},{-68,32}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(ExternalPressure.y, vascularElasticBloodCompartment.externalPressure)
    annotation (Line(
    points={{-63,64},{-52,64},{-52,32}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(complianceConstant.y, vascularElasticBloodCompartment.compliance)
    annotation (Line(
    points={{-65,52},{-60,52},{-60,32}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(busConnector.PeritoneumSpace_Vol,
    vascularElasticBloodCompartment.volume) annotation (Line(
    points={{-74,81},{-96,81},{-96,14},{-54,14}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(vascularElasticBloodCompartment.q_in, splanchnic.q_in)
    annotation (Line(
    points={{-60,24},{-36,24},{-36,42},{-28,42}},
    color={0,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(vascularElasticBloodCompartment.q_in, lymph.q_in)
    annotation (Line(
    points={{-60,24},{-46,24},{-46,2},{-32,2}},
    color={0,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(flux, flowMeasure2.q_in) annotation (Line(
    points={{86,2},{86,24},{82,24}},
    color={127,127,0},
    thickness=1,
    smooth=Smooth.None));
    connect(colloidhydraulicPressure0_1.q_in, flowMeasure2.q_out) annotation (
    Line(
    points={{68,38},{70,38},{70,24}},
    color={127,127,0},
    thickness=1,
    smooth=Smooth.None));
    connect(colloidhydraulicPressure0_2.q_in, flowMeasure2.q_out) annotation (
    Line(
    points={{64,-2},{70,-2},{70,24}},
    color={127,127,0},
    thickness=1,
    smooth=Smooth.None));
    connect(flowMeasure2.volumeFlowRate, busConnector.PeritoneumSpace_Change)
    annotation (Line(
    points={{76,30.4},{76,81},{-74,81}},
    color={0,0,127},
    smooth=Smooth.None));
    annotation (
    Documentation(info="<HTML>
    <PRE>
    QHP 2008 / Peritoneum
    </PRE>
    </HTML>
    ",     revisions="<html>
    <ul>
    <li><i>  </i>
    </li>
    <li><i> january 2009 </i><br>
    by Marek Matejak in Modelica initially implemented (consulted with Jiri Kofranek), Charles University, Prague<br>
    orginaly described by Tom Coleman in QHP 2008 beta 3, University of Mississippi Medical Center
    </li>
    </ul>
    </html>"),       Icon(coordinateSystem(preserveAspectRatio=true, extent={{-100,
          -100},{100,100}}), graphics={Text(
        extent={{-100,120},{100,104}},
        lineColor={0,0,255},
        textString="%name")}));
end Peritoneum2;
