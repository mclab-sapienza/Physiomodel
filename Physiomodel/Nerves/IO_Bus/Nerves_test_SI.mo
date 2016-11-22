within Physiomodel.Nerves.IO_Bus;

model Nerves_test_SI
    import Physiomodel;
    Physiomodel.CardioVascular.IO_Bus.InputFromFile_SI cardioVascularSystem
    annotation (Placement(transformation(extent={{40,72},{60,94}})));
    Physiomodel.Metabolism.IO_Bus.InputFromFile_SI
                                        nutrientsAndMetabolism
    annotation (Placement(transformation(extent={{-88,60},{-68,80}})));
    Physiomodel.Electrolytes.IO_Bus.InputFromFile_SI electrolytes
    annotation (Placement(transformation(extent={{74,-34},{94,-14}})));
    Physiomodel.Hormones.IO_Bus.InputFromFile_SI hormones
    annotation (Placement(transformation(extent={{40,6},{60,26}})));
    Physiomodel.Nerves.Nerves nerves
    annotation (Placement(transformation(extent={{74,38},{94,58}})));
    Physiomodel.Setup.IO_Bus.InputFromFile_SI     setup
    annotation (Placement(transformation(extent={{-16,-106},{4,-86}})));
    Physiomodel.Water.IO_Bus.InputFromFile_SI water
    annotation (Placement(transformation(extent={{-86,-6},{-66,14}})));
    Physiomodel.Proteins.IO_Bus.InputFromFile_SI proteins
    annotation (Placement(transformation(extent={{-48,-28},{-28,-8}})));
    Physiomodel.Status.IO_Bus.InputFromFile_SI status
    annotation (Placement(transformation(extent={{42,-80},{62,-60}})));
    Physiomodel.Gases.IO_Bus.InputFromFile_SI gases
    annotation (Placement(transformation(extent={{-76,-64},{-56,-44}})));
    Physiomodel.Heat.IO_Bus.InputFromFile_SI heat
    annotation (Placement(transformation(extent={{-28,30},{-48,50}})));
    Physiomodel.Nerves.IO_Bus.OutputComparison_SI nerves_dif
    annotation (Placement(transformation(extent={{44,44},{64,64}})));
    Physiomodel.Nerves.IO_Bus.OutputToFile_SI nerves_varsToFile
    annotation (Placement(transformation(extent={{18,32},{38,52}})));
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
    points={{-6,-96},{-6,55.6},{76.2,55.6}},
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
    points={{-38,40},{-6,40},{-6,-96}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None));
    connect(nerves_dif.busConnector, nerves.busConnector) annotation (Line(
    points={{54,54},{64,54},{64,55.6},{76.2,55.6}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None));
    connect(nerves.busConnector, nerves_varsToFile.busConnector)
    annotation (Line(
    points={{76.2,55.6},{28,55.6},{28,42}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None));
end Nerves_test_SI;