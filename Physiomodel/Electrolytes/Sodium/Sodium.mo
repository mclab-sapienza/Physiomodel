within Physiomodel.Electrolytes.Sodium;
model Sodium
    import Physiomodel;
    extends Physiolibrary.Icons.Sodium;

    Physiolibrary.Chemical.Components.Substance                NaPool(
                               stateName="NaPool.Mass",
    useNormalizedVolume=false,
    solute_start=2.05845)
    annotation (Placement(transformation(extent={{-10,6},{10,26}})));
    Physiolibrary.Chemical.Sources.UnlimitedSolutePumpOut Hemorrhage(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{-42,-70},{-22,-50}})));
    Physiolibrary.Chemical.Sources.UnlimitedSolutePumpOut DialyzerActivity(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{-42,-100},{-22,-80}})));
    Physiolibrary.Chemical.Sources.UnlimitedSolutePump IVDrip(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{-64,-46},{-44,-26}})));
    Physiolibrary.Chemical.Sources.UnlimitedSolutePump Transfusion(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{-62,-88},{-42,-68}})));
    Physiolibrary.Chemical.Sensors.ConcentrationMeasure
    concentrationMeasure1
    annotation (Placement(transformation(
      extent={{-10,-10},{10,10}},
      origin={-60,26})));
    Physiolibrary.Types.BusConnector busConnector annotation (Placement(
    transformation(extent={{-74,84},{-62,96}}), iconTransformation(
      extent={{60,60},{100,100}})));
    Physiolibrary.Types.Concentration ECF_conc;
    SweatGlandSalt sweatGlandSalt
    annotation (Placement(transformation(extent={{52,50},{68,66}})));
    GILumen gILumen
    annotation (Placement(transformation(extent={{-20,54},{0,74}})));
    Physiomodel.Electrolytes.Bladder bladder(stateVarName="BladderSodium.Mass")
    annotation (Placement(transformation(extent={{60,-50},{80,-30}})));
    Physiomodel.Electrolytes.Sodium.KidneyNa kidneyNa
    annotation (Placement(transformation(extent={{52,-8},{72,12}})));
equation
    ECF_conc =concentrationMeasure1.concentration;

    connect(Hemorrhage.q_in, NaPool.q_out) annotation (Line(
    points={{-42,-60},{-42,16},{0,16}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));
    connect(DialyzerActivity.q_in, NaPool.q_out) annotation (Line(
    points={{-42,-90},{-42,16},{0,16}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));
    connect(Transfusion.q_out, NaPool.q_out) annotation (Line(
    points={{-42,-78},{-42,16},{0,16}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));
    connect(IVDrip.q_out, NaPool.q_out) annotation (Line(
    points={{-44,-36},{-42,-36},{-42,16},{0,16}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));
    connect(IVDrip.soluteFlow, busConnector.IVDrip_NaRate) annotation (Line(
    points={{-50,-32},{-74,-32},{-74,90},{-68,90}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(Transfusion.soluteFlow, busConnector.Transfusion_NaRate)
    annotation (Line(
    points={{-48,-74},{-74,-74},{-74,90},{-68,90}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(busConnector.Hemorrhage_NaRate, Hemorrhage.soluteFlow)
    annotation (Line(
    points={{-68,90},{-74,90},{-74,-56},{-28,-56}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(DialyzerActivity.soluteFlow, busConnector.DialyzerActivity_Na_Flux)
    annotation (Line(
    points={{-28,-86},{-74,-86},{-74,90},{-68,90}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(concentrationMeasure1.q_in, NaPool.q_out) annotation (Line(
    points={{-60,26},{-42,26},{-42,16},{0,16}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));

    connect(concentrationMeasure1.concentration, busConnector.NaPool_conc_per_liter)
    annotation (Line(
    points={{-60,18},{-60,90},{-68,90}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));

    connect(NaPool.q_out, sweatGlandSalt.salt) annotation (Line(
    points={{0,16},{52,16},{52,53.2}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(gILumen.busConnector, busConnector) annotation (Line(
    points={{-2,72},{-2,90},{-68,90}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None));
    connect(gILumen.q_out, NaPool.q_out) annotation (Line(
    points={{-10,64},{0,64},{0,16}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(bladder.busConnector, busConnector) annotation (Line(
    points={{78,-32},{78,90},{-68,90}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None));
    connect(busConnector, sweatGlandSalt.busConnector) annotation (Line(
    points={{-68,90},{78,90},{78,64},{66.4,64},{66.4,64.4}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None));
    connect(kidneyNa.q_out, bladder.q_in) annotation (Line(
    points={{64,-6},{70,-6},{70,-32}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(kidneyNa.q_in, NaPool.q_out) annotation (Line(
    points={{64,2},{64,16},{0,16}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(kidneyNa.busConnector, busConnector) annotation (Line(
    points={{70,10},{78,10},{78,90},{-68,90}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None));
    connect(busConnector.ECFV_Vol, NaPool.solutionVolume) annotation (Line(
    points={{-68,90},{-24,90},{-24,20},{-4,20}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(NaPool.solute, busConnector.NaPool_mass) annotation (Line(
    points={{6,6},{6,-4},{-74,-4},{-74,90},{-68,90}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(concentrationMeasure1.concentration, busConnector.NaPool)
    annotation (Line(
    points={{-60,18},{-66,18},{-66,90},{-68,90}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    annotation ( Icon(coordinateSystem(
    preserveAspectRatio=true, extent={{-100,-100},{100,100}}),
    graphics={             Text(
    extent={{-110,-104},{110,-130}},
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
end Sodium;