within Physiomodel.Heat;
model Heat2
    extends Physiolibrary.Icons.Heat;
    //      initialTemperature(displayUnit="degC") = 310.15,
    Physiolibrary.Types.BusConnector busConnector annotation (Placement(
    transformation(extent={{-104,86},{-84,106}}), iconTransformation(
    extent={{-104,86},{-84,106}})));
    Physiolibrary.Thermal.Sources.MassOutflow HeatInsensibleSkin(
    q_in(T(start=303.824)),
    VaporizationHeat=2428344,
    SpecificHeat=4186.8,
    useMassFlowInput=true)
    annotation (Placement(transformation(extent={{66,-12},{86,8}})));
    Physiolibrary.Types.Constants.MassFlowRateConst massFlowConstant(k=6.1666666666667e-06)
    annotation (Placement(transformation(extent={{62,10},{68,16}})));
    Physiolibrary.Thermal.Components.Conductor conduction(useConductanceInput=
    true)
    annotation (Placement(transformation(extent={{74,-60},{94,-40}})));
    Physiolibrary.Blocks.Factors.Spline WindEffect(data={{0.0,1.0,0},{20.0,4.0,
    0}}, Xscale=0.44704)
    annotation (Placement(transformation(extent={{94,-48},{74,-28}})));
    Physiolibrary.Blocks.Factors.Spline BloodFlowEffect(data={{0,0.8,0},{250,
    1.0,1.0E-3},{8000,8.0,0}}, Xscale=1e-6/60)
    annotation (Placement(transformation(extent={{94,-42},{74,-22}})));
    Physiolibrary.Blocks.Factors.Spline ClothesEffect(data={{0.0,4.0,0},{2.0,
    1.0,-1.2},{4.0,0.2,0}})
    annotation (Placement(transformation(extent={{74,-34},{94,-14}})));
    Physiolibrary.Types.Constants.ThermalConductanceConst Constant(k(displayUnit="kcal/(min.K)")=
     2.37252)
    annotation (Placement(transformation(extent={{74,-20},{82,-12}})));
    Physiolibrary.Types.Constants.FractionConst             Constant1(k=2)
    annotation (Placement(transformation(extent={{58,-28},{66,-20}})));
    Physiolibrary.Thermal.Sources.UnlimitedHeat ambientTemperature(T=298.15)
    annotation (Placement(transformation(extent={{58,-88},{78,-68}})));
    Physiolibrary.Thermal.Components.Conductor radiation(useConductanceInput=
    true)
    annotation (Placement(transformation(extent={{26,-88},{46,-68}})));
    Physiolibrary.Blocks.Factors.Spline ClothesEffect1(data={{0.0,4.0,0},{2.0,
    1.0,-1.2},{4.0,0.2,0}})
    annotation (Placement(transformation(extent={{26,-78},{46,-58}})));
    Physiolibrary.Types.Constants.ThermalConductanceConst Constant3(k=4.74504)
    annotation (Placement(transformation(extent={{24,-62},{32,-54}})));
    TissuesHeat otherTissuesHeat
    annotation (Placement(transformation(extent={{-86,-76},{-64,-54}})));
    Physiolibrary.Thermal.Components.Stream toUrine(
    q_in(T(start=310.16)),
    SpecificHeat=4186.8,
    useMassFlowInput=true) annotation (Placement(transformation(
    extent={{-10,10},{10,-10}},
    rotation=270,
    origin={2,-36})));
    BladderHeat bladderHeat
    annotation (Placement(transformation(extent={{-10,-76},{10,-56}})));
    GILumenHeat gILumenHeat(GILumen(q_in(T(start=308.099)), useMassInput=true))
    annotation (Placement(transformation(extent={{-86,-22},{-66,-2}})));
    SkinHeat2 skinHeat
                annotation (Placement(transformation(
    extent={{-15,-15},{15,15}},
    rotation=270,
    origin={33,-13})));
    MuscleHeat muscleHeat
    annotation (Placement(transformation(extent={{-54,-74},{-26,-42}})));
    Nerves.Hypothalamus hypothalamus
    annotation (Placement(transformation(extent={{16,62},{36,82}})));
    Skin.SweatGland sweatGland
    annotation (Placement(transformation(extent={{72,36},{92,56}})));
    Lungs lungs
    annotation (Placement(transformation(extent={{-40,18},{-20,38}})));
    Core core1
    annotation (Placement(transformation(extent={{-36,-12},{-16,8}})));
    Modelica.Blocks.Math.Gain urineDensity(
    y(unit="kg/s"),
    k(unit="kg/m3") = 1000,
    u(unit="m3/s")) annotation (Placement(transformation(
    extent={{-4,-4},{4,4}},
    origin={-16,-38})));
