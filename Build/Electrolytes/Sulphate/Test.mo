package Inputs
  extends Physiolibrary.Types.IO_Bus;
  redeclare model extends Variables
    //Water
    T.VolumeFlowRate BladderVoidFlow(varName="BladderVoidFlow", k=1.7e-008);
    T.Volume BladderVolume_Mass(varName="BladderVolume.Mass", k=0.0002);
    T.Volume ECFV_Vol(varName="ECFV.Vol", k=0.014361);
    T.VolumeFlowRate GlomerulusFiltrate_GFR(varName="GlomerulusFiltrate.GFR", k=2.15828e-006);
    //Metabolism
    T.Concentration Leptin(varName="LeptinPool.[Leptin(nG/mL)]", storeUnit="ng/ml", unitConversions = Physiomodel.Substances.Leptin.unitConversions, k=4.96886e-007);
    //Electrolytes
    T.VolumeDensityOfCharge BloodIons_Cations(varName="BloodIons.Cations", k=1.42544e+007);
    T.VolumeDensityOfCharge BloodIons_ProteinAnions(varName="BloodIons.Protein", k=1.45534e+006);
  equation
    connect(Leptin.y, busConnector.Leptin);
    connect(BladderVoidFlow.y, busConnector.BladderVoidFlow);
    connect(BladderVolume_Mass.y, busConnector.BladderVolume_Mass);
    connect(ECFV_Vol.y, busConnector.ECFV_Vol);
    connect(GlomerulusFiltrate_GFR.y, busConnector.GlomerulusFiltrate_GFR);
    connect(BloodIons_ProteinAnions.y, busConnector.BloodIons_ProteinAnions);
    connect(BloodIons_Cations.y, busConnector.BloodIons_Cations);
  end Variables;
end Inputs;

model Test  
  Physiolibrary.Types.BusConnector busConnector;
  Physiomodel.Electrolytes.Sulphate.Sulphate2 sulphate;
  Inputs.Input inputs;
equation
  connect(inputs.busConnector, busConnector);
  connect(busConnector, sulphate.busConnector);
end Test;
