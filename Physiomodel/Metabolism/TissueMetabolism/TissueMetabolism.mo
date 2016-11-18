within Physiomodel.Metabolism.TissueMetabolism;
model TissueMetabolism
    extends TissueMetabolismBase;

    Physiolibrary.Chemical.Interfaces.ChemicalPort_a fattyAcids
    annotation (
      Placement(transformation(extent={{-103,-80},{-83,-60}}),
        iconTransformation(extent={{90,-70},{110,-50}})));
    Physiomodel.Metabolism.CellularMetabolism
                       cellularMetabolism(LacFractionData={{10,0,0},{100,0.3,0}},
      PO2OnAerobicFractionData=PO2OnAerobicFractionData)
      annotation (Placement(transformation(extent={{60,-74},{90,-44}})));
    NutrientDelivery fattyAcidsDelivery
      annotation (Placement(transformation(extent={{-74,-80},{-54,-60}})));
    NutrientDelivery glucoseDelivery
      annotation (Placement(transformation(extent={{-70,-44},{-50,-24}})));
    Physiolibrary.Chemical.Sources.UnlimitedSolutionStorage unlimitedStorage(
      concentration=0)
    annotation (Placement(transformation(extent={{0,-78},{20,-58}})));
    Physiolibrary.Chemical.Sources.UnlimitedSolutionStorage unlimitedStorage1(
     concentration=0)
    annotation (Placement(transformation(extent={{64,-22},{84,-2}})));
equation
    connect(cellularMetabolism.Tissue_CO2FromMetabolism,
    Tissue_CO2FromMetabolism) annotation (Line(
    points={{89.1,-59},{96,-59},{96,-60}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(flowMeasure.q_in, cellularMetabolism.lactate) annotation (Line(
    points={{44,14},{56,14},{56,-44},{65.1,-44}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(TotalCaloriesUse.y, cellularMetabolism.CalsUse) annotation (
    Line(
    points={{71,41.6},{71,38},{96,38},{96,-36},{81,-36},{81,-44}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(fattyAcids, fattyAcidsDelivery.q_in) annotation (Line(
    points={{-93,-70},{-74,-70}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(PlasmaFlow1.y, fattyAcidsDelivery.solventFlow) annotation (Line(
    points={{-69.6,-1},{-64,-1},{-64,-64}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(PlasmaFlow1.y, glucoseDelivery.solventFlow) annotation (Line(
    points={{-69.6,-1},{-60,-1},{-60,-28}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(glucose, glucoseDelivery.q_in) annotation (Line(
    points={{-92,-34},{-70,-34}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(glucoseDelivery.q_out, glucose) annotation (Line(
    points={{-50,-34},{-40,-34},{-40,-22},{-92,-22},{-92,-34}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(fattyAcidsDelivery.q_out, fattyAcids) annotation (Line(
    points={{-54,-70},{-40,-70},{-40,-60},{-93,-60},{-93,-70}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(glucoseDelivery.FuelFractUseDelay, min.u[2]) annotation (Line(
    points={{-66,-41},{-66,-46},{-56,-46},{-56,0.4},{-52.8,0.4}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(glucoseDelivery.neededFlow, cellularMetabolism.glucose)
    annotation (Line(
    points={{-60,-39},{-60,-47},{60,-47}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(fattyAcidsDelivery.neededFlow, cellularMetabolism.fattyAcids)
    annotation (Line(
    points={{-64,-75},{-64,-90},{56,-90},{56,-59},{60,-59}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(fattyAcidsDelivery.FuelFractUseDelay, min.u[1]) annotation (
    Line(
    points={{-70,-77},{-70,-84},{-56,-84},{-56,-0.4},{-52.8,-0.4}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(unlimitedStorage.q_out, cellularMetabolism.glycogen)
    annotation (Line(
    points={{20,-68},{24,-68},{24,-53},{60,-53}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(pO2, cellularMetabolism.pO2) annotation (Line(
    points={{32,-66},{32,-65},{60.5999,-65}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(cellularMetabolism.O2Use, O2Use) annotation (Line(
    points={{66.6,-71.6},{66.6,-82.8},{64,-82.8},{64,-94}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(cellularMetabolism.ketoAcids, unlimitedStorage1.q_out)
    annotation (Line(
    points={{70.8,-44},{74,-44},{74,-12},{84,-12}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(cellularMetabolism.Tissue_MetabolicH2ORate, H2OFromMetabolism)
    annotation (Line(
    points={{77.1,-73.7},{77.1,-74.85},{84,-74.85},{84,-80}},
    color={0,0,127},
    smooth=Smooth.None));
end TissueMetabolism;