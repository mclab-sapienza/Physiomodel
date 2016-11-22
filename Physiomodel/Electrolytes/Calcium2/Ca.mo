within Physiomodel.Electrolytes.Calcium2;
model Ca
    import Physiomodel;
    Physiomodel.Electrolytes.Calcium.Bladder Bladder(useNormalizedVolume=
    false, solute_start=(0)/1000)
    annotation (Placement(transformation(extent={{-64,-80},{-44,-60}})));
    Modelica.Blocks.Math.Gain mlTOlitre1(k=0.001)
                               annotation (Placement(transformation(
      extent={{-4,-4},{4,4}},
      origin={-72,-64})));
    Physiolibrary.Chemical.Components.Substance CaPool(
    stateName="CaPool.Mass",
    useNormalizedVolume=false,
    solute_start=(33592.71023539913)/1000)
    annotation (Placement(transformation(extent={{-44,-4},{-24,16}})));
    Modelica.Blocks.Math.Gain mlTOlitre(k=0.001)
                               annotation (Placement(transformation(
      extent={{-4,-4},{4,4}},
      origin={-54,14})));
    Physiolibrary.Types.BusConnector busConnector
    annotation (Placement(transformation(extent={{-88,78},{-68,98}})));
    Physiomodel.Electrolytes.Calcium2.CaGILumen intestine
    annotation (Placement(transformation(extent={{-76,44},{-56,64}})));
    Physiomodel.Electrolytes.Calcium2.CaKidneyExcretion kidney
    annotation (Placement(transformation(extent={{-64,-44},{-44,-24}})));
    Physiomodel.Electrolytes.Calcium2.Bone bone
    annotation (Placement(transformation(extent={{34,-4},{54,16}})));
    Physiolibrary.Chemical.Sensors.ConcentrationMeasure concentrationMeasure(
    unitsString="mmol/l") annotation (Placement(transformation(
    extent={{-10,-10},{10,10}},
    origin={-18,22})));
equation
    connect(mlTOlitre1.y, Bladder.solutionVolume) annotation (Line(
    points={{-67.6,-64},{-62,-64}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(busConnector.BladderVolume_Mass,mlTOlitre1. u) annotation (Line(
    points={{-78,88},{-80,88},{-80,-64},{-76.8,-64}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(mlTOlitre.y, CaPool.solutionVolume) annotation (Line(
    points={{-49.6,14},{-45.8,14},{-45.8,12},{-42,12}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(busConnector.ECFV_Vol,mlTOlitre. u) annotation (Line(
    points={{-78,88},{-80,88},{-80,14},{-58.8,14}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(intestine.q_out, CaPool.q_out) annotation (Line(
    points={{-56,54},{-28,54},{-28,6},{-34,6}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(busConnector, intestine.busConnector) annotation (Line(
    points={{-78,88},{-80,88},{-80,62},{-74.6,62}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None));
    connect(kidney.q_in, CaPool.q_out) annotation (Line(
    points={{-52,-34},{-38,-34},{-38,6},{-34,6}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(busConnector, kidney.busConnector) annotation (Line(
    points={{-78,88},{-80,88},{-80,-25},{-63,-25}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None));
    connect(kidney.q_out, Bladder.q_out) annotation (Line(
    points={{-52,-44},{-54,-44},{-54,-70}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(CaPool.q_out, bone.q_in) annotation (Line(
    points={{-34,6},{42,6}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(busConnector, bone.busConnector) annotation (Line(
    points={{-78,88},{36,88},{36,14.8}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None));
    connect(CaPool.q_out, concentrationMeasure.q_in) annotation (Line(
    points={{-34,6},{-28,6},{-28,22},{-18,22}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(concentrationMeasure.concentration, busConnector.CaPool_conc_per_liter)
    annotation (Line(
    points={{-18,26},{-18,88},{-78,88}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
end Ca;