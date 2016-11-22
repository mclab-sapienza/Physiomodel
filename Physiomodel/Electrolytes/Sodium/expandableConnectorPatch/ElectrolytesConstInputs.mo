within Physiomodel.Electrolytes.Sodium.expandableConnectorPatch;
model ElectrolytesConstInputs

    OutsideBusConnector busConnector
      annotation (Placement(transformation(extent={{38,-12},{52,2}}),
           iconTransformation(extent={{-40,-20},{0,20}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant BladderVoidFlow(
        k=0)
      annotation (Placement(transformation(extent={{-30,-98},{-24,-92}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant
      A2Pool_Log10Conc(k=1.30698460203345)
      annotation (Placement(transformation(extent={{-30,-88},{-24,-82}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant AldoPool_Aldo(k=
         0.290854848569316)
      annotation (Placement(transformation(extent={{-30,-78},{-24,-72}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant
      BladderVolume_Mass(k=629.260404013417)
      annotation (Placement(transformation(extent={{-30,-68},{-24,-62}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Artys_pH(k=
          7.38644600458198)
      annotation (Placement(transformation(extent={{-30,-58},{-24,-52}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant CD_KA_Outflow(k=
         6.08968322729714e-005)
      annotation (Placement(transformation(extent={{-30,-48},{-24,-42}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant CO2Veins_cHCO3(
        k=2.57071728935027e-002)
      annotation (Placement(transformation(extent={{-30,-38},{-24,-32}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant CellH2O_Vol(k=
          27335.8967957385)
      annotation (Placement(transformation(extent={{-30,-28},{-24,-22}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant ECFV_Vol(k=
          15491.3023234116)
      annotation (Placement(transformation(extent={{-30,-18},{-24,-12}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant
      GILumenVolume_Mass(k=959.290660950713)
      annotation (Placement(transformation(extent={{-30,-8},{-24,-2}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant
      GlomerulusFiltrate_GFR(k=127.333064117169)
      annotation (Placement(transformation(extent={{-30,2},{-24,8}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant KAPool_Osmoles(
        k=2.10110505683432)
      annotation (Placement(transformation(extent={{-30,8},{-24,14}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant KAPool_conc(k=
          1.3839925831359e-002)
      annotation (Placement(transformation(extent={{-30,14},{-24,20}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant
      KidneyAlpha_PT_NA(k=1.)
      annotation (Placement(transformation(extent={{-30,20},{-24,26}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant
      KidneyFunction_Effect(k=0.995580586980285)
      annotation (Placement(transformation(extent={{-30,26},{-24,32}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant
      Kidney_NephronCount_Total_xNormal(k=1.)
      annotation (Placement(transformation(extent={{-30,32},{-24,38}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant
      LacPool_Mass_mEq(k=18.2596543652006)
      annotation (Placement(transformation(extent={{78,-2},{72,4}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant
      LacPool_Lac_mEq_per_litre(k=1.17870363536868)
      annotation (Placement(transformation(extent={{78,8},{72,14}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Medulla_Volume(
        k=31.)
      annotation (Placement(transformation(extent={{78,18},{72,24}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant
      NephronANP_Log10Conc(k=1.25866025557014)
      annotation (Placement(transformation(extent={{78,28},{72,34}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant
      NephronAldo_conc_in_nG_per_dl(k=9.9383249094754)
      annotation (Placement(transformation(extent={{78,38},{72,44}})));
    Physiolibrary.Types.Constants.PressureConst NephroneIFP_Pressure(k=
          522.7446867783631)
      annotation (Placement(transformation(extent={{78,48},{72,54}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant
      VasaRecta_Outflow(k=21.7865579572364)
      annotation (Placement(transformation(extent={{78,58},{72,64}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant
      liver_GlucoseToCellStorageFlow(k=0)
      annotation (Placement(transformation(extent={{78,68},{72,74}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant
      skeletalMuscle_GlucoseToCellStorageFlow(k=0)
      annotation (Placement(transformation(extent={{78,78},{72,84}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant
      skeletalMuscle_GlucoseToCellStorageFlow1(k=0)
      annotation (Placement(transformation(extent={{78,88},{72,94}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant14(k=0)
      annotation (Placement(transformation(extent={{-86,42},{-78,50}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant15(k=0)
      annotation (Placement(transformation(extent={{-86,50},{-78,58}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant16(k=0)
      annotation (Placement(transformation(extent={{-86,58},{-78,66}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant17(k=0)
      annotation (Placement(transformation(extent={{-86,66},{-78,74}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant18(k=0)
      annotation (Placement(transformation(extent={{-86,74},{-78,82}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant19(k=
          0.12)
      annotation (Placement(transformation(extent={{-86,82},{-78,90}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant20(k=0)
      annotation (Placement(transformation(extent={{-86,90},{-78,98}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant1(k=0)
      annotation (Placement(transformation(extent={{-94,-10},{-86,-2}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant2(k=0)
      annotation (Placement(transformation(extent={{-94,-24},{-86,-16}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant
      Kidney_NephronCount_Filtering_xNormal(k=1.)
      annotation (Placement(transformation(extent={{-30,38},{-24,44}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant21(k=0)
      annotation (Placement(transformation(extent={{-92,-92},{-84,-84}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant22(k=0)
      annotation (Placement(transformation(extent={{-92,-84},{-84,-76}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant23(k=0)
      annotation (Placement(transformation(extent={{-92,-76},{-84,-68}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant24(k=0)
      annotation (Placement(transformation(extent={{-92,-68},{-84,-60}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant25(k=0)
      annotation (Placement(transformation(extent={{-92,-60},{-84,-52}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant26(k=
          5.2e-002)
      annotation (Placement(transformation(extent={{-92,-52},{-84,-44}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant27(k=0)
      annotation (Placement(transformation(extent={{-92,-44},{-84,-36}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant28(k=0)
      annotation (Placement(transformation(extent={{80,-70},{72,-62}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant29(k=0)
      annotation (Placement(transformation(extent={{80,-62},{72,-54}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant30(k=0)
      annotation (Placement(transformation(extent={{80,-54},{72,-46}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant31(k=0)
      annotation (Placement(transformation(extent={{80,-46},{72,-38}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant32(k=0)
      annotation (Placement(transformation(extent={{80,-38},{72,-30}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant33(k=
          0.149511)
      annotation (Placement(transformation(extent={{80,-30},{72,-22}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant34(k=0)
      annotation (Placement(transformation(extent={{80,-22},{72,-14}})));
equation

    connect(BladderVoidFlow.y, busConnector.BladderVoidFlow) annotation (Line(
    points={{-23.7,-95},{38,-95},{38,-3.6}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(A2Pool_Log10Conc.y, busConnector.A2Pool_Log10Conc) annotation (Line(
    points={{-23.7,-85},{38,-85},{38,-3.6}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(AldoPool_Aldo.y, busConnector.AldoPool_Aldo) annotation (Line(
    points={{-23.7,-75},{38,-75},{38,-3.6}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(BladderVolume_Mass.y, busConnector.BladderVolume_Mass) annotation (Line(
    points={{-23.7,-65},{38,-65},{38,-3.6}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(Artys_pH.y, busConnector.Artys_pH) annotation (Line(
    points={{-23.7,-55},{38,-55},{38,-3.6}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(CD_KA_Outflow.y, busConnector.CD_KA_Outflow) annotation (Line(
    points={{-23.7,-45},{38,-45},{38,-3.6}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(CO2Veins_cHCO3.y, busConnector.CO2Veins_cHCO3) annotation (Line(
    points={{-23.7,-35},{38,-35},{38,-3.6}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(CellH2O_Vol.y, busConnector.CellH2O_Vol) annotation (Line(
    points={{-23.7,-25},{38,-25},{38,-3.6}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(ECFV_Vol.y, busConnector.ECFV_Vol) annotation (Line(
    points={{-23.7,-15},{38,-15},{38,-3.6}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(GILumenVolume_Mass.y, busConnector.GILumenVolume_Mass) annotation (Line(
    points={{-23.7,-5},{38,-5},{38,-3.6}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(GlomerulusFiltrate_GFR.y, busConnector.GlomerulusFiltrate_GFR) annotation (Line(
    points={{-23.7,5},{38,5},{38,-3.6}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(KAPool_Osmoles.y, busConnector.KAPool_Osmoles) annotation (Line(
    points={{-23.7,11},{38,11},{38,-3.6}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(KAPool_conc.y, busConnector.KAPool_conc_per_liter) annotation (Line(
    points={{-23.7,17},{29,17},{29,-3}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(KidneyAlpha_PT_NA.y, busConnector.KidneyAlpha_PT_NA) annotation (Line(
    points={{-23.7,23},{38,23},{38,-3.6}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(KidneyFunction_Effect.y, busConnector.KidneyFunctionEffect) annotation (Line(
    points={{-23.7,29},{29,29},{29,-3}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(Kidney_NephronCount_Total_xNormal.y, busConnector.Kidney_NephronCount_Total_xNormal) annotation (Line(
    points={{-23.7,35},{38,35},{38,-3.6}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(LacPool_Mass_mEq.y, busConnector.LacPool_Mass_mEq) annotation (Line(
    points={{71.7,1},{52.35,1},{52.35,-3.6},{38,-3.6}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(LacPool_Lac_mEq_per_litre.y, busConnector.LacPool_Lac_mEq_per_litre) annotation (Line(
    points={{71.7,11},{38,11},{38,-3.6}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(Medulla_Volume.y, busConnector.Medulla_Volume) annotation (Line(
    points={{71.7,21},{38,21},{38,-3.6}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(NephronANP_Log10Conc.y, busConnector.NephronANP_Log10Conc) annotation (Line(
    points={{71.7,31},{38,31},{38,-3.6}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(NephronAldo_conc_in_nG_per_dl.y, busConnector.NephronAldo_conc_in_nG_per_dl) annotation (Line(
    points={{71.7,41},{38,41},{38,-3.6}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(NephroneIFP_Pressure.y, busConnector.NephronIFP_Pressure) annotation (Line(
    points={{71.7,51},{28,48},{28,-3},{29,-3}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(VasaRecta_Outflow.y, busConnector.VasaRecta_Outflow) annotation (Line(
    points={{71.7,61},{38,61},{38,-3.6}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(liver_GlucoseToCellStorageFlow.y, busConnector.liver_GlucoseToCellStorageFlow) annotation (Line(
    points={{71.7,71},{38,71},{38,-3.6}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(skeletalMuscle_GlucoseToCellStorageFlow.y, busConnector.skeletalMuscle_GlucoseToCellStorageFlow) annotation (Line(
    points={{71.7,81},{38,81},{38,-3.6}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));

    connect(skeletalMuscle_GlucoseToCellStorageFlow1.y, busConnector.respiratoryMuscle_GlucoseToCellStorageFlow)
    annotation (Line(
    points={{71.7,91},{29,91},{29,-3}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(Constant14.y,busConnector.IVDrip_NaRate) annotation (Line(
    points={{-77.6,46},{29,46},{29,-3}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Constant15.y,busConnector. Transfusion_NaRate) annotation (Line(
    points={{-77.6,54},{29,54},{29,-3}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Constant16.y,busConnector. SweatDuct_NaRate) annotation (Line(
    points={{-77.6,62},{29,62},{29,-3}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Constant17.y,busConnector. Hemorrhage_NaRate) annotation (Line(
    points={{-77.6,70},{29,70},{29,-3}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Constant18.y,busConnector. DialyzerActivity_Na_Flux) annotation (
    Line(
    points={{-77.6,78},{29,78},{29,-3}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Constant19.y,busConnector. DietIntakeElectrolytes_Na) annotation (
    Line(
    points={{-77.6,86},{29,86},{29,-3}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Constant20.y,busConnector. GILumenDiarrhea_NaLoss) annotation (Line(
    points={{-77.6,94},{29,94},{29,-3}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Constant1.y,busConnector. FurosemidePool_Furosemide_conc)
    annotation (Line(
    points={{-85.6,-6},{-66,-6},{-66,-3},{29,-3}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Constant2.y,busConnector. ThiazidePool_Thiazide_conc) annotation (
    Line(
    points={{-85.6,-20},{-66,-20},{-66,-3},{29,-3}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Kidney_NephronCount_Filtering_xNormal.y, busConnector.Kidney_NephronCount_Filtering_xNormal)
                                                                                       annotation (Line(
    points={{-23.7,41},{29,41},{29,-3}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(Constant21.y,busConnector. IVDrip_KRate) annotation (Line(
    points={{-83.6,-88},{-62,-88},{-62,-44},{30,-44},{30,-3},{29,-3}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Constant22.y,busConnector. Transfusion_KRate) annotation (Line(
    points={{-83.6,-80},{-62,-80},{-62,-44},{30,-44},{30,-3},{29,-3}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Constant23.y,busConnector. SweatDuct_KRate) annotation (Line(
    points={{-83.6,-72},{-62,-72},{-62,-44},{30,-44},{30,-3},{29,-3}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Constant24.y,busConnector. Hemorrhage_KRate) annotation (Line(
    points={{-83.6,-64},{-62,-64},{-62,-44},{30,-44},{30,-3},{29,-3}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Constant25.y,busConnector. DialyzerActivity_K_Flux) annotation (
    Line(
    points={{-83.6,-56},{-62,-56},{-62,-44},{30,-44},{30,-3},{29,-3}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Constant26.y,busConnector. DietIntakeElectrolytes_K) annotation (
    Line(
    points={{-83.6,-48},{-62,-48},{-62,-44},{30,-44},{30,-3},{29,-3}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Constant27.y,busConnector. GILumenDiarrhea_KLoss) annotation (Line(
    points={{-83.6,-40},{29,-40},{29,-3}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Constant28.y,busConnector. IVDrip_ClRate) annotation (Line(
    points={{71.6,-66},{29,-66},{29,-3}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Constant29.y,busConnector. Transfusion_ClRate) annotation (Line(
    points={{71.6,-58},{29,-58},{29,-3}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Constant30.y,busConnector. SweatDuct_ClRate) annotation (Line(
    points={{71.6,-50},{29,-50},{29,-3}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Constant31.y,busConnector. Hemorrhage_ClRate) annotation (Line(
    points={{71.6,-42},{29,-42},{29,-3}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Constant32.y,busConnector. DialyzerActivity_Cl_Flux) annotation (
    Line(
    points={{71.6,-34},{29,-34},{29,-3}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Constant33.y,busConnector. DietIntakeElectrolytes_Cl) annotation (
    Line(
    points={{71.6,-26},{29,-26},{29,-3}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Constant34.y,busConnector.GILumenVomitus_ClLoss) annotation (Line(
    points={{71.6,-18},{29,-18},{29,-3}},
    color={0,0,127},
    smooth=Smooth.None));
end ElectrolytesConstInputs;