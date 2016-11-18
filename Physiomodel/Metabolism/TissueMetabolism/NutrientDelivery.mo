within Physiomodel.Metabolism.TissueMetabolism;
        model NutrientDelivery

            Physiolibrary.Chemical.Interfaces.ChemicalPort_b q_out annotation (extent=
               [-10,-110; 10,-90], Placement(transformation(extent={{90,-10},{110,
                    10}})));
            Physiolibrary.Types.RealIO.VolumeFlowRateInput solventFlow
                                          annotation ( extent = [-10,50;10,70], rotation = -90);

            Physiolibrary.Chemical.Interfaces.ChemicalPort_a q_in annotation (
              Placement(transformation(extent={{-120,-20},{-80,20}}),
                iconTransformation(extent={{-110,-10},{-90,10}})));
            Physiolibrary.Chemical.Interfaces.ChemicalPort_a neededFlow annotation (
              Placement(transformation(extent={{24,-110},{44,-90}}),
                iconTransformation(extent={{-10,-60},{10,-40}})));
            Physiolibrary.Chemical.Components.Stream toCapylaries(
              useSolutionFlowInput=true)
            annotation (Placement(transformation(extent={{-90,-10},{-70,10}})));
            FuelDeficit fuelDeficit
              annotation (Placement(transformation(extent={{-10,-52},{10,-32}})));
            Physiolibrary.Chemical.Sensors.MolarFlowMeasure flowMeasure
            annotation (Placement(transformation(extent={{-44,10},{-24,-10}})));
            Physiolibrary.Types.RealIO.FractionOutput FuelFractUseDelay
                                                             annotation (Placement(
                  transformation(extent={{-80,-60},{-66,-46}}), iconTransformation(
                  extent={{-20,-20},{20,20}},
                  rotation=270,
                  origin={-60,-70})));
        equation
            connect(solventFlow, toCapylaries.solutionFlow) annotation (Line(
            points={{0,60},{0,28},{-80,28},{-80,7}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(q_in, toCapylaries.q_in) annotation (Line(
            points={{-100,0},{-90,0}},
            color={200,0,0},
            thickness=1,
            smooth=Smooth.None));
            connect(fuelDeficit.neededFlow, neededFlow) annotation (Line(
            points={{10,-42},{34,-42},{34,-100}},
            color={200,0,0},
            thickness=1,
            smooth=Smooth.None));
            connect(toCapylaries.q_out, flowMeasure.q_in) annotation (Line(
            points={{-70,0},{-44,0}},
            color={200,0,0},
            thickness=1,
            smooth=Smooth.None));
            connect(flowMeasure.q_out, fuelDeficit.delivered) annotation (Line(
            points={{-24,0},{0,0},{0,-32}},
            color={200,0,0},
            thickness=1,
            smooth=Smooth.None));
            connect(flowMeasure.molarFlowRate, fuelDeficit.maximalDeliveryFlow)
            annotation (Line(
            points={{-34,8},{-34,-36},{-10,-36}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(fuelDeficit.FractUseDelay, FuelFractUseDelay) annotation (Line(
            points={{0,-52},{0,-53},{-73,-53}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(flowMeasure.q_out, q_out) annotation (Line(
            points={{-24,0},{100,0}},
            color={200,0,0},
            thickness=1,
            smooth=Smooth.None));
            annotation (
            Icon(coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},{
                  100,100}}), graphics={
              Rectangle(
                extent={{-100,-50},{100,50}},
                lineColor={0,0,127},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid),
              Polygon(
                points={{-80,25},{80,0},{-80,-25},{-80,25}},
                lineColor={0,0,127},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid),
              Text(
                extent={{10,-84},{240,-48}},
                textString="%name",
                lineColor={0,0,255})}),          Documentation(revisions="<html>
            <p><i>2009-2010</i></p>
            <p>Marek Matejak, Charles University, Prague, Czech Republic </p>
            </html>"));
        end NutrientDelivery;