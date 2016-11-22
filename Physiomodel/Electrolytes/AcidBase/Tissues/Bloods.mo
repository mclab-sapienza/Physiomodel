within Physiomodel.Electrolytes.AcidBase.Tissues;
model Bloods

    Blood.SkeletalMuscleBloodPh skeletalMuscle
    annotation (Placement(transformation(extent={{-54,66},{-34,86}})));

    Blood.BoneBloodPh bone
    annotation (Placement(transformation(extent={{-54,36},{-34,56}})));

    Blood.FatBloodPh fat
    annotation (Placement(transformation(extent={{-54,-54},{-34,-34}})));

    Blood.BrainBloodPh brain
    annotation (Placement(transformation(extent={{52,28},{72,48}})));

    Blood.RightHeartBloodPh rightHeart
    annotation (Placement(transformation(extent={{52,-92},{72,-72}})));

    Blood.RespiratoryMuscleBloodPh respiratoryMuscle
    annotation (Placement(transformation(extent={{-54,-24},{-34,-4}})));

    Blood.OtherTissueBloodPh otherTissue
    annotation (Placement(transformation(extent={{-54,6},{-34,26}})));

    Blood.LiverBloodPh liver
    annotation (Placement(transformation(extent={{52,60},{72,80}})));

    Blood.LeftHeartBloodPh leftHeart
    annotation (Placement(transformation(extent={{52,-62},{72,-42}})));

    Blood.KidneyBloodPh kidney
    annotation (Placement(transformation(extent={{52,-32},{72,-12}})));

    Blood.GITractBloodPh GITract
    annotation (Placement(transformation(extent={{52,-2},{72,18}})));

    Physiolibrary.Types.BusConnector busConnector
    annotation (Placement(transformation(extent={{-108,74},{-68,114}})));
    Blood.SkinBloodPh skin
    annotation (Placement(transformation(extent={{-54,-84},{-34,-64}})));

    Modelica.Blocks.Math.Add cTH_lessLactate(k1=-1, k2=-1)
    annotation (Placement(transformation(extent={{-92,114},{-72,134}})));
