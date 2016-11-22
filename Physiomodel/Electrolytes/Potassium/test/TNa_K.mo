within Physiomodel.Electrolytes.Potassium.test;
model TNa_K
    import Physiomodel;
    Physiomodel.Electrolytes.Potassium.Potassium potassium2_1
    annotation (Placement(transformation(extent={{-30,32},{-10,52}})));
    Physiomodel.Electrolytes.old.setup.ElectrolytesConstInputs2FromFile
    electrolytesConstInputs
    annotation (Placement(transformation(extent={{12,40},{32,60}})));
    Physiomodel.Electrolytes.Sodium.Sodium sodium
    annotation (Placement(transformation(extent={{-32,-6},{-12,14}})));
    Physiomodel.Electrolytes.Phosphate.Phosphate2 phosphate2_1
    annotation (Placement(transformation(extent={{-70,46},{-50,66}})));
    Physiolibrary.Types.BusConnector busConnector annotation (Placement(
    transformation(extent={{-70,-32},{-52,-14}}), iconTransformation(
    extent={{-120,20},{-80,60}})));
    Modelica.Blocks.Math.Sum BloodCations(nin=2)
    annotation (Placement(transformation(extent={{-12,-66},{8,-46}})));
    Physiomodel.Electrolytes.Sulphate.Sulphate2 sulphate2_1
    annotation (Placement(transformation(extent={{-98,-8},{-78,12}})));
    Physiomodel.Electrolytes.Chloride.setup.Chloride chloride
    annotation (Placement(transformation(extent={{42,-18},{62,2}})));
    Modelica.Blocks.Math.Sum StrongAnionsLessCl(nin=4)
    annotation (Placement(transformation(extent={{-48,-100},{-28,-80}})));
equation
    connect(potassium2_1.busConnector,electrolytesConstInputs. busConnector)
    annotation (Line(
    points={{-12,50},{20,50}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None));
    connect(sodium.busConnector, electrolytesConstInputs.busConnector)
    annotation (Line(
    points={{-14,12},{4,12},{4,50},{20,50}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None));
    connect(phosphate2_1.busConnector, electrolytesConstInputs.busConnector)
    annotation (Line(
    points={{-52,64},{20,64},{20,50}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None));
    connect(busConnector.NaPool_conc_per_liter,BloodCations. u[1]) annotation (Line(
    points={{-61,-23},{-62,-56},{-14,-56},{-14,-57}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(busConnector.KPool_conc_per_liter,BloodCations. u[2]) annotation (Line(
    points={{-61,-23},{-62,-23},{-62,-54},{-14,-54},{-14,-55}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(BloodCations.y,busConnector. BloodIons_Cations)
    annotation (Line(
    points={{9,-56},{44,-56},{44,-24},{-61,-24},{-61,-23}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(BloodCations.y,busConnector. BloodCations) annotation (Line(
    points={{9,-56},{44,-56},{44,-23},{-61,-23}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(busConnector, phosphate2_1.busConnector) annotation (Line(
    points={{-61,-23},{-61,20.5},{-52,20.5},{-52,64}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None));
    connect(sulphate2_1.busConnector, busConnector) annotation (Line(
    points={{-80,10},{-61,10},{-61,-23}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None));
    connect(chloride.busConnector, busConnector) annotation (Line(
    points={{60.1,0.1},{1.05,0.1},{1.05,-23},{-61,-23}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None));
    connect(busConnector.PO4Pool_conc_per_liter, StrongAnionsLessCl.u[2])
    annotation (Line(
    points={{-61,-23},{-62,-23},{-62,-90.5},{-50,-90.5}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(busConnector.SO4Pool_conc_per_liter, StrongAnionsLessCl.u[3])
    annotation (Line(
    points={{-61,-23},{-62,-90},{-50,-89.5}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(busConnector.LacPool_Lac_mEq_per_litre, StrongAnionsLessCl.u[4])
    annotation (Line(
    points={{-61,-23},{-61,-88.5},{-50,-88.5}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None));
    connect(busConnector.KAPool_conc_per_liter, StrongAnionsLessCl.u[1])
    annotation (Line(
    points={{-61,-23},{-61,-91.5},{-50,-91.5}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None));
    connect(StrongAnionsLessCl.y, busConnector.BloodIons_StrongAnionsLessCl)
    annotation (Line(
    points={{-27,-90},{44,-90},{44,-23},{-61,-23}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
end TNa_K;