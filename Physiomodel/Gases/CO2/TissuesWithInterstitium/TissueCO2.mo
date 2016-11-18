within Physiomodel.Gases.CO2.TissuesWithInterstitium;
model TissueCO2

    Physiolibrary.Chemical.Interfaces.ChemicalPort_a arty annotation (
    Placement(transformation(extent={{76,-66},{96,-46}}),
      iconTransformation(extent={{80,-10},{120,30}})));
    Physiolibrary.Chemical.Interfaces.ChemicalPort_b vein annotation (
    Placement(transformation(extent={{-88,-66},{-68,-46}}),
      iconTransformation(extent={{-120,-10},{-80,30}})));
    Physiolibrary.Chemical.Sources.UnlimitedSolutePump InflowBase(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{-64,42},{-44,62}})));

    parameter Real initialMass;
    Modelica.Blocks.Interfaces.RealInput pH_plasma "outgoing plasma pH"
                                                        annotation (Placement(transformation(extent={{-3,-3},
            {3,3}},
        rotation=180,
        origin={9,-39}),          iconTransformation(extent={{-100,-30},{-80,-10}})));
    Modelica.Blocks.Interfaces.RealInput pH_ery
    "outgoing intracellular erytrocytes pH"
                                  annotation (Placement(transformation(extent={{-3,-3},
            {3,3}},
        rotation=180,
        origin={9,-45}),          iconTransformation(extent={{-100,90},{-80,110}})));
    Modelica.Blocks.Interfaces.RealInput BloodFlow
    "blood flow through ventilated alveols"
                                   annotation (Placement(transformation(extent={{64,-50},
            {58,-44}}),           iconTransformation(extent={{-10,-10},{10,10}},
        rotation=180,
        origin={90,54})));

    Modelica.Blocks.Interfaces.RealInput T "outgoing temperature"
                                                         annotation (Placement(transformation(extent={{-4,-4},
            {4,4}},
        rotation=180,
        origin={86,20}),          iconTransformation(extent={{-10,-10},{10,10}},
        rotation=180,
        origin={90,-60})));
    Modelica.Blocks.Interfaces.RealInput sO2 "outgoing oxygen saturation"
                                   annotation (Placement(transformation(extent={{3,-3},{
            -3,3}},
        rotation=180,
        origin={-35,-47}),        iconTransformation(
        extent={{-10,-10},{10,10}},
        origin={-90,60})));
    Modelica.Blocks.Interfaces.RealInput Hct
    "outgoing hematocrit (erytrocytes volume/blood volume)"
                                   annotation (Placement(transformation(extent={{3,-3},{
            -3,3}},
        rotation=180,
        origin={-35,-41}),        iconTransformation(
        extent={{-10,-10},{10,10}},
        origin={-90,-60})));

    Modelica.Blocks.Interfaces.RealInput Tissue_CO2FromMetabolism
    "Co2 flow from metabolism"       annotation (Placement(transformation(extent={{-74,66},
            {-66,74}}),           iconTransformation(
        extent={{-10,-10},{10,10}},
        rotation=180,
        origin={90,-20})));
    Physiolibrary.Types.RealIO.PressureOutput pCO2(
                                      start=45)
                                           annotation (Placement(
        transformation(extent={{38,-82},{46,-74}}),  iconTransformation(
          extent={{-10,-10},{10,10}},
        rotation=270,
        origin={0,-110})));
    Physiolibrary.Types.RealIO.ConcentrationOutput cHCO3
                                           annotation (Placement(
        transformation(extent={{36,-90},{44,-82}}),  iconTransformation(
          extent={{-10,-10},{10,10}},
        rotation=270,
        origin={-20,-110})));
    Physiolibrary.Types.RealIO.ConcentrationOutput cHCO3_interstitial
                                           annotation (Placement(
        transformation(extent={{50,36},{58,44}}),    iconTransformation(
          extent={{-10,-10},{10,10}},
        rotation=270,
        origin={20,-110})));
    Physiolibrary.Chemical.Components.Stream tissueFlow(
    useSolutionFlowInput=true) annotation (Placement(transformation(
      extent={{-10,10},{10,-10}},
      rotation=180,
      origin={42,-56})));
    FlowMeasureCO2 tissueVeinsCO2
    annotation (Placement(transformation(extent={{-4,-58},{-24,-38}})));
    Modelica.Blocks.Math.Gain DonnansCoeficient(k=1.04)
    annotation (Placement(transformation(extent={{34,36},{42,44}})));
equation

    connect(arty, arty) annotation (Line(
      points={{86,-56},{86,-56}},
      color={200,0,0},
      smooth=Smooth.None));
    connect(arty, tissueFlow.q_in) annotation (Line(
      points={{86,-56},{52,-56}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(tissueFlow.solutionFlow, BloodFlow) annotation (Line(
    points={{42,-49},{42,-47},{61,-47}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(tissueVeinsCO2.pCO2, pCO2) annotation (Line(
      points={{-18,-60},{-18,-78},{42,-78}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(tissueVeinsCO2.cHCO3, cHCO3) annotation (Line(
      points={{-22,-60},{-22,-86},{40,-86}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(tissueVeinsCO2.T, T) annotation (Line(
      points={{-23,-40},{-26,-40},{-26,20},{86,20}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(tissueVeinsCO2.Hct, Hct) annotation (Line(
      points={{-23,-44},{-29,-44},{-29,-41},{-35,-41}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(tissueVeinsCO2.sO2, sO2) annotation (Line(
      points={{-23,-48},{-30,-48},{-30,-47},{-35,-47}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(tissueVeinsCO2.pH, pH_plasma) annotation (Line(
      points={{-5,-40},{2,-40},{2,-39},{9,-39}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(pH_ery, tissueVeinsCO2.pH_ery) annotation (Line(
      points={{9,-45},{0.5,-45},{0.5,-44},{-5,-44}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(InflowBase.q_out, tissueVeinsCO2.q_in) annotation (Line(
      points={{-44,52},{10,52},{10,-56},{-4,-56}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(tissueFlow.q_out, tissueVeinsCO2.q_in) annotation (Line(
      points={{32,-56},{-4,-56}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(tissueVeinsCO2.q_out, vein) annotation (Line(
      points={{-24,-56},{-78,-56}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(BloodFlow, tissueVeinsCO2.BloodFlow) annotation (Line(
      points={{61,-47},{28.5,-47},{28.5,-48},{-5,-48}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(InflowBase.soluteFlow, Tissue_CO2FromMetabolism) annotation (
    Line(
    points={{-50,56},{-50,70},{-70,70}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(DonnansCoeficient.y, cHCO3_interstitial) annotation (Line(
      points={{42.4,40},{54,40}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(tissueVeinsCO2.cHCO3, DonnansCoeficient.u) annotation (Line(
      points={{-22,-60},{-22,-86},{26,-86},{26,40},{33.2,40}},
      color={0,0,127},
      smooth=Smooth.None));
    annotation ( Icon(coordinateSystem(
          preserveAspectRatio=true, extent={{-100,-100},{100,100}}),
        graphics={
        Text(
          extent={{-100,-80},{100,-100}},
          lineColor={127,0,0},
          fillPattern=FillPattern.Solid,
          textString="(init %initialMass mEq)"),
        Text(
          extent={{-6,92},{80,34}},
          lineColor={0,0,0},
          textString="CO"),
        Text(
          extent={{66,34},{86,62}},
          lineColor={0,0,0},
          textString="2"),
        Rectangle(extent={{-100,100},{100,-100}}, lineColor={0,0,0})}));
end TissueCO2;
