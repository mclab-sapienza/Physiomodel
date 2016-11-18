within Physiomodel.Metabolism.TissueMetabolism;
        model LeftHeartMuscle
            extends HeartMuscle;
            extends Physiolibrary.Icons.LeftHeart;
            Modelica.Blocks.Interfaces.RealOutput MotionCals_(
                                               displayUnit="cal/min")
                                                          annotation (
            Placement(transformation(extent={{-6,60},{6,72}}),
            iconTransformation(
            extent={{-10,-10},{10,10}},
            rotation=270,
            origin={90,-100})));
        equation
            connect(motionCals.y, MotionCals_) annotation (Line(
            points={{-28.5,66},{0,66}},
            color={0,0,127},
            smooth=Smooth.None));
        end LeftHeartMuscle;