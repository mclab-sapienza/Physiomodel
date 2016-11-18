within Physiomodel.Metabolism;


model AminoAcids
    extends Physiolibrary.Icons.AminoAcids;
    //outer parameter Real EFC_Vol(final displayUnit="ml");
    Physiolibrary.Chemical.Interfaces.ChemicalPort_b AminoAcids(conc(final
      displayUnit="mg/ml"), q(final displayUnit="mg/min"))
    "extracellular storage" annotation (Placement(transformation(extent={{80,34},
          {100,54}}),     iconTransformation(extent={{-18,-90},{2,-70}})));
    Physiolibrary.Chemical.Components.Substance AminoAcidsPool(
    useNormalizedVolume=false, solute_start=7500e-6/Substances.AminoAcids.mw)
    "initial 7.5 g"
    annotation (Placement(transformation(extent={{42,34},{62,54}})));
    Physiolibrary.Chemical.Components.Substance CellProteins(
    stateName="CellProtein.Mass",
    useNormalizedVolume=false,
    solute_start(displayUnit="mol") = 7.76/Substances.AminoAcids.mw)
    "amount of amino acids stored in cell proteins (average molar mass of amino acid is 100 g/mol, initial mass 7.76 kg)"
    annotation (Placement(transformation(extent={{-52,-4},{-32,16}})));
    Physiolibrary.Chemical.Sources.UnlimitedSolutePumpOut
                                             Degradation(useSoluteFlowInput=
     true)
    annotation (Placement(transformation(extent={{-64,-84},{-32,-52}})));
    Modelica.Blocks.Math.Gain K(k(unit="1/s")=0.0000053/60)
    annotation (Placement(transformation(extent={{10,-10},{-10,10}},
        rotation=90,
        origin={-42,-42})));
    Physiolibrary.Chemical.Components.Stream Outflow(useSolutionFlowInput=true)
    annotation (Placement(transformation(extent={{-14,18},{6,38}})));
    Physiolibrary.Chemical.Components.Stream Inflow(useSolutionFlowInput=true)
    annotation (Placement(transformation(extent={{8,-30},{-12,-10}})));
    Physiolibrary.Types.Constants.VolumeFlowRateConst       Constant(k(
      displayUnit="ml/min") = 1.4666666666667e-08)
    annotation (Placement(transformation(extent={{-16,38},{-8,46}})));
    Physiolibrary.Types.Constants.VolumeFlowRateConst       Constant1(k(
      displayUnit="ml/min") = 7.7333333333333e-06)
    annotation (Placement(transformation(extent={{-16,-10},{-8,-2}})));
    Physiolibrary.Types.BusConnector busConnector annotation (Placement(
      transformation(extent={{-86,62},{-66,82}}), iconTransformation(extent=
     {{-102,-10},{-82,10}})));
equation

    connect(AminoAcids, AminoAcidsPool.q_out) annotation (Line(
    points={{90,44},{52,44}},
    color={107,45,134},
    thickness=1,
    smooth=Smooth.None));
    connect(Degradation.q_in,CellProteins. q_out)  annotation (Line(
      points={{-64,-68},{-70,-68},{-70,6},{-42,6}},
      color={255,0,0},
      smooth=Smooth.None,
      thickness=1));
    connect(CellProteins.q_out,Outflow. q_in)   annotation (Line(
      points={{-42,6},{-24.9,6},{-24.9,28},{-14,28}},
      color={255,0,0},
      smooth=Smooth.None,
      thickness=1));
    connect(CellProteins.q_out,Inflow. q_out) annotation (Line(
      points={{-42,6},{-24,6},{-24,-18},{-12,-18},{-12,-20}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(Constant.y,Outflow. solutionFlow) annotation (Line(
    points={{-7,42},{-4,42},{-4,35}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Inflow.solutionFlow,Constant1. y) annotation (Line(
    points={{-2,-13},{-2,-6},{-7,-6}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(K.y,Degradation. soluteFlow) annotation (Line(
      points={{-42,-53},{-42,-61.6},{-41.6,-61.6}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(busConnector.ICFV_Vol, CellProteins.solutionVolume) annotation (
    Line(
    points={{-76,72},{-46,72},{-46,10}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(CellProteins.solute,K. u) annotation (Line(
    points={{-36,-4},{-36,-18},{-42,-18},{-42,-30}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(CellProteins.solute, busConnector.CellProteinAA) annotation (Line(
    points={{-36,-4},{-36,-8},{-76,-8},{-76,72}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(busConnector.ECFV_Vol, AminoAcidsPool.solutionVolume) annotation (
    Line(
    points={{-76,72},{48,72},{48,48}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(Outflow.q_out, AminoAcidsPool.q_out) annotation (Line(
    points={{6,28},{24,28},{24,44},{52,44}},
    color={107,45,134},
    thickness=1,
    smooth=Smooth.None));
    connect(Inflow.q_in, AminoAcidsPool.q_out) annotation (Line(
    points={{8,-20},{24,-20},{24,44},{52,44}},
    color={107,45,134},
    thickness=1,
    smooth=Smooth.None));
    annotation (                Icon(coordinateSystem(
          preserveAspectRatio=true, extent={{-100,-100},{100,100}},
        grid={2,2}), graphics={
        Text(
          extent={{-168,-100},{152,-128}},
          lineColor={0,0,255},
          textString="%name"),
    Rectangle(extent={{-100,100},{100,-100}}, lineColor={0,0,0})}));
end AminoAcids;