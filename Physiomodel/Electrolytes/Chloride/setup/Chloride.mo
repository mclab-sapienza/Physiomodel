within Physiomodel.Electrolytes.Chloride.setup;
model Chloride
    import Physiomodel;
    extends Physiolibrary.Icons.Chloride;
    Physiolibrary.Chemical.Sources.UnlimitedSolutePumpOut Hemorrhage(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{-6,-86},{14,-66}})));
    Physiolibrary.Chemical.Sources.UnlimitedSolutePumpOut DialyzerActivity(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{-6,-100},{14,-80}})));
    Physiolibrary.Chemical.Sources.UnlimitedSolutePump IVDrip(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{-26,-80},{-6,-60}})));
    Physiolibrary.Chemical.Sources.UnlimitedSolutePump Transfusion(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{-26,-94},{-6,-74}})));
    Physiolibrary.Types.BusConnector busConnector annotation (Placement(
    transformation(extent={{-92,-4},{-80,8}}), iconTransformation(
    extent={{62,62},{100,100}})));

    Real ECF_conc;
    SweatGlandSalt sweatGlandSalt
    annotation (Placement(transformation(extent={{-34,76},{-18,92}})));
    GILumenCl gILumenCl
    annotation (Placement(transformation(extent={{-58,-38},{-38,-18}})));
    Physiomodel.Electrolytes.Bladder bladder(stateVarName="BladderChloride.Mass")
    annotation (Placement(transformation(extent={{54,-20},{74,0}})));
    Physiomodel.Electrolytes.Chloride.KidneyCl kidneyCl
    annotation (Placement(transformation(extent={{22,6},{42,26}})));
    Physiomodel.Electrolytes.Chloride.setup.ChloridePool ClPool(
    ClPool_conc_per_liter(start=1515.2456531712))
    annotation (Placement(transformation(extent={{-68,14},{-48,34}})));
equation
    ECF_conc = ClPool.ClPool_conc_per_liter;
    connect(Hemorrhage.q_in, ClPool.q_out) annotation (Line(
    points={{-6,-76},{-6,-76},{-6,24},{-58,24}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));
    connect(DialyzerActivity.q_in, ClPool.q_out) annotation (Line(
    points={{-6,-90},{-6,-90},{-6,24},{-58,24}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));
    connect(Transfusion.q_out, ClPool.q_out) annotation (Line(
    points={{-6,-84},{-6,-84},{-6,24},{-58,24}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));
    connect(IVDrip.q_out, ClPool.q_out) annotation (Line(
    points={{-6,-70},{-6,-70},{-6,24},{-58,24}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));
    connect(IVDrip.soluteFlow, busConnector.IVDrip_ClRate) annotation (Line(
    points={{-12,-66},{-12,2},{-86,2}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{3,1},{3,1}}));
    connect(Transfusion.soluteFlow, busConnector.Transfusion_ClRate)
    annotation (Line(
    points={{-12,-80},{-38,-80},{-38,2},{-86,2}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{3,1},{3,1}}));
    connect(busConnector.Hemorrhage_ClRate, Hemorrhage.soluteFlow)
    annotation (Line(
    points={{-86,2},{4.5,2},{4.5,-72},{8,-72}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-3,1},{-3,1}}));
    connect(DialyzerActivity.soluteFlow, busConnector.DialyzerActivity_Cl_Flux)
    annotation (Line(
    points={{8,-86},{8,2},{-86,2}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{3,1},{3,1}}));

    connect(ClPool.q_out, sweatGlandSalt.salt) annotation (Line(
    points={{-58,24},{-62,24},{-62,79.2},{-34,79.2}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(busConnector, gILumenCl.busConnector) annotation (Line(
    points={{-86,2},{-40,2},{-40,-19.9},{-39.9,-19.9}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None));
    connect(gILumenCl.q_out, ClPool.q_out) annotation (Line(
    points={{-48,-28},{-48,24},{-58,24}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(bladder.busConnector, busConnector) annotation (Line(
    points={{72,-2},{72,2},{-86,2}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None));
    connect(sweatGlandSalt.busConnector, busConnector) annotation (Line(
    points={{-19.6,90.4},{-94,90.4},{-94,2},{-86,2}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None));
    connect(kidneyCl.busConnector, busConnector) annotation (Line(
    points={{40.1,24.1},{40.1,2},{-86,2}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None));
    connect(bladder.q_in, kidneyCl.q_out) annotation (Line(
    points={{64,-2},{64,8},{34,8}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(kidneyCl.q_in, ClPool.q_out) annotation (Line(
    points={{34,16},{34,24},{-58,24}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(busConnector.ECFV_Vol, ClPool.EFCV_Vol) annotation (Line(
    points={{-86,2},{-86,32},{-66,32}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(busConnector.BloodIons_StrongAnionsLessCl, ClPool.StrongAnionsLessCl)
    annotation (Line(
    points={{-86,2},{-86,28},{-66,28}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(busConnector.BloodIons_Cations, ClPool.Cations) annotation (Line(
    points={{-86,2},{-86,24},{-66,24}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(busConnector.BloodIons_ProteinAnions, ClPool.NBB) annotation (Line(
    points={{-86,2},{-86,20},{-66,20}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(busConnector.CO2Veins_cHCO3, ClPool.HCO3) annotation (Line(
    points={{-86,2},{-86,16},{-66,16}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(ClPool.ClPool_conc_per_liter, busConnector.ClPool_conc_per_liter)
    annotation (Line(
    points={{-50,32},{-42,32},{-42,2},{-86,2}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(ClPool.ClPool_mass, busConnector.ClPool_mass) annotation (Line(
    points={{-50,28},{-42,28},{-42,2},{-86,2}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
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
end Chloride;