package Inputs
  extends Physiolibrary.Types.IO_Bus;
  redeclare model extends Variables
    //CardioVascular
    T.VolumeFlowRate skin_BloodFlow(varName="Skin-Flow.BloodFlow", k=2.68538e-006);
    T.Pressure SystemicArtys_Pressure(varName="SystemicArtys.Pressure", k=12816.1);
    T.Pressure SystemicVeins_Pressure(varName="SystemicVeins.Pressure", k=902.119);
    T.HydraulicConductance skin_conductanceWithoutTermoregulationEffect(varName="skin_conductanceWithoutTermoregulationEffect", k=1.97698e-010);
    T.VolumeFlowRate skeletalMuscle_BloodFlow(varName="SkeletalMuscle-Flow.BloodFlow", k=1.072e-005);
    //Water
    T.VolumeFlowRate BladderVoidFlow(varName="BladderVoidFlow", k=1.7e-008);
    T.Volume BladderVolume_Mass(varName="BladderVolume.Mass", k=0.0002);
    T.VolumeFlowRate GILumenVolume_Absorption(varName="GILumenVolume.Absorption", k=2.48233e-008);
    T.VolumeFlowRate GILumenVolume_Intake(varName="GILumenVolume.Intake", k=2.48233e-008);
    T.Volume GILumenVolume_Mass(varName="GILumenVolume.Mass", k=0.001);
    T.VolumeFlowRate CD_H2O_Outflow(varName="CD_H2O.Outflow", k=1.2982e-008);
    //Setup
    T.Temperature DietGoalH2O_DegK(varName="DietGoalH2O.DegK",storeUnit="K", k=310.15);
    T.Mass skinSizeMass(varName="Skin-Size.Mass", k=2.244);
    T.Mass skeletalMuscle_SizeMass(varName="SkeletalMuscle-Size.Mass", storeUnit="g", k=27.4);
    T.Fraction EnvironmentRelativeHumidity(varName="EnvironmentRelativeHumidity", k=0.7);
    T.Temperature AmbientTemperature(varName="AmbientTemperature.Temp(C)", k=295.3722222222222);
    T.Velocity Wind_MPH(varName="Wind.MPH",storeUnit="MPH", k=0);
    T.Pressure BarometerPressure(varName="Barometer.Pressure", k=101325);
    T.Mass WeightCore(varName="Weight.Core", k=41.7573);
    //Status
    T.Fraction brain_FunctionEffect(varName="Brain-Function.Effect", k=1);
    T.Fraction skin_FunctionEffect(varName="Skin-Function.Effect", k=0.928306);
    //Hormones
    T.Fraction AlphaPool_Effect(varName="AlphaPool.Effect", k=0.999726);
    T.Fraction AlphaBlocade_Effect(varName="AlphaBlockade.Effect", k=1);
    //Nerves
    T.Frequency GangliaGeneral_NA(varName="GangliaGeneral.NA(Hz)", k=1.50811);
    //Metabolism
    T.HeatFlowRate MetabolismCaloriesUsed_SkinHeat(varName="Metabolism-CaloriesUsed.SkinHeat",storeUnit="cal/min", k=1.96227);
    T.HeatFlowRate MetabolismCaloriesUsed_CoreHeat(varName="Metabolism-CaloriesUsed.CoreHeat",storeUnit="cal/min", k=55.6128);
    T.HeatFlowRate skeletalMuscle_producedHeat(storeUnit="cal/min", varName="Metabolism-CaloriesUsed.SkeletalMuscleHeat", k=9.7445);
    //Gases
    T.VolumeFlowRate BreathingTotalVentilation(varName="Breathing.TotalVentilation", k=0.000102546);
  equation
    //CardioVascular
    connect(skin_BloodFlow.y, busConnector.skin_BloodFlow);
    connect(SystemicArtys_Pressure.y, busConnector.SystemicArtys_Pressure);
    connect(SystemicVeins_Pressure.y, busConnector.SystemicVeins_Pressure);
    connect(skin_conductanceWithoutTermoregulationEffect.y, busConnector.skin_conductanceWithoutTermoregulationEffect);
    connect(skeletalMuscle_BloodFlow.y, busConnector.skeletalMuscle_BloodFlow);
    //Water
    connect(BladderVoidFlow.y, busConnector.BladderVoidFlow);
    connect(BladderVolume_Mass.y, busConnector.BladderVolume_Mass);
    connect(GILumenVolume_Absorption.y, busConnector.GILumenVolume_Absorption);
    connect(GILumenVolume_Intake.y, busConnector.GILumenVolume_Intake);
    connect(GILumenVolume_Mass.y, busConnector.GILumenVolume_Mass);
    connect(CD_H2O_Outflow.y, busConnector.CD_H2O_Outflow);
    //Setup
    connect(DietGoalH2O_DegK.y,busConnector.DietGoalH2O_DegK);
    connect(skinSizeMass.y,busConnector.skinSizeMass);
    connect(skeletalMuscle_SizeMass.y,busConnector.skeletalMuscle_SizeMass);
    connect(EnvironmentRelativeHumidity.y, busConnector.EnvironmentRelativeHumidity);
    connect(AmbientTemperature.y, busConnector.AmbientTemperature);
    connect(Wind_MPH.y, busConnector.WindSpeed);
    connect(BarometerPressure.y,busConnector.BarometerPressure);
    connect(WeightCore.y,busConnector.WeightCore);
    //Status
    connect(brain_FunctionEffect.y, busConnector.brain_FunctionEffect);
    connect(skin_FunctionEffect.y, busConnector.skin_FunctionEffect);
    //Hormones
    connect(AlphaPool_Effect.y, busConnector.AlphaPool_Effect);
    connect(AlphaBlocade_Effect.y, busConnector.AlphaBlocade_Effect);
    //Nerves
    connect(GangliaGeneral_NA.y, busConnector.GangliaGeneral_NA);
    //Metabolism
    connect(MetabolismCaloriesUsed_SkinHeat.y, busConnector.MetabolismCaloriesUsed_SkinHeat);
    connect(MetabolismCaloriesUsed_CoreHeat.y, busConnector.MetabolismCaloriesUsed_CoreHeat);
    connect(skeletalMuscle_producedHeat.y, busConnector.skeletalMuscle_heatProduction);
    //Gases
    connect(BreathingTotalVentilation.y, busConnector.BreathingTotalVentilation);
  end Variables;
end Inputs;

model Test  
  Physiolibrary.Types.BusConnector busConnector;
  Physiomodel.Heat.Heat2 heat;
  Inputs.Input inputs;
equation
  connect(inputs.busConnector, busConnector);
  connect(busConnector, heat.busConnector);
end Test;