equation
    connect(busConnector.bone_sO2, bone.sO2)        annotation (
     Line(
      points={{-88,94},{-88,57},{-38,57}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.brain_sO2, brain.sO2)
    annotation (Line(
      points={{-88,94},{6,94},{6,49},{68,49}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.fat_sO2, fat.sO2)      annotation (
      Line(
      points={{-88,94},{-88,-33},{-38,-33}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.GITract_sO2, GITract.sO2)
    annotation (Line(
      points={{-88,94},{6,94},{6,19},{68,19}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.kidney_sO2, kidney.sO2)
    annotation (Line(
      points={{-88,94},{6,94},{6,-11},{68,-11}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.leftHeart_sO2, leftHeart.sO2)
    annotation (Line(
      points={{-88,94},{6,94},{6,-41},{68,-41}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.liver_sO2, liver.sO2)
    annotation (Line(
      points={{-88,94},{6,94},{6,81},{68,81}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.otherTissue_sO2, otherTissue.sO2)
    annotation (Line(
      points={{-88,94},{-88,27},{-38,27}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.respiratoryMuscle_sO2, respiratoryMuscle.sO2)
    annotation (Line(
      points={{-88,94},{-88,-3},{-38,-3}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.rightHeart_sO2, rightHeart.sO2)
    annotation (Line(
      points={{-88,94},{6,94},{6,-71},{68,-71}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.skin_sO2, skin.sO2)      annotation (
     Line(
      points={{-88,94},{-88,-63},{-38,-63}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.skeletalMuscle_sO2, skeletalMuscle.sO2)
    annotation (Line(
      points={{-88,94},{-87.5,94},{-87.5,87},{-38,87}},
      color={127,0,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));

    connect(busConnector.bone_T, bone.T)        annotation (
     Line(
      points={{-88,94},{-88,38.8},{-53,38.8}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.brain_T, brain.T)
    annotation (Line(
      points={{-88,94},{6,94},{6,30.8},{53,30.8}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.fat_T, fat.T)      annotation (
      Line(
      points={{-88,94},{-88,-51.2},{-53,-51.2}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.GITract_T, GITract.T)
    annotation (Line(
      points={{-88,94},{6,94},{6,0.8},{53,0.8}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.kidney_T, kidney.T)
    annotation (Line(
      points={{-88,94},{6,94},{6,-29.2},{53,-29.2}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.leftHeart_T, leftHeart.T)
    annotation (Line(
      points={{-88,94},{6,94},{6,-59.2},{53,-59.2}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.liver_T, liver.T)
    annotation (Line(
      points={{-88,94},{6,94},{6,62.8},{53,62.8}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.otherTissue_T, otherTissue.T)
    annotation (Line(
      points={{-88,94},{-88,8.8},{-53,8.8}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.respiratoryMuscle_T, respiratoryMuscle.T)
    annotation (Line(
      points={{-88,94},{-88,-21.2},{-53,-21.2}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.rightHeart_T, rightHeart.T)
    annotation (Line(
      points={{-88,94},{6,94},{6,-89.2},{53,-89.2}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.skin_T, skin.T)      annotation (
     Line(
      points={{-88,94},{-88,-81.2},{-53,-81.2}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.skeletalMuscle_T, skeletalMuscle.T)
    annotation (Line(
      points={{-88,94},{-87.5,94},{-87.5,68.8},{-53,68.8}},
      color={127,0,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));

    connect(cTH_lessLactate.y, bone.ctHox_lessLactate)        annotation (
     Line(
      points={{-71,124},{-71,46},{-53,46}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(cTH_lessLactate.y, brain.ctHox_lessLactate)
    annotation (Line(
      points={{-71,124},{6,124},{6,38},{53,38}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(cTH_lessLactate.y, fat.ctHox_lessLactate)      annotation (
      Line(
      points={{-71,124},{-71,-44},{-53,-44}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(cTH_lessLactate.y, GITract.ctHox_lessLactate)
    annotation (Line(
      points={{-71,124},{6,124},{6,8},{53,8}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(cTH_lessLactate.y, kidney.ctHox_lessLactate)
    annotation (Line(
      points={{-71,124},{6,124},{6,-22},{53,-22}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(cTH_lessLactate.y, leftHeart.ctHox_lessLactate)
    annotation (Line(
      points={{-71,124},{6,124},{6,-52},{53,-52}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(cTH_lessLactate.y, liver.ctHox_lessLactate)
    annotation (Line(
      points={{-71,124},{6,124},{6,70},{53,70}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(cTH_lessLactate.y, otherTissue.ctHox_lessLactate)
    annotation (Line(
      points={{-71,124},{-71,16},{-53,16}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(cTH_lessLactate.y, respiratoryMuscle.ctHox_lessLactate)
    annotation (Line(
      points={{-71,124},{-71,-14},{-53,-14}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(cTH_lessLactate.y, rightHeart.ctHox_lessLactate)
    annotation (Line(
      points={{-71,124},{6,124},{6,-82},{53,-82}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(cTH_lessLactate.y, skin.ctHox_lessLactate)      annotation (
     Line(
      points={{-71,124},{-71,-74},{-53,-74}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));

    connect(busConnector.bone_cLactate, bone.cLactate)        annotation (
     Line(
      points={{-88,94},{-88,50},{-53,50}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.brain_cLactate, brain.cLactate)
    annotation (Line(
      points={{-88,94},{6,94},{6,42},{53,42}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.fat_cLactate, fat.cLactate)      annotation (
      Line(
      points={{-88,94},{-88,-40},{-53,-40}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.GITract_cLactate, GITract.cLactate)
    annotation (Line(
      points={{-88,94},{6,94},{6,12},{53,12}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.kidney_cLactate, kidney.cLactate)
    annotation (Line(
      points={{-88,94},{6,94},{6,-18},{53,-18}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.leftHeart_cLactate, leftHeart.cLactate)
    annotation (Line(
      points={{-88,94},{6,94},{6,-48},{53,-48}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.liver_cLactate, liver.cLactate)
    annotation (Line(
      points={{-88,94},{6,94},{6,74},{53,74}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.otherTissue_cLactate, otherTissue.cLactate)
    annotation (Line(
      points={{-88,94},{-88,20},{-53,20}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.respiratoryMuscle_cLactate, respiratoryMuscle.cLactate)
    annotation (Line(
      points={{-88,94},{-88,-10},{-53,-10}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.rightHeart_cLactate, rightHeart.cLactate)
    annotation (Line(
      points={{-88,94},{6,94},{6,-78},{53,-78}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.skin_cLactate, skin.cLactate)      annotation (
     Line(
      points={{-88,94},{-88,-70},{-53,-70}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.skeletalMuscle_cLactate, skeletalMuscle.cLactate)
    annotation (Line(
      points={{-88,94},{-87.5,94},{-87.5,80},{-53,80}},
      color={127,0,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));

    connect(bone.ctHb, busConnector.ctHb)       annotation (
     Line(
      points={{-35,50},{6,50},{6,94},{-88,94}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{5,2},{5,2}}));
    connect(brain.ctHb, busConnector.ctHb)
    annotation (Line(
      points={{71,42},{98,42},{98,94},{-88,94}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{5,2},{5,2}}));
    connect(fat.ctHb, busConnector.ctHb)     annotation (
      Line(
      points={{-35,-40},{6,-40},{6,94},{-88,94}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{5,2},{5,2}}));
    connect(GITract.ctHb, busConnector.ctHb)
    annotation (Line(
      points={{71,12},{98,12},{98,94},{-88,94}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{5,2},{5,2}}));
    connect(kidney.ctHb, busConnector.ctHb)
    annotation (Line(
      points={{71,-18},{98,-18},{98,94},{-88,94}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{5,2},{5,2}}));
    connect(leftHeart.ctHb, busConnector.ctHb)
    annotation (Line(
      points={{71,-48},{98,-48},{98,94},{-88,94}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{5,2},{5,2}}));
    connect(liver.ctHb, busConnector.ctHb)
    annotation (Line(
      points={{71,74},{98,74},{98,94},{-88,94}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{5,2},{5,2}}));
    connect(otherTissue.ctHb, busConnector.ctHb)
    annotation (Line(
      points={{-35,20},{6,20},{6,94},{-88,94}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{5,2},{5,2}}));
    connect(respiratoryMuscle.ctHb, busConnector.ctHb)
    annotation (Line(
      points={{-35,-10},{6,-10},{6,94},{-88,94}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{5,2},{5,2}}));
    connect(rightHeart.ctHb, busConnector.ctHb)
    annotation (Line(
      points={{71,-78},{98,-78},{98,94},{-88,94}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{5,2},{5,2}}));
    connect(skin.ctHb, busConnector.ctHb)     annotation (
     Line(
      points={{-35,-70},{6,-70},{6,94},{-88,94}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{5,2},{5,2}}));
    connect(skeletalMuscle.ctHb, busConnector.ctHb)
    annotation (Line(
      points={{-35,80},{5.5,80},{5.5,94},{-88,94}},
      color={127,0,0},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{5,2},{5,2}}));

    connect(bone.ctAlb, busConnector.ctAlb)       annotation (
     Line(
      points={{-35,46},{6,46},{6,94},{-88,94}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{5,2},{5,2}}));
    connect(brain.ctAlb, busConnector.ctAlb)
    annotation (Line(
      points={{71,38},{98,38},{98,94},{-88,94}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{5,2},{5,2}}));
    connect(fat.ctAlb, busConnector.ctAlb)     annotation (
      Line(
      points={{-35,-44},{6,-44},{6,94},{-88,94}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{5,2},{5,2}}));
    connect(GITract.ctAlb, busConnector.ctAlb)
    annotation (Line(
      points={{71,8},{98,8},{98,94},{-88,94}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{5,2},{5,2}}));
    connect(kidney.ctAlb, busConnector.ctAlb)
    annotation (Line(
      points={{71,-22},{98,-22},{98,94},{-88,94}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{5,2},{5,2}}));
    connect(leftHeart.ctAlb, busConnector.ctAlb)
    annotation (Line(
      points={{71,-52},{98,-52},{98,94},{-88,94}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{5,2},{5,2}}));
    connect(liver.ctAlb, busConnector.ctAlb)
    annotation (Line(
      points={{71,70},{98,70},{98,94},{-88,94}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{5,2},{5,2}}));
    connect(otherTissue.ctAlb, busConnector.ctAlb)
    annotation (Line(
      points={{-35,16},{6,16},{6,94},{-88,94}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{5,2},{5,2}}));
    connect(respiratoryMuscle.ctAlb, busConnector.ctAlb)
    annotation (Line(
      points={{-35,-14},{6,-14},{6,94},{-88,94}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{5,2},{5,2}}));
    connect(rightHeart.ctAlb, busConnector.ctAlb)
    annotation (Line(
      points={{71,-82},{98,-82},{98,94},{-88,94}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{5,2},{5,2}}));
    connect(skin.ctAlb, busConnector.ctAlb)     annotation (
     Line(
      points={{-35,-74},{6,-74},{6,94},{-88,94}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{5,2},{5,2}}));
    connect(skeletalMuscle.ctAlb, busConnector.ctAlb)
    annotation (Line(
      points={{-35,76},{5.5,76},{5.5,94},{-88,94}},
      color={127,0,0},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{5,2},{5,2}}));

    connect(bone.ctGlb, busConnector.ctGlb)       annotation (
     Line(
      points={{-35,42},{6,42},{6,94},{-88,94}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{5,2},{5,2}}));
    connect(brain.ctGlb, busConnector.ctGlb)
    annotation (Line(
      points={{71,34},{98,34},{98,94},{-88,94}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{5,2},{5,2}}));
    connect(fat.ctGlb, busConnector.ctGlb)     annotation (
      Line(
      points={{-35,-48},{6,-48},{6,94},{-88,94}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{5,2},{5,2}}));
    connect(GITract.ctGlb, busConnector.ctGlb)
    annotation (Line(
      points={{71,4},{98,4},{98,94},{-88,94}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{5,2},{5,2}}));
    connect(kidney.ctGlb, busConnector.ctGlb)
    annotation (Line(
      points={{71,-26},{98,-26},{98,94},{-88,94}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{5,2},{5,2}}));
    connect(leftHeart.ctGlb, busConnector.ctGlb)
    annotation (Line(
      points={{71,-56},{98,-56},{98,94},{-88,94}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{5,2},{5,2}}));
    connect(liver.ctGlb, busConnector.ctGlb)
    annotation (Line(
      points={{71,66},{98,66},{98,94},{-88,94}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{5,2},{5,2}}));
    connect(otherTissue.ctGlb, busConnector.ctGlb)
    annotation (Line(
      points={{-35,12},{6,12},{6,94},{-88,94}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{5,2},{5,2}}));
    connect(respiratoryMuscle.ctGlb, busConnector.ctGlb)
    annotation (Line(
      points={{-35,-18},{6,-18},{6,94},{-88,94}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{5,2},{5,2}}));
    connect(rightHeart.ctGlb, busConnector.ctGlb)
    annotation (Line(
      points={{71,-86},{98,-86},{98,94},{-88,94}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{5,2},{5,2}}));
    connect(skin.ctGlb, busConnector.ctGlb)     annotation (
     Line(
      points={{-35,-78},{6,-78},{6,94},{-88,94}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{5,2},{5,2}}));
    connect(skeletalMuscle.ctGlb, busConnector.ctGlb)
    annotation (Line(
      points={{-35,72},{5.5,72},{5.5,94},{-88,94}},
      color={127,0,0},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{5,2},{5,2}}));

    connect(bone.ctPO4, busConnector.ctPO4)       annotation (
     Line(
      points={{-35,38},{6,38},{6,94},{-88,94}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{5,2},{5,2}}));
    connect(brain.ctPO4, busConnector.ctPO4)
    annotation (Line(
      points={{71,30},{98,30},{98,94},{-88,94}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{5,2},{5,2}}));
    connect(fat.ctPO4, busConnector.ctPO4)     annotation (
      Line(
      points={{-35,-52},{6,-52},{6,94},{-88,94}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{5,2},{5,2}}));
    connect(GITract.ctPO4, busConnector.ctPO4)
    annotation (Line(
      points={{71,0},{98,0},{98,94},{-88,94}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{5,2},{5,2}}));
    connect(kidney.ctPO4, busConnector.ctPO4)
    annotation (Line(
      points={{71,-30},{98,-30},{98,94},{-88,94}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{5,2},{5,2}}));
    connect(leftHeart.ctPO4, busConnector.ctPO4)
    annotation (Line(
      points={{71,-60},{98,-60},{98,94},{-88,94}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{5,2},{5,2}}));
    connect(liver.ctPO4, busConnector.ctPO4)
    annotation (Line(
      points={{71,62},{98,62},{98,94},{-88,94}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{5,2},{5,2}}));
    connect(otherTissue.ctPO4, busConnector.ctPO4)
    annotation (Line(
      points={{-35,8},{6,8},{6,94},{-88,94}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{5,2},{5,2}}));
    connect(respiratoryMuscle.ctPO4, busConnector.ctPO4)
    annotation (Line(
      points={{-35,-22},{6,-22},{6,94},{-88,94}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{5,2},{5,2}}));
    connect(rightHeart.ctPO4, busConnector.ctPO4)
    annotation (Line(
      points={{71,-90},{98,-90},{98,94},{-88,94}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{5,2},{5,2}}));
    connect(skin.ctPO4, busConnector.ctPO4)     annotation (
     Line(
      points={{-35,-82},{6,-82},{6,94},{-88,94}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{5,2},{5,2}}));
    connect(skeletalMuscle.ctPO4, busConnector.ctPO4)
    annotation (Line(
      points={{-35,68},{5.5,68},{5.5,94},{-88,94}},
      color={127,0,0},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{5,2},{5,2}}));

    connect(bone.cHCO3, busConnector.bone_cHCO3)        annotation (
     Line(
      points={{-35,54},{6,54},{6,94},{-88,94}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{5,2},{5,2}}));
    connect(brain.cHCO3, busConnector.brain_cHCO3)
    annotation (Line(
      points={{71,46},{98,46},{98,94},{-88,94}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{5,2},{5,2}}));
    connect(fat.cHCO3, busConnector.fat_cHCO3)     annotation (
      Line(
      points={{-35,-36},{6,-36},{6,94},{-88,94}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{5,2},{5,2}}));
    connect(GITract.cHCO3, busConnector.GITract_cHCO3)
    annotation (Line(
      points={{71,16},{98,16},{98,94},{-88,94}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{5,2},{5,2}}));
    connect(kidney.cHCO3, busConnector.kidney_cHCO3)
    annotation (Line(
      points={{71,-14},{98,-14},{98,94},{-88,94}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{5,2},{5,2}}));
    connect(leftHeart.cHCO3, busConnector.leftHeart_cHCO3)
    annotation (Line(
      points={{71,-44},{98,-44},{98,94},{-88,94}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{5,2},{5,2}}));
    connect(liver.cHCO3, busConnector.liver_cHCO3)
    annotation (Line(
      points={{71,78},{98,78},{98,94},{-88,94}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{5,2},{5,2}}));
    connect(otherTissue.cHCO3, busConnector.otherTissue_cHCO3)
    annotation (Line(
      points={{-35,24},{6,24},{6,94},{-88,94}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{5,2},{5,2}}));
    connect(respiratoryMuscle.cHCO3, busConnector.respiratoryMuscle_cHCO3)
    annotation (Line(
      points={{-35,-6},{6,-6},{6,94},{-88,94}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{5,2},{5,2}}));
    connect(rightHeart.cHCO3, busConnector.rightHeart_cHCO3)
    annotation (Line(
      points={{71,-74},{98,-74},{98,94},{-88,94}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{5,2},{5,2}}));
    connect(skin.cHCO3, busConnector.skin_cHCO3)     annotation (
     Line(
      points={{-35,-66},{6,-66},{6,94},{-88,94}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{5,2},{5,2}}));
    connect(skeletalMuscle.cHCO3, busConnector.skeletalMuscle_cHCO3)
    annotation (Line(
      points={{-35,84},{5.5,84},{5.5,94},{-88,94}},
      color={127,0,0},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{5,2},{5,2}}));

    connect(bone.pH_ery, busConnector.bone_pH_ery) annotation (Line(
      points={{-42,34},{6,34},{6,94},{-88,94}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(brain.pH_ery, busConnector.brain_pH_ery) annotation (Line(
      points={{64,26},{6,26},{6,94},{-88,94}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(fat.pH_ery, busConnector.fat_pH_ery) annotation (Line(
      points={{-42,-56},{6,-56},{6,94},{-88,94}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(GITract.pH_ery, busConnector.GITract_pH_ery) annotation (Line(
      points={{64,-4},{6,-4},{6,94},{-88,94}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(kidney.pH_ery, busConnector.kidney_pH_ery) annotation (Line(
      points={{64,-34},{6,-34},{6,94},{-88,94}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(leftHeart.pH_ery, busConnector.leftHeart_pH_ery) annotation (Line(
      points={{64,-64},{6,-64},{6,94},{-88,94}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(liver.pH_ery, busConnector.liver_pH_ery) annotation (Line(
      points={{64,58},{6,58},{6,94},{-88,94}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(otherTissue.pH_ery, busConnector.otherTissue_pH_ery) annotation (Line(
      points={{-42,4},{6,4},{6,94},{-88,94}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(rightHeart.pH_ery, busConnector.rightHeart_pH_ery) annotation (Line(
      points={{64,-94},{6,-94},{6,94},{-88,94}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(respiratoryMuscle.pH_ery, busConnector.respiratoryMuscle_pH_ery) annotation (Line(
      points={{-42,-26},{6,-26},{6,94},{-88,94}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(skin.pH_ery, busConnector.skin_pH_ery) annotation (Line(
      points={{-42,-86},{6,-86},{6,94},{-88,94}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(skeletalMuscle.pH_ery, busConnector.skeletalMuscle_pH_ery) annotation (Line(
      points={{-42,64},{6,64},{6,94},{-88,94}},
      color={0,0,127},
      smooth=Smooth.None));

    connect(bone.pH, busConnector.bone_pH_plasma) annotation (Line(
      points={{-46,34},{6,34},{6,94},{-88,94}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(brain.pH, busConnector.brain_pH_plasma) annotation (Line(
      points={{60,26},{6,26},{6,94},{-88,94}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(fat.pH, busConnector.fat_pH_plasma) annotation (Line(
      points={{-46,-56},{6,-56},{6,94},{-88,94}},
      color={0,0,127},
      smooth=Smooth.None));
       connect(GITract.pH, busConnector.GITract_pH_plasma) annotation (Line(
      points={{60,-4},{6,-4},{6,94},{-88,94}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(kidney.pH, busConnector.kidney_pH_plasma) annotation (Line(
      points={{60,-34},{6,-34},{6,94},{-88,94}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(leftHeart.pH, busConnector.leftHeart_pH_plasma) annotation (Line(
      points={{60,-64},{6,-64},{6,94},{-88,94}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(liver.pH, busConnector.liver_pH_plasma) annotation (Line(
      points={{60,58},{6,58},{6,94},{-88,94}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(otherTissue.pH, busConnector.otherTissue_pH_plasma) annotation (Line(
      points={{-46,4},{6,4},{6,94},{-88,94}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(rightHeart.pH, busConnector.rightHeart_pH_plasma) annotation (Line(
      points={{60,-94},{6,-94},{6,94},{-88,94}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(respiratoryMuscle.pH, busConnector.respiratoryMuscle_pH_plasma) annotation (Line(
      points={{-46,-26},{6,-26},{6,94},{-88,94}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(skin.pH, busConnector.skin_pH_plasma) annotation (Line(
      points={{-46,-86},{6,-86},{6,94},{-88,94}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(skeletalMuscle.pH, busConnector.skeletalMuscle_pH_plasma) annotation (Line(
      points={{-46,64},{6,64},{6,94},{-88,94}},
      color={0,0,127},
      smooth=Smooth.None));

    connect(busConnector.Blood_BEox, cTH_lessLactate.u1) annotation (Line(
      points={{-88,94},{-114,94},{-114,130},{-94,130}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-6,3},{-6,3}}));
    connect(cTH_lessLactate.y, skeletalMuscle.ctHox_lessLactate) annotation (Line(
      points={{-71,124},{-66,124},{-66,76},{-53,76}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(busConnector.LacPool, cTH_lessLactate.u2) annotation (Line(
    points={{-88,94},{-114,94},{-114,118},{-94,118}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    annotation (Icon(coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},
            {100,140}}),       graphics={
        Rectangle(
          extent={{-100,100},{100,-100}},
          lineColor={0,0,255},
          fillColor={215,215,215},
          fillPattern=FillPattern.Solid),
        Text(
          extent={{-96,-62},{98,-94}},
          lineColor={0,0,255},
          textString="%name"),
        Text(
          extent={{-94,12},{-10,40}},
          lineColor={0,0,0},
          textString="Blood"),
        Text(
          extent={{32,40},{98,-14}},
          lineColor={0,0,0},
          textString="pH")}),
                           Diagram(coordinateSystem(preserveAspectRatio=false,
                  extent={{-100,-100},{100,140}}), graphics),
    Documentation(info="<html>
    <p>BE_interstitial is base excess in the interstitium of the tissue. The standard value is 0, when strong acid concentration increase, then BE value decrease with the same concentration. </p>
    <p>Meaning might be interpreted like what amount of hydrogen iont must be added to sollution if the end poit of titration will be pH=7.4 and pCO2=5.3kPa.</p>
    <p>For any tissue can be simplified with difference of lactate concentration from its normal value.</p>
    </html>",         revisions="<html>

    <table cellspacing=\"2\" cellpadding=\"0\" border=\"0\"><tr>
    <td><p>Author:</p></td>
    <td><p>Marek Matejak</p></td>
    </tr>
    <tr>
    <td><p>License:</p></td>
    <td><p><a href=\"http://www.physiomodel.org/license.html\">Physiomodel License 1.0</a> </p></td>
    </tr>

    <tr>
    <td><p>Date of:</p></td>
    <td><p>dec 2013</p></td>
    </tr>
    <tr>
    <td><p>References:</p></td>
    <td>Siggaard Andersen: OSA (2005), University of Copenhagen</td>
    </tr>
    </table>
    <br/><p>Copyright &copy; 2014 Marek Matejak, Charles University in Prague.</p><br/>

    </html>"));
end Bloods;