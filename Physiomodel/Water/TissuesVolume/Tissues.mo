within Physiomodel.Water.TissuesVolume;

model Tissues
    import QHP = Physiomodel;
    extends Physiolibrary.Icons.Tissues;
    SkeletalMuscle skeletalMuscle(FractIFV=0.59704112420698, FractOrganH2O=
    0.59704112420698)
    annotation (Placement(transformation(extent={{-54,62},{-34,82}})));
    Bone bone(FractIFV=0.075535107692334, FractOrganH2O=0.075535107692334)
    annotation (Placement(transformation(extent={{-54,36},{-34,56}})));
    Fat fat(FractIFV=0.068679312541595, FractOrganH2O=0.068679312541595)
    annotation (Placement(transformation(extent={{-54,-54},{-34,-34}})));
    Brain brain(FractIFV=0.021385027838153, FractOrganH2O=0.021385027838153)
    annotation (Placement(transformation(extent={{52,28},{72,48}})));
    QHP.Water.TissuesVolume.RightHeart rightHeart(FractIFV=
    0.00071147906305641, FractOrganH2O=0.00071147906305641)
    annotation (Placement(transformation(extent={{52,-92},{72,-72}})));
    RespiratoryMuscle respiratoryMuscle(FractIFV=6.71126519181567e-002,
    FractOrganH2O=6.71126519181567e-002)
    annotation (Placement(transformation(extent={{-54,-24},{-34,-4}})));
    OtherTissue otherTissue(FractIFV=6.70823116596042e-002, FractOrganH2O=6.70823116596042e-002)
    annotation (Placement(transformation(extent={{-54,8},{-34,28}})));
    Liver liver(FractIFV=2.84998184687167e-002, FractOrganH2O=2.84998184687167e-002)
    annotation (Placement(transformation(extent={{52,58},{72,78}})));
    QHP.Water.TissuesVolume.LeftHeart leftHeart(FractIFV=0.0042688743783384,
    FractOrganH2O=0.0042688743783384)
    annotation (Placement(transformation(extent={{52,-62},{72,-42}})));
    QHP.Water.TissuesVolume.Kidney kidney(FractIFV=4.71608978940247e-003,
    FractOrganH2O=4.71608978940247e-003)
    annotation (Placement(transformation(extent={{52,-34},{72,-14}})));
    QHP.Water.TissuesVolume.GITract gITract(FractIFV=2.34991370540916e-002,
    FractOrganH2O=2.34991370540916e-002)
    annotation (Placement(transformation(extent={{52,-2},{72,18}})));
    Physiolibrary.Types.BusConnector busConnector
    annotation (Placement(transformation(extent={{-108,72},{-68,112}})));
    Skin skin(FractIFV=0.041469065389573, FractOrganH2O=0.041469065389573)
    annotation (Placement(transformation(extent={{-54,-84},{-34,-64}})));

    //Real ifv;
    //Real organ;
