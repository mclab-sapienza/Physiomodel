within Physiomodel.Electrolytes.Calcium.test;
model T2
  Calcitriol calcitriol
    annotation (Placement(transformation(extent={{-2,6},{18,26}})));
  setup.CalcitriolInputs calcitriolInputs
    annotation (Placement(transformation(extent={{-60,6},{-40,26}})));
equation
  connect(calcitriolInputs.busConnector, calcitriol.busConnector)
    annotation (Line(
      points={{-57.8,24.8},{-31.9,24.8},{-31.9,24.4},{-0.8,24.4}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None));
end T2;