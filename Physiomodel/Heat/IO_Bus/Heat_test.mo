within Physiomodel.Heat.IO_Bus;
model Heat_test
    import Physiomodel;
    Physiomodel.CardioVascular.IO_Bus.InputFromFile cardioVascularSystem
    annotation (Placement(transformation(extent={{40,72},{60,94}})));
    Physiomodel.Metabolism.IO_Bus.InputFromFile nutrientsAndMetabolism
    annotation (Placement(transformation(extent={{-88,60},{-68,80}})));
    Physiomodel.Electrolytes.IO_Bus.InputFromFile electrolytes
    annotation (Placement(transformation(extent={{74,-34},{94,-14}})));
    Physiomodel.Hormones.IO_Bus.InputFromFile hormones
    annotation (Placement(transformation(extent={{40,6},{60,26}})));
    Physiomodel.Nerves.IO_Bus.InputFromFile nerves
    annotation (Placement(transformation(extent={{74,38},{94,58}})));
    Physiomodel.Setup.IO_Bus.InputFromFile     setup
    annotation (Placement(transformation(extent={{-16,-106},{4,-86}})));
    Physiomodel.Water.IO_Bus.InputFromFile water
    annotation (Placement(transformation(extent={{-86,-6},{-66,14}})));
    Physiomodel.Proteins.IO_Bus.InputFromFile proteins
    annotation (Placement(transformation(extent={{-48,-28},{-28,-8}})));
    Physiomodel.Status.IO_Bus.InputFromFile status
    annotation (Placement(transformation(extent={{42,-80},{62,-60}})));
    Physiomodel.Gases.IO_Bus.InputFromFile gases
    annotation (Placement(transformation(extent={{-76,-64},{-56,-44}})));
    Physiomodel.Heat.Heat2 heat
    annotation (Placement(transformation(extent={{-26,30},{-46,50}})));
    Physiomodel.Heat.IO_Bus.OutputComparison heat_dif
    annotation (Placement(transformation(extent={{-64,34},{-44,54}})));
    Physiolibrary.Types.BusConnector busConnector annotation (Placement(
    transformation(extent={{-34,50},{-14,70}}), iconTransformation(
      extent={{-104,86},{-84,106}})));
    Physiomodel.Heat.IO_Bus.OutputToFile heat_varsToFile
    annotation (Placement(transformation(extent={{-92,26},{-72,46}})));
equation
    connect(setup.busConnector,hormones. busConnector) annotation (Line(
    points={{-6,-96},{-6,16},{50,16}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None));
    connect(setup.busConnector,proteins. busConnector) annotation (Line(
    points={{-6,-96},{-6,-18},{-38,-18}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None));
    connect(setup.busConnector,cardioVascularSystem. busConnector)
                                          annotation (Line(
    points={{-6,-96},{-6,83},{50,83}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None));
    connect(setup.busConnector,nutrientsAndMetabolism. busConnector)
    annotation (Line(
    points={{-6,-96},{-6,70},{-78,70}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None));
    connect(setup.busConnector,water. busConnector) annotation (Line(
    points={{-6,-96},{-6,4},{-76,4}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None));
    connect(setup.busConnector,nerves. busConnector) annotation (Line(
    points={{-6,-96},{-6,48},{84,48}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None));
    connect(status.busConnector,setup. busConnector)         annotation (Line(
    points={{52,-70},{-6,-70},{-6,-96}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None));
    connect(electrolytes.busConnector,setup. busConnector) annotation (Line(
    points={{84,-24},{-6,-24},{-6,-96}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None));
    connect(gases.busConnector,setup. busConnector) annotation (Line(
    points={{-66,-54},{-6,-54},{-6,-96}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None));
    connect(heat.busConnector,setup. busConnector) annotation (Line(
    points={{-26.6,49.6},{-6,49.6},{-6,-96}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None));
    connect(heat_dif.busConnector, heat.busConnector) annotation (Line(
    points={{-54,44},{-42,44},{-42,49.6},{-26.6,49.6}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None));
    connect(heat.busConnector, busConnector) annotation (Line(
    points={{-26.6,49.6},{-26.6,55.8},{-24,55.8},{-24,60}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None));
    connect(busConnector, heat_varsToFile.busConnector) annotation (Line(
    points={{-24,60},{-65,60},{-65,36},{-82,36}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None));
end Heat_test;