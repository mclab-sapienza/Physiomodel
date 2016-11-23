within Physiomodel.Setup;
model Setup
    extends Physiolibrary.Icons.Setup;
    Physiolibrary.Types.BusConnector busConnector annotation (Placement(
    transformation(extent={{54,-24},{74,-4}}), iconTransformation(extent=
      {{60,40},{100,80}})));
    Exercise exercise
    annotation (Placement(transformation(extent={{0,10},{20,30}})));
    Tissues tissuesSetup
    annotation (Placement(transformation(extent={{20,-58},{40,-38}})));
    Blood bloodInOut
    annotation (Placement(transformation(extent={{-24,-60},{-4,-40}})));
    Enviroment enviroment
    annotation (Placement(transformation(extent={{-36,14},{-16,34}})));
    Posture posture
    annotation (Placement(transformation(extent={{38,4},{58,24}})));
    Diet diet
    annotation (Placement(transformation(extent={{-76,14},{-56,34}})));
    Drugs drugs
    annotation (Placement(transformation(extent={{-68,-58},{-48,-38}})));
    Secretion secretion
    annotation (Placement(transformation(extent={{-50,42},{-30,62}})));
    Anesthesia anesthesia
    annotation (Placement(transformation(extent={{-16,42},{4,62}})));
    Unpaired unpaired
    annotation (Placement(transformation(extent={{58,-62},{78,-42}})));
equation
  connect(enviroment.busConnector, busConnector) annotation (Line(
      points={{-28,24},{-38,24},{-38,-14},{64,-14}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None));
  connect(exercise.busConnector, busConnector) annotation (Line(
      points={{8,20},{-2,20},{-2,-14},{64,-14}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None));
  connect(tissuesSetup.busConnector, busConnector) annotation (Line(
      points={{28,-48},{16,-48},{16,-14},{64,-14}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None));
  connect(bloodInOut.busConnector, busConnector) annotation (Line(
      points={{-16,-50},{-22,-50},{-22,-14},{64,-14}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None));
  connect(posture.busConnector, busConnector) annotation (Line(
      points={{46,14},{38,14},{38,-14},{64,-14}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None));
  connect(diet.busConnector, busConnector) annotation (Line(
      points={{-68,24},{-76,24},{-76,-14},{64,-14}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None));
  connect(drugs.busConnector, busConnector) annotation (Line(
      points={{-60,-48},{-66,-48},{-66,-14},{64,-14}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None));
  connect(secretion.busConnector, busConnector) annotation (Line(
      points={{-42,52},{-50,52},{-50,-14},{64,-14}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None));
  connect(anesthesia.busConnector, busConnector) annotation (Line(
      points={{-8,52},{-16,52},{-16,-14},{64,-14}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None));
  connect(unpaired.busConnector, busConnector) annotation (Line(
      points={{66,-52},{66,-33},{66,-14},{64,-14}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None));
  annotation (Icon(coordinateSystem(preserveAspectRatio=true,  extent={{-100,
            -100},{100,100}}), graphics={Text(
          extent={{-120,-42},{122,-76}},
          lineColor={0,0,255},
          textString="%name")}));
end Setup;