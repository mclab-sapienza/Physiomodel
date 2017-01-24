within Physiomodel.Gases.CO2.TissuesWithInterstitium;

model TissuesCO2
    import QHP = Physiomodel;
    extends Physiolibrary.Icons.Tissues;
    Physiolibrary.Chemical.Interfaces.ChemicalPort_a q_in annotation (
    Placement(transformation(extent={{80,-20},{120,20}}),
      iconTransformation(extent={{100,-20},{140,20}})));
    Physiolibrary.Chemical.Interfaces.ChemicalPort_b q_out annotation (
    Placement(transformation(extent={{-140,-20},{-100,20}}),
      iconTransformation(extent={{-140,-20},{-100,20}})));
    SkeletalMuscleCO2 skeletalMuscleCO2(      initialMass=323.9)
    annotation (Placement(transformation(extent={{-54,64},{-34,84}})));
    BoneCO2 boneCO2(                initialMass=56.2)
    annotation (Placement(transformation(extent={{-54,36},{-34,56}})));
    FatCO2 fatCO2(                 initialMass=39.8)
    annotation (Placement(transformation(extent={{-54,-54},{-34,-34}})));
    BrainCO2 brainCO2(               initialMass=19.1)
    annotation (Placement(transformation(extent={{52,20},{72,40}})));
    QHP.Gases.CO2.TissuesWithInterstitium.RightHeartCO2 rightHeartCO2(
                                        initialMass=0.6)
    annotation (Placement(transformation(extent={{52,-100},{72,-80}})));
    RespiratoryMuscleCO2 respiratoryMuscleCO2(   initialMass=48.1)
    annotation (Placement(transformation(extent={{-54,-24},{-34,-4}})));
    OtherTissueCO2 otherTissueCO2(         initialMass=50.7)
    annotation (Placement(transformation(extent={{-54,6},{-34,26}})));
    TissueCO2_liver liverCO2(        initialMass=22.8)
    annotation (Placement(transformation(extent={{52,50},{72,70}})));
    QHP.Gases.CO2.TissuesWithInterstitium.LeftHeartCO2 leftHeartCO2(
                                       initialMass=3.5)
    annotation (Placement(transformation(extent={{52,-70},{72,-50}})));
    QHP.Gases.CO2.TissuesWithInterstitium.KidneyCO2 kidneyCO2(
                                    initialMass=4.1)
    annotation (Placement(transformation(extent={{52,-40},{72,-20}})));
    QHP.Gases.CO2.TissuesWithInterstitium.GITractCO2 gitractCO2(
                                     initialMass=17.6)
    annotation (Placement(transformation(extent={{52,-10},{72,10}})));
    Physiolibrary.Types.BusConnector busConnector
    annotation (Placement(transformation(extent={{-108,72},{-68,112}})));
    SkinCO2 skinCO2(                initialMass=28.2)
    annotation (Placement(transformation(extent={{-54,-84},{-34,-64}})));
    Physiolibrary.Types.MolarFlowRate CO2FromTissues(displayUnit="mmol/min");
