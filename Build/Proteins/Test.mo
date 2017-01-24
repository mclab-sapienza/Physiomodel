package Inputs
  extends Physiolibrary.Types.IO_Bus;
  redeclare model extends Variables
    //Setup
    T.MolarFlowRate Transfusion_ProteinRate(varName="Transfusion.ProteinRate", storeUnit="mmol/min", k=0);
    T.MolarFlowRate IVDrip_ProteinRate(varName="IVDrip.ProteinRate", storeUnit="mmol/min", k=0);
    T.MolarFlowRate Hemorrhage_ProteinRate(varName="Hemorrhage.ProteinRate", storeUnit="mmol/min",  k=0);
    //Water
    T.Volume PeritoneumSpace_Vol(varName="PeritoneumSpace.Volume", k=1e-017);
    T.Volume BladderVolume_Mass(varName="BladderVolume.Mass", k=0.0002);
    T.Volume PlasmaVol(varName="PlasmaVol.Vol", k=0.00302);
    T.VolumeFlowRate PeritoneumSpace_Change(varName="PeritoneumSpace.Change");
    T.Volume UT_InterstitialWater_Vol(varName="UT_InterstitialWater.Vol", k=0.00226812);
    T.Volume MT_InterstitialWater_Vol(varName="MT_InterstitialWater.Vol", k=0.00567029);
    T.Volume LT_InterstitialWater_Vol(varName="LT_InterstitialWater.Vol", k=0.00340217);
    T.VolumeFlowRate UT_LymphFlow(varName="UT_LymphWater.Rate", k=6.2355e-009);
    T.VolumeFlowRate MT_LymphFlow(varName="MT_LymphWater.Rate", k=1.2816e-008);
    T.VolumeFlowRate LT_LymphFlow(varName="LT_LymphWater.Rate", k=2.05388e-008);
  equation
    //Setup
    connect(Transfusion_ProteinRate.y, busConnector.Transfusion_ProteinRate); 
    connect(IVDrip_ProteinRate.y, busConnector.IVDripProteinRate);
    connect(Hemorrhage_ProteinRate.y, busConnector.Hemorrhage_ProteinRate);
    //Water
    connect(PeritoneumSpace_Vol.y, busConnector.PeritoneumSpace_Vol);
    connect(BladderVolume_Mass.y, busConnector.BladderVolume_Mass);
    connect(PlasmaVol.y, busConnector.PlasmaVol);
    connect(PeritoneumSpace_Change.y, busConnector.PeritoneumSpace_Change);
    connect(UT_InterstitialWater_Vol.y, busConnector.UT_InterstitialWater_Vol);
    connect(MT_InterstitialWater_Vol.y, busConnector.MT_InterstitialWater_Vol);
    connect(LT_InterstitialWater_Vol.y, busConnector.LT_InterstitialWater_Vol);
    connect(UT_LymphFlow.y, busConnector.UT_LymphFlow);
    connect(MT_LymphFlow.y, busConnector.MT_LymphFlow);
    connect(LT_LymphFlow.y, busConnector.LT_LymphFlow);
  end Variables;
end Inputs;

model Test  
  Physiolibrary.Types.BusConnector busConnector;
  Physiomodel.Proteins.Proteins proteins;
  Inputs.Input inputs;
equation
  connect(inputs.busConnector, busConnector);
  connect(busConnector, proteins.busConnector);
end Test;
