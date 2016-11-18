within Physiomodel.Water.WaterCompartments;

model CerebrospinalFluid
    extends Physiolibrary.Icons.Brain;
    Physiolibrary.Osmotic.Components.OsmoticCell CSF_osmotic(volume_start(
    displayUnit="ml") = 0.00015, ImpermeableSolutes={(0.286*0.15)})
    "cerebro-spinal fluid"
    annotation (Placement(transformation(extent={{-78,-16},{-58,4}})));
    Physiolibrary.Osmotic.Components.Membrane
                    choroid_plexus(useHydraulicPressureInputs=true, cond(
      displayUnit="ml/(mmHg.day)") = 1.9966916949595e-12)
    "choroid plexus"
    annotation (Placement(transformation(extent={{-18,-16},{-38,4}})));
    Physiolibrary.Hydraulic.Components.ElasticVessel
                                   CSF_hydraulic(
    volume_start=0.00015,
    ZeroPressureVolume=0.000145,
    Compliance=2.250184727537e-09) "cerebro-spinal fluid"
    annotation (Placement(transformation(extent={{-98,-42},{-78,-22}})));
    Physiolibrary.Hydraulic.Components.Pump
                          choroid_plexus_hydraulic(useSolutionFlowInput=
      true) annotation (Placement(transformation(
      extent={{-10,10},{10,-10}},
      rotation=180,
      origin={6,-32})));
    Physiolibrary.Osmotic.Sensors.FlowMeasure
                    flowMeasure annotation (Placement(transformation(
      extent={{-10,10},{10,-10}},
      rotation=180,
      origin={6,-6})));
    Physiolibrary.Hydraulic.Sensors.PressureMeasure
                                  pressureMeasure
    annotation (Placement(transformation(extent={{-92,54},{-72,74}})));
    Physiolibrary.Hydraulic.Sources.UnlimitedVolume
                                  veins(P=0) annotation (Placement(
      transformation(
      extent={{-10,-10},{10,10}},
      rotation=180,
      origin={80,76})));
    Physiolibrary.Osmotic.Components.Membrane
                    arachnoid_villi(useHydraulicPressureInputs=true, cond(
      displayUnit="ml/(mmHg.day)") = 1.1285648710641e-11)
    "choroid plexus"
    annotation (Placement(transformation(extent={{-38,36},{-18,56}})));
    Physiolibrary.Hydraulic.Components.Pump
                          arachnoid_villi_hydraulic(useSolutionFlowInput=
      true)
    annotation (Placement(transformation(extent={{-4,86},{16,66}})));
    Physiolibrary.Osmotic.Sensors.FlowMeasure
                    flowMeasure1
    annotation (Placement(transformation(extent={{-4,56},{16,36}})));
    Physiolibrary.Hydraulic.Sources.UnlimitedVolume choroidPlexusCapy(P=
    3733.02684762) annotation (Placement(transformation(
    extent={{-10,-10},{10,10}},
    rotation=180,
    origin={80,-28})));
    Physiolibrary.Hydraulic.Sensors.PressureMeasure
                                  pressureMeasure1
    annotation (Placement(transformation(extent={{66,54},{46,74}})));
    Physiolibrary.Hydraulic.Sensors.PressureMeasure
                                  pressureMeasure2
    annotation (Placement(transformation(extent={{60,-32},{40,-12}})));
    Physiolibrary.Osmotic.Interfaces.OsmoticPort_a flux
    "plasma proteins concentration" annotation (Placement(transformation(
      extent={{46,14},{66,34}}), iconTransformation(extent={{-10,30},{
        10,50}})));
    Physiolibrary.Osmotic.Components.PermeabilityLevelSwitch
    permeabilityLevelSwitch
    annotation (Placement(transformation(extent={{44,14},{24,34}})));
    Physiolibrary.Types.BusConnector busConnector annotation (Placement(
    transformation(extent={{28,81},{48,101}}), iconTransformation(
      extent={{50,-10},{70,10}})));
