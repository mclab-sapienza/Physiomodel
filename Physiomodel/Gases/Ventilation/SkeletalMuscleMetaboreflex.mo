within Physiomodel.Gases.Ventilation;
            model SkeletalMuscleMetaboreflex
                extends Physiolibrary.Icons.SkeletalMuscleAcidity;
                Physiolibrary.Types.RealIO.pHInput skeletalMuscle_pH
                                                   annotation (Placement(transformation(
                    extent={{-120,-20},{-80,20}}), iconTransformation(extent={{-110,-10},
                      {-90,10}})));
                Physiolibrary.Blocks.Interpolation.Curve NerveActivity(
                x=PhOnNerveActivity[:, 1],
                y=PhOnNerveActivity[:, 2],
                slope=PhOnNerveActivity[:, 3])
                annotation (Placement(transformation(extent={{-10,-18},{26,18}})));
                Physiolibrary.Types.RealIO.FractionOutput NA
                annotation (Placement(transformation(extent={{80,-20},{120,20}})));
                parameter Real PhOnNerveActivity[:,3]={{ 6.5,  5.0,  0}, { 6.9,  0.0,  0}};
            equation
                connect(NerveActivity.val, NA)      annotation (Line(
                    points={{26,0},{100,0}},
                    color={0,0,127},
                    smooth=Smooth.None));
                connect(skeletalMuscle_pH, NerveActivity.u) annotation (Line(
                    points={{-100,0},{-10,0}},
                    color={0,0,127},
                    smooth=Smooth.None));
                annotation ( Icon(coordinateSystem(
                        preserveAspectRatio=true, extent={{-100,-100},{100,100}}),
                      graphics={
                      Text(
                        extent={{-128,-106},{120,-132}},
                        lineColor={0,0,255},
                        textString="%name")}));
            end SkeletalMuscleMetaboreflex;
