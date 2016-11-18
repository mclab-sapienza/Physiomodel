within Physiomodel.Gases.O2;
model TissuesO2
    extends Physiolibrary.Icons.Tissues;
    Physiolibrary.Chemical.Interfaces.ChemicalPort_a q_in annotation (
      Placement(transformation(extent={{80,-20},{120,20}}),
        iconTransformation(extent={{100,-20},{140,20}})));
    Physiolibrary.Chemical.Interfaces.ChemicalPort_b q_out annotation (
      Placement(transformation(extent={{-120,-20},{-80,20}}),
        iconTransformation(extent={{-140,-20},{-100,20}})));
    Tissues.SkeletalMuscleO2 skeletalMuscleO2(
                                           initialMass=323.9)
      annotation (Placement(transformation(extent={{-54,64},{-34,84}})));
    Tissues.BoneO2 boneO2(       initialMass=56.2)
      annotation (Placement(transformation(extent={{-54,36},{-34,56}})));
    Tissues.FatO2 fatO2(        initialMass=39.8)
      annotation (Placement(transformation(extent={{-54,-54},{-34,-34}})));
    Tissues.BrainO2 brainO2(      initialMass=19.1)
      annotation (Placement(transformation(extent={{52,20},{72,40}})));
    Tissues.RightHeartO2 rightHeartO2( initialMass=0.6)
      annotation (Placement(transformation(extent={{52,-100},{72,-80}})));
    Tissues.RespiratoryMuscleO2 respiratoryMuscleO2(
                                              initialMass=48.1)
      annotation (Placement(transformation(extent={{-54,-24},{-34,-4}})));
    Tissues.OtherTissueO2 otherTissueO2(initialMass=50.7)
      annotation (Placement(transformation(extent={{-54,6},{-34,26}})));
    Tissues.LiverO2 liverO2(initialMass=22.8)
      annotation (Placement(transformation(extent={{52,50},{72,70}})));
    Tissues.LeftHeartO2 leftHeartO2(  initialMass=3.5)
      annotation (Placement(transformation(extent={{52,-70},{72,-50}})));
    Physiomodel.Gases.O2.Tissues.TissueO2_kidney kidneyO2(initialMass=4.1)
      annotation (Placement(transformation(extent={{52,-40},{72,-20}})));
    Tissues.GITractO2 GITractO2(    initialMass=17.6)
      annotation (Placement(transformation(extent={{52,-10},{72,10}})));
    Physiolibrary.Types.BusConnector busConnector
    annotation (Placement(transformation(extent={{-108,72},{-68,112}})));
    Tissues.SkinO2 skinO2(       initialMass=28.2)
      annotation (Placement(transformation(extent={{-54,-84},{-34,-64}})));

    Physiolibrary.Types.MolarFlowRate O2ToTissues(displayUnit="mmol/min");
    // Real O2ToTissues2(displayUnit="mmol/min");
    // Real O2ToTissues3(displayUnit="ml/min");
    Physiolibrary.Types.VolumeFlowRate BloodFlow(displayUnit="ml/min");
