within Physiomodel.Electrolytes.AcidBase;
model AcidBase_variables
extends Physiolibrary.Icons.AcidBase;
package T = Physiolibrary.Types.RealTypes;

Physiolibrary.Types.BusConnector busConnector annotation (Placement(
    transformation(extent={{52,-28},{66,-14}}), iconTransformation(
      extent={{-40,-20},{0,20}})));
T.pH BloodPh_ArtysPh(varName="BloodPh.ArtysPh")
"Acidity (pH) of arterial blood."
annotation (Placement(transformation(extent={{-110,-194},{-104,-188}})));
T.pH Artys_pH1(                         varName="BloodPh.ArtysPh")
annotation (Placement(transformation(extent={{-108,-58},{-102,-52}})));
T.pH Artys_pH_ery(varName="Artys_pH_ery")
annotation (Placement(transformation(extent={{-108,-48},{-102,-42}})));
T.pH bone_pH_ery(varName="bone_pH_ery")
annotation (Placement(transformation(extent={{-108,12},{-102,18}})));
T.pH bone_pH_interstitial(varName="bone_pH_interstitial")
annotation (Placement(transformation(extent={{-108,22},{-102,28}})));
T.pH bone_pH_plasma(varName="bone_pH_plasma")
annotation (Placement(transformation(extent={{-108,32},{-102,38}})));
T.pH brain_pH_ery(varName="brain_pH_ery")
annotation (Placement(transformation(extent={{-108,82},{-102,88}})));
T.pH brain_pH_interstitial(varName="brain_pH_interstitial")
annotation (Placement(transformation(extent={{-108,92},{-102,98}})));
T.pH brain_pH_plasma(varName="brain_pH_plasma")
annotation (Placement(transformation(extent={{-108,102},{-102,108}})));
T.pH fat_pH_ery(varName="fat_pH_ery")
annotation (Placement(transformation(extent={{-100,-30},{-94,-24}})));
T.pH fat_pH_interstitial(varName="fat_pH_interstitial")
annotation (Placement(transformation(extent={{-100,-20},{-94,-14}})));
T.pH fat_pH_plasma(varName="fat_pH_plasma")
annotation (Placement(transformation(extent={{-100,-10},{-94,-4}})));
T.pH GITract_pH_ery(varName="GITract_pH_ery")
annotation (Placement(transformation(extent={{146,-338},{152,-332}})));
T.pH GITract_pH_interstitial(varName="GITract_pH_interstitial")
annotation (Placement(transformation(extent={{146,-328},{152,-322}})));
T.pH GITract_pH_plasma(varName="GITract_pH_plasma")
annotation (Placement(transformation(extent={{146,-318},{152,-312}})));
T.pH kidney_pH_ery(varName="kidney_pH_ery")
annotation (Placement(transformation(extent={{146,-258},{152,-252}})));
T.pH kidney_pH_interstitial(varName="kidney_pH_interstitial")
annotation (Placement(transformation(extent={{146,-248},{152,-242}})));
T.pH kidney_pH_plasma(varName="kidney_pH_plasma")
annotation (Placement(transformation(extent={{146,-238},{152,-232}})));
T.pH leftHeart_pH_ery(varName="leftHeart_pH_ery")
annotation (Placement(transformation(extent={{146,-188},{152,-182}})));
T.pH leftHeart_pH_interstitial(varName="leftHeart_pH_interstitial")
annotation (Placement(transformation(extent={{146,-178},{152,-172}})));
T.pH leftHeart_pH_plasma(varName="leftHeart_pH_plasma")
annotation (Placement(transformation(extent={{146,-168},{152,-162}})));
T.pH liver_pH_ery(varName="liver_pH_ery")
annotation (Placement(transformation(extent={{146,-128},{152,-122}})));
T.pH liver_pH_interstitial(varName="liver_pH_interstitial")
annotation (Placement(transformation(extent={{146,-118},{152,-112}})));
T.pH liver_pH_plasma(varName="liver_pH_plasma")
annotation (Placement(transformation(extent={{146,-108},{152,-102}})));
T.pH otherTissue_pH_ery(varName="otherTissue_pH_ery")
annotation (Placement(transformation(extent={{146,-28},{152,-22}})));
T.pH otherTissue_pH_interstitial(varName="otherTissue_pH_interstitial")
annotation (Placement(transformation(extent={{146,-18},{152,-12}})));
T.pH otherTissue_pH_plasma(varName="otherTissue_pH_plasma")
annotation (Placement(transformation(extent={{146,-8},{152,-2}})));
T.pH respiratoryMuscle_pH_ery(varName="respiratoryMuscle_pH_ery")
annotation (Placement(transformation(extent={{146,62},{152,68}})));
T.pH respiratoryMuscle_pH_interstitial(varName="respiratoryMuscle_pH_interstitial")
annotation (Placement(transformation(extent={{146,72},{152,78}})));
T.pH respiratoryMuscle_pH_plasma(varName="respiratoryMuscle_pH_plasma")
annotation (Placement(transformation(extent={{146,82},{152,88}})));
T.pH rightHeart_pH_ery(varName="rightHeart_pH_ery")
annotation (Placement(transformation(extent={{146,142},{152,148}})));
T.pH rightHeart_pH_interstitial(varName="rightHeart_pH_interstitial")
annotation (Placement(transformation(extent={{146,152},{152,158}})));
T.pH rightHeart_pH_plasma(varName="rightHeart_pH_plasma")
annotation (Placement(transformation(extent={{146,162},{152,168}})));
T.pH skeletalMuscle_pH_ery(varName="skeletalMuscle_pH_ery")
annotation (Placement(transformation(extent={{92,-78},{98,-72}})));
T.pH skeletalMuscle_pH_interstitial(varName="skeletalMuscle_pH_interstitial")
annotation (Placement(transformation(extent={{92,-68},{98,-62}})));
T.pH skeletalMuscle_pH_plasma(varName="skeletalMuscle_pH_plasma")
annotation (Placement(transformation(extent={{92,-58},{98,-52}})));
T.pH skin_pH_ery(varName="skin_pH_ery")
annotation (Placement(transformation(extent={{146,282},{152,288}})));
T.pH skin_pH_interstitial(varName="skin_pH_interstitial")
annotation (Placement(transformation(extent={{146,292},{152,298}})));
T.pH skin_pH_plasma(varName="skin_pH_plasma")
annotation (Placement(transformation(extent={{146,302},{152,308}})));
T.pH Veins_pH(varName="BloodPh.VeinsPh")
annotation (Placement(transformation(extent={{146,342},{152,348}})));
T.pH Veins_pH_ery(varName="Veins_pH_ery")
annotation (Placement(transformation(extent={{-108,-86},{-102,-80}})));
T.pH lungs_pH_ery(varName="lungs_pH_ery")
annotation (Placement(transformation(extent={{-116,56},{-110,62}})));
T.pH lungs_pH_plasma(varName="lungs_pH_plasma")
annotation (Placement(transformation(extent={{-116,64},{-110,70}})));
T.pH GITract_pH_intracellular(varName="GITract-Ph.Ph")
annotation (Placement(transformation(extent={{-36,10},{-30,16}})));
T.pH bone_pH_intracellular(varName="Bone-Ph.Ph")
annotation (Placement(transformation(extent={{-36,20},{-30,26}})));
T.pH brain_pH_intracellular(varName="Brain-Ph.Ph")
annotation (Placement(transformation(extent={{-36,30},{-30,36}})));
T.pH fat_pH_intracellular(varName="Fat-Ph.Ph")
annotation (Placement(transformation(extent={{-36,40},{-30,46}})));
T.pH kidney_pH_intracellular(varName="Kidney-Ph.Ph")
annotation (Placement(transformation(extent={{-36,50},{-30,56}})));
T.pH leftHeart_pH_intracellular(varName="LeftHeart-Ph.Ph")
annotation (Placement(transformation(extent={{-36,60},{-30,66}})));
T.pH liver_pH_intracellular(varName="Liver-Ph.Ph")
annotation (Placement(transformation(extent={{-36,70},{-30,76}})));
T.pH otherTissue_pH_intracellular(varName="OtherTissue-Ph.Ph")
annotation (Placement(transformation(extent={{-36,80},{-30,86}})));
T.pH respiratoryMuscle_pH_intracellular(varName="RespiratoryMuscle-Ph.Ph")
annotation (Placement(transformation(extent={{-36,90},{-30,96}})));
T.pH rightHeart_pH_intracellular(varName="RightHeart-Ph.Ph")
annotation (Placement(transformation(extent={{-36,100},{-30,106}})));
T.pH skeletalMuscle_pH_intracellular(varName="SkeletalMuscle-Ph.Ph")
annotation (Placement(transformation(extent={{-36,110},{-30,116}})));
T.pH skin_pH_intracellular(varName="Skin-Ph.Ph")
annotation (Placement(transformation(extent={{-36,120},{-30,126}})));
/*
T.pH CD_NH4_Outflow(varName="CD_NH4.Outflow")
"Collecting duct amonia ions outflow to urine."
annotation (Placement(transformation(extent={{-110,-130},{-104,-124}})));
T.pH Urine_pH(varName="Urine_pH") "Acidity (pH) of urine."
annotation (Placement(transformation(extent={{-108,-106},{-102,-100}})));
*/
T.VolumeDensityOfCharge BloodIons_ProteinAnions(
                varName="BloodIons.Protein")
