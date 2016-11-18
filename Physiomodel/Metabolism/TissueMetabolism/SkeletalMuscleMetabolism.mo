within Physiomodel.Metabolism.TissueMetabolism;
        model SkeletalMuscleMetabolism
            extends TissueMetabolismBase(TotalCaloriesUse(nin=1),
            HeatMetabolism_Skin(data={{10.0+273.15,0.0,0},{37.1+273.15,1.0,0.12},{40.0+273.15,1.5,0},
                {46.0+273.15,0.0,0}}),
            PartCaloriesUse(nin=4));
            //   Lactate(stateName="SkeletalMuscle-Lactate.Mass"),
            extends Physiolibrary.Icons.SkeletalMuscle;

            Physiolibrary.Chemical.Interfaces.ChemicalPort_a fattyAcids
             annotation (
            Placement(transformation(extent={{-103,-78},{-83,-58}}),
            iconTransformation(extent={{90,-70},{110,-50}})));   //(conc(final displayUnit="mg/ml"), q(final displayUnit="mg/min"))
            Physiomodel.Metabolism.CellularMetabolism
                                 cellularMetabolism(
                                              LacFractionData={{10,0,0},{100,0.3,0}},
            PO2OnAerobicFractionData=PO2OnAerobicFractionData)
            annotation (Placement(transformation(extent={{60,-76},{92,-44}})));
            Physiolibrary.Types.Constants.HeatFlowRateConst Posture_Cals(k(
            displayUnit="cal/min") = 0)
            annotation (Placement(transformation(extent={{99,64},{89,74}})));
            Physiolibrary.Types.RealIO.PowerInput ExerciseMetabolism_MotionCals(
                                                                    final displayUnit="cal/min")
            annotation (Placement(transformation(extent={{-50,46},{-40,56}}),
              iconTransformation(extent={{-100,-70},{-80,-50}})));
            Physiolibrary.Chemical.Components.Substance             glycogen(
            stateName="SkeletalMuscle-Glycogen.Mass", solute_start=500e-3/
            Substances.Glucose.mw) "500 g"
            annotation (Placement(transformation(extent={{24,-38},{44,-18}})));
            Physiolibrary.Chemical.Components.SolutePump synthesis(useSoluteFlowInput=
            true)
            annotation (Placement(transformation(extent={{-4,-42},{16,-22}})));
            Physiolibrary.Types.Constants.MolarFlowRateConst massFlowConstant(k(displayUnit=
               "mol/s") = 0.02/180.16/60) "20 mg/min"
            annotation (Placement(transformation(extent={{-6,-10},{4,0}})));
            Physiolibrary.Blocks.Factors.Spline GlucoseEffect(data={{0,0.0,0.0},{100,
            1.0,0.01},{300,3.0,0.0}}, Xscale=0.01/Substances.Glucose.mw)
            annotation (Placement(transformation(extent={{-4,-32},{16,-12}})));
            Physiolibrary.Blocks.Factors.Spline Space(data={{0,4.0,0.0},{400,1.0,-0.015},
            {500,0.0,0.0}}, Xscale=1e-3/Substances.Glucose.mw)
            annotation (Placement(transformation(extent={{16,-24},{-4,-4}})));
            Physiolibrary.Blocks.Factors.LagSpline     InsulinEffect(
                                                      initialValue=20, data={{0,
              0.0,0.0},{20,1.0,0.2},{100,20.0,0.0}},
            integrator(stateName="SkeletalMuscle-Insulin.[InsulinDelayed]"),
            HalfTime=40*60/Modelica.Math.log(2))
            annotation (Placement(transformation(extent={{-4,-28},{16,-8}})));
            Hormones.Insulin_Physiolibrary.Types.RealIO.ConcentrationInput Insulin(
                                              displayUnit="uU_Insulin/ml")
            "tissue venous O2 partial pressure"
            annotation (Placement(transformation(extent={{-5,-5},{5,5}},
              origin={-16,-18}),
              iconTransformation(extent={{-100,-50},{-80,-30}})));
            Physiolibrary.Chemical.Sensors.ConcentrationMeasure concentrationMeasure3
            annotation (Placement(transformation(
            extent={{-10,-10},{10,10}},
            origin={-14,-32})));
            Physiolibrary.Types.RealIO.MolarFlowRateOutput GlucoseToCellsStorageFlow(
                                                                 displayUnit=
              "mmol/min") "glucose to muscle cells"           annotation (
            Placement(transformation(extent={{32,-16},{44,-4}}),
                                                               iconTransformation(
              extent={{-10,-10},{10,10}},
              rotation=270,
              origin={-90,-100})));
            NutrientDelivery fattyAcidsDelivery
            annotation (Placement(transformation(extent={{-76,-78},{-56,-58}})));
            NutrientDelivery glucoseDelivery
            annotation (Placement(transformation(extent={{-72,-44},{-52,-24}})));
            Physiolibrary.Chemical.Sources.UnlimitedSolutionStorage unlimitedStorage1(
            concentration=0)
            annotation (Placement(transformation(extent={{64,-26},{84,-6}})));
            Physiolibrary.Types.RealIO.PowerOutput skeletalMuscle_producedHeat(
            displayUnit="kcal/min")
            "Termal energy produced by skeletal muscle. "
            annotation (Placement(transformation(extent={{28,40},{40,52}}),
              iconTransformation(
              extent={{-10,-10},{10,10}},
              rotation=270,
              origin={90,-100})));
            Modelica.Blocks.Math.Feedback HeatCals
            annotation (Placement(transformation(extent={{-4,52},{8,40}})));
            Physiolibrary.Blocks.Factors.Spline HeatShivering(data={{0.0,0.0,0},{4.0,
            70.0,0}}, Yscale=4.1868/60)
            annotation (Placement(transformation(extent={{-8,64},{12,84}})));
            Physiolibrary.Types.RealIO.FrequencyInput
                                             HypothalamusShivering_NerveActivity
            annotation (Placement(transformation(extent={{-48,70},{-38,80}}),
            iconTransformation(extent={{-100,110},{-80,130}})));
        equation
            connect(TotalCaloriesUse.y,cellularMetabolism. CalsUse) annotation (Line(
            points={{71,41.6},{71,38},{94,38},{94,-44},{82.4,-44}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(synthesis.q_out, glycogen.q_out) annotation (Line(
            points={{16,-32},{26,-32},{26,-28},{34,-28}},
            color={200,0,0},
            thickness=1,
            smooth=Smooth.None));
            connect(glycogen.q_out, cellularMetabolism.glycogen) annotation (Line(
            points={{34,-28},{52,-28},{52,-53.6},{60,-53.6}},
            color={200,0,0},
            thickness=1,
            smooth=Smooth.None));
            connect(GlucoseEffect.y, synthesis.soluteFlow) annotation (Line(
            points={{6,-26},{6,-28},{10,-28}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(Space.yBase, massFlowConstant.y) annotation (Line(
            points={{6,-12},{6,-5},{5.25,-5}},
            color={0,0,127},
            smooth=Smooth.None));

            connect(InsulinEffect.y, GlucoseEffect.yBase) annotation (Line(
            points={{6,-22},{6,-20}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(InsulinEffect.yBase, Space.y) annotation (Line(
            points={{6,-16},{6,-18}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(InsulinEffect.u, Insulin) annotation (Line(
            points={{-2,-18},{-16,-18}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(cellularMetabolism.Tissue_CO2FromMetabolism,
            Tissue_CO2FromMetabolism) annotation (Line(
            points={{91.04,-60},{96,-60}},
            color={0,0,127},
            smooth=Smooth.None));

            connect(flowMeasure.q_in, cellularMetabolism.lactate) annotation (Line(
            points={{44,14},{56,14},{56,-44},{65.44,-44}},
            color={200,0,0},
            thickness=1,
            smooth=Smooth.None));
            connect(glucoseDelivery.neededFlow, synthesis.q_in) annotation (Line(
            points={{-62,-39},{-62,-54},{-8,-54},{-8,-32},{-4,-32}},
            color={200,0,0},
            thickness=1,
            smooth=Smooth.None));
            connect(glucoseDelivery.neededFlow, concentrationMeasure3.q_in)
            annotation (Line(
            points={{-62,-39},{-62,-54},{-8,-54},{-8,-32},{-14,-32}},
            color={200,0,0},
            thickness=1,
            smooth=Smooth.None));
            connect(glucoseDelivery.neededFlow, cellularMetabolism.glucose)
            annotation (Line(
            points={{-62,-39},{-62,-47.2},{60,-47.2}},
            color={200,0,0},
            thickness=1,
            smooth=Smooth.None));
            connect(fattyAcids, fattyAcidsDelivery.q_in) annotation (Line(
            points={{-93,-68},{-76,-68}},
            color={200,0,0},
            thickness=1,
            smooth=Smooth.None));
            connect(PlasmaFlow1.y, fattyAcidsDelivery.solventFlow) annotation (Line(
            points={{-69.6,-1},{-66,-1},{-66,-62}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(fattyAcidsDelivery.neededFlow, cellularMetabolism.fattyAcids)
            annotation (Line(
            points={{-66,-73},{-66,-80},{54,-80},{54,-60},{60,-60}},
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
            points={{-52,-34},{-42,-34},{-42,-24},{-92,-24},{-92,-34}},
            color={200,0,0},
            thickness=1,
            smooth=Smooth.None));
            connect(fattyAcidsDelivery.q_out, fattyAcids) annotation (Line(
            points={{-56,-68},{-42,-68},{-42,-58},{-93,-58},{-93,-68}},
            color={200,0,0},
            thickness=1,
            smooth=Smooth.None));
            connect(glucoseDelivery.FuelFractUseDelay, min.u[2]) annotation (Line(
            points={{-68,-41},{-68,-44},{-58,-44},{-58,0.4},{-52.8,0.4}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(fattyAcidsDelivery.FuelFractUseDelay, min.u[1]) annotation (
            Line(
            points={{-72,-75},{-72,-92},{-58,-92},{-58,-0.4},{-52.8,-0.4}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(pO2, cellularMetabolism.pO2) annotation (Line(
            points={{32,-66},{46.32,-66},{46.32,-66.4},{60.6399,-66.4}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(cellularMetabolism.O2Use, O2Use) annotation (Line(
            points={{67.04,-73.44},{67.04,-84.72},{64,-84.72},{64,-94}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(cellularMetabolism.ketoAcids, unlimitedStorage1.q_out)
            annotation (Line(
            points={{71.52,-44},{72,-44},{72,-16},{84,-16}},
            color={200,0,0},
            thickness=1,
            smooth=Smooth.None));
            connect(Posture_Cals.y, PartCaloriesUse.u[3]) annotation (Line(
            points={{87.75,69},{72,69},{72,68},{72,68},{72,66},{71,66},{71,64.8}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(ExerciseMetabolism_MotionCals, HeatCals.u2) annotation (Line(
            points={{-45,51},{2,51},{2,50},{2,50},{2,50},{2,50.8}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(cellularMetabolism.Tissue_MetabolicH2ORate, H2OFromMetabolism)
            annotation (Line(
            points={{78.24,-75.68},{78.24,-73.84},{84,-73.84},{84,-80}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(glycogen.solute, Space.u) annotation (Line(
            points={{40,-38},{40,-42},{22,-42},{22,-14},{14,-14}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(concentrationMeasure3.concentration, GlucoseEffect.u) annotation (
            Line(
            points={{-14,-40},{-14,-22},{-2,-22}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(GlucoseEffect.y, GlucoseToCellsStorageFlow) annotation (Line(
            points={{6,-26},{20,-26},{20,-10},{38,-10}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(HeatShivering.u,HypothalamusShivering_NerveActivity)  annotation (
            Line(
            points={{-6,74},{-32,74},{-32,75},{-43,75}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(skeletalMuscle_producedHeat, HeatCals.y) annotation (Line(
            points={{34,46},{7.4,46}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(TotalCaloriesUse.y, HeatCals.u1) annotation (Line(
            points={{71,41.6},{71,38},{-14,38},{-14,46},{-2.8,46}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(Structure_Effect, HeatShivering.yBase) annotation (Line(
            points={{37,69},{54,69},{54,64},{14,64},{14,84},{2,84},{2,76}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(HeatShivering.y, PartCaloriesUse.u[2]) annotation (Line(
            points={{2,70},{2,62},{60,62},{60,66},{70,66},{70,64},{70,64},{70,64.8},{71,
                64.8}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(ExerciseMetabolism_MotionCals, PartCaloriesUse.u[4]) annotation (Line(
            points={{-45,51},{-10,51},{-10,60},{62,60},{62,68},{71,68},{71,64.8}},
            color={0,0,127},
            smooth=Smooth.None));
        end SkeletalMuscleMetabolism;