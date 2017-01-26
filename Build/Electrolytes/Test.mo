package Inputs
  extends Physiolibrary.Types.IO_Bus;
  redeclare model extends Variables
    //Hormones
    T.Concentration AldoPool_Aldo(varName="AldoPool.[Aldo(pMol/L)]", storeUnit="pmol/l"); 
    T.Concentration ANPPool_ANP(varName="ANPPool.[ANP]", storeUnit="pmol/l", y(nominal=1e-8), k=1.99078e-008);
    T.Concentration A2Pool(varName="A2Pool.[A2(pMol/L)]", storeUnit="pmol/l", k=1.90299e-008);
    //CardioVascular
    T.Pressure NephronIFP_Pressure(varName="NephronIFP.Pressure", k=526.681);
    T.VolumeFlowRate VasaRecta_Outflow(varName="VasaRecta.Outflow", k=4.05507e-007);
    T.Concentration ctHb(varName="ctHb", k=8.4); 
    T.Fraction BloodVol_Hct(varName="BloodVol.Hct", k=0.44);
    T.Concentration ctHb_ery(varName="ctHb_ery", k=21);
    //Setup
    T.MolarFlowRate IVDrip_NaRate(varName="IVDrip.NaRate", k=0);
    T.MolarFlowRate Transfusion_NaRate(varName="Transfusion.NaRate", k=0);
    T.MolarFlowRate Hemorrhage_NaRate(varName="Hemorrhage.NaRate", k=0);
    T.MolarFlowRate DialyzerActivity_Na_Flux(varName="DialyzerActivity.Na+Flux", k=0);
    T.MolarFlowRate GILumenDiarrhea_NaLoss(varName="GILumenDiarrhea.Na+Loss", k=0);
    T.MolarFlowRate FurosemidePool_Furosemide_conc(varName="FurosemidePool.[Furosemide]", storeUnit="mg/l", unitConversions=Physiomodel.Substances.Furosemide.unitConversions, k=0);
    T.Fraction Kidney_NephronCount_Filtering_xNormal(varName="Kidney-NephronCount.Filtering(xNormal)", k=1);
    T.MolarFlowRate IVDrip_KRate(varName="IVDrip.KRate", k=0);
    T.MolarFlowRate Transfusion_KRate(varName="Transfusion.KRate", k=0);
    T.MolarFlowRate Hemorrhage_KRate(varName="Hemorrhage.KRate", k=0);
    T.MolarFlowRate DialyzerActivity_K_Flux(varName="DialyzerActivity.K+Flux", k=0);
    T.MassConcentration ThiazidePool_Thiazide_conc(varName="ThiazidePool.[Thiazide]", storeUnit="mg/l", k=0);
    T.MolarFlowRate GILumenDiarrhea_KLoss(varName="GILumenDiarrhea.K+Loss", k=0);
    T.MolarFlowRate IVDrip_ClRate(varName="IVDrip.ClRate", k=0);
    T.MolarFlowRate Transfusion_ClRate(varName="Transfusion.ClRate", k=0);
    T.MolarFlowRate Hemorrhage_ClRate(varName="Hemorrhage.ClRate", k=0);
    T.MolarFlowRate DialyzerActivity_Cl_Flux(varName="DialyzerActivity.Cl+Flux", k=0);
    T.MolarFlowRate GILumenVomitus_ClLoss(varName="GILumenVomitus.Cl-Loss", k=0);
    //Gases
    T.Fraction O2Lung_sO2(varName="O2Lung_sO2", k=0.9389);
    T.Fraction O2Veins_sO2(varName="O2Veins_sO2", k=0.735709);
    T.Fraction O2Artys_sO2(varName="O2Artys_sO2", k=0.92);
    T.Fraction bone_sO2(varName="bone_sO2", k=0.694079);
    T.Fraction brain_sO2(varName="brain_sO2", k=0.675702);
    T.Fraction fat_sO2(varName="fat_sO2", k=0.835473);
    T.Fraction GITract_sO2(varName="GITract_sO2", k=0.840316);
    T.Fraction kidney_sO2(varName="kidney_sO2", k=0.83);
    T.Fraction leftHeart_sO2(varName="leftHeart_sO2", k=0.177171);
    T.Fraction liver_sO2(varName="liver_sO2", k=0.28643);
    T.Fraction otherTissue_sO2(varName="otherTissue_sO2", k=0.825751);
    T.Fraction respiratoryMuscle_sO2(varName="respiratoryMuscle_sO2", k=0.64629);
    T.Fraction rightHeart_sO2(varName="rightHeart_sO2", k=0.159044);
    T.Fraction skeletalMuscle_sO2(varName="skeletalMuscle_sO2", k=0.7);
    T.Fraction skin_sO2(varName="skin_sO2", k=0.736763);
    T.Concentration CO2Artys_cHCO3(varName="CO2Artys.[HCO3(mEq/L)]", k=24);
    T.Concentration CO2Lungs_cHCO3(varName="LungCO2.[Capy]", storeUnit="mol/l", k=23.9886);
    T.Concentration bone_cHCO3(varName="Bone-CO2.[BloodHCO3(mEq/L)]", k=30.8209);
    T.Concentration brain_cHCO3(varName="Brain-CO2.[BloodHCO3(mEq/L)]", k=26.2279);
    T.Concentration fat_cHCO3(varName="Fat-CO2.[BloodHCO3(mEq/L)]", k=20.8957);
    T.Concentration GITract_cHCO3(varName="GITract-CO2.[BloodHCO3(mEq/L)]", k=31.1194);
    T.Concentration kidney_cHCO3(varName="Kidney-CO2.[BloodHCO3(mEq/L)]", k=38.157);
    T.Concentration leftHeart_cHCO3(varName="LeftHeart-CO2.[BloodHCO3(mEq/L)]", k=35.2385);
    T.Concentration liver_cHCO3(varName="Liver-CO2.[BloodHCO3(mEq/L)]", k=34.2013);
    T.Concentration otherTissue_cHCO3(varName="OtherTissue-CO2.[BloodHCO3(mEq/L)]", k=31.5314);
    T.Concentration respiratoryMuscle_cHCO3(varName="RespiratoryMuscle-CO2.[BloodHCO3(mEq/L)]", k=29.1739);
    T.Concentration rightHeart_cHCO3(varName="RightHeart-CO2.[BloodHCO3(mEq/L)]", k=36.6641);
    T.Concentration skeletalMuscle_cHCO3(varName="SkeletalMuscle-CO2.[BloodHCO3(mEq/L)]", k=18.6633);
    T.Concentration skin_cHCO3(varName="Skin-CO2.[BloodHCO3(mEq/L)]", k=26.9592);
    T.Pressure bone_pCO2(varName="Bone-CO2.PCO2", k=7911.2);
    T.Pressure brain_pCO2(varName="Brain-CO2.PCO2", k=7759.36);
    T.Pressure fat_pCO2(varName="Fat-CO2.PCO2", k=4235.52);
    T.Pressure GITract_pCO2(varName="GITract-CO2.PCO2", k=8021.73);
    T.Pressure kidney_pCO2(varName="Kidney-CO2.PCO2", k=10628);
    T.Pressure leftHeart_pCO2(varName="LeftHeart-CO2.PCO2", k=9547.2);
    T.Pressure liver_pCO2(varName="Liver-CO2.PCO2", k=9163.11);
    T.Pressure otherTissue_pCO2(varName="OtherTissue-CO2.PCO2", k=8174.3);
    T.Pressure respiratoryMuscle_pCO2(varName="RespiratoryMuscle-CO2.PCO2", k=7301.23);
    T.Pressure rightHeart_pCO2(varName="RightHeart-CO2.PCO2", k=10075.2);
    T.Pressure skeletalMuscle_pCO2(varName="SkeletalMuscle-CO2.PCO2", k=3408.73);
    T.Pressure skin_pCO2(varName="Skin-CO2.PCO2", k=6481.04);
    T.Pressure CO2Artys_pCO2(varName="CO2Artys.Pressure");
    T.Concentration GITract_cHCO3_interstitial(varName="GITract-CO2.[HCO3(mEq/L)]", k=31.1194);
    T.Concentration bone_cHCO3_interstitial(varName="Bone-CO2.[HCO3(mEq/L)]", k=30.9209);
    T.Concentration brain_cHCO3_interstitial(varName="Brain-CO2.[HCO3(mEq/L)]", k=26.8957);
    T.Concentration fat_cHCO3_interstitial(varName="Fat-CO2.[HCO3(mEq/L)]", k=20.8957);
    T.Concentration kidney_cHCO3_interstitial(varName="Kidney-CO2.[HCO3(mEq/L)]", k=38.157);
    T.Concentration leftHeart_cHCO3_interstitial(varName="LeftHeart-CO2.[HCO3(mEq/L)]", k=35.2385);
    T.Concentration liver_cHCO3_interstitial(varName="Liver-CO2.[HCO3(mEq/L)]", k=34.2013);
    T.Concentration otherTissue_cHCO3_interstitial(varName="OtherTissue-CO2.[HCO3(mEq/L)]", k=31.5314);
    T.Concentration respiratoryMuscle_cHCO3_interstitial(varName="RespiratoryMuscle-CO2.[HCO3(mEq/L)]", k=29.1739);
    T.Concentration rightHeart_cHCO3_interstitial(varName="RightHeart-CO2.[HCO3(mEq/L)]", k=36.6641);
    T.Concentration skeletalMuscle_cHCO3_interstitial(varName="SkeletalMuscle-CO2.[HCO3(mEq/L)]", k=18.6633);
    T.Concentration skin_cHCO3_interstitial(varName="Skin-CO2.[HCO3(mEq/L)]", k=26.9592);
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
    T.Temperature HeatCore_Temp(varName="HeatCore.Temp(C)", k=310.15);
    //Proteins
    T.Concentration ctAlb(varName="ctAlb", k=0.66);
    T.Concentration CO2Veins_cHCO3(varName="CO2Veins.[HCO3(mEq/L)]", k=25.6);
    T.MassConcentration ctGlb(varName="ctGlb", storeUnit="g/l", k=28);
    //Water
    T.VolumeFlowRate SweatGland_H2ORate(varName="SweatGland.H2ORate", k=0);
    T.Volume GILumenVolume_Mass(varName="GILumenVolume.Mass", k=0.001);
    T.VolumeFlowRate BladderVoidFlow(varName="BladderVoidFlow", k=1.7e-008);
    T.Volume BladderVolume_Mass(varName="BladderVolume.Mass", k=0.0002);
    T.Volume ECFV_Vol(varName="ECFV.Vol", k=0.014361);
    T.VolumeFlowRate CD_H2O_Outflow(varName="CD_H2O.Outflow", k=1.2982e-008);
    T.VolumeFlowRate GlomerulusFiltrate_GFR(varName="GlomerulusFiltrate.GFR", k=2.15828e-006);
    T.Volume CellH2O_Vol(varName="CellH2O.Vol", k=0.0249149);
    T.Fraction KidneyAlpha_PT_NA(varName="Kidney-Alpha.PT_NA", k=1);
    T.Volume Medulla_Volume(varName="Medulla.Volume", k=3.1e-005);
    T.VolumeFlowRate LH_H2O_Outflow(varName="LH_H2O.Outflow", k=6.5243e-007);
    //Metabolism
    T.AmountOfSubstance LacPool_Mass_mEq(varName="LacPool.Mass", k=0.015);
    T.Concentration KAPool_conc_per_liter(varName="KAPool.[KA(mMol/L)]", k=0.048774);
    T.AmountOfSubstance KAPool_Osmoles(varName="KAPool.Osmoles", storeUnit="mosm", k=0.000700444);    
    T.MolarFlowRate skeletalMuscle_GlucoseToCellStorageFlow(varName="SkeletalMuscle-Glycogen.Synthesis", storeUnit="mg/min", unitConversions = Physiomodel.Substances.Glucose.unitConversions, k=0);
    T.MolarFlowRate liver_GlucoseToCellStorageFlow(varName="LM_Glycogen.Gain", storeUnit="mg/min", unitConversions = Physiomodel.Substances.Glucose.unitConversions, k=1.36956e-005);
    T.MolarFlowRate respiratoryMuscle_GlucoseToCellStorageFlow(varName="RespiratoryMuscle-Glycogen.Synthesis", storeUnit="mg/min", unitConversions = Physiomodel.Substances.Glucose.unitConversions, k=0);
    T.Concentration Leptin(varName="LeptinPool.[Leptin(nG/mL)]", storeUnit="ng/ml", unitConversions = Physiomodel.Substances.Leptin.unitConversions, k=4.96886e-007);
    T.MolarFlowRate CD_KA_Outflow(varName="CD_KA.Outflow", storeUnit="mmol/min", k=0);
    T.Concentration bone_cLactate(varName="Bone-Lactate.[Lac-(mEq/L)]", k=1.2817);
    T.Concentration brain_cLactate(varName="Brain-Lactate.[Lac-(mEq/L)]", k=1.05762);
    T.Concentration fat_cLactate(varName="Fat-Lactate.[Lac-(mEq/L)]", k=1);
    T.Concentration GITract_cLactate(varName="GITract-Lactate.[Lac-(mEq/L)]", k=1.29112);
    T.Concentration kidney_cLactate(varName="Kidney-Lactate.[Lac-(mEq/L)]", k=1.05273);
    T.Concentration leftHeart_cLactate(varName="LeftHeart-Lactate.[Lac-(mEq/L)]", k=1.0984);
    T.Concentration liver_cLactate(varName="Liver-Lactate.[Lac-(mEq/L)]", k=1.38395);
    T.Concentration otherTissue_cLactate(varName="OtherTissue-Lactate.[Lac-(mEq/L)]", k=1.3034);
    T.Concentration respiratoryMuscle_cLactate(varName="RespiratoryMuscle-Lactate.[Lac-(mEq/L)]", k=1.23705);
    T.Concentration rightHeart_cLactate(varName="RightHeart-Lactate.[Lac-(mEq/L)]", k=1.16302);
    T.Concentration skeletalMuscle_cLactate(varName="SkeletalMuscle-Lactate.[Lac-(mEq/L)]", k=0.935508);
    T.Concentration skin_cLactate(varName="Skin-Lactate.[Lac-(mEq/L)]", k=1.17062);
    T.Concentration LacPool_Lac_mEq_per_litre(varName="LacPool.[Lac-(mEq/L)]", k=1.04449);
    //Status
    T.Fraction KidneyFunctionEffect(varName="Kidney-Function.Effect", k=1);
  equation
    connect(LacPool_Mass_mEq.y, busConnector.LacPool_Mass);
    connect(KAPool_conc_per_liter.y, busConnector.KAPool);
    connect(KAPool_Osmoles.y, busConnector.KAPool_Osmoles);
    connect(VasaRecta_Outflow.y, busConnector.VasaRecta_Outflow);
    connect(NephronIFP_Pressure.y, busConnector.NephronIFP_Pressure);
    connect(ThiazidePool_Thiazide_conc.y, busConnector.ThiazidePool_Thiazide_conc);  
    connect(FurosemidePool_Furosemide_conc.y, busConnector.FurosemidePool_Furosemide_conc);
    connect(Kidney_NephronCount_Filtering_xNormal.y, busConnector.Kidney_NephronCount_Filtering_xNormal);
    connect(IVDrip_NaRate.y, busConnector.IVDrip_NaRate);
    connect(Transfusion_NaRate.y, busConnector.Transfusion_NaRate);
    connect(Hemorrhage_NaRate.y, busConnector.Hemorrhage_NaRate);
    connect(DialyzerActivity_Na_Flux.y, busConnector.DialyzerActivity_Na_Flux);
    connect(GILumenDiarrhea_NaLoss.y, busConnector.GILumenDiarrhea_NaLoss);
    connect(A2Pool.y, busConnector.Angiotensin2);
    connect(ANPPool_ANP.y, busConnector.ANP);
    connect(Medulla_Volume.y, busConnector.Medulla_Volume);
    connect(LH_H2O_Outflow.y, busConnector.LH_H2O_Outflow);
    connect(KidneyAlpha_PT_NA.y, busConnector.KidneyAlpha_PT_NA);
    connect(KidneyFunctionEffect.y, busConnector.kidney_FunctionEffect);
    connect(skeletalMuscle_GlucoseToCellStorageFlow.y, busConnector.skeletalMuscle_GlucoseToCellStorageFlow);
    connect(liver_GlucoseToCellStorageFlow.y, busConnector.liver_GlucoseToCellStorageFlow);
    connect(respiratoryMuscle_GlucoseToCellStorageFlow.y, busConnector.respiratoryMuscle_GlucoseToCellStorageFlow);
    connect(GILumenDiarrhea_KLoss.y, busConnector.GILumenDiarrhea_KLoss);
    connect(IVDrip_KRate.y, busConnector.IVDrip_KRate);
    connect(Transfusion_KRate.y, busConnector.Transfusion_KRate); 
    connect(Hemorrhage_KRate.y, busConnector.Hemorrhage_KRate);
    connect(DialyzerActivity_K_Flux.y, busConnector.DialyzerActivity_K_Flux);
    connect(CellH2O_Vol.y, busConnector.CellH2O_Vol);
    connect(GlomerulusFiltrate_GFR.y, busConnector.GlomerulusFiltrate_GFR);
    connect(Leptin.y, busConnector.Leptin);
    connect(CD_KA_Outflow.y, busConnector.CD_KA_Outflow);
    connect(IVDrip_ClRate.y, busConnector.IVDrip_ClRate);
    connect(GILumenVomitus_ClLoss.y,busConnector.GILumenVomitus_ClLoss);
    connect(Transfusion_ClRate.y, busConnector.Transfusion_ClRate); 
    connect(Hemorrhage_ClRate.y, busConnector.Hemorrhage_ClRate);
    connect(DialyzerActivity_Cl_Flux.y, busConnector.DialyzerActivity_Cl_Flux);
    connect(AldoPool_Aldo.y, busConnector.Aldosterone);
    connect(SweatGland_H2ORate.y, busConnector.SweatGland_H2ORate);
    connect(GILumenVolume_Mass.y, busConnector.GILumenVolume_Mass);
    connect(BladderVoidFlow.y, busConnector.BladderVoidFlow);
    connect(BladderVolume_Mass.y, busConnector.BladderVolume_Mass);
    connect(ECFV_Vol.y, busConnector.ECFV_Vol);
    connect(ctAlb.y, busConnector.ctAlb);
    connect(CO2Artys_cHCO3.y, busConnector.CO2Artys_cHCO3);
    connect(CO2Veins_cHCO3.y, busConnector.CO2Veins_cHCO3);
    connect(ctGlb.y, busConnector.ctGlb);
    connect(CO2Lungs_cHCO3.y, busConnector.CO2Lung_cHCO3);
    connect(ctHb.y, busConnector.ctHb);
    connect(bone_sO2.y, busConnector.bone_sO2);
    connect(brain_sO2.y, busConnector.brain_sO2);
    connect(fat_sO2.y, busConnector.fat_sO2);
    connect(GITract_sO2.y, busConnector.GITract_sO2);
    connect(kidney_sO2.y, busConnector.kidney_sO2);
    connect(leftHeart_sO2.y, busConnector.leftHeart_sO2);
    connect(liver_sO2.y, busConnector.liver_sO2);
    connect(O2Artys_sO2.y, busConnector.O2Artys_sO2);
    connect(O2Veins_sO2.y, busConnector.O2Veins_sO2);
    connect(otherTissue_sO2.y, busConnector.otherTissue_sO2);
    connect(respiratoryMuscle_sO2.y, busConnector.respiratoryMuscle_sO2);
    connect(rightHeart_sO2.y, busConnector.rightHeart_sO2);
    connect(skeletalMuscle_sO2.y, busConnector.skeletalMuscle_sO2);
    connect(skin_sO2.y, busConnector.skin_sO2);
    connect(O2Lung_sO2.y, busConnector.O2Lung_sO2);
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
    connect(bone_cLactate.y, busConnector.bone_cLactate);
    connect(brain_cLactate.y, busConnector.brain_cLactate);
    connect(fat_cLactate.y, busConnector.fat_cLactate);
    connect(GITract_cLactate.y, busConnector.GITract_cLactate);
    connect(kidney_cLactate.y, busConnector.kidney_cLactate);
    connect(leftHeart_cLactate.y, busConnector.leftHeart_cLactate);
    connect(liver_cLactate.y, busConnector.liver_cLactate);
    connect(otherTissue_cLactate.y, busConnector.otherTissue_cLactate);
    connect(respiratoryMuscle_cLactate.y, busConnector.respiratoryMuscle_cLactate);
    connect(rightHeart_cLactate.y, busConnector.rightHeart_cLactate);
    connect(skeletalMuscle_cLactate.y, busConnector.skeletalMuscle_cLactate);
    connect(skin_cLactate.y, busConnector.skin_cLactate);
    connect(bone_cHCO3.y, busConnector.bone_cHCO3);
    connect(brain_cHCO3.y, busConnector.brain_cHCO3);
    connect(fat_cHCO3.y, busConnector.fat_cHCO3);
    connect(GITract_cHCO3.y, busConnector.GITract_cHCO3);
    connect(kidney_cHCO3.y, busConnector.kidney_cHCO3);
    connect(leftHeart_cHCO3.y, busConnector.leftHeart_cHCO3);
    connect(liver_cHCO3.y, busConnector.liver_cHCO3);
    connect(otherTissue_cHCO3.y, busConnector.otherTissue_cHCO3);
    connect(respiratoryMuscle_cHCO3.y, busConnector.respiratoryMuscle_cHCO3);
    connect(rightHeart_cHCO3.y, busConnector.rightHeart_cHCO3);
    connect(skeletalMuscle_cHCO3.y, busConnector.skeletalMuscle_cHCO3);
    connect(skin_cHCO3.y, busConnector.skin_cHCO3);
    connect(bone_pCO2.y, busConnector.bone_pCO2);
    connect(brain_pCO2.y, busConnector.brain_pCO2);
    connect(fat_pCO2.y, busConnector.fat_pCO2);
    connect(GITract_pCO2.y, busConnector.gitract_pCO2);
    connect(kidney_pCO2.y, busConnector.kidney_pCO2);
    connect(leftHeart_pCO2.y, busConnector.leftHeart_pCO2);
    connect(liver_pCO2.y, busConnector.liver_pCO2);
    connect(otherTissue_pCO2.y, busConnector.otherTissue_pCO2);
    connect(respiratoryMuscle_pCO2.y, busConnector.respiratoryMuscle_pCO2);
    connect(rightHeart_pCO2.y, busConnector.rightHeart_pCO2);
    connect(skeletalMuscle_pCO2.y, busConnector.skeletalMuscle_pCO2);
    connect(skin_pCO2.y, busConnector.skin_pCO2);
    connect(bone_cHCO3_interstitial.y, busConnector.bone_cHCO3_interstitial);
    connect(brain_cHCO3_interstitial.y, busConnector.brain_cHCO3_interstitial);
    connect(fat_cHCO3_interstitial.y, busConnector.fat_cHCO3_interstitial);
    connect(GITract_cHCO3_interstitial.y, busConnector.GITract_cHCO3_interstitial);
    connect(kidney_cHCO3_interstitial.y, busConnector.kidney_cHCO3_interstitial);
    connect(leftHeart_cHCO3_interstitial.y, busConnector.leftHeart_cHCO3_interstitial);
    connect(liver_cHCO3_interstitial.y, busConnector.liver_cHCO3_interstitial);
    connect(otherTissue_cHCO3_interstitial.y, busConnector.otherTissue_cHCO3_interstitial);
    connect(respiratoryMuscle_cHCO3_interstitial.y, busConnector.respiratoryMuscle_cHCO3_interstitial);
    connect(rightHeart_cHCO3_interstitial.y, busConnector.rightHeart_cHCO3_interstitial);
    connect(skeletalMuscle_cHCO3_interstitial.y, busConnector.skeletalMuscle_cHCO3_interstitial);
    connect(skin_cHCO3_interstitial.y, busConnector.skin_cHCO3_interstitial);
    connect(LacPool_Lac_mEq_per_litre.y, busConnector.LacPool);
    connect(BloodVol_Hct.y, busConnector.BloodVol_Hct);
    connect(HeatCore_Temp.y, busConnector.HeatCore_Temp);
    connect(ctHb_ery.y, busConnector.ctHb_ery);
    connect(CO2Artys_pCO2.y, busConnector.CO2Artys_pCO2);
    connect(CD_H2O_Outflow.y, busConnector.CD_H2O_Outflow);
  end Variables;
end Inputs;

model Test  
  Physiolibrary.Types.BusConnector busConnector;
  Physiomodel.Electrolytes.Electrolytes electrolytes;
  Inputs.Input inputs;
equation
  connect(inputs.busConnector, busConnector);
  connect(busConnector, electrolytes.busConnector);
end Test;
