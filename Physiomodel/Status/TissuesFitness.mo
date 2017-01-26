within Physiomodel.Status;
model TissuesFitness
    extends Physiolibrary.Icons.Status;
    Tissues.SkeletalMuscle skeletalMuscle
    annotation (Placement(transformation(extent={{-80,64},{-60,84}})));

    Tissues.Bone bone
    annotation (Placement(transformation(extent={{-80,32},{-60,52}})));

    Tissues.Fat fat
    annotation (Placement(transformation(extent={{-80,-58},{-60,-38}})));

    Tissues.Brain brain
    annotation (Placement(transformation(extent={{0,30},{20,50}})));

    Tissues.RightHeart rightHeart
    annotation (Placement(transformation(extent={{0,-90},{20,-70}})));

    Tissues.RespiratoryMuscle respiratoryMuscle
    annotation (Placement(transformation(extent={{-80,-28},{-60,-8}})));

    Tissues.OtherTissue otherTissue
    annotation (Placement(transformation(extent={{-80,2},{-60,22}})));

    Tissues.Liver liver
    annotation (Placement(transformation(extent={{0,64},{20,84}})));

    Tissues.LeftHeart leftHeart
    annotation (Placement(transformation(extent={{0,-60},{20,-40}})));

    Tissues.Kidney kidney
    annotation (Placement(transformation(extent={{0,-30},{20,-10}})));

    Tissues.GITract GITract
    annotation (Placement(transformation(extent={{0,-2},{20,18}})));

    Physiolibrary.Types.BusConnector busConnector
    annotation (Placement(transformation(extent={{-108,72},{-68,112}})));
    Tissues.Skin skin
    annotation (Placement(transformation(extent={{-80,-88},{-60,-68}})));

    PatientStatus patientStatus
    annotation (Placement(transformation(extent={{74,16},{94,36}})));
