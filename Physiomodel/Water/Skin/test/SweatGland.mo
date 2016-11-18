within Physiomodel.Water.Skin.test;
            model SweatGland
                extends Physiolibrary.Icons.SweatGland;
                parameter Real bodyPart=1/3;
                Physiolibrary.Types.Constants.VolumeFlowRateConst flowConstant(k=1*
                  bodyPart)
                annotation (Placement(transformation(extent={{62,80},{70,88}})));
                Physiolibrary.Blocks.Factors.Spline NerveEffect(data={{0.0,0.0,0.0},{
                  4.0,30.0,0.0}})
                annotation (Placement(transformation(extent={{62,54},{82,74}})));
                Physiolibrary.Types.BusConnector busConnector annotation (Placement(
                  transformation(extent={{-100,81},{-80,101}}), iconTransformation(
                    extent={{60,60},{80,80}})));
                Physiolibrary.Blocks.Factors.Normalization FuelEffect
                annotation (Placement(transformation(extent={{62,42},{82,62}})));
                Physiomodel.Metabolism.deprecated.Input2EffectDelayed AcclimationEffect(
                Tau=6,
                data={{60,0.5,0.0},{85,1.0,0.05},{100,2.0,0.0}},
                stateName="SweatAcclimation.Effect")
                annotation (Placement(transformation(extent={{62,22},{82,42}})));
                Physiolibrary.Blocks.Factors.Normalization SkinFunctionEffect
                annotation (Placement(transformation(extent={{62,2},{82,22}})));
                Physiolibrary.NonSIunits.degC_to_degF degC_to_degF
                annotation (Placement(transformation(extent={{48,28},{56,36}})));
                Physiolibrary.Chemical.MassStorageCompartment          SweatFuel(
                  initialSoluteMass=1, stateName="SweatFuel.Mass")
                annotation (Placement(transformation(extent={{56,-52},{78,-32}})));
                Physiolibrary.Chemical.InputPump          inputPump
                annotation (Placement(transformation(extent={{34,-52},{54,-32}})));
                Physiolibrary.Chemical.OutputPump          outputPump
                annotation (Placement(transformation(extent={{82,-52},{102,-32}})));
                Modelica.Blocks.Math.Gain gain(k=0.0004) annotation (Placement(
                    transformation(
                    extent={{-4,-4},{4,4}},
                    rotation=270,
                    origin={92,-26})));
                Physiolibrary.Blocks.Factors.Spline MassEffect(data={{0.9,1.0,0.0},{1.0,
                  0.0,0.0}})
                annotation (Placement(transformation(extent={{34,-38},{54,-18}})));
                Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant(k=
                  0.004)
                annotation (Placement(transformation(extent={{34,-20},{42,-12}})));
                Modelica.Blocks.Math.Feedback H2OOutflow
                annotation (Placement(transformation(extent={{-2,-12},{-18,4}})));
                Physiolibrary.Types.Constants.VolumeFlowRateConst H2OReab(k=0)
                annotation (Placement(transformation(extent={{-26,-22},{-18,-14}})));
                Physiolibrary.Osmotic.Interfaces.OsmoticPort_b q_out annotation (
                Placement(transformation(extent={{-48,-44},{-30,-28}}),
                  iconTransformation(extent={{-90,-50},{-70,-30}})));
                Physiolibrary.Osmotic.Sources.SolventOutflux sweat(useSolutionFlowInput=
                 true)
                annotation (Placement(transformation(extent={{-62,-46},{-82,-26}})));
                Physiolibrary.Types.Constants.DeprecatedUntypedConstant fractConstant(k=
                 bodyPart)
                annotation (Placement(transformation(extent={{-94,-4},{-68,22}})));
                Physiolibrary.Blocks.Factors.Normalization BodyPart
                annotation (Placement(transformation(extent={{-44,18},{-24,38}})));
            equation
                connect(flowConstant.y, NerveEffect.yBase) annotation (Line(
                  points={{70.4,84},{72,84},{72,66}},
                  color={0,0,127},
                  smooth=Smooth.None));
                connect(busConnector.HypothalamusSweating_NA, NerveEffect.u)
                annotation (Line(
                  points={{-90,91},{-56,91},{-56,64},{62.2,64}},
                  color={0,0,255},
                  thickness=0.5,
                  smooth=Smooth.None), Text(
                  string="%first",
                  index=-1,
                  extent={{-6,3},{-6,3}}));
                connect(busConnector.skin_FunctionEffect, SkinFunctionEffect.u)
                annotation (Line(
                  points={{-90,91},{-56,91},{-56,12},{62.2,12}},
                  color={0,0,255},
                  thickness=0.5,
                  smooth=Smooth.None), Text(
                  string="%first",
                  index=-1,
                  extent={{-6,3},{-6,3}}));
                connect(AcclimationEffect.y, SkinFunctionEffect.yBase) annotation (Line(
                  points={{72,30},{72,14}},
                  color={0,0,127},
                  smooth=Smooth.None));
                connect(NerveEffect.y, FuelEffect.yBase) annotation (Line(
                  points={{72,62},{72,54}},
                  color={0,0,127},
                  smooth=Smooth.None));
                connect(FuelEffect.y, AcclimationEffect.yBase) annotation (Line(
                  points={{72,50},{72,34}},
                  color={0,0,127},
                  smooth=Smooth.None));
                connect(busConnector.skin_T, degC_to_degF.degC) annotation (Line(
                  points={{-90,91},{-56,91},{-56,32},{47.2,32}},
                  color={0,0,255},
                  thickness=0.5,
                  smooth=Smooth.None), Text(
                  string="%first",
                  index=-1,
                  extent={{-6,3},{-6,3}}));
                connect(degC_to_degF.degF, AcclimationEffect.u) annotation (Line(
                  points={{56.8,32},{62.2,32}},
                  color={0,0,127},
                  smooth=Smooth.None));
                connect(SweatFuel.soluteMass, FuelEffect.u) annotation (Line(
                  points={{67,-49.4},{67,-58},{22,-58},{22,52},{62.2,52}},
                  color={0,0,127},
                  smooth=Smooth.None));
                connect(inputPump.q_out, SweatFuel.q_out) annotation (Line(
                  points={{50,-42},{67,-42}},
                  color={200,0,0},
                  thickness=1,
                  smooth=Smooth.None));
                connect(SweatFuel.q_out, outputPump.q_in) annotation (Line(
                  points={{67,-42},{86,-42}},
                  color={200,0,0},
                  thickness=1,
                  smooth=Smooth.None));
                connect(gain.y, outputPump.desiredFlow) annotation (Line(
                  points={{92,-30.4},{92,-38}},
                  color={0,0,127},
                  smooth=Smooth.None));
                connect(MassEffect.y, inputPump.desiredFlow) annotation (Line(
                  points={{44,-30},{44,-38}},
                  color={0,0,127},
                  smooth=Smooth.None));
                connect(SweatFuel.soluteMass, MassEffect.u) annotation (Line(
                  points={{67,-49.4},{67,-58},{22,-58},{22,-28},{34.2,-28}},
                  color={0,0,127},
                  smooth=Smooth.None));
                connect(Constant.y, MassEffect.yBase) annotation (Line(
                  points={{42.4,-16},{44,-16},{44,-26}},
                  color={0,0,127},
                  smooth=Smooth.None));
                connect(SkinFunctionEffect.y, H2OOutflow.u1) annotation (Line(
                  points={{72,10},{72,-4},{-3.6,-4}},
                  color={0,0,127},
                  smooth=Smooth.None));
                connect(H2OReab.y, H2OOutflow.u2) annotation (Line(
                  points={{-17.6,-18},{-10,-18},{-10,-10.4}},
                  color={0,0,127},
                  smooth=Smooth.None));
                connect(SkinFunctionEffect.y, gain.u) annotation (Line(
                  points={{72,10},{72,-4},{92,-4},{92,-21.2}},
                  color={0,0,127},
                  smooth=Smooth.None));
                connect(sweat.q_in, q_out) annotation (Line(
                  points={{-66,-36},{-39,-36}},
                  color={127,127,0},
                  thickness=1,
                  smooth=Smooth.None));
                connect(H2OOutflow.y, sweat.solutionFlow) annotation (Line(
                points={{-17.2,-4},{-72,-4},{-72,-32}},
                color={0,0,127},
                smooth=Smooth.None));
                connect(busConnector.SweatDuct_H2OOutflow, BodyPart.yBase)
                annotation (Line(
                  points={{-90,91},{-34,91},{-34,30}},
                  color={0,0,255},
                  thickness=0.5,
                  smooth=Smooth.None), Text(
                  string="%first",
                  index=-1,
                  extent={{-6,3},{-6,3}}));
                connect(fractConstant.y, BodyPart.u) annotation (Line(
                  points={{-66.7,9},{-53.35,9},{-53.35,28},{-43.8,28}},
                  color={0,0,127},
                  smooth=Smooth.None));
                connect(BodyPart.y, sweat.solutionFlow) annotation (Line(
                points={{-34,26},{-36,26},{-36,-20},{-72,-20},{-72,-32}},
                color={0,0,127},
                smooth=Smooth.None));
                annotation ( Icon(coordinateSystem(
                      preserveAspectRatio=true,  extent={{-100,-100},{100,100}}),
                    graphics={Text(
                      extent={{-137,-103},{144,-128}},
                      lineColor={0,0,255},
                  textString="%name")}));
            end SweatGland;