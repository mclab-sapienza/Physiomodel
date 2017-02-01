package Inputs
  extends Physiolibrary.Types.IO_Bus;
  redeclare model extends Variables
    //Water
    T.Volume Brain_LiquidVol(varName="Brain-Size.LiquidVol", k=0.000775324);
    T.Volume RespiratoryMuscle_LiquidVol(varName="RespiratoryMuscle-Size.LiquidVol", k=0.0024332);
    T.Volume RightHeart_LiquidVol(varName="RightHeart-Size.LiquidVol", k=2.5795e-005);
    T.Volume LeftHeart_LiquidVol(varName="LeftHeart-Size.LiquidVol", k=0.00015477);
    T.Volume SkeletalMuscle_LiquidVol(varName="SkeletalMuscle-Size.LiquidVol", k=0.021646);
    T.Volume Bone_LiquidVol(varName="Bone-Size.LiquidVol", k=0.00273856);
    T.Volume Liver_LiquidVol(varName="Liver-Size.LiquidVol", k=0.00103327);
    T.Volume GITract_LiquidVol(varName="GITract-Size.LiquidVol", k=0.000851972);
    T.Volume Fat_LiquidVol(varName="Fat-Size.LiquidVol", k=0.00249);
    T.Volume OtherTissue_LiquidVol(varName="OtherTissue-Size.LiquidVol", k=0.0024321);
    T.Volume Kidney_LiquidVol(varName="Kidney-Size.LiquidVol", k=0.000170984);
    T.Volume Skin_LiquidVol(varName="Skin-Size.LiquidVol", k=0.00150348);
    T.VolumeFlowRate Glomerulus_GFR(varName="GlomerulusFiltrate.GFR", k=2.15828e-006);
    T.VolumeFlowRate BladderVoidFlow(varName="BladderVoidFlow", k=1.7e-008);
    T.Volume BladderVolume_Mass(varName="BladderVolume.Mass", k=0.0002);
    T.Volume ECFV_Vol(varName="ECFV.Vol", k=0.014361);
    T.Volume GILumenVolume_Mass(varName="GILumenVolume.Mass", k=0.001);
    T.VolumeFlowRate CD_H2O_Outflow(varName="CD_H2O.Outflow", k=1.2982e-008);
    T.VolumeFlowRate GlomerulusFiltrate_GFR(varName="GlomerulusFiltrate.GFR", k=2.15828e-006);
    T.Volume ICFV_Vol(varName="ICFV.Vol", k=0.0264812);
    T.Volume Medulla_Volume(varName="Medulla.Volume", k=3.1e-005);
    //CardioVascular
    T.VolumeFlowRate Brain_BloodFlow(varName="Brain-Flow.BloodFlow", k=1.36172e-005);
    T.VolumeFlowRate RespiratoryMuscle_BloodFlow(varName="RespiratoryMuscle-Flow.BloodFlow", k=1.63743e-006);
    T.VolumeFlowRate RightHeart_BloodFlow(varName="RightHeart-Flow.BloodFlow", k=7.08333e-007);
    T.VolumeFlowRate LeftHeart_BloodFlow(varName="LeftHeart-Flow.BloodFlow", k=3.76667e-006);
    T.VolumeFlowRate SkeletalMuscle_BloodFlow(varName="SkeletalMuscle-Flow.BloodFlow", k=1.072e-005);
    T.VolumeFlowRate Bone_BloodFlow(varName="Bone-Flow.BloodFlow", k=5.40143e-006);
    T.VolumeFlowRate Liver_BloodFlow(varName="Liver-Flow.BloodFlow", k=2.05285e-005);
    T.VolumeFlowRate GITract_BloodFlow(varName="GITract-Flow.BloodFlow", k=1.9228e-005);
    T.VolumeFlowRate Fat_BloodFlow(varName="Fat-Flow.BloodFlow", k=4.01915e-006);
    T.VolumeFlowRate OtherTissue_BloodFlow(varName="OtherTissue-Flow.BloodFlow", k=6.25202e-006);
    T.VolumeFlowRate Kidney_BloodFlow(varName="Kidney-Flow.BloodFlow", k=2.07108e-005);
    T.VolumeFlowRate Skin_BloodFlow(varName="Skin-Flow.BloodFlow", k=2.68538e-006);
    T.VolumeFlowRate HepaticArty_BloodFlow(varName="HepaticArty.Flow", k=4.10747e-006);
    T.Fraction BloodVol_PVCrit(varName="BloodVol.PVCrit", k=0.56);
    T.VolumeFlowRate VasaRecta_Outflow(varName="VasaRecta.Outflow", k=4.05507e-007);
    T.VolumeFlowRate PortalVein_PlasmaFlow(varName="PortalVein.PlasmaFlow", k=9.19577e-006);
    //Status
    T.Fraction Brain_StructureEffect(varName="Brain-Structure.Effect", k=1);
    T.Fraction RespiratoryMuscle_StructureEffect(varName="RespiratoryMuscle-Structure.Effect", k=1);
    T.Fraction RightHeart_StructureEffect(varName="RightHeart-Structure.Effect", k=1);
    T.Fraction LeftHeart_StructureEffect(varName="LeftHeart-Structure.Effect", k=1);
    T.Fraction SkeletalMuscle_StructureEffect(varName="SkeletalMuscle-Structure.Effect", k=1);
    T.Fraction Bone_StructureEffect(varName="Bone-Structure.Effect", k=1);
    T.Fraction Liver_StructureEffect(varName="Liver-Structure.Effect", k=1);
    T.Fraction GITract_StructureEffect(varName="GITract-Structure.Effect", k=1);
    T.Fraction Fat_StructureEffect(varName="Fat-Structure.Effect", k=1);
    T.Fraction OtherTissue_StructureEffect(varName="OtherTissue-Structure.Effect", k=1);
    T.Fraction Kidney_StructureEffect(varName="Kidney-Structure.Effect", k=1);
    T.Fraction Skin_StructureEffect(varName="Skin-Structure.Effect", k=1);
    T.Power ExerciseMetabolism_MotionWatts(varName="Exercise-Metabolism.MotionWatts", storeUnit="W", k=0);
    T.Fraction LiverFunctionEffect(varName="Liver-Function.Effect", k=0);
    T.Fraction GITractFunctionEffect(varName="GITract-Function.Effect", k=1);
    T.Fraction brain_FunctionEffect(varName="Brain-Function.Effect", k=1);
    T.Fraction fat_FunctionEffect(varName="Fat-Function.Effect", k=1);
    //Electrolytes
    T.MolarFlowRate PT_Na_Reab(varName="PT_Na.Reab", k=0.000170592);
    T.MolarFlowRate LH_Na_Reab(varName="LH_Na.Reab", k=9.09167e-005);
    T.MolarFlowRate DT_Na_Reab(varName="DT_Na.Reab", k=2.28508e-005);
    T.pH BloodPh_ArtysPh(varName="BloodPh.ArtysPh", k=7.4);
    T.VolumeDensityOfCharge BloodCations(varName="BloodIons.Cations", k=1.42544e+007);
    T.VolumeDensityOfCharge BloodIons_ProteinAnions(varName="BloodIons.Protein", k=1.45534e+006);
    //Gases
    T.Pressure Bone_PO2(varName="Bone-Flow.PO2", k=5638.7);
    T.Pressure Brain_PO2(varName="Brain-Flow.PO2", k=5382.22);
    T.Pressure Fat_PO2(varName="Fat-Flow.PO2", k=7093.14);
    T.Pressure GITract_PO2(varName="GITract-Flow.PO2", k=7846.7);
    T.Pressure Kidney_PO2(varName="Kidney-O2.VeinPO2", k=8238.14);
    T.Pressure LeftHeart_PO2(varName="LeftHeart-Flow.PO2", k=2305.94);
    T.Pressure Liver_PO2(varName="Liver-O2.PO2", k=5930.58);
    T.Pressure OtherTissue_PO2(varName="OtherTissue-Flow.PO2", k=7585.98);
    T.Pressure RespiratoryMuscle_PO2(varName="RespiratoryMuscle-Flow.PO2", k=4918.8);
    T.Pressure RightHeart_PO2(varName="RightHeart-Flow.PO2", k=2230.54);
    T.Pressure SkeletalMuscle_PO2(varName="SkeletalMuscle-Flow.PO2", k=5559.06);
    T.Pressure Skin_PO2(varName="Skin-Flow.PO2", k=5792.86);
    //Heat
    T.Temperature bone_T(varName="HeatCore.Temp(C)", k=310.15);
    T.Temperature brain_T(varName="HeatCore.Temp(C)", k=310.15);
    T.Temperature fat_T(varName="HeatCore.Temp(C)", k=310.15);
    T.Temperature GITract_T(varName="HeatCore.Temp(C)", k=310.15);
    T.Temperature kidney_T(varName="HeatCore.Temp(C)", k=310.15);
    T.Temperature leftHeart_T(varName="HeatCore.Temp(C)", k=310.15);
    T.Temperature liver_T(varName="HeatCore.Temp(C)", k=310.15);
    T.Temperature otherTissue_T(varName="HeatCore.Temp(C)", k=310.15);
    T.Temperature respiratoryMuscle_T(varName="HeatCore.Temp(C)", k=310.15);
    T.Temperature rightHeart_T(varName="HeatCore.Temp(C)", k=310.15);
    T.Temperature skeletalMuscle_T(varName="HeatCore.Temp(C)", k=310.15);
    T.Temperature skin_T(varName="HeatCore.Temp(C)", k=310.15);
    T.Fraction hypothalamusShivering_NerveActivity(varName="HypothalamusShivering.NerveActivity", storeUnit="1", k=0);
    T.Temperature HeatCore_Temp(varName="HeatCore.Temp(C)", k=310.15);
    //Hormones
    T.Concentration Epinephrine(varName="EpiPool.[Epi(nMol/L)]", storeUnit="namol/l", k=0.217392641398325e-6);
  equation
    //Water
    connect(Brain_LiquidVol.y, busConnector.Brain_LiquidVol);
    connect(RespiratoryMuscle_LiquidVol.y, busConnector.RespiratoryMuscle_LiquidVol);
    connect(RightHeart_LiquidVol.y, busConnector.RightHeart_LiquidVol);
    connect(LeftHeart_LiquidVol.y, busConnector.LeftHeart_LiquidVol);
    connect(SkeletalMuscle_LiquidVol.y, busConnector.SkeletalMuscle_LiquidVol);
    connect(Bone_LiquidVol.y, busConnector.Bone_LiquidVol);
    connect(Liver_LiquidVol.y, busConnector.Liver_LiquidVol);
    connect(GITract_LiquidVol.y, busConnector.GITract_LiquidVol);
    connect(Fat_LiquidVol.y, busConnector.Fat_LiquidVol);
    connect(OtherTissue_LiquidVol.y, busConnector.OtherTissue_LiquidVol);
    connect(Kidney_LiquidVol.y, busConnector.Kidney_LiquidVol);
    connect(Skin_LiquidVol.y, busConnector.Skin_LiquidVol);
    connect(Glomerulus_GFR.y, busConnector.Glomerulus_GFR);
    connect(BladderVoidFlow.y, busConnector.BladderVoidFlow);
    connect(BladderVolume_Mass.y, busConnector.BladderVolume_Mass);
    connect(ECFV_Vol.y, busConnector.ECFV_Vol);
    connect(GILumenVolume_Mass.y, busConnector.GILumenVolume_Mass);
    connect(CD_H2O_Outflow.y, busConnector.CD_H2O_Outflow);
    connect(GlomerulusFiltrate_GFR.y, busConnector.GlomerulusFiltrate_GFR);
    connect(ICFV_Vol.y, busConnector.ICFV_Vol);
    connect(Medulla_Volume.y, busConnector.Medulla_Volume);
    //CardioVascular
    connect(Brain_BloodFlow.y, busConnector.Brain_BloodFlow);
    connect(RespiratoryMuscle_BloodFlow.y, busConnector.RespiratoryMuscle_BloodFlow);
    connect(RightHeart_BloodFlow.y, busConnector.RightHeart_BloodFlow);
    connect(LeftHeart_BloodFlow.y, busConnector.LeftHeart_BloodFlow);
    connect(SkeletalMuscle_BloodFlow.y, busConnector.SkeletalMuscle_BloodFlow);
    connect(Bone_BloodFlow.y, busConnector.Bone_BloodFlow);
    connect(Liver_BloodFlow.y, busConnector.Liver_BloodFlow);
    connect(GITract_BloodFlow.y, busConnector.GITract_BloodFlow);
    connect(Fat_BloodFlow.y, busConnector.Fat_BloodFlow);
    connect(OtherTissue_BloodFlow.y, busConnector.OtherTissue_BloodFlow);
    connect(Kidney_BloodFlow.y, busConnector.Kidney_BloodFlow);
    connect(Skin_BloodFlow.y, busConnector.Skin_BloodFlow);
    connect(HepaticArty_BloodFlow.y, busConnector.HepaticArty_BloodFlow);
    connect(BloodVol_PVCrit.y, busConnector.BloodVol_PVCrit);
    connect(VasaRecta_Outflow.y, busConnector.VasaRecta_Outflow);
    connect(PortalVein_PlasmaFlow.y, busConnector.PortalVein_PlasmaFlow);
    //Status
    connect(Brain_StructureEffect.y, busConnector.Brain_StructureEffect);
    connect(RespiratoryMuscle_StructureEffect.y, busConnector.RespiratoryMuscle_StructureEffect);
    connect(RightHeart_StructureEffect.y, busConnector.RightHeart_StructureEffect);
    connect(LeftHeart_StructureEffect.y, busConnector.LeftHeart_StructureEffect);
    connect(SkeletalMuscle_StructureEffect.y, busConnector.SkeletalMuscle_StructureEffect);
    connect(Bone_StructureEffect.y, busConnector.Bone_StructureEffect);
    connect(Liver_StructureEffect.y, busConnector.Liver_StructureEffect);
    connect(GITract_StructureEffect.y, busConnector.GITract_StructureEffect);
    connect(Fat_StructureEffect.y, busConnector.Fat_StructureEffect);
    connect(OtherTissue_StructureEffect.y, busConnector.OtherTissue_StructureEffect);
    connect(Kidney_StructureEffect.y, busConnector.Kidney_StructureEffect);
    connect(Skin_StructureEffect.y, busConnector.Skin_StructureEffect);
    connect(ExerciseMetabolism_MotionWatts.y, busConnector.ExerciseMetabolism_MotionWatts);
    connect(LiverFunctionEffect.y, busConnector.liver_FunctionEffect);
    connect(GITractFunctionEffect.y, busConnector.GITract_FunctionEffect);
    connect(brain_FunctionEffect.y, busConnector.brain_FunctionEffect);
    connect(fat_FunctionEffect.y, busConnector.fat_FunctionEffect);
    //Electrolytes
    connect(PT_Na_Reab.y, busConnector.PT_Na_Reab);
    connect(LH_Na_Reab.y, busConnector.LH_Na_Reab);
    connect(DT_Na_Reab.y, busConnector.DT_Na_Reab);
    connect(BloodPh_ArtysPh.y, busConnector.BloodPh_ArtysPh);
    connect(BloodCations.y, busConnector.BloodCations);
    connect(BloodIons_ProteinAnions.y, busConnector.BloodIons_ProteinAnions);
    //Gases
    connect(Bone_PO2.y, busConnector.bone_pO2);
    connect(Brain_PO2.y, busConnector.brain_pO2);
    connect(Fat_PO2.y, busConnector.fat_pO2);
    connect(GITract_PO2.y, busConnector.gitract_pO2);
    connect(Kidney_PO2.y, busConnector.Kidney_PO2);
    connect(LeftHeart_PO2.y, busConnector.LeftHeart_PO2);
    connect(Liver_PO2.y, busConnector.Liver_PO2);
    connect(OtherTissue_PO2.y, busConnector.otherTissue_pO2);
    connect(RespiratoryMuscle_PO2.y, busConnector.respiratoryMuscle_pO2);
    connect(RightHeart_PO2.y, busConnector.RightHeart_PO2);
    connect(SkeletalMuscle_PO2.y, busConnector.skeletalMuscle_pO2);
    connect(Skin_PO2.y, busConnector.Skin_PO2);
    //Heat
    connect(bone_T.y, busConnector.bone_T);
    connect(brain_T.y, busConnector.brain_T);
    connect(fat_T.y, busConnector.fat_T);
    connect(GITract_T.y, busConnector.GITract_T);
    connect(kidney_T.y, busConnector.kidney_T);
    connect(leftHeart_T.y, busConnector.leftHeart_T);
    connect(liver_T.y, busConnector.liver_T);
    connect(otherTissue_T.y, busConnector.otherTissue_T);
    connect(respiratoryMuscle_T.y, busConnector.respiratoryMuscle_T);
    connect(rightHeart_T.y, busConnector.rightHeart_T);
    connect(skeletalMuscle_T.y, busConnector.skeletalMuscle_T);
    connect(skin_T.y, busConnector.skin_T);
    connect(hypothalamusShivering_NerveActivity.y, busConnector.HypothalamusShivering_NerveActivity);
    connect(HeatCore_Temp.y, busConnector.HeatCore_Temp);
    //Hormones
    connect(Epinephrine.y, busConnector.Epinephrine);
  end Variables;
end Inputs;

model Test  
  Physiolibrary.Types.BusConnector busConnector;
  Physiomodel.Metabolism.NutrientsAndMetabolism nutrientsAndMetabolism;
  Inputs.Input inputs;
equation
  connect(inputs.busConnector, busConnector);
  connect(busConnector, nutrientsAndMetabolism.busConnector);
end Test;
