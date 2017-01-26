package Inputs
  extends Physiolibrary.Types.IO_Bus;
  redeclare model extends Variables
     //CardioVascularSystem
    T.VolumeFlowRate CardiacOutput(varName="CardiacOutput.Flow", k=9.17342e-005);
    T.VolumeFlowRate AlveolarVentilated_BloodFlow(varName="LungBloodFlow.AlveolarVentilated", k=8.98333e-005);
    T.Concentration ctHb(varName="ctHb", k=8.4); 
    T.Concentration cDPG(varName="cDPG", k=5.4);
    T.Fraction FMetHb(varName="FMetHb", k=0.005);
    T.Fraction FHbF(varName="FHbF", k=0.005);
    T.Volume ArtysVol(varName="ArtysVol.Vol", k=0.0015985);
    T.Volume VeinsVol(varName="VeinsVol.Vol", k=0.00379513);
    T.VolumeFlowRate bone_BloodFlow(varName="Bone-Flow.BloodFlow", k=5.40143e-006);
    T.VolumeFlowRate brain_BloodFlow(varName="Brain-Flow.BloodFlow", k=1.36172e-005);
    T.VolumeFlowRate fat_BloodFlow(varName="Fat-Flow.BloodFlow", k=4.01915e-006);
    T.VolumeFlowRate GITract_BloodFlow(varName="GITract-Flow.BloodFlow", k=1.9228e-005);
    T.VolumeFlowRate kidney_BloodFlow(varName="Kidney-Flow.BloodFlow", k=2.07108e-005);
    T.VolumeFlowRate leftHeart_BloodFlow(varName="LeftHeart-Flow.BloodFlow", k=3.76667e-006);
    T.VolumeFlowRate otherTissue_BloodFlow(varName="OtherTissue-Flow.BloodFlow", k=6.25202e-006);
    T.VolumeFlowRate respiratoryMuscle_BloodFlow(varName="RespiratoryMuscle-Flow.BloodFlow", k=1.63743e-006);
    T.VolumeFlowRate rightHeart_BloodFlow(varName="RightHeart-Flow.BloodFlow", k=7.08333e-007);
    T.VolumeFlowRate skeletalMuscle_BloodFlow(varName="SkeletalMuscle-Flow.BloodFlow", k=1.072e-005);
    T.VolumeFlowRate skin_BloodFlow(varName="Skin-Flow.BloodFlow", k=2.68538e-006);
    T.VolumeFlowRate HepaticArty_BloodFlow(varName="HepaticArty.Flow", k=4.10747e-006);
    T.Fraction BloodVol_Hct(varName="BloodVol.Hct", k=0.44);
    //Electrolytes
    T.pH skeletalMuscle_pH_intracellular(varName="SkeletalMuscle-Ph.Ph", k=7.39907);
    T.pH brain_pH_intracellular(varName="Brain-Ph.Ph", k=7.08);
    T.pH Artys_pH1(varName="BloodPh.ArtysPh", k=7.4);
    T.pH Artys_pH_ery(varName="Artys_pH_ery", k=7.19094);
    T.pH Veins_pH(varName="BloodPh.VeinsPh", k=7.4);
    T.pH Veins_pH_ery(varName="Veins_pH_ery", k=7.17611);
    T.pH bone_pH_plasma(varName="bone_pH_plasma", k=7.28003);
    T.pH brain_pH_plasma(varName="brain_pH_plasma", k=7.36309);
    T.pH fat_pH_plasma(varName="fat_pH_plasma", k=7.45708);
    T.pH GITract_pH_plasma(varName="GITract_pH_plasma", k=7.27359);
    T.pH kidney_pH_plasma(varName="kidney_pH_plasma", k=7.14688);
    T.pH leftHeart_pH_plasma(varName="leftHeart_pH_plasma", k=7.20596);
    T.pH liver_pH_plasma(varName="liver_pH_plasma", k=7.21976);
    T.pH otherTissue_pH_plasma(varName="otherTissue_pH_plasma", k=7.26635);
    T.pH respiratoryMuscle_pH_plasma(varName="respiratoryMuscle_pH_plasma", k=7.31053);
    T.pH rightHeart_pH_plasma(varName="rightHeart_pH_plasma", k=7.18047);
    T.pH skeletalMuscle_pH_plasma(varName="skeletalMuscle_pH_plasma", k=7.49830);
    T.pH skin_pH_plasma(varName="skin_pH_plasma", k=7.35061);
    T.pH bone_pH_ery(varName="bone_pH_ery", k=7.10683);
    T.pH brain_pH_ery(varName="brain_pH_ery", k=7.17293);
    T.pH fat_pH_ery(varName="fat_pH_ery", k=7.23971);
    T.pH GITract_pH_ery(varName="GITract_pH_ery", k=7.09825);
    T.pH kidney_pH_ery(varName="kidney_pH_ery", k=6.99925);
    T.pH leftHeart_pH_ery(varName="leftHeart_pH_ery", k=7.06709);
    T.pH liver_pH_ery(varName="liver_pH_ery", k=7.06171);
    T.pH otherTissue_pH_ery(varName="otherTissue_pH_ery", k=7.09319);
    T.pH respiratoryMuscle_pH_ery(varName="respiratoryMuscle_pH_ery", k=7.13349);
    T.pH rightHeart_pH_ery(varName="rightHeart_pH_ery", k=7.04776);
    T.pH skeletalMuscle_pH_ery(varName="skeletalMuscle_pH_ery", k=7.27528);
    T.pH skin_pH_ery(varName="skin_pH_ery", k=7.16544);
    T.pH lungs_pH_plasma(varName="lungs_pH_plasma", k=7.39868);
    T.pH lungs_pH_ery(varName="lungs_pH_ery", k=7.18902);
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
    T.Temperature core_T(varName="HeatCore.Temp(C)", k=310.15);
    //Metabolism
    T.MolarFlowRate bone_CO2FromMetabolism(varName="Bone-CO2.OutflowBase", k=8.50147e-006);
    T.MolarFlowRate brain_CO2FromMetabolism(varName="Brain-CO2.OutflowBase", k=2.83333e-005);
    T.MolarFlowRate fat_CO2FromMetabolism(varName="Fat-CO2.OutflowBase", k=3.66452e-006);
    T.MolarFlowRate GITract_CO2FromMetabolism(varName="GITract-CO2.OutflowBase", k=1.11973e-005);
    T.MolarFlowRate kidney_CO2FromMetabolism(varName="Kidney-CO2.OutflowBase", k=1.20891e-005);
    T.MolarFlowRate leftHeart_CO2FromMetabolism(varName="LeftHeart-CO2.OutflowBase", k=1.57108e-005);
    T.MolarFlowRate liver_CO2FromMetabolism(varName="Liver-CO2.OutflowBase", k=1.77788e-005);
    T.MolarFlowRate otherTissue_CO2FromMetabolism(varName="OtherTissue-CO2.OutflowBase", k=4.71898e-006);
    T.MolarFlowRate respiratoryMuscle_CO2FromMetabolism(varName="RespiratoryMuscle-CO2.OutflowBase", k=3.3692e-006);
    T.MolarFlowRate rightHeart_CO2FromMetabolism(varName="RightHeart-CO2.OutflowBase", k=3.0215e-006);
    T.MolarFlowRate skeletalMuscle_CO2FromMetabolism(varName="SkeletalMuscle-CO2.OutflowBase", k=1.73808e-005);
    T.MolarFlowRate skin_CO2FromMetabolism(varName="Skin-CO2.OutflowBase", k=3.50002e-006);
    T.MolarFlowRate bone_O2Use(varName="Bone-Flow.O2Use", storeUnit="ml_STP/min", k=1.04914e-005);
    T.MolarFlowRate brain_O2Use(varName="Brain-Flow.O2Use", storeUnit="ml_STP/min", k=2.88455e-005);
    T.MolarFlowRate fat_O2Use(varName="Fat-Flow.O2Use", storeUnit="ml_STP/min", k=4.52227e-006);
    T.MolarFlowRate GITract_O2Use(varName="GITract-Flow.O2Use", storeUnit="ml_STP/min", k=1.38182e-005);
    T.MolarFlowRate kidney_O2Use(varName="Kidney-Flow.O2Use", storeUnit="ml_STP/min", k=1.49188e-005);
    T.MolarFlowRate leftHeart_O2Use(varName="LeftHeart-Flow.O2Use", storeUnit="ml_STP/min", k=1.93881e-005);
    T.MolarFlowRate liver_O2Use(varName="Liver-Flow.O2Use", storeUnit="ml_STP/min", k=2.19404e-005);
    T.MolarFlowRate otherTissue_O2Use(varName="OtherTissue-Flow.O2Use", storeUnit="ml_STP/min", k=5.82356e-006);
    T.MolarFlowRate respiratoryMuscle_O2Use(varName="RespiratoryMuscle-Flow.O2Use", storeUnit="ml_STP/min", k=4.15784e-006);
    T.MolarFlowRate rightHeart_O2Use(varName="RightHeart-Flow.O2Use", storeUnit="ml_STP/min", k=3.72874e-006);
    T.MolarFlowRate skeletalMuscle_O2Use(varName="SkeletalMuscle-Flow.O2Use", storeUnit="ml_STP/min", k=2.14493e-005);
    T.MolarFlowRate skin_O2Use(varName="Skin-Flow.O2Use", storeUnit="ml_STP/min", k=4.31927e-006);
    //Water
    T.Volume ExcessLungWater_Volume(varName="ExcessLungWater.Volume", k=0);
    T.Fraction Thorax_LungInflation(varName="Thorax.LungInflation", k=1);
    //Status
    T.Fraction RespiratoryMuscleFunctionEffect(varName="RespiratoryMuscle-Function.Effect", k=1);
    T.Fraction brain_FunctionEffect(varName="Brain-Function.Effect");
    //Setup
    T.Pressure pCO(varName="pCO", k=0);
    T.Pressure BarometerPressure(varName="Barometer.Pressure", k=101325);
    T.Temperature AmbientTemperature(varName="AmbientTemperature.Temp(C)", k=295.3722222222222);
    T.Fraction EnvironmentRelativeHumidity(varName="EnvironmentRelativeHumidity", k=0.7);
    T.Fraction AnesthesiaTidalVolume(varName="Anesthesia.TidalVolume", k=1);
    T.Power Exercise_Metabolism_MotionWatts(varName="Exercise-Metabolism.MotionWatts", storeUnit="W", k=0);
    //Hormones
    T.Fraction AlphaPool_Effect(varName="AlphaPool.Effect", k=0.999726);
    T.Fraction AlphaBlocade_Effect(varName="AlphaBlockade.Effect", k=1);
    //Nerves
    T.Frequency GangliaGeneral_NA(varName="GangliaGeneral.NA(Hz)", storeUnit="Hz", k=1.50811); 

