within Physiomodel.Gases.Ventilation;
            model NaturalVentilation2
                extends Physiolibrary.Icons.Ventilation;
                Physiolibrary.Types.RealIO.FrequencyInput
                  RespiratoryCenterOutput_MotorNerveActivity(
                     displayUnit="Hz")                             annotation (Placement(transformation(extent={{-88,40},
                          {-48,80}}),           iconTransformation(extent={{-100,66},{-72,94}})));
                Physiolibrary.Types.RealIO.FractionInput Thorax_LungInflation(
                                                                    displayUnit="1")
                                                                   annotation (Placement(transformation(extent={{-88,-22},
                          {-48,18}}),           iconTransformation(extent={{-100,-54},{
                          -72,-26}})));
                Physiolibrary.Types.RealIO.VolumeInput ExcessLungWater_Volume(
                                                                     displayUnit=
                      "1")                                      annotation (Placement(transformation(extent={{-88,-58},
                          {-48,-18}}),          iconTransformation(extent={{-100,-94},{
                          -72,-66}})));
                Physiolibrary.Types.RealIO.VolumeOutput TidalVolume(
                                                           displayUnit="ml")
                                                                  annotation (Placement(transformation(extent={{52,-48},
                          {92,-8}}),          iconTransformation(extent={{100,6},{128,34}})));
                Physiolibrary.Types.RealIO.VolumeOutput DeadSpace(
                                                          displayUnit="ml")
                                                                  annotation (Placement(transformation(extent={{14,-96},
                          {54,-56}}),         iconTransformation(extent={{100,-54},{128,
                          -26}})));
                Physiolibrary.Types.RealIO.FractionInput RespiratoryMuscleFunctionEffect(
                                                                              displayUnit= "1")
                                                                annotation (Placement(transformation(extent={{-88,6},
                          {-48,46}}),           iconTransformation(extent={{-100,26},{-72,
                          54}})));

                parameter Physiolibrary.Types.Fraction DeadSpaceSlope =   0.20;
                parameter Physiolibrary.Types.Volume DeadSpaceMin =                            60.0e-6;
                parameter Real[:,3] DriveOnTidalVolume =  {{  0,     0,    0}, {  1,   450,  400}, { 10,  2630,    0}};  //corrected from {{  0,     0,    0}, {  1,   550,  400}, { 10,  2630,    0}}

                // Real TidalVolumeBasic;
                Physiolibrary.Blocks.Interpolation.Curve curve(
                x=DriveOnTidalVolume[:, 1],
                y=DriveOnTidalVolume[:, 2],
                slope=DriveOnTidalVolume[:, 3],
                Yscale=1e-6)
                annotation (Placement(transformation(extent={{-2,32},{18,52}})));

                Physiolibrary.Blocks.Factors.Normalization LungInflation
                annotation (Placement(transformation(extent={{16,6},{36,26}})));
                Physiolibrary.Blocks.Factors.Normalization FunctionEffect
                annotation (Placement(transformation(extent={{16,16},{36,36}})));
                Modelica.Blocks.Math.Max max
                annotation (Placement(transformation(extent={{36,-38},{56,-18}})));
                Modelica.Blocks.Math.Feedback tidalVol0 annotation (Placement(transformation(
                  extent={{-10,-10},{10,10}},
                  rotation=270,
                  origin={26,-2})));
                Physiolibrary.Types.Constants.VolumeConst Breathing_TidalVolumeMin(k=0)
                "Breathing.TidalVolumeMin"
                annotation (Placement(transformation(extent={{4,-42},{20,-26}})));
                Physiolibrary.Types.Constants.VolumeConst Breathing_DeadSpaceMin(k=
                DeadSpaceMin) "Breathing.DeadSpaceMin"
                annotation (Placement(transformation(extent={{-88,-102},{-58,-72}})));
                Physiolibrary.Types.Constants.FractionConst             deadSpaceSlope(k=
                DeadSpaceSlope)
                annotation (Placement(transformation(extent={{-82,-80},{-58,-56}})));
                Modelica.Blocks.Math.Product product
                annotation (Placement(transformation(extent={{-30,-72},{-10,-52}})));
                Modelica.Blocks.Math.Add add
                annotation (Placement(transformation(extent={{2,-86},{22,-66}})));
            equation
                //  u=RespiratoryCenterOutput_MotorNerveActivity; //curve x value
                /*
                TidalVolumeBasic  =
                curve.val
                * Thorax_LungInflation
                * RespiratoryMuscleFunctionEffect;   //val.. curve y value

                TidalVolume  = max(0, TidalVolumeBasic - ExcessLungWater_Volume);
                DeadSpace  =  DeadSpaceSlope * TidalVolume + DeadSpaceMin; */
                connect(RespiratoryCenterOutput_MotorNerveActivity, curve.u) annotation (Line(
                points={{-68,60},{-16,60},{-16,42},{-2,42}},
                color={0,0,127},
                smooth=Smooth.None));
                connect(RespiratoryMuscleFunctionEffect, FunctionEffect.u) annotation (Line(
                points={{-68,26},{18,26}},
                color={0,0,127},
                smooth=Smooth.None));
                connect(Thorax_LungInflation, LungInflation.u) annotation (Line(
                points={{-68,-2},{-32,-2},{-32,16},{18,16}},
                color={0,0,127},
                smooth=Smooth.None));
                connect(curve.val, FunctionEffect.yBase) annotation (Line(
                points={{18,42},{26,42},{26,28}},
                color={0,0,127},
                smooth=Smooth.None));
                connect(FunctionEffect.y, LungInflation.yBase) annotation (Line(
                points={{26,22},{26,18}},
                color={0,0,127},
                smooth=Smooth.None));
                connect(LungInflation.y, tidalVol0.u1) annotation (Line(
                points={{26,12},{26,6}},
                color={0,0,127},
                smooth=Smooth.None));
                connect(ExcessLungWater_Volume, tidalVol0.u2) annotation (Line(
                points={{-68,-38},{-16,-38},{-16,-2},{18,-2}},
                color={0,0,127},
                smooth=Smooth.None));
                connect(tidalVol0.y, max.u1) annotation (Line(
                points={{26,-11},{26,-22},{34,-22}},
                color={0,0,127},
                smooth=Smooth.None));
                connect(Breathing_TidalVolumeMin.y, max.u2)
                                              annotation (Line(
                points={{22,-34},{34,-34}},
                color={0,0,127},
                smooth=Smooth.None));
                connect(add.y, DeadSpace) annotation (Line(
                points={{23,-76},{34,-76}},
                color={0,0,127},
                smooth=Smooth.None));
                connect(deadSpaceSlope.y, product.u2) annotation (Line(
                points={{-55,-68},{-32,-68}},
                color={0,0,127},
                smooth=Smooth.None));
                connect(product.y, add.u1) annotation (Line(
                points={{-9,-62},{-6,-62},{-6,-70},{0,-70}},
                color={0,0,127},
                smooth=Smooth.None));
                connect(Breathing_DeadSpaceMin.y, add.u2)
                                               annotation (Line(
                points={{-54.25,-87},{-28,-87},{-28,-82},{0,-82}},
                color={0,0,127},
                smooth=Smooth.None));
                connect(product.u1, TidalVolume) annotation (Line(
                points={{-32,-56},{-42,-56},{-42,-46},{68,-46},{68,-28},{72,-28}},
                color={0,0,127},
                smooth=Smooth.None));
                connect(max.y, TidalVolume) annotation (Line(
                points={{57,-28},{72,-28}},
                color={0,0,127},
                smooth=Smooth.None));
                annotation (Icon(coordinateSystem(preserveAspectRatio=true, extent={{-100,
                      -100},{100,100}}), graphics={Text(
                    extent={{-120,-108},{130,-126}},
                    lineColor={0,0,255},
                    textString="%name")}));
            end NaturalVentilation2;
