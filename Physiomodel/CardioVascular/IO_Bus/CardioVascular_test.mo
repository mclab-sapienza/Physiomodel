within Physiomodel.CardioVascular.IO_Bus;
model CardioVascular_test
    import Physiomodel;
    Physiomodel.CardioVascular.CardioVascularSystem cardioVascularSystem
    annotation (Placement(transformation(extent={{40,72},{60,94}})));
    Physiomodel.Metabolism.IO_Bus.InputFromFile
                                            nutrientsAndMetabolism
      annotation (Placement(transformation(extent={{-88,60},{-68,80}})));
    Physiomodel.Electrolytes.IO_Bus.InputFromFile electrolytes
      annotation (Placement(transformation(extent={{74,-34},{94,-14}})));
    Physiomodel.Hormones.IO_Bus.InputFromFile hormones
      annotation (Placement(transformation(extent={{40,6},{60,26}})));
    Physiomodel.Nerves.IO_Bus.InputFromFile nerves
      annotation (Placement(transformation(extent={{74,38},{94,58}})));
    Physiomodel.Setup.IO_Bus.InputFromFile     setup
      annotation (Placement(transformation(extent={{-14,-96},{6,-76}})));
    Physiomodel.Water.IO_Bus.InputFromFile water
      annotation (Placement(transformation(extent={{-86,-6},{-66,14}})));
    Physiomodel.Proteins.IO_Bus.InputFromFile proteins
      annotation (Placement(transformation(extent={{-48,-30},{-28,-10}})));
    Physiomodel.Status.IO_Bus.InputFromFile status
      annotation (Placement(transformation(extent={{42,-80},{62,-60}})));
    Physiomodel.Gases.IO_Bus.InputFromFile gases
      annotation (Placement(transformation(extent={{-76,-64},{-56,-44}})));
    Physiomodel.Heat.IO_Bus.InputFromFile heat
      annotation (Placement(transformation(extent={{-28,30},{-48,50}})));
    Physiomodel.CardioVascular.IO_Bus.OutputComparison
                                       cVS_dif
      annotation (Placement(transformation(extent={{76,72},{96,92}})));
    Physiomodel.CardioVascular.IO_Bus.OutputToFile
                                              cVS_varsToFile
    annotation (Placement(transformation(extent={{14,60},{34,80}})));
equation
    connect(setup.busConnector,hormones. busConnector) annotation (Line(
    points={{-4,-86},{-4,16},{50,16}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None));
    connect(setup.busConnector,proteins. busConnector) annotation (Line(
    points={{-4,-86},{-4,-20},{-38,-20}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None));
    connect(setup.busConnector,cardioVascularSystem. busConnector)
                                              annotation (Line(
    points={{-4,-86},{-4,91.8},{42,91.8}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None));
    connect(setup.busConnector,nutrientsAndMetabolism. busConnector)
    annotation (Line(
    points={{-4,-86},{-4,70},{-78,70}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None));
    connect(setup.busConnector,water. busConnector) annotation (Line(
    points={{-4,-86},{-4,4},{-76,4}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None));
    connect(setup.busConnector,nerves. busConnector) annotation (Line(
    points={{-4,-86},{-4,48},{84,48}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None));
    connect(status.busConnector,setup. busConnector)         annotation (Line(
    points={{52,-70},{-4,-70},{-4,-86}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None));
    connect(electrolytes.busConnector,setup. busConnector) annotation (Line(
    points={{84,-24},{-4,-24},{-4,-86}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None));
    connect(gases.busConnector,setup. busConnector) annotation (Line(
    points={{-66,-54},{-4,-54},{-4,-86}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None));
    connect(heat.busConnector,setup. busConnector) annotation (Line(
    points={{-38,40},{-4,40},{-4,-86}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None));
    connect(cardioVascularSystem.busConnector, cVS_dif.busConnector)
    annotation (Line(
    points={{42,91.8},{64,91.8},{64,82},{86,82}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None));
    connect(cardioVascularSystem.busConnector, cVS_varsToFile.busConnector)
    annotation (Line(
    points={{42,91.8},{24,91.8},{24,70}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None));
    annotation (        experiment(StopTime=3.1536e+007));
end CardioVascular_test;