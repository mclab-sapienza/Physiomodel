within Physiomodel.Electrolytes.Potassium.test;
model T
    import QHP = Physiomodel;
    Physiomodel.Electrolytes.Potassium.Potassium potassium2_1
    annotation (Placement(transformation(extent={{-40,22},{-20,42}})));
    QHP.Electrolytes.old.setup.ElectrolytesConstInputs2FromFile
    electrolytesConstInputs
    annotation (Placement(transformation(extent={{2,30},{22,50}})));
    QHP.Electrolytes.Potassium.setup.ConstInputsFromOtherElectrolytes
    constInputsFromOtherElectrolytes
    annotation (Placement(transformation(extent={{4,4},{24,24}})));
equation
    connect(potassium2_1.busConnector, electrolytesConstInputs.busConnector)
    annotation (Line(
      points={{-22,40},{10,40}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None));
    connect(potassium2_1.busConnector, constInputsFromOtherElectrolytes.busConnector)
    annotation (Line(
      points={{-22,40},{-6,40},{-6,14},{12,14}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None));
end T;