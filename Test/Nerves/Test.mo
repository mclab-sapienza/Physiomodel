package Inputs
  extends Physiolibrary.Types.IO_Bus;
  redeclare model extends Variables
    //CardioVascular
    T.Pressure CarotidSinusArteryPressure(varName="CarotidSinus.Pressure", k=12816.1);
    T.Fraction AtrialLowPressureReceptors_NA(varName="LowPressureReceptors.NA", k=1.0361776);
    //Metabolism
    T.Fraction brain_Fuel_FractUseDelay(varName="Brain-Fuel.FractUseDelay", k=1);
    //Setup
    T.Power ExerciseMetabolism_TotalWatts(varName="Exercise-Metabolism.TotalWatts", storeUnit="W", k=0);
    //Electrolytes
    T.pH skeletalMuscle_pH_intracellular(varName="SkeletalMuscle-Ph.Ph", k=7.39907);
    //Hormones
    T.Concentration A2Pool(varName="A2Pool.[A2(pMol/L)]", storeUnit="pmol/l", k=1.90299e-008);
  equation
    //CardioVascular
    connect(CarotidSinusArteryPressure.y, busConnector.CarotidSinusArteryPressure);
    connect(AtrialLowPressureReceptors_NA.y, busConnector.AtrialLowPressureReceptors_NA);
    //Metabolism
    connect(brain_Fuel_FractUseDelay.y, busConnector.brain_Fuel_FractUseDelay);
    //Setup
    connect(ExerciseMetabolism_TotalWatts.y,busConnector.ExerciseMetabolism_TotalWatts);
    //Electrolytes
    connect(skeletalMuscle_pH_intracellular.y, busConnector.skeletalMuscle_pH_intracellular);
    //Hormones
    connect(A2Pool.y, busConnector.Angiotensin2);
  end Variables;
end Inputs;

model Test  
  Physiolibrary.Types.BusConnector busConnector;
  Physiomodel.Nerves.Nerves nerves;
  Inputs.Input inputs;
equation
  connect(inputs.busConnector, busConnector);
  connect(busConnector, nerves.busConnector);
end Test;
