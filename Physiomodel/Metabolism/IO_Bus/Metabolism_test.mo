within Physiomodel.Metabolism.IO_Bus;

model Metabolism_test
    import Physiomodel;
    Physiomodel.CardioVascular.IO_Bus.InputFromFile cardioVascularSystem
    annotation (Placement(transformation(extent={{40,72},{60,94}})));
    Physiomodel.Metabolism.NutrientsAndMetabolism
                                            nutrientsAndMetabolism
    annotation (Placement(transformation(extent={{-88,60},{-68,80}})));
    Physiomodel.Electrolytes.IO_Bus.InputFromFile electrolytes
    annotation (Placement(transformation(extent={{74,-34},{94,-14}})));
    Physiomodel.Hormones.IO_Bus.InputFromFile hormones
    annotation (Placement(transformation(extent={{42,4},{62,24}})));
    Physiomodel.Nerves.IO_Bus.InputFromFile nerves
    annotation (Placement(transformation(extent={{74,38},{94,58}})));
    Physiomodel.Setup.IO_Bus.InputFromFile     setup
    annotation (Placement(transformation(extent={{-16,-106},{4,-86}})));
    Physiomodel.Water.IO_Bus.InputFromFile water
    annotation (Placement(transformation(extent={{-80,-4},{-60,16}})));
    Physiomodel.Proteins.IO_Bus.InputFromFile proteins
    annotation (Placement(transformation(extent={{-48,-28},{-28,-8}})));
    Physiomodel.Status.IO_Bus.InputFromFile status
    annotation (Placement(transformation(extent={{42,-80},{62,-60}})));
    Physiomodel.Gases.IO_Bus.InputFromFile gases
    annotation (Placement(transformation(extent={{-76,-64},{-56,-44}})));
    Physiomodel.Heat.IO_Bus.InputFromFile heat
    annotation (Placement(transformation(extent={{-44,30},{-64,50}})));
    Physiomodel.Metabolism.IO_Bus.OutputComparison metabolism_dif
    annotation (Placement(transformation(extent={{-52,58},{-32,78}})));
    Physiomodel.Metabolism.IO_Bus.OutputToFile metabolism_varsToFile
    annotation (Placement(transformation(extent={{-24,60},{-4,80}})));
equation
        connect(setup.busConnector,hormones. busConnector) annotation (Line(
        points={{-6,-96},{-6,14},{52,14}},
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
        points={{-6,-96},{-6,78},{-70,78}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None));
        connect(setup.busConnector,water. busConnector) annotation (Line(
        points={{-6,-96},{-6,6},{-70,6}},
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
        points={{-54,40},{-6,40},{-6,-96}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None));
        connect(metabolism_dif.busConnector, nutrientsAndMetabolism.busConnector)
        annotation (Line(
        points={{-42,68},{-56,68},{-56,78},{-70,78}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None));
        connect(metabolism_varsToFile.busConnector, nutrientsAndMetabolism.busConnector)
        annotation (Line(
        points={{-14,70},{-42,70},{-42,78},{-70,78}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None));
end Metabolism_test;