annotation (Placement(transformation(extent={{-92,-72},{-86,-66}})));
equation
    connect(BloodPh_ArtysPh.y, busConnector.BloodPh_ArtysPh) annotation (Line(
    points={{-103.7,-191},{59,-191},{59,-21}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(Artys_pH1.y, busConnector.Artys_pH)
                                         annotation (Line(
    points={{-101.7,-55},{59,-55},{59,-21}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(Veins_pH.y, busConnector.Veins_pH) annotation (Line(
    points={{152.3,345},{59,345},{59,-21}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(GITract_pH_plasma.y, busConnector.GITract_pH_plasma) annotation (Line(
    points={{152.3,-315},{59,-315},{59,-21}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(bone_pH_plasma.y, busConnector.bone_pH_plasma) annotation (Line(
    points={{-101.7,35},{59,35},{59,-21}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(brain_pH_plasma.y, busConnector.brain_pH_plasma) annotation (Line(
    points={{-101.7,105},{59,105},{59,-21}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(fat_pH_plasma.y, busConnector.fat_pH_plasma) annotation (Line(
    points={{-93.7,-7},{59,-7},{59,-21}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(kidney_pH_plasma.y, busConnector.kidney_pH_plasma) annotation (Line(
    points={{152.3,-235},{59,-235},{59,-21}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(leftHeart_pH_plasma.y, busConnector.leftHeart_pH_plasma) annotation (Line(
    points={{152.3,-165},{59,-165},{59,-21}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(liver_pH_plasma.y, busConnector.liver_pH_plasma) annotation (Line(
    points={{152.3,-105},{59,-105},{59,-21}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(otherTissue_pH_plasma.y, busConnector.otherTissue_pH_plasma) annotation (Line(
    points={{152.3,-5},{59,-5},{59,-21}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(respiratoryMuscle_pH_plasma.y, busConnector.respiratoryMuscle_pH_plasma) annotation (Line(
    points={{152.3,85},{59,85},{59,-21}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(rightHeart_pH_plasma.y, busConnector.rightHeart_pH_plasma) annotation (Line(
    points={{152.3,165},{59,165},{59,-21}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(skeletalMuscle_pH_plasma.y, busConnector.skeletalMuscle_pH_plasma) annotation (Line(
    points={{98.3,-55},{59,-55},{59,-21}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(skin_pH_plasma.y, busConnector.skin_pH_plasma) annotation (Line(
    points={{152.3,305},{59,305},{59,-21}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(GITract_pH_ery.y, busConnector.GITract_pH_ery) annotation (Line(
    points={{152.3,-335},{59,-335},{59,-21}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(Veins_pH_ery.y, busConnector.Veins_pH_ery) annotation (Line(
    points={{-101.7,-83},{-62.35,-83},{-62.35,-21},{59,-21}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(bone_pH_ery.y, busConnector.bone_pH_ery) annotation (Line(
    points={{-101.7,15},{59,15},{59,-21}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(brain_pH_ery.y, busConnector.brain_pH_ery) annotation (Line(
    points={{-101.7,85},{59,85},{59,-21}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(fat_pH_ery.y, busConnector.fat_pH_ery) annotation (Line(
    points={{-93.7,-27},{59,-27},{59,-21}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(kidney_pH_ery.y, busConnector.kidney_pH_ery) annotation (Line(
    points={{152.3,-255},{59,-255},{59,-21}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(leftHeart_pH_ery.y, busConnector.leftHeart_pH_ery) annotation (Line(
    points={{152.3,-185},{59,-185},{59,-21}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(liver_pH_ery.y, busConnector.liver_pH_ery) annotation (Line(
    points={{152.3,-125},{59,-125},{59,-21}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(otherTissue_pH_ery.y, busConnector.otherTissue_pH_ery) annotation (Line(
    points={{152.3,-25},{59,-25},{59,-21}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(respiratoryMuscle_pH_ery.y, busConnector.respiratoryMuscle_pH_ery) annotation (Line(
    points={{152.3,65},{59,65},{59,-21}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(rightHeart_pH_ery.y, busConnector.rightHeart_pH_ery) annotation (Line(
    points={{152.3,145},{59,145},{59,-21}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(skeletalMuscle_pH_ery.y, busConnector.skeletalMuscle_pH_ery) annotation (Line(
    points={{98.3,-75},{59,-75},{59,-21}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(skin_pH_ery.y, busConnector.skin_pH_ery) annotation (Line(
    points={{152.3,285},{59,285},{59,-21}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(Artys_pH_ery.y, busConnector.Artys_pH_ery) annotation (Line(
    points={{-101.7,-45},{59,-45},{59,-21}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(bone_pH_interstitial.y, busConnector.bone_pH_interstitial) annotation (Line(
    points={{-101.7,25},{59,25},{59,-21}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(brain_pH_interstitial.y, busConnector.brain_pH_interstitial) annotation (Line(
    points={{-101.7,95},{59,95},{59,-21}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(fat_pH_interstitial.y, busConnector.fat_pH_interstitial) annotation (Line(
    points={{-93.7,-17},{59,-17},{59,-21}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(GITract_pH_interstitial.y, busConnector.GITract_pH_interstitial) annotation (Line(
    points={{152.3,-325},{59,-325},{59,-21}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(kidney_pH_interstitial.y, busConnector.kidney_pH_interstitial) annotation (Line(
    points={{152.3,-245},{59,-245},{59,-21}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(leftHeart_pH_interstitial.y, busConnector.leftHeart_pH_interstitial) annotation (Line(
    points={{152.3,-175},{59,-175},{59,-21}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(liver_pH_interstitial.y, busConnector.liver_pH_interstitial) annotation (Line(
    points={{152.3,-115},{152.3,-82},{152.3,-21},{59,-21}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(otherTissue_pH_interstitial.y, busConnector.otherTissue_pH_interstitial) annotation (Line(
    points={{152.3,-15},{126.65,-15},{126.65,-21},{59,-21}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(respiratoryMuscle_pH_interstitial.y, busConnector.respiratoryMuscle_pH_interstitial) annotation (Line(
    points={{152.3,75},{59,75},{59,-21}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(rightHeart_pH_interstitial.y, busConnector.rightHeart_pH_interstitial) annotation (Line(
    points={{152.3,155},{59,155},{59,-21}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(skeletalMuscle_pH_interstitial.y, busConnector.skeletalMuscle_pH_interstitial) annotation (Line(
    points={{98.3,-65},{59,-65},{59,-21}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(skin_pH_interstitial.y, busConnector.skin_pH_interstitial) annotation (Line(
    points={{152.3,295},{59,295},{59,-21}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(lungs_pH_ery.y, busConnector.lungs_pH_ery)      annotation (Line(
      points={{-109.7,59},{59,59},{59,-21}},
      color={0,0,127},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}}));
    connect(lungs_pH_plasma.y, busConnector.lungs_pH_plasma)   annotation (Line(
      points={{-109.7,67},{59,67},{59,-21}},
      color={0,0,127},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}}));
    connect(GITract_pH_intracellular.y, busConnector.GITract_pH_intracellular) annotation (Line(
    points={{-29.7,13},{59,13},{59,-21}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(bone_pH_intracellular.y, busConnector.bone_pH_intracellular) annotation (Line(
    points={{-29.7,23},{59,23},{59,-21}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(brain_pH_intracellular.y, busConnector.brain_pH_intracellular) annotation (Line(
    points={{-29.7,33},{59,33},{59,-21}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(fat_pH_intracellular.y, busConnector.fat_pH_intracellular) annotation (Line(
    points={{-29.7,43},{59,43},{59,-21}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(kidney_pH_intracellular.y, busConnector.kidney_pH_intracellular) annotation (Line(
    points={{-29.7,53},{59,53},{59,-21}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(leftHeart_pH_intracellular.y, busConnector.leftHeart_pH_intracellular) annotation (Line(
    points={{-29.7,63},{59,63},{59,-21}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(liver_pH_intracellular.y, busConnector.liver_pH_intracellular) annotation (Line(
    points={{-29.7,73},{59,73},{59,-21}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(otherTissue_pH_intracellular.y, busConnector.otherTissue_pH_intracellular) annotation (Line(
    points={{-29.7,83},{59,83},{59,-21}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(respiratoryMuscle_pH_intracellular.y, busConnector.respiratoryMuscle_pH_intracellular) annotation (Line(
    points={{-29.7,93},{59,93},{59,-21}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(rightHeart_pH_intracellular.y, busConnector.rightHeart_pH_intracellular) annotation (Line(
    points={{-29.7,103},{59,103},{59,-21}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(skeletalMuscle_pH_intracellular.y, busConnector.skeletalMuscle_pH_intracellular) annotation (Line(
    points={{-29.7,113},{59,113},{59,-21}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(skin_pH_intracellular.y, busConnector.skin_pH_intracellular) annotation (Line(
    points={{-29.7,123},{59,123},{59,-21}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));

    connect(BloodIons_ProteinAnions.y, busConnector.BloodIons_ProteinAnions)
    annotation (Line(
    points={{-85.7,-69},{-10,-69},{-10,-21},{59,-21}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,
          -100},{100,100}}), graphics={
      Text(
        extent={{18,138},{100,100}},
        lineColor={0,0,0},
        textString="vars"),
      Text(
        extent={{-122,-106},{120,-140}},
        lineColor={0,0,255},
        textString="%name")}));
end AcidBase_variables;