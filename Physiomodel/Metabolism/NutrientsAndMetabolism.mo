within Physiomodel.Metabolism;
model NutrientsAndMetabolism
    import QHP = Physiomodel;
    extends Physiolibrary.Icons.NutrientsMetabolism;
    Physiomodel.Metabolism.TissueMetabolism.Metabolism
                                     tissuesMetabolism
    annotation (Placement(transformation(extent={{90,-6},{50,34}})));
                                                      //(glucose(conc(start=1.05)))
    Physiolibrary.Types.BusConnector busConnector annotation (Placement(
    transformation(extent={{60,60},{100,100}}), iconTransformation(extent=
     {{60,60},{100,100}})));
    Physiomodel.Metabolism.LiverMetabolism liverMetabolism
    annotation (Placement(transformation(extent={{-66,-12},{-26,28}})));
    Physiomodel.Metabolism.Glucose Glucose
    annotation (Placement(transformation(extent={{0,-4},{20,16}})));
    Physiomodel.Metabolism.KetoAcids KetoAcids
    annotation (Placement(transformation(extent={{0,24},{20,44}})));
    QHP.Metabolism.GILumenLeptinDriven GILumen
    annotation (Placement(transformation(extent={{46,-80},{72,-54}})));
    QHP.Metabolism.Urea Urea
    annotation (Placement(transformation(extent={{-74,-52},{-54,-32}})));
    QHP.Metabolism.Lipids Lipids
    annotation (Placement(transformation(extent={{0,54},{20,74}})));
    Lactate lactate
    annotation (Placement(transformation(extent={{2,-30},{22,-10}})));
    Physiomodel.Metabolism.AminoAcids aminoAcids
    annotation (Placement(transformation(extent={{2,-58},{22,-38}})));
    QHP.Hormones.Glucagon glucagon
    annotation (Placement(transformation(extent={{-58,78},{-38,98}})));
    QHP.Hormones.Insulin insulin
    annotation (Placement(transformation(extent={{-88,78},{-68,98}})));
    QHP.Hormones.Thyrotropin thyrotropin
    annotation (Placement(transformation(extent={{-92,54},{-72,74}})));
    QHP.Hormones.Thyroxine thyroxine
    annotation (Placement(transformation(extent={{-58,54},{-38,74}})));
    QHP.Hormones.Leptin leptin
    annotation (Placement(transformation(extent={{-92,28},{-72,48}})));
    Physiolibrary.Chemical.Sensors.MolarFlowMeasure molarFlowMeasure
    annotation (Placement(transformation(extent={{24,0},{44,20}})));
    Physiolibrary.Chemical.Sensors.MolarFlowMeasure molarFlowMeasure1
    annotation (Placement(transformation(
    extent={{-10,10},{10,-10}},
    rotation=90,
    origin={90,-30})));
    Modelica.Blocks.Math.Add add
    annotation (Placement(transformation(extent={{48,-40},{56,-32}})));