equation
    O2ToTissues = q_in.q + q_out.q;
    /*O2ToTissues2 =
    skeletalMuscleO2.O2Use_mmol_per_min +
    boneO2.O2Use_mmol_per_min +
    fatO2.O2Use_mmol_per_min +
    brainO2.O2Use_mmol_per_min +
    rightHeartO2.O2Use_mmol_per_min +
    respiratoryMuscleO2.O2Use_mmol_per_min +
    otherTissueO2.O2Use_mmol_per_min +
    liverO2.O2Use_mmol_per_min +
    leftHeartO2.O2Use_mmol_per_min +
    kidneyO2.O2Use_mmol_per_min +
    GITractO2.O2Use_mmol_per_min +
    skinO2.O2Use_mmol_per_min;
    O2ToTissues3 =
    skeletalMuscleO2.O2Use_ml_per_min +
    boneO2.O2Use_ml_per_min +
    fatO2.O2Use_ml_per_min +
    brainO2.O2Use_ml_per_min +
    rightHeartO2.O2Use_ml_per_min +
    respiratoryMuscleO2.O2Use_ml_per_min +
    otherTissueO2.O2Use_ml_per_min +
    liverO2.O2Use_ml_per_min +
    leftHeartO2.O2Use_ml_per_min +
    kidneyO2.O2Use_ml_per_min +
    GITractO2.O2Use_ml_per_min +
    skinO2.O2Use_ml_per_min;*/
    BloodFlow=
    skeletalMuscleO2.BloodFlow +
    boneO2.BloodFlow +
    fatO2.BloodFlow +
    brainO2.BloodFlow +
    rightHeartO2.BloodFlow +
    respiratoryMuscleO2.BloodFlow +
    otherTissueO2.BloodFlow +
    liverO2.BloodFlow +
    leftHeartO2.BloodFlow +
    kidneyO2.BloodFlow +
    GITractO2.BloodFlow +
    skinO2.BloodFlow;

    connect(q_out, skeletalMuscleO2.vein) annotation (Line(
        points={{-100,0},{-82,0},{-82,76},{-54,76}},
        color={200,0,0},
        thickness=1,
        smooth=Smooth.None));

    connect(q_out, boneO2.vein) annotation (Line(
        points={{-100,0},{-82,0},{-82,48},{-54,48}},
        color={200,0,0},
        thickness=1,
        smooth=Smooth.None));
    connect(q_out, otherTissueO2.vein) annotation (Line(
        points={{-100,0},{-82,0},{-82,18},{-54,18}},
        color={200,0,0},
        thickness=1,
        smooth=Smooth.None));
    connect(q_out, respiratoryMuscleO2.vein) annotation (Line(
        points={{-100,0},{-81,0},{-81,-12},{-54,-12}},
        color={200,0,0},
        thickness=1,
        smooth=Smooth.None));
    connect(q_out, fatO2.vein) annotation (Line(
        points={{-100,0},{-82,0},{-82,-42},{-54,-42}},
        color={200,0,0},
        thickness=1,
        smooth=Smooth.None));
    connect(q_out, skinO2.vein) annotation (Line(
        points={{-100,0},{-82,0},{-82,-72},{-54,-72}},
        color={200,0,0},
        thickness=1,
        smooth=Smooth.None));
    connect(q_out, liverO2.vein) annotation (Line(
        points={{-100,0},{-82,0},{-82,62},{52,62}},
        color={200,0,0},
        thickness=1,
        smooth=Smooth.None));
    connect(q_out, brainO2.vein) annotation (Line(
        points={{-100,0},{-82,0},{-82,32},{52,32}},
        color={200,0,0},
        thickness=1,
        smooth=Smooth.None));
    connect(q_out, kidneyO2.vein) annotation (Line(
        points={{-100,0},{-82,0},{-82,-28},{52,-28}},
        color={200,0,0},
        thickness=1,
        smooth=Smooth.None));
    connect(q_out, leftHeartO2.vein) annotation (Line(
        points={{-100,0},{-82,0},{-82,-58},{52,-58}},
        color={200,0,0},
        thickness=1,
        smooth=Smooth.None));
    connect(skeletalMuscleO2.arty, q_in) annotation (Line(
        points={{-34,76},{84,76},{84,0},{100,0}},
        color={200,0,0},
        thickness=1,
        smooth=Smooth.None));
    connect(brainO2.arty, q_in) annotation (Line(
        points={{72,32},{84,32},{84,0},{100,0}},
        color={200,0,0},
        thickness=1,
        smooth=Smooth.None));
    connect(GITractO2.arty, q_in) annotation (Line(
        points={{72,2},{86,2},{86,0},{100,0}},
        color={200,0,0},
        thickness=1,
        smooth=Smooth.None));
    connect(kidneyO2.arty, q_in) annotation (Line(
        points={{72,-28},{84,-28},{84,0},{100,0}},
        color={200,0,0},
        thickness=1,
        smooth=Smooth.None));
    connect(leftHeartO2.arty, q_in) annotation (Line(
        points={{72,-58},{84,-58},{84,0},{100,0}},
        color={200,0,0},
        thickness=1,
        smooth=Smooth.None));
    connect(rightHeartO2.arty, q_in) annotation (Line(
        points={{72,-88},{84,-88},{84,0},{100,0}},
        color={200,0,0},
        thickness=1,
        smooth=Smooth.None));
    connect(rightHeartO2.vein, q_out) annotation (Line(
        points={{52,-88},{-82,-88},{-82,0},{-100,0}},
        color={200,0,0},
        thickness=1,
        smooth=Smooth.None));
    connect(boneO2.arty, q_in) annotation (Line(
        points={{-34,48},{84,48},{84,0},{100,0}},
        color={200,0,0},
        thickness=1,
        smooth=Smooth.None));
    connect(otherTissueO2.arty, q_in) annotation (Line(
        points={{-34,18},{84,18},{84,0},{100,0}},
        color={200,0,0},
        thickness=1,
        smooth=Smooth.None));
    connect(fatO2.arty, q_in) annotation (Line(
        points={{-34,-42},{84,-42},{84,0},{100,0}},
        color={200,0,0},
        thickness=1,
        smooth=Smooth.None));
    connect(skinO2.arty, q_in) annotation (Line(
        points={{-34,-72},{84,-72},{84,0},{100,0}},
        color={200,0,0},
        thickness=1,
        smooth=Smooth.None));
    connect(q_in, respiratoryMuscleO2.arty) annotation (Line(
        points={{100,0},{84,0},{84,-12},{-34,-12}},
        color={200,0,0},
        thickness=1,
        smooth=Smooth.None));

    connect(busConnector.cDPG, boneO2.cDPG)     annotation (
       Line(
        points={{-88,92},{-88,56},{-53,56}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-5,2},{-5,2}}));
    connect(busConnector.cDPG, brainO2.cDPG)
      annotation (Line(
        points={{-88,92},{6,92},{6,40},{53,40}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-5,2},{-5,2}}));
    connect(busConnector.cDPG, fatO2.cDPG)      annotation (
        Line(
        points={{-88,92},{-88,-34},{-53,-34}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-5,2},{-5,2}}));
    connect(busConnector.cDPG, GITractO2.cDPG)
      annotation (Line(
        points={{-88,92},{6,92},{6,10},{53,10}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-5,2},{-5,2}}));
    connect(busConnector.cDPG, kidneyO2.cDPG)
      annotation (Line(
        points={{-88,92},{6,92},{6,-20},{53,-20}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-5,2},{-5,2}}));
    connect(busConnector.cDPG, leftHeartO2.cDPG)
      annotation (Line(
        points={{-88,92},{6,92},{6,-50},{53,-50}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-5,2},{-5,2}}));
    connect(busConnector.cDPG, liverO2.cDPG)
      annotation (Line(
        points={{-88,92},{6,92},{6,70},{53,70}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-5,2},{-5,2}}));
    connect(busConnector.cDPG, otherTissueO2.cDPG)
      annotation (Line(
        points={{-88,92},{-88,26},{-53,26}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-5,2},{-5,2}}));
    connect(busConnector.cDPG, respiratoryMuscleO2.cDPG)
      annotation (Line(
        points={{-88,92},{-88,-4},{-53,-4}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-5,2},{-5,2}}));
    connect(busConnector.cDPG, rightHeartO2.cDPG)
      annotation (Line(
        points={{-88,92},{6,92},{6,-80},{53,-80}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-5,2},{-5,2}}));
    connect(busConnector.cDPG, skinO2.cDPG)      annotation (
       Line(
        points={{-88,92},{-88,-64},{-53,-64}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-5,2},{-5,2}}));
    connect(busConnector.cDPG, skeletalMuscleO2.cDPG)
      annotation (Line(
        points={{-88,92},{-87.5,92},{-87.5,84},{-53,84}},
        color={127,0,0},
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-5,2},{-5,2}}));

    connect(busConnector.FHbF, boneO2.FHbF)      annotation (
       Line(
        points={{-88,92},{-88,40},{-53,40}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-5,2},{-5,2}}));
    connect(busConnector.FHbF, brainO2.FHbF)
      annotation (Line(
        points={{-88,92},{6,92},{6,24},{53,24}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-5,2},{-5,2}}));
    connect(busConnector.FHbF, fatO2.FHbF)      annotation (
        Line(
        points={{-88,92},{-88,-50},{-53,-50}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-5,2},{-5,2}}));
    connect(busConnector.FHbF, GITractO2.FHbF)
      annotation (Line(
        points={{-88,92},{6,92},{6,-6},{53,-6}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-5,2},{-5,2}}));
    connect(busConnector.FHbF, kidneyO2.FHbF)
      annotation (Line(
        points={{-88,92},{6,92},{6,-36},{53,-36}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-5,2},{-5,2}}));
    connect(busConnector.FHbF, leftHeartO2.FHbF)
      annotation (Line(
        points={{-88,92},{6,92},{6,-66},{53,-66}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-5,2},{-5,2}}));
    connect(busConnector.FHbF, liverO2.FHbF)
      annotation (Line(
        points={{-88,92},{6,92},{6,54},{53,54}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-5,2},{-5,2}}));
    connect(busConnector.FHbF, otherTissueO2.FHbF)
      annotation (Line(
        points={{-88,92},{-88,10},{-53,10}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-5,2},{-5,2}}));
    connect(busConnector.FHbF, respiratoryMuscleO2.FHbF)
      annotation (Line(
        points={{-88,92},{-88,-20},{-53,-20}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-5,2},{-5,2}}));
    connect(busConnector.FHbF, rightHeartO2.FHbF)
      annotation (Line(
        points={{-88,92},{6,92},{6,-96},{53,-96}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-5,2},{-5,2}}));
    connect(busConnector.FHbF, skinO2.FHbF)      annotation (
       Line(
        points={{-88,92},{-88,-80},{-53,-80}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-5,2},{-5,2}}));
    connect(busConnector.FHbF, skeletalMuscleO2.FHbF)
      annotation (Line(
        points={{-88,92},{-87.5,92},{-87.5,68},{-53,68}},
        color={127,0,0},
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-5,2},{-5,2}}));

    connect(busConnector.bone.pCO2, boneO2.pCO2)        annotation (
       Line(
        points={{-88,92},{-88,36},{-53,36}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-5,2},{-5,2}}));
    connect(busConnector.brain.pCO2, brainO2.pCO2)
      annotation (Line(
        points={{-88,92},{6,92},{6,20},{53,20}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-5,2},{-5,2}}));
    connect(busConnector.fat.pCO2, fatO2.pCO2)      annotation (
        Line(
        points={{-88,92},{-88,-54},{-53,-54}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-5,2},{-5,2}}));
    connect(busConnector.GITract.pCO2, GITractO2.pCO2)
      annotation (Line(
        points={{-88,92},{6,92},{6,-10},{53,-10}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-5,2},{-5,2}}));
    connect(busConnector.kidney_pCO2, kidneyO2.pCO2)
      annotation (Line(
        points={{-88,92},{6,92},{6,-40},{53,-40}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-5,2},{-5,2}}));
    connect(busConnector.leftHeart_pCO2, leftHeartO2.pCO2)
      annotation (Line(
        points={{-88,92},{6,92},{6,-70},{53,-70}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-5,2},{-5,2}}));
    connect(busConnector.liver_pCO2, liverO2.pCO2)
      annotation (Line(
        points={{-88,92},{6,92},{6,50},{53,50}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-5,2},{-5,2}}));
    connect(busConnector.otherTissue.pCO2, otherTissueO2.pCO2)
      annotation (Line(
        points={{-88,92},{-88,6},{-53,6}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-5,2},{-5,2}}));
    connect(busConnector.respiratoryMuscle.pCO2, respiratoryMuscleO2.pCO2)
      annotation (Line(
        points={{-88,92},{-88,-24},{-53,-24}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-5,2},{-5,2}}));
    connect(busConnector.rightHeart_pCO2, rightHeartO2.pCO2)
      annotation (Line(
        points={{-88,92},{6,92},{6,-100},{53,-100}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-5,2},{-5,2}}));
    connect(busConnector.skin_pCO2, skinO2.pCO2)      annotation (
       Line(
        points={{-88,92},{-88,-84},{-53,-84}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-5,2},{-5,2}}));
    connect(busConnector.skeletalMuscle.pCO2, skeletalMuscleO2.pCO2)
      annotation (Line(
        points={{-88,92},{-87.5,92},{-87.5,64},{-53,64}},
        color={127,0,0},
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-5,2},{-5,2}}));

    connect(busConnector.ctHb, boneO2.ctHb)      annotation (
       Line(
        points={{-88,92},{-88,44},{-53,44}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-5,2},{-5,2}}));
    connect(busConnector.ctHb, brainO2.ctHb)
      annotation (Line(
        points={{-88,92},{6,92},{6,28},{53,28}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-5,2},{-5,2}}));
    connect(busConnector.ctHb, fatO2.ctHb)      annotation (
        Line(
        points={{-88,92},{-88,-46},{-53,-46}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-5,2},{-5,2}}));
    connect(busConnector.ctHb, GITractO2.ctHb)
      annotation (Line(
        points={{-88,92},{6,92},{6,-2},{53,-2}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-5,2},{-5,2}}));
    connect(busConnector.ctHb, kidneyO2.ctHb)
      annotation (Line(
        points={{-88,92},{6,92},{6,-32},{53,-32}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-5,2},{-5,2}}));
    connect(busConnector.ctHb, leftHeartO2.ctHb)
      annotation (Line(
        points={{-88,92},{6,92},{6,-62},{53,-62}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-5,2},{-5,2}}));
    connect(busConnector.ctHb, liverO2.ctHb)
      annotation (Line(
        points={{-88,92},{6,92},{6,58},{53,58}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-5,2},{-5,2}}));
    connect(busConnector.ctHb, otherTissueO2.ctHb)
      annotation (Line(
        points={{-88,92},{-88,14},{-53,14}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-5,2},{-5,2}}));
    connect(busConnector.ctHb, respiratoryMuscleO2.ctHb)
      annotation (Line(
        points={{-88,92},{-88,-16},{-53,-16}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-5,2},{-5,2}}));
    connect(busConnector.ctHb, rightHeartO2.ctHb)
      annotation (Line(
        points={{-88,92},{6,92},{6,-92},{53,-92}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-5,2},{-5,2}}));
    connect(busConnector.ctHb, skinO2.ctHb)      annotation (
       Line(
        points={{-88,92},{-88,-76},{-53,-76}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-5,2},{-5,2}}));
    connect(busConnector.ctHb, skeletalMuscleO2.ctHb)
      annotation (Line(
        points={{-88,92},{-87.5,92},{-87.5,72},{-53,72}},
        color={127,0,0},
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-5,2},{-5,2}}));

    connect(busConnector.pCO, boneO2.pCO)
      annotation (Line(
        points={{-88,92},{-87.5,92},{-87.5,52},{-53,52}},
        color={127,0,0},
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-5,2},{-5,2}}));
    connect(busConnector.pCO, brainO2.pCO)
      annotation (Line(
        points={{-88,92},{6,92},{6,36},{53,36}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-5,2},{-5,2}}));
    connect(busConnector.pCO, fatO2.pCO)      annotation (
        Line(
        points={{-88,92},{-88,-38},{-53,-38}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-5,2},{-5,2}}));
    connect(busConnector.pCO, GITractO2.pCO)
      annotation (Line(
        points={{-88,92},{6,92},{6,6},{53,6}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-5,2},{-5,2}}));
    connect(busConnector.pCO, kidneyO2.pCO)
      annotation (Line(
        points={{-88,92},{6,92},{6,-24},{53,-24}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-5,2},{-5,2}}));
    connect(busConnector.pCO, leftHeartO2.pCO)
      annotation (Line(
        points={{-88,92},{6,92},{6,-54},{53,-54}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-5,2},{-5,2}}));
    connect(busConnector.pCO, liverO2.pCO)
      annotation (Line(
        points={{-88,92},{6,92},{6,66},{53,66}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-5,2},{-5,2}}));
    connect(busConnector.pCO, otherTissueO2.pCO)
      annotation (Line(
        points={{-88,92},{-88,22},{-53,22}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-5,2},{-5,2}}));
    connect(busConnector.pCO, respiratoryMuscleO2.pCO)
      annotation (Line(
        points={{-88,92},{-88,-8},{-53,-8}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-5,2},{-5,2}}));
    connect(busConnector.pCO, rightHeartO2.pCO)
      annotation (Line(
        points={{-88,92},{6,92},{6,-84},{53,-84}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-5,2},{-5,2}}));
    connect(busConnector.pCO, skinO2.pCO)      annotation (
       Line(
        points={{-88,92},{-88,-68},{-53,-68}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-5,2},{-5,2}}));
    connect(busConnector.pCO, skeletalMuscleO2.pCO)
      annotation (Line(
        points={{-88,92},{-87.5,92},{-87.5,80},{-53,80}},
        color={127,0,0},
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-5,2},{-5,2}}));

    connect(boneO2.pH_plasma, busConnector.bone_pH_plasma)       annotation (
       Line(
        points={{-35,56},{6,56},{6,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));
    connect(brainO2.pH_plasma, busConnector.brain_pH_plasma)
      annotation (Line(
        points={{71,40},{98,40},{98,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));
    connect(fatO2.pH_plasma, busConnector.fat_pH_plasma)     annotation (
        Line(
        points={{-35,-34},{6,-34},{6,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));
    connect(GITractO2.pH_plasma, busConnector.GITract_pH_plasma)
      annotation (Line(
        points={{71,10},{98,10},{98,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));
    connect(kidneyO2.pH_plasma, busConnector.kidney_pH_plasma)
      annotation (Line(
        points={{71,-20},{98,-20},{98,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));
    connect(leftHeartO2.pH_plasma, busConnector.leftHeart_pH_plasma)
      annotation (Line(
        points={{71,-50},{98,-50},{98,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));
    connect(liverO2.pH_plasma, busConnector.liver_pH_plasma)
      annotation (Line(
        points={{71,70},{98,70},{98,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));
    connect(otherTissueO2.pH_plasma, busConnector.otherTissue_pH_plasma)
      annotation (Line(
        points={{-35,26},{6,26},{6,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));
    connect(respiratoryMuscleO2.pH_plasma, busConnector.respiratoryMuscle_pH_plasma)
      annotation (Line(
        points={{-35,-4},{6,-4},{6,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));
    connect(rightHeartO2.pH_plasma, busConnector.rightHeart_pH_plasma)
      annotation (Line(
        points={{71,-80},{98,-80},{98,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));
    connect(skinO2.pH_plasma, busConnector.skin_pH_plasma)     annotation (
       Line(
        points={{-35,-64},{6,-64},{6,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));
    connect(skeletalMuscleO2.pH_plasma, busConnector.skeletalMuscle_pH_plasma)
      annotation (Line(
        points={{-35,84},{5.5,84},{5.5,92},{-88,92}},
        color={127,0,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));
    connect(boneO2.FMetHb, busConnector.FMetHb)       annotation (
       Line(
        points={{-35,52},{6,52},{6,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));
    connect(brainO2.FMetHb, busConnector.FMetHb)
      annotation (Line(
        points={{71,36},{98,36},{98,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));
    connect(fatO2.FMetHb, busConnector.FMetHb)     annotation (
        Line(
        points={{-35,-38},{6,-38},{6,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));
    connect(GITractO2.FMetHb, busConnector.FMetHb)
      annotation (Line(
        points={{71,6},{98,6},{98,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));
    connect(kidneyO2.FMetHb, busConnector.FMetHb)
      annotation (Line(
        points={{71,-24},{98,-24},{98,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));
    connect(leftHeartO2.FMetHb, busConnector.FMetHb)
      annotation (Line(
        points={{71,-54},{98,-54},{98,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));
    connect(liverO2.FMetHb, busConnector.FMetHb)
      annotation (Line(
        points={{71,66},{98,66},{98,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));
    connect(otherTissueO2.FMetHb, busConnector.FMetHb)
      annotation (Line(
        points={{-35,22},{6,22},{6,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));
    connect(respiratoryMuscleO2.FMetHb, busConnector.FMetHb)
      annotation (Line(
        points={{-35,-8},{6,-8},{6,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));
    connect(rightHeartO2.FMetHb, busConnector.FMetHb)
      annotation (Line(
        points={{71,-84},{98,-84},{98,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));
    connect(skinO2.FMetHb, busConnector.FMetHb)     annotation (
       Line(
        points={{-35,-68},{6,-68},{6,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));
    connect(skeletalMuscleO2.FMetHb, busConnector.FMetHb)
      annotation (Line(
        points={{-35,80},{5.5,80},{5.5,92},{-88,92}},
        color={127,0,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));

    connect(boneO2.Tissue_O2Use, busConnector.bone_O2Use)       annotation (
       Line(
        points={{-35,44},{6,44},{6,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));
    connect(brainO2.Tissue_O2Use, busConnector.brain_O2Use)
      annotation (Line(
        points={{71,28},{98,28},{98,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));
    connect(fatO2.Tissue_O2Use, busConnector.fat_O2Use)     annotation (
        Line(
        points={{-35,-46},{6,-46},{6,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));
    connect(GITractO2.Tissue_O2Use, busConnector.GITract_O2Use)
      annotation (Line(
        points={{71,-2},{98,-2},{98,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));
    connect(kidneyO2.Tissue_O2Use, busConnector.kidney_O2Use)
      annotation (Line(
        points={{71,-32},{98,-32},{98,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));
    connect(leftHeartO2.Tissue_O2Use, busConnector.leftHeart_O2Use)
      annotation (Line(
        points={{71,-62},{98,-62},{98,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));
    connect(liverO2.Tissue_O2Use, busConnector.liver_O2Use)
      annotation (Line(
        points={{71,58},{98,58},{98,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));
    connect(otherTissueO2.Tissue_O2Use, busConnector.otherTissue_O2Use)
      annotation (Line(
        points={{-35,14},{6,14},{6,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));
    connect(respiratoryMuscleO2.Tissue_O2Use, busConnector.respiratoryMuscle_O2Use)
      annotation (Line(
        points={{-35,-16},{6,-16},{6,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));
    connect(rightHeartO2.Tissue_O2Use, busConnector.rightHeart_O2Use)
      annotation (Line(
        points={{71,-92},{98,-92},{98,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));
    connect(skinO2.Tissue_O2Use, busConnector.skin_O2Use)     annotation (
       Line(
        points={{-35,-76},{6,-76},{6,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));
    connect(skeletalMuscleO2.Tissue_O2Use, busConnector.skeletalMuscle_O2Use)
      annotation (Line(
        points={{-35,72},{5.5,72},{5.5,92},{-88,92}},
        color={127,0,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));

    connect(boneO2.BloodFlow, busConnector.bone_BloodFlow)        annotation (
       Line(
        points={{-35,36},{6,36},{6,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));
    connect(brainO2.BloodFlow, busConnector.brain_BloodFlow)
      annotation (Line(
        points={{71,20},{98,20},{98,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));
    connect(fatO2.BloodFlow, busConnector.fat_BloodFlow)     annotation (
        Line(
        points={{-35,-54},{6,-54},{6,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));
    connect(GITractO2.BloodFlow, busConnector.GITract_BloodFlow)
      annotation (Line(
        points={{71,-10},{98,-10},{98,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));
    connect(kidneyO2.BloodFlow, busConnector.kidney_BloodFlow)
      annotation (Line(
        points={{71,-40},{98,-40},{98,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));
    connect(leftHeartO2.BloodFlow, busConnector.leftHeart_BloodFlow)
      annotation (Line(
        points={{71,-70},{98,-70},{98,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));
    connect(otherTissueO2.BloodFlow, busConnector.otherTissue_BloodFlow)
      annotation (Line(
        points={{-35,6},{6,6},{6,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));
    connect(respiratoryMuscleO2.BloodFlow, busConnector.respiratoryMuscle_BloodFlow)
      annotation (Line(
        points={{-35,-24},{6,-24},{6,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));
    connect(rightHeartO2.BloodFlow, busConnector.rightHeart_BloodFlow)
      annotation (Line(
        points={{71,-100},{98,-100},{98,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));
    connect(skinO2.BloodFlow, busConnector.skin_BloodFlow)     annotation (
       Line(
        points={{-35,-84},{6,-84},{6,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));
    connect(skeletalMuscleO2.BloodFlow, busConnector.skeletalMuscle_BloodFlow)
      annotation (Line(
        points={{-35,64},{5.5,64},{5.5,92},{-88,92}},
        color={127,0,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));

    connect(boneO2.T, busConnector.bone_T)       annotation (
       Line(
        points={{-35,40},{6,40},{6,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));
    connect(brainO2.T, busConnector.brain_T)
      annotation (Line(
        points={{71,24},{98,24},{98,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));
    connect(fatO2.T, busConnector.fat_T)     annotation (
        Line(
        points={{-35,-50},{6,-50},{6,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));
    connect(GITractO2.T, busConnector.GITract_T)
      annotation (Line(
        points={{71,-6},{98,-6},{98,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));
    connect(kidneyO2.T, busConnector.kidney_T)
      annotation (Line(
        points={{71,-36},{98,-36},{98,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));
    connect(leftHeartO2.T, busConnector.leftHeart_T)
      annotation (Line(
        points={{71,-66},{98,-66},{98,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));
    connect(liverO2.T, busConnector.liver_T)
      annotation (Line(
        points={{71,54},{98,54},{98,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));
    connect(otherTissueO2.T, busConnector.otherTissue_T)
      annotation (Line(
        points={{-35,10},{6,10},{6,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));
    connect(respiratoryMuscleO2.T, busConnector.respiratoryMuscle_T)
      annotation (Line(
        points={{-35,-20},{6,-20},{6,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));
    connect(rightHeartO2.T, busConnector.rightHeart_T)
      annotation (Line(
        points={{71,-96},{98,-96},{98,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));
    connect(skinO2.T, busConnector.skin_T)     annotation (
       Line(
        points={{-35,-80},{6,-80},{6,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));
    connect(skeletalMuscleO2.T, busConnector.skeletalMuscle_T)
      annotation (Line(
        points={{-35,68},{5.5,68},{5.5,92},{-88,92}},
        color={127,0,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));

      connect(boneO2.sO2, busConnector.bone_sO2) annotation (
       Line(
        points={{-44,35},{6,35},{6,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None));
    connect(brainO2.sO2, busConnector.brain_sO2)
      annotation (Line(
        points={{62,19},{98,19},{98,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None));
    connect(fatO2.sO2, busConnector.fat_sO2) annotation (
        Line(
        points={{-44,-55},{6,-55},{6,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None));
    connect(GITractO2.sO2, busConnector.GITract_sO2)
      annotation (Line(
        points={{62,-11},{98,-11},{98,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None));
    connect(kidneyO2.sO2, busConnector.kidney_sO2)
      annotation (Line(
        points={{62,-41},{98,-41},{98,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None));
    connect(leftHeartO2.sO2, busConnector.leftHeart_sO2)
      annotation (Line(
        points={{62,-71},{98,-71},{98,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None));
    connect(liverO2.sO2, busConnector.liver_sO2)
      annotation (Line(
        points={{62,49},{98,49},{98,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None));
    connect(otherTissueO2.sO2, busConnector.otherTissue_sO2)
      annotation (Line(
        points={{-44,5},{6,5},{6,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None));
    connect(respiratoryMuscleO2.sO2, busConnector.respiratoryMuscle_sO2)
      annotation (Line(
        points={{-44,-25},{6,-25},{6,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None));
    connect(rightHeartO2.sO2, busConnector.rightHeart_sO2)
      annotation (Line(
        points={{62,-101},{98,-101},{98,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None));
    connect(skinO2.sO2, busConnector.skin_sO2) annotation (
       Line(
        points={{-44,-85},{6,-85},{6,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None));
    connect(skeletalMuscleO2.sO2, busConnector.skeletalMuscle_sO2)
      annotation (Line(
        points={{-44,63},{5.5,63},{5.5,92},{-88,92}},
        color={127,0,0},
        smooth=Smooth.None));

    connect(boneO2.pO2, busConnector.bone.pO2) annotation (
       Line(
        points={{-46,35},{6,35},{6,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None));
    connect(brainO2.pO2, busConnector.brain.pO2)
      annotation (Line(
        points={{60,19},{98,19},{98,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None));
    connect(fatO2.pO2, busConnector.fat.pO2) annotation (
        Line(
        points={{-46,-55},{6,-55},{6,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None));
    connect(GITractO2.pO2, busConnector.GITract.pO2)
      annotation (Line(
        points={{60,-11},{98,-11},{98,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None));
    connect(kidneyO2.pO2, busConnector.Kidney_PO2)
      annotation (Line(
        points={{60,-41},{98,-41},{98,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None));
    connect(leftHeartO2.pO2, busConnector.LeftHeart_PO2)
      annotation (Line(
        points={{60,-71},{98,-71},{98,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None));
    connect(liverO2.pO2, busConnector.Liver_PO2)
      annotation (Line(
        points={{60,49},{98,49},{98,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None));
    connect(otherTissueO2.pO2, busConnector.otherTissue.pO2)
      annotation (Line(
        points={{-46,5},{6,5},{6,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None));
    connect(respiratoryMuscleO2.pO2, busConnector.respiratoryMuscle.pO2)
      annotation (Line(
        points={{-46,-25},{6,-25},{6,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None));
    connect(rightHeartO2.pO2, busConnector.RightHeart_PO2)
      annotation (Line(
        points={{60,-101},{98,-101},{98,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None));
    connect(skinO2.pO2, busConnector.Skin_PO2) annotation (
       Line(
        points={{-46,-85},{6,-85},{6,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None));
    connect(skeletalMuscleO2.pO2, busConnector.skeletalMuscle.pO2)
      annotation (Line(
        points={{-46,63},{5.5,63},{5.5,92},{-88,92}},
        color={127,0,0},
        smooth=Smooth.None));

    connect(kidneyO2.TubulePO2, busConnector.KidneyO2_TubulePO2) annotation (Line(
        points={{64,-41},{64,-46},{96,-46},{96,92},{-88,92}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,-3},{6,-3}}));
    connect(GITractO2.vein, q_out) annotation (Line(
        points={{52,2},{-24,2},{-24,0},{-100,0}},
        color={107,45,134},
        thickness=1,
        smooth=Smooth.None));
    connect(liverO2.BloodFlow, busConnector.HepaticArty_BloodFlow) annotation (
        Line(
        points={{71,50},{98,50},{98,92},{-88,92}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
    connect(liverO2.arty, q_in) annotation (Line(
        points={{72,62},{84,62},{84,0},{100,0}},
        color={107,45,134},
        thickness=1,
        smooth=Smooth.None));
    annotation (Icon(graphics={Rectangle(extent={{-120,100},{120,-100}},
              lineColor={0,0,0})}));
end TissuesO2;