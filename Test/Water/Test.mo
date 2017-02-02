package Inputs
  extends Physiolibrary.Types.IO_Bus;
  redeclare model extends Variables
    //Setup
    T.VolumeFlowRate IVDrip_H2ORate(varName="IVDrip.H2ORate", k=0);
    T.VolumeFlowRate Transfusion_PlasmaRate1(varName="Transfusion.H2ORate", k=0);
    T.VolumeFlowRate Hemorrhage_PlasmaRate1(varName="Hemorrhage.H2ORate", k=0);
    T.Fraction Kidney_NephronCount_Total_xNormal(varName="Kidney-NephronCount.Total(xNormal)", k=1);
    T.VolumeFlowRate GILumenVomitus_H2OTarget(varName="GILumenVomitus.H2OTarget", k=0);
    T.VolumeFlowRate GILumenDiarrhea_H2OTarget(varName="GILumenDiarrhea.H2OTarget", k=0);
    T.AmountOfSubstance GILumenFiber(varName="GILumenVolume.[Fiber]", storeUnit="osm", k=0.043);
    T.Fraction LegMusclePump_Effect(varName="LegMusclePump.Effect", k=1);
    T.VolumeFlowRate DialyzerActivity_UltrafiltrationRate(varName="DialyzerActivity.UltrafiltrationRate", k=0);
    T.Pressure BarometerPressure(varName="Barometer.Pressure", k=101325);
    T.Pressure EnvironmentRelativeHumidity(varName="EnvironmentRelativeHumidity", k=0.7);
    T.Pressure EnvironmentRelativeHumidity_VaporPressure(varName="RelativeHumidity.VaporPressure", storeUnit="mmHg", k=0.7);
    //Electrolytes
    T.MolarFlowRate DT_Na_Outflow(varName="DT_Na.Outflow", k=8.35762e-006);
    T.Fraction LH_Na_FractReab(varName="LH_Na.FractReab", k=0.744456);
    T.Concentration MedullaNa_conc(varName="MedullaNa.[Na+]", storeUnit="mol/l", k=419.355);
    T.MolarFlowRate CD_NH4_Outflow(varName="CD_NH4.Outflow", k=4.69907e-007);
    T.MolarFlowRate CD_K_Outflow(varName="CD_K.Outflow", k=8.95573e-007);
    T.MolarFlowRate CD_Na_Outflow(varName="CD_Na.Outflow", k=2.09015e-006);
    T.Fraction PT_Na_FractReab(varName="PT_Na.FractReab", k=0.582788);
    T.AmountOfSubstance GILumenSodium_Mass(varName="GILumenSodium.Mass", k=0.08);
    T.AmountOfSubstance GILumenPotassium_Mass(varName="GILumenPotassium.Mass", k=0.025);
    T.AmountOfSubstance OsmECFV_Electrolytes(varName="OsmECFV.Electrolytes", k=4.03066);
    T.AmountOfSubstance OsmCell_Electrolytes(varName="OsmCell.Electrolytes", k=7.92347);
    //Metabolism
    T.MolarFlowRate CD_Glucose_Outflow(varName="CD_Glucose.Outflow", storeUnit="mg/min", unitConversions = Physiomodel.Substances.Glucose.unitConversions, k=0);
    T.AmountOfSubstance UreaECF_Osmoles(varName="UreaPool.Osmoles", storeUnit="mosm", k=0.0953175);
    T.AmountOfSubstance UreaICF_Osmoles(varName="UreaCell.Osmoles", storeUnit="mosm", k=0.169201);
    T.AmountOfSubstance GlucoseECF_Osmoles(varName="GlucosePool.Osmoles", storeUnit="mosm", k=0.0873569);
    T.VolumeFlowRate MetabolicH2O_Rate(varName="MetabolicH2O.Rate", k=2.92963e-009);
    //CardioVascular
    T.Pressure GlomerulusBloodPressure(varName="GlomerulusFiltrate.Pressure", k=8102.36);
    T.VolumeFlowRate KidneyPlasmaFlow(varName="Kidney-Flow.PlasmaFlow", k=1.15981e-005);
    T.Pressure SystemicArtys_Pressure(varName="SystemicArtys.Pressure", k=12816.1);
    T.Pressure RightAtrium_Pressure(varName="RightAtrium.Pressure", k=97.9625);
    T.Volume RBCH2O_Vol(varName="RBCH2O.Vol", k=0.00156631);
    T.VolumeFlowRate GITract_BloodFlow(varName="GITract-Flow.BloodFlow", k=1.9228e-005);
    T.VolumeFlowRate kidney_BloodFlow(varName="Kidney-Flow.BloodFlow", k=2.07108e-005);
    T.VolumeFlowRate otherTissue_BloodFlow(varName="OtherTissue-Flow.BloodFlow", k=6.25202e-006);
    //Proteins
    T.AmountOfSubstance PlasmaProtein_Mass(varName="PlasmaProtein.Mass", k=0.00435); 
    T.AmountOfSubstance UT_InterstitialProtein_Mass(varName="UT_InterstitialProtein.Mass");
    T.AmountOfSubstance MT_InterstitialProtein_Mass(varName="MT_InterstitialProtein.Mass");
    T.AmountOfSubstance LT_InterstitialProtein_Mass(varName="LT_InterstitialProtein.Mass");
    //Status
    T.Fraction Status_Posture(varName="Status.Posture", k=4);
    //Gases
    T.VolumeFlowRate BreathingTotalVentilation(varName="Breathing.TotalVentilation", k=0.000102546);
    //Heat
    T.VolumeFlowRate SweatDuct_H2OOutflow(varName="SweatDuct.H2OOutflow", k=0);
    //Nerves
    T.Fraction SympsCNS_PituitaryNA(varName="SympsCNS.PituitaryNA", k=1.00901);

  equation
    //Setup
    connect(IVDrip_H2ORate.y,busConnector.IVDrip_H2ORate);
    connect(Transfusion_PlasmaRate1.y,busConnector.Transfusion_H2ORate);
    connect(Hemorrhage_PlasmaRate1.y, busConnector.Hemorrhage_H2ORate);
    connect(Kidney_NephronCount_Total_xNormal.y,busConnector.Kidney_NephronCount_Total_xNormal);
    connect(GILumenVomitus_H2OTarget.y, busConnector.GILumenVomitus_H2OTarget);
    connect(GILumenDiarrhea_H2OTarget.y, busConnector.GILumenDiarrhea_H2OTarget);
    connect(GILumenFiber.y, busConnector.GILumenFiber_Mass);
    connect(LegMusclePump_Effect.y,busConnector.LegMusclePump_Effect);
    connect(DialyzerActivity_UltrafiltrationRate.y, busConnector.DialyzerActivity_UltrafiltrationRate);
    connect(BarometerPressure.y,busConnector.BarometerPressure);
    connect(EnvironmentRelativeHumidity.y, busConnector.EnvironmentRelativeHumidity);
    connect(EnvironmentRelativeHumidity_VaporPressure.y, busConnector.EnviromentRelativeHumidity_VaporPressure);
    //Electrolytes
    connect(DT_Na_Outflow.y, busConnector.DT_Na_Outflow);
    connect(LH_Na_FractReab.y, busConnector.LH_Na_FractReab);
    connect(MedullaNa_conc.y, busConnector.MedullaNa_conc);
    connect(CD_NH4_Outflow.y, busConnector.CD_NH4_Outflow);
    connect(CD_K_Outflow.y, busConnector.CD_K_Outflow);
    connect(CD_Na_Outflow.y, busConnector.CD_Na_Outflow);
    connect(PT_Na_FractReab.y, busConnector.PT_Na_FractReab);
    connect(GILumenSodium_Mass.y, busConnector.GILumenSodium_Mass);
    connect(GILumenPotassium_Mass.y, busConnector.GILumenPotassium_Mass);
    connect(OsmECFV_Electrolytes.y, busConnector.OsmECFV_Electrolytes);
    connect(OsmCell_Electrolytes.y, busConnector.OsmCell_Electrolytes);
    //Metabolism
    connect(CD_Glucose_Outflow.y, busConnector.CD_Glucose_Outflow);
    connect(UreaECF_Osmoles.y, busConnector.UreaECF_Osmoles);
    connect(UreaICF_Osmoles.y, busConnector.UreaICF_Osmoles);
    connect(GlucoseECF_Osmoles.y, busConnector.GlucoseECF_Osmoles);
    connect(MetabolicH2O_Rate.y, busConnector.MetabolicH2O_Rate);
    //CardioVascular
    connect(GlomerulusBloodPressure.y, busConnector.GlomerulusBloodPressure);
    connect(KidneyPlasmaFlow.y, busConnector.KidneyPlasmaFlow);
    connect(SystemicArtys_Pressure.y, busConnector.SystemicArtys_Pressure);
    connect(RightAtrium_Pressure.y, busConnector.RightAtrium_Pressure);
    connect(RBCH2O_Vol.y, busConnector.RBCH2O_Vol);
    connect(GITract_BloodFlow.y, busConnector.GITract_BloodFlow);
    connect(kidney_BloodFlow.y, busConnector.kidney_BloodFlow);
    connect(otherTissue_BloodFlow.y, busConnector.otherTissue_BloodFlow);
    //Proteins
    connect(PlasmaProtein_Mass.y, busConnector.PlasmaProtein_Mass);
    connect(UT_InterstitialProtein_Mass.y, busConnector.UT_InterstitialProtein_Mass);
    connect(MT_InterstitialProtein_Mass.y, busConnector.MT_InterstitialProtein_Mass);
    connect(LT_InterstitialProtein_Mass.y, busConnector.LT_InterstitialProtein_Mass);
    //Status
    connect(Status_Posture.y,busConnector.Status_Posture);
    //Gases
    connect(BreathingTotalVentilation.y, busConnector.BreathingTotalVentilation);
    //Heat
    connect(SweatDuct_H2OOutflow.y, busConnector.SweatDuct_H2OOutflow); 
    //Nerves
    connect(SympsCNS_PituitaryNA.y, busConnector.SympsCNS_PituitaryNA);
  end Variables;
end Inputs;

model Test  
  Physiolibrary.Types.BusConnector busConnector;
  Physiomodel.Water.Water water;
  Inputs.Input inputs;
equation
  connect(inputs.busConnector, busConnector);
  connect(busConnector, water.busConnector);
end Test;
