within Physiomodel.Gases.IO_Bus;


model WithoutProteins_test_SI
    import Physiomodel;

    import Modelica.Utilities.*;
   // constant String OUTPUT_FILE = "setup/output_startValues.txt"; //"setup/output.txt"; //"setup/v2.txt";

    Physiomodel.Setup.IO_Bus.InputFromFile_SI     setup
      annotation (Placement(transformation(extent={{-16,-106},{4,-86}})));
    Physiomodel.Gases.Gases gases
      annotation (Placement(transformation(extent={{-78,-64},{-58,-44}})));
    Physiomodel.Gases.IO_Bus.OutputComparison_SI
                                gases_dif
      annotation (Placement(transformation(extent={{-38,-80},{-18,-60}})));
    Physiomodel.Gases.IO_Bus.OutputToFile_SI
                                       gases_varsToFile
      annotation (Placement(transformation(extent={{-98,-92},{-78,-72}})));
  Physiomodel.Metabolism.NutrientsAndMetabolism nutrientsAndMetabolism1
    annotation (Placement(transformation(extent={{-84,60},{-64,80}})));
  Physiomodel.Electrolytes.Electrolytes electrolytes1
    annotation (Placement(transformation(extent={{70,-36},{90,-16}})));
  Physiomodel.CardioVascular.CardioVascularSystem cVS_Dynamic
    annotation (Placement(transformation(extent={{50,60},{70,80}})));
  Physiomodel.Nerves.Nerves nerves1
    annotation (Placement(transformation(extent={{74,28},{94,48}})));
  Physiomodel.Hormones.Hormones hormones1
    annotation (Placement(transformation(extent={{44,2},{64,22}})));
  Physiomodel.Heat.Heat2 heat2_1
    annotation (Placement(transformation(extent={{-52,24},{-32,46}})));
  Physiomodel.Status.TissuesFitness tissuesFitness
    annotation (Placement(transformation(extent={{40,-72},{60,-52}})));
  Physiomodel.Water.Water3 water3_1
    annotation (Placement(transformation(extent={{-78,-12},{-58,8}})));
  Physiomodel.Proteins.IO_Bus.InputFromFile_SI proteins
    annotation (Placement(transformation(extent={{-42,-34},{-22,-14}})));
equation
    connect(gases.busConnector,setup. busConnector) annotation (Line(
        points={{-60,-46},{-6,-46},{-6,-96}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None));
    connect(gases.busConnector, gases_dif.busConnector) annotation (Line(
        points={{-60,-46},{-44,-46},{-44,-70},{-28,-70}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None));
    connect(gases_varsToFile.busConnector, gases.busConnector) annotation (
        Line(
        points={{-88,-82},{-88,-46},{-60,-46}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None));
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
    connect(gases.busConnector, electrolytes1.busConnector) annotation (Line(
      points={{-60,-46},{-6,-46},{-6,-22},{70,-22}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None));
    connect(nutrientsAndMetabolism1.busConnector, cVS_Dynamic.busConnector)
    annotation (Line(
      points={{-66,78},{52,78}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None));
    connect(cVS_Dynamic.busConnector, gases.busConnector) annotation (Line(
      points={{52,78},{-6,78},{-6,-46},{-60,-46}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None));
    connect(cVS_Dynamic.busConnector, nerves1.busConnector) annotation (Line(
      points={{52,78},{-6,78},{-6,45.6},{76.2,45.6}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None));
    connect(nutrientsAndMetabolism1.busConnector, hormones1.busConnector)
    annotation (Line(
      points={{-66,78},{-6,78},{-6,17.9},{47.9,17.9}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None));
    connect(nutrientsAndMetabolism1.busConnector, heat2_1.busConnector)
    annotation (Line(
      points={{-66,78},{-6,78},{-6,45.56},{-51.4,45.56}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None));
    connect(electrolytes1.busConnector, tissuesFitness.busConnector)
    annotation (Line(
      points={{70,-22},{-6,-22},{-6,-54},{41.2,-54},{41.2,-52.8}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None));
    connect(hormones1.busConnector, water3_1.busConnector) annotation (Line(
      points={{47.9,17.9},{-6,17.9},{-6,5},{-61,5}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None));
    connect(water3_1.busConnector, proteins.busConnector) annotation (Line(
      points={{-61,5},{-6,5},{-6,-24},{-32,-24}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None));
    annotation (          experiment(StopTime=3600, Tolerance=1e-005));
end WithoutProteins_test_SI;
