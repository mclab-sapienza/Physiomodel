within Physiomodel;
package CardioVascular "Blood and Cardio-Vascular System"
  extends Physiolibrary.Icons.CardioVascularLib;

annotation (Documentation(revisions="<html>
<table cellspacing=\"2\" cellpadding=\"0\" border=\"0\"><tr>
<td><p>Author:</p></td>
<td>Marek Matejak</td>
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
<td><p><br><a href=\"modelica://Physiomodel.UsersGuide.References\">User&apos;s Guide</a></p><p><br><a href=\"https://www.zotero.org/search/type/group/q/physiomodel\">zotero: Physiomodel</a></p><p><br><a href=\"http://www.hummod.org\">HumMod</a></p><p><br><a href=\"https://www.zotero.org/groups/hummod_references\">zotero: HumMod References</a></p></td>
</tr>
</table>
<p><br>Copyright &copy; 2008-2015 Marek Matejak, Charles University in Prague.</p>
</html>", info="<html>
<p>Heart pump</p>
<p>Cardiac output (CO) as a mean blood flow from heart ventricle is heart rate (HR) multiplied by stroke volume (SV), where stroke volume is difference of end diastolic volume (EDV) [Gaasch1975,Carter1998] and end systolic volume (ESV) [Noda1993]. The HR and heart contractility (in the meaning of ESV) [Suga1976] can be influenced by nervus vagus (main parasympathicus autonomic neural pathway) [Xenopoulos1994], epinephrine [Collins-Nakai1994] or angiotensin II [Kumagai1994]. The most comon descriptions are pressure-volume relations [Sawaga1988] as in famous A-V fistula experiments [Guyton1961] or filling pressure experiments [Suga1974] or less invasive exercise experiments [Little1993].</p>
<p>There is some evidence of non-steady state behaviour of end diastolic volume, because the stroke volume is dependent on heart rate [Ross1965,Sugimoto1966].</p>
<p><br><br>Blood viscosity[Begg1966,Schrier1970]</p>
<p><br>Vasoconstriction [Mellander1992, Shigemi1994]</p>
<p><br>The compliance of systemic arteries is constant around normal working conditions [Roach1957].</p>
<p><br>Systemic veins [Shigemi1994,Echt1974,Gauer1956]</p>
<p><br>Muscle pump effect [Armstrong1985,Laughlin1987,Laughlin1983]</p>
<p><br>Sequestered volume [Ochsner1951,Mayerson1939,Bevegard1962,Pollack1949,Block1930,Henry1950,Thomson1928]</p>
<p><br>Kidney blood flow [Skarlatos1993,Manning1987] - effect to renal arteries [Skov1996]</p>
<p>-myogenic [Auckland1989,Drummond2008,Heyeraas1987]</p>
<p>-tubuloglomerular feedback [Moore1990,Drummond2008,Ito1990]</p>
<p><br>Splanchnic circulation [Maass-Moreno1992,Bradley1953,Bradley1952,Mitzner1974,Laine1979]</p>
<p>- effect of norepinephrine [Greenway1985,Laut1987]</p>
<p>- effect of histamine [Greenway1973]</p>
<p><br><br>Brain blood flow [Kety1948]</p>
<p><br>Blood Volume regulations </p>
<p>- hypoproteinemia [Manning1990,Manning1983]</p>
<p><br>Autoregulation of circulation</p>
<p>- CO on CO2 [Davidson1986]</p>
<p>-  ,Hogan1990,Lash1987,Malo1984,Marshall1995,Metting1989,Metting1988,Weber2000,Borgstr&ouml;m1975,Whalen1974,Frisbee2000,Berg1997,Burattini1994,POHOST1976,Archer1996,Goodman1978,Granger1976,Granger1969,Harder1996,Harder1996,Marshall1988,Frisbee2000,Kunert1996,Prewitt1976,Kuwahira1993]</p>
<p><br>RAAS and other regulations .. see hormones, nerves and drugs</p>
</html>"));


end CardioVascular;

