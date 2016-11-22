within Physiomodel;
package Nerves "Autonimic Nerves"
    extends Physiolibrary.Icons.NervesLib;
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
    <p>General</p>
    <p>The book about autonimic nerve functions by Matias and Bannister [Mathias2013]. Autonomic response is sympathetic (through alpha/beta receptors, connected with catecholamines) or parasympathetic (nervus vagus).</p>
    <p><br>Baroreflex</p>
    <p>Blood pressure, vasoconstriction[Drees1974,Risoe1994] and heart rate is driven by baroreflex [Conci2001,Williamson1993,Plotts1993]. The pressure is measured in carotid sinus receptors [Hayward1993,Imaizumi1993,Mendelowitz1988,Plotts1993,VanDeBorne1999] and ventricular receptors [Little1975,Wennergren1976]. Integration of measured signal is processed in the solitary nucleus of medulla oblongata [Rogers1993]. </p>
    <p><br>Thermoregulation</p>
    <p>Themperature signal from terrmoreceptors is processed by the preoptic area of the anterior hypothalamus [Kelso1982,Dodt1952,Hensel1953].</p>
    </html>"));
end Nerves;
