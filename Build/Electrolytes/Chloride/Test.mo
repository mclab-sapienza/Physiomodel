package Inputs
  extends Physiolibrary.Types.IO_Bus;
  redeclare model extends Variables
    //Water
    T.VolumeFlowRate SweatGland_H2ORate(varName="SweatGland.H2ORate", k=0);
    T.Volume GILumenVolume_Mass(varName="GILumenVolume.Mass", k=0.001);
    T.VolumeFlowRate BladderVoidFlow(varName="BladderVoidFlow", k=1.7e-008);
    T.Volume BladderVolume_Mass(varName="BladderVolume.Mass", k=0.0002);
    T.Volume ECFV_Vol(varName="ECFV.Vol", k=0.014361);
    //Hormones
    T.Concentration AldoPool_Aldo(varName="AldoPool.[Aldo(pMol/L)]", storeUnit="pmol/l"); 
    //Setup
    T.MolarFlowRate IVDrip_ClRate(varName="IVDrip.ClRate", k=0);
    T.MolarFlowRate Transfusion_ClRate(varName="Transfusion.ClRate", k=0);
    T.MolarFlowRate Hemorrhage_ClRate(varName="Hemorrhage.ClRate", k=0);
    T.MolarFlowRate DialyzerActivity_Cl_Flux(varName="DialyzerActivity.Cl+Flux", k=0);
    T.MolarFlowRate GILumenVomitus_ClLoss(varName="GILumenVomitus.Cl-Loss", k=0);
    //Metabolism
    T.Concentration Leptin(varName="LeptinPool.[Leptin(nG/mL)]", storeUnit="ng/ml", unitConversions = Physiomodel.Substances.Leptin.unitConversions, k=4.96886e-007);
    T.MolarFlowRate CD_KA_Outflow(varName="CD_KA.Outflow", storeUnit="mmol/min", k=0);
    //Status
    //CardioVascularSystem
    //Electrolytes
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant DT_Na_Outflow(k=0.48247099389415);
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant CD_PO4_mEq_Outflow(k=3.84862e-007);
    T.MolarFlowRate CD_Na_Outflow(varName="CD_Na.Outflow", k=2.09015e-006);
    T.MolarFlowRate CD_NH4_Outflow(varName="CD_NH4.Outflow", k=4.69907e-007);
    T.MolarFlowRate CD_K_Outflow(varName="CD_K.Outflow", k=8.95573e-007);
    T.MolarFlowRate CD_SO4_Outflow(varName="CD_SO4_Outflow", k=3.16945e-007);
    T.MolarFlowRate CD_PO4_Outflow(varName="CD_PO4.Outflow", k=3.84862e-007);
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant CollectingDuct_NetSumCats(k=0.138798773009742);
    T.pH Artys_pH1(varName="BloodPh.ArtysPh");
  equation
    connect(IVDrip_ClRate.y, busConnector.IVDrip_ClRate);
    connect(Transfusion_ClRate.y, busConnector.Transfusion_ClRate); 
    connect(Hemorrhage_ClRate.y, busConnector.Hemorrhage_ClRate);
    connect(DialyzerActivity_Cl_Flux.y, busConnector.DialyzerActivity_Cl_Flux);
    connect(SweatGland_H2ORate.y, busConnector.SweatGland_H2ORate);
    connect(AldoPool_Aldo.y, busConnector.Aldosterone);
    connect(CD_Na_Outflow.y, busConnector.CD_Na_Outflow);
    connect(CD_NH4_Outflow.y, busConnector.CD_NH4_Outflow);
    connect(CD_K_Outflow.y, busConnector.CD_K_Outflow);
    connect(CD_PO4_mEq_Outflow.y, busConnector.CD_PO4_mEq_Outflow);
    connect(CD_SO4_Outflow.y, busConnector.CD_SO4_Outflow);
    connect(CD_KA_Outflow.y, busConnector.CD_KA_Outflow);
    connect(CD_PO4_Outflow.y, busConnector.CD_PO4_Outflow);
    connect(CollectingDuct_NetSumCats.y, busConnector.CollectingDuct_NetSumCats);
    connect(Leptin.y, busConnector.Leptin);
    connect(GILumenVolume_Mass.y, busConnector.GILumenVolume_Mass);
    connect(BladderVoidFlow.y, busConnector.BladderVoidFlow);
    connect(BladderVolume_Mass.y, busConnector.BladderVolume_Mass);
    connect(ECFV_Vol.y, busConnector.ECFV_Vol);
    connect(GILumenVomitus_ClLoss.y,busConnector.GILumenVomitus_ClLoss);
    connect(Artys_pH1.y, busConnector.Artys_pH);
  end Variables;
end Inputs;

model Test  
  Physiolibrary.Types.BusConnector busConnector;
  Physiomodel.Electrolytes.Chloride.Chloride2 chloride;
  Inputs.Input inputs;
equation
  connect(inputs.busConnector, busConnector);
  connect(busConnector, chloride.busConnector);
end Test;
