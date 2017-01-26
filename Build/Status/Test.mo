package Inputs
    extends Physiolibrary.Types.IO_Bus;
    redeclare model extends Variables
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
    //Metabolism
    T.Fraction bone_Fuel_FractUseDelay(varName="Bone-Fuel.FractUseDelay", k=1);
    T.Fraction brain_Fuel_FractUseDelay(varName="Brain-Fuel.FractUseDelay", k=1);
    T.Fraction fat_Fuel_FractUseDelay(varName="Fat-Fuel.FractUseDelay", k=1);
    T.Fraction GITract_Fuel_FractUseDelay(varName="GITract-Fuel.FractUseDelay", k=1);
    T.Fraction kidney_Fuel_FractUseDelay(varName="Kidney-Fuel.FractUseDelay", k=1);
    T.Fraction leftHeart_Fuel_FractUseDelay(varName="LeftHeart-Fuel.FractUseDelay", k=1);
    T.Fraction liver_Fuel_FractUseDelay(varName="Liver-Fuel.FractUseDelay", k=1);
    T.Fraction otherTissue_Fuel_FractUseDelay(varName="OtherTissue-Fuel.FractUseDelay", k=1);
    T.Fraction respiratoryMuscle_Fuel_FractUseDelay(varName="RespiratoryMuscle-Fuel.FractUseDelay", k=1);
    T.Fraction rightHeart_Fuel_FractUseDelay(varName="RightHeart-Fuel.FractUseDelay", k=1);
    T.Fraction skeletalMuscle_Fuel_FractUseDelay(varName="SkeletalMuscle-Fuel.FractUseDelay", k=1);
    T.Fraction skin_Fuel_FractUseDelay(varName="Skin-Fuel.FractUseDelay", k=1);
    T.AmountOfSubstance CellProtein_Mass(varName="CellProtein.Mass", storeUnit="mg", unitConversions = Physiomodel.Substances.AminoAcids.unitConversions);
    //Electrolytes
    T.pH bone_pH_intracellular(varName="Bone-Ph.Ph", k=7.03009);
    T.pH brain_pH_intracellular(varName="Brain-Ph.Ph", k=7.08);
    T.pH fat_pH_intracellular(varName="Fat-Ph.Ph", k=7.30414);
    T.pH GITract_pH_intracellular(varName="GITract-Ph.Ph", k=7.02398);
    T.pH kidney_pH_intracellular(varName="Kidney-Ph.Ph", k=6.90409);
    T.pH leftHeart_pH_intracellular(varName="LeftHeart-Ph.Ph", k=6.95022);
    T.pH liver_pH_intracellular(varName="Liver-Ph.Ph", k=6.96531);
    T.pH otherTissue_pH_intracellular(varName="OtherTissue-Ph.Ph", k=7.01568);
    T.pH respiratoryMuscle_pH_intracellular(varName="RespiratoryMuscle-Ph.Ph", k=7.06537);
    T.pH rightHeart_pH_intracellular(varName="RightHeart-Ph.Ph", k=6.92623);
    T.pH skeletalMuscle_pH_intracellular(varName="SkeletalMuscle-Ph.Ph", k=7.39907);
    T.pH skin_pH_intracellular(varName="Skin-Ph.Ph", k=7.11776);
   equation
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
    //Metabolism
    connect(bone_Fuel_FractUseDelay.y, busConnector.bone_Fuel_FractUseDelay);
    connect(brain_Fuel_FractUseDelay.y, busConnector.brain_Fuel_FractUseDelay);
    connect(fat_Fuel_FractUseDelay.y, busConnector.fat_Fuel_FractUseDelay);
    connect(GITract_Fuel_FractUseDelay.y, busConnector.GITract_Fuel_FractUseDelay);
    connect(kidney_Fuel_FractUseDelay.y, busConnector.kidney_Fuel_FractUseDelay);
    connect(leftHeart_Fuel_FractUseDelay.y, busConnector.leftHeart_Fuel_FractUseDelay);
    connect(liver_Fuel_FractUseDelay.y, busConnector.liver_Fuel_FractUseDelay);
    connect(otherTissue_Fuel_FractUseDelay.y, busConnector.otherTissue_Fuel_FractUseDelay);
    connect(respiratoryMuscle_Fuel_FractUseDelay.y, busConnector.respiratoryMuscle_Fuel_FractUseDelay);
    connect(rightHeart_Fuel_FractUseDelay.y, busConnector.rightHeart_Fuel_FractUseDelay);
    connect(skeletalMuscle_Fuel_FractUseDelay.y, busConnector.skeletalMuscle_Fuel_FractUseDelay);
    connect(skin_Fuel_FractUseDelay.y, busConnector.skin_Fuel_FractUseDelay);
    connect(CellProtein_Mass.y, busConnector.CellProteinAA);
    //Electrolytes
    connect(bone_pH_intracellular.y, busConnector.bone_pH_intracellular);
    connect(brain_pH_intracellular.y, busConnector.brain_pH_intracellular);
    connect(fat_pH_intracellular.y, busConnector.fat_pH_intracellular);
    connect(GITract_pH_intracellular.y, busConnector.GITract_pH_intracellular);
    connect(kidney_pH_intracellular.y, busConnector.kidney_pH_intracellular);
    connect(leftHeart_pH_intracellular.y, busConnector.leftHeart_pH_intracellular);
    connect(liver_pH_intracellular.y, busConnector.liver_pH_intracellular);
    connect(otherTissue_pH_intracellular.y, busConnector.otherTissue_pH_intracellular);
    connect(respiratoryMuscle_pH_intracellular.y, busConnector.respiratoryMuscle_pH_intracellular);
    connect(rightHeart_pH_intracellular.y, busConnector.rightHeart_pH_intracellular);
    connect(skeletalMuscle_pH_intracellular.y, busConnector.skeletalMuscle_pH_intracellular);
    connect(skin_pH_intracellular.y, busConnector.skin_pH_intracellular);
    end Variables;
end Inputs;

model Test
  Physiolibrary.Types.BusConnector busConnector;
	Physiomodel.Status.TissuesFitness status;
	Inputs.Input inputs;
equation
  connect(busConnector, status.busConnector);
	connect(inputs.busConnector, busConnector);  
end Test;

  
