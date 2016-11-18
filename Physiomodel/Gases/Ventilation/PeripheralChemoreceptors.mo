within Physiomodel.Gases.Ventilation;
            model PeripheralChemoreceptors
                extends Physiolibrary.Icons.PeripheralChemoreceptors;
                Physiolibrary.Blocks.Interpolation.Curve PhEffectCurve(
                x=PhEffect[:, 1],
                y=PhEffect[:, 2],
                slope=PhEffect[:, 3])
                annotation (Placement(transformation(extent={{-24,8},{12,44}})));
                Physiolibrary.Types.RealIO.FractionOutput
                                                  Chemoreceptors_FiringRate
                annotation (Placement(transformation(extent={{98,-18},{122,6}}),
                  iconTransformation(
                  extent={{-20,-20},{20,20}},
                  rotation=90,
                  origin={-20,100})));
                parameter Real PhEffect[:,3]={{7.1,2,0},{7.4,0.4,-3},{7.7,0,0}}; //Orginal values from Coleman {{ 7.10,  2.0,  0}, { 7.44,  0.4,  -3.0}, { 7.70,  0.0,  0}} was corrected, because normal arteries pH is not 7.44 but 7.4
                parameter Real PO2Effect[:,3]={{  30,  10.0,  0}, {  60,   2.0,  -0.05}, {  85,   0.5,  -0.005}, { 200,   0.2,  0}}; //Orginal values from Coleman {{  30,  10.0,  0}, {  60,   2.0,  -0.05}, {  94,   0.5,  -0.005}, { 400,   0.2,  0}} was corrected, because normal arteries pO2 is not 94 but 85
                parameter Real PO2Effect_original[:,3]={{  30,  10.0,  0}, {  60,   2.0,  -0.05}, {  94,   0.5,  -0.005}, { 200,   0.2,  0}};
                parameter Real SteadyState[:,3]={{  0,  0,  0}, {  1,  1,  0.3}, { 10,  2,  0}};
                parameter Physiolibrary.Types.Time Tau(displayUnit="h") = 20*60*60;

                Physiolibrary.Types.BusConnector busConnector annotation (Placement(
                transformation(extent={{-102,64},{-82,84}}), iconTransformation(
                  extent={{-96,-18},{-56,22}})));
                Physiolibrary.Types.RealIO.FractionInput
                                                 GangliaGeneral_NA
                annotation (Placement(transformation(extent={{-74,44},{-48,70}}),
                  iconTransformation(extent={{-20,-20},{20,20}},
                  rotation=90,
                  origin={-40,-100})));
                Physiomodel.Nerves.AplhaReceptorsActivityFactor aplhaReceptorsActivityFactor(
                data={{0,0.0,0},{1,0.1,0.2},{4,0.6,0}},
                NEURALK=0.5,
                HUMORALK=0.5)
                annotation (Placement(transformation(extent={{-26,68},{-6,88}})));
                Physiolibrary.Types.Constants.FractionConst             Constant(k=1)
                annotation (Placement(transformation(extent={{-30,90},{-22,98}})));
                Physiolibrary.Blocks.Interpolation.Curve PO2EffectCurve(
                x=PO2Effect[:, 1],
                y=PO2Effect[:, 2],
                slope=PO2Effect[:, 3],
                Xscale=101325/760)
                annotation (Placement(transformation(extent={{-24,-38},{12,-2}})));
                Modelica.Blocks.Math.Sum sum(nin=3)
                annotation (Placement(transformation(extent={{32,0},{52,20}})));
                Modelica.Blocks.Math.Product product
                annotation (Placement(transformation(extent={{74,-16},{94,4}})));
                Physiolibrary.Blocks.Interpolation.Curve SteadyStateCurve(
                x=SteadyState[:, 1],
                y=SteadyState[:, 2],
                slope=SteadyState[:, 3]) "ChemoreceptorAcclimation"
                annotation (Placement(transformation(extent={{-62,-96},{-26,-60}})));
                Modelica.Blocks.Math.Feedback feedback
                annotation (Placement(transformation(extent={{-8,-88},{12,-68}})));
                Physiolibrary.Blocks.Math.Integrator integrator(
                stateName="ChemoreceptorAcclimation.Effect",
                y_start=1.01445,
                k=1/Tau) "ChemoreceptorAcclimation.Effect"
                annotation (Placement(transformation(extent={{24,-88},{44,-68}})));
                Physiolibrary.Types.RealIO.pHInput   artys_ph
                annotation (Placement(transformation(extent={{-106,16},{-66,56}}),
                  iconTransformation(extent={{-20,-20},{20,20}},
                  rotation=90,
                  origin={0,-100})));
                Physiolibrary.Types.RealIO.PressureInput
                                                 artys_pO2
                annotation (Placement(transformation(extent={{-106,-20},{-66,20}}),
                  iconTransformation(extent={{-20,-20},{20,20}},
                  rotation=90,
                  origin={40,-100})));
                Physiolibrary.Blocks.Interpolation.Curve PO2EffectCurve1(
                x=PO2Effect_original[:, 1],
                y=PO2Effect_original[:, 2],
                slope=PO2Effect_original[:, 3],
                Xscale=101325/760)
                annotation (Placement(transformation(extent={{40,52},{76,88}})));
            equation
                assert(artys_pO2>30,"artys_pO2 should be greater then 30 mmHg!");
                connect(Constant.y, aplhaReceptorsActivityFactor.yBase) annotation (Line(
                    points={{-21,94},{-16,94},{-16,85}},
                    color={0,0,127},
                    smooth=Smooth.None));
                connect(busConnector.AlphaPool_Effect, aplhaReceptorsActivityFactor.AlphaPool_Effect)
                  annotation (Line(
                    points={{-92,74},{-60,74},{-60,84},{-25.8,84}},
                    color={0,0,255},
                    thickness=0.5,
                    smooth=Smooth.None), Text(
                    string="%first",
                    index=-1,
                    extent={{-6,3},{-6,3}}));
                connect(busConnector.AlphaBlocade_Effect, aplhaReceptorsActivityFactor.AlphaBlockade_Effect)
                  annotation (Line(
                    points={{-92,74},{-60,74},{-60,78},{-25.8,78}},
                    color={0,0,255},
                    thickness=0.5,
                    smooth=Smooth.None), Text(
                    string="%first",
                    index=-1,
                    extent={{-6,3},{-6,3}}));
                connect(aplhaReceptorsActivityFactor.GangliaGeneral_NA, GangliaGeneral_NA)
                  annotation (Line(
                    points={{-25.8,72},{-46,72},{-46,57},{-61,57}},
                    color={0,0,127},
                    smooth=Smooth.None));
                connect(PhEffectCurve.val, sum.u[2]) annotation (Line(
                    points={{12,26},{26,26},{26,10},{30,10}},
                    color={0,0,127},
                    smooth=Smooth.None));
                connect(aplhaReceptorsActivityFactor.y, sum.u[1]) annotation (Line(
                    points={{-16,71},{-16,54},{26,54},{26,8.66667},{30,8.66667}},
                    color={0,0,127},
                    smooth=Smooth.None));
                connect(product.y, Chemoreceptors_FiringRate) annotation (Line(
                    points={{95,-6},{110,-6}},
                    color={0,0,127},
                    smooth=Smooth.None));
                connect(sum.y, product.u1) annotation (Line(
                    points={{53,10},{60,10},{60,0},{72,0}},
                    color={0,0,127},
                    smooth=Smooth.None));
                connect(sum.y, SteadyStateCurve.u) annotation (Line(
                    points={{53,10},{60,10},{60,-42},{-82,-42},{-82,-78},{-62,-78}},
                    color={0,0,127},
                    smooth=Smooth.None));
                connect(integrator.y, product.u2) annotation (Line(
                    points={{45,-78},{66,-78},{66,-12},{72,-12}},
                    color={0,0,127},
                    smooth=Smooth.None));
                connect(SteadyStateCurve.val, feedback.u1) annotation (Line(
                    points={{-26,-78},{-6,-78}},
                    color={0,0,127},
                    smooth=Smooth.None));
                connect(integrator.y, feedback.u2) annotation (Line(
                    points={{45,-78},{56,-78},{56,-98},{2,-98},{2,-86}},
                    color={0,0,127},
                    smooth=Smooth.None));
                connect(feedback.y, integrator.u) annotation (Line(
                    points={{11,-78},{22,-78}},
                    color={0,0,127},
                    smooth=Smooth.None));
                connect(PhEffectCurve.u, artys_ph) annotation (Line(
                    points={{-24,26},{-50,26},{-50,36},{-86,36}},
                    color={0,0,127},
                    smooth=Smooth.None));
                connect(PO2EffectCurve.u, artys_pO2) annotation (Line(
                    points={{-24,-20},{-50,-20},{-50,0},{-86,0}},
                    color={0,0,127},
                    smooth=Smooth.None));
                connect(artys_pO2, PO2EffectCurve1.u) annotation (Line(
                    points={{-86,0},{20,0},{20,70},{40,70}},
                    color={0,0,127},
                    smooth=Smooth.None));
                connect(PO2EffectCurve1.val, sum.u[3]) annotation (Line(
                    points={{76,70},{88,70},{88,32},{26,32},{26,11.3333},{30,11.3333}},
                    color={0,0,127},
                    smooth=Smooth.None));

                annotation ( Icon(coordinateSystem(
                        preserveAspectRatio=true, extent={{-100,-100},{100,100}}),
                      graphics={Text(
                        extent={{-124,13},{124,-13}},
                        lineColor={0,0,255},
                        textString="%name",
                        origin={122,-9},
                        rotation=90)}));
            end PeripheralChemoreceptors;
