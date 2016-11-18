within Physiomodel.Gases.Ventilation;
model RespiratoryNeuralDrive3
    extends Physiolibrary.Icons.RespiratoryCenter;
    AfferentPath afferentPath annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        origin={66,32})));
    Physiolibrary.Types.BusConnector busConnector annotation (Placement(
        transformation(extent={{-80,80},{-60,100}}), iconTransformation(
          extent={{-100,60},{-60,100}})));
    Physiomodel.Gases.Ventilation.PeripheralChemoreceptors peripheralChemoreceptors
    annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=270,
        origin={-26,36})));
    Physiomodel.Gases.Ventilation.SkeletalMuscleMetaboreflex skeletalMuscleMetaboreflex
    annotation (Placement(transformation(extent={{-18,-16},{2,4}})));
    Physiomodel.Gases.Ventilation.CentralChemoreceptors centralChemoreceptors
    annotation (Placement(transformation(extent={{8,48},{28,68}})));
    EfferentPath efferentPath
    annotation (Placement(transformation(extent={{50,-22},{70,-2}})));
    /*  Modelica.Blocks.Logical.TerminateSimulation terminateSimulation(
    terminationText="solution reached", condition=false and (
    afferentPath.TotalDrive < efferentPath.TotalDrive))
    annotation (Placement(transformation(extent={{-10,-84},{70,-76}})));

    Physiolibrary.Utilities.ConstantFromFile RespiratoryCenter_RespRate(
                                varName="RespiratoryCenter-Output.Rate")
    "Respiration rate. [1/min]"
    annotation (Placement(transformation(extent={{-92,-78},{-86,-72}})));
    Physiolibrary.Utilities.ConstantFromFile
    RespiratoryCenter_MotorNerveActivity(     varName="RespiratoryCenter-Output.MotorNerveActivity")
    "Neural activity from respiratory center to respiratory muscle. []"
    annotation (Placement(transformation(extent={{-92,-88},{-86,-82}})));
    Physiolibrary.Utilities.ConstantFromFile
    RespiratoryCenterIntegration_TotalDrive(                                      varName=
    "RespiratoryCenter-Integration.TotalDrive")
    "RespiratoryCenter-Integration.TotalDrive"
    annotation (Placement(transformation(extent={{16,-70},{22,-64}})));
    Physiolibrary.Blocks.Constant Constant(
                               k=1.04494)
    annotation (Placement(transformation(extent={{24,-84},{32,-76}})));
    Modelica.Blocks.Sources.Clock clock(offset=0.75)
    annotation (Placement(transformation(extent={{-28,-80},{-8,-60}})));
    */
    Physiolibrary.Blocks.Math.HomotopyStrongComponentBreaker homotopy(
      defaultValue=1, defaultSlope=0.1)
    annotation (Placement(transformation(extent={{82,32},{90,40}})));
    Physiolibrary.Types.Constants.OneConst one
    annotation (Placement(transformation(extent={{8,-34},{16,-26}})));
equation
        // efferentPath.TotalDrive=homotopy(actual=afferentPath.TotalDrive, simplified=1.045922);

        connect(busConnector, afferentPath.busConnector)      annotation (Line(
        points={{-70,90},{61.8,90},{61.8,40.2}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None));
        connect(busConnector, peripheralChemoreceptors.busConnector)
                                                       annotation (Line(
        points={{-70,90},{-25.8,90},{-25.8,43.6}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None));
        connect(peripheralChemoreceptors.Chemoreceptors_FiringRate,
        afferentPath.Chemoreceptors_FiringRate)
        annotation (Line(
        points={{-16,38},{58,38}},
        color={0,0,127},
        smooth=Smooth.None));
        connect(skeletalMuscleMetaboreflex.NA, afferentPath.Metaboreflex)
        annotation (Line(
        points={{2,-6},{28,-6},{28,34},{56.2,34}},
        color={0,0,127},
        smooth=Smooth.None));
        connect(busConnector.skeletalMuscle_pH_intracellular,
        skeletalMuscleMetaboreflex.skeletalMuscle_pH) annotation (Line(
        points={{-70,90},{-70,-6},{-18,-6}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
        connect(busConnector.GangliaGeneral_NA, peripheralChemoreceptors.GangliaGeneral_NA)
        annotation (Line(
        points={{-70,90},{-70,40},{-36,40}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
        connect(busConnector.brain_pH_intracellular, centralChemoreceptors.Brain_pH_intracellular)
        annotation (Line(
        points={{-70,90},{-70,64},{10,64}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
        connect(busConnector.O2Artys_PO2, peripheralChemoreceptors.artys_pO2)
                                                                annotation (
        Line(
        points={{-70,90},{-70,32},{-36,32}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
        connect(busConnector.Artys_pH, peripheralChemoreceptors.artys_ph)
                                                            annotation (Line(
        points={{-70,90},{-70,36},{-36,36}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
        connect(efferentPath.RespRate, busConnector.RespiratoryCenter_RespRate)
        annotation (Line(
        points={{69.4,-8},{98,-8},{98,90},{-70,90}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
        connect(efferentPath.RespiratoryCenterOutput_MotorNerveActivity,
        busConnector.RespiratoryCenter_MotorNerveActivity) annotation (Line(
        points={{69.6,-16},{98,-16},{98,90},{-70,90}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
        connect(efferentPath.busConnector, busConnector)              annotation (
        Line(
        points={{55.8,-3.8},{50,-3.8},{50,90},{-70,90}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None));

        connect(centralChemoreceptors.CentralChemoreceptors, afferentPath.CentralChemoreceptors)
        annotation (Line(
        points={{27.4,62},{38,62},{38,29},{58,29}},
        color={0,0,127},
        smooth=Smooth.None));
        connect(afferentPath.TotalDrive, homotopy.u) annotation (Line(
        points={{75.4,36},{81.2,36}},
        color={0,0,127},
        smooth=Smooth.None));
        connect(one.y, efferentPath.TotalDrive) annotation (Line(
        points={{17,-30},{34,-30},{34,-10},{50.2,-10}},
        color={0,0,127},
        smooth=Smooth.None));
        annotation ( Icon(coordinateSystem(
            preserveAspectRatio=true, extent={{-100,-100},{100,100}}),
          graphics={Text(
            extent={{-142,-108},{142,-140}},
            lineColor={0,0,255},
        textString="%name")}));
end RespiratoryNeuralDrive3;