equation

    connect(busConnector.InterstitialWater_Vol, bone.InterstitialWater_Vol)      annotation (
       Line(
        points={{-88,92},{-88,54},{-54,54}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-5,2},{-5,2}}));

    connect(busConnector.InterstitialWater_Vol, brain.InterstitialWater_Vol)
      annotation (Line(
        points={{-88,92},{6,92},{6,46},{52,46}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-5,2},{-5,2}}));
    connect(busConnector.InterstitialWater_Vol, fat.InterstitialWater_Vol)      annotation (
        Line(
        points={{-88,92},{-88,-36},{-54,-36}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-5,2},{-5,2}}));
    connect(busConnector.InterstitialWater_Vol, gITract.InterstitialWater_Vol)
      annotation (Line(
        points={{-88,92},{6,92},{6,16},{52,16}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-5,2},{-5,2}}));
    connect(busConnector.InterstitialWater_Vol, kidney.InterstitialWater_Vol)
      annotation (Line(
        points={{-88,92},{6,92},{6,-16},{52,-16}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-5,2},{-5,2}}));
    connect(busConnector.InterstitialWater_Vol, leftHeart.InterstitialWater_Vol)
      annotation (Line(
        points={{-88,92},{6,92},{6,-44},{52,-44}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-5,2},{-5,2}}));
    connect(busConnector.InterstitialWater_Vol, liver.InterstitialWater_Vol)
      annotation (Line(
        points={{-88,92},{6,92},{6,76},{52,76}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-5,2},{-5,2}}));
    connect(busConnector.InterstitialWater_Vol, otherTissue.InterstitialWater_Vol)
      annotation (Line(
        points={{-88,92},{-88,26},{-54,26}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-5,2},{-5,2}}));
    connect(busConnector.InterstitialWater_Vol, respiratoryMuscle.InterstitialWater_Vol)
      annotation (Line(
        points={{-88,92},{-88,-6},{-54,-6}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-5,2},{-5,2}}));
    connect(busConnector.InterstitialWater_Vol, rightHeart.InterstitialWater_Vol)
      annotation (Line(
        points={{-88,92},{6,92},{6,-74},{52,-74}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-5,2},{-5,2}}));
    connect(busConnector.InterstitialWater_Vol, skin.InterstitialWater_Vol)      annotation (
       Line(
        points={{-88,92},{-88,-66},{-54,-66}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-5,2},{-5,2}}));
    connect(busConnector.InterstitialWater_Vol, skeletalMuscle.InterstitialWater_Vol)
      annotation (Line(
        points={{-88,92},{-87.5,92},{-87.5,80},{-54,80}},
        color={127,0,0},
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-5,2},{-5,2}}));

    connect(busConnector.CellH2O_Vol, bone.CellH2O_Vol)         annotation (
       Line(
        points={{-88,92},{-88,50},{-54,50}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-5,2},{-5,2}}));
    connect(busConnector.CellH2O_Vol, brain.CellH2O_Vol)
      annotation (Line(
        points={{-88,92},{6,92},{6,42},{52,42}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-5,2},{-5,2}}));
    connect(busConnector.CellH2O_Vol, fat.CellH2O_Vol)         annotation (
        Line(
        points={{-88,92},{-88,-40},{-54,-40}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-5,2},{-5,2}}));
    connect(busConnector.CellH2O_Vol, gITract.CellH2O_Vol)
      annotation (Line(
        points={{-88,92},{6,92},{6,12},{52,12}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-5,2},{-5,2}}));
    connect(busConnector.CellH2O_Vol, kidney.CellH2O_Vol)
      annotation (Line(
        points={{-88,92},{6,92},{6,-20},{52,-20}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-5,2},{-5,2}}));
    connect(busConnector.CellH2O_Vol, leftHeart.CellH2O_Vol)
      annotation (Line(
        points={{-88,92},{6,92},{6,-48},{52,-48}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-5,2},{-5,2}}));
    connect(busConnector.CellH2O_Vol, liver.CellH2O_Vol)
      annotation (Line(
        points={{-88,92},{6,92},{6,72},{52,72}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-5,2},{-5,2}}));
    connect(busConnector.CellH2O_Vol, otherTissue.CellH2O_Vol)
      annotation (Line(
        points={{-88,92},{-88,22},{-54,22}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-5,2},{-5,2}}));
    connect(busConnector.CellH2O_Vol, respiratoryMuscle.CellH2O_Vol)
      annotation (Line(
        points={{-88,92},{-88,-10},{-54,-10}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-5,2},{-5,2}}));
    connect(busConnector.CellH2O_Vol, rightHeart.CellH2O_Vol)
      annotation (Line(
        points={{-88,92},{6,92},{6,-78},{52,-78}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-5,2},{-5,2}}));
    connect(busConnector.CellH2O_Vol, skin.CellH2O_Vol)         annotation (
       Line(
        points={{-88,92},{-88,-70},{-54,-70}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-5,2},{-5,2}}));
    connect(busConnector.CellH2O_Vol, skeletalMuscle.CellH2O_Vol)
      annotation (Line(
        points={{-88,92},{-87.5,92},{-87.5,76},{-54,76}},
        color={127,0,0},
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-5,2},{-5,2}}));

    connect(bone.LiquidVol, busConnector.bone_LiquidVol)       annotation (
       Line(
        points={{-34,54},{6,54},{6,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));
    connect(brain.LiquidVol, busConnector.brain_LiquidVol)
      annotation (Line(
        points={{72,46},{98,46},{98,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));
    connect(fat.LiquidVol, busConnector.fat_LiquidVol)     annotation (
        Line(
        points={{-34,-36},{6,-36},{6,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));
    connect(gITract.LiquidVol, busConnector.GITract_LiquidVol)
      annotation (Line(
        points={{72,16},{98,16},{98,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));
    connect(kidney.LiquidVol, busConnector.kidney_LiquidVol)
      annotation (Line(
        points={{72,-16},{98,-16},{98,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));
    connect(leftHeart.LiquidVol, busConnector.leftHeart_LiquidVol)
      annotation (Line(
        points={{72,-44},{98,-44},{98,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));
    connect(liver.LiquidVol, busConnector.liver_LiquidVol)
      annotation (Line(
        points={{72,76},{98,76},{98,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));
    connect(otherTissue.LiquidVol, busConnector.otherTissue_LiquidVol)
      annotation (Line(
        points={{-34,26},{6,26},{6,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));
    connect(respiratoryMuscle.LiquidVol, busConnector.respiratoryMuscle_LiquidVol)
      annotation (Line(
        points={{-34,-6},{6,-6},{6,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));
    connect(rightHeart.LiquidVol, busConnector.rightHeart_LiquidVol)
      annotation (Line(
        points={{72,-74},{98,-74},{98,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));
    connect(skin.LiquidVol, busConnector.skin_LiquidVol)     annotation (
       Line(
        points={{-34,-66},{6,-66},{6,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));
    connect(skeletalMuscle.LiquidVol, busConnector.skeletalMuscle_LiquidVol)
      annotation (Line(
        points={{-34,80},{5.5,80},{5.5,92},{-88,92}},
        color={127,0,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));

    connect(bone.LiquidVol, busConnector.Bone_LiquidVol)       annotation (
       Line(
        points={{-34,54},{6,54},{6,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));
    connect(brain.LiquidVol, busConnector.Brain_LiquidVol)
      annotation (Line(
        points={{72,46},{98,46},{98,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));
    connect(fat.LiquidVol, busConnector.Fat_LiquidVol)     annotation (
        Line(
        points={{-34,-36},{6,-36},{6,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));
    connect(kidney.LiquidVol, busConnector.Kidney_LiquidVol)
      annotation (Line(
        points={{72,-16},{98,-16},{98,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));
    connect(leftHeart.LiquidVol, busConnector.LeftHeart_LiquidVol)
      annotation (Line(
        points={{72,-44},{98,-44},{98,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));
    connect(liver.LiquidVol, busConnector.Liver_LiquidVol)
      annotation (Line(
        points={{72,76},{98,76},{98,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));
    connect(otherTissue.LiquidVol, busConnector.OtherTissue_LiquidVol)
      annotation (Line(
        points={{-34,26},{6,26},{6,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));
    connect(respiratoryMuscle.LiquidVol, busConnector.RespiratoryMuscle_LiquidVol)
      annotation (Line(
        points={{-34,-6},{6,-6},{6,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));
    connect(rightHeart.LiquidVol, busConnector.RightHeart_LiquidVol)
      annotation (Line(
        points={{72,-74},{98,-74},{98,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));
    connect(skin.LiquidVol, busConnector.Skin_LiquidVol)     annotation (
       Line(
        points={{-34,-66},{6,-66},{6,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));
    connect(skeletalMuscle.LiquidVol, busConnector.SkeletalMuscle_LiquidVol)
      annotation (Line(
        points={{-34,80},{5.5,80},{5.5,92},{-88,92}},
        color={127,0,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));

    connect(bone.OrganH2O, busConnector.bone_CellH2OVol)       annotation (
       Line(
        points={{-34,50},{6,50},{6,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));
    connect(brain.OrganH2O, busConnector.brain_CellH2OVol)
      annotation (Line(
        points={{72,42},{98,42},{98,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));
    connect(fat.OrganH2O, busConnector.fat_CellH2OVol)     annotation (
        Line(
        points={{-34,-40},{6,-40},{6,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));
    connect(gITract.OrganH2O, busConnector.GITract_CellH2OVol)
      annotation (Line(
        points={{72,12},{98,12},{98,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));
    connect(kidney.OrganH2O, busConnector.kidney_CellH2OVol)
      annotation (Line(
        points={{72,-20},{98,-20},{98,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));
    connect(leftHeart.OrganH2O, busConnector.leftHeart_CellH2OVol)
      annotation (Line(
        points={{72,-48},{98,-48},{98,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));
    connect(liver.OrganH2O, busConnector.liver_CellH2OVol)
      annotation (Line(
        points={{72,72},{98,72},{98,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));
    connect(otherTissue.OrganH2O, busConnector.otherTissue_CellH2OVol)
      annotation (Line(
        points={{-34,22},{6,22},{6,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));
    connect(respiratoryMuscle.OrganH2O, busConnector.respiratoryMuscle_CellH2OVol)
      annotation (Line(
        points={{-34,-10},{6,-10},{6,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));
    connect(rightHeart.OrganH2O, busConnector.rightHeart_CellH2OVol)
      annotation (Line(
        points={{72,-78},{98,-78},{98,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));
    connect(skin.OrganH2O, busConnector.skin_CellH2OVol)     annotation (
       Line(
        points={{-34,-70},{6,-70},{6,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));
    connect(skeletalMuscle.OrganH2O, busConnector.skeletalMuscle_CellH2OVol)
      annotation (Line(
        points={{-34,76},{5.5,76},{5.5,92},{-88,92}},
        color={127,0,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));

    connect(bone.InterstitialWater, busConnector.bone_InterstitialWater)       annotation (
       Line(
        points={{-34,46},{6,46},{6,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));
    connect(brain.InterstitialWater, busConnector.brain_InterstitialWater)
      annotation (Line(
        points={{72,38},{98,38},{98,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));
    connect(fat.InterstitialWater, busConnector.fat_InterstitialWater)     annotation (
        Line(
        points={{-34,-44},{6,-44},{6,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));
    connect(gITract.InterstitialWater, busConnector.GITract_InterstitialWater)
      annotation (Line(
        points={{72,8},{98,8},{98,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));
    connect(kidney.InterstitialWater, busConnector.kidney_InterstitialWater)
      annotation (Line(
        points={{72,-24},{98,-24},{98,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));
    connect(leftHeart.InterstitialWater, busConnector.leftHeart_InterstitialWater)
      annotation (Line(
        points={{72,-52},{98,-52},{98,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));
    connect(liver.InterstitialWater, busConnector.liver_InterstitialWater)
      annotation (Line(
        points={{72,68},{98,68},{98,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));
    connect(otherTissue.InterstitialWater, busConnector.otherTissue_InterstitialWater)
      annotation (Line(
        points={{-34,18},{6,18},{6,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));
    connect(respiratoryMuscle.InterstitialWater, busConnector.respiratoryMuscle_InterstitialWater)
      annotation (Line(
        points={{-34,-14},{6,-14},{6,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));
    connect(rightHeart.InterstitialWater, busConnector.rightHeart_InterstitialWater)
      annotation (Line(
        points={{72,-82},{98,-82},{98,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));
    connect(skin.InterstitialWater, busConnector.skin_InterstitialWater)     annotation (
       Line(
        points={{-34,-74},{6,-74},{6,92},{-88,92}},
        color={0,127,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));
    connect(skeletalMuscle.InterstitialWater, busConnector.skeletalMuscle_InterstitialWater)
      annotation (Line(
        points={{-34,72},{5.5,72},{5.5,92},{-88,92}},
        color={127,0,0},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{5,2},{5,2}}));
    //ifv=bone.FractIFV +brain.FractIFV +fat.FractIFV +GITract.FractIFV +kidney.FractIFV +leftHeart.FractIFV +liver.FractIFV +otherTissue.FractIFV +respiratoryMuscle.FractIFV +rightHeart.FractIFV +skin.FractIFV +skeletalMuscle.FractIFV;
    //organ=bone.FractOrganH2O +brain.FractOrganH2O +fat.FractOrganH2O +GITract.FractOrganH2O +kidney.FractOrganH2O +leftHeart.FractOrganH2O +liver.FractOrganH2O +otherTissue.FractOrganH2O +respiratoryMuscle.FractOrganH2O +rightHeart.FractOrganH2O +skin.FractOrganH2O +skeletalMuscle.FractOrganH2O;
    /*
    assert(bone.FractIFV +
    brain.FractIFV +
    fat.FractIFV +
    GITract.FractIFV +
    kidney.FractIFV +
    leftHeart.FractIFV +
    liver.FractIFV +
    otherTissue.FractIFV +
    respiratoryMuscle.FractIFV +
    rightHeart.FractIFV +
    skin.FractIFV +
    skeletalMuscle.FractIFV <> 1, "Water.TissuesVolume.Tissues: Sum of FractIFV is not 1!");
    assert(bone.FractOrganH2O +
    brain.FractOrganH2O +
    fat.FractOrganH2O +
    GITract.FractOrganH2O +
    kidney.FractOrganH2O +
    leftHeart.FractOrganH2O +
    liver.FractOrganH2O +
    otherTissue.FractOrganH2O +
    respiratoryMuscle.FractOrganH2O +
    rightHeart.FractOrganH2O +
    skin.FractOrganH2O +
    skeletalMuscle.FractOrganH2O <> 1, "Water.TissuesVolume.Tissues: Sum of FractOrganH20 is not 1!");
    */
    annotation (Icon(graphics={Text(
            extent={{-100,-104},{100,-120}},
            lineColor={0,0,255},
            textString="%name")}));
end Tissues;
