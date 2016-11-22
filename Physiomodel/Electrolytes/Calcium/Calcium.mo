within Physiomodel.Electrolytes.Calcium;
model Calcium
    import Physiomodel;

    Physiolibrary.Molar.ConcentrationCompartment_knownConc          CaPool(
    concentration=2.4)
    annotation (Placement(transformation(extent={{-42,-12},{-22,8}})));
    Physiomodel.Electrolytes.Calcium.CaBone CaBone(initialSoluteMass=100)
    annotation (Placement(transformation(extent={{42,-12},{62,8}})));
    Physiolibrary.Types.BusConnector busConnector
    annotation (Placement(transformation(extent={{-98,68},{-78,88}})));
    Physiomodel.Electrolytes.Calcium.Bladder Bladder(useNormalizedVolume=
    false, solute_start=(0)/1000)
    annotation (Placement(transformation(extent={{80,-98},{100,-78}})));
    Physiolibrary.Chemical.Components.SolutePump J_pu(useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{-2,-96},{14,-80}})));
    Physiolibrary.Chemical.Components.SolutePump J_pb(useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{10,-42},{26,-26}})));
    Modelica.Blocks.Math.Gain gain(k=3.3/31.2)
                           annotation (Placement(transformation(
    extent={{-4,-4},{4,4}},
    origin={4,-24})));
    Physiolibrary.Chemical.Components.SolutePump J_bp(useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{26,-16},{10,0}})));
    Factors.Y2 y2_D(affinity=90, Y_Max=0.04)
    annotation (Placement(transformation(extent={{10,54},{30,74}})));
    Factors.Y2 y2_Ca(affinity=2.4, Y_Max=1)
    annotation (Placement(transformation(extent={{28,22},{8,42}})));
    Factors.Y1 y1_PTH(
    positive=true,
    affinity=3.85,
    a=0.85,
    b=0.45,
    d=0.15,
    Y_Max=1)
    annotation (Placement(transformation(extent={{38,40},{58,60}})));
    Physiolibrary.Types.Constants.MolarFlowRateConst
    hormoneFlowConstant_mmol_per_hour(k=6.666666666666799e-007)
    annotation (Placement(transformation(extent={{8,66},{16,74}})));
    Factors.Y2 y2_D_(affinity=90, Y_Max=1)
    annotation (Placement(transformation(extent={{-6,-62},{14,-42}})));
    Factors.Y2 y2_Ca_(affinity=2.4, Y_Max=1)
    annotation (Placement(transformation(extent={{-6,-70},{14,-50}})));
    Physiolibrary.Types.Constants.MolarFlowRateConst
    hormoneFlowConstant_mmol_per_hour1(k=1.6666666666667e-005)
    annotation (Placement(transformation(extent={{-8,-48},{0,-40}})));
    Modelica.Blocks.Math.Division CaT
    annotation (Placement(transformation(extent={{-28,-74},{-20,-66}})));
    Physiolibrary.Blocks.soluteMassConstant Ca_thr(
                                     k=1.95)
    annotation (Placement(transformation(extent={{-84,-78},{-70,-64}})));
    Factors.Y2 y2_PTH_(affinity=3.85, Y_Max=1)
    annotation (Placement(transformation(extent={{-72,-96},{-52,-76}})));
    Physiomodel.Electrolytes.Calcium.CaGILumen CaGILumen
    annotation (Placement(transformation(extent={{-80,-12},{-60,8}})));
    Physiolibrary.Chemical.Sensors.ConcentrationMeasure concentrationMeasure
    annotation (Placement(transformation(
    extent={{-10,-10},{10,10}},
    rotation=180,
    origin={-50,-2})));
    Physiolibrary.Types.Constants.MolarFlowRateConst
    hormoneFlowConstant_mmol_per_hour2(k=8.666666666666841e-006)
    annotation (Placement(transformation(extent={{8,34},{16,42}})));
    Physiolibrary.Types.Constants.MolarFlowRateConst
    hormoneFlowConstant_mmol_per_hour3(k=1.6666666666667e-005)
    annotation (Placement(transformation(extent={{38,52},{46,60}})));
    Physiolibrary.Types.Constants.MolarFlowRateConst
    hormoneFlowConstant_mmol_per_hour4(k=9.166666666667399e-007)
    annotation (Placement(transformation(extent={{6,2},{14,10}})));
    Physiolibrary.Types.Constants.MolarFlowRateConst
    hormoneFlowConstant_mmol_per_hour5(k=3.50000000000007e-006)
    annotation (Placement(transformation(extent={{-6,-82},{2,-74}})));
    Modelica.Blocks.Math.Gain mlTOlitre(k=0.001)
                           annotation (Placement(transformation(
    extent={{-4,-4},{4,4}},
    rotation=270,
    origin={-42,22})));
    Modelica.Blocks.Math.Gain mlTOlitre1(k=0.001)
                           annotation (Placement(transformation(
    extent={{-4,-4},{4,4}},
    origin={74,-82})));