equation
    connect(skeletalMuscle_pH_intracellular.y, busConnector.skeletalMuscle_pH_intracellular);
    connect(brain_pH_intracellular.y, busConnector.brain_pH_intracellular);
    connect(ExcessLungWater_Volume.y, busConnector.ExcessLungWater_Volume);
    connect(Thorax_LungInflation.y,busConnector.Thorax_LungInflation);
    connect(RespiratoryMuscleFunctionEffect.y, busConnector.respiratoryMuscle_FunctionEffect);
    connect(brain_FunctionEffect.y, busConnector.brain_FunctionEffect);
    connect( Exercise_Metabolism_MotionWatts.y,busConnector. Exercise_Metabolism_MotionWatts);
    connect(BarometerPressure.y, busConnector.BarometerPressure);
    connect(AmbientTemperature.y, busConnector.AmbientTemperature);
    connect(EnvironmentRelativeHumidity.y, busConnector.EnvironmentRelativeHumidity);
    connect(AnesthesiaTidalVolume.y,busConnector.AnesthesiaTidalVolume);
    connect(AlphaPool_Effect.y, busConnector.AlphaPool_Effect);
    connect(AlphaBlocade_Effect.y, busConnector.AlphaBlocade_Effect);
    connect(GangliaGeneral_NA.y, busConnector.GangliaGeneral_NA);
    connect(ctHb.y, busConnector.ctHb);
    connect(BloodVol_Hct.y, busConnector.BloodVol_Hct);
    connect(CardiacOutput.y, busConnector.CardiacOutput);
    connect(cDPG.y, busConnector.cDPG);
    connect(FMetHb.y, busConnector.FMetHb);
    connect(FHbF.y, busConnector.FHbF);
    connect(pCO.y, busConnector.pCO);
    connect(Artys_pH1.y, busConnector.Artys_pH);
    connect(core_T.y, busConnector.core_T);
    connect(Veins_pH.y, busConnector.Veins_pH);
    connect(AlveolarVentilated_BloodFlow.y, busConnector.AlveolarVentilated_BloodFlow);
    connect(lungs_pH_plasma.y, busConnector.lungs_pH_plasma);
    connect(lungs_pH_ery.y, busConnector.lungs_pH_ery);
    connect(ArtysVol.y, busConnector.ArtysVol);
    connect(VeinsVol.y, busConnector.VeinsVol);
    connect(bone_pH_plasma.y, busConnector.bone_pH_plasma);
    connect(brain_pH_plasma.y, busConnector.brain_pH_plasma);
    connect(fat_pH_plasma.y, busConnector.fat_pH_plasma);
    connect(GITract_pH_plasma.y, busConnector.GITract_pH_plasma);
    connect(kidney_pH_plasma.y, busConnector.kidney_pH_plasma);
    connect(leftHeart_pH_plasma.y, busConnector.leftHeart_pH_plasma);
    connect(liver_pH_plasma.y, busConnector.liver_pH_plasma);
    connect(otherTissue_pH_plasma.y, busConnector.otherTissue_pH_plasma);
    connect(respiratoryMuscle_pH_plasma.y, busConnector.respiratoryMuscle_pH_plasma);
    connect(rightHeart_pH_plasma.y, busConnector.rightHeart_pH_plasma);
    connect(skeletalMuscle_pH_plasma.y, busConnector.skeletalMuscle_pH_plasma);
    connect(skin_pH_plasma.y, busConnector.skin_pH_plasma);
    connect(bone_O2Use.y, busConnector.bone_O2Use);
    connect(brain_O2Use.y, busConnector.brain_O2Use);
    connect(fat_O2Use.y, busConnector.fat_O2Use);
    connect(GITract_O2Use.y, busConnector.GITract_O2Use);
    connect(kidney_O2Use.y, busConnector.kidney_O2Use);
    connect(leftHeart_O2Use.y, busConnector.leftHeart_O2Use);
    connect(liver_O2Use.y, busConnector.liver_O2Use);
    connect(otherTissue_O2Use.y, busConnector.otherTissue_O2Use);
    connect(respiratoryMuscle_O2Use.y, busConnector.respiratoryMuscle_O2Use);
    connect(rightHeart_O2Use.y, busConnector.rightHeart_O2Use);
    connect(skeletalMuscle_O2Use.y, busConnector.skeletalMuscle_O2Use);
    connect(skin_O2Use.y, busConnector.skin_O2Use);
    connect(bone_BloodFlow.y, busConnector.bone_BloodFlow);
    connect(brain_BloodFlow.y, busConnector.brain_BloodFlow);
    connect(fat_BloodFlow.y, busConnector.fat_BloodFlow);
    connect(GITract_BloodFlow.y, busConnector.GITract_BloodFlow);
    connect(kidney_BloodFlow.y, busConnector.kidney_BloodFlow);
    connect(leftHeart_BloodFlow.y, busConnector.leftHeart_BloodFlow);
    connect(otherTissue_BloodFlow.y, busConnector.otherTissue_BloodFlow);
    connect(respiratoryMuscle_BloodFlow.y, busConnector.respiratoryMuscle_BloodFlow);
    connect(rightHeart_BloodFlow.y, busConnector.rightHeart_BloodFlow);
    connect(skeletalMuscle_BloodFlow.y, busConnector.skeletalMuscle_BloodFlow);
    connect(skin_BloodFlow.y, busConnector.skin_BloodFlow);
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
    connect(HepaticArty_BloodFlow.y, busConnector.HepaticArty_BloodFlow);
    connect(Veins_pH_ery.y, busConnector.Veins_pH_ery);
    connect(Artys_pH_ery.y, busConnector.Artys_pH_ery);
    connect(bone_pH_ery.y, busConnector.bone_pH_ery);
    connect(brain_pH_ery.y, busConnector.brain_pH_ery);
    connect(fat_pH_ery.y, busConnector.fat_pH_ery);
    connect(GITract_pH_ery.y, busConnector.GITract_pH_ery);
    connect(kidney_pH_ery.y, busConnector.kidney_pH_ery);
    connect(leftHeart_pH_ery.y, busConnector.leftHeart_pH_ery);
    connect(liver_pH_ery.y, busConnector.liver_pH_ery);
    connect(otherTissue_pH_ery.y, busConnector.otherTissue_pH_ery);
    connect(respiratoryMuscle_pH_ery.y, busConnector.respiratoryMuscle_pH_ery);
    connect(rightHeart_pH_ery.y, busConnector.rightHeart_pH_ery);
    connect(skeletalMuscle_pH_ery.y, busConnector.skeletalMuscle_pH_ery);
    connect(skin_pH_ery.y, busConnector.skin_pH_ery);
    connect(bone_CO2FromMetabolism.y, busConnector.bone_CO2FromMetabolism);
    connect(brain_CO2FromMetabolism.y, busConnector.brain_CO2FromMetabolism);
    connect(fat_CO2FromMetabolism.y, busConnector.fat_CO2FromMetabolism);
    connect(GITract_CO2FromMetabolism.y, busConnector.GITract_CO2FromMetabolism);
    connect(kidney_CO2FromMetabolism.y, busConnector.kidney_CO2FromMetabolism);
    connect(leftHeart_CO2FromMetabolism.y, busConnector.leftHeart_CO2FromMetabolism);
    connect(liver_CO2FromMetabolism.y, busConnector.liver_CO2FromMetabolism);
    connect(otherTissue_CO2FromMetabolism.y, busConnector.otherTissue_CO2FromMetabolism);
    connect(respiratoryMuscle_CO2FromMetabolism.y, busConnector.respiratoryMuscle_CO2FromMetabolism);
    connect(rightHeart_CO2FromMetabolism.y, busConnector.rightHeart_CO2FromMetabolism);
    connect(skeletalMuscle_CO2FromMetabolism.y, busConnector.skeletalMuscle_CO2FromMetabolism);
    connect(skin_CO2FromMetabolism.y, busConnector.skin_CO2FromMetabolism);
end Variables;
end Inputs;

model Test  
  Physiolibrary.Types.BusConnector busConnector;
  Physiomodel.Gases.Gases gases(
    oxygen(
      tissuesO2(
        skeletalMuscleO2(
          O2Tissue(
            a(start=0.518),
            pCO2(displayUnit="mmHg"),
            sO2CO(start=0.367),
            pO2(start=5332.8954966, displayUnit="mmHg")
          )
        )
      )
    )
  );
  Inputs.Input inputs;
equation
  connect(inputs.busConnector, busConnector);
  connect(busConnector, gases.busConnector);
end Test;
