within Physiomodel.Metabolism;
    package IO_Bus
        extends Physiolibrary.Types.IO_Bus;

        redeclare model extends Variables

            T.MolarFlowRate bone_CO2FromMetabolism(varName="Bone-CO2.OutflowBase")
            "Bone carbondioxyde outflow from cells metabolism. "
            annotation (Placement(transformation(extent={{-36,10},{-30,16}})));
            T.MolarFlowRate bone_O2Use(varName="Bone-Flow.O2Use", storeUnit="ml_STP/min")
            "Bone oxygen consumption. "
            annotation (Placement(transformation(extent={{-36,20},{-30,26}})));
            T.Fraction bone_Fuel_FractUseDelay(varName="Bone-Fuel.FractUseDelay")
            "Bone deficiency of nutrients needed by cells metabolism. "
            annotation (Placement(transformation(extent={{-36,30},{-30,36}})));
            T.MolarFlowRate bone_LactateFromMetabolism(varName="Bone-Lactate.Outflux")
            "Lactate flow from bone cells. "
            annotation (Placement(transformation(extent={{-36,40},{-30,46}})));
            T.Concentration bone_cLactate(varName="Bone-Lactate.[Lac-(mEq/L)]")
            "Bone intracellular lactate concentration. "
            annotation (Placement(transformation(extent={{-36,50},{-30,56}})));
            T.MolarFlowRate brain_CO2FromMetabolism(varName="Brain-CO2.OutflowBase")
            "Brain carbondioxyde outflow from cells metabolism. "
            annotation (Placement(transformation(extent={{-36,60},{-30,66}})));
            T.MolarFlowRate brain_O2Use(varName="Brain-Flow.O2Use", storeUnit="ml_STP/min")
            "Brain oxygen consumption. "
            annotation (Placement(transformation(extent={{-36,70},{-30,76}})));
            //T.Fraction BrainFuel_FractUseDelay(varName="Brain-Fuel.FractUseDelay")
            //    "Brain deficiency of nutrients needed by cells metabolism. "
            //annotation (Placement(transformation(extent={{-36,80},{-30,86}})));
            T.Fraction brain_Fuel_FractUseDelay(varName="Brain-Fuel.FractUseDelay")
            "Brain deficiency of nutrients needed by cells metabolism. "
            annotation (Placement(transformation(extent={{-36,90},{-30,96}})));
            T.MolarFlowRate brain_LactateFromMetabolism(varName="Brain-Lactate.Outflux")
            "Lactate flow from brain cells. "
            annotation (Placement(transformation(extent={{-36,82},{-30,88}})));
            T.Concentration brain_cLactate(varName="Brain-Lactate.[Lac-(mEq/L)]")
            "Brain intracellular lactate concentration."
            annotation (Placement(transformation(extent={{-36,110},{-30,116}})));
            T.MolarFlowRate CD_Glucose_Outflow(varName="CD_Glucose.Outflow", storeUnit="mg/min", unitConversions = Substances.Glucose.unitConversions)
            "Collecting duct glucose outflow to urine."
            annotation (Placement(transformation(extent={{-36,120},{-30,126}})));
            T.AmountOfSubstance CellProtein_Mass(varName="CellProtein.Mass", storeUnit="mg", unitConversions = Substances.AminoAcids.unitConversions)
            "Weight of all cellular proteins."
            annotation (Placement(transformation(extent={{-36,130},{-30,136}})));
            T.MolarFlowRate fat_CO2FromMetabolism(varName="Fat-CO2.OutflowBase")
            "Fat carbondioxyde outflow from cells metabolism."
            annotation (Placement(transformation(extent={{-36,140},{-30,146}})));
            T.MolarFlowRate fat_O2Use(varName="Fat-Flow.O2Use", storeUnit="ml_STP/min")
            "Fat oxygen consumption."
            annotation (Placement(transformation(extent={{-36,150},{-30,156}})));
            T.Fraction fat_Fuel_FractUseDelay(varName="Fat-Fuel.FractUseDelay")
            "Fat deficiency of nutrients needed by cells metabolism."
            annotation (Placement(transformation(extent={{-36,160},{-30,166}})));
            T.MolarFlowRate fat_LactateFromMetabolism(varName="Fat-Lactate.Outflux")
            "Lactate flow from fat cells."
            annotation (Placement(transformation(extent={{-36,170},{-30,176}})));
            T.Concentration fat_cLactate(varName="Fat-Lactate.[Lac-(mEq/L)]")
            "Fat intracellular lactate concentration."
            annotation (Placement(transformation(extent={{-36,180},{-30,186}})));
            T.MolarFlowRate GITract_CO2FromMetabolism(varName="GITract-CO2.OutflowBase")
            "GITract carbondioxyde outflow from cells metabolism."
            annotation (Placement(transformation(extent={{-36,190},{-30,196}})));
            T.MolarFlowRate GITract_O2Use(varName="GITract-Flow.O2Use", storeUnit="ml_STP/min")
            "GITract oxygen consumption."
            annotation (Placement(transformation(extent={{-36,200},{-30,206}})));
            T.Fraction GITract_Fuel_FractUseDelay(varName="GITract-Fuel.FractUseDelay")
            "GITract deficiency of nutrients needed by cells metabolism."
            annotation (Placement(transformation(extent={{-36,210},{-30,216}})));
            T.MolarFlowRate GITract_LactateFromMetabolism(varName="GITract-Lactate.Outflux")
            "Lactate flow from gITract cells."
            annotation (Placement(transformation(extent={{-36,220},{-30,226}})));
            T.Concentration GITract_cLactate(varName="GITract-Lactate.[Lac-(mEq/L)]")
            "GITract intracellular lactate concentration."
            annotation (Placement(transformation(extent={{-36,230},{-30,236}})));
            T.AmountOfSubstance GlucoseECF_Osmoles(varName="GlucosePool.Osmoles", storeUnit="mosm")
            "Extracellular glucose osmoles."
            annotation (Placement(transformation(extent={{-36,250},{-30,256}})));
            T.Concentration Glucose(varName="GlucosePool.[Glucose(mG/dL)]", storeUnit="mg/dl", unitConversions = Substances.Glucose.unitConversions)
            "Extracellular glucose concentration."
            annotation (Placement(transformation(extent={{-36,260},{-30,266}})));
            //Variable KA_Change(varName="KAPool.Change")
            //    "Change of keto-acids extracellular mass."
            //annotation (Placement(transformation(extent={{-34,270},{-28,276}})));
            T.AmountOfSubstance KAPool_Osmoles(varName="KAPool.Osmoles", storeUnit="mosm")
            "Keto-acids extracellular osmoles."
            annotation (Placement(transformation(extent={{-36,280},{-30,286}})));
            T.MolarFlowRate kidney_CO2FromMetabolism(varName="Kidney-CO2.OutflowBase")
            "Kidney carbondioxyde outflow from cells metabolism."
            annotation (Placement(transformation(extent={{-36,290},{-30,296}})));
            T.Fraction kidney_Fuel_FractUseDelay(varName="Kidney-Fuel.FractUseDelay")
            "Kidney deficiency of nutrients needed by cells metabolism."
            annotation (Placement(transformation(extent={{-36,300},{-30,306}})));
            T.MolarFlowRate kidney_LactateFromMetabolism(varName="Kidney-Lactate.Outflux")
            "Lactate flow from kidney cells."
            annotation (Placement(transformation(extent={{-36,310},{-30,316}})));
            T.Concentration kidney_cLactate(varName="Kidney-Lactate.[Lac-(mEq/L)]")
            "Kidney intracellular lactate concentration."
            annotation (Placement(transformation(extent={{-36,320},{-30,326}})));
            T.MolarFlowRate kidney_O2Use(varName="Kidney-O2.O2Use", storeUnit="ml_STP/min")
            "Kidney O2 consumption."
            annotation (Placement(transformation(extent={{-36,330},{-30,336}})));
            T.MolarFlowRate liver_GlucoseToCellStorageFlow(varName="LM_Glycogen.Gain", storeUnit="mg/min", unitConversions = Substances.Glucose.unitConversions)
            "Liver glycogen gain from glucose."
            annotation (Placement(transformation(extent={{-36,340},{-30,346}})));
            T.MolarFlowRate LactateFromTissues(varName="LacPool.Change")
            "Change of extracellular lactate mass."
            annotation (Placement(transformation(extent={{-36,360},{-30,366}})));
            T.AmountOfSubstance LacPool_Mass_mEq(varName="LacPool.Mass")
            "Extracellular lactate mass."
            annotation (Placement(transformation(extent={{-36,370},{-30,376}})));
            T.Concentration LacPool_Lac_mEq_per_litre(varName="LacPool.[Lac-(mEq/L)]")
            "Lactate extracellular concentration."
            annotation (Placement(transformation(extent={{-36,380},{-30,386}})));
            T.MolarFlowRate leftHeart_CO2FromMetabolism(varName="LeftHeart-CO2.OutflowBase")
            "LeftHeart carbondioxyde outflow from cells metabolism."
            annotation (Placement(transformation(extent={{-36,390},{-30,396}})));
            T.MolarFlowRate leftHeart_O2Use(varName="LeftHeart-Flow.O2Use", storeUnit="ml_STP/min")
            "LeftHeart oxygen consumption."
            annotation (Placement(transformation(extent={{-36,400},{-30,406}})));
            T.Fraction leftHeart_Fuel_FractUseDelay(varName="LeftHeart-Fuel.FractUseDelay")
            "LeftHeart deficiency of nutrients needed by cells metabolism."
            annotation (Placement(transformation(extent={{-36,410},{-30,416}})));
            T.MolarFlowRate leftHeart_LactateFromMetabolism(varName="LeftHeart-Lactate.Outflux")
            "Lactate flow from leftHeart cells."
            annotation (Placement(transformation(extent={{-36,420},{-30,426}})));
            T.Concentration leftHeart_cLactate(varName="LeftHeart-Lactate.[Lac-(mEq/L)]")
            "LeftHeart intracellular lactate concentration."
            annotation (Placement(transformation(extent={{-36,430},{-30,436}})));
            T.MolarFlowRate LeftHeart_O2Need(varName="LeftHeart-Metabolism.O2Need", storeUnit="ml_STP/min")
            "Oxygen needed to be consumed by left heart cells if only aerobic metabolism is running."
            annotation (Placement(transformation(extent={{-36,440},{-30,446}})));

            T.AmountOfSubstance LipidDeposits_Mass(varName="LipidDeposits.Mass", storeUnit="g", unitConversions = Substances.FattyAcids.unitConversions)
            "Mass of lipids in fat cells."
            annotation (Placement(transformation(extent={{-36,450},{-30,456}})));
            T.MolarFlowRate liver_CO2FromMetabolism(varName="Liver-CO2.OutflowBase")
            "Liver carbondioxyde outflow from cells metabolism."
            annotation (Placement(transformation(extent={{-36,460},{-30,466}})));
            T.Fraction liver_Fuel_FractUseDelay(varName="Liver-Fuel.FractUseDelay")
            "Liver deficiency of nutrients needed by cells metabolism."
            annotation (Placement(transformation(extent={{-36,470},{-30,476}})));
            T.MolarFlowRate liver_LactateFromMetabolism(varName="Liver-Lactate.Outflux")
            "Lactate flow from liver cells."
            annotation (Placement(transformation(extent={{-36,480},{-30,486}})));
            T.Concentration liver_cLactate(varName="Liver-Lactate.[Lac-(mEq/L)]")
            "Liver intracellular lactate concentration."
            annotation (Placement(transformation(extent={{-36,490},{-30,496}})));
            T.MolarFlowRate liver_O2Use(varName="Liver-O2.O2Use", storeUnit="ml_STP/min")
            "Oxygen comsuption by liver."
            annotation (Placement(transformation(extent={{-36,500},{-30,506}})));
            T.Osmolarity MedullaUrea_Osmolarity(varName="MedullaUrea.Osmolarity", storeUnit="mosm/l")
            "Kidney medulla interstitial urea osmolarity."
            annotation (Placement(transformation(extent={{-36,510},{-30,516}})));
            T.VolumeFlowRate MetabolicH2O_Rate(varName="MetabolicH2O.Rate")
            "Water synthesis in metabolism."
            annotation (Placement(transformation(extent={{-36,520},{-30,526}})));
            T.MolarFlowRate otherTissue_CO2FromMetabolism(varName="OtherTissue-CO2.OutflowBase")
            "OtherTissue carbondioxyde outflow from cells metabolism."
            annotation (Placement(transformation(extent={{-36,530},{-30,536}})));
            T.MolarFlowRate otherTissue_O2Use(varName="OtherTissue-Flow.O2Use", storeUnit="ml_STP/min")
            "OtherTissue oxygen consumption."
            annotation (Placement(transformation(extent={{-36,540},{-30,546}})));
            T.Fraction otherTissue_Fuel_FractUseDelay(varName="OtherTissue-Fuel.FractUseDelay")
            "OtherTissue deficiency of nutrients needed by cells metabolism."
            annotation (Placement(transformation(extent={{-36,550},{-30,556}})));
            T.MolarFlowRate otherTissue_LactateFromMetabolism(varName="OtherTissue-Lactate.Outflux")
            "Lactate flow from otherTissue cells."
            annotation (Placement(transformation(extent={{-36,560},{-30,566}})));
            T.Concentration otherTissue_cLactate(varName="OtherTissue-Lactate.[Lac-(mEq/L)]")
            "OtherTissue intracellular lactate concentration."
            annotation (Placement(transformation(extent={{-36,570},{-30,576}})));
            T.MolarFlowRate respiratoryMuscle_CO2FromMetabolism(varName="RespiratoryMuscle-CO2.OutflowBase")
            "RespiratoryMuscle carbondioxyde outflow from cells metabolism."
            annotation (Placement(transformation(extent={{-36,580},{-30,586}})));

            T.MolarFlowRate respiratoryMuscle_O2Use(varName="RespiratoryMuscle-Flow.O2Use", storeUnit="ml_STP/min")
            "RespiratoryMuscle oxygen consumption."
            annotation (Placement(transformation(extent={{-36,590},{-30,596}})));
            T.Fraction respiratoryMuscle_Fuel_FractUseDelay(varName="RespiratoryMuscle-Fuel.FractUseDelay")
            "RespiratoryMuscle deficiency of nutrients needed by cells metabolism."
            annotation (Placement(transformation(extent={{-36,600},{-30,606}})));

            T.MolarFlowRate respiratoryMuscle_GlucoseToCellStorageFlow(varName="RespiratoryMuscle-Glycogen.Synthesis", storeUnit="mg/min", unitConversions = Substances.Glucose.unitConversions)
            "Glycogen synthesis in skeletal muscle cells of respiratory muscles."
            annotation (Placement(transformation(extent={{-36,610},{-30,616}})));

            T.MolarFlowRate respiratoryMuscle_LactateFromMetabolism(varName="RespiratoryMuscle-Lactate.Outflux")
            "Lactate flow from respiratoryMuscle cells."
            annotation (Placement(transformation(extent={{-36,620},{-30,626}})));
            T.Concentration respiratoryMuscle_cLactate(varName="RespiratoryMuscle-Lactate.[Lac-(mEq/L)]")
            "RespiratoryMuscle intracellular lactate concentration."
            annotation (Placement(transformation(extent={{-36,630},{-30,636}})));
            T.MolarFlowRate RespiratoryMuscle_O2Need(varName="RespiratoryMuscle-Metabolism.O2Need", storeUnit="ml_STP/min")
            "Oxygen needed to be consumed by respiratory muscle cells if only aerobic metabolism is running."
            annotation (Placement(transformation(extent={{-36,640},{-30,646}})));

            T.MolarFlowRate rightHeart_CO2FromMetabolism(varName="RightHeart-CO2.OutflowBase")
            "RightHeart carbondioxyde outflow from cells metabolism."
            annotation (Placement(transformation(extent={{-36,650},{-30,656}})));
            T.MolarFlowRate rightHeart_O2Use(varName="RightHeart-Flow.O2Use", storeUnit="ml_STP/min")
            "RightHeart oxygen consumption."
            annotation (Placement(transformation(extent={{-36,660},{-30,666}})));
            T.Fraction rightHeart_Fuel_FractUseDelay(varName="RightHeart-Fuel.FractUseDelay")
            "RightHeart deficiency of nutrients needed by cells metabolism."
            annotation (Placement(transformation(extent={{-36,670},{-30,676}})));
            T.MolarFlowRate rightHeart_LactateFromMetabolism(varName="RightHeart-Lactate.Outflux")
            "Lactate flow from rightHeart cells."
            annotation (Placement(transformation(extent={{-36,680},{-30,686}})));
            T.Concentration rightHeart_cLactate(varName="RightHeart-Lactate.[Lac-(mEq/L)]")
            "RightHeart intracellular lactate concentration."
            annotation (Placement(transformation(extent={{-36,690},{-30,696}})));
            T.MolarFlowRate skeletalMuscle_O2Use(varName="SkeletalMuscle-Flow.O2Use", storeUnit="ml_STP/min")
            "SkeletalMuscle oxygen consumption."
            annotation (Placement(transformation(extent={{-36,700},{-30,706}})));
            T.Fraction skeletalMuscle_Fuel_FractUseDelay(varName="SkeletalMuscle-Fuel.FractUseDelay")
            "SkeletalMuscle deficiency of nutrients needed by cells metabolism."
            annotation (Placement(transformation(extent={{-36,710},{-30,716}})));
            T.MolarFlowRate skeletalMuscle_GlucoseToCellStorageFlow(varName="SkeletalMuscle-Glycogen.Synthesis", storeUnit="mg/min", unitConversions = Substances.Glucose.unitConversions)
            "Skeletal muscle glycogen synthesis rate."
            annotation (Placement(transformation(extent={{-36,720},{-30,726}})));
            T.MolarFlowRate skeletalMuscle_LactateFromMetabolism(varName="SkeletalMuscle-Lactate.Outflux")
            "Lactate flow from skeletalMuscle cells."
            annotation (Placement(transformation(extent={{-36,730},{-30,736}})));
            T.Concentration skeletalMuscle_cLactate(varName="SkeletalMuscle-Lactate.[Lac-(mEq/L)]")
            "SkeletalMuscle intracellular lactate concentration."
            annotation (Placement(transformation(extent={{-36,740},{-30,746}})));
            /*T.MolarFlowRate SkeletalMuscle_O2Need(varName="SkeletalMuscle-Metabolism.O2Need", storeUnit="ml_STP/min")
            "Oxygen needed to be consumed by skeletal muscle cells if only aerobic metabolism is running."
            annotation (Placement(transformation(extent={{-36,750},{-30,756}})));
            */
            T.MolarFlowRate skin_CO2FromMetabolism(varName="Skin-CO2.OutflowBase")
            "Skin carbondioxyde outflow from cells metabolism."
            annotation (Placement(transformation(extent={{-36,760},{-30,766}})));
            T.MolarFlowRate skin_O2Use(varName="Skin-Flow.O2Use", storeUnit="ml_STP/min")
            "Skin oxygen consumption."
            annotation (Placement(transformation(extent={{-36,770},{-30,776}})));
            T.Fraction skin_Fuel_FractUseDelay(varName="Skin-Fuel.FractUseDelay")
            "Skin deficiency of nutrients needed by cells metabolism."
            annotation (Placement(transformation(extent={{-36,780},{-30,786}})));
            T.MolarFlowRate skin_LactateFromMetabolism(varName="Skin-Lactate.Outflux")
            "Lactate flow from skin cells."
            annotation (Placement(transformation(extent={{-36,790},{-30,796}})));
            T.Concentration skin_cLactate(varName="Skin-Lactate.[Lac-(mEq/L)]")
            "Skin intracellular lactate concentration."
            annotation (Placement(transformation(extent={{-36,800},{-30,806}})));
            T.AmountOfSubstance UreaICF_Osmoles(varName="UreaCell.Osmoles", storeUnit="mosm")
            "Intracellular urea osmoles."
            annotation (Placement(transformation(extent={{-36,810},{-30,816}})));
            T.AmountOfSubstance UreaECF_Osmoles(varName="UreaPool.Osmoles", storeUnit="mosm")
            "Extracellular urea osmoles."
            annotation (Placement(transformation(extent={{-36,820},{-30,826}})));
            T.MolarFlowRate RightHeart_O2Need(varName=
              "RightHeart-Metabolism.O2Need", storeUnit="ml_STP/min")
            "Oxygen needed to be consumed by left heart cells if only aerobic metabolism is running."
            annotation (Placement(transformation(extent={{-36,-18},{-30,-12}})));

            T.MolarFlowRate CD_KA_Outflow(varName="CD_KA.Outflow", storeUnit="mmol/min")
            "Collecting duct keto-acids outflow to urine."
            annotation (Placement(transformation(extent={{-36,-32},{-30,-26}})));
            T.Concentration KAPool_conc_per_liter(varName=
              "KAPool.[KA(mMol/L)]") ";Keto-acids extracellular concentration."
            annotation (Placement(transformation(extent={{-36,-40},{-30,-34}})));
            T.MolarFlowRate skeletalMuscle_CO2FromMetabolism(varName="SkeletalMuscle-CO2.OutflowBase")
            "SkeletalMuscle carbondioxyde outflow from cells metabolism."
            annotation (Placement(transformation(extent={{-36,-58},{-28,-50}})));
            T.MolarFlowRate KA_Change_mmol_per_min(varName=
              "KAPool.Change[mMol/min]")
            "Change of keto-acids extracellular mass."
            annotation (Placement(transformation(extent={{-32,-74},{-26,-68}})));
            T.HeatFlowRate MetabolismCaloriesUsed_CoreHeat(                         varName="Metabolism-CaloriesUsed.CoreHeat", storeUnit="cal/min")
            annotation (Placement(transformation(extent={{-42,-86},{-22,-106}})));
            T.HeatFlowRate MetabolismCaloriesUsed_SkeletalMuscleHeat(                         varName="Metabolism-CaloriesUsed.SkeletalMuscleHeat", storeUnit="cal/min")
            annotation (Placement(transformation(extent={{-74,-112},{-58,-96}})));
            T.HeatFlowRate MetabolismCaloriesUsed_SkinHeat(                         varName=
              "Metabolism-CaloriesUsed.SkinHeat",storeUnit="cal/min")
            annotation (Placement(transformation(extent={{-76,-78},{-56,-98}})));
            /*T.Concentration KAPool_mg_per_dl(varName="KAPool.[KA(mG/dL)]", storeUnit="mg/dl", unitConversions = Substances.KetoAcids.unitConversions)
            ";Keto-acids extracellular concentration."
            annotation (Placement(transformation(extent={{-36,-46},{-30,-40}})));*/
            T.HeatFlowRate skeletalMuscle_producedHeat(storeUnit="cal/min", varName=
            "Metabolism-CaloriesUsed.SkeletalMuscleHeat")
            "Skeletal muscle termal energy flow."
            annotation (Placement(transformation(extent={{-36,-2},{-30,4}})));
            T.Concentration Leptin(varName="LeptinPool.[Leptin(nG/mL)]", storeUnit="ng/ml", unitConversions = Substances.Leptin.unitConversions)
            "Leptin extracellular concentration."
            annotation (Placement(transformation(extent={{-82,-26},{-76,-20}})));
            T.Concentration PortalVein_Glucagon(varName="PortalVein-Glucagon.[Glucagon]",storeUnit="ng/l", unitConversions = Substances.Glucagon.unitConversions)
            "Glucagon portal vein concentration."
            annotation (Placement(transformation(extent={{-68,-12},{-62,-6}})));
            T.Concentration Glucagon_conc(varName="GlucagonPool.[Glucagon]",storeUnit="ng/l", unitConversions = Substances.Glucagon.unitConversions)
            "Extracellular glucagon concentration."
            annotation (Placement(transformation(extent={{-84,-4},{-78,2}})));

            T.Concentration ThyroidEffect1(varName="ThyroidPool.[Total_T4-T3]", storeUnit="ug/dl", unitConversions = Substances.Thyroxine.unitConversions)
            "Triiodothyronine  and thyroxine effect to metabolism."
            annotation (Placement(transformation(extent={{-82,4},{-76,10}})));

            ////to debug:
            T.Concentration FAPool(varName="FAPool.[FA(mMol/L)]")
            "Fatty-acids extracellular concentration."
            annotation (Placement(transformation(extent={{-100,-42},{-94,-36}})));
            T.Concentration Triglyc(varName="TriglyceridePool.[Triglyceride(mMol/L)]")
            "Triglycerides extracellular concentration."
            annotation (Placement(transformation(extent={{-100,-34},{-94,-28}})));
            T.MolarFlowRate GlucoseAbsorption(
                              varName="GILumenCarbohydrates.Absorption", storeUnit="mg/min", unitConversions = Substances.Glucose.unitConversions)
            "Glucose absorption from gastro intestinal lumen."
            annotation (Placement(transformation(extent={{-108,64},{-102,70}})));

            T.MolarFlowRate GlucoseToTissues(
                              varName="Metabolism-Glucose.TotalBurn", storeUnit="mg/min", unitConversions = Substances.Glucose.unitConversions)
            "Glucose flux."
            annotation (Placement(transformation(extent={{-108,58},{-102,64}})));
            T.MolarFlowRate GlucoseDegradation(
                              varName="GlucoseDecomposition.Rate", storeUnit="mg/min", unitConversions = Substances.Glucose.unitConversions)
            "Glucose flux."
            annotation (Placement(transformation(extent={{-108,52},{-102,58}})));
            T.MolarFlowRate GlucoseFromGluconeogenesis(
                              varName="LM_Gluconeogenesis.Rate", storeUnit="mg/min", unitConversions = Substances.Glucose.unitConversions)
            "Glucose flux."
            annotation (Placement(transformation(extent={{-108,46},{-102,52}})));
            T.MolarFlowRate GlucoseFromFA(
                              varName="LM_FA_Glucose.GlucoseUptake", storeUnit="mg/min", unitConversions = Substances.Glucose.unitConversions)
            "Glucose flux."
            annotation (Placement(transformation(extent={{-108,40},{-102,46}})));
            T.MolarFlowRate FatAbsorption(
                              varName="GILumenFat.Absorption", storeUnit="mg/min", unitConversions = Substances.FattyAcids.unitConversions)
            "Fat absorption from gastro intestinal lumen."
            annotation (Placement(transformation(extent={{-108,70},{-102,76}})));
            T.MolarFlowRate ProteinAbsorption(
                              varName="GILumenProtein.Absorption", storeUnit="mg/min", unitConversions = Substances.AminoAcids.unitConversions)
            "Protein absorption from gastro intestinal lumen."
            annotation (Placement(transformation(extent={{-108,76},{-102,82}})));
            T.MolarFlowRate FatyAcids2Ketogenesis(
            storeUnit="mg/min",
            varName="LM_Ketoacids.FattyAcidUptake",
            unitConversions=Substances.FattyAcids.unitConversions) "FA flux."
            annotation (Placement(transformation(extent={{-108,34},{-102,40}})));
            T.MolarFlowRate AminoAcids2FA(
            storeUnit="mg/min",
            unitConversions=Substances.AminoAcids.unitConversions,
            varName="LM_FA_AminoAcids.AminoAcidUptake") "AA flux."
            annotation (Placement(transformation(extent={{-108,28},{-102,34}})));
            T.MolarFlowRate AminoAcids2Glucose(
            storeUnit="mg/min",
            varName="LM_Gluconeogenesis.AminoAcidUptake",
            unitConversions=Substances.AminoAcids.unitConversions) "AA flux."
            annotation (Placement(transformation(extent={{-108,22},{-102,28}})));
            T.MolarFlowRate Bone_O2Need(storeUnit="ml_STP/min", varName="Bone-Metabolism.O2Need")
            "Bone oxygen need."
            annotation (Placement(transformation(extent={{-98,-52},{-92,-46}})));
            T.MolarFlowRate Brain_O2Need(storeUnit="ml_STP/min", varName="Brain-Metabolism.O2Need")
            "Brain oxygen need."
            annotation (Placement(transformation(extent={{-98,-60},{-92,-54}})));
            T.MolarFlowRate SkeletalMuscle_O2Need2(storeUnit="ml_STP/min", varName="SkeletalMuscle-Metabolism.O2Need")
            "Skeletal muscle oxygen need."
            annotation (Placement(transformation(extent={{-98,-66},{-92,-60}})));
            /*T.MolarFlowRate RespirarotyMuscle_O2Need(storeUnit="ml_STP/min", varName=
            "RespiratoryMuscle-Metabolism.O2Need") "Respiraroty muscle oxygen need."
            annotation (Placement(transformation(extent={{-98,-72},{-92,-66}})));*/
            T.MolarFlowRate OtherTissue_O2Need(storeUnit="ml_STP/min", varName="OtherTissue-Metabolism.O2Need")
            "Other tissue oxygen need."
            annotation (Placement(transformation(extent={{-98,-80},{-92,-74}})));
            T.MolarFlowRate GITract_O2Need5(                            storeUnit="ml_STP/min", varName=
              "GITract-Metabolism.O2Need") "GITract oxygen need."
            annotation (Placement(transformation(extent={{-98,-86},{-92,-80}})));
            T.MolarFlowRate Fat_O2Need(storeUnit="ml_STP/min", varName="Fat-Metabolism.O2Need")
            "Fat oxygen need."
            annotation (Placement(transformation(extent={{-98,-46},{-92,-40}})));
        equation
            connect(bone_CO2FromMetabolism.y, busConnector.bone_CO2FromMetabolism) annotation (Line(
            points={{-29.7,13},{90,13},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(bone_O2Use.y, busConnector.bone_O2Use) annotation (Line(
            points={{-29.7,23},{90,23},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(bone_Fuel_FractUseDelay.y, busConnector.bone_Fuel_FractUseDelay) annotation (Line(
            points={{-29.7,33},{90,33},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(bone_LactateFromMetabolism.y, busConnector.bone_LactateFromMetabolism) annotation (Line(
            points={{-29.7,43},{90,43},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(bone_cLactate.y, busConnector.bone_cLactate) annotation (Line(
            points={{-29.7,53},{90,53},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(brain_CO2FromMetabolism.y, busConnector.brain_CO2FromMetabolism) annotation (Line(
            points={{-29.7,63},{90,63},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(brain_O2Use.y, busConnector.brain_O2Use) annotation (Line(
            points={{-29.7,73},{90,73},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(brain_Fuel_FractUseDelay.y, busConnector.brain_Fuel_FractUseDelay) annotation (Line(
            points={{-29.7,93},{90,93},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(brain_LactateFromMetabolism.y, busConnector.brain_LactateFromMetabolism) annotation (Line(
            points={{-29.7,85},{90,85},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(brain_cLactate.y, busConnector.brain_cLactate) annotation (Line(
            points={{-29.7,113},{90,113},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(CD_Glucose_Outflow.y, busConnector.CD_Glucose_Outflow) annotation (Line(
            points={{-29.7,123},{90,123},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(CellProtein_Mass.y, busConnector.CellProteinAA) annotation (Line(
            points={{-29.7,133},{90,133},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(fat_CO2FromMetabolism.y, busConnector.fat_CO2FromMetabolism) annotation (Line(
            points={{-29.7,143},{90,143},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(fat_O2Use.y, busConnector.fat_O2Use) annotation (Line(
            points={{-29.7,153},{90,153},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(fat_Fuel_FractUseDelay.y, busConnector.fat_Fuel_FractUseDelay) annotation (Line(
            points={{-29.7,163},{90,163},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(fat_LactateFromMetabolism.y, busConnector.fat_LactateFromMetabolism) annotation (Line(
            points={{-29.7,173},{90,173},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(fat_cLactate.y, busConnector.fat_cLactate) annotation (Line(
            points={{-29.7,183},{90,183},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(GITract_CO2FromMetabolism.y, busConnector.GITract_CO2FromMetabolism) annotation (Line(
            points={{-29.7,193},{90,193},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(GITract_O2Use.y, busConnector.GITract_O2Use) annotation (Line(
            points={{-29.7,203},{90,203},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(GITract_Fuel_FractUseDelay.y, busConnector.GITract_Fuel_FractUseDelay) annotation (Line(
            points={{-29.7,213},{90,213},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(GITract_LactateFromMetabolism.y, busConnector.GITract_LactateFromMetabolism) annotation (Line(
            points={{-29.7,223},{90,223},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(GITract_cLactate.y, busConnector.GITract_cLactate) annotation (Line(
            points={{-29.7,233},{90,233},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(GlucoseECF_Osmoles.y, busConnector.GlucoseECF_Osmoles) annotation (Line(
            points={{-29.7,253},{90,253},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(Glucose.y, busConnector.Glucose) annotation (Line(
            points={{-29.7,263},{90,263},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(KAPool_Osmoles.y, busConnector.KAPool_Osmoles) annotation (Line(
            points={{-29.7,283},{90,283},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(kidney_CO2FromMetabolism.y, busConnector.kidney_CO2FromMetabolism) annotation (Line(
            points={{-29.7,293},{90,293},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(kidney_Fuel_FractUseDelay.y, busConnector.kidney_Fuel_FractUseDelay) annotation (Line(
            points={{-29.7,303},{90,303},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(kidney_LactateFromMetabolism.y, busConnector.kidney_LactateFromMetabolism) annotation (Line(
            points={{-29.7,313},{90,313},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(kidney_cLactate.y, busConnector.kidney_cLactate) annotation (Line(
            points={{-29.7,323},{90,323},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(kidney_O2Use.y, busConnector.kidney_O2Use) annotation (Line(
            points={{-29.7,333},{90,333},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(liver_GlucoseToCellStorageFlow.y, busConnector.liver_GlucoseToCellStorageFlow) annotation (Line(
            points={{-29.7,343},{90,343},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(LactateFromTissues.y, busConnector.LactateFromTissues) annotation (Line(
            points={{-29.7,363},{90,363},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(LacPool_Mass_mEq.y, busConnector.LacPool_Mass) annotation (Line(
            points={{-29.7,373},{90,373},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(LacPool_Lac_mEq_per_litre.y, busConnector.LacPool) annotation (Line(
            points={{-29.7,383},{90,383},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(leftHeart_CO2FromMetabolism.y, busConnector.leftHeart_CO2FromMetabolism) annotation (Line(
            points={{-29.7,393},{90,393},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(leftHeart_O2Use.y, busConnector.leftHeart_O2Use) annotation (Line(
            points={{-29.7,403},{90,403},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(leftHeart_Fuel_FractUseDelay.y, busConnector.leftHeart_Fuel_FractUseDelay) annotation (Line(
            points={{-29.7,413},{90,413},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(leftHeart_LactateFromMetabolism.y, busConnector.leftHeart_LactateFromMetabolism) annotation (Line(
            points={{-29.7,423},{90,423},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(leftHeart_cLactate.y, busConnector.leftHeart_cLactate) annotation (Line(
            points={{-29.7,433},{90,433},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(LeftHeart_O2Need.y, busConnector.LeftHeart_O2Need) annotation (Line(
            points={{-29.7,443},{90,443},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(LipidDeposits_Mass.y, busConnector.LipidDepositsFA) annotation (Line(
            points={{-29.7,453},{90,453},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(liver_CO2FromMetabolism.y, busConnector.liver_CO2FromMetabolism) annotation (Line(
            points={{-29.7,463},{90,463},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(liver_Fuel_FractUseDelay.y, busConnector.liver_Fuel_FractUseDelay) annotation (Line(
            points={{-29.7,473},{90,473},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(liver_LactateFromMetabolism.y, busConnector.liver_LactateFromMetabolism) annotation (Line(
            points={{-29.7,483},{90,483},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(liver_cLactate.y, busConnector.liver_cLactate) annotation (Line(
            points={{-29.7,493},{90,493},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(liver_O2Use.y, busConnector.liver_O2Use) annotation (Line(
            points={{-29.7,503},{90,503},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(MedullaUrea_Osmolarity.y, busConnector.MedullaUrea_Osmolarity) annotation (Line(
            points={{-29.7,513},{90,513},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(MetabolicH2O_Rate.y, busConnector.MetabolicH2O_Rate) annotation (Line(
            points={{-29.7,523},{90,523},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(otherTissue_CO2FromMetabolism.y, busConnector.otherTissue_CO2FromMetabolism) annotation (Line(
            points={{-29.7,533},{90,533},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(otherTissue_O2Use.y, busConnector.otherTissue_O2Use) annotation (Line(
            points={{-29.7,543},{90,543},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(otherTissue_Fuel_FractUseDelay.y, busConnector.otherTissue_Fuel_FractUseDelay) annotation (Line(
            points={{-29.7,553},{90,553},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(otherTissue_LactateFromMetabolism.y, busConnector.otherTissue_LactateFromMetabolism) annotation (Line(
            points={{-29.7,563},{90,563},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(otherTissue_cLactate.y, busConnector.otherTissue_cLactate) annotation (Line(
            points={{-29.7,573},{90,573},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(respiratoryMuscle_CO2FromMetabolism.y, busConnector.respiratoryMuscle_CO2FromMetabolism) annotation (Line(
            points={{-29.7,583},{90,583},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(respiratoryMuscle_O2Use.y, busConnector.respiratoryMuscle_O2Use) annotation (Line(
            points={{-29.7,593},{90,593},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(respiratoryMuscle_Fuel_FractUseDelay.y, busConnector.respiratoryMuscle_Fuel_FractUseDelay) annotation (Line(
            points={{-29.7,603},{90,603},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(respiratoryMuscle_GlucoseToCellStorageFlow.y, busConnector.respiratoryMuscle_GlucoseToCellStorageFlow) annotation (Line(
            points={{-29.7,613},{90,613},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(respiratoryMuscle_LactateFromMetabolism.y, busConnector.respiratoryMuscle_LactateFromMetabolism) annotation (Line(
            points={{-29.7,623},{90,623},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(respiratoryMuscle_cLactate.y, busConnector.respiratoryMuscle_cLactate) annotation (Line(
            points={{-29.7,633},{90,633},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));

            connect(rightHeart_CO2FromMetabolism.y, busConnector.rightHeart_CO2FromMetabolism) annotation (Line(
            points={{-29.7,653},{90,653},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(rightHeart_O2Use.y, busConnector.rightHeart_O2Use) annotation (Line(
            points={{-29.7,663},{90,663},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(rightHeart_Fuel_FractUseDelay.y, busConnector.rightHeart_Fuel_FractUseDelay) annotation (Line(
            points={{-29.7,673},{90,673},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(rightHeart_LactateFromMetabolism.y, busConnector.rightHeart_LactateFromMetabolism) annotation (Line(
            points={{-29.7,683},{90,683},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(rightHeart_cLactate.y, busConnector.rightHeart_cLactate) annotation (Line(
            points={{-29.7,693},{90,693},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(skeletalMuscle_O2Use.y, busConnector.skeletalMuscle_O2Use) annotation (Line(
            points={{-29.7,703},{90,703},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(skeletalMuscle_Fuel_FractUseDelay.y, busConnector.skeletalMuscle_Fuel_FractUseDelay) annotation (Line(
            points={{-29.7,713},{90,713},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(skeletalMuscle_GlucoseToCellStorageFlow.y, busConnector.skeletalMuscle_GlucoseToCellStorageFlow) annotation (Line(
            points={{-29.7,723},{90,723},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(skeletalMuscle_LactateFromMetabolism.y, busConnector.skeletalMuscle_LactateFromMetabolism) annotation (Line(
            points={{-29.7,733},{90,733},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(skeletalMuscle_cLactate.y, busConnector.skeletalMuscle_cLactate) annotation (Line(
            points={{-29.7,743},{90,743},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));

            connect(skin_CO2FromMetabolism.y, busConnector.skin_CO2FromMetabolism) annotation (Line(
            points={{-29.7,763},{90,763},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(skin_O2Use.y, busConnector.skin_O2Use) annotation (Line(
            points={{-29.7,773},{90,773},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(skin_Fuel_FractUseDelay.y, busConnector.skin_Fuel_FractUseDelay) annotation (Line(
            points={{-29.7,783},{90,783},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(skin_LactateFromMetabolism.y, busConnector.skin_LactateFromMetabolism) annotation (Line(
            points={{-29.7,793},{90,793},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(skin_cLactate.y, busConnector.skin_cLactate) annotation (Line(
            points={{-29.7,803},{90,803},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(UreaICF_Osmoles.y, busConnector.UreaICF_Osmoles) annotation (Line(
            points={{-29.7,813},{90,813},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(UreaECF_Osmoles.y, busConnector.UreaECF_Osmoles) annotation (Line(
            points={{-29.7,823},{90,823},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));

            connect(RightHeart_O2Need.y, busConnector.RightHeart_O2Need) annotation (
            Line(
            points={{-29.7,-15},{90,-15},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(CD_KA_Outflow.y, busConnector.CD_KA_Outflow) annotation (Line(
            points={{-29.7,-29},{90,-29},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(KAPool_conc_per_liter.y, busConnector.KAPool)
            annotation (Line(
            points={{-29.7,-37},{90,-37},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(skeletalMuscle_CO2FromMetabolism.y, busConnector.skeletalMuscle_CO2FromMetabolism) annotation (Line(
            points={{-27.6,-54},{90,-54},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(KA_Change_mmol_per_min.y, busConnector.KA_Change_mmol_per_min)
            annotation (Line(
            points={{-25.7,-71},{90,-71},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(MetabolismCaloriesUsed_CoreHeat.y, busConnector.MetabolismCaloriesUsed_CoreHeat) annotation (Line(
            points={{-21,-96},{90,-96},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(MetabolismCaloriesUsed_SkeletalMuscleHeat.y, busConnector.MetabolismCaloriesUsed_SkeletalMuscleHeat) annotation (Line(
            points={{-57.2,-104},{90,-104},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(MetabolismCaloriesUsed_SkinHeat.y, busConnector.MetabolismCaloriesUsed_SkinHeat) annotation (Line(
            points={{-55,-88},{90,-88},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            /*connect(KAPool_mg_per_dl.y, busConnector.KAPool_mg_per_dl) annotation (Line(
            points={{-29.7,-43},{79,-43},{79,5}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));*/
            connect(Leptin.y, busConnector.Leptin) annotation (Line(
            points={{-75.7,-23},{90,-23},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(PortalVein_Glucagon.y, busConnector.PortalVein_Glucagon) annotation (Line(
            points={{-61.7,-9},{90,-9},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(Glucagon_conc.y, busConnector.Glucagon_conc) annotation (Line(
            points={{-77.7,-1},{90,-1},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(ThyroidEffect1.y, busConnector.Thyroxine) annotation (Line(
            points={{-75.7,7},{3.15,7},{3.15,-2},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(Triglyc.y, busConnector.Triglycerides) annotation (Line(
            points={{-93.7,-31},{90,-31},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(FAPool.y, busConnector.FattyAcids) annotation (Line(
            points={{-93.7,-39},{90,-39},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(GlucoseAbsorption.y, busConnector.Glucose_GILumenAbsorption)
            annotation (Line(
            points={{-101.7,67},{90,67},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(GlucoseToTissues.y, busConnector.Glucose_TotalBurn) annotation (Line(
            points={{-101.7,61},{90,61},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(GlucoseDegradation.y, busConnector.GlucoseDecomposition) annotation (
            Line(
            points={{-101.7,55},{90,55},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(GlucoseFromGluconeogenesis.y, busConnector.GlucoseFromGluconeogenesis)
            annotation (Line(
            points={{-101.7,49},{90,49},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(GlucoseFromFA.y, busConnector.GlucoseToFA) annotation (Line(
            points={{-101.7,43},{90,43},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(FatAbsorption.y, busConnector.FA_Absorbtion) annotation (Line(
            points={{-101.7,73},{90,73},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(ProteinAbsorption.y, busConnector.Protein_GILumenAbsorption)
            annotation (Line(
            points={{-101.7,79},{90,79},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(FatyAcids2Ketogenesis.y, busConnector.FattyAcidsToKA) annotation (
            Line(
            points={{-101.7,37},{90,37},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(AminoAcids2Glucose.y, busConnector.AminoAcidsToGlucose) annotation (
            Line(
            points={{-101.7,25},{90,25},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(AminoAcids2FA.y, busConnector.AminoAcidsToFA) annotation (Line(
            points={{-101.7,31},{90,31},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(Bone_O2Need.y, busConnector.bone_O2Need) annotation (Line(
            points={{-91.7,-49},{90,-49},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(Brain_O2Need.y, busConnector.brain_O2Need) annotation (Line(
            points={{-91.7,-57},{90,-57},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(SkeletalMuscle_O2Need2.y, busConnector.skeletalMuscle_O2Need) annotation (
            Line(
            points={{-91.7,-63},{90,-63},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(RespiratoryMuscle_O2Need.y, busConnector.respiratoryMuscle_O2Need) annotation (
            Line(
            points={{-91.7,-69},{90,-69},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(OtherTissue_O2Need.y, busConnector.otherTissue_O2Need) annotation (Line(
            points={{-91.7,-77},{90,-77},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(GITract_O2Need5.y, busConnector.GITract_O2Need) annotation (Line(
            points={{-91.7,-83},{90,-83},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(Fat_O2Need.y, busConnector.fat_O2Need) annotation (Line(
            points={{-91.7,-43},{90,-43},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(skeletalMuscle_producedHeat.y, busConnector.skeletalMuscle_heatProduction)
            annotation (Line(
            points={{-29.7,1},{30.15,1},{30.15,-2},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,
                  -100},{100,100}}), graphics={
                                    Text(
                extent={{-120,-104},{122,-138}},
                lineColor={0,0,255},
                textString="%name")}));
        end Variables;
end IO_Bus;
