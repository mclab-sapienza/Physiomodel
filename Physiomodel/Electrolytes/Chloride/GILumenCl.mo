within Physiomodel.Electrolytes.Chloride;

model GILumenCl
    extends Physiolibrary.Icons.GILumen;
    Physiolibrary.Chemical.Components.Substance GILumen(
    stateName="GILumenChloride.Mass",
    useNormalizedVolume=false,
    solute_start=(90)/1000)
    annotation (Placement(transformation(extent={{-44,-36},{-24,-16}})));
    Physiolibrary.Chemical.Components.SolutePump Absorbtion(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{-20,-20},{-8,-32}})));
    Modelica.Blocks.Math.Gain Perm(k=0.0015/60)
    annotation (Placement(transformation(extent={{-26,-48},{-20,-42}})));
    Physiolibrary.Chemical.Sources.UnlimitedSolutePump Diet(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{-82,-46},{-62,-26}})));
    Physiolibrary.Chemical.Sources.UnlimitedSolutePumpOut Diarrhea(
    useSoluteFlowInput=true) annotation (Placement(transformation(
    extent={{-10,-10},{10,10}},
    rotation=180,
    origin={-52,-44})));
    Physiolibrary.Types.BusConnector busConnector annotation (Placement(
    transformation(extent={{-92,-4},{-80,8}}), iconTransformation(
    extent={{62,62},{100,100}})));
    Physiolibrary.Types.Constants.MolarFlowRateConst        Constant7(k(
    displayUnit="mmol/day") = 2.3148148148148e-06)
    annotation (Placement(transformation(extent={{-82,-22},{-74,-14}})));
    Physiolibrary.Blocks.Factors.Spline LeptinEffect2(data={{0,3.0,0},{8,1.0,
    -0.04},{50,0.0,0}}, Xscale=1e-6/Substances.Leptin.mw)
    annotation (Placement(transformation(extent={{-82,-38},{-62,-18}})));

    Physiolibrary.Chemical.Interfaces.ChemicalPort_b q_out
    "sodium mass outflow to urine from collecting ducts" annotation (
    Placement(transformation(extent={{14,-28},{30,-14}}),
    iconTransformation(extent={{-10,-10},{10,10}})));
equation

    connect(GILumen.solutionVolume, busConnector.GILumenVolume_Mass)
    annotation (Line(
    points={{-38,-22},{-49,-22},{-49,2},{-86,2}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{3,1},{3,1}}));
    connect(GILumen.q_out, Absorbtion.q_in) annotation (Line(
    points={{-34,-26},{-20,-26}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));
    connect(Diet.q_out, GILumen.q_out) annotation (Line(
    points={{-62,-36},{-42,-36},{-42,-26},{-34,-26}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));
    connect(Diarrhea.soluteFlow, busConnector.GILumenVomitus_ClLoss)
    annotation (Line(
    points={{-56,-48},{-56,2},{-86,2}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{3,1},{3,1}}));
    connect(GILumen.q_out, Diarrhea.q_in) annotation (Line(
    points={{-34,-26},{-42,-26},{-42,-44},{-42,-44}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));
    connect(Perm.y, Absorbtion.soluteFlow) annotation (Line(
    points={{-19.7,-45},{-11.6,-45},{-11.6,-28.4}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Perm.u, GILumen.solute) annotation (Line(
    points={{-26.6,-45},{-28,-45},{-28,-36}},
    color={0,0,127},
    smooth=Smooth.None));

    connect(busConnector.Leptin, LeptinEffect2.u) annotation (Line(
    points={{-86,2},{-90,2},{-90,-28},{-80,-28}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(Constant7.y,LeptinEffect2. yBase) annotation (Line(
    points={{-73,-18},{-72,-18},{-72,-26}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(LeptinEffect2.y, Diet.soluteFlow) annotation (Line(
    points={{-72,-32},{-68,-32}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Absorbtion.q_out, q_out) annotation (Line(
    points={{-8,-26},{8,-26},{8,-21},{22,-21}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
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
    </tr>
    </table>
    <br/><p>Copyright &copy; 2014 Marek Matejak, Charles University in Prague.</p><br/>

    </html>"));
end GILumenCl;