within Physiomodel.Electrolytes.NH4.test;
model T
    Ammonium amonium2_1
    annotation (Placement(transformation(extent={{-32,16},{-12,36}})));
    old.setup.ElectrolytesConstInputs electrolytesConstInputs
    annotation (Placement(transformation(extent={{6,24},{26,44}})));
equation
    connect(electrolytesConstInputs.busConnector, amonium2_1.busConnector)
    annotation (Line(
    points={{14,34},{-13.9,34.1}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None));
end T;