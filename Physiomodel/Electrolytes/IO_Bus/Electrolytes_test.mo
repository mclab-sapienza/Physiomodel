within Physiomodel.Electrolytes.IO_Bus;

    model Electrolytes_test
        import Physiomodel;
        Physiomodel.CardioVascular.IO_Bus.InputFromFile cardioVascularSystem
        annotation (Placement(transformation(extent={{40,72},{60,94}})));
        Physiomodel.Metabolism.IO_Bus.InputFromFile nutrientsAndMetabolism
        annotation (Placement(transformation(extent={{-88,60},{-68,80}})));
        Physiomodel.Electrolytes.Electrolytes electrolytes
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
        Physiomodel.Heat.IO_Bus.InputFromFile heat
        annotation (Placement(transformation(extent={{-28,30},{-48,50}})));
        Physiomodel.Electrolytes.IO_Bus.OutputComparison electrolytes_dif
        annotation (Placement(transformation(extent={{48,-38},{68,-18}})));
        Physiomodel.Electrolytes.IO_Bus.OutputToFile electrolytes_varsToFile
        annotation (Placement(transformation(extent={{22,-34},{42,-14}})));
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
        points={{74,-20},{-6,-20},{-6,-96}},
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
        connect(electrolytes.busConnector, electrolytes_dif.busConnector)
        annotation (Line(
        points={{74,-20},{66,-20},{66,-28},{58,-28}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None));
        connect(electrolytes_varsToFile.busConnector, electrolytes.busConnector)
        annotation (Line(
        points={{32,-24},{44,-24},{44,-20},{74,-20}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None));
        annotation (        experiment(StopTime=86400));
    end Electrolytes_test;