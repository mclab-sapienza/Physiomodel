within Physiomodel.Electrolytes.Chloride.test;
model T_
    import QHP = Physiomodel;
    QHP.Electrolytes.Chloride.setup.Chloride chloride2_1
      annotation (Placement(transformation(extent={{-58,8},{-38,28}})));
    QHP.Electrolytes.old.setup.ElectrolytesConstInputs2FromFile
      electrolytesConstInputs
      annotation (Placement(transformation(extent={{-10,12},{10,32}})));
      QHP.Electrolytes.Chloride.setup.ConstInputsFromOtherElectrolytes
        constInputsFromOtherElectrolytes
        annotation (Placement(transformation(extent={{-12,-10},{8,10}})));
equation
  connect(chloride2_1.busConnector, electrolytesConstInputs.busConnector)
    annotation (Line(
      points={{-39.9,26.1},{-20.95,26.1},{-20.95,22},{-2,22}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None));
  connect(chloride2_1.busConnector, constInputsFromOtherElectrolytes.busConnector)
    annotation (Line(
      points={{-39.9,26.1},{-20,26.1},{-20,0},{-4,0}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None));
end T_;