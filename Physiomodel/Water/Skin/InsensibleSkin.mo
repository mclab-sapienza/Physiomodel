within Physiomodel.Water.Skin;

        model InsensibleSkin
            extends Physiolibrary.Icons.Skin;
            parameter Real bodyPart=1/3;
            Physiolibrary.Types.BusConnector busConnector annotation (Placement(
                transformation(extent={{-100,81},{-80,101}}), iconTransformation(
                  extent={{60,60},{80,80}})));
            Physiolibrary.Types.Constants.VolumeFlowRateConst H2OReab1(k=0.37*
                bodyPart)
            annotation (Placement(transformation(extent={{-48,-64},{-40,-56}})));
            Physiolibrary.Osmotic.Interfaces.OsmoticPort_b q_out annotation (
              Placement(transformation(extent={{-48,-44},{-30,-28}}),
                iconTransformation(extent={{-90,-50},{-70,-30}})));
            Physiolibrary.Osmotic.Sources.SolventOutflux vapor(useSolutionFlowInput=
                true)
            annotation (Placement(transformation(extent={{6,-92},{26,-72}})));
        equation
            connect(vapor.q_in, q_out) annotation (Line(
            points={{10,-82},{4,-82},{4,-36},{-39,-36}},
            color={127,127,0},
            thickness=1,
            smooth=Smooth.None));
            connect(H2OReab1.y, vapor.solutionFlow) annotation (Line(
            points={{-39,-60},{16,-60},{16,-78}},
            color={0,0,127},
            smooth=Smooth.None));
            annotation ( Icon(coordinateSystem(
                preserveAspectRatio=true,  extent={{-100,-100},{100,100}}),
              graphics={Text(
                extent={{-155,-83},{126,-108}},
                lineColor={0,0,255},
                textString="%name")}));
        end InsensibleSkin;
