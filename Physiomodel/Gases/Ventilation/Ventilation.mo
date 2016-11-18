within Physiomodel.Gases.Ventilation;
            model Ventilation
                extends Physiolibrary.Icons.Ventilation;
                Physiolibrary.Types.BusConnector busConnector annotation (Placement(
                    transformation(extent={{66,-30},{86,-10}}), iconTransformation(
                      extent={{80,40},{120,80}})));
                AlveolarVentilation_STPD alveolarVentilation annotation (Placement(
                    transformation(
                    extent={{-10,-10},{10,10}},
                    origin={-32,-38})));
                NaturalVentilation2 naturalVentilation(DriveOnTidalVolume={{0,0,0},{1,
                    550,400},{10,2630,0}})
                  annotation (Placement(transformation(extent={{46,2},{26,22}})));
                Modelica.Blocks.Math.Product TotalVentilation
                  annotation (Placement(transformation(extent={{42,24},{48,30}})));
                RespiratoryNeuralDrive3 respiratoryNeuralDrive2_1
                  annotation (Placement(transformation(extent={{-56,38},{-22,72}})));
            equation
                connect(alveolarVentilation.TidalVolume,naturalVentilation. TidalVolume)
                  annotation (Line(
                    points={{-24,-28},{2,-28},{2,14},{24.6,14}},
                    color={0,0,127},
                    smooth=Smooth.None));
                connect(alveolarVentilation.DeadSpace,naturalVentilation. DeadSpace)
                  annotation (Line(
                    points={{-24,-32},{6.3,-32},{6.3,8},{24.6,8}},
                    color={0,0,127},
                    smooth=Smooth.None));
                connect(naturalVentilation.ExcessLungWater_Volume,busConnector. ExcessLungWater_Volume)
                  annotation (Line(
                    points={{44.6,4},{76,4},{76,-20}},
                    color={0,0,127},
                    smooth=Smooth.None), Text(
                    string="%second",
                    index=1,
                    extent={{6,3},{6,3}}));
                connect(naturalVentilation.Thorax_LungInflation,busConnector. Thorax_LungInflation)
                  annotation (Line(
                    points={{44.6,8},{76,8},{76,-20}},
                    color={0,0,127},
                    smooth=Smooth.None), Text(
                    string="%second",
                    index=1,
                    extent={{6,3},{6,3}}));
                connect(naturalVentilation.RespiratoryMuscleFunctionEffect,busConnector. RespiratoryMuscleFunctionEffect)
                  annotation (Line(
                    points={{44.6,16},{76,16},{76,-20}},
                    color={0,0,127},
                    smooth=Smooth.None), Text(
                    string="%second",
                    index=1,
                    extent={{6,3},{6,3}}));
                connect(naturalVentilation.RespiratoryCenterOutput_MotorNerveActivity,
                  busConnector.RespiratoryCenter_MotorNerveActivity) annotation (Line(
                    points={{44.6,20},{76,20},{76,-20}},
                    color={0,0,127},
                    smooth=Smooth.None), Text(
                    string="%second",
                    index=1,
                    extent={{6,3},{6,3}}));
                connect(alveolarVentilation.core_T,busConnector. core_T)
                  annotation (Line(
                    points={{-24,-40},{18,-40},{18,-20},{76,-20}},
                    color={0,0,127},
                    smooth=Smooth.None), Text(
                    string="%second",
                    index=1,
                    extent={{6,3},{6,3}}));
                connect(naturalVentilation.TidalVolume,TotalVentilation. u2)
                  annotation (Line(
                    points={{24.6,14},{4,14},{4,26},{41.4,26},{41.4,25.2}},
                    color={0,0,127},
                    smooth=Smooth.None));
                connect(busConnector.RespiratoryCenter_RespRate,TotalVentilation. u1)
                  annotation (Line(
                    points={{76,-20},{76,44},{24,44},{24,28.8},{41.4,28.8}},
                    color={0,0,255},
                    thickness=0.5,
                    smooth=Smooth.None), Text(
                    string="%first",
                    index=-1,
                    extent={{-6,3},{-6,3}}));
                connect(TotalVentilation.y,busConnector. BreathingTotalVentilation)
                  annotation (Line(
                    points={{48.3,27},{76,27},{76,-20}},
                    color={0,0,127},
                    smooth=Smooth.None), Text(
                    string="%second",
                    index=1,
                    extent={{6,3},{6,3}}));
                connect(alveolarVentilation.RespRate,busConnector. RespiratoryCenter_RespRate)
                  annotation (Line(
                    points={{-24,-36},{18,-36},{18,-20},{76,-20}},
                    color={0,0,127},
                    smooth=Smooth.None), Text(
                    string="%second",
                    index=1,
                    extent={{6,3},{6,3}}));
                connect(busConnector.BarometerPressure,alveolarVentilation. EnvironmentPressure)
                  annotation (Line(
                    points={{76,-20},{-72,-20},{-72,-34},{-40,-34}},
                    color={0,0,255},
                    thickness=0.5,
                    smooth=Smooth.None), Text(
                    string="%first",
                    index=-1,
                    extent={{-6,3},{-6,3}}));
                connect(busConnector.AmbientTemperature,alveolarVentilation. AmbientTemperature)
                  annotation (Line(
                    points={{76,-20},{-72,-20},{-72,-28},{-40,-28}},
                    color={0,0,255},
                    thickness=0.5,
                    smooth=Smooth.None), Text(
                    string="%first",
                    index=-1,
                    extent={{-6,3},{-6,3}}));
                connect(busConnector.EnvironmentRelativeHumidity,alveolarVentilation. EnvironmentRelativeHumidity)
                  annotation (Line(
                    points={{76,-20},{-72,-20},{-72,-40},{-40,-40}},
                    color={0,0,255},
                    thickness=0.5,
                    smooth=Smooth.None), Text(
                    string="%first",
                    index=-1,
                    extent={{-6,3},{-6,3}}));
                connect(respiratoryNeuralDrive2_1.busConnector, busConnector) annotation (
                   Line(
                    points={{-52.6,68.6},{76,68.6},{76,-20}},
                    color={0,0,255},
                    thickness=0.5,
                    smooth=Smooth.None));
                connect(alveolarVentilation.BronchiDilution, busConnector.BronchiDilution)
                  annotation (Line(
                    points={{-22,-48},{76,-48},{76,-20}},
                    color={0,0,127},
                    smooth=Smooth.None), Text(
                    string="%second",
                    index=1,
                    extent={{6,3},{6,3}}));
                connect(alveolarVentilation.AlveolarVentilation, busConnector.AlveolarVentilation_Env)
                annotation (Line(
                  points={{-22,-44},{76,-44},{76,-20}},
                  color={0,0,127},
                  smooth=Smooth.None), Text(
                  string="%second",
                  index=1,
                  extent={{6,3},{6,3}}));
                annotation (Icon(coordinateSystem(preserveAspectRatio=true, extent={{-100,
                          -100},{100,100}}), graphics={Text(
                        extent={{-120,-108},{130,-126}},
                        lineColor={0,0,255},
                textString="%name")}));
            end Ventilation;
