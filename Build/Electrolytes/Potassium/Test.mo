package Inputs
  extends Physiolibrary.Types.IO_Bus;
  redeclare model extends Variables
    //Water
    T.VolumeFlowRate SweatGland_H2ORate(varName="SweatGland.H2ORate", k=0);
    T.Volume GILumenVolume_Mass(varName="GILumenVolume.Mass", k=0.001);
    T.VolumeFlowRate BladderVoidFlow(varName="BladderVoidFlow", k=1.7e-008);
    T.Volume BladderVolume_Mass(varName="BladderVolume.Mass", k=0.0002);
    T.Volume ECFV_Vol(varName="ECFV.Vol", k=0.014361);
    T.Volume CellH2O_Vol(varName="CellH2O.Vol", k=0.0249149);
    //Hormones
    T.Concentration AldoPool_Aldo(varName="AldoPool.[Aldo(pMol/L)]", storeUnit="pmol/l"); 
    //Setup
    T.MolarFlowRate IVDrip_KRate(varName="IVDrip.KRate", k=0);
    T.MolarFlowRate Transfusion_KRate(varName="Transfusion.KRate", k=0);
    T.MolarFlowRate Hemorrhage_KRate(varName="Hemorrhage.KRate", k=0);
    T.MolarFlowRate DialyzerActivity_K_Flux(varName="DialyzerActivity.K+Flux", k=0);
    T.MolarFlowRate GILumenDiarrhea_KLoss(varName="GILumenDiarrhea.K+Loss", k=0);
    T.MassConcentration ThiazidePool_Thiazide_conc(varName="ThiazidePool.[Thiazide]", storeUnit="mg/l", k=0);
    //Metabolism
    T.Concentration Leptin(varName="LeptinPool.[Leptin(nG/mL)]", storeUnit="ng/ml", unitConversions = Physiomodel.Substances.Leptin.unitConversions, k=4.96886e-007);
    T.MolarFlowRate skeletalMuscle_GlucoseToCellStorageFlow(varName="SkeletalMuscle-Glycogen.Synthesis", storeUnit="mg/min", unitConversions = Physiomodel.Substances.Glucose.unitConversions, k=0);
    T.MolarFlowRate liver_GlucoseToCellStorageFlow(varName="LM_Glycogen.Gain", storeUnit="mg/min", unitConversions = Physiomodel.Substances.Glucose.unitConversions, k=1.36956e-005);
    T.MolarFlowRate respiratoryMuscle_GlucoseToCellStorageFlow(varName="RespiratoryMuscle-Glycogen.Synthesis", storeUnit="mg/min", unitConversions = Physiomodel.Substances.Glucose.unitConversions, k=0);
    //Status
    T.Fraction KidneyFunctionEffect(varName="Kidney-Function.Effect", k=1);
    //Electrolytes
    T.Concentration KPool_per_liter(varName="KPool.[K+(mEq/L)]", k=4.4);
        Physiolibrary.Types.Constants.DeprecatedUntypedConstant DT_Na_Outflow(k=0.48247099389415);
  equation
    connect(IVDrip_KRate.y, busConnector.IVDrip_KRate);
    connect(Transfusion_KRate.y, busConnector.Transfusion_KRate); 
    connect(Hemorrhage_KRate.y, busConnector.Hemorrhage_KRate);
    connect(DialyzerActivity_K_Flux.y, busConnector.DialyzerActivity_K_Flux);
    connect(SweatGland_H2ORate.y, busConnector.SweatGland_H2ORate);
    connect(AldoPool_Aldo.y, busConnector.Aldosterone);
    connect(GILumenDiarrhea_KLoss.y, busConnector.GILumenDiarrhea_KLoss);
    connect(Leptin.y, busConnector.Leptin);
    connect(GILumenVolume_Mass.y, busConnector.GILumenVolume_Mass);
    connect(BladderVoidFlow.y, busConnector.BladderVoidFlow);
    connect(BladderVolume_Mass.y, busConnector.BladderVolume_Mass);
    connect(KidneyFunctionEffect.y, busConnector.KidneyFunctionEffect);
    connect(ThiazidePool_Thiazide_conc.y, busConnector.ThiazidePool_Thiazide_conc);
    connect(KPool_per_liter.y, busConnector.KPool);
    connect(ECFV_Vol.y, busConnector.ECFV_Vol);
    connect(DT_Na_Outflow.y, busConnector.DT_Na_Outflow);
    connect(CellH2O_Vol.y, busConnector.CellH2O_Vol);
    connect(skeletalMuscle_GlucoseToCellStorageFlow.y, busConnector.skeletalMuscle_GlucoseToCellStorageFlow);
    connect(liver_GlucoseToCellStorageFlow.y, busConnector.liver_GlucoseToCellStorageFlow);
    connect(respiratoryMuscle_GlucoseToCellStorageFlow.y, busConnector.respiratoryMuscle_GlucoseToCellStorageFlow);
  end Variables;
end Inputs;

model Test  
  Physiolibrary.Types.BusConnector busConnector;
  Physiomodel.Electrolytes.Potassium.Potassium potassium;
  Inputs.Input inputs;
equation
  connect(inputs.busConnector, busConnector);
  connect(busConnector, potassium.busConnector);
end Test;
