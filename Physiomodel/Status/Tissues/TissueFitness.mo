within Physiomodel.Status.Tissues;
        model TissueFitness

            Physiolibrary.Types.RealIO.FractionOutput FunctionEffect   annotation (Placement(transformation(
                extent={{56,-14},{68,-2}}),  iconTransformation(
              extent={{-20,-20},{20,20}},
              rotation=270,
              origin={-20,-120})));
            Physiolibrary.Types.RealIO.FractionOutput StructureEffect                         annotation (Placement(
              transformation(extent={{-8,-34},{8,-18}}),  iconTransformation(
              extent={{-20,-20},{20,20}},
              rotation=270,
              origin={20,-120})));

            Physiolibrary.Types.RealIO.pHInput pH_intracellular
                                         annotation (Placement(transformation(extent={{-84,42},
                  {-72,54}}),           iconTransformation(
              extent={{-10,-10},{10,10}},
              rotation=180,
              origin={90,80})));
            Physiolibrary.Types.RealIO.TemperatureInput T(
                                        final displayUnit="degC")
            "tissue temperature"             annotation (Placement(transformation(extent={{-104,66},
                  {-92,78}}),           iconTransformation(
              extent={{-10,-10},{10,10}},
              rotation=180,
              origin={90,40})));

            Physiolibrary.Types.RealIO.FractionInput Fuel_FractUseDelay                        annotation (Placement(transformation(extent={{-96,54},
                  {-84,66}}),           iconTransformation(extent={{-10,-10},{10,10}},
              rotation=180,
              origin={90,0})));

            Physiolibrary.Types.RealIO.AmountOfSubstanceInput
                                                      CellProteinAA(final displayUnit=
             "mol") annotation (Placement(transformation(extent={{-2,30},{8,40}}),
              iconTransformation(
              extent={{-10,-10},{10,10}},
              rotation=180,
              origin={90,-80})));

            Physiolibrary.Blocks.Factors.Spline PhOnStructure(data={{6.5,0.1,0},{6.6,
            0.0,0}})
            annotation (Placement(transformation(extent={{-64,14},{-44,36}})));
            Physiolibrary.Blocks.Factors.Spline FuelOnStructure(data={{0.5,0.05,0},{
            0.8,0.00,0}})
            annotation (Placement(transformation(extent={{-64,0},{-44,20}})));
            Physiolibrary.Blocks.Factors.Spline TemperatureOnStructure(data={{44.0 + 273.15,
              0.00,0},{46.0 + 273.15,0.05,0}})
            annotation (Placement(transformation(extent={{-64,-14},{-44,6}})));
            Physiolibrary.Types.Constants.FrequencyConst            Constant(k(
            displayUnit="1/min") = 0.016666666666667)
            annotation (Placement(transformation(extent={{-66,34},{-58,42}})));
            Modelica.Blocks.Math.Feedback feedback
            annotation (Placement(transformation(extent={{-64,-16},{-44,-36}})));
            Modelica.Blocks.Continuous.Integrator integrator(y_start=1, k=1)
            annotation (Placement(transformation(extent={{-38,-36},{-18,-16}})));
            Physiolibrary.Blocks.Factors.Spline PhOnFunction(data={{6.6,0.0,0},{6.7,
            1.0,0}})
            annotation (Placement(transformation(extent={{20,38},{40,58}})));
            Physiolibrary.Blocks.Factors.Spline ProteinOnFunction(data={{3000.0,0.0,0},
            {5200.0,1.0,0}}, Xscale=1e-3/Substances.AminoAcids.mw)
            annotation (Placement(transformation(extent={{20,24},{40,46}})));
            Physiolibrary.Blocks.Factors.Spline FuelOnFunction(data={{0.0,0.0,0},{0.9,
            1.0,0}})
            annotation (Placement(transformation(extent={{20,50},{40,70}})));
            Physiolibrary.Blocks.Factors.Spline TemperatureOnFunction(data={{10 + 273.15,0.0,
              0},{37 + 273.15,1.0,0.12},{40 + 273.15,1.5,0},{46 + 273.15,0.0,0}})
            annotation (Placement(transformation(extent={{20,62},{40,82}})));
            Physiolibrary.Types.Constants.FractionConst             Constant1(k=1)
            annotation (Placement(transformation(extent={{20,78},{28,86}})));
            Physiolibrary.Blocks.Factors.Normalization StructureEff
            annotation (Placement(transformation(extent={{20,10},{40,30}})));
            Failed failed
            annotation (Placement(transformation(extent={{44,-70},{64,-50}})));
            Modelica.Blocks.Interfaces.BooleanOutput
                                               FunctionFailed
                                                        annotation (Placement(
              transformation(extent={{76,-66},{88,-54}}), iconTransformation(
              extent={{-20,-20},{20,20}},
              rotation=270,
              origin={60,-120})));
            Physiolibrary.Types.Constants.FrequencyConst            Constant2(k=0)
            annotation (Placement(transformation(extent={{-86,-30},{-78,-22}})));
        equation

            connect(PhOnStructure.u, pH_intracellular)
                                                  annotation (Line(
            points={{-62,25},{-70,25},{-70,48},{-78,48}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(FuelOnStructure.u, Fuel_FractUseDelay) annotation (Line(
            points={{-62,10},{-82,10},{-82,60},{-90,60}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(TemperatureOnStructure.u, T) annotation (Line(
            points={{-62,-4},{-92,-4},{-92,72},{-98,72}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(PhOnStructure.y, FuelOnStructure.yBase) annotation (Line(
            points={{-54,20.6},{-54,12}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(FuelOnStructure.y, TemperatureOnStructure.yBase) annotation (Line(
            points={{-54,6},{-54,-2}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(Constant.y, PhOnStructure.yBase) annotation (Line(
            points={{-57,38},{-54,38},{-54,27.2}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(TemperatureOnStructure.y, feedback.u2) annotation (Line(
            points={{-54,-8},{-54,-18}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(feedback.y, integrator.u) annotation (Line(
            points={{-45,-26},{-40,-26}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(integrator.y, StructureEffect) annotation (Line(
            points={{-17,-26},{0,-26}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(pH_intracellular, PhOnFunction.u)
                                                 annotation (Line(
            points={{-78,48},{22,48}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(CellProteinAA, ProteinOnFunction.u) annotation (Line(
            points={{3,35},{22,35}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(Fuel_FractUseDelay, FuelOnFunction.u) annotation (Line(
            points={{-90,60},{22,60}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(T, TemperatureOnFunction.u) annotation (Line(
            points={{-98,72},{22,72}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(TemperatureOnFunction.y, FuelOnFunction.yBase) annotation (Line(
            points={{30,68},{30,62}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(FuelOnFunction.y, PhOnFunction.yBase) annotation (Line(
            points={{30,56},{30,50}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(PhOnFunction.y, ProteinOnFunction.yBase) annotation (Line(
            points={{30,44},{30,37.2}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(Constant1.y, TemperatureOnFunction.yBase) annotation (Line(
            points={{29,82},{30,82},{30,74}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(integrator.y, StructureEff.u) annotation (Line(
            points={{-17,-26},{-12,-26},{-12,20},{22,20}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(ProteinOnFunction.y, StructureEff.yBase) annotation (Line(
            points={{30,30.6},{30,22}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(StructureEff.y, FunctionEffect) annotation (Line(
            points={{30,16},{30,-8},{62,-8}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(StructureEff.y, failed.FunctionEffect) annotation (Line(
            points={{30,16},{30,-60},{44,-60}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(failed.Failed, FunctionFailed) annotation (Line(
            points={{64,-60},{82,-60}},
            color={255,0,255},
            smooth=Smooth.None));
            connect(Constant2.y, feedback.u1) annotation (Line(
            points={{-77,-26},{-62,-26}},
            color={0,0,127},
            smooth=Smooth.None));
            annotation ( Icon(coordinateSystem(
                preserveAspectRatio=false, extent={{-100,-100},{100,100}}),
              graphics={Rectangle(extent={{-100,100},{100,-100}}, lineColor={0,
                    0,255})}));
        end TissueFitness;