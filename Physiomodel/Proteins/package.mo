within Physiomodel;
package Proteins "Body Proteins"
        extends Physiolibrary.Icons.ProteinsLib;

        function ProteinsMass2AmountOfSubstance
           input Physiolibrary.Types.Mass m;
           input Physiolibrary.Types.Volume v;
           output Physiolibrary.Types.AmountOfSubstance n;
        algorithm
           n:=(320*101325/760)/(310.15*8.314) *0.001*m + (1160*101325/760)/(310.15*8.314)* (0.001*m)^2 / v;
        end ProteinsMass2AmountOfSubstance;

        function ProteinsMassConcentration2Concentration
           input Physiolibrary.Types.MassConcentration m;
           output Physiolibrary.Types.Concentration n;
        algorithm
           n:=(320*101325/760)/(310.15*8.314) *0.001*m + (1160*101325/760)/(310.15*8.314)* (0.001*m)^2;
        end ProteinsMassConcentration2Concentration;

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
        <p>Extracellular proteins determine the transfer of water between extracellular compartments such as plasma, tissue interstitia [Reed1993] or the glomerular filtration[Manning1987]. Proteins are also acid-base buffers, because side chains of some amino acids buffers the hydrogen ions [VanSlyke1928].</p>
        <p>Plasma proteins: Albumin(66.5kDa) is about 60&percnt; of all prasma protein mass. It is synthetised and degraded in liver and distributed through the body [Beeken1962]. The rest of plasma proteins are mostly globulins. They are almost half-time smaller (about 34kDa), so their plasma molar concentration is higer than albumin in contrast with their plasma mass concentration. Both generate the osmotic pressure on capillary walls [Ahlqvist2003]. </p>
        <p>Problems:</p>
        <p>hypoproteinanemia [Manning1983,1990]</p>
        <p>hypogammaglobulinamia [Wollheim1964]</p>
        </html>"));
        
end Proteins;