within Physiomodel.Metabolism.TissueMetabolism;
        model RightHeartMuscle
            extends HeartMuscle;
            extends Physiolibrary.Icons.RightHeart;
            Modelica.Blocks.Interfaces.RealOutput MotionCals_(
                                                   displayUnit="cal/min")
                                                              annotation (
            Placement(transformation(extent={{-2,60},{10,72}}),
              iconTransformation(
              extent={{-10,-10},{10,10}},
              rotation=270,
              origin={90,-100})));
        equation
            connect(motionCals.y, MotionCals_) annotation (Line(
            points={{-28.5,66},{4,66}},
            color={0,0,127},
            smooth=Smooth.None));
        end RightHeartMuscle;