equation

    connect(flowMeasure.volumeFlowRate, choroid_plexus_hydraulic.solutionFlow)
    annotation (Line(
      points={{6,-12},{6,-25}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(CSF_hydraulic.q_in,pressureMeasure. q_in) annotation (Line(
        points={{-88,-32},{-88,58},{-86,58}},
        color={0,0,0},
        thickness=1,
        smooth=Smooth.None));
    connect(CSF_hydraulic.q_in,choroid_plexus_hydraulic. q_out) annotation (
        Line(
        points={{-88,-32},{-4,-32}},
        color={0,0,0},
        thickness=1,
        smooth=Smooth.None));
    connect(CSF_osmotic.q_in[1], arachnoid_villi.q_in) annotation (Line(
      points={{-68,-6},{-68,46},{-38,46}},
      color={127,127,0},
      thickness=1,
      smooth=Smooth.None));
    connect(CSF_hydraulic.q_in,arachnoid_villi_hydraulic. q_in) annotation (
        Line(
        points={{-88,-32},{-88,76},{-4,76}},
        color={0,0,0},
        thickness=1,
        smooth=Smooth.None));
    connect(arachnoid_villi_hydraulic.q_out,veins. y) annotation (Line(
        points={{16,76},{70,76}},
        color={0,0,0},
        thickness=1,
        smooth=Smooth.None));
    connect(pressureMeasure.pressure, arachnoid_villi.hydraulicPressureIn)
    annotation (Line(
      points={{-76,60},{-36,60},{-36,54}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(arachnoid_villi.q_out,flowMeasure1. q_in) annotation (Line(
        points={{-18,46},{-4,46}},
        color={127,127,0},
        thickness=1,
        smooth=Smooth.None));
    connect(flowMeasure1.volumeFlowRate, arachnoid_villi_hydraulic.solutionFlow)
    annotation (Line(
      points={{6,52},{6,69}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(pressureMeasure1.q_in,veins. y) annotation (Line(
        points={{60,58},{64,58},{64,76},{70,76}},
        color={0,0,0},
        thickness=1,
        smooth=Smooth.None));
    connect(pressureMeasure1.pressure, arachnoid_villi.hydraulicPressureOut)
    annotation (Line(
      points={{50,60},{-20,60},{-20,54}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(CSF_osmotic.q_in[1], choroid_plexus.q_out) annotation (Line(
      points={{-68,-6},{-38,-6}},
      color={127,127,0},
      thickness=1,
      smooth=Smooth.None));
    connect(choroid_plexus.q_in,flowMeasure. q_out) annotation (Line(
        points={{-18,-6},{-4,-6}},
        color={127,127,0},
        thickness=1,
        smooth=Smooth.None));
    connect(pressureMeasure.pressure, choroid_plexus.hydraulicPressureOut)
    annotation (Line(
      points={{-76,60},{-44,60},{-44,10},{-36,10},{-36,2}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(pressureMeasure2.pressure, choroid_plexus.hydraulicPressureIn)
    annotation (Line(
      points={{44,-26},{26,-26},{26,10},{-20,10},{-20,2}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(flux, permeabilityLevelSwitch.q_in) annotation (Line(
      points={{56,24},{44,24}},
      color={127,127,0},
      thickness=1,
      smooth=Smooth.None));
    connect(flowMeasure.q_in, permeabilityLevelSwitch.q_out) annotation (Line(
      points={{16,-6},{20,-6},{20,24},{24,24}},
      color={127,127,0},
      thickness=1,
      smooth=Smooth.None));
    connect(permeabilityLevelSwitch.q_out, flowMeasure1.q_out) annotation (
      Line(
      points={{24,24},{20,24},{20,46},{16,46}},
      color={127,127,0},
      thickness=1,
      smooth=Smooth.None));
    connect(permeabilityLevelSwitch.additionalOsmolarity, busConnector.OsmBody_Osm_conc_CellWalls)
    annotation (Line(
      points={{24,34},{24,63},{38,63},{38,91}},
      color={0,0,127},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}}));
    connect(choroidPlexusCapy.y, choroid_plexus_hydraulic.q_in) annotation (
      Line(
      points={{70,-28},{54,-28},{54,-32},{16,-32}},
      color={0,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(choroidPlexusCapy.y, pressureMeasure2.q_in) annotation (Line(
      points={{70,-28},{54,-28}},
      color={0,0,0},
      thickness=1,
      smooth=Smooth.None));
    annotation (  Icon(graphics={      Text(
            extent={{-145,87},{136,62}},
            lineColor={0,0,255},
            textString="%name")}));
end CerebrospinalFluid;
