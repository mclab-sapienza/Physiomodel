within Physiomodel.Electrolytes.AcidBase.Tissues;
model InterstitiumBase
    Physiolibrary.Types.RealIO.ConcentrationInput cHCO3
    "tissue interstitial bicarbonate concentration"
                                   annotation (Placement(transformation(extent={{-106,-4},
            {-90,12}}),           iconTransformation(extent={{-10,-10},{10,10}},
        origin={-90,-40})));                         //(final displayUnit="mEq/ml")
    Physiolibrary.Types.RealIO.pHOutput pH_interstitial
    "tissue interstitial pH"                                                      annotation (Placement(
        transformation(extent={{24,-16},{44,4}}),   iconTransformation(
        extent={{-20,-20},{20,20}},
        rotation=270,
        origin={60,-120})));
    Gases.CO2.TissueHCO3 interstitium
    annotation (Placement(transformation(extent={{-22,2},{-2,22}})));
    Modelica.Blocks.Math.InverseBlockConstraints inverseBlockConstraints
    annotation (Placement(transformation(extent={{-34,-16},{8,38}})));
    Physiolibrary.Types.RealIO.TemperatureInput T(
                                  displayUnit="degC")
    "tissue interstitial bicarbonate concentration"
                                   annotation (Placement(transformation(extent={{62,24},
            {40,2}}),             iconTransformation(extent={{-10,-10},{10,10}},
        origin={-90,-72})));
    Physiolibrary.Types.RealIO.PressureInput pCO2(
                                     displayUnit="mmHg")
    "tissue interstitial bicarbonate concentration"
                                   annotation (Placement(transformation(extent={
            {-56,18},{-38,36}}), iconTransformation(
        extent={{-10,-10},{10,10}},
    origin={-90,80})));
equation

    connect(interstitium.cHCO3, inverseBlockConstraints.u2) annotation (Line(
    points={{-4,0},{-4,-8},{-26,-8},{-26,11},{-29.8,11}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(interstitium.pH, inverseBlockConstraints.y2) annotation (Line(
    points={{-21,20},{-24,20},{-24,30},{2,30},{2,11},{4.85,11}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(interstitium.T, T) annotation (Line(
    points={{-3,20},{30,20},{30,13},{51,13}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(inverseBlockConstraints.y1, pH_interstitial) annotation (Line(
    points={{9.05,11},{24,11},{24,-6},{34,-6}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(cHCO3, inverseBlockConstraints.u1) annotation (Line(
    points={{-98,4},{-68,4},{-68,11},{-36.1,11}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(interstitium.pCO2_, pCO2) annotation (Line(
    points={{-21,16.2},{-30.5,16.2},{-30.5,27},{-47,27}},
    color={0,0,127},
    smooth=Smooth.None));
    annotation ( Icon(coordinateSystem(preserveAspectRatio=true,
      extent={{-100,-100},{100,100}}), graphics={
    Rectangle(extent={{-100,100},{100,-100}}, lineColor={0,0,0}),
    Text(
      extent={{34,102},{100,48}},
      lineColor={0,0,0},
      textString="pH"),
    Text(
      extent={{-84,72},{-20,100}},
      lineColor={0,0,0},
      textString="IST")}),
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
    <td>Siggaard Andersen: OSA (2005), University of Copenhagen</td>
    </tr>
    </table>
    <br/><p>Copyright &copy; 2014 Marek Matejak, Charles University in Prague.</p><br/>

    </html>"));
end InterstitiumBase;
