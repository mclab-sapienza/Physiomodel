within Physiomodel;
package Heat "Body Temperature Balance"
    extends Physiolibrary.Icons.HeatLib;
annotation (Documentation(revisions="<html>
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
    <td><p>2008-2015</p></td>
    </tr>
    <tr>
    <td><p>References:</p></td>
    <td><p>Tom Coleman: HumMod 1.6, University of Mississippi Medical Center</p></td>
    </tr>
    </table>
    <p>Copyright &copy; 2008-2015 Marek Matejak, Charles University in Prague.</p>
    </html>", info="<html>
    <p>Thermoregulation [Benzinger1969,Hardy1961,Schreider1957] maintains the body temperature around 37degC. Heat is produced mostly by metabolismus or work of muscles [Saltin1966]. It is transported to environment[Consolazio1963] through skin, where the skin temperature depends on skin blood flow [Adolph1946,Hardy1938,Hsieh1965,Kamon1968,Pennes1948]. Body can be also heated or cooled by food or drinks [Gephart1915]. </p>
    <p>The temperature is from heat energy calculated using specific heat capacity of tissues [Burton1935,Lipkin1954].</p>
    <p>Thermoreceptors measure the temperature throughout the body and send the signal to hypothalamic centre of termoregulation[Kelso1982,Dodt1952,Hensel1953]. Main response on hypertermia [Blatteis1997,Hart1982,Gaus1917,Consolazio1961] is skin vasodilation and sweating[Armstrong1991,Epstein1999,Latzka1999,Morimoto1998,Quinton1991,Sato1977,1989a,b], where sweat glands could suffer with fatigue[Wyndham1966]. Main responses on hypotermia [Molnar1946,Talbott1941] is skin vasoconstriction and shivering[Carlson1954,Lampietro1960]. The neural acclination are more complex and is different for short time and long time responses [Horowitz2003,Armstrong1991,Piwonka1967].</p>
    <p>The spontaneus loss of heat is by lungs evaporization[Brabbia1957]. </p>
    <p>Temperature has effect on chemical reactions, so the metabolic processes are dependent on it [Abramson1958,Consolazio1961,Dirmi1980,Talbott1941,Matsuoka1994] as well as metabolism of leg muscle[Fink1975]. But the main problem with temperature is denaturisation of proteins at high temperature [Katschinski2004].</p>
    </html>"));
end Heat;