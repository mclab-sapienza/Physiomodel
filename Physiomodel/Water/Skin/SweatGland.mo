within Physiomodel.Water.Skin;

        model SweatGland
            extends Physiolibrary.Icons.SweatGland;
            parameter Real bodyPart=1/3;
            Physiolibrary.Types.BusConnector busConnector annotation (Placement(
                transformation(extent={{-100,81},{-80,101}}), iconTransformation(
                  extent={{60,60},{80,80}})));
            Physiolibrary.Osmotic.Interfaces.OsmoticPort_b q_out annotation (
              Placement(transformation(extent={{-48,-44},{-30,-28}}),
                iconTransformation(extent={{-90,-50},{-70,-30}})));
            Physiolibrary.Osmotic.Sources.SolventOutflux sweat(useSolutionFlowInput=
                true)
            annotation (Placement(transformation(extent={{-62,-46},{-82,-26}})));
            Physiolibrary.Types.Constants.FractionConst             fractConstant(k=
                bodyPart)
            annotation (Placement(transformation(extent={{-92,-4},{-66,22}})));
            Physiolibrary.Blocks.Factors.Normalization BodyPart
            annotation (Placement(transformation(extent={{-44,18},{-24,38}})));
        equation
            connect(sweat.q_in, q_out) annotation (Line(
            points={{-66,-36},{-39,-36}},
            color={127,127,0},
            thickness=1,
            smooth=Smooth.None));
            connect(busConnector.SweatDuct_H2OOutflow, BodyPart.yBase) annotation (
            Line(
            points={{-90,91},{-34,91},{-34,30}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None), Text(
            string="%first",
            index=-1,
            extent={{-6,3},{-6,3}}));
            connect(fractConstant.y, BodyPart.u) annotation (Line(
            points={{-62.75,9},{-53.35,9},{-53.35,28},{-42,28}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(BodyPart.y, sweat.solutionFlow) annotation (Line(
            points={{-34,24},{-36,24},{-36,-20},{-72,-20},{-72,-29}},
            color={0,0,127},
            smooth=Smooth.None));
            annotation ( Icon(coordinateSystem(
                preserveAspectRatio=true,  extent={{-100,-100},{100,100}}),
              graphics={Text(
                extent={{-137,-103},{144,-128}},
                lineColor={0,0,255},
                textString="%name")}));
        end SweatGland;
