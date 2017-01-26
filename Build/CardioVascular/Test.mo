package Inputs
  extends Physiolibrary.Types.IO_Bus;
  redeclare model extends Variables
    T.Pressure Pericardium_Pressure(varName="Pericardium-Cavity.Pressure", k=-445.993);
    T.Fraction BetaPool_Effect(varName="BetaPool.Effect", k=0.999726);
    T.Fraction BetaBlocade_Effect(varName="BetaBlockade_Effect", k=1);
    T.Frequency VagusNerve(varName="VagusNerve_NA_Hz", k=1.98382);
    T.Frequency GangliaGeneral_NA(varName="GangliaGeneral.NA(Hz)", k=1.50811);
    T.Volume ECFV_Vol(varName="ECFV.Vol", k=0.014361);
    T.Pressure Thorax_AvePressure(varName="Thorax.AvePressure", k=-533.289);
    T.Fraction Gravity_Gz(varName="Gravity.Gz", k=1);
    T.Fraction AlphaPool_Effect(varName="AlphaPool.Effect", k=0.999726);
    T.Fraction AlphaBlocade_Effect(varName="AlphaBlockade.Effect", k=1);
    T.Concentration A2Pool(varName="A2Pool.[A2(pMol/L)]", storeUnit="pmol/l", k=1.90299e-008);
    BooleanVariable LeftHeart_Function_Failed(varName="LeftHeart-Function.Failed", k=false);
    T.MolarFlowRate LeftHeart_O2Need(varName="LeftHeart-Metabolism.O2Need", storeUnit="ml_STP/min", k=1.93881e-005);
    T.Pressure LeftHeart_PO2(varName="LeftHeart-Flow.PO2", k=2305.94);
    BooleanVariable RightHeart_Function_Failed(varName="RightHeart-Function.Failed", k=false);
    T.MolarFlowRate RightHeart_O2Need(varName="RightHeart-Metabolism.O2Need", storeUnit="ml_STP/min", k=3.72874e-006);
    T.Pressure RightHeart_PO2(varName="RightHeart-Flow.PO2", k=2230.54);
    T.Fraction Anesthesia_VascularConductance(varName="Anesthesia.VascularConductance", k=1);  
    T.Concentration Vasopressin(varName="ADHPool.[ADH(pMol/L)]", storeUnit="pmol/l", k=1.83549e-009);
    T.Frequency Exercise_Metabolism_ContractionRate(varName="Exercise-Metabolism.ContractionRate", k=0);
    T.Frequency Exercise_Metabolism_MotionWatts(varName="Exercise-Metabolism.MotionWatts", k=0);
    T.Pressure KidneyO2_TubulePO2(varName="Kidney-O2.TubulePO2", k=4666);
    T.Fraction Kidney_NephronCount_Total_xNormal(varName="Kidney-NephronCount.Total(xNormal)", k=1);
    T.Fraction KidneyFunctionEffect(varName="Kidney-Function.Effect", k=1);
    T.Volume PlasmaVol_Vol(varName="PlasmaVol.Vol", k=0.00302);
    T.Position CarotidSinusHeight(varName="Hydrostatics.CarotidCM", k=0);
    T.Position LowerTorsoVeinHeight(varName="Hydrostatics.LowerTorsoCM", k=0);
    T.Position LowerTorsoArtyHeight(varName="Hydrostatics.LowerTorsoCM", k=0);

    T.Pressure Fat_PO2(varName="Fat-Flow.PO2", k=7093.14);
    T.Pressure Bone_PO2(varName="Bone-Flow.PO2", k=5638.7);
    T.Pressure SkeletalMuscle_PO2(varName="SkeletalMuscle-Flow.PO2", k=5559.06);
    T.Pressure OtherTissue_PO2(varName="OtherTissue-Flow.PO2", k=7585.98);
    T.Pressure Brain_PO2(varName="Brain-Flow.PO2", k=5382.22);
    T.Pressure RespiratoryMuscle_PO2(varName="RespiratoryMuscle-Flow.PO2", k=4918.8);
    T.Pressure GITract_PO2(varName="GITract-Flow.PO2", k=7846.7);
    T.Pressure Skin_PO2(varName="Skin-Flow.PO2", k=5792.86);

    T.MolarFlowRate Fat_O2Need(storeUnit="ml_STP/min", varName="Fat-Metabolism.O2Need", k=4.52226e-6);
    T.MolarFlowRate Bone_O2Need(storeUnit="ml_STP/min", varName="Bone-Metabolism.O2Need", k=1.049137e-5);
    T.MolarFlowRate SkeletalMuscle_O2Need(storeUnit="ml_STP/min", varName="SkeletalMuscle-Metabolism.O2Need", k=2.14493e-005);
    T.MolarFlowRate OtherTissue_O2Need(storeUnit="ml_STP/min", varName="OtherTissue-Metabolism.O2Need", k=5.823547e-6);
    T.MolarFlowRate Brain_O2Need(storeUnit="ml_STP/min", varName="Brain-Metabolism.O2Need", k=2.884544e-5);
    T.MolarFlowRate RespiratoryMuscle_O2Need(storeUnit="ml_STP/min", varName="RespiratoryMuscle-Metabolism.O2Need", k=4.15784e-006);
    T.MolarFlowRate GITract_O2Need(storeUnit="ml_STP/min", varName="GITract-Metabolism.O2Need", k=1.381816e-5);
    
    T.Pressure Fat_PCO2(varName="Fat-CO2.PCO2", k=4235.52);
    T.Pressure Bone_PCO2(varName="Bone-CO2.PCO2", k=7911.2);
    T.Pressure SkeletalMuscle_PCO2(varName="SkeletalMuscle-CO2.PCO2", k=3408.73);
    T.Pressure OtherTissue_PCO2(varName="OtherTissue-CO2.PCO2", k=8174.3);
    T.Pressure Brain_PCO2(varName="Brain-CO2.PCO2", k=7759.36);
    T.Pressure RespiratoryMuscle_PCO2(varName="RespiratoryMuscle-CO2.PCO2", k=8174.3);
    T.Pressure GITract_PCO2(varName="GITract-CO2.PCO2", k=8021.73);

    BooleanVariable Fat_Function_Failed(varName="Fat-Function.Failed", k=false);
    BooleanVariable Bone_Function_Failed(varName="Bone-Function.Failed", k=false);
    BooleanVariable SkeletalMuscle_Function_Failed(varName="SkeletalMuscle-Function.Failed", k=false);
    BooleanVariable OtherTissue_Function_Failed(varName="OtherTissue-Function.Failed", k=false);
    BooleanVariable Brain_Function_Failed(varName="Brain-Function.Failed", k=false);
    BooleanVariable RespiratoryMuscle_Function_Failed(varName="RespiratoryMuscle-Function.Failed", k=false);
    BooleanVariable GITract_Function_Failed(varName="GITract-Function.Failed", k=false);
    BooleanVariable Skin_Function_Failed(varName="Skin-Function.Failed", k=false);

    T.Fraction skinFlow_termoregulationEffect(varName="Skin-Flow.SympsDilateEffect", k=1);
    T.Osmolarity MedullaUrea_Osmolarity(varName="MedullaUrea.Osmolarity", storeUnit="mosm/l", k=317.268);
    T.Osmolarity MedullaNa_Osmolarity(varName="MedullaNa.Osmolarity", k=838.71);
    T.Concentration MD_Na(varName="MD_Na.[Na+(mEq/L)]", k=47.834);
    T.Fraction Kidney_Alpha_NA(varName="Kidney-Alpha.NA", k=1);
    T.MolarFlowRate FurosemidePool_Loss(varName="FurosemidePool.Loss", storeUnit="mg/min", unitConversions=Physiomodel.Substances.Furosemide.unitConversions, k=0);
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant const7(k=1);
    T.VolumeFlowRate Transfusion_RBCRate(varName="Transfusion.RBCRate", k=0);
    T.VolumeFlowRate Hemorrhage_RBCRate(varName="Hemorrhage.RBCRate", k=0);
    T.VolumeFlowRate CD_H2O_Reab(varName="CD_H2O.Reab", k=6.29963e-008);

