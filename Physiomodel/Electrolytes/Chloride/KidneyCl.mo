within Physiomodel.Electrolytes.Chloride;
model KidneyCl
    import Physiomodel;
    extends Physiolibrary.Icons.Kidney;
    Physiolibrary.Blocks.Factors.Spline PhEffect(data={{7.00,1.00,0},{7.42,
    0.93,-0.5},{7.80,0.00,0}})
    "marek: normal pH corrected from 7.45 to 7.42"
    annotation (Placement(transformation(extent={{16,42},{36,62}})));
    Physiolibrary.Types.BusConnector busConnector annotation (Placement(
    transformation(extent={{-92,-4},{-80,8}}), iconTransformation(
      extent={{62,62},{100,100}})));
    Physiolibrary.Chemical.Components.SolutePump CD_Outflow(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{10,22},{22,10}})));
    Modelica.Blocks.Math.Sum CD_Cations_Outflow(nin=3)
    annotation (Placement(transformation(extent={{42,-38},{52,-28}})));
    Modelica.Blocks.Math.Sum CD_AnionsLessCl_Outflow(nin=3)
    annotation (Placement(transformation(extent={{42,-52},{52,-42}})));
    Modelica.Blocks.Math.Feedback CD_Cl_Outflow
    annotation (Placement(transformation(extent={{60,-42},{78,-24}})));

    Physiolibrary.Chemical.Interfaces.ChemicalPort_a q_in
    "sodium concentration in blood incomming to glomerulus capillaries; sodium mass flow is filtration - reabsorbtion"
    annotation (Placement(transformation(extent={{-44,8},{-26,26}}),
    iconTransformation(extent={{10,-10},{30,10}})));
    Physiolibrary.Chemical.Interfaces.ChemicalPort_b q_out
    "sodium mass outflow to urine from collecting ducts" annotation (
    Placement(transformation(extent={{50,10},{66,24}}),
    iconTransformation(extent={{10,-90},{30,-70}})));
    Modelica.Blocks.Math.Sum CD_AnionsLessCl_Outflow1(
                                                 nin=3)
    annotation (Placement(transformation(extent={{42,-74},{52,-64}})));
    Modelica.Blocks.Math.Gain gain(k=1/Modelica.Constants.F)
    annotation (Placement(transformation(extent={{-40,66},{-20,86}})));
    Physiolibrary.Blocks.Factors.Spline ChloridePoolEffect(data={{0.00,0.0,0},
    {50,1.0,0.0}})
    "electroneutrality does not allow to extract cation without anion"
    annotation (Placement(transformation(extent={{16,30},{36,50}})));
equation

    connect(busConnector.Artys_pH,PhEffect. u) annotation (Line(
    points={{-86,2},{-90,2},{-90,52},{18,52}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(busConnector.CD_Na_Outflow, CD_Cations_Outflow.u[1]) annotation (Line(
    points={{-86,2},{10,2},{10,-32},{40,-32},{40,-33.6667},{41,-33.6667}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(busConnector.CD_NH4_Outflow, CD_Cations_Outflow.u[2]) annotation (
    Line(
    points={{-86,2},{10,2},{10,-38},{41,-38},{41,-33}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,0},{-6,0}}));
    connect(busConnector.CD_K_Outflow, CD_Cations_Outflow.u[3]) annotation (Line(
    points={{-86,2},{10,2},{10,-34},{40,-34},{40,-32.3333},{41,-32.3333}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,-3},{-6,-3}}));
    connect(busConnector.CD_PO4_mEq_Outflow, CD_AnionsLessCl_Outflow.u[1])
    annotation (Line(
    points={{-86,2},{10,2},{10,-46},{40,-46},{40,-47.6667},{41,-47.6667}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(busConnector.CD_SO4_Outflow, CD_AnionsLessCl_Outflow.u[2])
    annotation (Line(
    points={{-86,2},{10,2},{10,-48},{40,-48},{41,-47}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,0},{-6,0}}));
    connect(busConnector.CD_KA_Outflow, CD_AnionsLessCl_Outflow.u[3]) annotation (
    Line(
    points={{-86,2},{10,2},{10,-52},{40,-52},{40,-46.3333},{41,-46.3333}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,-3},{-6,-3}}));
    connect(CD_Cations_Outflow.y, CD_Cl_Outflow.u1) annotation (Line(
    points={{52.5,-33},{52,-34},{52,-33},{61.8,-33}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(q_in, CD_Outflow.q_in) annotation (Line(
    points={{-35,17},{-12.5,17},{-12.5,16},{10,16}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(CD_Outflow.q_out, q_out) annotation (Line(
    points={{22,16},{40,16},{50,18},{58,17}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(busConnector.CD_SO4_Outflow, CD_AnionsLessCl_Outflow1.u[2])
    annotation (Line(
    points={{-86,2},{10,2},{10,-70},{40,-70},{41,-69}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,0},{-6,0}}));
    connect(busConnector.CD_KA_Outflow, CD_AnionsLessCl_Outflow1.u[3])
                                                                  annotation (
    Line(
    points={{-86,2},{10,2},{10,-74},{40,-74},{40,-68.3333},{41,-68.3333}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,-3},{-6,-3}}));
    connect(busConnector.CD_PO4_Outflow, CD_AnionsLessCl_Outflow1.u[1])
    annotation (Line(
    points={{-86,2},{10,2},{10,-66},{41,-66},{41,-69.6667}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None));
    connect(CD_AnionsLessCl_Outflow.y, CD_Cl_Outflow.u2) annotation (Line(
    points={{52.5,-47},{69,-40.2}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(busConnector.CollectingDuct_NetSumCats, gain.u) annotation (Line(
    points={{-86,2},{-84,2},{-84,76},{-42,76}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(gain.y, PhEffect.yBase) annotation (Line(
    points={{-19,76},{26,76},{26,54}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(busConnector.ClPool, ChloridePoolEffect.u) annotation (Line(
    points={{-86,2},{-86,40},{18,40}},
    color={255,204,51},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(PhEffect.y, ChloridePoolEffect.yBase) annotation (Line(
    points={{26,48},{26,42}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(busConnector.CD_Cl_Outflow, ChloridePoolEffect.y) annotation (
    Line(
    points={{-86,2},{-86,32},{26,32},{26,36}},
    color={255,204,51},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(CD_Outflow.soluteFlow, ChloridePoolEffect.y) annotation (Line(
    points={{18.4,13.6},{18.4,6},{26,6},{26,36}},
    color={0,0,127},
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

    </html>", info="<html>
    <p>TODO: Chloride extracellular body concentration should play a role in chloride excretion by kidney?</p>
    <p>In this implementation is chloride outflow driven only by electroneutrality.</p>
    <p>That means - there is hard to calculate steady state for chloride concentration !!</p>
    <p>Chloride concentration sholud be calculate also from internal electroneutrality, better than integrated value from inflow and outflow.</p>
    </html>"));
end KidneyCl;