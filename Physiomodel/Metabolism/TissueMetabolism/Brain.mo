within Physiomodel.Metabolism.TissueMetabolism;
        model Brain
            extends Physiomodel.Metabolism.TissueMetabolism.TissueMetabolismBase;
            //  (Lactate(     stateName="Brain-Lactate.Mass"));
            extends Physiolibrary.Icons.Brain;
            Physiomodel.Metabolism.CellularMetabolism
                                cellularMetabolism(
                                              LacFractionData={{10,0,0},{100,0.3,0}},
            canBurnFattyAcids=false,
            PO2OnAerobicFractionData=PO2OnAerobicFractionData)
            annotation (Placement(transformation(extent={{59,-75},{90,-44}})));
            Physiolibrary.Chemical.Interfaces.ChemicalPort_a ketoAcids(conc(final
            displayUnit="mg/ml"), q(final displayUnit="mg/min")) annotation (
            Placement(transformation(extent={{-104,-76},{-84,-56}}),
            iconTransformation(extent={{90,-70},{110,-50}})));
            NutrientDelivery ketoAcidsDelivery
            annotation (Placement(transformation(extent={{-75,-76},{-55,-56}})));
            NutrientDelivery glucoseDelivery
            annotation (Placement(transformation(extent={{-72,-44},{-52,-24}})));
            Physiolibrary.Chemical.Sources.UnlimitedSolutionStorage unlimitedStorage(
            concentration=0)
            annotation (Placement(transformation(extent={{-2,-64},{18,-44}})));
            Physiolibrary.Chemical.Sources.UnlimitedSolutionStorage unlimitedStorage1(
            concentration=0)
            annotation (Placement(transformation(extent={{-24,-78},{-4,-58}})));
        equation
            connect(TotalCaloriesUse.y,cellularMetabolism. CalsUse) annotation (Line(
            points={{71,41.6},{71,34},{98,34},{98,-36},{80,-36},{80,-44},{80.7,
                -44}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(cellularMetabolism.Tissue_CO2FromMetabolism,
            Tissue_CO2FromMetabolism) annotation (Line(
            points={{89.07,-59.5},{94,-59.5},{94,-60},{96,-60}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(flowMeasure.q_in, cellularMetabolism.lactate) annotation (Line(
            points={{44,14},{55,14},{55,-44},{64.27,-44}},
            color={200,0,0},
            thickness=1,
            smooth=Smooth.None));
            connect(glucoseDelivery.neededFlow, cellularMetabolism.glucose)
            annotation (Line(
            points={{-62,-39},{-62,-47},{59,-47},{59,-47.1}},
            color={200,0,0},
            thickness=1,
            smooth=Smooth.None));
            connect(ketoAcidsDelivery.solventFlow, PlasmaFlow1.y) annotation (Line(
            points={{-65,-60},{-65,-1},{-69.6,-1}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(ketoAcids, ketoAcidsDelivery.q_in) annotation (Line(
            points={{-94,-66},{-75,-66}},
            color={200,0,0},
            thickness=1,
            smooth=Smooth.None));
            connect(ketoAcidsDelivery.neededFlow, cellularMetabolism.ketoAcids)
            annotation (Line(
            points={{-65,-71},{-65,-88},{-30,-88},{-30,-37},{70,-37},{70,-44},
                {70.16,-44}},
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
            connect(glucoseDelivery.q_out, glucose) annotation (Line(
            points={{-52,-34},{-40,-34},{-40,-23},{-92,-23},{-92,-34}},
            color={200,0,0},
            thickness=1,
            smooth=Smooth.None));
            connect(ketoAcidsDelivery.q_out, ketoAcids) annotation (Line(
            points={{-55,-66},{-39,-66},{-39,-57},{-94,-57},{-94,-66}},
            color={200,0,0},
            thickness=1,
            smooth=Smooth.None));
            connect(glucoseDelivery.FuelFractUseDelay, min.u[2]) annotation (Line(
            points={{-68,-41},{-69,-41},{-69,-45},{-56,-45},{-56,0.4},{-52.8,
                0.4}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(ketoAcidsDelivery.FuelFractUseDelay, min.u[1]) annotation (Line(
            points={{-71,-73},{-71,-90},{-56,-90},{-56,-0.4},{-52.8,-0.4}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(pO2, cellularMetabolism.pO2) annotation (Line(
            points={{32,-66},{45,-66},{45,-65.7},{59.6199,-65.7}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(cellularMetabolism.O2Use, O2Use) annotation (Line(
            points={{65.82,-72.52},{65.82,-83.76},{64,-83.76},{64,-94}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(unlimitedStorage.q_out, cellularMetabolism.glycogen)
            annotation (Line(
            points={{18,-54},{49,-54},{49,-53.3},{59,-53.3}},
            color={200,0,0},
            thickness=1,
            smooth=Smooth.None));
            connect(unlimitedStorage1.q_out, cellularMetabolism.fattyAcids)
            annotation (Line(
            points={{-4,-68},{23,-68},{23,-59.5},{59,-59.5}},
            color={200,0,0},
            thickness=1,
            smooth=Smooth.None));
            connect(cellularMetabolism.Tissue_MetabolicH2ORate, H2OFromMetabolism)
            annotation (Line(
            points={{76.67,-74.69},{76.67,-80},{84,-80}},
            color={0,0,127},
            smooth=Smooth.None));
        end Brain;