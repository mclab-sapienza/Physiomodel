within Physiomodel.Metabolism;

model Urea
    extends Physiolibrary.Icons.Urea;
    Physiolibrary.Chemical.Interfaces.ChemicalPort_a ureaFromMetabolism
    annotation (Placement(transformation(extent={{-30,54},{-10,74}}),
      iconTransformation(extent={{50,90},{70,110}})));
    Physiolibrary.Chemical.Components.Reabsorption reabsorbtion(useEffect=true)
    annotation (Placement(transformation(extent={{2,-36},{22,-16}})));
    Physiolibrary.Chemical.Components.Stream CD_Outflow(useSolutionFlowInput=
      true)
    annotation (Placement(transformation(extent={{48,-32},{68,-12}})));
    Physiolibrary.Chemical.Components.Substance Medulla(
    stateName="MedullaUrea.Mass",
    useNormalizedVolume=false,
    solute_start=0.0117) "initial 590 mg, (initial of RC2014: 955.045 mg)"
    annotation (Placement(transformation(extent={{2,-64},{22,-44}})));
    Physiolibrary.Types.Constants.FractionConst fractConstant(k=0.4)
    annotation (Placement(transformation(
      extent={{-5,-5},{5,5}},
      rotation=180,
      origin={21,-9})));
    Physiolibrary.Chemical.Components.Stream VasaRecta_Outflow(
    useSolutionFlowInput=true)
    annotation (Placement(transformation(extent={{-4,-52},{-24,-72}})));
    Physiolibrary.Types.Constants.FractionConst CCK(k=0.04)
    annotation (Placement(transformation(extent={{-50,-94},{-38,-82}})));
    Modelica.Blocks.Math.Product product
    annotation (Placement(transformation(extent={{-30,-84},{-18,-72}})));
    Physiolibrary.Types.BusConnector busConnector annotation (Placement(
      transformation(extent={{-54,60},{-14,100}}), iconTransformation(
        extent={{-100,20},{-60,60}})));
    Physiolibrary.Chemical.Components.Substance Urea(
    stateName="UreaPool.Mass",
    useNormalizedVolume=false,
    solute_start=0.0936) "initial 7206.24 mg"
    annotation (Placement(transformation(extent={{-14,24},{6,44}})));
    Physiolibrary.Chemical.Components.Stream Glomerulus(useSolutionFlowInput=
      true) annotation (Placement(transformation(
      extent={{-10,-10},{10,10}},
      rotation=270,
      origin={-42,6})));
    Physiolibrary.Chemical.Components.Substance               UreaCell(
                               stateName="UreaCell.Mass",
    useNormalizedVolume=false,
    solute_start=0.17225) "initial 13288.1 mg"
    annotation (Placement(transformation(extent={{48,24},{68,44}})));
    Physiolibrary.Chemical.Components.Diffusion DC(Conductance=(910)*(1e-6)/60)
    annotation (Placement(transformation(extent={{14,24},{34,44}})));
    Physiolibrary.Chemical.Sensors.MolarFlowMeasure flowMeasure
    annotation (Placement(transformation(extent={{72,-14},{88,-30}})));
    Physiolibrary.Chemical.Sensors.ConcentrationMeasure osmolarityMeasure
    annotation (Placement(transformation(extent={{-10,-10},{10,10}},
      rotation=270,
      origin={44,-54})));
    Electrolytes.Bladder bladder(
                   stateVarName="BladderUrea.Mass")
    annotation (Placement(transformation(extent={{82,-84},{102,-64}})));
