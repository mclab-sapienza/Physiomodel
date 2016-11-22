within Physiomodel.Electrolytes.Sodium.test;
model T
    import QHP = Physiomodel;
    Sodium2 sodium2_1
    annotation (Placement(transformation(extent={{-32,30},{-12,50}})));
    QHP.Electrolytes.old.setup.ElectrolytesConstInputs
    electrolytesConstInputs
    annotation (Placement(transformation(extent={{14,48},{34,68}})));
    QHP.Electrolytes.Sodium.setup.ConstInputsFromOtherElectrolytes
    constInputsFromOtherElectrolytes
    annotation (Placement(transformation(extent={{14,12},{34,32}})));
equation
    connect(sodium2_1.busConnector, electrolytesConstInputs.busConnector)
    annotation (Line(
      points={{-14,48},{4.05,48},{4.05,58},{22,58}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None));
    connect(sodium2_1.busConnector, constInputsFromOtherElectrolytes.busConnector)
    annotation (Line(
      points={{-14,48},{5.05,48},{5.05,22},{22,22}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None));
end T;