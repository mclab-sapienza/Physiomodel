within Physiomodel.Gases.CO2;

model TissueHCO3
    extends Physiomodel.Gases.CO2.HendersonHasselbach;
    import Modelica.Math;

        /*  Real pK;
        Real aCO2(final displayUnit="mmol/(l.kPa)");
        Real cdCO2(start=3,             final displayUnit="mmol/l");

        Real pCO2(displayUnit="kPa");

        constant Real MiniliterPerLiter(final displayUnit="ml/l")=1000;


        Library.Interfaces.RealOutput_ cHCO3(final displayUnit="mmol/l")
        "outgoing concentration of HCO3"                                                           annotation (Placement(
        transformation(extent={{20,-70},{60,-30}}), iconTransformation(
        extent={{-20,-20},{20,20}},
        rotation=270,
        origin={80,-120})));
        Library.Interfaces.RealInput_ T(final displayUnit="degC") "outgoing temperature" annotation (Placement(transformation(extent={{70,-26},
            {110,14}}),           iconTransformation(extent={{-10,-10},{10,10}},
        rotation=180,
        origin={90,80})));

        Library.Interfaces.RealInput_ pH "outgoing plasma pH" annotation (Placement(transformation(extent={{-120,50},
            {-80,90}}),           iconTransformation(extent={{-100,70},{-80,90}})));
        */
        Physiolibrary.Types.Concentration tCO2(final displayUnit="mmol/l");

        Physiolibrary.Types.RealIO.PressureInput pCO2_(       displayUnit="mmHg")
        "tissue venous partial pressure of CO2"
                                          annotation (Placement(transformation(
                extent={{20,-70},{60,-30}}), iconTransformation(
              extent={{-10,-10},{10,10}},
              origin={-90,42})));               //start=45,

        equation
        pCO2 = pCO2_;

        /*




        //Henderson-Hasselbalch equation:
        pK = 6.1 + (-0.0026)*(T-37);
        pH = pK + log10(max(1e-15,cHCO3/cdCO2));
        cdCO2 = aCO2*pCO2;
        aCO2 = 0.23 * 10^(-0.0092*(T-37)); //solubility depends on temperature

        */
        //total interstitial CO2 from SimpleCO2Solution
        tCO2 = cHCO3 + cdCO2;

        annotation (Icon(coordinateSystem(preserveAspectRatio=true, extent={{-100,
                  -100},{100,100}}), graphics={Rectangle(
                extent={{-100,100},{100,-100}},
                lineColor={0,0,255},
                fillColor={215,215,215},
                fillPattern=FillPattern.Solid), Text(
                extent={{-96,-40},{98,-68}},
                lineColor={0,0,255},
                textString="%name")}),        Documentation(revisions="<html>

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
end TissueHCO3;
