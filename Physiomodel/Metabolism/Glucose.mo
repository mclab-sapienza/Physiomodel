within Physiomodel.Metabolism;
model Glucose
    extends Physiolibrary.Icons.Glucose;
    //outer parameter Real EFC_Vol(final displayUnit="ml");
    Physiolibrary.Chemical.Components.Substance GlucosePool(
    stateName="GlucosePool.Mass",
    useNormalizedVolume=false,
    solute_start(displayUnit="mol") = 15.513e-3/Substances.Glucose.mw)
    annotation (Placement(transformation(extent={{-76,46},{-56,66}})));
    Physiolibrary.Chemical.Sources.UnlimitedSolutePumpOut
                                              Decomposition(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{-86,16},{-66,36}})));
    Modelica.Blocks.Math.Gain K(k(unit="1/s")=0.0007/60)
    annotation (Placement(transformation(extent={{3,-3},{-3,3}},
      rotation=90,
      origin={-71,37})));
    Physiolibrary.Chemical.Components.Stream Glomerulus(useSolutionFlowInput=
      true)
    annotation (Placement(transformation(extent={{-34,66},{-14,86}})));
    Physiolibrary.Chemical.Components.Reabsorption Reabsorbtion(MaxReabsorption(
      displayUnit="mol/min") = 0.250/Substances.Glucose.mw/60)
    " TubularMax  =  250.0 mg/min"
    annotation (Placement(transformation(extent={{2,66},{22,86}})));
    Physiolibrary.Chemical.Interfaces.ChemicalPort_a q_out(conc(final
      displayUnit="mg/ml"), q(final displayUnit="mg/min")) annotation (
    Placement(transformation(extent={{-40,18},{-20,38}}),
      iconTransformation(extent={{-10,50},{10,70}})));
    Physiolibrary.Types.BusConnector busConnector annotation (Placement(
      transformation(extent={{-100,0},{-80,20}}), iconTransformation(extent=
         {{-100,-12},{-80,8}})));
    Physiolibrary.Chemical.Sensors.MolarFlowMeasure flowMeasure
    annotation (Placement(transformation(extent={{50,66},{70,86}})));
    Physiolibrary.Chemical.Sensors.ConcentrationMeasure concentrationMeasure
    annotation (Placement(transformation(extent={{-82,74},{-62,94}})));
    Modelica.Blocks.Math.Add3 YGLS "Ikeda glucose to cells flow"
    annotation (Placement(transformation(extent={{-4,-26},{14,-8}})));
    Electrolytes.Bladder bladder(                      stateVarName=
        "BladderGlucose.Mass")
    annotation (Placement(transformation(extent={{70,36},{90,56}})));
equation
    connect(Decomposition.q_in, GlucosePool.q_out) annotation (Line(
      points={{-86,26},{-90,26},{-90,56},{-66,56}},
      color={255,0,0},
      smooth=Smooth.None,
      thickness=1));
    connect(Glomerulus.q_out, Reabsorbtion.Inflow) annotation (Line(
      points={{-14,76},{-6,76},{-6,80},{2,80}},
      color={255,0,0},
      smooth=Smooth.None,
      thickness=1));
    connect(GlucosePool.q_out, Glomerulus.q_in) annotation (Line(
      points={{-66,56},{-44.9,56},{-44.9,76},{-34,76}},
      color={255,0,0},
      smooth=Smooth.None,
      thickness=1));
    connect(Reabsorbtion.Reabsorption, GlucosePool.q_out) annotation (Line(
      points={{12,66},{12,56},{-66,56}},
      color={255,0,0},
      smooth=Smooth.None,
      thickness=1));

    connect(GlucosePool.q_out, q_out)       annotation (Line(
      points={{-66,56},{-30,56},{-30,28}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(busConnector.Glomerulus_GFR, Glomerulus.solutionFlow) annotation (
    Line(
    points={{-90,10},{-100,10},{-100,83},{-24,83}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(Reabsorbtion.Outflow, flowMeasure.q_in) annotation (Line(
      points={{22,80},{36,80},{36,76},{50,76}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(busConnector.CD_Glucose_Outflow, flowMeasure.molarFlowRate)
    annotation (Line(
    points={{-90,10},{60,10},{60,68}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(GlucosePool.q_out, concentrationMeasure.q_in) annotation (Line(
      points={{-66,56},{-60,56},{-60,84},{-72,84}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(YGLS.y, busConnector.GlucoseToCellsFlow) annotation (Line(
      points={{14.9,-17},{20,-16},{24,-16},{24,10},{-90,10}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(busConnector.skeletalMuscle_GlucoseToCellStorageFlow,YGLS. u2)
             annotation (Line(
      points={{-90,10},{-90,-17},{-5.8,-17}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-6,3},{-6,3}}));
    connect(busConnector.liver_GlucoseToCellStorageFlow,YGLS. u1)
    annotation (Line(
      points={{-90,10},{-90,-9.8},{-5.8,-9.8}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-6,3},{-6,3}}));
    connect(busConnector.respiratoryMuscle_GlucoseToCellStorageFlow,YGLS. u3)
    annotation (Line(
      points={{-90,10},{-90,-24.2},{-5.8,-24.2}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-6,3},{-6,3}}));
    connect(flowMeasure.q_out, bladder.q_in) annotation (Line(
      points={{70,76},{80,76},{80,54}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));

    connect(bladder.busConnector, busConnector) annotation (Line(
      points={{88,54},{88,10},{-90,10}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None));
    connect(busConnector.ECFV_Vol, GlucosePool.solutionVolume) annotation (Line(
    points={{-90,10},{-100,10},{-100,60},{-70,60}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(GlucosePool.solute, K.u) annotation (Line(
    points={{-60,46},{-60,40.6},{-71,40.6}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Decomposition.soluteFlow, K.y) annotation (Line(
    points={{-72,30},{-72,33.7},{-71,33.7}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(busConnector.Glucose, concentrationMeasure.concentration)
    annotation (Line(
    points={{-90,10},{-100,10},{-100,76},{-72,76}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(GlucosePool.solute, busConnector.GlucoseECF_Osmoles) annotation (
    Line(
    points={{-60,46},{-60,10},{-90,10}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(K.y, busConnector.GlucoseDecomposition) annotation (Line(
    points={{-71,33.7},{-71,10},{-90,10}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    annotation ( Icon(coordinateSystem(
          preserveAspectRatio=true, extent={{-100,-100},{100,100}}),
        graphics={
        Text(
          extent={{-160,-62},{160,-90}},
          lineColor={0,0,255},
          textString="%name"),
        Rectangle(extent={{-100,100},{100,-100}}, lineColor={0,0,0})}));
end Glucose;
