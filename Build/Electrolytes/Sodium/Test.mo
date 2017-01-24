package Inputs
  extends Physiolibrary.Types.IO_Bus;
  redeclare model extends Variables
    //Water
    T.VolumeFlowRate SweatGland_H2ORate(varName="SweatGland.H2ORate", k=0);
    T.Volume GILumenVolume_Mass(varName="GILumenVolume.Mass", k=0.001);
    T.VolumeFlowRate BladderVoidFlow(varName="BladderVoidFlow", k=1.7e-008);
    T.Volume BladderVolume_Mass(varName="BladderVolume.Mass", k=0.0002);
    T.VolumeFlowRate GlomerulusFiltrate_GFR(varName="GlomerulusFiltrate.GFR", k=2.15828e-006);
    T.Fraction KidneyAlpha_PT_NA(varName="Kidney-Alpha.PT_NA", k=1);
    T.Volume Medulla_Volume(varName="Medulla.Volume", k=3.1e-005);
    T.VolumeFlowRate LH_H2O_Outflow(varName="LH_H2O.Outflow", k=6.5243e-007);
    T.Volume ECFV_Vol(varName="ECFV.Vol", k=0.014361);
    //Hormones
    T.Concentration AldoPool_Aldo(varName="AldoPool.[Aldo(pMol/L)]", storeUnit="pmol/l"); 
    T.Concentration A2Pool(varName="A2Pool.[A2(pMol/L)]", storeUnit="pmol/l", k=1.90299e-008);
    T.Concentration ANPPool_ANP(varName="ANPPool.[ANP]", storeUnit="pmol/l", y(nominal=1e-8), k=1.99078e-008);
    //Setup
    T.MolarFlowRate IVDrip_NaRate(varName="IVDrip.NaRate", k=0);
    T.MolarFlowRate Transfusion_NaRate(varName="Transfusion.NaRate", k=0);
    T.MolarFlowRate Hemorrhage_NaRate(varName="Hemorrhage.NaRate", k=0);
    T.MolarFlowRate DialyzerActivity_Na_Flux(varName="DialyzerActivity.Na+Flux", k=0);
    T.MolarFlowRate GILumenDiarrhea_NaLoss(varName="GILumenDiarrhea.Na+Loss", k=0);
    T.MolarFlowRate FurosemidePool_Furosemide_conc(varName="FurosemidePool.[Furosemide]", storeUnit="mg/l", unitConversions=Physiomodel.Substances.Furosemide.unitConversions, k=0);
    T.Fraction Kidney_NephronCount_Filtering_xNormal(varName="Kidney-NephronCount.Filtering(xNormal)", k=1);
    T.MassConcentration ThiazidePool_Thiazide_conc(varName="ThiazidePool.[Thiazide]", storeUnit="mg/l", k=0);
    //Metabolism
    T.Concentration Leptin(varName="LeptinPool.[Leptin(nG/mL)]", storeUnit="ng/ml", unitConversions = Physiomodel.Substances.Leptin.unitConversions, k=4.96886e-007);
    //Status
    T.Fraction KidneyFunctionEffect(varName="Kidney-Function.Effect", k=1);
    //CardioVascularSystem
    T.Pressure NephronIFP_Pressure(varName="NephronIFP.Pressure", k=526.681);
    T.VolumeFlowRate VasaRecta_Outflow(varName="VasaRecta.Outflow", k=4.05507e-007);
    //Electrolytes
    T.VolumeDensityOfCharge BloodIons_ProteinAnions(varName="BloodIons.Protein", k=1.45534e+006);
    T.Concentration KPool_per_liter(varName="KPool.[K+(mEq/L)]", k=4.4);
  equation
    connect(SweatGland_H2ORate.y, busConnector.SweatGland_H2ORate);
    connect(AldoPool_Aldo.y, busConnector.Aldosterone);
    connect(IVDrip_NaRate.y, busConnector.IVDrip_NaRate);
    connect(Transfusion_NaRate.y, busConnector.Transfusion_NaRate);
    connect(Hemorrhage_NaRate.y, busConnector.Hemorrhage_NaRate);
    connect(DialyzerActivity_Na_Flux.y, busConnector.DialyzerActivity_Na_Flux);
    connect(GILumenDiarrhea_NaLoss.y, busConnector.GILumenDiarrhea_NaLoss);
    connect(Leptin.y, busConnector.Leptin);
    connect(GILumenVolume_Mass.y, busConnector.GILumenVolume_Mass);
    connect(BladderVoidFlow.y, busConnector.BladderVoidFlow);
    connect(BladderVolume_Mass.y, busConnector.BladderVolume_Mass);
    connect(GlomerulusFiltrate_GFR.y, busConnector.GlomerulusFiltrate_GFR);
    connect(KidneyFunctionEffect.y, busConnector.KidneyFunctionEffect);
    connect(KidneyAlpha_PT_NA.y, busConnector.KidneyAlpha_PT_NA);
    connect(NephronIFP_Pressure.y, busConnector.NephronIFP_Pressure);
    connect(FurosemidePool_Furosemide_conc.y, busConnector.FurosemidePool_Furosemide_conc);
    connect(Kidney_NephronCount_Filtering_xNormal.y, busConnector.Kidney_NephronCount_Filtering_xNormal);
    connect(ThiazidePool_Thiazide_conc.y, busConnector.ThiazidePool_Thiazide_conc);
    connect(VasaRecta_Outflow.y, busConnector.VasaRecta_Outflow);
    connect(Medulla_Volume.y, busConnector.Medulla_Volume);
    connect(LH_H2O_Outflow.y, busConnector.LH_H2O_Outflow);
    connect(BloodIons_ProteinAnions.y, busConnector.BloodIons_ProteinAnions);
    connect(KPool_per_liter.y, busConnector.KPool);
    connect(A2Pool.y, busConnector.Angiotensin2);
    connect(ANPPool_ANP.y, busConnector.ANP);
    connect(ECFV_Vol.y, busConnector.ECFV_Vol);
  end Variables;
end Inputs;

model Test  
  Physiolibrary.Types.BusConnector busConnector;
  Physiomodel.Electrolytes.Sodium.Sodium sodium;
  Inputs.Input inputs;
equation
  connect(inputs.busConnector, busConnector);
  connect(busConnector, sodium.busConnector);
end Test;
