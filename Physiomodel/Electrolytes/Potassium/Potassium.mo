within Physiomodel.Electrolytes.Potassium;
model Potassium
    import Physiomodel;
    extends Physiolibrary.Icons.Potassium;
    Physiolibrary.Chemical.Components.Substance KPool(
    stateName="KPool.Mass",
    useNormalizedVolume=false,
    solute_start=(62.897)/1000)
    annotation (Placement(transformation(extent={{-34,14},{-14,34}})));
    Physiolibrary.Chemical.Sources.UnlimitedSolutePumpOut Hemorrhage(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{20,-86},{40,-66}})));
    Physiolibrary.Chemical.Sources.UnlimitedSolutePumpOut DialyzerActivity(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{20,-100},{40,-80}})));
    Physiolibrary.Chemical.Sources.UnlimitedSolutePump IVDrip(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{0,-80},{20,-60}})));
    Physiolibrary.Chemical.Sources.UnlimitedSolutePump Transfusion(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{0,-94},{20,-74}})));
    Physiolibrary.Chemical.Sensors.ConcentrationMeasure concentrationMeasure2 annotation (Placement(
      transformation(
      extent={{-10,-10},{10,10}},
      origin={-80,42})));
    Physiolibrary.Types.BusConnector busConnector annotation (Placement(
    transformation(extent={{-94,88},{-82,100}}), iconTransformation(
      extent={{60,60},{100,100}})));
    GILumenK gILumenK
    annotation (Placement(transformation(extent={{-74,-40},{-54,-20}})));
    Physiomodel.Electrolytes.Bladder bladder(stateVarName=
      "BladderPotassium.Mass")
    annotation (Placement(transformation(extent={{56,-52},{76,-32}})));
    Physiomodel.Electrolytes.Potassium.KindeyK kindeyK
    annotation (Placement(transformation(extent={{42,-22},{62,-2}})));
    Physiolibrary.Types.Concentration ECF_conc;
    Physiomodel.Electrolytes.SweatGlandSalt sweatGlandSalt(FractReabBasic=0,
    FractReabK=0)
    annotation (Placement(transformation(extent={{22,42},{42,62}})));
    Physiomodel.Electrolytes.Potassium.CellsK
    intracellularPotassium
    annotation (Placement(transformation(extent={{-32,68},{-12,88}})));
equation
    ECF_conc=concentrationMeasure2.concentration;

    connect(KPool.solutionVolume, busConnector.ECFV_Vol) annotation (Line(
    points={{-28,28},{-95,28},{-95,94},{-88,94}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{3,1},{3,1}}));
    connect(Hemorrhage.q_in, KPool.q_out)  annotation (Line(
    points={{20,-76},{22,-76},{22,24},{-24,24}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));
    connect(DialyzerActivity.q_in, KPool.q_out)  annotation (Line(
    points={{20,-90},{22,-90},{22,24},{-24,24}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));
    connect(Transfusion.q_out, KPool.q_out)  annotation (Line(
    points={{20,-84},{22,-84},{22,24},{-24,24}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));
    connect(IVDrip.q_out, KPool.q_out)  annotation (Line(
    points={{20,-70},{22,-70},{22,24},{-24,24}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));
    connect(IVDrip.soluteFlow, busConnector.IVDrip_KRate) annotation (Line(
    points={{14,-66},{14,-64},{-96,-64},{-96,94},{-88,94}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{3,1},{3,1}}));
    connect(Transfusion.soluteFlow, busConnector.Transfusion_KRate)
    annotation (Line(
    points={{14,-80},{-96,-80},{-96,94},{-88,94}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{3,1},{3,1}}));
    connect(busConnector.Hemorrhage_KRate, Hemorrhage.soluteFlow) annotation (
    Line(
    points={{-88,94},{98,94},{98,-72},{34,-72}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-3,1},{-3,1}}));
    connect(DialyzerActivity.soluteFlow, busConnector.DialyzerActivity_K_Flux)
    annotation (Line(
    points={{34,-86},{98,-86},{98,94},{-88,94}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{3,1},{3,1}}));

    connect(concentrationMeasure2.q_in, KPool.q_out) annotation (Line(
    points={{-80,42},{-64,42},{-64,24},{-24,24}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));

    connect(concentrationMeasure2.concentration, busConnector.KPool)
    annotation (Line(
    points={{-80,34},{-64,34},{-64,94},{-88,94}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(gILumenK.busConnector, busConnector) annotation (Line(
    points={{-56,-22},{-56,-16},{-96,-16},{-96,94},{-88,94}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None));
    connect(gILumenK.q_out, KPool.q_out) annotation (Line(
    points={{-64,-30},{-64,24},{-24,24}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(kindeyK.q_out, bladder.q_in) annotation (Line(
    points={{54,-20},{66,-20},{66,-34}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(kindeyK.q_in, KPool.q_out) annotation (Line(
    points={{54,-12},{54,24},{-24,24}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(bladder.busConnector, busConnector) annotation (Line(
    points={{74,-34},{82,-34},{82,94},{-88,94}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None));
    connect(kindeyK.busConnector, busConnector) annotation (Line(
    points={{60,-4},{82,-4},{82,94},{-88,94}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None));
    connect(KPool.solute, busConnector.KPool_mass) annotation (Line(
    points={{-18,14},{-18,6},{-96,6},{-96,94},{-88,94}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{3,1},{3,1}}));
    connect(KPool.q_out, sweatGlandSalt.salt) annotation (Line(
    points={{-24,24},{22,24},{22,46}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(sweatGlandSalt.busConnector, busConnector) annotation (Line(
    points={{40,60},{82,60},{82,94},{-88,94}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None));
    connect(KPool.q_out, intracellularPotassium.q_in) annotation (Line(
    points={{-24,24},{-24,78},{-22,78}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(busConnector, intracellularPotassium.busConnector) annotation (
    Line(
    points={{-88,94},{-14,94},{-14,86}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None));
    connect(concentrationMeasure2.concentration, busConnector.KPool_conc_per_liter)
    annotation (Line(
    points={{-80,34},{-84,34},{-84,94},{-88,94}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    annotation ( Icon(coordinateSystem(
    preserveAspectRatio=true, extent={{-100,-100},{100,100}}),
    graphics={            Text(
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
end Potassium;