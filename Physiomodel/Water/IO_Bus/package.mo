within Physiomodel.Water;
package IO_Bus
    extends Physiolibrary.Types.IO_Bus;
    
        redeclare model extends Variables

            T.Volume BladderVolume_Mass(varName="BladderVolume.Mass")
            "Urine volume in bladder."
            annotation (Placement(transformation(extent={{-90,-138},{-84,-132}})));
            T.Volume BodyH2O_Vol(varName="BodyH2O.Vol") "Body water volume."
            annotation (Placement(transformation(extent={{-90,-128},{-84,-122}})));
            T.Volume bone_InterstitialWater(varName="Bone-Size.IFV")
            "Bone interstitial water volume."
            annotation (Placement(transformation(extent={{-90,-118},{-84,-112}})));
            T.Volume Bone_LiquidVol(varName="Bone-Size.LiquidVol")
            "Bone water volume = sum of bone interstitial and bone intracellular water."
            annotation (Placement(transformation(extent={{-90,-108},{-84,-102}})));

            T.Volume brain_InterstitialWater(varName="Brain-Size.IFV")
            "Brain interstitial water volume."
            annotation (Placement(transformation(extent={{-90,-98},{-84,-92}})));
            T.Volume Brain_LiquidVol(varName="Brain-Size.LiquidVol")
            "Brain water volume = sum of brain interstitial and brain intracellular water."
            annotation (Placement(transformation(extent={{-90,-88},{-84,-82}})));

            T.VolumeFlowRate CD_H2O_Outflow(varName="CD_H2O.Outflow")
            "Collecting duct water outflow to urine."
            annotation (Placement(transformation(extent={{-90,-78},{-84,-72}})));
            T.VolumeFlowRate CD_H2O_Reab(varName="CD_H2O.Reab")
            "Collecting duct water reabsorbtion."
            annotation (Placement(transformation(extent={{-90,-68},{-84,-62}})));
            T.Volume CellH2O_Vol(varName="CellH2O.Vol") "Intracellular water volume."
            annotation (Placement(transformation(extent={{-90,-58},{-84,-52}})));
            T.Volume ECFV_Vol(varName="ECFV.Vol") "Extracellular fluid volume."
            annotation (Placement(transformation(extent={{-90,-48},{-84,-42}})));
            T.Volume ExcessLungWater_Volume(varName="ExcessLungWater.Volume")
            "Pulmonary edema water."
            annotation (Placement(transformation(extent={{-90,-38},{-84,-32}})));
            T.Volume fat_InterstitialWater(varName="Fat-Size.IFV")
            "Fat interstitial water volume."
            annotation (Placement(transformation(extent={{-90,-28},{-84,-22}})));
            T.Volume Fat_LiquidVol(varName="Fat-Size.LiquidVol")
            "Fat water volume = sum of fat interstitial and fat intracellular water."
            annotation (Placement(transformation(extent={{-90,-18},{-84,-12}})));

            T.VolumeFlowRate GILumenVolume_Absorption(varName="GILumenVolume.Absorption")
            "Water absorbtion through intestines."
            annotation (Placement(transformation(extent={{-90,-8},{-84,-2}})));
            T.VolumeFlowRate GILumenVolume_Intake(varName="GILumenVolume.Intake")
            "Water intake to intestines."
            annotation (Placement(transformation(extent={{-90,2},{-84,8}})));
            T.Volume GILumenVolume_Mass(varName="GILumenVolume.Mass")
            "Water in intestines."
            annotation (Placement(transformation(extent={{-90,12},{-84,18}})));
            T.Volume GITract_InterstitialWater(varName="GITract-Size.IFV")
            "GITract interstitial water volume."
            annotation (Placement(transformation(extent={{-90,22},{-84,28}})));
            T.Volume GITract_LiquidVol(varName="GITract-Size.LiquidVol")
            "GITract water volume = sum of gITract interstitial and gITract intracellular water."
            annotation (Placement(transformation(extent={{-90,32},{-84,38}})));

            T.VolumeFlowRate GlomerulusFiltrate_GFR(varName="GlomerulusFiltrate.GFR")
            "Glomerulus filtration rate."
            annotation (Placement(transformation(extent={{-90,42},{-84,48}})));
            T.VolumeFlowRate Glomerulus_GFR(varName="GlomerulusFiltrate.GFR")
            "Glomerulus filtration rate."
            annotation (Placement(transformation(extent={{-90,52},{-84,58}})));
            T.VolumeFlowRate HeatInsensibleLung_H2O(varName="HeatInsensibleLung.H2O")
            "Vaporized water outflow by breathing."
            annotation (Placement(transformation(extent={{-90,62},{-84,68}})));
            T.VolumeFlowRate HeatInsensibleSkin_H2O(varName="HeatInsensibleSkin.H2O")
            "Vaporized water outflow from skin."
            annotation (Placement(transformation(extent={{-90,72},{-84,78}})));
            T.Volume ICFV_Vol(varName="ICFV.Vol") "Intracellular water volume."
            annotation (Placement(transformation(extent={{-90,82},{-84,88}})));
            T.Volume kidney_InterstitialWater(varName="Kidney-Size.IFV")
            "Kidney interstitial water volume."
            annotation (Placement(transformation(extent={{-90,92},{-84,98}})));
            T.Volume Kidney_LiquidVol(varName="Kidney-Size.LiquidVol")
            "Kidney water volume = sum of kidney interstitial and kidney intracellular water."
            annotation (Placement(transformation(extent={{-90,102},{-84,108}})));

            T.VolumeFlowRate LH_H2O_Outflow(varName="LH_H2O.Outflow")
            "Water outflow from loop of Henle to distal tubule."
            annotation (Placement(transformation(extent={{-90,112},{-84,118}})));
            T.Volume LT_InterstitialWater_Vol(varName="LT_InterstitialWater.Vol")
            "Lower torso interstitial water."
            annotation (Placement(transformation(extent={{-90,122},{-84,128}})));
            T.VolumeFlowRate LT_LymphFlow(varName="LT_LymphWater.Rate")
            "Flow of lymph water from lower torso."
            annotation (Placement(transformation(extent={{-90,132},{-84,138}})));
            T.Volume leftHeart_InterstitialWater(varName="LeftHeart-Size.IFV")
            "LeftHeart interstitial water volume."
            annotation (Placement(transformation(extent={{88,-148},{94,-142}})));
            T.Volume LeftHeart_LiquidVol(varName="LeftHeart-Size.LiquidVol")
            "LeftHeart water volume = sum of leftHeart interstitial and leftHeart intracellular water."
            annotation (Placement(transformation(extent={{88,-138},{94,-132}})));

            T.Volume liver_InterstitialWater(varName="Liver-Size.IFV")
            "Liver interstitial water volume."
            annotation (Placement(transformation(extent={{88,-128},{94,-122}})));
            T.Volume Liver_LiquidVol(varName="Liver-Size.LiquidVol")
            "Liver water volume = sum of liver interstitial and liver intracellular water."
            annotation (Placement(transformation(extent={{88,-118},{94,-112}})));

            T.Volume MT_InterstitialWater_Vol(varName="MT_InterstitialWater.Vol")
            "Middle torso interstitional water."
            annotation (Placement(transformation(extent={{88,-108},{94,-102}})));
            T.VolumeFlowRate MT_LymphFlow(varName="MT_LymphWater.Rate")
            "Middle torso lymph flow."
            annotation (Placement(transformation(extent={{88,-98},{94,-92}})));
            T.Volume Medulla_Volume(varName="Medulla.Volume")
            "Kidney medulla interstitial water volume."
            annotation (Placement(transformation(extent={{88,-88},{94,-82}})));
            T.Osmolarity Osmreceptors(varName="OsmBody.[Osm]-Osmoreceptors", storeUnit="osm/l")
            "Osmolarity in hypothalamic osmoreceptors."
            annotation (Placement(transformation(extent={{88,-78},{94,-72}})));
            T.Volume otherTissue_InterstitialWater(varName="OtherTissue-Size.IFV")
            "OtherTissue interstitial water volume."
            annotation (Placement(transformation(extent={{88,-68},{94,-62}})));
            T.Volume OtherTissue_LiquidVol(varName="OtherTissue-Size.LiquidVol")
            "OtherTissue water volume = sum of otherTissue interstitial and otherTissue intracellular water."
            annotation (Placement(transformation(extent={{88,-58},{94,-52}})));

            T.VolumeFlowRate PeritoneumSpace_Change(varName="PeritoneumSpace.Change")
            "Water inflow(outflow) to pericardium interstitial space."
            annotation (Placement(transformation(extent={{88,-38},{94,-32}})));
            T.Volume PeritoneumSpace_Vol(varName="PeritoneumSpace.Volume")
            "Water in pericardium interstitial space."
            annotation (Placement(transformation(extent={{88,-28},{94,-22}})));
            T.Volume PlasmaVol(varName="PlasmaVol.Vol") "Plasma volume."
            annotation (Placement(transformation(extent={{88,-18},{94,-12}})));
            T.Volume PlasmaVol_Vol(varName="PlasmaVol.Vol") "Plasma volume."
            annotation (Placement(transformation(extent={{88,-8},{94,-2}})));
            T.Volume respiratoryMuscle_InterstitialWater(varName="RespiratoryMuscle-Size.IFV")
            "RespiratoryMuscle interstitial water volume."
            annotation (Placement(transformation(extent={{88,2},{94,8}})));
            T.Volume RespiratoryMuscle_LiquidVol(varName="RespiratoryMuscle-Size.LiquidVol")
            "RespiratoryMuscle water volume = sum of respiratoryMuscle interstitial and respiratoryMuscle intracellular water."
            annotation (Placement(transformation(extent={{88,12},{94,18}})));

            T.Volume rightHeart_InterstitialWater(varName="RightHeart-Size.IFV")
            "RightHeart interstitial water volume."
            annotation (Placement(transformation(extent={{88,22},{94,28}})));
            T.Volume RightHeart_LiquidVol(varName="RightHeart-Size.LiquidVol")
            "RightHeart water volume = sum of rightHeart interstitial and rightHeart intracellular water."
            annotation (Placement(transformation(extent={{88,32},{94,38}})));

            T.Volume skeletalMuscle_InterstitialWater(varName="SkeletalMuscle-Size.IFV")
            "SkeletalMuscle interstitial water volume."
            annotation (Placement(transformation(extent={{88,42},{94,48}})));
            T.Volume SkeletalMuscle_LiquidVol(varName="SkeletalMuscle-Size.LiquidVol")
            "SkeletalMuscle water volume = sum of skeletalMuscle interstitial and skeletalMuscle intracellular water."
            annotation (Placement(transformation(extent={{88,52},{94,58}})));

            T.Volume skin_InterstitialWater(varName="Skin-Size.IFV")
            "Skin interstitial water volume."
            annotation (Placement(transformation(extent={{88,62},{94,68}})));
            T.Volume Skin_LiquidVol(varName="Skin-Size.LiquidVol")
            "Skin water volume = sum of skin interstitial and skin intracellular water."
            annotation (Placement(transformation(extent={{88,72},{94,78}})));

            T.Volume UT_InterstitialWater_Vol(varName="UT_InterstitialWater.Vol")
            "Upper tissue interstitial water."
            annotation (Placement(transformation(extent={{88,92},{94,98}})));
            T.VolumeFlowRate UT_LymphFlow(varName="UT_LymphWater.Rate")
            "Upper tissue lypmh outflow."
            annotation (Placement(transformation(extent={{88,102},{94,108}})));
            T.VolumeFlowRate BladderVoidFlow(varName="BladderVoidFlow")
            annotation (Placement(transformation(extent={{-164,-138},{-158,-132}})));

            T.Concentration Vasopressin(varName="ADHPool.[ADH(pMol/L)]", storeUnit=
                "pmol/l") "Vasopressin extracellular concentration."
            annotation (Placement(transformation(extent={{-104,-150},{-98,-144}})));

            T.VolumeFlowRate SweatGland_H2ORate(varName="SweatGland.H2ORate")
            "Outflow of sweat gland water."
            annotation (Placement(transformation(extent={{-90,150},{-84,156}})));
            T.Volume Liver_CellH2O(varName="Liver-Size.CellH2O")
            "Liver intracellular water volume."
            annotation (Placement(transformation(extent={{-224,0},{-218,6}})));
            T.Volume RespiratoryMuscle_CellH2O(varName="RespiratoryMuscle-Size.CellH2O")
            "Respiratory muscle intracellular water volume."
            annotation (Placement(transformation(extent={{-214,10},{-208,16}})));
            T.Volume SkeletalMuscle_CellH2O(varName="SkeletalMuscle-Size.CellH2O")
            "Skeletal muscle intracellular water volume."
            annotation (Placement(transformation(extent={{-226,20},{-220,26}})));
        equation

            connect(BladderVolume_Mass.y, busConnector.BladderVolume_Mass) annotation (Line(
            points={{-83.7,-135},{90,-135},{90,-2}},
                color={0,0,127},
                smooth=Smooth.None), Text(
                string="%second",
                index=1,
                extent={{6,3},{6,3}}));
            connect(BodyH2O_Vol.y, busConnector.BodyH2O_Vol) annotation (Line(
            points={{-83.7,-125},{90,-125},{90,-2}},
                color={0,0,127},
                smooth=Smooth.None), Text(
                string="%second",
                index=1,
                extent={{6,3},{6,3}}));
            connect(bone_InterstitialWater.y, busConnector.bone_InterstitialWater) annotation (Line(
            points={{-83.7,-115},{90,-115},{90,-2}},
                color={0,0,127},
                smooth=Smooth.None), Text(
                string="%second",
                index=1,
                extent={{6,3},{6,3}}));
            connect(Bone_LiquidVol.y, busConnector.Bone_LiquidVol) annotation (Line(
            points={{-83.7,-105},{90,-105},{90,-2}},
                color={0,0,127},
                smooth=Smooth.None), Text(
                string="%second",
                index=1,
                extent={{6,3},{6,3}}));
            connect(brain_InterstitialWater.y, busConnector.brain_InterstitialWater) annotation (Line(
            points={{-83.7,-95},{90,-95},{90,-2}},
                color={0,0,127},
                smooth=Smooth.None), Text(
                string="%second",
                index=1,
                extent={{6,3},{6,3}}));
            connect(Brain_LiquidVol.y, busConnector.Brain_LiquidVol) annotation (Line(
            points={{-83.7,-85},{90,-85},{90,-2}},
                color={0,0,127},
                smooth=Smooth.None), Text(
                string="%second",
                index=1,
                extent={{6,3},{6,3}}));
            connect(CD_H2O_Outflow.y, busConnector.CD_H2O_Outflow) annotation (Line(
            points={{-83.7,-75},{90,-75},{90,-2}},
                color={0,0,127},
                smooth=Smooth.None), Text(
                string="%second",
                index=1,
                extent={{6,3},{6,3}}));
            connect(CD_H2O_Reab.y, busConnector.CD_H2O_Reab) annotation (Line(
            points={{-83.7,-65},{90,-65},{90,-2}},
                color={0,0,127},
                smooth=Smooth.None), Text(
                string="%second",
                index=1,
                extent={{6,3},{6,3}}));
            connect(CellH2O_Vol.y, busConnector.CellH2O_Vol) annotation (Line(
            points={{-83.7,-55},{90,-55},{90,-2}},
                color={0,0,127},
                smooth=Smooth.None), Text(
                string="%second",
                index=1,
                extent={{6,3},{6,3}}));
            connect(ECFV_Vol.y, busConnector.ECFV_Vol) annotation (Line(
            points={{-83.7,-45},{90,-45},{90,-2}},
                color={0,0,127},
                smooth=Smooth.None), Text(
                string="%second",
                index=1,
                extent={{6,3},{6,3}}));
            connect(ExcessLungWater_Volume.y, busConnector.ExcessLungWater_Volume) annotation (Line(
            points={{-83.7,-35},{90,-35},{90,-2}},
                color={0,0,127},
                smooth=Smooth.None), Text(
                string="%second",
                index=1,
                extent={{6,3},{6,3}}));
            connect(fat_InterstitialWater.y, busConnector.fat_InterstitialWater) annotation (Line(
            points={{-83.7,-25},{90,-25},{90,-2}},
                color={0,0,127},
                smooth=Smooth.None), Text(
                string="%second",
                index=1,
                extent={{6,3},{6,3}}));
            connect(Fat_LiquidVol.y, busConnector.Fat_LiquidVol) annotation (Line(
            points={{-83.7,-15},{90,-15},{90,-2}},
                color={0,0,127},
                smooth=Smooth.None), Text(
                string="%second",
                index=1,
                extent={{6,3},{6,3}}));
            connect(GILumenVolume_Absorption.y, busConnector.GILumenVolume_Absorption) annotation (Line(
            points={{-83.7,-5},{90,-5},{90,-2}},
                color={0,0,127},
                smooth=Smooth.None), Text(
                string="%second",
                index=1,
                extent={{6,3},{6,3}}));
            connect(GILumenVolume_Intake.y, busConnector.GILumenVolume_Intake) annotation (Line(
            points={{-83.7,5},{90,5},{90,-2}},
                color={0,0,127},
                smooth=Smooth.None), Text(
                string="%second",
                index=1,
                extent={{6,3},{6,3}}));
            connect(GILumenVolume_Mass.y, busConnector.GILumenVolume_Mass) annotation (Line(
            points={{-83.7,15},{90,15},{90,-2}},
                color={0,0,127},
                smooth=Smooth.None), Text(
                string="%second",
                index=1,
                extent={{6,3},{6,3}}));
            connect(GITract_InterstitialWater.y, busConnector.GITract_InterstitialWater) annotation (Line(
            points={{-83.7,25},{90,25},{90,-2}},
                color={0,0,127},
                smooth=Smooth.None), Text(
                string="%second",
                index=1,
                extent={{6,3},{6,3}}));
            connect(GITract_LiquidVol.y, busConnector.GITract_LiquidVol) annotation (Line(
            points={{-83.7,35},{90,35},{90,-2}},
                color={0,0,127},
                smooth=Smooth.None), Text(
                string="%second",
                index=1,
                extent={{6,3},{6,3}}));
            connect(GlomerulusFiltrate_GFR.y, busConnector.GlomerulusFiltrate_GFR) annotation (Line(
            points={{-83.7,45},{90,45},{90,-2}},
                color={0,0,127},
                smooth=Smooth.None), Text(
                string="%second",
                index=1,
                extent={{6,3},{6,3}}));
            connect(Glomerulus_GFR.y, busConnector.Glomerulus_GFR) annotation (Line(
            points={{-83.7,55},{90,55},{90,-2}},
                color={0,0,127},
                smooth=Smooth.None), Text(
                string="%second",
                index=1,
                extent={{6,3},{6,3}}));
            connect(HeatInsensibleLung_H2O.y, busConnector.HeatInsensibleLung_H2O) annotation (Line(
            points={{-83.7,65},{90,65},{90,-2}},
                color={0,0,127},
                smooth=Smooth.None), Text(
                string="%second",
                index=1,
                extent={{6,3},{6,3}}));
            connect(HeatInsensibleSkin_H2O.y, busConnector.HeatInsensibleSkin_H2O) annotation (Line(
            points={{-83.7,75},{90,75},{90,-2}},
                color={0,0,127},
                smooth=Smooth.None), Text(
                string="%second",
                index=1,
                extent={{6,3},{6,3}}));
            connect(ICFV_Vol.y, busConnector.ICFV_Vol) annotation (Line(
            points={{-83.7,85},{90,85},{90,-2}},
                color={0,0,127},
                smooth=Smooth.None), Text(
                string="%second",
                index=1,
                extent={{6,3},{6,3}}));
            connect(kidney_InterstitialWater.y, busConnector.kidney_InterstitialWater) annotation (Line(
            points={{-83.7,95},{90,95},{90,-2}},
                color={0,0,127},
                smooth=Smooth.None), Text(
                string="%second",
                index=1,
                extent={{6,3},{6,3}}));
            connect(Kidney_LiquidVol.y, busConnector.Kidney_LiquidVol) annotation (Line(
            points={{-83.7,105},{90,105},{90,-2}},
                color={0,0,127},
                smooth=Smooth.None), Text(
                string="%second",
                index=1,
                extent={{6,3},{6,3}}));
            connect(LH_H2O_Outflow.y, busConnector.LH_H2O_Outflow) annotation (Line(
            points={{-83.7,115},{90,115},{90,-2}},
                color={0,0,127},
                smooth=Smooth.None), Text(
                string="%second",
                index=1,
                extent={{6,3},{6,3}}));
            connect(leftHeart_InterstitialWater.y, busConnector.leftHeart_InterstitialWater) annotation (Line(
            points={{94.3,-145},{90,-145},{90,-2}},
                color={0,0,127},
                smooth=Smooth.None), Text(
                string="%second",
                index=1,
                extent={{6,3},{6,3}}));
            connect(LeftHeart_LiquidVol.y, busConnector.LeftHeart_LiquidVol) annotation (Line(
            points={{94.3,-135},{90,-135},{90,-2}},
                color={0,0,127},
                smooth=Smooth.None), Text(
                string="%second",
                index=1,
                extent={{6,3},{6,3}}));
            connect(liver_InterstitialWater.y, busConnector.liver_InterstitialWater) annotation (Line(
            points={{94.3,-125},{90,-125},{90,-2}},
                color={0,0,127},
                smooth=Smooth.None), Text(
                string="%second",
                index=1,
                extent={{6,3},{6,3}}));
            connect(Liver_LiquidVol.y, busConnector.Liver_LiquidVol) annotation (Line(
            points={{94.3,-115},{90,-115},{90,-2}},
                color={0,0,127},
                smooth=Smooth.None), Text(
                string="%second",
                index=1,
                extent={{6,3},{6,3}}));
            connect(Medulla_Volume.y, busConnector.Medulla_Volume) annotation (Line(
            points={{94.3,-85},{90,-85},{90,-2}},
                color={0,0,127},
                smooth=Smooth.None), Text(
                string="%second",
                index=1,
                extent={{6,3},{6,3}}));
            connect(Osmreceptors.y, busConnector.Osmreceptors) annotation (Line(
            points={{94.3,-75},{90,-75},{90,-2}},
                color={0,0,127},
                smooth=Smooth.None), Text(
                string="%second",
                index=1,
                extent={{6,3},{6,3}}));
            connect(otherTissue_InterstitialWater.y, busConnector.otherTissue_InterstitialWater) annotation (Line(
            points={{94.3,-65},{90,-65},{90,-2}},
                color={0,0,127},
                smooth=Smooth.None), Text(
                string="%second",
                index=1,
                extent={{6,3},{6,3}}));
            connect(OtherTissue_LiquidVol.y, busConnector.OtherTissue_LiquidVol) annotation (Line(
            points={{94.3,-55},{90,-55},{90,-2}},
                color={0,0,127},
                smooth=Smooth.None), Text(
                string="%second",
                index=1,
                extent={{6,3},{6,3}}));
            connect(PeritoneumSpace_Vol.y, busConnector.PeritoneumSpace_Vol) annotation (Line(
            points={{94.3,-25},{90,-25},{90,-2}},
                color={0,0,127},
                smooth=Smooth.None), Text(
                string="%second",
                index=1,
                extent={{6,3},{6,3}}));
            connect(PlasmaVol.y, busConnector.PlasmaVol) annotation (Line(
            points={{94.3,-15},{90,-15},{90,-2}},
                color={0,0,127},
                smooth=Smooth.None), Text(
                string="%second",
                index=1,
                extent={{6,3},{6,3}}));
            connect(PlasmaVol_Vol.y, busConnector.PlasmaVol_Vol) annotation (Line(
            points={{94.3,-5},{90,-5},{90,-2}},
                color={0,0,127},
                smooth=Smooth.None), Text(
                string="%second",
                index=1,
                extent={{6,3},{6,3}}));
            connect(respiratoryMuscle_InterstitialWater.y, busConnector.respiratoryMuscle_InterstitialWater) annotation (Line(
            points={{94.3,5},{90,5},{90,-2}},
                color={0,0,127},
                smooth=Smooth.None), Text(
                string="%second",
                index=1,
                extent={{6,3},{6,3}}));
            connect(RespiratoryMuscle_LiquidVol.y, busConnector.RespiratoryMuscle_LiquidVol) annotation (Line(
            points={{94.3,15},{90,15},{90,-2}},
                color={0,0,127},
                smooth=Smooth.None), Text(
                string="%second",
                index=1,
                extent={{6,3},{6,3}}));
            connect(rightHeart_InterstitialWater.y, busConnector.rightHeart_InterstitialWater) annotation (Line(
            points={{94.3,25},{90,25},{90,-2}},
                color={0,0,127},
                smooth=Smooth.None), Text(
                string="%second",
                index=1,
                extent={{6,3},{6,3}}));
            connect(RightHeart_LiquidVol.y, busConnector.RightHeart_LiquidVol) annotation (Line(
            points={{94.3,35},{90,35},{90,-2}},
                color={0,0,127},
                smooth=Smooth.None), Text(
                string="%second",
                index=1,
                extent={{6,3},{6,3}}));
            connect(skeletalMuscle_InterstitialWater.y, busConnector.skeletalMuscle_InterstitialWater) annotation (Line(
            points={{94.3,45},{90,45},{90,-2}},
                color={0,0,127},
                smooth=Smooth.None), Text(
                string="%second",
                index=1,
                extent={{6,3},{6,3}}));
            connect(SkeletalMuscle_LiquidVol.y, busConnector.SkeletalMuscle_LiquidVol) annotation (Line(
            points={{94.3,55},{90,55},{90,-2}},
                color={0,0,127},
                smooth=Smooth.None), Text(
                string="%second",
                index=1,
                extent={{6,3},{6,3}}));
            connect(skin_InterstitialWater.y, busConnector.skin_InterstitialWater) annotation (Line(
            points={{94.3,65},{90,65},{90,-2}},
                color={0,0,127},
                smooth=Smooth.None), Text(
                string="%second",
                index=1,
                extent={{6,3},{6,3}}));
            connect(Skin_LiquidVol.y, busConnector.Skin_LiquidVol) annotation (Line(
            points={{94.3,75},{90,75},{90,-2}},
                color={0,0,127},
                smooth=Smooth.None), Text(
                string="%second",
                index=1,
                extent={{6,3},{6,3}}));
            connect(BladderVoidFlow.y,busConnector.BladderVoidFlow) annotation (Line(
                points={{-157.7,-135},{90,-135},{90,-2}},
                color={0,0,127},
                smooth=Smooth.None));
            connect(SweatGland_H2ORate.y, busConnector.SweatGland_H2ORate)
              annotation (Line(
                points={{-83.7,153},{90,153},{90,-2}},
                color={0,0,127},
                smooth=Smooth.None), Text(
                string="%second",
                index=1,
                extent={{6,3},{6,3}}));
            connect(Liver_CellH2O.y, busConnector.liver_CellH2OVol) annotation (Line(
                points={{-217.7,3},{-151.85,3},{-151.85,-2},{90,-2}},
                color={0,0,127},
                smooth=Smooth.None), Text(
                string="%second",
                index=1,
                extent={{6,3},{6,3}}));
            connect(SkeletalMuscle_CellH2O.y, busConnector.skeletalMuscle_CellH2OVol)
              annotation (Line(
                points={{-219.7,23},{-150.85,23},{-150.85,-2},{90,-2}},
                color={0,0,127},
                smooth=Smooth.None), Text(
                string="%second",
                index=1,
                extent={{6,3},{6,3}}));
            connect(RespiratoryMuscle_CellH2O.y, busConnector.respiratoryMuscle_CellH2OVol)
              annotation (Line(
                points={{-207.7,13},{-145.85,13},{-145.85,-2},{90,-2}},
                color={0,0,127},
                smooth=Smooth.None), Text(
                string="%second",
                index=1,
                extent={{6,3},{6,3}}));
            connect(PeritoneumSpace_Change.y, busConnector.PeritoneumSpace_Change)
            annotation (Line(
              points={{94.3,-35},{98,-35},{98,-38},{90,-38},{90,-2}},
              color={0,0,127},
              smooth=Smooth.None), Text(
              string="%second",
              index=1,
              extent={{6,3},{6,3}}));
            connect(Vasopressin.y, busConnector.Vasopressin) annotation (Line(
              points={{-97.7,-147},{90,-147},{90,-2}},
              color={0,0,127},
              smooth=Smooth.None), Text(
              string="%second",
              index=1,
              extent={{6,3},{6,3}}));
            connect(LT_InterstitialWater_Vol.y, busConnector.LT.InterstitialWater_Vol) annotation (Line(
            points={{-83.7,125},{90,125},{90,-2}},
                color={0,0,127},
                smooth=Smooth.None), Text(
                string="%second",
                index=1,
                extent={{6,3},{6,3}}));
            connect(UT_LymphFlow.y, busConnector.UT.LymphFlow) annotation (Line(
            points={{94.3,105},{90,105},{90,-2}},
                color={0,0,127},
                smooth=Smooth.None), Text(
                string="%second",
                index=1,
                extent={{6,3},{6,3}}));
            connect(UT_InterstitialWater_Vol.y, busConnector.UT.InterstitialWater_Vol) annotation (Line(
            points={{94.3,95},{90,95},{90,-2}},
                color={0,0,127},
                smooth=Smooth.None), Text(
                string="%second",
                index=1,
                extent={{6,3},{6,3}}));
            connect(MT_LymphFlow.y, busConnector.MT.LymphFlow) annotation (Line(
            points={{94.3,-95},{90,-95},{90,-2}},
                color={0,0,127},
                smooth=Smooth.None), Text(
                string="%second",
                index=1,
                extent={{6,3},{6,3}}));
            connect(MT_InterstitialWater_Vol.y, busConnector.MT.InterstitialWater_Vol) annotation (Line(
            points={{94.3,-105},{90,-105},{90,-2}},
                color={0,0,127},
                smooth=Smooth.None), Text(
                string="%second",
                index=1,
                extent={{6,3},{6,3}}));
            connect(LT_LymphFlow.y, busConnector.LT.LymphFlow) annotation (Line(
                points={{-83.7,135},{90,135},{90,-2}},
                color={0,0,127},
                smooth=Smooth.None), Text(
                string="%second",
                index=1,
                extent={{6,3},{6,3}}));
            annotation (Icon(coordinateSystem(preserveAspectRatio=true,  extent={{-100,
                      -100},{100,100}}), graphics={Text(
                    extent={{18,118},{100,80}},
                    lineColor={0,0,0},
                    textString="vars"), Text(
                    extent={{-120,-100},{122,-134}},
                    lineColor={0,0,255},
                    textString="%name")}));
        end Variables;

    
end IO_Bus;