equation
    CO2FromTissues = -( q_out.q + q_in.q);
    connect(q_out, skeletalMuscleCO2.vein) annotation (Line(
      points={{-120,0},{-82,0},{-82,75},{-54,75}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(q_out, boneCO2.vein) annotation (Line(
      points={{-120,0},{-82,0},{-82,47},{-54,47}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(q_out, otherTissueCO2.vein) annotation (Line(
      points={{-120,0},{-82,0},{-82,17},{-54,17}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(q_out, respiratoryMuscleCO2.vein) annotation (Line(
      points={{-120,0},{-81,0},{-81,-13},{-54,-13}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(q_out, fatCO2.vein) annotation (Line(
      points={{-120,0},{-82,0},{-82,-43},{-54,-43}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(q_out, skinCO2.vein) annotation (Line(
      points={{-120,0},{-82,0},{-82,-73},{-54,-73}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(q_out, liverCO2.vein) annotation (Line(
      points={{-120,0},{-82,0},{-82,61},{52,61}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(q_out, brainCO2.vein) annotation (Line(
      points={{-120,0},{-82,0},{-82,31},{52,31}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(q_out, kidneyCO2.vein) annotation (Line(
      points={{-120,0},{-82,0},{-82,-29},{52,-29}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(q_out, leftHeartCO2.vein) annotation (Line(
      points={{-120,0},{-82,0},{-82,-59},{52,-59}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));

    connect(skeletalMuscleCO2.arty, q_in) annotation (Line(
      points={{-34,75},{84,75},{84,0},{100,0}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(brainCO2.arty, q_in) annotation (Line(
      points={{72,31},{84,31},{84,0},{100,0}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(gitractCO2.arty, q_in) annotation (Line(
      points={{72,1},{72,0},{100,0}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(kidneyCO2.arty, q_in) annotation (Line(
      points={{72,-29},{84,-29},{84,0},{100,0}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(leftHeartCO2.arty, q_in) annotation (Line(
      points={{72,-59},{84,-59},{84,0},{100,0}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(rightHeartCO2.arty, q_in) annotation (Line(
      points={{72,-89},{84,-89},{84,0},{100,0}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(rightHeartCO2.vein, q_out) annotation (Line(
      points={{52,-89},{-82,-89},{-82,0},{-120,0}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(boneCO2.arty, q_in) annotation (Line(
      points={{-34,47},{84,47},{84,0},{100,0}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(otherTissueCO2.arty, q_in) annotation (Line(
      points={{-34,17},{84,17},{84,0},{100,0}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(fatCO2.arty, q_in) annotation (Line(
      points={{-34,-43},{84,-43},{84,0},{100,0}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(skinCO2.arty, q_in) annotation (Line(
      points={{-34,-73},{84,-73},{84,0},{100,0}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(q_in, respiratoryMuscleCO2.arty) annotation (Line(
      points={{100,0},{84,0},{84,-13},{-34,-13}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));

    connect(busConnector.bone_pH_plasma, boneCO2.pH_plasma)      annotation (
     Line(
      points={{-88,92},{-88,44},{-53,44}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.brain_pH_plasma, brainCO2.pH_plasma)
    annotation (Line(
      points={{-88,92},{6,92},{6,28},{53,28}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.fat_pH_plasma, fatCO2.pH_plasma)      annotation (
      Line(
      points={{-88,92},{-88,-46},{-53,-46}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.GITract_pH_plasma, gitractCO2.pH_plasma)
    annotation (Line(
      points={{-88,92},{6,92},{6,-2},{53,-2}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.kidney_pH_plasma, kidneyCO2.pH_plasma)
    annotation (Line(
      points={{-88,92},{6,92},{6,-32},{53,-32}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.leftHeart_pH_plasma, leftHeartCO2.pH_plasma)
    annotation (Line(
      points={{-88,92},{6,92},{6,-62},{53,-62}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.liver_pH_plasma, liverCO2.pH_plasma)
    annotation (Line(
      points={{-88,92},{6,92},{6,58},{53,58}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.otherTissue_pH_plasma, otherTissueCO2.pH_plasma)
    annotation (Line(
      points={{-88,92},{-88,14},{-53,14}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.respiratoryMuscle_pH_plasma,
    respiratoryMuscleCO2.pH_plasma)
    annotation (Line(
      points={{-88,92},{-88,-16},{-53,-16}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.rightHeart_pH_plasma, rightHeartCO2.pH_plasma)
    annotation (Line(
      points={{-88,92},{6,92},{6,-92},{53,-92}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.skin_pH_plasma, skinCO2.pH_plasma)      annotation (
     Line(
      points={{-88,92},{-88,-76},{-53,-76}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.skeletalMuscle_pH_plasma, skeletalMuscleCO2.pH_plasma)
    annotation (Line(
      points={{-88,92},{-87.5,92},{-87.5,72},{-53,72}},
      color={127,0,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));

    connect(busConnector.bone_pH_ery, boneCO2.pH_ery)      annotation (
     Line(
      points={{-88,92},{-88,56},{-53,56}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.brain_pH_ery, brainCO2.pH_ery)
    annotation (Line(
      points={{-88,92},{6,92},{6,40},{53,40}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.fat_pH_ery, fatCO2.pH_ery)      annotation (
      Line(
      points={{-88,92},{-88,-34},{-53,-34}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.GITract_pH_ery, gitractCO2.pH_ery)
    annotation (Line(
      points={{-88,92},{6,92},{6,10},{53,10}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.kidney_pH_ery, kidneyCO2.pH_ery)
    annotation (Line(
      points={{-88,92},{6,92},{6,-20},{53,-20}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.leftHeart_pH_ery, leftHeartCO2.pH_ery)
    annotation (Line(
      points={{-88,92},{6,92},{6,-50},{53,-50}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.liver_pH_ery, liverCO2.pH_ery)
    annotation (Line(
      points={{-88,92},{6,92},{6,70},{53,70}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.otherTissue_pH_ery, otherTissueCO2.pH_ery)
    annotation (Line(
      points={{-88,92},{-88,26},{-53,26}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.respiratoryMuscle_pH_ery, respiratoryMuscleCO2.pH_ery)
    annotation (Line(
      points={{-88,92},{-88,-4},{-53,-4}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.rightHeart_pH_ery, rightHeartCO2.pH_ery)
    annotation (Line(
      points={{-88,92},{6,92},{6,-80},{53,-80}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.skin_pH_ery, skinCO2.pH_ery)      annotation (
     Line(
      points={{-88,92},{-88,-64},{-53,-64}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.skeletalMuscle_pH_ery, skeletalMuscleCO2.pH_ery)
    annotation (Line(
      points={{-88,92},{-87.5,92},{-87.5,84},{-53,84}},
      color={127,0,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));

    connect(busConnector.bone_sO2, boneCO2.sO2)        annotation (
     Line(
      points={{-88,92},{-88,52},{-53,52}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.brain_sO2, brainCO2.sO2)
    annotation (Line(
      points={{-88,92},{6,92},{6,36},{53,36}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.fat_sO2, fatCO2.sO2)      annotation (
      Line(
      points={{-88,92},{-88,-38},{-53,-38}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.GITract_sO2, gitractCO2.sO2)
    annotation (Line(
      points={{-88,92},{6,92},{6,6},{53,6}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.kidney_sO2, kidneyCO2.sO2)
    annotation (Line(
      points={{-88,92},{6,92},{6,-24},{53,-24}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.leftHeart_sO2, leftHeartCO2.sO2)
    annotation (Line(
      points={{-88,92},{6,92},{6,-54},{53,-54}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.liver_sO2, liverCO2.sO2)
    annotation (Line(
      points={{-88,92},{6,92},{6,66},{53,66}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.otherTissue_sO2, otherTissueCO2.sO2)
    annotation (Line(
      points={{-88,92},{-88,22},{-53,22}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.respiratoryMuscle_sO2, respiratoryMuscleCO2.sO2)
    annotation (Line(
      points={{-88,92},{-88,-8},{-53,-8}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.rightHeart_sO2, rightHeartCO2.sO2)
    annotation (Line(
      points={{-88,92},{6,92},{6,-84},{53,-84}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.skin_sO2, skinCO2.sO2)      annotation (
     Line(
      points={{-88,92},{-88,-68},{-53,-68}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.skeletalMuscle_sO2, skeletalMuscleCO2.sO2)
    annotation (Line(
      points={{-88,92},{-87.5,92},{-87.5,80},{-53,80}},
      color={127,0,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));

    connect(busConnector.BloodVol_Hct, boneCO2.Hct)      annotation (
     Line(
      points={{-88,92},{-88,40},{-53,40}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.BloodVol_Hct, brainCO2.Hct)
    annotation (Line(
      points={{-88,92},{6,92},{6,24},{53,24}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.BloodVol_Hct, fatCO2.Hct)      annotation (
      Line(
      points={{-88,92},{-88,-50},{-53,-50}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.BloodVol_Hct, gitractCO2.Hct)
    annotation (Line(
      points={{-88,92},{6,92},{6,-6},{53,-6}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.BloodVol_Hct, kidneyCO2.Hct)
    annotation (Line(
      points={{-88,92},{6,92},{6,-36},{53,-36}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.BloodVol_Hct, leftHeartCO2.Hct)
    annotation (Line(
      points={{-88,92},{6,92},{6,-66},{53,-66}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.BloodVol_Hct, liverCO2.Hct)
    annotation (Line(
      points={{-88,92},{6,92},{6,54},{53,54}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.BloodVol_Hct, otherTissueCO2.Hct)
    annotation (Line(
      points={{-88,92},{-88,10},{-53,10}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.BloodVol_Hct, respiratoryMuscleCO2.Hct)
    annotation (Line(
      points={{-88,92},{-88,-20},{-53,-20}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.BloodVol_Hct, rightHeartCO2.Hct)
    annotation (Line(
      points={{-88,92},{6,92},{6,-96},{53,-96}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.BloodVol_Hct, skinCO2.Hct)      annotation (
     Line(
      points={{-88,92},{-88,-80},{-53,-80}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.BloodVol_Hct, skeletalMuscleCO2.Hct)
    annotation (Line(
      points={{-88,92},{-87.5,92},{-87.5,68},{-53,68}},
      color={127,0,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));

    connect(boneCO2.Tissue_CO2FromMetabolism, busConnector.bone_CO2FromMetabolism)    annotation (
     Line(
      points={{-35,44},{6,44},{6,92},{-88,92}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{5,2},{5,2}}));
    connect(brainCO2.Tissue_CO2FromMetabolism, busConnector.brain_CO2FromMetabolism)
    annotation (Line(
      points={{71,28},{98,28},{98,92},{-88,92}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{5,2},{5,2}}));
    connect(fatCO2.Tissue_CO2FromMetabolism, busConnector.fat_CO2FromMetabolism)     annotation (
      Line(
      points={{-35,-46},{6,-46},{6,92},{-88,92}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{5,2},{5,2}}));
    connect(gitractCO2.Tissue_CO2FromMetabolism, busConnector.GITract_CO2FromMetabolism)
    annotation (Line(
      points={{71,-2},{98,-2},{98,92},{-88,92}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{5,2},{5,2}}));
    connect(kidneyCO2.Tissue_CO2FromMetabolism, busConnector.kidney_CO2FromMetabolism)
    annotation (Line(
      points={{71,-32},{98,-32},{98,92},{-88,92}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{5,2},{5,2}}));
    connect(leftHeartCO2.Tissue_CO2FromMetabolism, busConnector.leftHeart_CO2FromMetabolism)
    annotation (Line(
      points={{71,-62},{98,-62},{98,92},{-88,92}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{5,2},{5,2}}));
    connect(liverCO2.Tissue_CO2FromMetabolism, busConnector.liver_CO2FromMetabolism)
    annotation (Line(
      points={{71,56},{98,56},{98,92},{-88,92}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{5,2},{5,2}}));
    connect(otherTissueCO2.Tissue_CO2FromMetabolism, busConnector.otherTissue_CO2FromMetabolism)
    annotation (Line(
      points={{-35,14},{6,14},{6,92},{-88,92}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{5,2},{5,2}}));
    connect(respiratoryMuscleCO2.Tissue_CO2FromMetabolism, busConnector.respiratoryMuscle_CO2FromMetabolism)
    annotation (Line(
      points={{-35,-16},{6,-16},{6,92},{-88,92}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{5,2},{5,2}}));
    connect(rightHeartCO2.Tissue_CO2FromMetabolism, busConnector.rightHeart_CO2FromMetabolism)
    annotation (Line(
      points={{71,-92},{98,-92},{98,92},{-88,92}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{5,2},{5,2}}));
    connect(skinCO2.Tissue_CO2FromMetabolism, busConnector.skin_CO2FromMetabolism)     annotation (
     Line(
      points={{-35,-76},{6,-76},{6,92},{-88,92}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{5,2},{5,2}}));
    connect(skeletalMuscleCO2.Tissue_CO2FromMetabolism, busConnector.skeletalMuscle_CO2FromMetabolism)
    annotation (Line(
      points={{-35,72},{5.5,72},{5.5,92},{-88,92}},
      color={127,0,0},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{5,2},{5,2}}));

    connect(boneCO2.BloodFlow, busConnector.bone_BloodFlow)        annotation (
     Line(
      points={{-35,51.4},{6,51.4},{6,92},{-88,92}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{5,2},{5,2}}));
    connect(brainCO2.BloodFlow, busConnector.brain_BloodFlow)
    annotation (Line(
      points={{71,35.4},{98,35.4},{98,92},{-88,92}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{5,2},{5,2}}));
    connect(fatCO2.BloodFlow, busConnector.fat_BloodFlow)     annotation (
      Line(
      points={{-35,-38.6},{6,-38.6},{6,92},{-88,92}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{5,2},{5,2}}));
    connect(gitractCO2.BloodFlow, busConnector.GITract_BloodFlow)
    annotation (Line(
      points={{71,5.4},{98,5.4},{98,92},{-88,92}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{5,2},{5,2}}));
    connect(kidneyCO2.BloodFlow, busConnector.kidney_BloodFlow)
    annotation (Line(
      points={{71,-24.6},{98,-24.6},{98,92},{-88,92}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{5,2},{5,2}}));
    connect(leftHeartCO2.BloodFlow, busConnector.leftHeart_BloodFlow)
    annotation (Line(
      points={{71,-54.6},{98,-54.6},{98,92},{-88,92}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{5,2},{5,2}}));
    connect(otherTissueCO2.BloodFlow, busConnector.otherTissue_BloodFlow)
    annotation (Line(
      points={{-35,21.4},{6,21.4},{6,92},{-88,92}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{5,2},{5,2}}));
    connect(respiratoryMuscleCO2.BloodFlow, busConnector.respiratoryMuscle_BloodFlow)
    annotation (Line(
      points={{-35,-8.6},{6,-8.6},{6,92},{-88,92}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{5,2},{5,2}}));
    connect(rightHeartCO2.BloodFlow, busConnector.rightHeart_BloodFlow)
    annotation (Line(
      points={{71,-84.6},{98,-84.6},{98,92},{-88,92}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{5,2},{5,2}}));
    connect(skinCO2.BloodFlow, busConnector.skin_BloodFlow)     annotation (
     Line(
      points={{-35,-68.6},{6,-68.6},{6,92},{-88,92}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{5,2},{5,2}}));
    connect(skeletalMuscleCO2.BloodFlow, busConnector.skeletalMuscle_BloodFlow)
    annotation (Line(
      points={{-35,79.4},{5.5,79.4},{5.5,92},{-88,92}},
      color={127,0,0},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{5,2},{5,2}}));

    connect(boneCO2.T, busConnector.bone_T)       annotation (
     Line(
      points={{-35,40},{6,40},{6,92},{-88,92}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{5,2},{5,2}}));
    connect(brainCO2.T, busConnector.brain_T)
    annotation (Line(
      points={{71,24},{98,24},{98,92},{-88,92}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{5,2},{5,2}}));
    connect(fatCO2.T, busConnector.fat_T)     annotation (
      Line(
      points={{-35,-50},{6,-50},{6,92},{-88,92}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{5,2},{5,2}}));
    connect(gitractCO2.T, busConnector.GITract_T)
    annotation (Line(
      points={{71,-6},{98,-6},{98,92},{-88,92}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{5,2},{5,2}}));
    connect(kidneyCO2.T, busConnector.kidney_T)
    annotation (Line(
      points={{71,-36},{98,-36},{98,92},{-88,92}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{5,2},{5,2}}));
    connect(leftHeartCO2.T, busConnector.leftHeart_T)
    annotation (Line(
      points={{71,-66},{98,-66},{98,92},{-88,92}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{5,2},{5,2}}));
    connect(liverCO2.T, busConnector.liver_T)
    annotation (Line(
      points={{71,65.8},{98,65.8},{98,92},{-88,92}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{5,2},{5,2}}));
    connect(otherTissueCO2.T, busConnector.otherTissue_T)
    annotation (Line(
      points={{-35,10},{6,10},{6,92},{-88,92}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{5,2},{5,2}}));
    connect(respiratoryMuscleCO2.T, busConnector.respiratoryMuscle_T)
    annotation (Line(
      points={{-35,-20},{6,-20},{6,92},{-88,92}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{5,2},{5,2}}));
    connect(rightHeartCO2.T, busConnector.rightHeart_T)
    annotation (Line(
      points={{71,-96},{98,-96},{98,92},{-88,92}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{5,2},{5,2}}));
    connect(skinCO2.T, busConnector.skin_T)     annotation (
     Line(
      points={{-35,-80},{6,-80},{6,92},{-88,92}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{5,2},{5,2}}));
    connect(skeletalMuscleCO2.T, busConnector.skeletalMuscle_T)
    annotation (Line(
      points={{-35,68},{5.5,68},{5.5,92},{-88,92}},
      color={127,0,0},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{5,2},{5,2}}));

    connect(boneCO2.pCO2, busConnector.bone_pCO2)       annotation (
     Line(
      points={{-44,35},{6,35},{6,92},{-88,92}},
      color={0,127,0},
      smooth=Smooth.None));
    connect(brainCO2.pCO2, busConnector.brain_pCO2)
    annotation (Line(
      points={{62,19},{98,19},{98,92},{-88,92}},
      color={0,127,0},
      smooth=Smooth.None));
    connect(fatCO2.pCO2, busConnector.fat_pCO2)     annotation (
      Line(
      points={{-44,-55},{6,-55},{6,92},{-88,92}},
      color={0,127,0},
      smooth=Smooth.None));
    connect(gitractCO2.pCO2, busConnector.gitract_pCO2)
    annotation (Line(
      points={{62,-11},{98,-11},{98,92},{-88,92}},
      color={0,127,0},
      smooth=Smooth.None));
    connect(kidneyCO2.pCO2, busConnector.kidney_pCO2)
    annotation (Line(
      points={{62,-41},{98,-41},{98,92},{-88,92}},
      color={0,127,0},
      smooth=Smooth.None));
    connect(leftHeartCO2.pCO2, busConnector.leftHeart_pCO2)
    annotation (Line(
      points={{62,-71},{98,-71},{98,92},{-88,92}},
      color={0,127,0},
      smooth=Smooth.None));
    connect(liverCO2.pCO2, busConnector.liver_pCO2)
    annotation (Line(
      points={{62,49},{98,49},{98,92},{-88,92}},
      color={0,127,0},
      smooth=Smooth.None));
    connect(otherTissueCO2.pCO2, busConnector.otherTissue_pCO2)
    annotation (Line(
      points={{-44,5},{6,5},{6,92},{-88,92}},
      color={0,127,0},
      smooth=Smooth.None));
    connect(respiratoryMuscleCO2.pCO2, busConnector.respiratoryMuscle_pCO2)
    annotation (Line(
      points={{-44,-25},{6,-25},{6,92},{-88,92}},
      color={0,127,0},
      smooth=Smooth.None));
    connect(rightHeartCO2.pCO2, busConnector.rightHeart_pCO2)
    annotation (Line(
      points={{62,-101},{98,-101},{98,92},{-88,92}},
      color={0,127,0},
      smooth=Smooth.None));
    connect(skinCO2.pCO2, busConnector.skin_pCO2)     annotation (
     Line(
      points={{-44,-85},{6,-85},{6,92},{-88,92}},
      color={0,127,0},
      smooth=Smooth.None));
    connect(skeletalMuscleCO2.pCO2, busConnector.skeletalMuscle_pCO2)
    annotation (Line(
      points={{-44,63},{5.5,63},{5.5,92},{-88,92}},
      color={127,0,0},
      smooth=Smooth.None));
    connect(boneCO2.cHCO3, busConnector.bone_cHCO3)       annotation (
     Line(
      points={{-46,35},{6,35},{6,92},{-88,92}},
      color={0,127,0},
      smooth=Smooth.None));
    connect(brainCO2.cHCO3, busConnector.brain_cHCO3)
    annotation (Line(
      points={{60,19},{98,19},{98,92},{-88,92}},
      color={0,127,0},
      smooth=Smooth.None));
    connect(fatCO2.cHCO3, busConnector.fat_cHCO3)     annotation (
      Line(
      points={{-46,-55},{6,-55},{6,92},{-88,92}},
      color={0,127,0},
      smooth=Smooth.None));
    connect(gitractCO2.cHCO3, busConnector.GITract_cHCO3)
    annotation (Line(
      points={{60,-11},{98,-11},{98,92},{-88,92}},
      color={0,127,0},
      smooth=Smooth.None));
    connect(kidneyCO2.cHCO3, busConnector.kidney_cHCO3)
    annotation (Line(
      points={{60,-41},{98,-41},{98,92},{-88,92}},
      color={0,127,0},
      smooth=Smooth.None));
    connect(leftHeartCO2.cHCO3, busConnector.leftHeart_cHCO3)
    annotation (Line(
      points={{60,-71},{98,-71},{98,92},{-88,92}},
      color={0,127,0},
      smooth=Smooth.None));
    connect(liverCO2.cHCO3, busConnector.liver_cHCO3)
    annotation (Line(
      points={{60,49},{98,49},{98,92},{-88,92}},
      color={0,127,0},
      smooth=Smooth.None));
    connect(otherTissueCO2.cHCO3, busConnector.otherTissue_cHCO3)
    annotation (Line(
      points={{-46,5},{6,5},{6,92},{-88,92}},
      color={0,127,0},
      smooth=Smooth.None));
    connect(respiratoryMuscleCO2.cHCO3, busConnector.respiratoryMuscle_cHCO3)
    annotation (Line(
      points={{-46,-25},{6,-25},{6,92},{-88,92}},
      color={0,127,0},
      smooth=Smooth.None));
    connect(rightHeartCO2.cHCO3, busConnector.rightHeart_cHCO3)
    annotation (Line(
      points={{60,-101},{98,-101},{98,92},{-88,92}},
      color={0,127,0},
      smooth=Smooth.None));
    connect(skinCO2.cHCO3, busConnector.skin_cHCO3)     annotation (
     Line(
      points={{-46,-85},{6,-85},{6,92},{-88,92}},
      color={0,127,0},
      smooth=Smooth.None));
    connect(skeletalMuscleCO2.cHCO3, busConnector.skeletalMuscle_cHCO3)
    annotation (Line(
      points={{-46,63},{5.5,63},{5.5,92},{-88,92}},
      color={127,0,0},
      smooth=Smooth.None));

    connect(boneCO2.cHCO3_interstitial, busConnector.bone_cHCO3_interstitial)       annotation (
     Line(
      points={{-42,35},{6,35},{6,92},{-88,92}},
      color={0,127,0},
      smooth=Smooth.None));
    connect(brainCO2.cHCO3_interstitial, busConnector.brain_cHCO3_interstitial)
    annotation (Line(
      points={{64,19},{98,19},{98,92},{-88,92}},
      color={0,127,0},
      smooth=Smooth.None));
    connect(fatCO2.cHCO3_interstitial, busConnector.fat_cHCO3_interstitial)     annotation (
      Line(
      points={{-42,-55},{6,-55},{6,92},{-88,92}},
      color={0,127,0},
      smooth=Smooth.None));
    connect(gitractCO2.cHCO3_interstitial, busConnector.GITract_cHCO3_interstitial)
    annotation (Line(
      points={{64,-11},{98,-11},{98,92},{-88,92}},
      color={0,127,0},
      smooth=Smooth.None));
    connect(kidneyCO2.cHCO3_interstitial, busConnector.kidney_cHCO3_interstitial)
    annotation (Line(
      points={{64,-41},{98,-41},{98,92},{-88,92}},
      color={0,127,0},
      smooth=Smooth.None));
    connect(leftHeartCO2.cHCO3_interstitial, busConnector.leftHeart_cHCO3_interstitial)
    annotation (Line(
      points={{64,-71},{98,-71},{98,92},{-88,92}},
      color={0,127,0},
      smooth=Smooth.None));
    connect(liverCO2.cHCO3_interstitial, busConnector.liver_cHCO3_interstitial)
    annotation (Line(
      points={{64,49},{98,49},{98,92},{-88,92}},
      color={0,127,0},
      smooth=Smooth.None));
    connect(otherTissueCO2.cHCO3_interstitial, busConnector.otherTissue_cHCO3_interstitial)
    annotation (Line(
      points={{-42,5},{6,5},{6,92},{-88,92}},
      color={0,127,0},
      smooth=Smooth.None));
    connect(respiratoryMuscleCO2.cHCO3_interstitial, busConnector.respiratoryMuscle_cHCO3_interstitial)
    annotation (Line(
      points={{-42,-25},{6,-25},{6,92},{-88,92}},
      color={0,127,0},
      smooth=Smooth.None));
    connect(rightHeartCO2.cHCO3_interstitial, busConnector.rightHeart_cHCO3_interstitial)
    annotation (Line(
      points={{64,-101},{98,-101},{98,92},{-88,92}},
      color={0,127,0},
      smooth=Smooth.None));
    connect(skinCO2.cHCO3_interstitial, busConnector.skin_cHCO3_interstitial)     annotation (
     Line(
      points={{-42,-85},{6,-85},{6,92},{-88,92}},
      color={0,127,0},
      smooth=Smooth.None));
    connect(skeletalMuscleCO2.cHCO3_interstitial, busConnector.skeletalMuscle_cHCO3_interstitial)
    annotation (Line(
      points={{-42,63},{5.5,63},{5.5,92},{-88,92}},
      color={127,0,0},
      smooth=Smooth.None));

    connect(liverCO2.HepaticArtyBloodFlow, busConnector.HepaticArty_BloodFlow)
    annotation (Line(
      points={{71,50},{98,50},{98,92},{-88,92}},
      color={0,0,127},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}}));
    connect(busConnector.GITract_BloodFlow, liverCO2.PortalVeinBloodFlow)
    annotation (Line(
      points={{-88,92},{60,92},{60,69}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-3,13},{-3,13}}));
    connect(gitractCO2.vein, liverCO2.portalVein) annotation (Line(
      points={{52,1},{38,1},{38,80},{64,80},{64,70}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(q_in, liverCO2.hepaticArty) annotation (Line(
      points={{100,0},{84,0},{84,61},{72,61}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    annotation (Icon(graphics={Rectangle(extent={{-120,100},{120,-100}},
            lineColor={0,0,0})}));
end TissuesCO2;
