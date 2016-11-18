within Physiomodel.Metabolism.TissueMetabolism;
        model HeartMuscle
            extends Physiomodel.Metabolism.TissueMetabolism.TissueMetabolism(
                TotalCaloriesUse(nin=3));

            parameter Physiolibrary.Types.Power MotionCals( displayUnit="cal/min");
            parameter Physiolibrary.Types.Power HeatCals( displayUnit="cal/min");
            Physiolibrary.Types.Constants.HeatFlowRateConst motionCals(k=MotionCals)
            annotation (Placement(transformation(extent={{-42,60},{-30,72}})));
            Physiolibrary.Types.Constants.HeatFlowRateConst heatCals(k=HeatCals)
            annotation (Placement(transformation(extent={{-44,38},{-32,50}})));
        equation

            connect(motionCals.y, TotalCaloriesUse.u[2]) annotation (Line(
            points={{-28.5,66},{-8,66},{-8,56},{71,56},{71,50.8}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(heatCals.y, TotalCaloriesUse.u[3]) annotation (Line(
            points={{-30.5,44},{-4,44},{-4,50.8},{71,50.8}},
            color={0,0,127},
            smooth=Smooth.None));
        end HeartMuscle;