within Physiomodel.Metabolism.TissueMetabolism;
        model RespiratoryMuscle
                extends Physiomodel.Metabolism.TissueMetabolism.TissueMetabolismBase(
                TotalCaloriesUse(nin=4), HeatMetabolism_Skin(data={{10.0+273.15,0.0,0},{
                    37.1+273.15,1.0,0.12},{40.0+273.15,1.5,0},{46.0+273.15,0.0,0}}));
                //    ,Lactate(stateName="RespiratoryMuscle-Lactate.Mass")
                extends Physiolibrary.Icons.RespiratoryMuscle;

                Physiolibrary.Types.Constants.HeatFlowRateConst Shivering_Cals(k=0)
                annotation (Placement(transformation(extent={{-36,38},{-26,48}})));
                Physiolibrary.Types.Constants.HeatFlowRateConst motionCals(k=0.3489)
                annotation (Placement(transformation(extent={{-38,66},{-26,78}})));
                Physiolibrary.Types.Constants.HeatFlowRateConst heatCals(k=1.11648)
                annotation (Placement(transformation(extent={{-38,52},{-26,64}})));
                Physiolibrary.Chemical.Components.Substance             glycogen(
                stateName="RespiratoryMuscle-Glycogen.Mass",
                solute_start=46/180.16)
                "glucose mols stored in gycogen (initial 46 g)"
                annotation (Placement(transformation(extent={{30,-40},{50,-20}})));
                Physiolibrary.Chemical.Components.SolutePump synthesis(useSoluteFlowInput=
                true)
                annotation (Placement(transformation(extent={{2,-40},{22,-20}})));
                Physiolibrary.Types.Constants.MolarFlowRateConst massFlowConstant(k=0.02/180.16/
                  60) "20 mg/min"
                annotation (Placement(transformation(extent={{0,-10},{10,0}})));
                Physiolibrary.Blocks.Factors.Spline GlucoseEffect(data={{0,0.0,0.0},{100,
                1.0,0.01},{300,3.0,0.0}}, Xscale=10/180.16)
                annotation (Placement(transformation(extent={{2,-32},{22,-12}})));
                Physiolibrary.Blocks.Factors.Spline Space(data={{0,4.0,0.0},{40,1.0,-0.15},
                {46,0.0,0.0}}, Xscale=1/180.16)
                annotation (Placement(transformation(extent={{22,-24},{2,-4}})));
                Physiolibrary.Blocks.Factors.LagSpline     InsulinEffect(
                                                          initialValue=20, data={{0,0.0,0.0},
                  {20,1.0,0.2},{100,20.0,0.0}},
                integrator(stateName="RespiratoryMuscle-Insulin.[InsulinDelayed]"),
                HalfTime=40*60/Modelica.Math.log(2))
                annotation (Placement(transformation(extent={{2,-28},{22,-8}})));
                Physiolibrary.Chemical.Sensors.ConcentrationMeasure concentrationMeasure3
                annotation (Placement(transformation(
                extent={{-10,-10},{10,10}},
                origin={-14,-30})));
                Hormones.Insulin_Physiolibrary.Types.RealIO.ConcentrationInput Insulin(displayUnit="uU_Insulin/ml")
                "tissue venous O2 partial pressure"
                annotation (Placement(transformation(extent={{-5,-5},{5,5}},
                  origin={-16,-18}),
                  iconTransformation(extent={{-100,-50},{-80,-30}})));
                Physiolibrary.Chemical.Interfaces.ChemicalPort_a fattyAcids
                 annotation (
                Placement(transformation(extent={{-101,-78},{-81,-58}}),
                iconTransformation(extent={{90,-70},{110,-50}})));   //(conc(final  displayUnit="mg/ml"), q(final displayUnit="mg/min"))
                Physiomodel.Metabolism.CellularMetabolism
                                     cellularMetabolism(
                                                  LacFractionData={{10,0,0},{100,0.3,0}},
                GlycogenAvailability={{0,0,0},{5,1,0}},
                PO2OnAerobicFractionData=PO2OnAerobicFractionData)
                annotation (Placement(transformation(extent={{58,-72},{90,-40}})));
                Physiolibrary.Types.RealIO.MolarFlowRateOutput
                                                  GlucoseToCellsStorageFlow(
                                                                     displayUnit=
                  "mmol/min") "glucose to muscle cells"           annotation (
                Placement(transformation(extent={{42,-16},{54,-4}}),
                                                                   iconTransformation(
                  extent={{-10,-10},{10,10}},
                  rotation=270,
                  origin={-90,-100})));
                NutrientDelivery fattyAcidsDelivery
                annotation (Placement(transformation(extent={{-78,-78},{-58,-58}})));
                NutrientDelivery glucoseDelivery
                annotation (Placement(transformation(extent={{-70,-44},{-50,-24}})));
                Physiolibrary.Types.RealIO.PowerOutput MotionCals_(
                                                       displayUnit="cal/min")
                                                                  annotation (
                Placement(transformation(extent={{2,66},{14,78}}),
                  iconTransformation(
                  extent={{-10,-10},{10,10}},
                  rotation=270,
                  origin={90,-100})));
                Physiolibrary.Chemical.Sources.UnlimitedSolutionStorage unlimitedStorage1(
                concentration=0)
                annotation (Placement(transformation(extent={{62,-30},{82,-10}})));
        equation 
                connect(Shivering_Cals.y, TotalCaloriesUse.u[4]) annotation (Line(
                points={{-24.75,43},{-6,43},{-6,56},{71,56},{71,50.8}},
                color={0,0,127},
                smooth=Smooth.None));

                connect(motionCals.y, TotalCaloriesUse.u[2]) annotation (Line(
                points={{-24.5,72},{-6,72},{-6,56},{71,56},{71,50.8}},
                color={0,0,127},
                smooth=Smooth.None));
                connect(heatCals.y, TotalCaloriesUse.u[3]) annotation (Line(
                points={{-24.5,58},{-6,58},{-6,56},{71,56},{71,50.8}},
                color={0,0,127},
                smooth=Smooth.None));
                connect(synthesis.q_out, glycogen.q_out) annotation (Line(
                points={{22,-30},{40,-30}},
                color={200,0,0},
                thickness=1,
                smooth=Smooth.None));
                connect(glycogen.q_out, cellularMetabolism.glycogen) annotation (Line(
                points={{40,-30},{52,-30},{52,-49.6},{58,-49.6}},
                color={200,0,0},
                thickness=1,
                smooth=Smooth.None));
                connect(GlucoseEffect.y, synthesis.soluteFlow) annotation (Line(
                points={{12,-26},{16,-26}},
                color={0,0,127},
                smooth=Smooth.None));
                connect(Space.yBase, massFlowConstant.y) annotation (Line(
                points={{12,-12},{12,-5},{11.25,-5}},
                color={0,0,127},
                smooth=Smooth.None));
                connect(InsulinEffect.y, GlucoseEffect.yBase) annotation (Line(
                points={{12,-22},{12,-20}},
                color={0,0,127},
                smooth=Smooth.None));
                connect(InsulinEffect.yBase, Space.y) annotation (Line(
                points={{12,-16},{12,-18}},
                color={0,0,127},
                smooth=Smooth.None));
                connect(InsulinEffect.u, Insulin) annotation (Line(
                points={{4,-18},{-16,-18}},
                color={0,0,127},
                smooth=Smooth.None));
                connect(TotalCaloriesUse.y,cellularMetabolism. CalsUse) annotation (Line(
                points={{71,41.6},{71,38},{96,38},{96,-40},{80.4,-40}},
                color={0,0,127},
                smooth=Smooth.None));
                connect(cellularMetabolism.Tissue_CO2FromMetabolism,
                Tissue_CO2FromMetabolism) annotation (Line(
                points={{89.04,-56},{94,-56},{94,-60},{96,-60}},
                color={0,0,127},
                smooth=Smooth.None));

                connect(flowMeasure.q_in, cellularMetabolism.lactate) annotation (Line(
                points={{44,14},{56,14},{56,-40},{63.44,-40}},
                color={200,0,0},
                thickness=1,
                smooth=Smooth.None));
                connect(fattyAcids, fattyAcidsDelivery.q_in) annotation (Line(
                points={{-91,-68},{-78,-68}},
                color={200,0,0},
                thickness=1,
                smooth=Smooth.None));
                connect(PlasmaFlow1.y, fattyAcidsDelivery.solventFlow) annotation (Line(
                points={{-69.6,-1},{-68,-1},{-68,-62}},
                color={0,0,127},
                smooth=Smooth.None));
                connect(fattyAcidsDelivery.neededFlow, cellularMetabolism.fattyAcids)
                annotation (Line(
                points={{-68,-73},{-68,-80},{52,-80},{52,-56},{58,-56}},
                color={200,0,0},
                thickness=1,
                smooth=Smooth.None));
                connect(glucoseDelivery.neededFlow, synthesis.q_in) annotation (Line(
                points={{-60,-39},{-60,-54},{-4,-54},{-4,-30},{2,-30}},
                color={200,0,0},
                thickness=1,
                smooth=Smooth.None));
                connect(glucoseDelivery.neededFlow, concentrationMeasure3.q_in)
                annotation (Line(
                points={{-60,-39},{-60,-54},{-4,-54},{-4,-32},{-14,-32}},
                color={200,0,0},
                thickness=1,
                smooth=Smooth.None));
                connect(glucoseDelivery.neededFlow, cellularMetabolism.glucose)
                annotation (Line(
                points={{-60,-39},{-60,-43.2},{58,-43.2}},
                color={200,0,0},
                thickness=1,
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
                connect(glucoseDelivery.q_out, glucose) annotation (Line(
                points={{-50,-34},{-40,-34},{-40,-24},{-92,-24},{-92,-34}},
                color={200,0,0},
                thickness=1,
                smooth=Smooth.None));
                connect(fattyAcidsDelivery.q_out, fattyAcids) annotation (Line(
                points={{-58,-68},{-40,-68},{-40,-58},{-91,-58},{-91,-68}},
                color={200,0,0},
                thickness=1,
                smooth=Smooth.None));
                connect(glucoseDelivery.FuelFractUseDelay, min.u[2]) annotation (Line(
                points={{-66,-41},{-66,-46},{-56,-46},{-56,0.4},{-52.8,0.4}},
                color={0,0,127},
                smooth=Smooth.None));
                connect(fattyAcidsDelivery.FuelFractUseDelay, min.u[1]) annotation (
                Line(
                points={{-74,-75},{-74,-90},{-56,-90},{-56,-0.4},{-52.8,-0.4}},
                color={0,0,127},
                smooth=Smooth.None));
                connect(motionCals.y, MotionCals_) annotation (Line(
                points={{-24.5,72},{8,72}},
                color={0,0,127},
                smooth=Smooth.None));
                connect(pO2, cellularMetabolism.pO2) annotation (Line(
                points={{32,-66},{46.32,-66},{46.32,-62.4},{58.6399,-62.4}},
                color={0,0,127},
                smooth=Smooth.None));
                connect(cellularMetabolism.O2Use, O2Use) annotation (Line(
                points={{65.04,-69.44},{65.04,-83.72},{64,-83.72},{64,-94}},
                color={0,0,127},
                smooth=Smooth.None));
                connect(cellularMetabolism.ketoAcids, unlimitedStorage1.q_out)
                annotation (Line(
                points={{69.52,-40},{69.52,-32},{82,-32},{82,-20}},
                color={200,0,0},
                thickness=1,
                smooth=Smooth.None));
                connect(cellularMetabolism.Tissue_MetabolicH2ORate, H2OFromMetabolism)
                annotation (Line(
                points={{76.24,-71.68},{76.24,-73.84},{84,-73.84},{84,-80}},
                color={0,0,127},
                smooth=Smooth.None));
                connect(GlucoseToCellsStorageFlow, GlucoseEffect.y) annotation (Line(
                points={{48,-10},{28,-10},{28,-26},{12,-26}},
                color={0,0,127},
                smooth=Smooth.None));
                connect(GlucoseEffect.u, concentrationMeasure3.concentration) annotation (
                Line(
                points={{4,-22},{-14,-22},{-14,-26}},
                color={0,0,127},
                smooth=Smooth.None));
                connect(glycogen.solute, Space.u) annotation (Line(
                points={{46,-40},{46,-48},{26,-48},{26,-14},{20,-14}},
                color={0,0,127},
                smooth=Smooth.None));
                annotation ( Diagram(coordinateSystem(preserveAspectRatio=false,
                    extent={{-100,-100},{100,100}}),
                                                graphics={
                  Text(
                    extent={{-24,46},{-4,46}},
                    lineColor={0,0,255},
                    textString="Shivering_Cals"),
                  Text(
                    extent={{-24,74},{-4,74}},
                    lineColor={0,0,255},
                    textString="Motion_Cals"),
                  Text(
                    extent={{-24,60},{-4,60}},
                    lineColor={0,0,255},
                    textString="Heat_Cals")}));
        end RespiratoryMuscle;