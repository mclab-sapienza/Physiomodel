within Physiomodel.Electrolytes.Chloride.setup;
model ChloridePool
    import Physiomodel;
    extends Physiolibrary.Icons.Chloride;

    Real ECF_conc(displayUnit="mEq/l");
    Modelica.Blocks.Interfaces.RealInput EFCV_Vol(displayUnit="ml")
    annotation (Placement(transformation(extent={{-100,60},{-60,100}})));
    Modelica.Blocks.Interfaces.RealOutput ClPool_conc_per_liter(displayUnit="mEq/l")
    annotation (Placement(transformation(extent={{60,60},{100,100}})));
    Modelica.Blocks.Interfaces.RealOutput ClPool_mass(displayUnit="mEq")
    annotation (Placement(transformation(extent={{60,20},{100,60}})));
    Modelica.Blocks.Interfaces.RealInput NBB(displayUnit="mEq/l")
    "non-bicarbonate bases concentration"
    annotation (Placement(transformation(extent={{-100,-60},{-60,-20}})));
    Modelica.Blocks.Interfaces.RealInput StrongAnionsLessCl(displayUnit="mEq/l")
    "all extracellular strong ions concentration"
    annotation (Placement(transformation(extent={{-100,20},{-60,60}})));
    Modelica.Blocks.Interfaces.RealInput Cations(displayUnit="mEq/l")
    "all extracellular cations concentration"
    annotation (Placement(transformation(extent={{-100,-20},{-60,20}})));
    Physiolibrary.Chemical.Interfaces.ChemicalPort_a q_out annotation (
    Placement(transformation(extent={{-34,26},{-16,44}}),
      iconTransformation(extent={{-10,-10},{10,10}})));
    Modelica.Blocks.Interfaces.RealInput HCO3(displayUnit="mEq/l")
    "bicarbonate concentration"
    annotation (Placement(transformation(extent={{-100,-100},{-60,-60}})));
equation
    ClPool_conc_per_liter = Cations - (NBB+HCO3+StrongAnionsLessCl);

    ECF_conc = ClPool_conc_per_liter;
    q_out.conc =  ECF_conc/1000.;

    ClPool_mass=ClPool_conc_per_liter*EFCV_Vol/1000.;
    annotation ( Icon(coordinateSystem(
      preserveAspectRatio=true, extent={{-100,-100},{100,100}}),
    graphics={             Text(
      extent={{-112,-102},{108,-128}},
      lineColor={0,0,255},
      textString="%name")}),
    Documentation(revisions="<html>

    <table>
    <tr>
    <td>Author:</td>
    <td>Marek Matejak</td>
    </tr>
    <tr>
    <td>License:</td>
    <td><a href=\"http://www.physiomodel.org/license.html\">Physiomodel License 1.0</a> </td>
    </tr>
    <tr>
    <td>By:</td>
    <td>Charles University, Prague</td>
    </tr>
    <tr>
    <td>Date of:</td>
    <td>2009</td>
    </tr>
    <tr>
    <td>References:</td>
    <td>Tom Coleman: QHP 2008 beta 3, University of Mississippi Medical Center</td>
    </tr>
    </table>
    <br/><p>Copyright &copy; 2014 Marek Matejak, Charles University in Prague.</p><br/>

    </html>"));
end ChloridePool;