within Physiomodel.Gases.IO_Bus;

model Gases_test_SI
    import Physiomodel;

    import Modelica.Utilities.*;
    // constant String OUTPUT_FILE = "setup/output_startValues.txt"; //"setup/output.txt"; //"setup/v2.txt";

    Physiomodel.CardioVascular.IO_Bus.Input cardioVascularSystem
      annotation (Placement(transformation(extent={{40,72},{60,94}})));
    Physiomodel.Metabolism.IO_Bus.Input
                                            nutrientsAndMetabolism
      annotation (Placement(transformation(extent={{-86,60},{-66,80}})));
    Physiomodel.Electrolytes.IO_Bus.Input electrolytes
      annotation (Placement(transformation(extent={{74,-34},{94,-14}})));
    Physiomodel.Hormones.IO_Bus.Input hormones
      annotation (Placement(transformation(extent={{40,6},{60,26}})));
    Physiomodel.Nerves.IO_Bus.Input nerves
      annotation (Placement(transformation(extent={{74,38},{94,58}})));
    Physiomodel.Setup.IO_Bus.Input     setup
      annotation (Placement(transformation(extent={{-16,-106},{4,-86}})));
    Physiomodel.Water.IO_Bus.Input water
      annotation (Placement(transformation(extent={{-86,-6},{-66,14}})));
    Physiomodel.Proteins.IO_Bus.Input proteins
      annotation (Placement(transformation(extent={{-48,-28},{-28,-8}})));
    Physiomodel.Status.IO_Bus.Input status
      annotation (Placement(transformation(extent={{42,-80},{62,-60}})));
    Physiomodel.Gases.Gases gases
      annotation (Placement(transformation(extent={{-78,-64},{-58,-44}})));
    Physiomodel.Heat.IO_Bus.Input heat
      annotation (Placement(transformation(extent={{-28,30},{-48,50}})));
    /* Physiomodel.Gases.IO_Bus.OutputComparison_SI */
    /*                             gases_dif */
    /*   annotation (Placement(transformation(extent={{-38,-80},{-18,-60}}))); */
    /* Physiomodel.Gases.IO_Bus.OutputToFile_SI */
    /*                                    gases_varsToFile */
    /*   annotation (Placement(transformation(extent={{-98,-92},{-78,-72}}))); */
