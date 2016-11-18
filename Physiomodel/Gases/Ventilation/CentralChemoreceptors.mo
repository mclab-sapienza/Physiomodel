within Physiomodel.Gases.Ventilation;
            model CentralChemoreceptors
                    extends Physiolibrary.Icons.RespiratoryCenter;

                    parameter Real data[:,3]={{6.60,0.0,0},{6.85,10.0,0},{7.07,1.0,-8.0},{7.50,0.0,0}}; //{{6.60,0.0,0},{6.87,10.0,0},{7.12,1.0,-8.0},{7.50,0.0,0}};
                    Physiolibrary.Types.RealIO.FractionOutput CentralChemoreceptors
                    annotation (Placement(transformation(extent={{80,-20},{120,20}}),
                      iconTransformation(extent={{74,20},{114,60}})));
                    Physiolibrary.Types.RealIO.pHInput Brain_pH_intracellular
                    annotation (Placement(transformation(extent={{-100,40},{-60,80}}),
                      iconTransformation(extent={{-100,40},{-60,80}})));                                                //orginal data from Coleman {{6.60,0.0,0},{6.87,10.0,0},{7.22,1.0,-8.0},{7.50,0.0,0}}) was corrected, becase the normal intracellular pH in neuron cells is 7.16
                    Physiolibrary.Blocks.Interpolation.Curve curve(
                    x=data[:, 1],
                    y=data[:, 2],
                    slope=data[:, 3])
                    annotation (Placement(transformation(extent={{18,-10},{38,10}})));
            equation

                connect(curve.val, CentralChemoreceptors) annotation (Line(
                points={{38,0},{100,0}},
                color={0,0,127},
                smooth=Smooth.None));
                connect(Brain_pH_intracellular, curve.u) annotation (Line(
                points={{-80,60},{-32,60},{-32,0},{18,0}},
                color={0,0,127},
                smooth=Smooth.None));
                annotation ( Icon(coordinateSystem(
                    preserveAspectRatio=true,  extent={{-100,-100},{100,100}}),
                  graphics={
                  Text(
                    extent={{-66,32},{76,-22}},
                    lineColor={0,0,0},
                    fillColor={213,255,170},
                    fillPattern=FillPattern.Solid,
                    textString="%name"),
                  Text(
                    extent={{-118,-104},{130,-130}},
                    lineColor={0,0,255},
                    textString="%name")}));
            end CentralChemoreceptors;
