within Physiomodel.Metabolism.TissueMetabolism;
        model NutrientDelivery2
            extends NutrientDelivery;
            Physiolibrary.Chemical.Interfaces.ChemicalPort_a q_in2 annotation (
            Placement(transformation(extent={{-102,-38},{-82,-18}}),
            iconTransformation(extent={{-110,-50},{-90,-30}})));
        equation
            connect(q_in2, flowMeasure.q_in) annotation (Line(
            points={{-92,-28},{-56,-28},{-56,0},{-44,0}},
            color={200,0,0},
            thickness=1,
            smooth=Smooth.None));
        end NutrientDelivery2;