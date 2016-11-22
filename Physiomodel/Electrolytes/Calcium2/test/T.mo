within Physiomodel.Electrolytes.Calcium2.test;
model T
  setup.CaInputs caInputs
    annotation (Placement(transformation(extent={{-56,-20},{-36,0}})));
  Ca ca
    annotation (Placement(transformation(extent={{-6,-22},{14,-2}})));
  Hormones.PTH PTH
    annotation (Placement(transformation(extent={{-22,22},{-2,42}})));
  Hormones.Calcitriol calcitriol
    annotation (Placement(transformation(extent={{-24,52},{-4,72}})));
equation
  connect(caInputs.busConnector, ca.busConnector) annotation (Line(
      points={{-53.8,-1.2},{-28.9,-1.2},{-28.9,-3.2},{-3.8,-3.2}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None));
  connect(caInputs.busConnector, PTH.busConnector) annotation (Line(
      points={{-53.8,-1.2},{-53.8,40.6},{-20.2,40.6}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None));
  connect(caInputs.busConnector, calcitriol.busConnector) annotation (
      Line(
      points={{-53.8,-1.2},{-53.8,70.4},{-21.6,70.4},{-21.6,70.2}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None));
end T;