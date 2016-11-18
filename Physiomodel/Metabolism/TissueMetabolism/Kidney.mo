within Physiomodel.Metabolism.TissueMetabolism;
        model Kidney
            extends Physiomodel.Metabolism.TissueMetabolism.TissueMetabolism(
            TotalCaloriesUse(nin=4));//, Lactate(stateName="Kidney-Lactate.Mass"));
            extends Physiolibrary.Icons.Kidney;

            Physiolibrary.Types.RealIO.MolarFlowRateInput PT_Na_Reab( displayUnit="mmol/min")
            annotation (Placement(transformation(extent={{-38,55},{-28,65}}),
              iconTransformation(extent={{-100,-70},{-80,-50}})));
            Physiolibrary.Types.RealIO.MolarFlowRateInput LH_Na_Reab( displayUnit="mmol/min")
            annotation (Placement(transformation(extent={{-38,47},{-28,57}}),
              iconTransformation(extent={{-100,110},{-80,130}})));
            Physiolibrary.Types.RealIO.MolarFlowRateInput DT_Na_Reab( displayUnit="mmol/min")
            annotation (Placement(transformation(extent={{-38,39},{-28,49}}),
              iconTransformation(extent={{-100,-50},{-80,-30}})));

            Modelica.Blocks.Math.Gain CalPerNa(k=3600*4.1864) "CalPerNa+(Meq/Min)"
            annotation (Placement(transformation(extent={{-19,58},{-15,62}})));
            Modelica.Blocks.Math.Gain CalPerNa1(k=3600*4.1864) "CalPerNa+(Meq/Min)"
            annotation (Placement(transformation(extent={{-19,42},{-15,46}})));
            Modelica.Blocks.Math.Gain CalPerNa2(k=3600*4.1864) "CalPerNa+(Meq/Min)"
            annotation (Placement(transformation(extent={{-19,50},{-15,54}})));
        equation
            connect(CalPerNa.y, TotalCaloriesUse.u[2]) annotation (Line(
            points={{-14.8,60},{71,60},{71,50.8}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(CalPerNa1.y, TotalCaloriesUse.u[3]) annotation (Line(
            points={{-14.8,44},{14,44},{14,60},{71,60},{71,50.8}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(CalPerNa2.y, TotalCaloriesUse.u[4]) annotation (Line(
            points={{-14.8,52},{15,52},{15,60},{71,60},{71,50.8}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(CalPerNa.u, PT_Na_Reab) annotation (Line(
            points={{-19.4,60},{-33,60}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(LH_Na_Reab, CalPerNa2.u) annotation (Line(
            points={{-33,52},{-19.4,52}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(DT_Na_Reab, CalPerNa1.u) annotation (Line(
            points={{-33,44},{-19.4,44}},
            color={0,0,127},
            smooth=Smooth.None));
        end Kidney;