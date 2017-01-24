within Physiomodel.Setup;
package IO_Bus
  extends Physiolibrary.Types.IO_Bus;

    redeclare model extends Variables
        extends Physiolibrary.Icons.Setup;

      T.Pressure AirSupplyInspiredAirPressure(varName="AirSupply-InspiredAir.Pressure")
      annotation (Placement(transformation(extent={{-78,22},{-70,14}})));
      T.Fraction Anesthesia_VascularConductance(varName="Anesthesia.VascularConductance")
      annotation (Placement(transformation(extent={{-80,-144},{-74,-138}})));
      T.Fraction AnesthesiaTidalVolume(varName="Anesthesia.TidalVolume")
      annotation (Placement(transformation(extent={{-80,-134},{-74,-128}})));
      T.Pressure BarometerPressure(varName="Barometer.Pressure")
      annotation (Placement(transformation(extent={{-86,38},{-80,44}})));
      T.Position CarotidSinusHeight(varName="Hydrostatics.CarotidCM")
      annotation (Placement(transformation(extent={{68,36},{74,42}})));
      T.MolarFlowRate DialyzerActivity_Cl_Flux(varName="DialyzerActivity.Cl-Flux")
      annotation (Placement(transformation(extent={{-80,-84},{-74,-78}})));
      T.MolarFlowRate DialyzerActivity_K_Flux(varName="DialyzerActivity.K+Flux")
      annotation (Placement(transformation(extent={{-80,-74},{-74,-68}})));
      T.MolarFlowRate DialyzerActivity_Na_Flux(varName="DialyzerActivity.Na+Flux")
      annotation (Placement(transformation(extent={{-80,-64},{-74,-58}})));
      T.Temperature DietGoalH2O_DegK(varName="DietGoalH2O.DegK",storeUnit="K")
      annotation (Placement(transformation(extent={{-80,-54},{-74,-48}})));
      T.MolarFlowRate DietIntakeElectrolytes_Cl(varName="DietIntakeElectrolytes.Cl-_mEq/Min")
      annotation (Placement(transformation(extent={{-80,-44},{-74,-38}})));
      T.MolarFlowRate DietIntakeElectrolytes_K(varName="DietIntakeElectrolytes.K+_mEq/Min")
      annotation (Placement(transformation(extent={{-80,-30},{-74,-24}})));
      T.MolarFlowRate DietIntakeElectrolytes_Na(varName="DietIntakeElectrolytes.Na+_mEq/Min")
      annotation (Placement(transformation(extent={{-80,-24},{-74,-18}})));
      T.MolarFlowRate DietIntakeElectrolytes_PO4(varName="DietIntakeElectrolytes.PO4--mEq/Min")
      annotation (Placement(transformation(extent={{-80,-14},{-74,-8}})));
      T.MolarFlowRate DietIntakeElectrolytes_SO4(varName="DietIntakeElectrolytes.SO4--mEq/Min")
      annotation (Placement(transformation(extent={{-80,-4},{-74,2}})));
      T.Frequency Exercise_Metabolism_ContractionRate(varName="Exercise-Metabolism.ContractionRate")
      annotation (Placement(transformation(extent={{-144,46},{-138,52}})));
      T.Power ExerciseMetabolism_MotionWatts(varName="Exercise-Metabolism.MotionWatts", storeUnit="W")
      annotation (Placement(transformation(extent={{-140,22},{-134,28}})));
      T.Power ExerciseMetabolism_TotalWatts(varName="Exercise-Metabolism.TotalWatts", storeUnit="W")
      annotation (Placement(transformation(extent={{-140,30},{-134,36}})));
      T.Concentration FurosemidePool_Furosemide_conc(varName="FurosemidePool.[Furosemide]", storeUnit="mg/l", unitConversions=Substances.Furosemide.unitConversions)
      annotation (Placement(transformation(extent={{-80,66},{-74,72}})));
      T.MolarFlowRate FurosemidePool_Loss(varName="FurosemidePool.Loss", storeUnit="mg/min", unitConversions=Substances.Furosemide.unitConversions)
      annotation (Placement(transformation(extent={{-80,76},{-74,82}})));
      T.Fraction Gravity_Gz(varName="Gravity.Gz")
      annotation (Placement(transformation(extent={{-80,86},{-74,92}})));
      T.MolarFlowRate GILumenDiarrhea_KLoss(varName="GILumenDiarrhea.K+Loss")
      annotation (Placement(transformation(extent={{-80,96},{-74,102}})));
      T.MolarFlowRate GILumenDiarrhea_NaLoss(varName="GILumenDiarrhea.Na+Loss")
      annotation (Placement(transformation(extent={{-80,106},{-74,112}})));
      T.MolarFlowRate GILumenVomitus_ClLoss(varName="GILumenVomitus.Cl-Loss")
      annotation (Placement(transformation(extent={{-80,116},{-74,122}})));
      T.MolarFlowRate Hemorrhage_ClRate(varName="Hemorrhage.ClRate")
      annotation (Placement(transformation(extent={{72,-176},{78,-170}})));
      T.MolarFlowRate Hemorrhage_KRate(varName="Hemorrhage.KRate")
      annotation (Placement(transformation(extent={{60,-142},{66,-136}})));
      T.MolarFlowRate Hemorrhage_NaRate(varName="Hemorrhage.NaRate")
      annotation (Placement(transformation(extent={{72,-168},{78,-162}})));
      T.VolumeFlowRate Hemorrhage_PlasmaRate(varName="Hemorrhage.PlasmaRate")
      annotation (Placement(transformation(extent={{72,-158},{78,-152}})));
      T.MolarFlowRate Hemorrhage_ProteinRate(varName="Hemorrhage.ProteinRate", storeUnit="mmol/min")
      annotation (Placement(transformation(extent={{72,-148},{78,-142}})));
      T.VolumeFlowRate Hemorrhage_RBCRate(varName="Hemorrhage.RBCRate")
      annotation (Placement(transformation(extent={{72,-138},{78,-132}})));
      T.MolarFlowRate IVDrip_ClRate(varName="IVDrip.ClRate")
      annotation (Placement(transformation(extent={{72,-128},{78,-122}})));
      T.VolumeFlowRate IVDrip_H2ORate(varName="IVDrip.H2ORate")
      annotation (Placement(transformation(extent={{72,-118},{78,-112}})));
      T.MolarFlowRate IVDrip_KRate(varName="IVDrip.KRate")
      annotation (Placement(transformation(extent={{72,-108},{78,-102}})));
      T.MolarFlowRate IVDrip_NaRate(varName="IVDrip.NaRate")
      annotation (Placement(transformation(extent={{72,-98},{78,-92}})));
      T.Fraction Kidney_NephronCount_Filtering_xNormal(varName="Kidney-NephronCount.Filtering(xNormal)")
      annotation (Placement(transformation(extent={{72,-88},{78,-82}})));
      T.Fraction Kidney_NephronCount_Total_xNormal(varName="Kidney-NephronCount.Total(xNormal)")
      annotation (Placement(transformation(extent={{72,-78},{78,-72}})));
      T.Fraction LegMusclePump_Effect(varName="LegMusclePump.Effect")
      annotation (Placement(transformation(extent={{-128,-28},{-122,-22}})));
      T.Position LowerTorsoArtyHeight(varName="Hydrostatics.LowerTorsoCM")
      annotation (Placement(transformation(extent={{72,-58},{78,-52}})));
      T.Position LowerTorsoVeinHeight(varName="Hydrostatics.LowerTorsoCM")
      annotation (Placement(transformation(extent={{72,-48},{78,-42}})));
      T.Pressure pCO(varName="pCO")
      annotation (Placement(transformation(extent={{-78,8},{-72,14}})));
      T.Pressure Pericardium_Pressure(varName="Pericardium-Cavity.Pressure")
      annotation (Placement(transformation(extent={{-102,2},{-96,8}})));
      T.Mass skeletalMuscle_SizeMass(varName="SkeletalMuscle-Size.Mass", storeUnit="g")
      annotation (Placement(transformation(extent={{50,164},{56,170}})));
      T.Mass skinSizeMass(varName="Skin-Size.Mass")
      annotation (Placement(transformation(extent={{100,158},{106,164}})));
      T.Fraction Status_Posture(varName="Status.Posture")
      annotation (Placement(transformation(extent={{70,42},{76,48}})));
      T.MassConcentration ThiazidePool_Thiazide_conc(varName="ThiazidePool.[Thiazide]", storeUnit="mg/l")
      annotation (Placement(transformation(extent={{72,62},{78,68}})));
      T.Pressure Thorax_AvePressure(varName="Thorax.AvePressure")
      annotation (Placement(transformation(extent={{72,72},{78,78}})));
      T.Fraction Thorax_LungInflation(varName="Thorax.LungInflation")
      annotation (Placement(transformation(extent={{72,82},{78,88}})));
      T.MolarFlowRate Transfusion_ClRate(varName="Transfusion.ClRate")
      annotation (Placement(transformation(extent={{72,92},{78,98}})));
      T.MolarFlowRate Transfusion_KRate(varName="Transfusion.KRate")
      annotation (Placement(transformation(extent={{72,102},{78,108}})));
      T.MolarFlowRate Transfusion_NaRate(varName="Transfusion.NaRate")
      annotation (Placement(transformation(extent={{72,112},{78,118}})));
      T.VolumeFlowRate Transfusion_PlasmaRate(varName="Transfusion.PlasmaRate")
      annotation (Placement(transformation(extent={{72,122},{78,128}})));
      T.MolarFlowRate Transfusion_ProteinRate(varName="Transfusion.ProteinRate", storeUnit="mmol/min")
      annotation (Placement(transformation(extent={{72,132},{78,138}})));
      T.VolumeFlowRate Transfusion_RBCRate(varName="Transfusion.RBCRate")
      annotation (Placement(transformation(extent={{72,142},{78,148}})));
      T.Mass WeightCore(varName="Weight.Core")
      annotation (Placement(transformation(extent={{72,152},{78,158}})));

      T.MolarFlowRate IVDrip_ProteinRate(varName="IVDrip.ProteinRate", storeUnit="mmol/min")
      annotation (Placement(transformation(extent={{72,-124},{78,-118}})));
      T.Temperature AmbientTemperature(varName=
              "AmbientTemperature.Temp(C)")
      annotation (Placement(transformation(extent={{-82,44},{-76,50}})));
      T.Fraction EnvironmentRelativeHumidity(varName=
              "EnvironmentRelativeHumidity")
      annotation (Placement(transformation(extent={{-82,24},{-76,30}})));
      T.VolumeFlowRate DietIntakeH2O_Rate(varName="DietIntakeH2O.Rate(mL/Min)")
      annotation (Placement(transformation(extent={{-78,-20},{-72,-14}})));
      T.VolumeFlowRate DialyzerActivity_UltrafiltrationRate(
            varName="DialyzerActivity.UltrafiltrationRate")
      annotation (Placement(transformation(extent={{-86,-80},{-74,-68}})));
      T.VolumeFlowRate Hemorrhage_PlasmaRate1(                         varName="Hemorrhage.H2ORate")
      annotation (Placement(transformation(extent={{98,-168},{110,-156}})));
      T.VolumeFlowRate Transfusion_PlasmaRate1(                         varName="Transfusion.H2ORate")
      annotation (Placement(transformation(extent={{88,114},{98,124}})));
      T.VolumeFlowRate GILumenVomitus_H2OTarget(varName=
              "GILumenVomitus.H2OTarget")
      annotation (Placement(transformation(extent={{-84,122},{-72,134}})));
      T.VolumeFlowRate GILumenDiarrhea_H2OTarget(varName=
              "GILumenDiarrhea.H2OTarget")
      annotation (Placement(transformation(extent={{-82,132},{-70,144}})));
      T.Velocity Wind_MPH(varName="Wind.MPH",storeUnit="MPH")
      annotation (Placement(transformation(extent={{-84,52},{-78,58}})));
      T.AmountOfSubstance GILumenFiber(varName="GILumenVolume.[Fiber]", storeUnit="osm")
          annotation (Placement(transformation(extent={{-82,142},{-70,154}})));
      T.Pressure EnvironmentRelativeHumidity_VaporPressure(varName="RelativeHumidity.VaporPressure",
            storeUnit="mmHg")
          annotation (Placement(transformation(extent={{-82,32},{-76,38}})));

      Physiolibrary.Types.Constants.DeprecatedUntypedConstant const7(k=1);

    equation
        
        connect(const7.y, busConnector.Exercise_MusclePump_Effect);
        
        connect( Gravity_Gz.y,busConnector.Gravity_Gz)          annotation (Line(
            points={{-73.7,89},{90,89},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
        connect(BarometerPressure.y,busConnector.BarometerPressure)
          annotation (Line(
            points={{-79.7,41},{4,41},{4,-2},{90,-2}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None), Text(
            string="%first",
            index=-1,
            extent={{-6,3},{-6,3}}));
        connect(AirSupplyInspiredAirPressure.y,busConnector.AirSupplyInspiredAirPressure)
          annotation (Line(
            points={{-69.6,18},{4,18},{4,-2},{90,-2}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None), Text(
            string="%first",
            index=-1,
            extent={{-6,3},{-6,3}}));
        connect(pCO.y,busConnector.pCO) annotation (Line(
            points={{-71.7,11},{90,11},{90,-2}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None), Text(
            string="%first",
            index=-1,
            extent={{-6,3},{-6,3}}));
        connect( IVDrip_NaRate.y,busConnector. IVDrip_NaRate) annotation (Line(
            points={{78.3,-95},{90,-95},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None));
        connect( Transfusion_NaRate.y,busConnector. Transfusion_NaRate) annotation (Line(
            points={{78.3,115},{90,115},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None));
        connect( Hemorrhage_NaRate.y,busConnector. Hemorrhage_NaRate) annotation (Line(
            points={{78.3,-165},{90,-165},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None));
        connect( DialyzerActivity_Na_Flux.y,busConnector. DialyzerActivity_Na_Flux) annotation (
            Line(
            points={{-73.7,-61},{90,-61},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None));
        connect( DietIntakeElectrolytes_Na.y,busConnector. DietIntakeElectrolytes_Na) annotation (
            Line(
            points={{-73.7,-21},{90,-21},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None));
        connect( GILumenDiarrhea_NaLoss.y,busConnector. GILumenDiarrhea_NaLoss) annotation (Line(
            points={{-73.7,109},{90,109},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None));
        connect( IVDrip_KRate.y,busConnector. IVDrip_KRate) annotation (Line(
            points={{78.3,-105},{90,-105},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None));
        connect( Transfusion_KRate.y,busConnector. Transfusion_KRate) annotation (Line(
            points={{78.3,105},{90,105},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None));
        connect( Hemorrhage_KRate.y,busConnector. Hemorrhage_KRate) annotation (Line(
            points={{66.3,-139},{90,-139},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None));
        connect( DialyzerActivity_K_Flux.y,busConnector. DialyzerActivity_K_Flux) annotation (
            Line(
            points={{-73.7,-71},{90,-71},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None));
        connect( DietIntakeElectrolytes_K.y,busConnector. DietIntakeElectrolytes_K) annotation (
            Line(
            points={{-73.7,-27},{90,-27},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None));
        connect( GILumenDiarrhea_KLoss.y,busConnector. GILumenDiarrhea_KLoss) annotation (Line(
            points={{-73.7,99},{90,99},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None));
        connect( IVDrip_ClRate.y,busConnector. IVDrip_ClRate) annotation (Line(
            points={{78.3,-125},{90,-125},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None));
        connect( Transfusion_ClRate.y,busConnector. Transfusion_ClRate) annotation (Line(
            points={{78.3,95},{90,95},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None));
        connect( Hemorrhage_ClRate.y,busConnector. Hemorrhage_ClRate) annotation (Line(
            points={{78.3,-173},{90,-173},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None));
        connect( DialyzerActivity_Cl_Flux.y,busConnector. DialyzerActivity_Cl_Flux) annotation (
            Line(
            points={{-73.7,-81},{90,-81},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None));
        connect( DietIntakeElectrolytes_Cl.y,busConnector. DietIntakeElectrolytes_Cl) annotation (
            Line(
            points={{-73.7,-41},{90,-41},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None));
        connect(GILumenVomitus_ClLoss.y,busConnector.GILumenVomitus_ClLoss) annotation (Line(
            points={{-73.7,119},{90,119},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None));
        connect(DietIntakeElectrolytes_PO4.y,busConnector.DietIntakeElectrolytes_PO4) annotation (Line(
            points={{-73.7,-11},{6,-11},{6,-2},{90,-2}},
            color={0,0,127},
            thickness=0.5,
            smooth=Smooth.None));
        connect(DietIntakeElectrolytes_SO4.y,busConnector.DietIntakeElectrolytes_SO4) annotation (Line(
            points={{-73.7,-1},{90,-1},{90,-2}},
            color={0,0,127},
            thickness=0.5,
            smooth=Smooth.None));
        connect(DietGoalH2O_DegK.y,busConnector.DietGoalH2O_DegK) annotation (
            Line(
            points={{-73.7,-51},{-73.7,-50},{-28,-50},{-28,-2},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
        connect( Exercise_Metabolism_ContractionRate.y,busConnector. Exercise_Metabolism_ContractionRate)
          annotation (Line(
            points={{-137.7,49},{90,49},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
        connect(LegMusclePump_Effect.y,busConnector.LegMusclePump_Effect) annotation (Line(
            points={{-121.7,-25},{94.15,-25},{94.15,-2},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
        connect(ExerciseMetabolism_TotalWatts.y,busConnector.ExerciseMetabolism_TotalWatts) annotation (
           Line(
            points={{-133.7,33},{90,33},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
        connect( LowerTorsoArtyHeight.y,busConnector. LowerTorsoArtyHeight)
          annotation (Line(
            points={{78.3,-55},{-6,-55},{-6,-2},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
        connect( LowerTorsoVeinHeight.y,busConnector. LowerTorsoVeinHeight)
          annotation (Line(
            points={{78.3,-45},{-6,-45},{-6,-2},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
        connect( CarotidSinusHeight.y,busConnector. CarotidSinusHeight)
          annotation (Line(
            points={{74.3,39},{0,39},{0,-2},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
        connect(Status_Posture.y,busConnector.Status_Posture) annotation (Line(
            points={{76.3,45},{6.15,45},{6.15,-2},{90,-2}},
            color={0,0,255},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
        connect( FurosemidePool_Furosemide_conc.y,busConnector. FurosemidePool_Furosemide_conc)
          annotation (Line(
            points={{-73.7,69},{8,69},{8,-2},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
        connect( ThiazidePool_Thiazide_conc.y,busConnector. ThiazidePool_Thiazide_conc) annotation (
            Line(
            points={{78.3,65},{90,65},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
        connect(FurosemidePool_Loss.y,busConnector.FurosemidePool_Loss) annotation (Line(
            points={{-73.7,79},{90,79},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
        connect(IVDrip_H2ORate.y,busConnector.IVDrip_H2ORate)  annotation (Line(
            points={{78.3,-115},{0.15,-115},{0.15,-2},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
        connect(Transfusion_PlasmaRate.y,busConnector.Transfusion_PlasmaRate)
                                                               annotation (Line(
            points={{78.3,125},{90,125},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
        connect(Hemorrhage_PlasmaRate.y,busConnector.Hemorrhage_PlasmaRate)
                                                              annotation (Line(
            points={{78.3,-155},{90,-155},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
        connect(Hemorrhage_RBCRate.y,busConnector.Hemorrhage_RBCRate) annotation (Line(
            points={{78.3,-135},{90,-135},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
        connect(Transfusion_RBCRate.y,busConnector.Transfusion_RBCRate) annotation (Line(
            points={{78.3,145},{90,145},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
        connect( Pericardium_Pressure.y,busConnector. Pericardium_Pressure)          annotation (
           Line(
            points={{-95.7,5},{90,5},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
        connect( Thorax_AvePressure.y,busConnector. Thorax_AvePressure)          annotation (
            Line(
            points={{78.3,75},{90,75},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
        connect(Thorax_LungInflation.y,busConnector.Thorax_LungInflation)
          annotation (Line(
            points={{78.3,85},{90,85},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
        connect(Kidney_NephronCount_Total_xNormal.y,busConnector.Kidney_NephronCount_Total_xNormal)
          annotation (Line(
            points={{78.3,-75},{6,-75},{6,-2},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
        connect(Kidney_NephronCount_Filtering_xNormal.y,busConnector.Kidney_NephronCount_Filtering_xNormal)
          annotation (Line(
            points={{78.3,-85},{90,-85},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
        connect(AnesthesiaTidalVolume.y,busConnector.AnesthesiaTidalVolume)
                                                              annotation (Line(
            points={{-73.7,-131},{90,-131},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
        connect(Anesthesia_VascularConductance.y,busConnector.Anesthesia_VascularConductance)
          annotation (Line(
            points={{-73.7,-141},{90,-141},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
      connect(skeletalMuscle_SizeMass.y,busConnector.skeletalMuscle_SizeMass) annotation (Line(
       points={{56.3,167},{90,167},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
      connect(skinSizeMass.y,busConnector.skinSizeMass) annotation (Line(
       points={{106.3,161},{90,161},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
      connect(WeightCore.y,busConnector.WeightCore) annotation (Line(
       points={{78.3,155},{90,155},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));

        connect(AmbientTemperature.y, busConnector.AmbientTemperature)
          annotation (Line(
            points={{-75.7,47},{90,47},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
        connect(EnvironmentRelativeHumidity.y, busConnector.EnvironmentRelativeHumidity)
          annotation (Line(
            points={{-75.7,27},{90,27},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
      connect(DietIntakeH2O_Rate.y, busConnector.DietIntakeH2O_Rate) annotation (Line(
       points={{-71.7,-17},{90,-17},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
        connect(DialyzerActivity_UltrafiltrationRate.y, busConnector.DialyzerActivity_UltrafiltrationRate)
          annotation (Line(
            points={{-73.4,-74},{90,-74},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
        connect(Hemorrhage_PlasmaRate1.y, busConnector.Hemorrhage_H2ORate)
                                                                        annotation (Line(
       points={{110.6,-162},{90,-162},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
        connect(Transfusion_PlasmaRate1.y, busConnector.Transfusion_H2ORate)
                                                                          annotation (Line(
       points={{98.5,119},{-14,119},{-14,36},{90,36},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
        connect(GILumenDiarrhea_H2OTarget.y, busConnector.GILumenDiarrhea_H2OTarget)
          annotation (Line(
            points={{-69.4,138},{0,138},{0,-2},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
        connect(GILumenVomitus_H2OTarget.y, busConnector.GILumenVomitus_H2OTarget)
          annotation (Line(
            points={{-71.4,128},{90,128},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
        connect(EnvironmentRelativeHumidity_VaporPressure.y, busConnector.EnviromentRelativeHumidity_VaporPressure)
          annotation (Line(
            points={{-75.7,35},{90,35},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
        connect(Wind_MPH.y, busConnector.WindSpeed) annotation (Line(
            points={{-77.7,55},{90,55},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
        connect(GILumenFiber.y, busConnector.GILumenFiber_Mass) annotation (Line(
            points={{-69.4,148},{90,148},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
        connect(IVDrip_ProteinRate.y, busConnector.IVDripProteinRate) annotation (
            Line(
            points={{78.3,-121},{90,-121},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
        connect(Hemorrhage_ProteinRate.y, busConnector.Hemorrhage_ProteinRate)
          annotation (Line(
            points={{78.3,-145},{78.3,-146.5},{90,-146.5},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
        connect(Transfusion_ProteinRate.y, busConnector.Transfusion_ProteinRate)
          annotation (Line(
            points={{78.3,135},{90,135},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
        connect(ExerciseMetabolism_MotionWatts.y, busConnector.Exercise_Metabolism_MotionWatts)
          annotation (Line(
            points={{-133.7,25},{90,25},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
        annotation (Icon(coordinateSystem(preserveAspectRatio=true,  extent={{-100,
                  -100},{100,100}}), graphics={Text(
                extent={{-120,-42},{122,-76}},
                lineColor={0,0,255},
                textString="%name")}));
    end Variables;
end IO_Bus;
