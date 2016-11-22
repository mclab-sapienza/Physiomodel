within Physiomodel.Heat;

model SkinHeat2
    extends Physiolibrary.Icons.Skin;
    Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow Metabolism1
    annotation (Placement(transformation(extent={{0,-72},{20,-52}})));
    Physiolibrary.Thermal.Components.HeatAccumulation skin(
    stateName="HeatSkin.Mass",
    useMassInput=true,
    relativeHeat_start=-75362.4)
    annotation (Placement(transformation(extent={{30,-72},{50,-52}})));
                        //(2363163.8976) - 310.15*weight*(3475.044))

      //initialTemperature=300.731,
    Physiolibrary.Thermal.Components.IdealRadiator skinFlux(
    useMassFlowInput=true, SpecificHeat(displayUnit="kcal/(kg.K)") = 3851.856)
    annotation (Placement(transformation(extent={{38,-40},{58,-20}})));
    Modelica.Blocks.Math.Gain bloodDensity(
    y(unit="kg/s"),
    k(unit="kg/m3") = 1000,
    u(unit="m3/s")) annotation (Placement(transformation(
        extent={{-4,-4},{4,4}},
        rotation=270,
        origin={40,-14})));
    Physiolibrary.Types.BusConnector busConnector annotation (Placement(
      transformation(extent={{-82,34},{-62,54}}), iconTransformation(extent=
         {{-90,-30},{-70,-10}})));
    Physiolibrary.Thermal.Interfaces.HeatPort_a positiveHeatFlow annotation (
    Placement(transformation(extent={{2,-32},{10,-24}}), iconTransformation(
        extent={{-32,-70},{-12,-50}})));
    Physiolibrary.Thermal.Interfaces.HeatPort_b q_out annotation (Placement(
      transformation(extent={{72,-82},{112,-42}}), iconTransformation(
        extent={{-30,8},{-10,28}})));
    Modelica.Blocks.Math.Feedback pressureGradient
    annotation (Placement(transformation(extent={{-46,-24},{-26,-4}})));
    Modelica.Blocks.Math.Product bloodFlow
    annotation (Placement(transformation(extent={{10,2},{30,-18}})));
    Physiolibrary.Blocks.Factors.Normalization TermoregulationEffect
    annotation (Placement(transformation(extent={{72,0},{96,24}})));
    Physiolibrary.Types.RealIO.FrequencyInput
                                       HypothalamusSkinFlow_NervesActivity
                                              annotation (Placement(
        transformation(extent={{-68,10},{-48,30}}), iconTransformation(
          extent={{-100,-80},{-60,-40}})));
    Modelica.Blocks.Interfaces.RealOutput skin_T
                                        annotation (Placement(
        transformation(extent={{78,-108},{98,-88}}),
                                                   iconTransformation(
          extent={{40,-40},{80,0}})));
    Physiolibrary.Blocks.Interpolation.Curve SympsDilateEffect(
    x={0.0,1.0,4.0},
    y={0.3,1.0,8.0},
    slope={0,2.2,0})
    annotation (Placement(transformation(extent={{-32,10},{-12,30}})));
    Physiolibrary.Blocks.Factors.Spline LocalTempVsNA(data={{1.2,1.0,0},{1.5,
      0.0,0}})
    annotation (Placement(transformation(extent={{-20,76},{0,96}})));
    Nerves.AplhaReceptorsActivityFactor AplhaReceptors_Skin(       data={{
        0.0,0.3,0},{1.0,0.0,-0.3},{5.0,-0.9,0}})
    annotation (Placement(transformation(extent={{-34,50},{-14,70}})));
    Physiolibrary.Blocks.Factors.Spline LocalTempEffect(data={{10.8 + 273.15,-0.8,0},
        {29.0 + 273.15,0.0,0.1},{45.0 + 273.15,4.0,0}})
    annotation (Placement(transformation(extent={{-18,62},{2,82}})));
    Physiolibrary.Types.Constants.FractionConst
    Skin_BasicConductance_1(k=1)
    annotation (Placement(transformation(extent={{-4,94},{-8,90}})));
    Physiolibrary.Blocks.Math.Add add(k=1)
    annotation (Placement(transformation(extent={{32,50},{40,58}})));
    Physiolibrary.Blocks.Math.Add add1(k=1)
    annotation (Placement(transformation(extent={{32,38},{40,46}})));
    Physiolibrary.Blocks.Factors.Normalization SympsEffect_Skin
    annotation (Placement(transformation(extent={{74,38},{94,58}})));
    Physiolibrary.Blocks.Factors.Normalization LocalTempEffect_Skin
    annotation (Placement(transformation(extent={{74,46},{94,66}})));
    Modelica.Thermal.HeatTransfer.Sensors.TemperatureSensor temperatureSensor
    annotation (Placement(transformation(extent={{44,-94},{64,-74}})));
