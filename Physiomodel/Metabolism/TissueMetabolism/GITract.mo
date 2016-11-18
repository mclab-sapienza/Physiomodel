within Physiomodel.Metabolism.TissueMetabolism;
        model GITract
            extends TissueMetabolismBase;//(Lactate(stateName="GITract-Lactate.Mass"));
            extends Physiolibrary.Icons.GITract;

            Physiolibrary.Chemical.Interfaces.ChemicalPort_a fattyAcids
             annotation (
            Placement(transformation(extent={{-103,-80},{-83,-60}}),
            iconTransformation(extent={{90,-70},{110,-50}})));   //(conc(final displayUnit="mg/ml"), q(final displayUnit="mg/min"))
            Physiomodel.Metabolism.CellularMetabolism
                           cellularMetabolism(LacFractionData={{10,0,0},{100,0.3,0}},
            PO2OnAerobicFractionData=PO2OnAerobicFractionData)
            annotation (Placement(transformation(extent={{60,-62},{90,-32}})));
            NutrientDelivery fattyAcidsDelivery
            annotation (Placement(transformation(extent={{-74,-80},{-54,-60}})));
            NutrientDelivery glucoseDelivery
            annotation (Placement(transformation(extent={{-70,-44},{-50,-24}})));
            Physiolibrary.Chemical.Sensors.MolarFlowMeasure flowMeasure1 annotation (
            Placement(transformation(
            extent={{8,8},{-8,-8}},
            rotation=180,
            origin={28,-54})));
            Physiolibrary.Chemical.Sensors.MolarFlowMeasure flowMeasure2 annotation (
            Placement(transformation(
            extent={{-8,-8},{8,8}},
            origin={28,-82})));
            Physiolibrary.Types.RealIO.MolarFlowRateOutput GIT_GluUse
                                                              annotation (
            Placement(transformation(extent={{34,-80},{46,-68}}),
                                                               iconTransformation(
              extent={{-10,-10},{10,10}},
              rotation=90,
              origin={36,100})));
            Physiolibrary.Types.RealIO.MolarFlowRateOutput GIT_FatUse
                                                              annotation (
            Placement(transformation(extent={{30,-96},{42,-84}}),
                                                               iconTransformation(
              extent={{-10,-10},{10,10}},
              rotation=90,
              origin={16,100})));
            Physiolibrary.Chemical.Sources.UnlimitedSolutionStorage unlimitedStorage1(
            concentration=0)
            annotation (Placement(transformation(extent={{62,-14},{82,6}})));
            Physiolibrary.Chemical.Sources.UnlimitedSolutionStorage unlimitedStorage2(
            concentration=0)
            annotation (Placement(transformation(extent={{0,-36},{20,-16}})));
        equation
                connect(cellularMetabolism.Tissue_CO2FromMetabolism,
                Tissue_CO2FromMetabolism) annotation (Line(
                points={{89.1,-47},{96,-47},{96,-60}},
                color={0,0,127},
                smooth=Smooth.None));
                connect(flowMeasure.q_in, cellularMetabolism.lactate) annotation (Line(
                points={{44,14},{56,14},{56,-32},{65.1,-32}},
                color={200,0,0},
                thickness=1,
                smooth=Smooth.None));
                connect(TotalCaloriesUse.y, cellularMetabolism.CalsUse) annotation (
                Line(
                points={{71,41.6},{71,38},{96,38},{96,-36},{81,-36},{81,-32}},
                color={0,0,127},
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
                connect(PlasmaFlow1.y, glucoseDelivery.solventFlow) annotation (Line(
                points={{-69.6,-1},{-60,-1},{-60,-28}},
                color={0,0,127},
                smooth=Smooth.None));
                connect(glucose, glucoseDelivery.q_in) annotation (Line(
                points={{-92,-34},{-70,-34}},
                color={200,0,0},
                thickness=1,
                smooth=Smooth.None));
                connect(glucoseDelivery.FuelFractUseDelay, min.u[2]) annotation (Line(
                points={{-66,-41},{-66,-44},{-56,-44},{-56,0.4},{-52.8,0.4}},
                color={0,0,127},
                smooth=Smooth.None));
                connect(fattyAcidsDelivery.q_out, fattyAcids) annotation (Line(
                points={{-54,-70},{-46,-70},{-46,-60},{-93,-60},{-93,-70}},
                color={200,0,0},
                thickness=1,
                smooth=Smooth.None));
                connect(glucoseDelivery.q_out, glucose) annotation (Line(
                points={{-50,-34},{-44,-34},{-44,-22},{-92,-22},{-92,-34}},
                color={200,0,0},
                thickness=1,
                smooth=Smooth.None));
                connect(flowMeasure1.molarFlowRate, GIT_GluUse) annotation (Line(
                points={{28,-58.8},{28,-74},{40,-74}},
                color={0,0,127},
                smooth=Smooth.None));
                connect(flowMeasure2.molarFlowRate, GIT_FatUse) annotation (Line(
                points={{28,-86.8},{28,-90},{36,-90}},
                color={0,0,127},
                smooth=Smooth.None));
                connect(fattyAcidsDelivery.FuelFractUseDelay, min.u[1]) annotation (
                Line(
                points={{-70,-77},{-70,-88},{-56,-88},{-56,-0.4},{-52.8,-0.4}},
                color={0,0,127},
                smooth=Smooth.None));
                connect(pO2, cellularMetabolism.pO2) annotation (Line(
                points={{32,-66},{47.3,-66},{47.3,-53},{60.5999,-53}},
                color={0,0,127},
                smooth=Smooth.None));
                connect(cellularMetabolism.O2Use, O2Use) annotation (Line(
                points={{66.6,-59.6},{66.6,-82.8},{64,-82.8},{64,-94}},
                color={0,0,127},
                smooth=Smooth.None));
                connect(cellularMetabolism.ketoAcids, unlimitedStorage1.q_out)
                annotation (Line(
                points={{70.8,-32},{72,-32},{72,-4},{82,-4}},
                color={200,0,0},
                thickness=1,
                smooth=Smooth.None));
                connect(cellularMetabolism.glycogen, unlimitedStorage2.q_out)
                annotation (Line(
                points={{60,-41},{50,-41},{50,-26},{20,-26}},
                color={200,0,0},
                thickness=1,
                smooth=Smooth.None));

                connect(cellularMetabolism.Tissue_MetabolicH2ORate, H2OFromMetabolism)
                annotation (Line(
                points={{77.1,-61.7},{77.1,-80},{84,-80}},
                color={0,0,127},
                smooth=Smooth.None));
                connect(flowMeasure1.q_out, cellularMetabolism.glucose) annotation (Line(
                points={{36,-54},{44,-54},{44,-36},{60,-36},{60,-35}},
                color={107,45,134},
                thickness=1,
                smooth=Smooth.None));
                connect(flowMeasure2.q_out, cellularMetabolism.fattyAcids) annotation (
                Line(
                points={{36,-82},{52,-82},{52,-47},{60,-47}},
                color={107,45,134},
                thickness=1,
                smooth=Smooth.None));
                connect(fattyAcidsDelivery.neededFlow, flowMeasure2.q_in) annotation (
                Line(
                points={{-64,-75},{-64,-82},{20,-82}},
                color={107,45,134},
                thickness=1,
                smooth=Smooth.None));
                connect(glucoseDelivery.neededFlow, flowMeasure1.q_in) annotation (Line(
                points={{-60,-39},{-60,-54},{20,-54}},
                color={107,45,134},
                thickness=1,
                smooth=Smooth.None));
        end GITract;