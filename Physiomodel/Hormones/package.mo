within Physiomodel;
package Hormones "Hormones"
        extends Physiolibrary.Icons.HormonesLib;

        package Insulin_Physiolibrary = Physiolibrary(Types(
          redeclare type Concentration = Real(quantity="Insulin Concentration",unit="1/m3",displayUnit="iu/l"),
          redeclare type AmountOfSubstance = Real(quantity="Unsulin AmountOfSubstance",unit="1",displayUnit="iu"),
          redeclare type MolarFlowRate = Real(quantity="Insulin Flow Rate",unit="1/s",displayUnit="iu/min"),
          redeclare type MolarEnergy = Real(quantity="Insulin Internal Energy",unit="J",displayUnit="cal/iu")));

        package EPO_Physiolibrary = Physiolibrary(Types(
          redeclare type Concentration = Real(quantity="EPO Concentration",unit="1/m3",displayUnit="iu/l"),
          redeclare type AmountOfSubstance = Real(quantity="EPO AmountOfSubstance",unit="1",displayUnit="iu"),
          redeclare type MolarFlowRate = Real(quantity="EPO Flow Rate",unit="1/s",displayUnit="iu/min"),
          redeclare type MolarEnergy = Real(quantity="EPO Internal Energy",unit="J",displayUnit="cal/iu")));

        package TSH_Physiolibrary = Physiolibrary(Types(
          redeclare type Concentration = Real(quantity="TSH Concentration",unit="1/m3",displayUnit="iu/l"),
          redeclare type AmountOfSubstance = Real(quantity="TSH AmountOfSubstance",unit="1",displayUnit="iu"),
          redeclare type MolarFlowRate = Real(quantity="TSH Flow Rate",unit="1/s",displayUnit="iu/min"),
          redeclare type MolarEnergy = Real(quantity="TSH Internal Energy",unit="J",displayUnit="cal/iu")));

        /*  package ADH_Physiolibrary = Physiolibrary(Types(
        redeclare type Concentration = Real(quantity="ADH Concentration",unit="1/m3",displayUnit="iu/l"),
        redeclare type AmountOfSubstance = Real(quantity="ADH AmountOfSubstance",unit="1",displayUnit="iu"),
        redeclare type MolarFlowRate = Real(quantity="ADH Flow Rate",unit="1/s",displayUnit="iu/min"),
        redeclare type MolarEnergy = Real(quantity="ADH Internal Energy",unit="J",displayUnit="cal/iu")));
        */
        package Renin_Physiolibrary = Physiolibrary(Types(
          redeclare type Concentration = Real(quantity="Renin Goldblat Concentration",unit="1/m3",displayUnit="Gu/l"),
          redeclare type AmountOfSubstance = Real(quantity="Renin Goldblat AmountOfSubstance",unit="1",displayUnit="Gu"),
          redeclare type MolarFlowRate = Real(quantity="Renin Goldblat Flow Rate",unit="1/s",displayUnit="Gu/min"),
          redeclare type MolarEnergy = Real(quantity="Renin Goldblat Internal Energy",unit="J",displayUnit="cal/Gu")));

       //  constant Physiolibrary.Types.MolarMass ADHMolarMass=1.084 "kDa = molar mass of arginine vassopressin";
       
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
        <p>Vasopressin (Antidiuretic hormone, ADH)</p>
        <p>book about ADH [Glickson1974], pharmacological properties[Berde1968]</p>
        <p>effect on collecting duct [Lankford1991,Young1977]</p>
        <p>effect on hemodynamics [Erwald1978]</p>
        <p>water regulation [Baldes1934]</p>
        <p>infusion[Atherton1971]</p>
        <p><br>Atrial Natriuretic Peptide (ANP)</p>
        <p>synthesis [Ruskoaho1992]</p>
        <p>release [Ruskoaho1992,Metzler1986,Raine1986]</p>
        <p>degradation [Yandle1986,Ruskoaho1992,Schreij1996]</p>
        <p>general[deZeeuw1992], properties [Maack1985]</p>
        <p>effect on salt excretion [Conte1992, Mizelle1990]</p>
        <p>effect on hemodynamics [Nishikimi1994]</p>
        <p>salt regulations [Nicholls1987,Renkin1996,Weidmann1986]</p>
        <p>infusion[Tikkanen1985]</p>
        <p><br>Renin</p>
        <p>release [Seeliger1999,Almgard1975,Wine1969,Roarty1988]</p>
        <p>degradation [Devaux1968,Hannon1969,Christlieb1968]</p>
        <p>inhibition [Brunner1979,Case1977]</p>
        <p>enzimatic activity [Morton1980]</p>
        <p>tubuloglomerular feedback(TGF) [Braam1993]</p>
        <p>RAAS [Krekels1997,MacGregor1981,Regoli 1962]</p>
        <p><br>Angiotensin</p>
        <p>receptor blockage [Mazzolai1999]</p>
        <p>effect on hemodynamics [Hakkinen1995,Symons1999]</p>
        <p>effect on nerves [Kumagai1994]</p>
        <p>effect on kidney [Hall1979] - natriuresis[Olsen1985]</p>
        <p>effect on aldosterone secretion [Scholer1973]</p>
        <p>infusion [Ames1965, Symons1999] </p>
        <p><br>Aldosterone</p>
        <p>secretion on AngiotensinII and blood pressure [Deheneffe1976,Oelkrs1974,Scholer1973]</p>
        <p>secretion on salts and osmolarity [Schneider1985]</p>
        <p>effect on Na+, K+ and water excretion [Ganong1958,Barger1958]</p>
        <p>effect in skeletal muscle[1970]</p>
        <p><br>Insulin</p>
        <p>Glucagon</p>
        <p>EPO</p>
        <p>Thyroxine</p>
        <p>Thyrotropin</p>
        <p>Leptin</p>
        <p><br>Catecholamins (Adrenalin and Noradrenalin)</p>
        </html>"));
       
end Hormones;