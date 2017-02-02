package Inputs
  extends Physiolibrary.Types.IO_Bus;
  redeclare model extends Variables
    //Water
    T.Volume ExcessLungWater_Volume(varName="ExcessLungWater.Volume", k=0);
    T.Fraction Thorax_LungInflation(varName="Thorax.LungInflation", k=1);
    //Status
    T.Fraction RespiratoryMuscleFunctionEffect(varName="RespiratoryMuscle-Function.Effect", k=1);
    T.Fraction brain_FunctionEffect(varName="Brain-Function.Effect");
    //Heat
    T.Temperature core_T(varName="HeatCore.Temp(C)", k=310.15);
    //Setup
    T.Pressure BarometerPressure(varName="Barometer.Pressure", k=101325);
    T.Temperature AmbientTemperature(varName="AmbientTemperature.Temp(C)", k=295.3722222222222);
    T.Fraction EnvironmentRelativeHumidity(varName="EnvironmentRelativeHumidity", k=0.7);
    T.Fraction AnesthesiaTidalVolume(varName="Anesthesia.TidalVolume", k=1);
    T.Power Exercise_Metabolism_MotionWatts(varName="Exercise-Metabolism.MotionWatts", storeUnit="W", k=0);
    //Hormones
    T.Fraction AlphaPool_Effect(varName="AlphaPool.Effect", k=0.999726);
    T.Fraction AlphaBlocade_Effect(varName="AlphaBlockade.Effect", k=1);
    //Electrolytes
    T.pH skeletalMuscle_pH_intracellular(varName="SkeletalMuscle-Ph.Ph", k=7.39907);
    T.pH brain_pH_intracellular(varName="Brain-Ph.Ph", k=7.08);
    T.pH Artys_pH1(varName="BloodPh.ArtysPh");
    //Nerves
    T.Frequency GangliaGeneral_NA(varName="GangliaGeneral.NA(Hz)", storeUnit="Hz", k=1.50811); 
    //Gases
    T.Pressure O2Artys_PO2(varName="PO2Artys.Pressure", k=12533.6);
  equation
    //Gases
    connect(O2Artys_PO2.y, busConnector.O2Artys_PO2);
    //Electrolytes
    connect(skeletalMuscle_pH_intracellular.y, busConnector.skeletalMuscle_pH_intracellular);
    connect(Artys_pH1.y, busConnector.Artys_pH);
    connect(brain_pH_intracellular.y, busConnector.brain_pH_intracellular);
    //Water
    connect(ExcessLungWater_Volume.y, busConnector.ExcessLungWater_Volume);
    connect(Thorax_LungInflation.y,busConnector.Thorax_LungInflation);
    //Status
    connect(RespiratoryMuscleFunctionEffect.y, busConnector.RespiratoryMuscleFunctionEffect);
    connect(brain_FunctionEffect.y, busConnector.brain_FunctionEffect);
    //Heat
    connect(core_T.y, busConnector.core_T);
    //Setup
    connect( Exercise_Metabolism_MotionWatts.y,busConnector. Exercise_Metabolism_MotionWatts);
    connect(BarometerPressure.y, busConnector.BarometerPressure);
    connect(AmbientTemperature.y, busConnector.AmbientTemperature);
    connect(EnvironmentRelativeHumidity.y, busConnector.EnvironmentRelativeHumidity);
    connect(AnesthesiaTidalVolume.y,busConnector.AnesthesiaTidalVolume);
    //Hormones
    connect(AlphaPool_Effect.y, busConnector.AlphaPool_Effect);
    connect(AlphaBlocade_Effect.y, busConnector.AlphaBlocade_Effect);
    //Nerves
    connect(GangliaGeneral_NA.y, busConnector.GangliaGeneral_NA);
  end Variables;
end Inputs;

model Test  
  Physiolibrary.Types.BusConnector busConnector;
  Physiomodel.Gases.Ventilation.Ventilation ventilation;
  Inputs.Input inputs;
equation
  connect(inputs.busConnector, busConnector);
  connect(busConnector, ventilation.busConnector);
end Test;
