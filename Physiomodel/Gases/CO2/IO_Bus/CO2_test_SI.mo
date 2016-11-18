within Physiomodel.Gases.CO2.IO_Bus;
model CO2_test_SI
    import Physiomodel;
    CardioVascular.IO_Bus.InputFromFile_SI             cardioVascularSystem
    annotation (Placement(transformation(extent={{42,78},{62,100}})));
    Metabolism.IO_Bus.InputFromFile_SI      nutrientsAndMetabolism
    annotation (Placement(transformation(extent={{-84,66},{-64,86}})));
    Electrolytes.IO_Bus.InputFromFile_SI             electrolytes
    annotation (Placement(transformation(extent={{76,-28},{96,-8}})));
    Hormones.IO_Bus.InputFromFile_SI             hormones
    annotation (Placement(transformation(extent={{42,12},{62,32}})));
    Nerves.IO_Bus.InputFromFile_SI             nerves
    annotation (Placement(transformation(extent={{76,44},{96,64}})));
    Setup.IO_Bus.InputFromFile_SI                 setup
    annotation (Placement(transformation(extent={{-14,-100},{6,-80}})));
    Water.IO_Bus.InputFromFile_SI             water
    annotation (Placement(transformation(extent={{-84,0},{-64,20}})));
    Proteins.IO_Bus.InputFromFile_SI             proteins
    annotation (Placement(transformation(extent={{-46,-22},{-26,-2}})));
    Status.IO_Bus.InputFromFile_SI             status
    annotation (Placement(transformation(extent={{44,-74},{64,-54}})));
    Heat.IO_Bus.InputFromFile_SI             heat
    annotation (Placement(transformation(extent={{-26,36},{-46,56}})));
    Physiomodel.Gases.Ventilation.IO_Bus.InputFromFile_SI ventilation_const
    annotation (Placement(transformation(extent={{-34,-70},{-14,-50}})));
    Physiomodel.Gases.O2.IO_Bus.InputFromFile O2
    annotation (Placement(transformation(extent={{-66,-94},{-46,-74}})));
    Physiomodel.Gases.CO2.CO2 cO2_1
    annotation (Placement(transformation(extent={{-90,-56},{-70,-36}})));
equation
    connect(setup.busConnector,hormones. busConnector) annotation (Line(
      points={{-4,-90},{-4,22},{52,22}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None));
    connect(setup.busConnector,proteins. busConnector) annotation (Line(
      points={{-4,-90},{-4,-12},{-36,-12}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None));
    connect(setup.busConnector,cardioVascularSystem. busConnector)
                                                annotation (Line(
      points={{-4,-90},{-4,89},{52,89}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None));
    connect(setup.busConnector,nutrientsAndMetabolism. busConnector)
    annotation (Line(
      points={{-4,-90},{-4,76},{-74,76}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None));
    connect(setup.busConnector,water. busConnector) annotation (Line(
      points={{-4,-90},{-4,10},{-74,10}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None));
    connect(setup.busConnector,nerves. busConnector) annotation (Line(
      points={{-4,-90},{-4,54},{86,54}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None));
    connect(status.busConnector,setup. busConnector)         annotation (Line(
      points={{54,-64},{-4,-64},{-4,-90}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None));
    connect(electrolytes.busConnector,setup. busConnector) annotation (Line(
      points={{86,-18},{-4,-18},{-4,-90}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None));
    connect(heat.busConnector,setup. busConnector) annotation (Line(
      points={{-36,46},{-4,46},{-4,-90}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None));
    connect(ventilation_const.busConnector,proteins. busConnector) annotation (
      Line(
      points={{-24,-60},{-38,-60},{-38,-12},{-36,-12}},
      color={255,204,51},
      thickness=0.5,
      smooth=Smooth.None));
    connect(proteins.busConnector, O2.busConnector) annotation (Line(
    points={{-36,-12},{-46,-12},{-46,-84},{-56,-84}},
    color={255,204,51},
    thickness=0.5,
    smooth=Smooth.None));
    connect(proteins.busConnector, cO2_1.busConnector) annotation (Line(
    points={{-36,-12},{-54,-12},{-54,-40},{-72,-40}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None));
end CO2_test_SI;