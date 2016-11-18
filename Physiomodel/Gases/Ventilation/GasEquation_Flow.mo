within Physiomodel.Gases.Ventilation;
            model GasEquation_Flow
                Physiolibrary.Types.RealIO.VolumeFlowRateInput
                                                   V1(
                                                 displayUnit="ml/min") annotation (Placement(transformation(extent={
                          {-118,42},{-78,82}}), iconTransformation(extent={{-100,66},{-72,94}})));
                Physiolibrary.Types.RealIO.PressureInput
                                                   P1(
                                                 displayUnit="mmHg") annotation (Placement(transformation(extent={
                          {-118,42},{-78,82}}), iconTransformation(extent={{-100,6},{-72,34}})));
                Physiolibrary.Types.RealIO.TemperatureInput
                                                   T1(
                                                 displayUnit="degC") annotation (Placement(transformation(extent={
                          {-118,42},{-78,82}}), iconTransformation(extent={{-100,-54},{-72,
                          -26}})));
                Physiolibrary.Types.RealIO.PressureInput
                                                   P2(
                                                 displayUnit="mmHg") annotation (Placement(transformation(extent={
                          {-118,42},{-78,82}}), iconTransformation(
                      extent={{-14,-14},{14,14}},
                      rotation=180,
                      origin={86,20})));
                Physiolibrary.Types.RealIO.TemperatureInput
                                                   T2(
                                                 displayUnit="degC") annotation (Placement(transformation(extent={
                          {-118,42},{-78,82}}), iconTransformation(
                      extent={{-14,-14},{14,14}},
                      rotation=180,
                      origin={86,-40})));
                Physiolibrary.Types.RealIO.VolumeFlowRateOutput
                                                    V2(
                                                  displayUnit="ml/min") annotation (Placement(transformation(extent=
                          {{56,54},{96,94}}), iconTransformation(extent={{72,66},{100,94}})));
            equation
                (P1*V1)/(T1)=(P2*V2)/(T2);
                annotation (Icon(coordinateSystem(preserveAspectRatio=false,extent={{-100,
                        -100},{100,100}}),   graphics={
                      Rectangle(
                        extent={{-100,100},{100,-100}},
                        lineColor={0,0,0},
                        fillColor={170,213,255},
                        fillPattern=FillPattern.Solid),
                      Rectangle(
                        extent={{0,100},{0,-100}},
                        lineColor={0,0,0},
                        fillColor={170,213,255},
                        fillPattern=FillPattern.Solid),
                      Text(
                        extent={{-98,136},{100,100}},
                        lineColor={0,0,0},
                        fillColor={170,213,255},
                        fillPattern=FillPattern.Solid,
                        textString="%name")}));
            end GasEquation_Flow;
