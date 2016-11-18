within Physiomodel.Metabolism;
model Lactate
    extends Physiolibrary.Icons.Lactate;
    //outer parameter Real EFC_Vol(final displayUnit="ml");
    Physiolibrary.Chemical.Interfaces.ChemicalPort_b Lactate(q(final
      displayUnit="mEq/min"), conc(
    final displayUnit="mEq/ml",
    min=0,
    start=0)) "extracellular storage" annotation (Placement(transformation(
        extent={{-74,-18},{-54,2}}), iconTransformation(extent={{-10,-10},{
          10,10}})));
    Physiolibrary.Types.BusConnector busConnector annotation (Placement(
      transformation(extent={{-108,86},{-88,106}}), iconTransformation(
        extent={{-90,-70},{-70,-50}})));
    Physiolibrary.Chemical.Sensors.MolarFlowMeasure flowMeasure annotation (
    Placement(transformation(
      extent={{-6,6},{6,-6}},
      rotation=270,
      origin={-16,-16})));
    Physiolibrary.Chemical.Sensors.ConcentrationMeasure concentrationMeasure
    annotation (Placement(transformation(extent={{-10,-54},{10,-34}})));
    Physiolibrary.Chemical.Components.Substance substance(useNormalizedVolume=
      false, solute_start=0.015)
    annotation (Placement(transformation(extent={{-24,-70},{-4,-50}})));
equation

    connect(Lactate, flowMeasure.q_in) annotation (Line(
      points={{-64,-8},{-16,-8},{-16,-10}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(busConnector.ECFV_Vol, substance.solutionVolume) annotation (Line(
    points={{-98,96},{-38,96},{-38,-56},{-18,-56}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(concentrationMeasure.q_in, substance.q_out) annotation (Line(
    points={{0,-44},{-14,-44},{-14,-60}},
    color={107,45,134},
    thickness=1,
    smooth=Smooth.None));
    connect(concentrationMeasure.concentration, busConnector.lactate)
    annotation (Line(
    points={{0,-52},{38,-52},{38,-36},{76,-36},{76,96},{-98,96}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(flowMeasure.molarFlowRate, busConnector.LactateFromTissues)
    annotation (Line(
    points={{-11.2,-16},{76,-16},{76,96},{-98,96}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(flowMeasure.q_out, substance.q_out) annotation (Line(
    points={{-16,-22},{-14,-22},{-14,-60}},
    color={107,45,134},
    thickness=1,
    smooth=Smooth.None));
    connect(concentrationMeasure.concentration, busConnector.LacPool)
    annotation (Line(
    points={{0,-52},{38,-52},{38,-46},{76,-46},{76,96},{-98,96}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(substance.solute, busConnector.LacPool_Mass) annotation (Line(
    points={{-8,-70},{-8,-76},{76,-76},{76,96},{-98,96}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    annotation (                Icon(coordinateSystem(
          preserveAspectRatio=true, extent={{-100,-100},{100,100}},
        grid={2,2}), graphics={
        Text(
          extent={{-168,-100},{152,-128}},
          lineColor={0,0,255},
          textString="%name"),
    Rectangle(extent={{-100,100},{100,-100}}, lineColor={0,0,0})}));
end Lactate;