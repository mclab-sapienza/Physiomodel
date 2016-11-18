within Physiomodel.Metabolism.TissueMetabolism;
        model NutrientDelivery_2

                Physiolibrary.Chemical.Interfaces.ChemicalPort_b q_out
                "Base plasma pool of glucose, outflow of glucose to plasma pool from tissue"
                annotation (extent=[-10,-110; 10,-90], Placement(transformation(extent=
                    {{90,-10},{110,10}})));
                Physiolibrary.Types.RealIO.VolumeFlowRateInput solventFlow
                "Portal vein plus hepatic artery plasma flow"
                                          annotation ( extent = [-10,50;10,70], rotation = -90);

                Physiolibrary.Chemical.Interfaces.ChemicalPort_a q_in
                "Base plasma pool of glucose, delivery of glucose minus absorbtion from GI lumen"
                annotation (Placement(transformation(extent={{-120,-20},{-80,20}}),
                iconTransformation(extent={{-110,-10},{-90,10}})));
                Physiolibrary.Chemical.Interfaces.ChemicalPort_a neededFlow
                "Glucose flow to metabolism, its concentration in tissue" annotation (
                Placement(transformation(extent={{24,-110},{44,-90}}),
                iconTransformation(extent={{-10,-60},{10,-40}})));
                Physiolibrary.Types.RealIO.FractionOutput FuelFractUseDelay
                "1 if enough glucose delivery"                   annotation (Placement(
                  transformation(extent={{-80,-60},{-66,-46}}), iconTransformation(
                  extent={{-20,-20},{20,20}},
                  rotation=270,
                  origin={-60,-70})));
                Physiolibrary.Types.RealIO.MolarFlowRateInput GITUsed
                "Negative GITract consumption"                                                                                  annotation (Placement(
                  transformation(extent={{-94,-50},{-74,-30}}),iconTransformation(extent={{-20,-20},
                      {20,20}},
                  rotation=270,
                  origin={80,60})));
                Physiolibrary.Chemical.Interfaces.ChemicalPort_a fromGILumen
                "Absorbtion flow of glucose from gastro intestinal lumen and GIT glucose concentration"
                annotation (Placement(transformation(extent={{-92,-28},{-72,-8}}),
                iconTransformation(extent={{-110,-50},{-90,-30}})));
                Physiolibrary.Types.RealIO.VolumeFlowRateInput HepaticArty
                "Hepatic artery plasma flow"                                                                         annotation (Placement(
                  transformation(extent={{-96,44},{-76,64}}),  iconTransformation(extent={{-20,-20},
                      {20,20}},
                  rotation=270,
                  origin={-80,60})));

                Physiolibrary.Types.MolarFlowRate consumption;
                //  Real fromGILumen_conc;
                Physiolibrary.Types.MolarFlowRate delivery; //(start=300);
        equation
            //  delivered.conc  = neededFlow.conc + concChange;
            if ( -neededFlow.q > delivery) then
            consumption = delivery;
            FuelFractUseDelay = consumption/(-neededFlow.q);
            else
            consumption + neededFlow.q = 0;
            FuelFractUseDelay = 1;
            end if;
            delivery = q_in.q + fromGILumen.q + GITUsed;

            consumption = q_in.q + q_out.q + fromGILumen.q;

            neededFlow.conc * solventFlow = - q_out.q;

            q_in.q = q_in.conc * solventFlow;

            //calculation of glucose concentration in gartro intestinal tract:  fromGILumen.conc
            q_in.conc = fromGILumen.conc;
            //  fromGILumen.q + q_in.conc * (solventFlow-HepaticArty) + GITUsed = fromGILumen.conc * (solventFlow-HepaticArty);

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
            <p><i>2012</i></p>
            <p>Marek Matejak, Charles University, Prague, Czech Republic </p>
            </html>"));
        end NutrientDelivery_2;