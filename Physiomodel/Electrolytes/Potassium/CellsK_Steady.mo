within Physiomodel.Electrolytes.Potassium;
model CellsK_Steady
    import Physiomodel;
    extends Physiolibrary.Icons.Cell;
    Physiolibrary.Types.BusConnector busConnector annotation (Placement(
    transformation(extent={{-94,88},{-82,100}}), iconTransformation(
      extent={{60,60},{100,100}})));
    Physiolibrary.Chemical.Interfaces.ChemicalPort_a q_in
    "sodium concentration in blood incomming to glomerulus capillaries; sodium mass flow is filtration - reabsorbtion"
    annotation (Placement(transformation(extent={{-18,-86},{0,-68}}),
    iconTransformation(extent={{-10,-10},{10,10}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant KCell_Mass(
    varName="KCell.Mass")
    annotation (Placement(transformation(extent={{-50,-4},{-20,26}})));
equation

    q_in.q=0
    annotation ( Icon(coordinateSystem(
    preserveAspectRatio=true, extent={{-100,-100},{100,100}}),
    graphics={Text(
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
    </tr><tr>
    <td></td>
    <td>Noriaki Ikeda: A model of overall regulation of body fluids (1979), Kitasato University</td>
    </tr>
    </table>
    <br/><p>Copyright &copy; 2014 Marek Matejak, Charles University in Prague.</p><br/>

    </html>", info="<html>
    <p>TODO: Ikeda - Potassium glucose flow from ECF to ICF with insulin affects potassium flow to cells.</p>
    </html>"));

    connect(KCell_Mass.y, busConnector.KCell_Mass) annotation (Line(
    points={{-16.25,11},{-16.25,94},{-88,94}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
end CellsK_Steady;