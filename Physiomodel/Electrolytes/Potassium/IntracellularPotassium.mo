within Physiomodel.Electrolytes.Potassium;
model IntracellularPotassium
    extends Physiolibrary.Icons.Cell;
    Physiolibrary.Types.BusConnector busConnector annotation (Placement(
    transformation(extent={{-86,58},{-74,70}}), iconTransformation(
      extent={{60,60},{100,100}})));
    CellsK_ liverCells(stateName="liver_CellK_Mass", initialSoluteMass=
      3769.74*0.0285)
    annotation (Placement(transformation(extent={{-40,40},{-20,60}})));
    CellsK_ skeletalMuscleCells(initialSoluteMass=3769.74*0.664, stateName=
      "muscle_CellK_Mass")
    annotation (Placement(transformation(extent={{62,26},{82,46}})));
    CellsK_ otherCells(initialSoluteMass=3769.74*0.3075, stateName=
      "other_CellK_Mass")
    annotation (Placement(transformation(extent={{78,-16},{98,4}})));
    Physiolibrary.Types.Constants.ElectricCurrentConst
    electrolytesFlowConstant1(k=0)
    annotation (Placement(transformation(extent={{50,-30},{60,-20}})));
    Physiolibrary.Chemical.Sensors.MolarFlowMeasure flowMeasure annotation (
    Placement(transformation(
    extent={{-8,8},{8,-8}},
    rotation=90,
    origin={-52,-78})));
    Physiolibrary.Chemical.Interfaces.ChemicalPort_a q_in
    "sodium concentration in blood incomming to glomerulus capillaries; sodium mass flow is filtration - reabsorbtion"
    annotation (Placement(transformation(extent={{-62,-96},{-44,-78}}),
    iconTransformation(extent={{-10,-10},{10,10}})));
    Modelica.Blocks.Math.Add add
    annotation (Placement(transformation(extent={{4,-28},{24,-8}})));
    Modelica.Blocks.Math.Add add1
    annotation (Placement(transformation(extent={{-38,2},{-18,22}})));
    Modelica.Blocks.Math.Feedback feedback
    annotation (Placement(transformation(extent={{48,-12},{68,8}})));
    Modelica.Blocks.Math.Add add2
    annotation (Placement(transformation(extent={{22,18},{42,38}})));
    Modelica.Blocks.Math.Add3 KCell_MASS
    annotation (Placement(transformation(extent={{-4,-74},{16,-54}})));
    Modelica.Blocks.Math.Division mean_KCell_conc
    annotation (Placement(transformation(extent={{56,-66},{76,-46}})));
    Modelica.Blocks.Math.Gain gain(k=1000, y(displayUnit="mEq/l"))
    annotation (Placement(transformation(extent={{86,-68},{96,-58}})));