equation
    connect(setup.busConnector,hormones. busConnector) annotation (Line(
        points={{-6,-96},{-6,16},{50,16}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None));
    connect(setup.busConnector,proteins. busConnector) annotation (Line(
        points={{-6,-96},{-6,-18},{-38,-18}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None));
    connect(setup.busConnector,cardioVascularSystem. busConnector)
                                                  annotation (Line(
        points={{-6,-96},{-6,83},{50,83}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None));
    connect(setup.busConnector,nutrientsAndMetabolism. busConnector)
      annotation (Line(
        points={{-6,-96},{-6,70},{-76,70}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None));
    connect(setup.busConnector,water. busConnector) annotation (Line(
        points={{-6,-96},{-6,4},{-76,4}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None));
    connect(setup.busConnector,nerves. busConnector) annotation (Line(
        points={{-6,-96},{-6,48},{84,48}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None));
    connect(status.busConnector,setup. busConnector)         annotation (Line(
        points={{52,-70},{-6,-70},{-6,-96}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None));
    connect(electrolytes.busConnector,setup. busConnector) annotation (Line(
        points={{84,-24},{-6,-24},{-6,-96}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None));
    connect(gases.busConnector,setup. busConnector) annotation (Line(
        points={{-60,-46},{-6,-46},{-6,-96}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None));
    connect(heat.busConnector,setup. busConnector) annotation (Line(
        points={{-38,40},{-6,40},{-6,-96}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None));
    /* connect(gases.busConnector, gases_dif.busConnector) annotation (Line( */
    /*     points={{-60,-46},{-44,-46},{-44,-70},{-28,-70}}, */
    /*     color={0,0,255}, */
    /*     thickness=0.5, */
    /*     smooth=Smooth.None)); */
    /* connect(gases_varsToFile.busConnector, gases.busConnector) annotation ( */
    /*     Line( */
    /*     points={{-88,-82},{-88,-46},{-60,-46}}, */
    /*     color={0,0,255}, */
    /*     thickness=0.5, */
    /*     smooth=Smooth.None)); */
    //if terminal() then

    /*   Streams.print("cardioVascularSystem.busConnector.Bone_PCO2\n"+String(cardioVascularSystem.busConnector.Bone_PCO2),OUTPUT_FILE);

    Streams.print("cardioVascularSystem.busConnector.Brain_PCO2\n"+String(cardioVascularSystem.busConnector.Brain_PCO2),OUTPUT_FILE);
    Streams.print("cardioVascularSystem.busConnector.Fat_PCO2\n"+String(cardioVascularSystem.busConnector.Fat_PCO2),OUTPUT_FILE);
    Streams.print("cardioVascularSystem.busConnector.GITract_PCO2\n"+String(cardioVascularSystem.busConnector.GITract_PCO2),OUTPUT_FILE);
    Streams.print("cardioVascularSystem.busConnector.Kidney_PCO2\n"+String(cardioVascularSystem.busConnector.Kidney_PCO2),OUTPUT_FILE);
    Streams.print("cardioVascularSystem.busConnector.LeftHeart_PCO2\n"+String(cardioVascularSystem.busConnector.LeftHeart_PCO2),OUTPUT_FILE);
    Streams.print("cardioVascularSystem.busConnector.Liver_PCO2\n"+String(cardioVascularSystem.busConnector.Liver_PCO2),OUTPUT_FILE);
    Streams.print("cardioVascularSystem.busConnector.OtherTissue_PCO2\n"+String(cardioVascularSystem.busConnector.OtherTissue_PCO2),OUTPUT_FILE);
    Streams.print("cardioVascularSystem.busConnector.RespiratoryMuscle_PCO2\n"+String(cardioVascularSystem.busConnector.RespiratoryMuscle_PCO2),OUTPUT_FILE);
    Streams.print("cardioVascularSystem.busConnector.RightHeart_PCO2\n"+String(cardioVascularSystem.busConnector.RightHeart_PCO2),OUTPUT_FILE);
    Streams.print("cardioVascularSystem.busConnector.SkeletalMuscle_PCO2\n"+String(cardioVascularSystem.busConnector.SkeletalMuscle_PCO2),OUTPUT_FILE);
    Streams.print("cardioVascularSystem.busConnector.Skin_PCO2\n"+String(cardioVascularSystem.busConnector.Skin_PCO2),OUTPUT_FILE);
    Streams.print("cardioVascularSystem.busConnector.Urine_pH\n"+String(cardioVascularSystem.busConnector.Urine_pH),OUTPUT_FILE);

    Streams.print("gases.carbonDioxyd.alveolarVentilation.solventFlowPump.q_out.conc|"+String(gases.carbonDioxyd.alveolarVentilation.solventFlowPump.q_out.conc),OUTPUT_FILE);
    Streams.print("gases.carbonDioxyd.artysCO2.pCO2|"+String(gases.carbonDioxyd.artysCO2.pCO2),OUTPUT_FILE);
    Streams.print("gases.carbonDioxyd.veinsCO2.pCO2|"+String(gases.carbonDioxyd.veinsCO2.pCO2),OUTPUT_FILE);
    Streams.print("gases.oxygen.alveolarVentilation.solventFlowPump.q_out.conc|"+String(gases.oxygen.alveolarVentilation.solventFlowPump.q_out.conc),OUTPUT_FILE);
    Streams.print("gases.oxygen.artysO2.a|"+String(gases.oxygen.artysO2.a),OUTPUT_FILE);
    Streams.print("gases.oxygen.artysO2.FCOHb|"+String(gases.oxygen.artysO2.FCOHb),OUTPUT_FILE);
    Streams.print("gases.oxygen.artysO2.pO2|"+String(gases.oxygen.artysO2.pO2),OUTPUT_FILE);
    Streams.print("gases.oxygen.O2Lung.a|"+String(gases.oxygen.O2Lung.a),OUTPUT_FILE);
    Streams.print("gases.oxygen.O2Lung.FCOHb|"+String(gases.oxygen.O2Lung.FCOHb),OUTPUT_FILE);
    Streams.print("gases.oxygen.O2Lung.tO2|"+String(gases.oxygen.O2Lung.tO2),OUTPUT_FILE);
    Streams.print("gases.oxygen.tissuesO2.boneO2.O2Tissue.a|"+String(gases.oxygen.tissuesO2.boneO2.O2Tissue.a),OUTPUT_FILE);
    Streams.print("gases.oxygen.tissuesO2.boneO2.O2Tissue.FCOHb|"+String(gases.oxygen.tissuesO2.boneO2.O2Tissue.FCOHb),OUTPUT_FILE);
    Streams.print("gases.oxygen.tissuesO2.boneO2.O2Tissue.pO2|"+String(gases.oxygen.tissuesO2.boneO2.O2Tissue.pO2),OUTPUT_FILE);
    Streams.print("gases.oxygen.tissuesO2.brainO2.O2Tissue.a|"+String(gases.oxygen.tissuesO2.brainO2.O2Tissue.a),OUTPUT_FILE);
    Streams.print("gases.oxygen.tissuesO2.brainO2.O2Tissue.FCOHb|"+String(gases.oxygen.tissuesO2.brainO2.O2Tissue.FCOHb),OUTPUT_FILE);
    Streams.print("gases.oxygen.tissuesO2.brainO2.O2Tissue.pO2|"+String(gases.oxygen.tissuesO2.brainO2.O2Tissue.pO2),OUTPUT_FILE);
    Streams.print("gases.oxygen.tissuesO2.fatO2.O2Tissue.a|"+String(gases.oxygen.tissuesO2.fatO2.O2Tissue.a),OUTPUT_FILE);
    Streams.print("gases.oxygen.tissuesO2.fatO2.O2Tissue.FCOHb|"+String(gases.oxygen.tissuesO2.fatO2.O2Tissue.FCOHb),OUTPUT_FILE);
    Streams.print("gases.oxygen.tissuesO2.fatO2.O2Tissue.pO2|"+String(gases.oxygen.tissuesO2.fatO2.O2Tissue.pO2),OUTPUT_FILE);
    Streams.print("gases.oxygen.tissuesO2.GITractO2.O2Tissue.a|"+String(gases.oxygen.tissuesO2.GITractO2.O2Tissue.a),OUTPUT_FILE);
    Streams.print("gases.oxygen.tissuesO2.GITractO2.O2Tissue.FCOHb|"+String(gases.oxygen.tissuesO2.GITractO2.O2Tissue.FCOHb),OUTPUT_FILE);
    Streams.print("gases.oxygen.tissuesO2.GITractO2.O2Tissue.pO2|"+String(gases.oxygen.tissuesO2.GITractO2.O2Tissue.pO2),OUTPUT_FILE);
    Streams.print("gases.oxygen.tissuesO2.kidneyO2.O2Tissue.a|"+String(gases.oxygen.tissuesO2.kidneyO2.O2Tissue.a),OUTPUT_FILE);
    Streams.print("gases.oxygen.tissuesO2.kidneyO2.O2Tissue.FCOHb|"+String(gases.oxygen.tissuesO2.kidneyO2.O2Tissue.FCOHb),OUTPUT_FILE);
    Streams.print("gases.oxygen.tissuesO2.kidneyO2.O2Tissue.pO2|"+String(gases.oxygen.tissuesO2.kidneyO2.O2Tissue.pO2),OUTPUT_FILE);
    Streams.print("gases.oxygen.tissuesO2.leftHeartO2.O2Tissue.a|"+String(gases.oxygen.tissuesO2.leftHeartO2.O2Tissue.a),OUTPUT_FILE);
    Streams.print("gases.oxygen.tissuesO2.leftHeartO2.O2Tissue.FCOHb|"+String(gases.oxygen.tissuesO2.leftHeartO2.O2Tissue.FCOHb),OUTPUT_FILE);
    Streams.print("gases.oxygen.tissuesO2.leftHeartO2.O2Tissue.pO2|"+String(gases.oxygen.tissuesO2.leftHeartO2.O2Tissue.pO2),OUTPUT_FILE);
    Streams.print("gases.oxygen.tissuesO2.liverO2.O2Tissue.a|"+String(gases.oxygen.tissuesO2.liverO2.O2Tissue.a),OUTPUT_FILE);
    Streams.print("gases.oxygen.tissuesO2.liverO2.O2Tissue.FCOHb|"+String(gases.oxygen.tissuesO2.liverO2.O2Tissue.FCOHb),OUTPUT_FILE);
    Streams.print("gases.oxygen.tissuesO2.liverO2.O2Tissue.pO2|"+String(gases.oxygen.tissuesO2.liverO2.O2Tissue.pO2),OUTPUT_FILE);
    Streams.print("gases.oxygen.tissuesO2.otherTissueO2.O2Tissue.a|"+String(gases.oxygen.tissuesO2.otherTissueO2.O2Tissue.a),OUTPUT_FILE);
    Streams.print("gases.oxygen.tissuesO2.otherTissueO2.O2Tissue.FCOHb|"+String(gases.oxygen.tissuesO2.otherTissueO2.O2Tissue.FCOHb),OUTPUT_FILE);
    Streams.print("gases.oxygen.tissuesO2.otherTissueO2.O2Tissue.pO2|"+String(gases.oxygen.tissuesO2.otherTissueO2.O2Tissue.pO2),OUTPUT_FILE);
    Streams.print("gases.oxygen.tissuesO2.respiratoryMuscleO2.O2Tissue.a|"+String(gases.oxygen.tissuesO2.respiratoryMuscleO2.O2Tissue.a),OUTPUT_FILE);
    Streams.print("gases.oxygen.tissuesO2.respiratoryMuscleO2.O2Tissue.FCOHb|"+String(gases.oxygen.tissuesO2.respiratoryMuscleO2.O2Tissue.FCOHb),OUTPUT_FILE);
    Streams.print("gases.oxygen.tissuesO2.respiratoryMuscleO2.O2Tissue.pO2|"+String(gases.oxygen.tissuesO2.respiratoryMuscleO2.O2Tissue.pO2),OUTPUT_FILE);
    Streams.print("gases.oxygen.tissuesO2.rightHeartO2.O2Tissue.a|"+String(gases.oxygen.tissuesO2.rightHeartO2.O2Tissue.a),OUTPUT_FILE);
    Streams.print("gases.oxygen.tissuesO2.rightHeartO2.O2Tissue.FCOHb|"+String(gases.oxygen.tissuesO2.rightHeartO2.O2Tissue.FCOHb),OUTPUT_FILE);
    Streams.print("gases.oxygen.tissuesO2.rightHeartO2.O2Tissue.pO2|"+String(gases.oxygen.tissuesO2.rightHeartO2.O2Tissue.pO2),OUTPUT_FILE);
    Streams.print("gases.oxygen.tissuesO2.skeletalMuscleO2.O2Tissue.a|"+String(gases.oxygen.tissuesO2.skeletalMuscleO2.O2Tissue.a),OUTPUT_FILE);
    Streams.print("gases.oxygen.tissuesO2.skeletalMuscleO2.O2Tissue.FCOHb|"+String(gases.oxygen.tissuesO2.skeletalMuscleO2.O2Tissue.FCOHb),OUTPUT_FILE);
    Streams.print("gases.oxygen.tissuesO2.skeletalMuscleO2.O2Tissue.pO2|"+String(gases.oxygen.tissuesO2.skeletalMuscleO2.O2Tissue.pO2),OUTPUT_FILE);
    Streams.print("gases.oxygen.tissuesO2.skinO2.O2Tissue.a|"+String(gases.oxygen.tissuesO2.skinO2.O2Tissue.a),OUTPUT_FILE);
    Streams.print("gases.oxygen.tissuesO2.skinO2.O2Tissue.FCOHb|"+String(gases.oxygen.tissuesO2.skinO2.O2Tissue.FCOHb),OUTPUT_FILE);
    Streams.print("gases.oxygen.tissuesO2.skinO2.O2Tissue.pO2|"+String(gases.oxygen.tissuesO2.skinO2.O2Tissue.pO2),OUTPUT_FILE);
    Streams.print("gases.oxygen.veinsO2.a|"+String(gases.oxygen.veinsO2.a),OUTPUT_FILE);
    Streams.print("gases.oxygen.veinsO2.FCOHb|"+String(gases.oxygen.veinsO2.FCOHb),OUTPUT_FILE);
    Streams.print("gases.oxygen.veinsO2.pO2|"+String(gases.oxygen.veinsO2.pO2),OUTPUT_FILE);*/
    //end if;
    annotation (          experiment(StopTime=864000, Tolerance=1e-005));
end Gases_test_SI;