equation

    connect(bone.pH_intracellular, busConnector.bone_pH_intracellular)        annotation (
    Line(
    points={{-61,50},{-20,50},{-20,92},{-88,92}},
    color={0,127,0},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{5,2},{5,2}}));
    connect(brain.pH_intracellular, busConnector.brain_pH_intracellular)
    annotation (Line(
    points={{19,48},{46,48},{46,92},{-88,92}},
    color={0,127,0},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{5,2},{5,2}}));
    connect(fat.pH_intracellular, busConnector.fat_pH_intracellular)     annotation (
    Line(
    points={{-61,-40},{-20,-40},{-20,92},{-88,92}},
    color={0,127,0},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{5,2},{5,2}}));
    connect(GITract.pH_intracellular, busConnector.GITract_pH_intracellular)
    annotation (Line(
    points={{19,16},{46,16},{46,92},{-88,92}},
    color={0,127,0},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{5,2},{5,2}}));
    connect(kidney.pH_intracellular, busConnector.kidney_pH_intracellular)
    annotation (Line(
    points={{19,-12},{46,-12},{46,92},{-88,92}},
    color={0,127,0},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{5,2},{5,2}}));
    connect(leftHeart.pH_intracellular, busConnector.leftHeart_pH_intracellular)
    annotation (Line(
    points={{19,-42},{46,-42},{46,92},{-88,92}},
    color={0,127,0},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{5,2},{5,2}}));
    connect(liver.pH_intracellular, busConnector.liver_pH_intracellular)
    annotation (Line(
    points={{19,82},{46,82},{46,92},{-88,92}},
    color={0,127,0},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{5,2},{5,2}}));
    connect(otherTissue.pH_intracellular, busConnector.otherTissue_pH_intracellular)
    annotation (Line(
    points={{-61,20},{-20,20},{-20,92},{-88,92}},
    color={0,127,0},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{5,2},{5,2}}));
    connect(respiratoryMuscle.pH_intracellular, busConnector.respiratoryMuscle_pH_intracellular)
    annotation (Line(
    points={{-61,-10},{-20,-10},{-20,92},{-88,92}},
    color={0,127,0},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{5,2},{5,2}}));
    connect(rightHeart.pH_intracellular, busConnector.rightHeart_pH_intracellular)
    annotation (Line(
    points={{19,-72},{46,-72},{46,92},{-88,92}},
    color={0,127,0},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{5,2},{5,2}}));
    connect(skin.pH_intracellular, busConnector.skin_pH_intracellular)     annotation (
    Line(
    points={{-61,-70},{-20,-70},{-20,92},{-88,92}},
    color={0,127,0},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{5,2},{5,2}}));
    connect(skeletalMuscle.pH_intracellular, busConnector.skeletalMuscle_pH_intracellular)
    annotation (Line(
    points={{-61,82},{-20.5,82},{-20.5,92},{-88,92}},
    color={127,0,0},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{5,2},{5,2}}));

    connect(bone.T, busConnector.bone_T)        annotation (
    Line(
    points={{-61,46},{-20,46},{-20,92},{-88,92}},
    color={0,127,0},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{5,2},{5,2}}));
    connect(brain.T, busConnector.brain_T)
    annotation (Line(
    points={{19,44},{46,44},{46,92},{-88,92}},
    color={0,127,0},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{5,2},{5,2}}));
    connect(fat.T, busConnector.fat_T)     annotation (
    Line(
    points={{-61,-44},{-20,-44},{-20,92},{-88,92}},
    color={0,127,0},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{5,2},{5,2}}));
    connect(GITract.T, busConnector.GITract_T)
    annotation (Line(
    points={{19,12},{46,12},{46,92},{-88,92}},
    color={0,127,0},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{5,2},{5,2}}));
    connect(kidney.T, busConnector.kidney_T)
    annotation (Line(
    points={{19,-16},{46,-16},{46,92},{-88,92}},
    color={0,127,0},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{5,2},{5,2}}));
    connect(leftHeart.T, busConnector.leftHeart_T)
    annotation (Line(
    points={{19,-46},{46,-46},{46,92},{-88,92}},
    color={0,127,0},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{5,2},{5,2}}));
    connect(liver.T, busConnector.liver_T)
    annotation (Line(
    points={{19,78},{46,78},{46,92},{-88,92}},
    color={0,127,0},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{5,2},{5,2}}));
    connect(otherTissue.T, busConnector.otherTissue_T)
    annotation (Line(
    points={{-61,16},{-20,16},{-20,92},{-88,92}},
    color={0,127,0},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{5,2},{5,2}}));
    connect(respiratoryMuscle.T, busConnector.respiratoryMuscle_T)
    annotation (Line(
    points={{-61,-14},{-20,-14},{-20,92},{-88,92}},
    color={0,127,0},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{5,2},{5,2}}));
    connect(rightHeart.T, busConnector.rightHeart_T)
    annotation (Line(
    points={{19,-76},{46,-76},{46,92},{-88,92}},
    color={0,127,0},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{5,2},{5,2}}));
    connect(skin.T, busConnector.skin_T)     annotation (
    Line(
    points={{-61,-74},{-20,-74},{-20,92},{-88,92}},
    color={0,127,0},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{5,2},{5,2}}));
    connect(skeletalMuscle.T, busConnector.skeletalMuscle_T)
    annotation (Line(
    points={{-61,78},{-20.5,78},{-20.5,92},{-88,92}},
    color={127,0,0},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{5,2},{5,2}}));

    connect(bone.Fuel_FractUseDelay, busConnector.bone_Fuel_FractUseDelay)        annotation (
    Line(
    points={{-61,42},{-20,42},{-20,92},{-88,92}},
    color={0,127,0},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{5,2},{5,2}}));
    connect(brain.Fuel_FractUseDelay, busConnector.brain_Fuel_FractUseDelay)
    annotation (Line(
    points={{19,40},{46,40},{46,92},{-88,92}},
    color={0,127,0},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{5,2},{5,2}}));
    connect(fat.Fuel_FractUseDelay, busConnector.fat_Fuel_FractUseDelay)     annotation (
    Line(
    points={{-61,-48},{-20,-48},{-20,92},{-88,92}},
    color={0,127,0},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{5,2},{5,2}}));
    connect(GITract.Fuel_FractUseDelay, busConnector.GITract_Fuel_FractUseDelay)
    annotation (Line(
    points={{19,8},{46,8},{46,92},{-88,92}},
    color={0,127,0},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{5,2},{5,2}}));
    connect(kidney.Fuel_FractUseDelay, busConnector.kidney_Fuel_FractUseDelay)
    annotation (Line(
    points={{19,-20},{46,-20},{46,92},{-88,92}},
    color={0,127,0},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{5,2},{5,2}}));
    connect(leftHeart.Fuel_FractUseDelay, busConnector.leftHeart_Fuel_FractUseDelay)
    annotation (Line(
    points={{19,-50},{46,-50},{46,92},{-88,92}},
    color={0,127,0},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{5,2},{5,2}}));
    connect(liver.Fuel_FractUseDelay, busConnector.liver_Fuel_FractUseDelay)
    annotation (Line(
    points={{19,74},{46,74},{46,92},{-88,92}},
    color={0,127,0},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{5,2},{5,2}}));
    connect(otherTissue.Fuel_FractUseDelay, busConnector.otherTissue_Fuel_FractUseDelay)
    annotation (Line(
    points={{-61,12},{-20,12},{-20,92},{-88,92}},
    color={0,127,0},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{5,2},{5,2}}));
    connect(respiratoryMuscle.Fuel_FractUseDelay, busConnector.respiratoryMuscle_Fuel_FractUseDelay)
    annotation (Line(
    points={{-61,-18},{-20,-18},{-20,92},{-88,92}},
    color={0,127,0},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{5,2},{5,2}}));
    connect(rightHeart.Fuel_FractUseDelay, busConnector.rightHeart_Fuel_FractUseDelay)
    annotation (Line(
    points={{19,-80},{46,-80},{46,92},{-88,92}},
    color={0,127,0},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{5,2},{5,2}}));
    connect(skin.Fuel_FractUseDelay, busConnector.skin_Fuel_FractUseDelay)     annotation (
    Line(
    points={{-61,-78},{-20,-78},{-20,92},{-88,92}},
    color={0,127,0},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{5,2},{5,2}}));
    connect(skeletalMuscle.Fuel_FractUseDelay, busConnector.skeletalMuscle_Fuel_FractUseDelay)
    annotation (Line(
    points={{-61,74},{-20.5,74},{-20.5,92},{-88,92}},
    color={127,0,0},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{5,2},{5,2}}));

    connect(bone.CellProteinAA, busConnector.CellProteinAA)       annotation (
    Line(
    points={{-61,34},{-20,34},{-20,92},{-88,92}},
    color={0,127,0},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{5,2},{5,2}}));
    connect(brain.CellProteinAA, busConnector.CellProteinAA)
    annotation (Line(
    points={{19,32},{46,32},{46,92},{-88,92}},
    color={0,127,0},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{5,2},{5,2}}));
    connect(fat.CellProteinAA, busConnector.CellProteinAA)     annotation (
    Line(
    points={{-61,-56},{-20,-56},{-20,92},{-88,92}},
    color={0,127,0},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{5,2},{5,2}}));
    connect(GITract.CellProteinAA, busConnector.CellProteinAA)
    annotation (Line(
    points={{19,0},{46,0},{46,92},{-88,92}},
    color={0,127,0},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{5,2},{5,2}}));
    connect(kidney.CellProteinAA, busConnector.CellProteinAA)
    annotation (Line(
    points={{19,-28},{46,-28},{46,92},{-88,92}},
    color={0,127,0},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{5,2},{5,2}}));
    connect(leftHeart.CellProteinAA, busConnector.CellProteinAA)
    annotation (Line(
    points={{19,-58},{46,-58},{46,92},{-88,92}},
    color={0,127,0},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{5,2},{5,2}}));
    connect(liver.CellProteinAA, busConnector.CellProteinAA)
    annotation (Line(
    points={{19,66},{46,66},{46,92},{-88,92}},
    color={0,127,0},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{5,2},{5,2}}));
    connect(otherTissue.CellProteinAA, busConnector.CellProteinAA)
    annotation (Line(
    points={{-61,4},{-20,4},{-20,92},{-88,92}},
    color={0,127,0},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{5,2},{5,2}}));
    connect(respiratoryMuscle.CellProteinAA, busConnector.CellProteinAA)
    annotation (Line(
    points={{-61,-26},{-20,-26},{-20,92},{-88,92}},
    color={0,127,0},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{5,2},{5,2}}));
    connect(rightHeart.CellProteinAA, busConnector.CellProteinAA)
    annotation (Line(
    points={{19,-88},{46,-88},{46,92},{-88,92}},
    color={0,127,0},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{5,2},{5,2}}));
    connect(skin.CellProteinAA, busConnector.CellProteinAA)     annotation (
    Line(
    points={{-61,-86},{-20,-86},{-20,92},{-88,92}},
    color={0,127,0},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{5,2},{5,2}}));
    connect(skeletalMuscle.CellProteinAA, busConnector.CellProteinAA)
    annotation (Line(
    points={{-61,66},{-20.5,66},{-20.5,92},{-88,92}},
    color={127,0,0},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{5,2},{5,2}}));

    connect(bone.StructureEffect, busConnector.Bone_StructureEffect) annotation (Line(
    points={{-68,30},{-20,30},{-20,92},{-88,92}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(brain.StructureEffect, busConnector.Brain_StructureEffect) annotation (Line(
    points={{12,28},{-20,28},{-20,92},{-88,92}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(fat.StructureEffect, busConnector.Fat_StructureEffect) annotation (Line(
    points={{-68,-60},{-20,-60},{-20,92},{-88,92}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(kidney.StructureEffect, busConnector.Kidney_StructureEffect) annotation (Line(
    points={{12,-32},{-20,-32},{-20,92},{-88,92}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(leftHeart.StructureEffect, busConnector.LeftHeart_StructureEffect) annotation (Line(
    points={{12,-62},{-20,-62},{-20,92},{-88,92}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(liver.StructureEffect, busConnector.Liver_StructureEffect) annotation (Line(
    points={{12,62},{-20,62},{-20,92},{-88,92}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(otherTissue.StructureEffect, busConnector.OtherTissue_StructureEffect) annotation (Line(
    points={{-68,0},{-20,0},{-20,92},{-88,92}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(rightHeart.StructureEffect, busConnector.RightHeart_StructureEffect) annotation (Line(
    points={{12,-92},{-20,-92},{-20,92},{-88,92}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(respiratoryMuscle.StructureEffect, busConnector.RespiratoryMuscle_StructureEffect) annotation (Line(
    points={{-68,-30},{-20,-30},{-20,92},{-88,92}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(skin.StructureEffect, busConnector.Skin_StructureEffect) annotation (Line(
    points={{-68,-90},{-20,-90},{-20,92},{-88,92}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(skeletalMuscle.StructureEffect, busConnector.SkeletalMuscle_StructureEffect) annotation (Line(
    points={{-68,62},{-20,62},{-20,92},{-88,92}},
    color={0,0,127},
    smooth=Smooth.None));

    connect(bone.FunctionEffect, busConnector.bone_FunctionEffect) annotation (Line(
    points={{-72,30},{-20,30},{-20,92},{-88,92}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(brain.FunctionEffect, busConnector.brain_FunctionEffect) annotation (Line(
    points={{8,28},{-20,28},{-20,92},{-88,92}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(fat.FunctionEffect, busConnector.fat_FunctionEffect) annotation (Line(
    points={{-72,-60},{-20,-60},{-20,92},{-88,92}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(GITract.FunctionEffect, busConnector.GITract_FunctionEffect) annotation (Line(
    points={{8,-4},{-20,-4},{-20,92},{-88,92}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(kidney.FunctionEffect, busConnector.kidney_FunctionEffect) annotation (Line(
    points={{8,-32},{-20,-32},{-20,92},{-88,92}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(leftHeart.FunctionEffect, busConnector.leftHeart_FunctionEffect) annotation (Line(
    points={{8,-62},{-20,-62},{-20,92},{-88,92}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(liver.FunctionEffect, busConnector.liver_FunctionEffect) annotation (Line(
    points={{8,62},{-20,62},{-20,92},{-88,92}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(otherTissue.FunctionEffect, busConnector.otherTissue_FunctionEffect) annotation (Line(
    points={{-72,0},{-20,0},{-20,92},{-88,92}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(rightHeart.FunctionEffect, busConnector.rightHeart_FunctionEffect) annotation (Line(
    points={{8,-92},{-20,-92},{-20,92},{-88,92}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(respiratoryMuscle.FunctionEffect, busConnector.respiratoryMuscle_FunctionEffect) annotation (Line(
    points={{-72,-30},{-20,-30},{-20,92},{-88,92}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(skin.FunctionEffect, busConnector.skin_FunctionEffect) annotation (Line(
    points={{-72,-90},{-20,-90},{-20,92},{-88,92}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(skeletalMuscle.FunctionEffect, busConnector.skeletalMuscle_FunctionEffect) annotation (Line(
    points={{-72,62},{-20,62},{-20,92},{-88,92}},
    color={0,0,127},
    smooth=Smooth.None));

    connect(bone.FunctionFailed, busConnector.bone_Function_Failed) annotation (Line(
    points={{-64,30},{-20,30},{-20,92},{-88,92}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(brain.FunctionFailed, busConnector.brain_Function_Failed) annotation (Line(
    points={{16,28},{-20,28},{-20,92},{-88,92}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(GITract.FunctionFailed, busConnector.gitract_Function_Failed) annotation (Line(
    points={{16,-4},{-20,-4},{-20,92},{-88,92}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(fat.FunctionFailed, busConnector.fat_Function_Failed) annotation (Line(
    points={{-64,-60},{-20,-60},{-20,92},{-88,92}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(kidney.FunctionFailed, busConnector.Kidney_Function_Failed) annotation (Line(
    points={{16,-32},{-20,-32},{-20,92},{-88,92}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(leftHeart.FunctionFailed, busConnector.LeftHeart_Function_Failed) annotation (Line(
    points={{16,-62},{-20,-62},{-20,92},{-88,92}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(liver.FunctionFailed, busConnector.Liver_Function_Failed) annotation (Line(
    points={{16,62},{-20,62},{-20,92},{-88,92}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(otherTissue.FunctionFailed, busConnector.otherTissue_Function_Failed) annotation (Line(
    points={{-64,0},{-20,0},{-20,92},{-88,92}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(rightHeart.FunctionFailed, busConnector.RightHeart_Function_Failed) annotation (Line(
    points={{16,-92},{-20,-92},{-20,92},{-88,92}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(respiratoryMuscle.FunctionFailed, busConnector.respiratoryMuscle_Function_Failed) annotation (Line(
    points={{-64,-30},{-20,-30},{-20,92},{-88,92}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(skin.FunctionFailed, busConnector.Skin_Function_Failed) annotation (Line(
    points={{-64,-90},{-20,-90},{-20,92},{-88,92}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(skeletalMuscle.FunctionFailed, busConnector.skeletalMuscle_Function_Failed) annotation (Line(
    points={{-64,62},{-20,62},{-20,92},{-88,92}},
    color={0,0,127},
    smooth=Smooth.None));

    connect(brain.FunctionEffect, patientStatus.BrainFunctionEffect)
    annotation (Line(
    points={{8,28},{8,26},{74,26}},
    color={0,0,127},
    smooth=Smooth.None));
    annotation (Icon(coordinateSystem(preserveAspectRatio=true, extent={{-100,
    -100},{100,100}}), graphics={                 Text(
    extent={{-152,-102},{150,-138}},
    lineColor={0,0,255},
    fillColor={255,255,255},
    fillPattern=FillPattern.Solid,
    textString="%name")}),
    Documentation(info="<html>
    <p>BE_interstitial is base excess in the interstitium of the tissue. The standard value is 0, when strong acid concentration increase, then BE value decrease with the same concentration. </p>
    <p>Meaning might be interpreted like what amount of hydrogen iont must be added to sollution if the end poit of titration will be pH=7.4 and pCO2=5.3kPa.</p>
    <p>For any tissue can be simplified with difference of lactate concentration from its normal value.</p>
    </html>",     revisions="<html>
    <p>Marek Matejak, 24.12.2009</p>
    </html>"));
end TissuesFitness;