equation

        connect(tissuesMetabolism.busConnector, busConnector) annotation (Line(
          points={{86.4,28.5455},{96,28.5455},{96,80},{80,80}},
          color={0,0,255},
          thickness=0.5,
          smooth=Smooth.None));
        connect(liverMetabolism.busConnector, busConnector)  annotation (Line(
          points={{-65.6,8},{-86,8},{-86,-92},{96,-92},{96,80},{80,80}},
          color={0,0,255},
          thickness=0.5,
          smooth=Smooth.None));
        connect(busConnector, Glucose.busConnector)     annotation (Line(
          points={{80,80},{-4,80},{-4,5.8},{1,5.8}},
          color={0,0,255},
          thickness=0.5,
          smooth=Smooth.None));
        connect(KetoAcids.q_out, tissuesMetabolism.ketoAcids) annotation (Line(
          points={{10,28},{28,28},{28,17.6364},{50,17.6364}},
          color={200,0,0},
          thickness=1,
          smooth=Smooth.None));
        connect(liverMetabolism.Glucose, Glucose.q_out) annotation (Line(
          points={{-26,-4},{-8,-4},{-8,12},{10,12}},
          color={200,0,0},
          thickness=1,
          smooth=Smooth.None));
        connect(busConnector, GILumen.busConnector) annotation (Line(
          points={{80,80},{96,80},{96,-92},{42,-92},{42,-58.16},{50.16,-58.16}},
          color={0,0,255},
          thickness=0.5,
          smooth=Smooth.None));

        connect(KetoAcids.q_out, liverMetabolism.Ketoacids) annotation (Line(
          points={{10,28},{-10,28},{-10,8},{-26,8}},
          color={200,0,0},
          thickness=1,
          smooth=Smooth.None));
        connect(Urea.ureaFromMetabolism, liverMetabolism.Urea) annotation (Line(
          points={{-58,-32},{-58,-12}},
          color={200,0,0},
          thickness=1,
          smooth=Smooth.None));
        connect(Urea.busConnector, busConnector) annotation (Line(
          points={{-72,-38},{-86,-38},{-86,-92},{96,-92},{96,80},{80,80}},
          color={0,0,255},
          thickness=0.5,
          smooth=Smooth.None));
        connect(KetoAcids.busConnector, busConnector) annotation (Line(
          points={{1,44},{-4,44},{-4,80},{80,80}},
          color={0,0,255},
          thickness=0.5,
          smooth=Smooth.None));
        connect(busConnector, Lipids.busConnector) annotation (Line(
          points={{80,80},{-4,80},{-4,60.2},{2,60.2}},
          color={0,0,255},
          thickness=0.5,
          smooth=Smooth.None));
        connect(Lipids.FattyAcids, tissuesMetabolism.fattyAcids) annotation (Line(
          points={{10,64},{40,64},{40,26.7273},{50,26.7273}},
          color={200,0,0},
          thickness=1,
          smooth=Smooth.None));
        connect(lactate.busConnector, busConnector) annotation (Line(
          points={{4,-26},{-4,-26},{-4,80},{80,80}},
          color={0,0,255},
          thickness=0.5,
          smooth=Smooth.None));
        connect(lactate.Lactate, tissuesMetabolism.lactate) annotation (Line(
          points={{12,-20},{40,-20},{40,1.27273},{50,1.27273}},
          color={200,0,0},
          thickness=1,
          smooth=Smooth.None));
        connect(aminoAcids.busConnector, busConnector) annotation (Line(
          points={{2.8,-48},{-4,-48},{-4,80},{80,80}},
          color={0,0,255},
          thickness=0.5,
          smooth=Smooth.None));
        connect(GILumen.Protein_Absorption, aminoAcids.AminoAcids) annotation (
          Line(
          points={{72,-59.2},{74,-59.2},{74,-48},{34,-48},{34,-56},{11.2,-56}},
          color={200,0,0},
          thickness=1,
          smooth=Smooth.None));
        connect(aminoAcids.AminoAcids, liverMetabolism.AminoAcids) annotation (
          Line(
          points={{11.2,-56},{-34,-56},{-34,-12}},
          color={200,0,0},
          thickness=1,
          smooth=Smooth.None));
        connect(Lipids.toTriglicerides, GILumen.Fat_Absorption) annotation (Line(
          points={{10,56},{78,56},{78,-67},{72,-67}},
          color={200,0,0},
          thickness=1,
          smooth=Smooth.None));
        connect(Lipids.toTriglicerides, liverMetabolism.triglicerides)
        annotation (Line(
          points={{10,56},{-14,56},{-14,20},{-26,20}},
          color={200,0,0},
          thickness=1,
          smooth=Smooth.None));
        connect(Lipids.FattyAcids, liverMetabolism.fattyAcids) annotation (Line(
          points={{10,64},{-20,64},{-20,28},{-26,28}},
          color={200,0,0},
          thickness=1,
          smooth=Smooth.None));
        connect(insulin.Insulin,glucagon. Insulin) annotation (Line(
          points={{-68,88},{-62,88},{-62,94},{-56,94}},
          color={0,0,127},
          smooth=Smooth.None));
        connect(busConnector,glucagon. busConnector) annotation (Line(
          points={{80,80},{-56,80},{-56,82}},
          color={0,0,255},
          thickness=0.5,
          smooth=Smooth.None));
        connect(busConnector,insulin. busConnector) annotation (Line(
          points={{80,80},{-86,80},{-86,82}},
          color={0,0,255},
          thickness=0.5,
          smooth=Smooth.None));
        connect(busConnector,thyroxine. busConnector) annotation (Line(
          points={{80,80},{-56,80},{-56,72}},
          color={0,0,255},
          thickness=0.5,
          smooth=Smooth.None));
        connect(busConnector,thyrotropin. busConnector) annotation (Line(
          points={{80,80},{-98,80},{-98,58},{-90,58}},
          color={0,0,255},
          thickness=0.5,
          smooth=Smooth.None));
        connect(thyrotropin.TSH,thyroxine. TSH) annotation (Line(
          points={{-72,64},{-66,64},{-66,66},{-56,66}},
          color={0,0,127},
          smooth=Smooth.None));
        connect(thyroxine.Thyroxine,thyrotropin. Thyroxine) annotation (Line(
          points={{-38,64},{-34,64},{-34,78},{-94,78},{-94,72},{-90,72}},
          color={0,0,127},
          smooth=Smooth.None));
        connect(busConnector,leptin. busConnector) annotation (Line(
          points={{80,80},{-98,80},{-98,32},{-90,32}},
          color={0,0,255},
          thickness=0.5,
          smooth=Smooth.None));
        connect(molarFlowMeasure.q_in, Glucose.q_out) annotation (Line(
        points={{24,10},{18,10},{18,12},{10,12}},
        color={107,45,134},
        thickness=1,
        smooth=Smooth.None));
        connect(molarFlowMeasure.q_out, tissuesMetabolism.glucose) annotation (Line(
        points={{44,10},{48,10},{48,10.3636},{50,10.3636}},
        color={107,45,134},
        thickness=1,
        smooth=Smooth.None));
        connect(tissuesMetabolism.GILumenCarbohydrates, molarFlowMeasure1.q_out)
        annotation (Line(
        points={{82,-6},{82,-6},{90,-6},{90,-6},{90,-6},{90,-20},{90,-20}},
        color={107,45,134},
        thickness=1,
        smooth=Smooth.None));
        connect(GILumen.Carbohydrates_Absorption, molarFlowMeasure1.q_in)
        annotation (Line(
        points={{72,-74.8},{90,-74.8},{90,-40}},
        color={107,45,134},
        thickness=1,
        smooth=Smooth.None));
        connect(molarFlowMeasure.molarFlowRate, add.u2) annotation (Line(
        points={{34,2},{34,-38.4},{47.2,-38.4}},
        color={0,0,127},
        smooth=Smooth.None));
        connect(molarFlowMeasure1.molarFlowRate, add.u1) annotation (Line(
        points={{82,-30},{42,-30},{42,-33.6},{47.2,-33.6}},
        color={0,0,127},
        smooth=Smooth.None));
        connect(add.y, busConnector.Glucose_TotalBurn) annotation (Line(
        points={{56.4,-36},{98,-36},{98,80},{80,80}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
        annotation ( Icon(coordinateSystem(
              preserveAspectRatio=true,  extent={{-100,-100},{100,100}}),
            graphics={                 Text(
              extent={{-180,-96},{190,-128}},
              lineColor={0,0,255},
              textString="%name")}));
end NutrientsAndMetabolism;