equation
    connect(skinFlow_termoregulationEffect.y, busConnector.skinFlow_termoregulationEffect);
    connect(MedullaUrea_Osmolarity.y, busConnector.MedullaUrea_Osmolarity);
    connect(MedullaNa_Osmolarity.y, busConnector.MedullaNa_Osmolarity);
    connect(MD_Na.y, busConnector.MD_Na);
    connect(FurosemidePool_Loss.y, busConnector.FurosemidePool_Loss);
    connect(const7.y, busConnector.Exercise_MusclePump_Effect);
    connect(Transfusion_RBCRate.y, busConnector.Transfusion_RBCRate);
    connect(Hemorrhage_RBCRate.y, busConnector.Hemorrhage_RBCRate);
    connect(CD_H2O_Reab.y, busConnector.CD_H2O_Reab);

    connect(Skin_PO2.y, busConnector.Skin_PO2);
    connect(Fat_PO2.y, busConnector.fat_pO2);
    connect(Bone_PO2.y, busConnector.bone_pO2);
    connect(SkeletalMuscle_PO2.y, busConnector.skeletalMuscle_pO2);
    connect(OtherTissue_PO2.y, busConnector.otherTissue_pO2);
    connect(Brain_PO2.y, busConnector.brain_pO2);
    connect(RespiratoryMuscle_PO2.y, busConnector.respiratoryMuscle_pO2);
    connect(GITract_PO2.y, busConnector.gitract_pO2);

    connect(Fat_O2Need.y, busConnector.fat_O2Need);
    connect(Bone_O2Need.y, busConnector.bone_O2Need);
    connect(SkeletalMuscle_O2Need.y, busConnector.skeletalMuscle_O2Need);
    connect(OtherTissue_O2Need.y, busConnector.otherTissue_O2Need);
    connect(Brain_O2Need.y, busConnector.brain_O2Need);
    connect(RespiratoryMuscle_O2Need.y, busConnector.respiratoryMuscle_O2Need);
    connect(GITract_O2Need.y, busConnector.gitract_O2Need);

    connect(Fat_PCO2.y, busConnector.fat_pCO2);
    connect(Bone_PCO2.y, busConnector.bone_pCO2);
    connect(SkeletalMuscle_PCO2.y, busConnector.skeletalMuscle_pCO2);
    connect(OtherTissue_PCO2.y, busConnector.otherTissue_pCO2);
    connect(Brain_PCO2.y, busConnector.brain_pCO2);
    connect(RespiratoryMuscle_PCO2.y, busConnector.respiratoryMuscle_pCO2);
    connect(GITract_PCO2.y, busConnector.gitract_pCO2);

    connect(Fat_Function_Failed.y, busConnector.fat_Function_Failed);
    connect(Bone_Function_Failed.y, busConnector.bone_Function_Failed);
    connect(SkeletalMuscle_Function_Failed.y, busConnector.skeletalMuscle_Function_Failed);
    connect(OtherTissue_Function_Failed.y, busConnector.otherTissue_Function_Failed);
    connect(Brain_Function_Failed.y, busConnector.brain_Function_Failed);
    connect(RespiratoryMuscle_Function_Failed.y, busConnector.respiratoryMuscle_Function_Failed);
    connect(GITract_Function_Failed.y, busConnector.gitract_Function_Failed);
    connect(Skin_Function_Failed.y, busConnector.Skin_Function_Failed);
   
    connect(Pericardium_Pressure.y, busConnector.Pericardium_Pressure);
    connect(BetaPool_Effect.y, busConnector.BetaPool_Effect);
    connect(BetaBlocade_Effect.y, busConnector.BetaBlocade_Effect);
    connect(VagusNerve.y, busConnector.VagusNerve_NA_Hz);
    connect(GangliaGeneral_NA.y, busConnector.GangliaGeneral_NA);
    connect(ECFV_Vol.y, busConnector.ECFV_Vol);
    connect(Thorax_AvePressure.y, busConnector.Thorax_AvePressure);
    connect(Gravity_Gz.y, busConnector.Gravity_Gz);
    connect(AlphaPool_Effect.y, busConnector.AlphaPool_Effect);
    connect(AlphaBlocade_Effect.y, busConnector.AlphaBlocade_Effect);
    connect(A2Pool.y, busConnector.Angiotensin2);
    connect(LeftHeart_Function_Failed.y, busConnector.LeftHeart_Function_Failed);
    connect(LeftHeart_O2Need.y, busConnector.LeftHeart_O2Need);
    connect(LeftHeart_PO2.y, busConnector.LeftHeart_PO2);
    connect(RightHeart_Function_Failed.y, busConnector.RightHeart_Function_Failed);
    connect(RightHeart_O2Need.y, busConnector.RightHeart_O2Need);
    connect(RightHeart_PO2.y, busConnector.RightHeart_PO2);
    connect(Anesthesia_VascularConductance.y, busConnector.Anesthesia_VascularConductance);
    connect(Vasopressin.y, busConnector.Vasopressin);
    connect(Exercise_Metabolism_ContractionRate.y, busConnector.Exercise_Metabolism_ContractionRate);
    connect(Exercise_Metabolism_MotionWatts.y, busConnector.Exercise_Metabolism_MotionWatts);
    connect(CarotidSinusHeight.y, busConnector.CarotidSinusHeight);
    connect(LowerTorsoVeinHeight.y, busConnector.LowerTorsoVeinHeight);
    connect(LowerTorsoArtyHeight.y,busConnector. LowerTorsoArtyHeight);
    connect(KidneyFunctionEffect.y, busConnector.kidney_FunctionEffect);
    connect(KidneyO2_TubulePO2.y, busConnector.KidneyO2_TubulePO2);
    connect(Kidney_NephronCount_Total_xNormal.y,busConnector.Kidney_NephronCount_Total_xNormal);
    connect(Kidney_Alpha_NA.y, busConnector.Kidney_Alpha_NA);
    connect(PlasmaVol_Vol.y, busConnector.PlasmaVol_Vol);
  end Variables;
end Inputs;

model Test  
  Physiolibrary.Types.BusConnector busConnector;
  Physiomodel.CardioVascular.CardioVascularSystem cvs;
  Inputs.Input inputs;
equation
  connect(inputs.busConnector, busConnector);
  connect(busConnector, cvs.busConnector);
end Test;
