within Physiomodel;
package Water "Body Water"
    extends Physiolibrary.Icons.WaterLib;

    
        annotation (                   Documentation(revisions="<html>
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
        <p>Sources of water in human body are from diet and base mitochondrial metabolism, where from each consumed oxygen molecule is creader two water molecules by adding hydrogen ions with electrons.</p>
        <p>The amount of plasma volume is regulated by kidney excretion to urine. This process is regulated through hormone Vasopressin(ADH) [Atherton1971,Khokhar1976] with efect on aquapirins - membrane chanels of nephrons in kidney [Gottschalk1959,Nielsen2000].</p>
        <p>The right amount of water in each compartment determines the osmolarities and all concentrations inside compartment. Water can cross the capillary wall to reach the same ospomarity of interstitium and plasma [Landis1933,Xie1995]. From interstitium is transported back to plasma together with proteins by lymphatic system [Guyton1965, Engeset1973,Olszewiski1980,Henriksen1985,Auckland1993].</p>
        <p>Water is also necessary for termoregulation in heat conditions, where evaporation takes heat from body to cool it down. Evaporation can be driven by sweating [Dodt1952,Wyndham1966,Piwonka1967,Benzinger1969,Sato1977,Sato1989a,b] or be spontaneus from lungs [Brebbia1957] and insensible tissues.</p>
        </html>"));
end Water;