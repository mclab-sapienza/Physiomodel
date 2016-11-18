within Physiomodel.Metabolism.TissueMetabolism;
        model Liver
            extends TissueMetabolismBase;//(Lactate(stateName="Liver-Lactate.Mass"));
            extends Physiolibrary.Icons.Liver;
            Physiolibrary.Chemical.Interfaces.ChemicalPort_a fattyAcids
             annotation (
            Placement(transformation(extent={{-103,-80},{-83,-60}}),
            iconTransformation(extent={{90,-70},{110,-50}})));   //(conc(final displayUnit="mg/ml"), q(final displayUnit="mg/min"))
            Physiomodel.Metabolism.CellularMetabolism
                           cellularMetabolism(LacFractionData={{10,0,0},{100,0.3,0}},
            PO2OnAerobicFractionData=PO2OnAerobicFractionData,
            Ratio(start=0.087))
            annotation (Placement(transformation(extent={{62,-76},{92,-46}})));
            // glucose(conc(start=1.43)),
            NutrientDelivery_Fat fattyAcidsDelivery
            annotation (Placement(transformation(extent={{-74,-80},{-54,-60}})));
                                               //(neededFlow(q(start=125.166135276543)))
            NutrientDelivery_2 glucoseDelivery
            annotation (Placement(transformation(extent={{-72,-44},{-52,-24}})));
                                          //(delivery(start=991.319))
            Physiolibrary.Chemical.Interfaces.ChemicalPort_a GILumenCarbohydrates
            annotation (Placement(transformation(extent={{-96,-58},{-76,-38}}),
            iconTransformation(extent={{-30,90},{-10,110}})));
            Physiolibrary.Chemical.Sensors.ConcentrationMeasure concentrationMeasure1
            annotation (Placement(transformation(
            extent={{-10,-10},{10,10}},
            rotation=270,
            origin={-52,-46})));
            Physiolibrary.Types.RealIO.ConcentrationOutput PortalVeinGlucose
                                                              annotation (
            Placement(transformation(extent={{-28,-52},{-16,-40}}),
                                                               iconTransformation(
              extent={{-10,-10},{10,10}},
              rotation=90,
              origin={-50,100})));
            Physiolibrary.Types.RealIO.ConcentrationOutput PortalVeinFat
                                                              annotation (
            Placement(transformation(extent={{-26,-88},{-14,-76}}),
                                                               iconTransformation(
              extent={{-10,-10},{10,10}},
              rotation=90,
              origin={14,100})));
            Physiolibrary.Chemical.Sensors.ConcentrationMeasure concentrationMeasure2
            annotation (Placement(transformation(
            extent={{-10,-10},{10,10}},
            rotation=270,
            origin={-54,-82})));
            Physiolibrary.Types.RealIO.MolarFlowRateInput GITract_GlucoseUsed
            "glucose to GIT metabolism flow"
            annotation (Placement(transformation(extent={{-5,-5},{5,5}},
              rotation=180,
              origin={-31,-18}),
              iconTransformation(extent={{-100,-52},{-80,-32}})));
            Physiolibrary.Types.RealIO.MolarFlowRateInput GITract_FatUsed
            "fat to GIT metabolism flow"
            annotation (Placement(transformation(extent={{-5,-5},{5,5}},
              rotation=180,
              origin={-31,-60}),
              iconTransformation(extent={{-100,-74},{-80,-54}})));
            Physiolibrary.Types.RealIO.MolarFlowRateInput FatAbsorbtion
            "from GILumen"
            annotation (Placement(transformation(extent={{-5,-5},{5,5}},
              rotation=180,
              origin={-31,-54}),
              iconTransformation(extent={{-100,-94},{-80,-74}})));
            Physiolibrary.Types.RealIO.VolumeFlowRateInput HepaticArtyBloodFlow(
                                                           displayUnit="ml/min")
            "blood flow through all tissue capilaries cross-section"
            annotation (Placement(transformation(extent={{-91,53},{-82,62}}),
              iconTransformation(extent={{-36,56},{-16,76}})));
            Modelica.Blocks.Math.Product PlasmaFlow2
            annotation (Placement(transformation(extent={{-70,47},{-62,55}})));
            Physiolibrary.Chemical.Sources.UnlimitedSolutionStorage unlimitedStorage1(
            concentration=0)
            annotation (Placement(transformation(extent={{62,-14},{82,6}})));
            Physiolibrary.Chemical.Sources.UnlimitedSolutionStorage unlimitedStorage2(
            concentration=0)
            annotation (Placement(transformation(extent={{2,-80},{22,-60}})));
        equation
                connect(cellularMetabolism.Tissue_CO2FromMetabolism,
                Tissue_CO2FromMetabolism) annotation (Line(
                points={{91.1,-61},{96,-61},{96,-60}},
                color={0,0,127},
                smooth=Smooth.None));
                connect(flowMeasure.q_in, cellularMetabolism.lactate) annotation (Line(
                points={{44,14},{56,14},{56,-46},{67.1,-46}},
                color={200,0,0},
                thickness=1,
                smooth=Smooth.None));
                connect(TotalCaloriesUse.y, cellularMetabolism.CalsUse) annotation (
                Line(
                points={{71,41.6},{71,38},{96,38},{96,-46},{83,-46}},
                color={0,0,127},
                smooth=Smooth.None));
                connect(glucoseDelivery.neededFlow, cellularMetabolism.glucose)
                annotation (Line(
                points={{-62,-39},{-62,-52},{62,-52},{62,-49}},
                color={200,0,0},
                thickness=1,
                smooth=Smooth.None));
                connect(fattyAcids, fattyAcidsDelivery.q_in) annotation (Line(
                points={{-93,-70},{-74,-70}},
                color={200,0,0},
                thickness=1,
                smooth=Smooth.None));
                connect(PlasmaFlow1.y, fattyAcidsDelivery.solventFlow) annotation (Line(
                points={{-69.6,-1},{-64,-1},{-64,-64}},
                color={0,0,127},
                smooth=Smooth.None));
                connect(fattyAcidsDelivery.neededFlow, cellularMetabolism.fattyAcids)
                annotation (Line(
                points={{-64,-75},{-64,-94},{56,-94},{56,-61},{62,-61}},
                color={200,0,0},
                thickness=1,
                smooth=Smooth.None));
                connect(PlasmaFlow1.y, glucoseDelivery.solventFlow) annotation (Line(
                points={{-69.6,-1},{-62,-1},{-62,-28}},
                color={0,0,127},
                smooth=Smooth.None));
                connect(glucose, glucoseDelivery.q_in) annotation (Line(
                points={{-92,-34},{-72,-34}},
                color={200,0,0},
                thickness=1,
                smooth=Smooth.None));
                connect(Fuel_FractUseDelay, Fuel_FractUseDelay) annotation (Line(
                points={{-40,0},{-44,0},{-44,0},{-40,0}},
                color={0,0,127},
                smooth=Smooth.None));
                connect(glucoseDelivery.FuelFractUseDelay, min.u[2]) annotation (Line(
                points={{-68,-41},{-68,-44},{-58,-44},{-58,0.4},{-52.8,0.4}},
                color={0,0,127},
                smooth=Smooth.None));
                connect(glucoseDelivery.neededFlow, concentrationMeasure1.q_in)
                annotation (Line(
                points={{-62,-39},{-62,-46},{-52,-46}},
                color={200,0,0},
                thickness=1,
                smooth=Smooth.None));
                connect(glucoseDelivery.q_out, glucose) annotation (Line(
                points={{-52,-34},{-42,-34},{-42,-24},{-92,-24},{-92,-34}},
                color={200,0,0},
                thickness=1,
                smooth=Smooth.None));
                connect(fattyAcidsDelivery.q_out, fattyAcids) annotation (Line(
                points={{-54,-70},{-42,-70},{-42,-62},{-93,-62},{-93,-70}},
                color={200,0,0},
                thickness=1,
                smooth=Smooth.None));
                connect(fattyAcidsDelivery.neededFlow, concentrationMeasure2.q_in)
                annotation (Line(
                points={{-64,-75},{-64,-82},{-54,-82}},
                color={200,0,0},
                thickness=1,
                smooth=Smooth.None));
                connect(GITract_GlucoseUsed, glucoseDelivery.GITUsed) annotation (Line(
                points={{-31,-18},{-54,-18},{-54,-28}},
                color={0,0,127},
                smooth=Smooth.None));
                connect(GITract_FatUsed, fattyAcidsDelivery.GITUsed) annotation (Line(
                points={{-31,-60},{-56,-60},{-56,-64}},
                color={0,0,127},
                smooth=Smooth.None));
                connect(fattyAcidsDelivery.FatAbsorbtion, FatAbsorbtion) annotation (
                Line(
                points={{-60,-64},{-60,-54},{-31,-54}},
                color={0,0,127},
                smooth=Smooth.None));
                connect(fattyAcidsDelivery.FuelFractUseDelay, min.u[1]) annotation (
                Line(
                points={{-70,-77},{-70,-88},{-58,-88},{-58,-0.4},{-52.8,-0.4}},
                color={0,0,127},
                smooth=Smooth.None));
                connect(BloodVol_PVCrit,PlasmaFlow2. u2) annotation (Line(
                points={{-89,-4},{-80.5,-4},{-80.5,48.6},{-70.8,48.6}},
                color={0,0,127},
                smooth=Smooth.None));
                connect(HepaticArtyBloodFlow, PlasmaFlow2.u1) annotation (Line(
                points={{-86.5,57.5},{-79.25,57.5},{-79.25,53.4},{-70.8,53.4}},
                color={0,0,127},
                smooth=Smooth.None));
                connect(PlasmaFlow2.y, glucoseDelivery.HepaticArty) annotation (Line(
                points={{-61.6,51},{-48,51},{-48,-14},{-70,-14},{-70,-28}},
                color={0,0,127},
                smooth=Smooth.None));
                connect(GILumenCarbohydrates, glucoseDelivery.fromGILumen) annotation (
                Line(
                points={{-86,-48},{-80,-48},{-80,-38},{-72,-38}},
                color={200,0,0},
                thickness=1,
                smooth=Smooth.None));
                connect(cellularMetabolism.ketoAcids, unlimitedStorage1.q_out)
                annotation (Line(
                points={{72.8,-46},{72,-46},{72,-4},{82,-4}},
                color={200,0,0},
                thickness=1,
                smooth=Smooth.None));
                connect(pO2, cellularMetabolism.pO2) annotation (Line(
                points={{32,-66},{46,-66},{46,-67},{62.5999,-67}},
                color={0,0,127},
                smooth=Smooth.None));
                connect(cellularMetabolism.O2Use, O2Use) annotation (Line(
                points={{68.6,-73.6},{68.6,-83.8},{64,-83.8},{64,-94}},
                color={0,0,127},
                smooth=Smooth.None));
                connect(unlimitedStorage2.q_out, cellularMetabolism.glycogen)
                annotation (Line(
                points={{22,-70},{22,-56},{62,-56},{62,-55}},
                color={200,0,0},
                thickness=1,
                smooth=Smooth.None));
                connect(cellularMetabolism.Tissue_MetabolicH2ORate, H2OFromMetabolism)
                annotation (Line(
                points={{79.1,-75.7},{79.1,-72.85},{84,-72.85},{84,-80}},
                color={0,0,127},
                smooth=Smooth.None));
                connect(concentrationMeasure1.concentration, PortalVeinGlucose) annotation (
                Line(
                points={{-60,-46},{-22,-46}},
                color={0,0,127},
                smooth=Smooth.None));
                connect(concentrationMeasure2.concentration, PortalVeinFat) annotation (Line(
                points={{-62,-82},{-20,-82}},
                color={0,0,127},
                smooth=Smooth.None));
        end Liver;