equation
    connect(CaPool.q_out, J_pu.q_in) annotation (Line(
    points={{-32,-2},{-12,-2},{-12,-88},{-2,-88}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(J_pu.q_out, Bladder.q_out) annotation (Line(
    points={{14,-88},{90,-88}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(J_pb.q_out, CaBone.q_out)                             annotation (
    Line(
    points={{26,-34},{36,-34},{36,-2},{52,-2}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(J_pb.q_in, CaPool.q_out) annotation (Line(
    points={{10,-34},{-12,-34},{-12,-2},{-32,-2}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(gain.y, J_pb.soluteFlow) annotation (Line(
    points={{8.4,-24},{21.2,-24},{21.2,-30.8}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(CaPool.soluteMass, gain.u) annotation (Line(
    points={{-32,-9.8},{-32,-24},{-0.8,-24}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(CaBone.q_out, J_bp.q_in)                              annotation (
    Line(
    points={{52,-2},{36,-2},{36,-8},{26,-8}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(J_bp.q_out, CaPool.q_out)  annotation (Line(
    points={{10,-8},{-12,-8},{-12,-2},{-32,-2}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(busConnector.Calcitriol, y2_D.u) annotation (Line(
    points={{-88,78},{-8,78},{-8,64},{10.2,64}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(CaBone.soluteMass, y2_Ca.u)                             annotation (
    Line(
    points={{52,-9.4},{52,-16},{64,-16},{64,32},{27.8,32}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(busConnector.PTH, y1_PTH.u) annotation (Line(
    points={{-88,78},{-8,78},{-8,50},{38.2,50}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(hormoneFlowConstant_mmol_per_hour.y, y2_D.yBase) annotation (Line(
    points={{17,70},{20,70},{20,66}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(busConnector.Calcitriol,y2_D_. u) annotation (Line(
    points={{-88,78},{-88,-52},{-5.8,-52}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(y2_D_.y,y2_Ca_. yBase) annotation (Line(
    points={{4,-56},{4,-58}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(hormoneFlowConstant_mmol_per_hour1.y,y2_D_. yBase) annotation (Line(
    points={{1,-44},{4,-44},{4,-50}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(busConnector.PTH, y2_PTH_.u)
                                annotation (Line(
    points={{-88,78},{-88,-86},{-71.8,-86}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(Ca_thr.y, y2_PTH_.yBase) annotation (Line(
    points={{-69.3,-71},{-62,-71},{-62,-84}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(y2_PTH_.y, CaT.u1) annotation (Line(
    points={{-62,-90},{-62,-94},{-44,-94},{-44,-67.6},{-28.8,-67.6}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(CaGILumen.q_out, CaPool.q_out) annotation (Line(
    points={{-60,-2},{-32,-2}},
    color={200,0,0},
    pattern=LinePattern.None,
    thickness=1,
    smooth=Smooth.None));
    connect(busConnector,CaGILumen. busConnector) annotation (Line(
    points={{-88,78},{-88,6},{-78.6,6}},
    color={0,0,255},
    pattern=LinePattern.None,
    thickness=0.5,
    smooth=Smooth.None));
    connect(CaPool.q_out, concentrationMeasure.q_in) annotation (Line(
    points={{-32,-2},{-50,-2}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(concentrationMeasure.concentration, y2_Ca_.u) annotation (Line(
    points={{-50,-6},{-50,-60},{-5.8,-60}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(concentrationMeasure.concentration, CaT.u2) annotation (Line(
    points={{-50,-6},{-50,-72.4},{-28.8,-72.4}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(hormoneFlowConstant_mmol_per_hour2.y, y2_Ca.yBase) annotation (
    Line(
    points={{17,38},{18,38},{18,34}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(hormoneFlowConstant_mmol_per_hour3.y, y1_PTH.yBase) annotation (
    Line(
    points={{47,56},{48,56},{48,52}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(hormoneFlowConstant_mmol_per_hour4.y, J_bp.soluteFlow)
    annotation (Line(
    points={{15,6},{14.8,6},{14.8,-4.8}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(hormoneFlowConstant_mmol_per_hour5.y, J_pu.soluteFlow)
    annotation (Line(
    points={{3,-78},{9.2,-78},{9.2,-84.8}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(mlTOlitre.y, CaPool.SolventVolume) annotation (Line(
    points={{-42,17.6},{-42,6}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(busConnector.ECFV_Vol, mlTOlitre.u) annotation (Line(
    points={{-88,78},{-42,78},{-42,26.8}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(mlTOlitre1.y, Bladder.solutionVolume) annotation (Line(
    points={{78.4,-82},{82,-82},{82,-84},{86,-84}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(busConnector.BladderVolume_Mass, mlTOlitre1.u) annotation (Line(
    points={{-88,78},{69.2,78},{69.2,-82}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    annotation ( uses);
end Calcium;