within Physiomodel.Electrolytes.AcidBase.Tissues;
model BloodBase
    extends Physiomodel.Electrolytes.AcidBase.BloodPhBase;

    Physiolibrary.Types.RealIO.VolumeDensityOfChargeInput ctHox_lessLactate(
                                      displayUnit="mEq/l")
    "titratable acidity of oxygenated blood"
                                   annotation (Placement(transformation(extent={{-54,62},
            {-14,102}}),          iconTransformation(extent={{-10,-10},{10,10}},
        origin={-90,0})));
    Physiolibrary.Types.RealIO.TemperatureInput T(
                                   displayUnit="degC")
    "tissue interstitial bicarbonate concentration"
                                   annotation (Placement(transformation(extent={{62,24},
            {40,2}}),             iconTransformation(extent={{-10,-10},{10,10}},
        origin={-90,-72})));
    Physiolibrary.Types.RealIO.ConcentrationInput cLactate
    "titratable acidity of oxygenated blood"
                                   annotation (Placement(transformation(extent={{-6,66},
            {34,106}}),           iconTransformation(extent={{-10,-10},{10,10}},
        origin={-90,40})));                             //(final displayUnit="mEq/l")
    equation

    //base excess
    ctHox_lessLactate/Modelica.Constants.F + cLactate = _cTHox;

    // cTH_interstitial = -(1-((ctHb_ery/3)/43))*((cHCO3_interstitial-24.5)+betaX*(pH_interstitial-7.42));

    annotation ( Icon(coordinateSystem(preserveAspectRatio=true,
          extent={{-100,-100},{100,100}}), graphics={Text(
          extent={{30,100},{96,46}},
          lineColor={0,0,0},
          textString="pH"), Text(
          extent={{-96,72},{-12,100}},
          lineColor={0,0,0},
          textString="Blood")}),
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
    <td><p>2013</p></td>
    </tr>
    <tr>
    <td><p>References:</p></td>
    <td>Siggaard Andersen: OSA (2005), University of Copenhagen</td>
    </tr>
    </table>
    <br/><p>Copyright &copy; 2014 Marek Matejak, Charles University in Prague.</p><br/>

    </html>"));
end BloodBase;