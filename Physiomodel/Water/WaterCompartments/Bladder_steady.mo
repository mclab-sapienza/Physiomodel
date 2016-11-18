within Physiomodel.Water.WaterCompartments;
model Bladder_steady
            // extends Library.PressureFlow.VolumeCompartement;
            extends Physiolibrary.Icons.Bladder;
            Physiolibrary.Hydraulic.Interfaces.HydraulicPort_a con annotation (
            Placement(transformation(extent={{-84,18},{-44,58}}),
              iconTransformation(extent={{-120,-20},{-80,20}})));
            Physiolibrary.Hydraulic.Sources.UnlimitedOutflowPump
                                                      bladderVoidFlow(
            useSolutionFlowInput=true)
            annotation (Placement(transformation(extent={{-58,-23},{-73,-8}})));
            Physiolibrary.Types.BusConnector busConnector annotation (Placement(
              transformation(extent={{-100,69},{-80,89}}), iconTransformation(
                extent={{-100,-100},{-80,-80}})));

            Physiolibrary.Types.Constants.VolumeConst volumeConstant(k=0.0003)
            annotation (Placement(transformation(extent={{-28,32},{-20,40}})));
            Physiolibrary.Hydraulic.Sensors.FlowMeasure flowMeasure annotation (
            Placement(transformation(
              extent={{-10,10},{10,-10}},
              rotation=270,
              origin={-38,6})));

            Physiolibrary.Hydraulic.Components.ElasticVessel elasticVesselvolumeCompartement(
            stateName="BladderVolume.Mass",
            ZeroPressureVolume(displayUnit="l") = 0.001,
            volume_start=0.0003)
            annotation (Placement(transformation(extent={{-20,54},{0,74}})));
        equation
            connect(con, flowMeasure.q_in) annotation (Line(
              points={{-64,38},{-38,38},{-38,16}},
              color={0,0,0},
              thickness=1,
              smooth=Smooth.None));
            connect(flowMeasure.volumeFlow, busConnector.BladderVoidFlow) annotation (
              Line(
              points={{-50,6},{20,6},{20,79},{-90,79}},
              color={0,0,127},
              smooth=Smooth.None), Text(
              string="%second",
              index=1,
              extent={{6,3},{6,3}}));
            connect(bladderVoidFlow.q_in, flowMeasure.q_out) annotation (Line(
            points={{-58,-15.5},{-48,-15.5},{-48,-16},{-38,-16},{-38,-4}},
            color={0,0,0},
            thickness=1,
            smooth=Smooth.None));
            connect(busConnector.CD_H2O_Outflow, bladderVoidFlow.solutionFlow)
            annotation (Line(
            points={{-90,79},{-90,8},{-66,8},{-66,-10.25},{-65.5,-10.25}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None), Text(
            string="%first",
            index=-1,
            extent={{-6,3},{-6,3}}));
            connect(con, elasticVesselvolumeCompartement.q_in) annotation (Line(
            points={{-64,38},{-38,38},{-38,64},{-10,64}},
            color={0,0,0},
            thickness=1,
            smooth=Smooth.None));
            connect(elasticVesselvolumeCompartement.volume, busConnector.BladderVolume_Mass)
            annotation (Line(
            points={{-4,54},{-4,44},{20,44},{20,79},{-90,79}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            annotation (Icon(coordinateSystem(preserveAspectRatio=true, extent={{-100,
                    -100},{100,100}}), graphics={Text(
                  extent={{-100,96},{100,80}},
                  lineColor={0,0,255},
                  textString="%name")}));
        end Bladder_steady;
