within Physiomodel.Gases.CO2.TissuesWithInterstitium;

model TissueCO2_liver
    extends Physiolibrary.Icons.Liver;
    Physiolibrary.Chemical.Interfaces.ChemicalPort_b vein annotation (
    Placement(transformation(extent={{-42,-66},{-22,-46}}),
      iconTransformation(extent={{-120,-10},{-80,30}})));
    Physiolibrary.Chemical.Sources.UnlimitedSolutePump InflowBase(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{-64,24},{-44,44}})));

    parameter Real initialMass;
    Modelica.Blocks.Interfaces.RealInput pH_plasma "outgoing plasma pH"
                                                        annotation (Placement(transformation(extent={{-3,-3},
            {3,3}},
        rotation=180,
        origin={7,-37}),          iconTransformation(extent={{-100,-30},{-80,-10}})));
    Modelica.Blocks.Interfaces.RealInput pH_ery
    "outgoing intracellular erytrocytes pH"
                                  annotation (Placement(transformation(extent={{-3,-3},
            {3,3}},
        rotation=180,
        origin={7,-43}),          iconTransformation(extent={{-100,90},{-80,110}})));

    Modelica.Blocks.Interfaces.RealInput T "outgoing temperature"
                                                         annotation (Placement(transformation(extent={{-4,-4},
            {4,4}},
        rotation=180,
        origin={86,20}),          iconTransformation(extent={{-10,-10},{10,10}},
        rotation=180,
        origin={90,58})));
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

    Modelica.Blocks.Interfaces.RealOutput pCO2
                                           annotation (Placement(
        transformation(extent={{38,-82},{46,-74}}),  iconTransformation(
          extent={{-10,-10},{10,10}},
        rotation=270,
        origin={0,-110})));
    Modelica.Blocks.Interfaces.RealOutput cHCO3
                                           annotation (Placement(
        transformation(extent={{36,-90},{44,-82}}),  iconTransformation(
          extent={{-10,-10},{10,10}},
        rotation=270,
        origin={-20,-110})));
    Modelica.Blocks.Interfaces.RealOutput cHCO3_interstitial
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
    Physiolibrary.Chemical.Interfaces.ChemicalPort_a portalVein annotation (
    Placement(transformation(extent={{68,-86},{88,-66}}),
      iconTransformation(extent={{0,80},{40,120}})));
    Physiolibrary.Chemical.Interfaces.ChemicalPort_a hepaticArty
    annotation (Placement(transformation(extent={{78,-66},{98,-46}}),
      iconTransformation(extent={{80,-10},{120,30}})));
    Modelica.Blocks.Interfaces.RealInput HepaticArtyBloodFlow
    "blood flow through hepatic artery"
                                   annotation (Placement(transformation(extent={{62,-50},
            {54,-42}}),           iconTransformation(extent={{-10,-10},{10,10}},
        rotation=180,
        origin={90,-100})));
    Modelica.Blocks.Interfaces.RealInput PortalVeinBloodFlow
    "blood flow through portal vein" annotation (Placement(transformation(extent={{-4,-4},
            {4,4}},
        rotation=180,
        origin={46,-28}),         iconTransformation(extent={{-10,-10},{10,10}},
        rotation=270,
        origin={-20,90})));
    Modelica.Blocks.Math.Add add annotation (Placement(transformation(
        extent={{-4,-4},{4,4}},
        rotation=180,
        origin={30,-40})));
    Modelica.Blocks.Interfaces.RealInput Tissue_CO2FromMetabolism
    "Co2 flow from metabolism"       annotation (Placement(transformation(extent={{-72,40},
            {-64,48}}),           iconTransformation(
        extent={{-10,-10},{10,10}},
        rotation=180,
        origin={90,-40})));
    Modelica.Blocks.Math.Gain DonnansCoeficient(k=1.04)
    annotation (Placement(transformation(extent={{32,36},{40,44}})));
equation

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
      points={{-5,-40},{0,-40},{0,-37},{7,-37}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(pH_ery, tissueVeinsCO2.pH_ery) annotation (Line(
      points={{7,-43},{0.5,-43},{0.5,-44},{-5,-44}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(InflowBase.q_out, tissueVeinsCO2.q_in) annotation (Line(
      points={{-44,34},{10,34},{10,-56},{-4,-56}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(tissueFlow.q_out, tissueVeinsCO2.q_in) annotation (Line(
      points={{32,-56},{-4,-56}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(tissueVeinsCO2.q_out, vein) annotation (Line(
      points={{-24,-56},{-32,-56}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(hepaticArty, tissueFlow.q_in) annotation (Line(
      points={{88,-56},{52,-56}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(tissueVeinsCO2.q_in, portalVein) annotation (Line(
      points={{-4,-56},{24,-56},{24,-74},{78,-74},{78,-76}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(HepaticArtyBloodFlow, tissueFlow.solutionFlow) annotation (Line(
    points={{58,-46},{42,-46},{42,-52}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(PortalVeinBloodFlow, add.u2) annotation (Line(
      points={{46,-28},{40,-28},{40,-37.6},{34.8,-37.6}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(HepaticArtyBloodFlow, add.u1) annotation (Line(
      points={{58,-46},{42,-46},{42,-42.4},{34.8,-42.4}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(add.y, tissueVeinsCO2.BloodFlow) annotation (Line(
      points={{25.6,-40},{24,-40},{24,-48},{-5,-48}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(InflowBase.soluteFlow, Tissue_CO2FromMetabolism) annotation (
    Line(
    points={{-50,38},{-50,44},{-68,44}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(DonnansCoeficient.y, cHCO3_interstitial) annotation (Line(
      points={{40.4,40},{54,40}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(tissueVeinsCO2.cHCO3, DonnansCoeficient.u) annotation (Line(
      points={{-22,-60},{-22,-86},{20,-86},{20,40},{31.2,40}},
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
end TissueCO2_liver;
