within Physiomodel.Water.WaterCompartments;

model Bladder
    // extends Library.PressureFlow.VolumeCompartement;
    extends Physiolibrary.Icons.Bladder;
    Physiolibrary.Hydraulic.Components.ElasticVessel   volumeCompartement(
    stateName="BladderVolume.Mass", volume_start=0.0002)
    annotation (Placement(transformation(extent={{-18,0},{2,20}})));
    Physiolibrary.Hydraulic.Interfaces.HydraulicPort_a con annotation (
    Placement(transformation(extent={{-84,18},{-44,58}}),
    iconTransformation(extent={{-120,-20},{-80,20}})));
    Physiolibrary.Hydraulic.Sources.UnlimitedOutflowPump
                                            bladderVoidFlow(
    useSolutionFlowInput=true)
    annotation (Placement(transformation(extent={{-58,-23},{-73,-8}})));
    Physiolibrary.Types.BusConnector busConnector annotation (Placement(
    transformation(extent={{-100,69},{-80,89}}), iconTransformation(
      extent={{-100,-100},{-80,-80}})));

    //  Real volume;
    //  Real change;
equation
    //  volume = volumeCompartement.Volume;
    //  change = volumeCompartement.con.q;

    connect(busConnector.BladderVoidFlow, bladderVoidFlow.solutionFlow)
    annotation (Line(
      points={{-90,79},{-90,0},{-65.5,0},{-65.5,-10.25}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-6,3},{-6,3}}));
    connect(con, volumeCompartement.q_in) annotation (Line(
        points={{-64,38},{-36,38},{-36,10},{-8,10}},
        color={0,0,0},
        thickness=1,
        smooth=Smooth.None));
    connect(bladderVoidFlow.q_in, volumeCompartement.q_in) annotation (Line(
        points={{-58,-15.5},{-36,-15.5},{-36,10},{-8,10}},
        color={0,0,0},
        thickness=1,
        smooth=Smooth.None));
    connect(volumeCompartement.volume, busConnector.BladderVolume_Mass)
      annotation (Line(
        points={{-2,0},{46,0},{46,80},{-90,80},{-90,79}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
    annotation (Icon(coordinateSystem(preserveAspectRatio=true, extent={{-100,
              -100},{100,100}}), graphics={Text(
            extent={{-100,96},{100,80}},
            lineColor={0,0,255},
    textString="%name")}));
end Bladder;

