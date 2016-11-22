within Physiomodel.Electrolytes.Calcium.test;
model T
  Calcium calcium
    annotation (Placement(transformation(extent={{10,-14},{30,6}})));
  setup.CaInputs caInputs
    annotation (Placement(transformation(extent={{-54,-12},{-34,8}})));
equation
  connect(caInputs.busConnector, calcium.busConnector) annotation (Line(
      points={{-51.8,6.8},{-19.9,6.8},{-19.9,3.8},{11.2,3.8}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None));
end T;