equation
        connect(busConnector.liver_GlucoseToCellStorageFlow, liverCells.additionalInflow)
        annotation (Line(
        points={{-80,64},{-80,44.6},{-38,44.6}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
        connect(busConnector, liverCells.busConnector) annotation (Line(
        points={{-80,64},{90,64},{90,58},{-22,58}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None));
        connect(busConnector.liver_CellH2OVol, liverCells.CellH2O_Vol)
        annotation (Line(
        points={{-80,64},{-80,53.8},{-38,53.8}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
        connect(busConnector, skeletalMuscleCells.busConnector) annotation (
        Line(
        points={{-80,64},{90,64},{90,44},{80,44}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None));
        connect(busConnector, otherCells.busConnector) annotation (Line(
        points={{-80,64},{90,64},{90,2},{96,2}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None));
        connect(electrolytesFlowConstant1.y, otherCells.additionalInflow)
        annotation (Line(
        points={{61.25,-25},{72.25,-25},{72.25,-11.4},{80,-11.4}},
        color={0,0,127},
        smooth=Smooth.None));
        connect(flowMeasure.molarFlowRate, busConnector.PotassiumToCells)
        annotation (Line(
        points={{-56.8,-78},{99,-78},{99,64},{-80,64}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{3,1},{3,1}}));
        connect(flowMeasure.q_in,q_in)  annotation (Line(
        points={{-52,-86},{-53,-86},{-53,-87}},
        color={200,0,0},
        thickness=1,
        smooth=Smooth.None));
        connect(flowMeasure.q_out, liverCells.q_in) annotation (Line(
        points={{-52,-70},{-52,24},{-30,24},{-30,50}},
        color={200,0,0},
        thickness=1,
        smooth=Smooth.None));
        connect(flowMeasure.q_out, skeletalMuscleCells.q_in) annotation (Line(
        points={{-52,-70},{-52,24},{72,24},{72,36}},
        color={200,0,0},
        thickness=1,
        smooth=Smooth.None));
        connect(otherCells.q_in, flowMeasure.q_out) annotation (Line(
        points={{88,-6},{-52,-6},{-52,-70}},
        color={200,0,0},
        thickness=1,
        smooth=Smooth.None));
        connect(add1.y, skeletalMuscleCells.CellH2O_Vol) annotation (Line(
        points={{-17,12},{-12,12},{-12,39.8},{64,39.8}},
        color={0,0,127},
        smooth=Smooth.None));
        connect(busConnector.skeletalMuscle_CellH2OVol, add1.u1) annotation (Line(
        points={{-80,64},{-80,18},{-40,18}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
        connect(busConnector.respiratoryMuscle_CellH2OVol, add1.u2) annotation (Line(
        points={{-80,64},{-80,6},{-40,6}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
        connect(busConnector.liver_CellH2OVol, add.u1) annotation (Line(
        points={{-80,64},{-80,-2},{2,-2},{2,-12}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
        connect(add1.y, add.u2) annotation (Line(
        points={{-17,12},{-10,12},{-10,-24},{2,-24}},
        color={0,0,127},
        smooth=Smooth.None));
        connect(add.y, feedback.u2) annotation (Line(
        points={{25,-18},{26,-18},{26,-12},{58,-12},{58,-10}},
        color={0,0,127},
        smooth=Smooth.None));
        connect(busConnector.CellH2O_Vol, feedback.u1) annotation (Line(
        points={{-80,64},{-80,-2},{50,-2}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
        connect(feedback.y, otherCells.CellH2O_Vol) annotation (Line(
        points={{67,-2},{75.5,-2},{75.5,-2.2},{80,-2.2}},
        color={0,0,127},
        smooth=Smooth.None));
        connect(add2.y, skeletalMuscleCells.additionalInflow) annotation (Line(
        points={{43,28},{54,28},{54,30.6},{64,30.6}},
        color={0,0,127},
        smooth=Smooth.None));
        connect(busConnector.skeletalMuscle_GlucoseToCellStorageFlow, add2.u1)
        annotation (Line(
        points={{-80,64},{-6,64},{-6,34},{20,34}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
        connect(busConnector.respiratoryMuscle_GlucoseToCellStorageFlow, add2.u2)
        annotation (Line(
        points={{-80,64},{-6,64},{-6,22},{20,22}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
        connect(liverCells.KCell_Mass, KCell_MASS.u1) annotation (Line(
        points={{-22,52.8},{-14,52.8},{-14,-56},{-6,-56}},
        color={0,0,127},
        smooth=Smooth.None));
        connect(skeletalMuscleCells.KCell_Mass, KCell_MASS.u2) annotation (Line(
        points={{80,38.8},{-48,38.8},{-48,-64},{-6,-64}},
        color={0,0,127},
        smooth=Smooth.None));
        connect(otherCells.KCell_Mass, KCell_MASS.u3) annotation (Line(
        points={{96,-3.2},{46,-3.2},{46,-72},{-6,-72}},
        color={0,0,127},
        smooth=Smooth.None));
        connect(KCell_MASS.y, busConnector.KCell_Mass) annotation (Line(
        points={{17,-64},{30,-64},{30,78},{-80,78},{-80,64}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
        connect(KCell_MASS.y, mean_KCell_conc.u1) annotation (Line(
        points={{17,-64},{36,-64},{36,-50},{54,-50}},
        color={0,0,127},
        smooth=Smooth.None));
        connect(busConnector.CellH2O_Vol, mean_KCell_conc.u2) annotation (Line(
        points={{-80,64},{-78,64},{-78,-70},{54,-70},{54,-62}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
        connect(mean_KCell_conc.y, gain.u) annotation (Line(
        points={{77,-56},{82,-56},{82,-63},{85,-63}},
        color={0,0,127},
        smooth=Smooth.None));
        connect(gain.y, busConnector.KCell_conc_per_liter) annotation (Line(
        points={{96.5,-63},{106,-63},{106,64},{-80,64}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
end IntracellularPotassium;