equation
    connect(Metabolism1.port, skin.q_in) annotation (Line(
    points={{20,-62},{40,-62}},
    color={255,128,0},
    thickness=1,
    smooth=Smooth.None));
    connect(skinFlux.q_out,skin. q_in) annotation (Line(
    points={{48,-20},{48,-44},{40,-44},{40,-62}},
    color={255,128,0},
    thickness=1,
    smooth=Smooth.None));
    connect(skinFlux.q_in, positiveHeatFlow) annotation (Line(
    points={{38,-28},{6,-28}},
    color={255,128,0},
    thickness=1,
    smooth=Smooth.None));
    connect(skin.q_in, q_out) annotation (Line(
    points={{40,-62},{92,-62}},
    color={255,128,0},
    thickness=1,
    smooth=Smooth.None));
    connect(busConnector.SystemicArtys_Pressure, pressureGradient.u1)
                                                        annotation (
    Line(
    points={{-72,44},{-74,44},{-74,-14},{-44,-14}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(busConnector.SystemicVeins_Pressure, pressureGradient.u2)
                                                        annotation (
    Line(
    points={{-72,44},{-74,44},{-74,-22},{-36,-22}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(pressureGradient.y, bloodFlow.u1)
                              annotation (Line(
    points={{-27,-14},{8,-14}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(bloodFlow.y, bloodDensity.u) annotation (Line(
    points={{31,-8},{40,-8},{40,-9.2}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(TermoregulationEffect.y, bloodFlow.u2)
                                       annotation (Line(
    points={{84,7.2},{8,7.2},{8,-2}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(SympsDilateEffect.val, busConnector.skinFlow_termoregulationEffect)
    annotation (Line(
    points={{-12,20},{0,20},{0,0},{-72,0},{-72,44}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(HypothalamusSkinFlow_NervesActivity, SympsDilateEffect.u)
    annotation (Line(
    points={{-58,20},{-32,20}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(SympsDilateEffect.val, TermoregulationEffect.u) annotation (Line(
    points={{-12,20},{0,20},{0,12},{74.4,12}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(LocalTempVsNA.yBase,Skin_BasicConductance_1. y) annotation (Line(
    points={{-10,88},{-10,92},{-8.5,92}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(LocalTempEffect.yBase,LocalTempVsNA. y) annotation (Line(
    points={{-8,74},{-8,80},{-10,80},{-10,82}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(busConnector.skin_T,LocalTempEffect. u) annotation (Line(
    points={{-72,44},{-72,72},{-16,72}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(busConnector.AlphaPool_Effect,AplhaReceptors_Skin. AlphaPool_Effect)
    annotation (Line(
    points={{-72,44},{-72,66},{-33.8,66}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(busConnector.AlphaBlocade_Effect,AplhaReceptors_Skin. AlphaBlockade_Effect)
    annotation (Line(
    points={{-72,44},{-72,60},{-33.8,60}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(busConnector.GangliaGeneral_NA,AplhaReceptors_Skin. GangliaGeneral_NA)
    annotation (Line(
    points={{-72,44},{-72,54},{-33.8,54}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(AplhaReceptors_Skin.yBase,LocalTempVsNA. y) annotation (Line(
    points={{-24,67},{-24,80},{-10,80},{-10,82}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(LocalTempEffect.y,add. u) annotation (Line(
    points={{-8,68},{-8,54},{31.2,54}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(add1.u,AplhaReceptors_Skin. y) annotation (Line(
    points={{31.2,42},{-24,42},{-24,53}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(SympsEffect_Skin.u,add1. y) annotation (Line(
    points={{76,48},{56,48},{56,42},{40.4,42}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(add.y,LocalTempEffect_Skin. u) annotation (Line(
    points={{40.4,54},{58,54},{58,56},{76,56}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(busConnector.skin_conductanceWithoutTermoregulationEffect,
    LocalTempEffect_Skin.yBase) annotation (Line(
    points={{-72,44},{-72,96},{84,96},{84,58}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(LocalTempEffect_Skin.y, SympsEffect_Skin.yBase) annotation (Line(
    points={{84,52},{84,50}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(SympsEffect_Skin.y, TermoregulationEffect.yBase) annotation (Line(
    points={{84,44},{84,14.4}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(HypothalamusSkinFlow_NervesActivity, LocalTempVsNA.u) annotation (
    Line(
    points={{-58,20},{-42,20},{-42,86},{-18,86}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(bloodDensity.y, skinFlux.massFlow) annotation (Line(
    points={{40,-18.4},{40,-23}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(busConnector.skinSizeMass, skin.weight) annotation (Line(
    points={{-72,44},{-72,-54},{30,-54}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(busConnector.MetabolismCaloriesUsed_SkinHeat, Metabolism1.Q_flow)
    annotation (Line(
    points={{-72,44},{-72,-62},{0,-62}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(skin.q_in, temperatureSensor.port) annotation (Line(
    points={{40,-62},{42,-62},{42,-84},{44,-84}},
    color={191,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(temperatureSensor.T, busConnector.skin_T) annotation (Line(
    points={{64,-84},{74,-84},{74,-100},{-72,-100},{-72,44}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(temperatureSensor.T, skin_T) annotation (Line(
    points={{64,-84},{74,-84},{74,-98},{88,-98}},
    color={0,0,127},
    smooth=Smooth.None));
end SkinHeat2;