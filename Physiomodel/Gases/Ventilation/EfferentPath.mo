within Physiomodel.Gases.Ventilation;
            model EfferentPath
                extends Physiolibrary.Icons.RespiratoryCenter;
                parameter Real RadiationTotalDrive[:,3]={{    0,  0.0,  0}, {  500,  3.5,  0.003}, { 1000,  4.0,  0}};
                parameter Real OutputRate[:,3]={{  0,   0,  12}, {  1,  12,   4}, { 10,  40,   0}};

                Physiolibrary.Blocks.Interpolation.Curve RespiratoryCenterOutput(
                x=OutputRate[:, 1],
                y=OutputRate[:, 2],
                slope=OutputRate[:, 3],
                Yscale=1/60)
                annotation (Placement(transformation(extent={{-10,-16},{10,4}})));
                Physiolibrary.Types.RealIO.FrequencyOutput RespRate
                  annotation (Placement(transformation(extent={{80,-20},{120,20}}),
                      iconTransformation(extent={{74,20},{114,60}})));
                Physiolibrary.Types.RealIO.FractionOutput
                  RespiratoryCenterOutput_MotorNerveActivity
                  annotation (Placement(transformation(extent={{54,-68},{94,-28}}),
                      iconTransformation(extent={{76,-60},{116,-20}})));
                Physiolibrary.Types.BusConnector busConnector annotation (Placement(
                    transformation(extent={{-42,82},{-22,102}}), iconTransformation(
                      extent={{-62,62},{-22,102}})));
                Physiolibrary.Types.RealIO.FractionInput TotalDrive(
                                                         start=1)
                  annotation (Placement(transformation(extent={{-120,0},{-80,40}}),
                      iconTransformation(extent={{-118,0},{-78,40}})));
                Modelica.Blocks.Math.Product Rate
                  annotation (Placement(transformation(extent={{62,-10},{82,10}})));
                Physiolibrary.Blocks.Factors.Normalization FunctionEffect
                annotation (Placement(transformation(extent={{14,-48},{34,-28}})));
                Physiolibrary.Blocks.Factors.Normalization AnesthesiaEffect
                annotation (Placement(transformation(extent={{14,-60},{34,-40}})));
            equation
                connect(RespiratoryCenterOutput.val, Rate.u2) annotation (Line(
                points={{10,-6},{60,-6}},
                color={0,0,127},
                smooth=Smooth.None));
                connect(Rate.y, RespRate) annotation (Line(
                points={{83,0},{100,0}},
                color={0,0,127},
                smooth=Smooth.None));
                connect(FunctionEffect.y, AnesthesiaEffect.yBase) annotation (Line(
                points={{24,-42},{24,-48}},
                color={0,0,127},
                smooth=Smooth.None));
                connect(AnesthesiaEffect.y, RespiratoryCenterOutput_MotorNerveActivity)
                annotation (Line(
                points={{24,-54},{24,-62},{64,-62},{64,-48},{74,-48}},
                color={0,0,127},
                smooth=Smooth.None));
                connect(busConnector.AnesthesiaTidalVolume, AnesthesiaEffect.u)
                annotation (Line(
                points={{-32,92},{-32,-50},{16,-50}},
                color={0,0,255},
                thickness=0.5,
                smooth=Smooth.None), Text(
                string="%first",
                index=-1,
                extent={{-6,3},{-6,3}}));
                connect(busConnector.brain_FunctionEffect, FunctionEffect.u) annotation (
                Line(
                points={{-32,92},{-32,-38},{16,-38}},
                color={0,0,255},
                thickness=0.5,
                smooth=Smooth.None), Text(
                string="%first",
                index=-1,
                extent={{-6,3},{-6,3}}));
                connect(busConnector.brain_FunctionEffect, Rate.u1) annotation (Line(
                points={{-32,92},{-32,6},{60,6}},
                color={0,0,255},
                thickness=0.5,
                smooth=Smooth.None), Text(
                string="%first",
                index=-1,
                extent={{-6,3},{-6,3}}));

                connect(TotalDrive, RespiratoryCenterOutput.u) annotation (Line(
                points={{-100,20},{-56,20},{-56,-6},{-10,-6}},
                color={0,0,127},
                smooth=Smooth.None));
                connect(TotalDrive, FunctionEffect.yBase) annotation (Line(
                points={{-100,20},{-56,20},{-56,-22},{24,-22},{24,-36}},
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
                    extent={{-122,-100},{126,-126}},
                    lineColor={0,0,255},
                textString="%name")}));
            end EfferentPath;
