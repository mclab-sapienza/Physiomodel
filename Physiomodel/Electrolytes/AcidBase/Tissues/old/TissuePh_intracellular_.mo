within Physiomodel.Electrolytes.AcidBase.Tissues.old;

model TissuePh_intracellular_
    parameter Real CellSID_OtherCations(final displayUnit="mEq/l") = 12;
    parameter Real CellSID_StrongAnions(final displayUnit="mEq/l") = 117;
    Physiolibrary.Types.RealIO.ConcentrationInput KCell(
                                final displayUnit="mEq/l")
    "tissue interstitial titratable acidity"
                             annotation (Placement(transformation(extent={{-94,4},
      {-54,44}}),           iconTransformation(extent={{-10,-10},{10,10}},
    origin={-90,0})));
    Physiolibrary.Types.RealIO.ConcentrationInput cLactate(
                                   final displayUnit="mEq/l")
    "tissue lactate concentration"   annotation (Placement(transformation(extent={{-78,-86},
      {-62,-70}}),          iconTransformation(extent={{-10,-10},{10,10}},
    origin={-90,-40})));
    Physiolibrary.Types.RealIO.pHOutput pH "tissue intracellular pH"            annotation (Placement(
    transformation(extent={{66,-42},{86,-22}}), iconTransformation(
    extent={{-20,-20},{20,20}},
    rotation=270,
    origin={60,-120})));
    Physiolibrary.Types.RealIO.PressureInput pCO2(
                               final displayUnit="mmHg")
    "tissue partial CO2 pressure"    annotation (Placement(transformation(extent={{-28,-38},
      {-10,-20}}),         iconTransformation(
    extent={{-10,-10},{10,10}},
    origin={-90,80})));
    Modelica.Blocks.Math.Add cations                                                                                                 annotation (Placement(transformation(extent={{-28,8},
      {-8,28}})));
    Modelica.Blocks.Math.Add anions                                                                                                   annotation (Placement(transformation(extent={{-32,-82},
      {-12,-62}})));
    Modelica.Blocks.Math.Feedback SID "intracellular"                                                                                          annotation (Placement(transformation(extent={{-4,8},{
      16,28}})));
    Physiolibrary.Types.Constants.ConcentrationConst
    electrolytesConcentrationConstant_per_l1(k=(CellSID_OtherCations))
    annotation (Placement(transformation(extent={{-76,-12},{-56,8}})));
    Physiolibrary.Types.Constants.ConcentrationConst
    electrolytesConcentrationConstant_per_l2(k=(CellSID_StrongAnions))
    annotation (Placement(transformation(extent={{-76,-60},{-56,-40}})));
    Modelica.Blocks.Math.Division division
    annotation (Placement(transformation(extent={{32,2},{52,22}})));
    Modelica.Blocks.Math.Log10 log10_1
    annotation (Placement(transformation(extent={{66,2},{86,22}})));
    Modelica.Blocks.Math.Add add1
    annotation (Placement(transformation(extent={{46,-42},{66,-22}})));
    Physiolibrary.Types.Constants.pHConst                   const(k=7.15)
    annotation (Placement(transformation(extent={{14,-48},{34,-28}})));
    Modelica.Blocks.Math.Max max
    annotation (Placement(transformation(extent={{16,-18},{24,-10}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant PCO2_min_value(
    k=0.001)
    annotation (Placement(transformation(extent={{-10,-12},{-2,-4}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant PCO2_min_value1(
    k=10^(-7.15))
    annotation (Placement(transformation(extent={{28,52},{36,60}})));
    Modelica.Blocks.Math.Max max1
    annotation (Placement(transformation(extent={{54,46},{62,54}})));
equation

    connect(anions.y, SID.u2)                                                                                                   annotation (Line(       points={{-11,-72},
        {6,-72},{6,10}},                                                                                                    color={0,0,127},       smooth=Smooth.None));
    connect(cations.y, SID.u1)                                                                                                 annotation (Line(       points={{-7,18},
        {-2,18}},                                                                                                   color={0,0,127},       smooth=Smooth.None));
    connect(electrolytesConcentrationConstant_per_l1.y, cations.u2)                                                                                                 annotation (Line(       points={{-53.5,
      -2},{-36,-2},{-36,12},{-30,12}},                                                                                                  color={0,0,127},       smooth=Smooth.None));
    connect(electrolytesConcentrationConstant_per_l2.y, anions.u1)                                                                                                   annotation (Line(       points={{-53.5,
      -50},{-42,-50},{-42,-66},{-34,-66}},                                                                                                 color={0,0,127},       smooth=Smooth.None));
    connect(KCell, cations.u1)
                       annotation (Line(
    points={{-74,24},{-30,24}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(cLactate, anions.u2)
                           annotation (Line(
    points={{-70,-78},{-34,-78}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(log10_1.y, add1.u1) annotation (Line(
    points={{87,12},{92,12},{92,-6},{40,-6},{40,-26},{44,-26}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(add1.y, pH) annotation (Line(
    points={{67,-32},{76,-32}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(const.y, add1.u2) annotation (Line(
    points={{36.5,-38},{44,-38}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(SID.y, division.u1) annotation (Line(
    points={{15,18},{30,18}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(max.y, division.u2) annotation (Line(
    points={{24.4,-14},{26,-14},{26,6},{30,6}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(pCO2, max.u2) annotation (Line(
    points={{-19,-29},{-3.5,-29},{-3.5,-16.4},{15.2,-16.4}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(PCO2_min_value.y, max.u1) annotation (Line(
    points={{-1,-8},{8.2,-8},{8.2,-11.6},{15.2,-11.6}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(PCO2_min_value1.y, max1.u1) annotation (Line(
    points={{37,56},{46,56},{46,52.4},{53.2,52.4}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(max1.u2, division.y) annotation (Line(
    points={{53.2,47.6},{53.2,29.8},{53,29.8},{53,12}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(max1.y, log10_1.u) annotation (Line(
    points={{62.4,50},{64,50},{64,12}},
    color={0,0,127},
    smooth=Smooth.None));
    annotation ( Icon(coordinateSystem(preserveAspectRatio=true,
        extent={{-100,-100},{100,100}}), graphics={
      Text(
        extent={{34,102},{100,48}},
        lineColor={0,0,0},
        textString="pH"),
      Text(
        extent={{-84,72},{-20,100}},
        lineColor={0,0,0},
        textString="ICF"),
      Rectangle(extent={{-100,100},{100,-100}}, lineColor={0,0,0})}),
    Documentation(revisions="<html>

    <table cellspacing=\"2\" cellpadding=\"0\" border=\"0\"><tr>
    <td><p>Author:</p></td>
    <td><p>Marek Matejak</p></td>
    </tr>
    <tr>
    <td><p>License:</p></td>
    <td><p><a href=\"http://www.physiomodel.org/license.html\">Physiomodel License 1.0</a> </p></td>
    </tr>

    <tr>
    <td><p>Date of:</p></td>
    <td><p>2009</p></td>
    </tr>
    <tr>
    <td><p>References:</p></td>
    <td><p>Tom Coleman: QHP 2008 beta 3, University of Mississippi Medical Center</p></td>
    </tr>
    </table>
    <br/><p>Copyright &copy; 2014 Marek Matejak, Charles University in Prague.</p><br/>

    </html>"));
end TissuePh_intracellular_;