equation
    connect(reabsorbtion.Outflow, CD_Outflow.q_in) annotation (Line(
      points={{22,-22},{48,-22}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(fractConstant.y, reabsorbtion.baseReabsorption) annotation (Line(
    points={{14.75,-9},{16,-9},{16,-16}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(VasaRecta_Outflow.q_in, Medulla.q_out) annotation (Line(
      points={{-4,-62},{0,-62},{0,-54},{12,-54}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(product.y, VasaRecta_Outflow.solutionFlow) annotation (Line(
    points={{-17.4,-78},{-14,-78},{-14,-69}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(busConnector.CD_H2O_Outflow, CD_Outflow.solutionFlow) annotation (
    Line(
    points={{-34,80},{-34,0},{58,0},{58,-15}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(Glomerulus.q_out, reabsorbtion.Inflow) annotation (Line(
      points={{-42,-4},{-42,-22},{2,-22}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(Urea.q_out, Glomerulus.q_in) annotation (Line(
      points={{-4,34},{-42,34},{-42,16}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(VasaRecta_Outflow.q_out, Urea.q_out) annotation (Line(
      points={{-24,-62},{-54,-62},{-54,34},{-4,34}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(ureaFromMetabolism, Urea.q_out) annotation (Line(
      points={{-20,64},{-4,64},{-4,34}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(Urea.q_out, DC.q_in) annotation (Line(
      points={{-4,34},{14,34}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(DC.q_out, UreaCell.q_out) annotation (Line(
      points={{34,34},{58,34}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(busConnector.VasaRecta_Outflow, product.u1) annotation (Line(
      points={{-34,80},{-34,-74.4},{-31.2,-74.4}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-6,3},{-6,3}}));
    connect(CD_Outflow.q_out, flowMeasure.q_in) annotation (Line(
      points={{68,-22},{72,-22}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(flowMeasure.molarFlowRate, busConnector.CD_Urea_Outflow)
    annotation (Line(
    points={{80,-17.2},{80,80},{-34,80}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(Medulla.q_out, osmolarityMeasure.q_in) annotation (Line(
      points={{12,-54},{42,-54}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(flowMeasure.q_out, bladder.q_in) annotation (Line(
      points={{88,-22},{92,-22},{92,-66}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(bladder.busConnector, busConnector) annotation (Line(
      points={{100,-66},{100,80},{-34,80}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None));
    connect(Glomerulus.solutionFlow, busConnector.GlomerulusFiltrate_GFR)
    annotation (Line(
    points={{-35,6},{-34,6},{-34,80}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(CCK.y, product.u2) annotation (Line(
    points={{-36.5,-88},{-34,-88},{-34,-81.6},{-31.2,-81.6}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(busConnector.ICFV_Vol, UreaCell.solutionVolume) annotation (Line(
    points={{-34,80},{34,80},{34,38},{54,38}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(busConnector.ECFV_Vol, Urea.solutionVolume) annotation (Line(
    points={{-34,80},{-34,38},{-8,38}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(busConnector.UreaECF_Osmoles, Urea.solute) annotation (Line(
    points={{-34,80},{-34,20},{2,20},{2,24}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(busConnector.UreaICF_Osmoles, UreaCell.solute) annotation (Line(
    points={{-34,80},{-34,20},{64,20},{64,24}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(reabsorbtion.Effect, fractConstant.y) annotation (Line(
    points={{12,-16},{12,-9},{14.75,-9}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(osmolarityMeasure.concentration, busConnector.MedullaUrea_Osmolarity)
    annotation (Line(
    points={{48,-54},{100,-54},{100,80},{-34,80}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(busConnector.Medulla_Volume, Medulla.solutionVolume) annotation (
    Line(
    points={{-34,80},{-34,-50},{8,-50}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(reabsorbtion.Reabsorption, Medulla.q_out) annotation (Line(
    points={{12,-36},{12,-54}},
    color={107,45,134},
    thickness=1,
    smooth=Smooth.None));
    connect(reabsorbtion.Outflow, Medulla.q_out) annotation (Line(
    points={{22,-22},{34,-22},{34,-54},{12,-54}},
    color={107,45,134},
    thickness=1,
    smooth=Smooth.None));
    annotation ( Icon(coordinateSystem(
          preserveAspectRatio=true,  extent={{-100,-100},{100,100}}),
        graphics={
        Text(
          extent={{-144,-16},{176,-44}},
          lineColor={0,0,255},
          textString="%name"),
        Rectangle(extent={{-100,100},{100,-100}}, lineColor={0,0,0})}));
end Urea;