equation
    connect(BloodFlowEffect.y, WindEffect.yBase) annotation (Line(
    points={{84,-36},{84,-36}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(ClothesEffect.y, BloodFlowEffect.yBase) annotation (Line(
    points={{84,-28},{84,-30}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Constant.y, ClothesEffect.yBase) annotation (Line(
    points={{83,-16},{84,-16},{84,-22}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Constant1.y, ClothesEffect.u) annotation (Line(
    points={{67,-24},{76,-24}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(busConnector.skin_BloodFlow, BloodFlowEffect.u) annotation (Line(
    points={{-94,96},{98,96},{98,-32},{92,-32}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(conduction.q_out, ambientTemperature.port) annotation (Line(
    points={{94,-50},{98,-50},{98,-78},{78,-78}},
    color={255,128,0},
    thickness=1,
    smooth=Smooth.None));
    connect(Constant1.y, ClothesEffect1.u) annotation (Line(
    points={{67,-24},{70,-24},{70,-34},{22,-34},{22,-68},{28,-68}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Constant3.y, ClothesEffect1.yBase) annotation (Line(
    points={{33,-58},{36,-58},{36,-66}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(radiation.q_out, ambientTemperature.port) annotation (Line(
    points={{46,-78},{78,-78}},
    color={255,128,0},
    thickness=1,
    smooth=Smooth.None));
    connect(busConnector, otherTissuesHeat.busConnector) annotation (Line(
    points={{-94,96},{-94,-54.88},{-84.68,-54.88}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None));
    connect(toUrine.q_out, bladderHeat.positiveHeatFlow) annotation (Line(
    points={{2,-46},{2,-58.4},{0.4,-58.4}},
    color={255,128,0},
    thickness=1,
    smooth=Smooth.None));
    connect(busConnector, bladderHeat.busConnector) annotation (Line(
    points={{-94,96},{-94,-84},{-24,-84},{-24,-56.4},{-9.4,-56.4}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None));
    connect(gILumenHeat.busConnector, busConnector) annotation (Line(
    points={{-85.4,-2.4},{-94,-2.4},{-94,96}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None));
    connect(skinHeat.q_out, HeatInsensibleSkin.q_in)
                                      annotation (Line(
    points={{35.7,-10},{36,-10},{36,-4},{44,-4},{44,-2},{66,-2}},
    color={255,128,0},
    thickness=1,
    smooth=Smooth.None));
    connect(skinHeat.q_out, conduction.q_in) annotation (Line(
    points={{35.7,-10},{46,-10},{46,-50},{74,-50}},
    color={255,128,0},
    thickness=1,
    smooth=Smooth.None));
    connect(skinHeat.q_out, radiation.q_in) annotation (Line(
    points={{35.7,-10},{46,-10},{46,-50},{18,-50},{18,-78},{26,-78}},
    color={255,128,0},
    thickness=1,
    smooth=Smooth.None));
    connect(skinHeat.busConnector, busConnector) annotation (Line(
    points={{30,-1},{30,18},{100,18},{100,96},{-94,96}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None));
    connect(muscleHeat.busConnector, busConnector) annotation (Line(
    points={{-53.16,-42.64},{-52,-42},{-94,-42},{-94,96}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None));
    connect(busConnector.brain_FunctionEffect,hypothalamus. BrainFunctionEffect)
    annotation (Line(
    points={{-94,96},{-76,96},{-76,78},{16,78}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(hypothalamus.HypothalamusSkinFlow_NA, skinHeat.HypothalamusSkinFlow_NervesActivity)
    annotation (Line(
    points={{36,70},{44,70},{44,20},{24,20},{24,-1}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(skinHeat.skin_T, hypothalamus.HeatSkin_Temp) annotation (Line(
    points={{30,-22},{30,-22},{-4,-20},{-4,68},{16,68}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(hypothalamus.HypothalamusSweating_NA, sweatGland.HypothalamusSweating_NA)
    annotation (Line(
    points={{36,76},{48,76},{48,40},{74,40}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(sweatGland.busConnector, busConnector) annotation (Line(
    points={{89,53},{98,53},{98,96},{-94,96}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None));
    connect(skinHeat.q_out, sweatGland.port_a) annotation (Line(
    points={{35.7,-10},{46,-10},{46,36},{82,36}},
    color={255,128,0},
    thickness=1,
    smooth=Smooth.None));
    connect(sweatGland.port_b, ambientTemperature.port) annotation (Line(
    points={{82,56},{104,56},{104,-78},{78,-78}},
    color={255,128,0},
    thickness=1,
    smooth=Smooth.None));
    connect(lungs.busConnector, busConnector) annotation (Line(
    points={{-37.2,27.4},{-94,27.4},{-94,96}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None));
    connect(lungs.positiveHeatFlow, core1.positiveHeatFlow) annotation (Line(
    points={{-31.4,23.4},{-26,23.4},{-26,-1.4},{-25.8,-1.4}},
    color={255,128,0},
    thickness=1,
    smooth=Smooth.None));
    connect(core1.positiveHeatFlow, skinHeat.positiveHeatFlow) annotation (
    Line(
    points={{-25.8,-1.4},{-25.8,6.6},{2,6.6},{2,-9.7},{24,-9.7}},
    color={255,128,0},
    thickness=1,
    smooth=Smooth.None));
    connect(core1.positiveHeatFlow, toUrine.q_in) annotation (Line(
    points={{-25.8,-1.4},{-10,-1.4},{-10,-26},{2,-26}},
    color={255,128,0},
    thickness=1,
    smooth=Smooth.None));
    connect(core1.positiveHeatFlow, muscleHeat.q_out) annotation (Line(
    points={{-25.8,-1.4},{-25.8,-12},{-26,-12},{-26,-58},{-40,-58}},
    color={255,128,0},
    thickness=1,
    smooth=Smooth.None));

    connect(core1.positiveHeatFlow, gILumenHeat.q_out) annotation (Line(
    points={{-25.8,-1.4},{-26,-1.4},{-26,-12},{-76,-12}},
    color={255,128,0},
    thickness=1,
    smooth=Smooth.None));
    connect(core1.core_T, hypothalamus.HeatCore_Temp) annotation (Line(
    points={{-20,-4},{0,-4},{0,72},{16,72}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(core1.busConnector, busConnector) annotation (Line(
    points={{-26,6.2},{-26,14.2},{-58,14.2},{-58,96},{-94,96}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None));
    connect(lungs.air, ambientTemperature.port) annotation (Line(
    points={{-31.4,34.2},{-31.4,58},{104,58},{104,-78},{78,-78}},
    color={255,128,0},
    thickness=1,
    smooth=Smooth.None));
    connect(hypothalamus.HypothalamusShivering_NA, busConnector.HypothalamusShivering_NerveActivity)
    annotation (Line(
    points={{36,64},{42,64},{42,96},{-94,96}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(WindEffect.y, conduction.conductance) annotation (Line(
    points={{84,-42},{84,-46}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(ClothesEffect1.y, radiation.conductance) annotation (Line(
    points={{36,-72},{36,-74}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(massFlowConstant.y, HeatInsensibleSkin.massFlow) annotation (Line(
    points={{68.75,13},{68,13},{68,5}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(busConnector.CD_H2O_Outflow, urineDensity.u) annotation (Line(
    points={{-94,96},{-94,-84},{-24,-84},{-24,-38},{-20.8,-38}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(urineDensity.y, toUrine.massFlow) annotation (Line(
    points={{-11.6,-38},{-8,-38},{-8,-28},{-5,-28}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(core1.positiveHeatFlow, busConnector.coreHeat) annotation (Line(
    points={{-25.8,-1.4},{-25.8,-6},{-58,-6},{-58,96},{-94,96}},
    color={191,0,0},
    thickness=1,
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(WindEffect.u, busConnector.WindSpeed) annotation (Line(
    points={{92,-38},{100,-38},{100,96},{-94,96}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    annotation ( Icon(coordinateSystem(
      preserveAspectRatio=true,  extent={{-100,-100},{100,100}}),
    graphics={               Text(
      extent={{-94,-100},{94,-126}},
      lineColor={0,0,255},
      textString="%name")}));
end Heat2;