within Physiomodel.Electrolytes.Potassium;
model GILumenK
        extends Physiolibrary.Icons.GILumen;
        Physiolibrary.Chemical.Components.Substance GILumen(
        stateName="GILumenPotassium.Mass",
        useNormalizedVolume=false,
        solute_start=(25)/1000)
        annotation (Placement(transformation(extent={{-18,-36},{2,-16}})));
        Physiolibrary.Chemical.Components.SolutePump Absorbtion(
        useSoluteFlowInput=true)
        annotation (Placement(transformation(extent={{6,-20},{18,-32}})));
        Modelica.Blocks.Math.Gain Perm(k(unit="1/s")=0.002/60)
        annotation (Placement(transformation(extent={{0,-48},{6,-42}})));
        Physiolibrary.Chemical.Sources.UnlimitedSolutePump Diet(
        useSoluteFlowInput=true)
        annotation (Placement(transformation(extent={{-66,-42},{-46,-22}})));
        Physiolibrary.Chemical.Sources.UnlimitedSolutePumpOut Diarrhea(
        useSoluteFlowInput=true) annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=180,
        origin={-56,-44})));
        Physiolibrary.Types.BusConnector busConnector annotation (Placement(
        transformation(extent={{-94,88},{-82,100}}), iconTransformation(
          extent={{60,60},{100,100}})));
        Physiolibrary.Types.Constants.MolarFlowRateConst        Constant7(k(
        displayUnit="mmol/min") = 8.1018518518518e-07)
        annotation (Placement(transformation(extent={{-66,-16},{-58,-8}})));
        Physiolibrary.Blocks.Factors.Spline LeptinEffect2(data={{0,3.0,0},{8,1.0,
        -0.04},{50,0.0,0}}, Xscale=1e-6/Substances.Leptin.mw)
        annotation (Placement(transformation(extent={{-66,-30},{-46,-10}})));
        Physiolibrary.Chemical.Interfaces.ChemicalPort_b q_out
        "sodium mass outflow to urine from collecting ducts" annotation (
        Placement(transformation(extent={{56,-24},{72,-10}}),
        iconTransformation(extent={{-10,-10},{10,10}})));
equation

    connect(GILumen.solutionVolume, busConnector.GILumenVolume_Mass)
    annotation (Line(
    points={{-12,-22},{-24,-22},{-24,-4},{-96,-4},{-96,94},{-88,94}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{3,1},{3,1}}));
    connect(GILumen.q_out, Absorbtion.q_in) annotation (Line(
    points={{-8,-26},{6,-26}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));
    connect(Diet.q_out, GILumen.q_out) annotation (Line(
    points={{-46,-32},{-16,-32},{-16,-26},{-8,-26}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));
    connect(Diarrhea.soluteFlow, busConnector.GILumenDiarrhea_KLoss)
    annotation (Line(
    points={{-60,-48},{-96,-48},{-96,94},{-88,94}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{3,1},{3,1}}));
    connect(GILumen.q_out, Diarrhea.q_in) annotation (Line(
    points={{-8,-26},{-16,-26},{-16,-44},{-46,-44}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));
    connect(Perm.y, Absorbtion.soluteFlow) annotation (Line(
    points={{6.3,-45},{14.4,-45},{14.4,-28.4}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Perm.u, GILumen.solute) annotation (Line(
    points={{-0.6,-45},{-2,-45},{-2,-36}},
    color={0,0,127},
    smooth=Smooth.None));

    connect(GILumen.solute, busConnector.GILumenPotasium_Mass) annotation (
    Line(
    points={{-2,-36},{-2,-54},{-96,-54},{-96,94},{-88,94}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{3,1},{3,1}}));

    connect(GILumen.solute, busConnector.GILumenPotassium_Mass) annotation (
    Line(
    points={{-2,-36},{-2,-54},{-96,-54},{-96,94},{-88,94}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(busConnector.Leptin, LeptinEffect2.u) annotation (Line(
    points={{-88,94},{-96,94},{-96,-20},{-64,-20}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(Constant7.y,LeptinEffect2. yBase) annotation (Line(
    points={{-57,-12},{-56,-12},{-56,-18}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(LeptinEffect2.y, Diet.soluteFlow) annotation (Line(
    points={{-56,-24},{-56,-28},{-52,-28}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Absorbtion.q_out, q_out) annotation (Line(
    points={{18,-26},{42,-26},{42,-17},{64,-17}},
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
    </tr><tr>
    <td></td>
    <td>Noriaki Ikeda: A model of overall regulation of body fluids (1979), Kitasato University</td>
    </tr>
    </table>
    <br/><p>Copyright &copy; 2014 Marek Matejak, Charles University in Prague.</p><br/>

    </html>", info="<html>
    <p>TODO: Ikeda - Potassium glucose flow from ECF to ICF with insulin affects potassium flow to cells.</p>
    </html>"));
end GILumenK;