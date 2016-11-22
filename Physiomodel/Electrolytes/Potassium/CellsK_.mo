within Physiomodel.Electrolytes.Potassium;
model CellsK_
        import Physiomodel;
        extends Physiolibrary.Icons.Cell;

        parameter String stateName;
        parameter Real initialSoluteMass;
        Physiolibrary.Chemical.Components.Substance KCell(
        stateName=stateName,
        useNormalizedVolume=false,
        solute_start=(initialSoluteMass)/1000)
        annotation (Placement(transformation(extent={{2,46},{22,66}})));
        Physiolibrary.Chemical.Components.SolutePump KFluxToCell(
        useSoluteFlowInput=true)                             annotation (
        Placement(transformation(
        extent={{-6,-6},{6,6}},
        rotation=90,
        origin={6,-10})));
        Modelica.Blocks.Math.Gain Perm1(k=0.002)
        annotation (Placement(transformation(extent={{-4,-4},{4,4}},
        rotation=270,
        origin={-68,32})));
        Physiolibrary.Chemical.Components.SolutePump KFluxToPool(
        useSoluteFlowInput=true)                             annotation (
        Placement(transformation(
        extent={{-6,-6},{6,6}},
        rotation=270,
        origin={48,-56})));
        Modelica.Blocks.Math.Feedback feedback
        annotation (Placement(transformation(extent={{54,-18},{62,-26}})));
        Physiolibrary.Types.Constants.ElectricChargeConst KCell_CaptiveMass(k=
        210338.040982)
        annotation (Placement(transformation(extent={{72,-4},{62,-14}})));
        Modelica.Blocks.Math.Gain Perm2(k=7.4e-5)
        annotation (Placement(transformation(extent={{-3,-3},{3,3}},
        rotation=270,
        origin={67,-27})));
        Physiomodel.Metabolism.deprecated.Input2EffectDelayed splineDelayByDay(
        data={{0,0.9,0.0},{300,1.0,0.00025},{1500,1.1,0.0}},
        Tau=120*1440,
        stateName="PotassiumToCell_AldoEffect") annotation (Placement(transformation(
        extent={{10,-10},{-10,10}},
        origin={-68,18})));
        Physiolibrary.Chemical.Sensors.ConcentrationMeasure concentrationMeasure1(
        toAnotherUnitCoef=1000, unitsString="mEq/l") annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        origin={-24,74})));
        Physiolibrary.Chemical.Sensors.MolarFlowMeasure flowMeasure annotation (
        Placement(transformation(
        extent={{-8,8},{8,-8}},
        rotation=90,
        origin={6,-76})));
        Physiolibrary.Chemical.Components.SolutePump KFluxToCellWithGlucose(
        useSoluteFlowInput=true)
        annotation (Placement(transformation(
        extent={{-6,-6},{6,6}},
        rotation=90,
        origin={-28,-44})));
        IkedaPotasiumIntoICFFactor IkedaIntoICF annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        origin={-68,2})));
        Physiolibrary.Types.BusConnector busConnector annotation (Placement(
        transformation(extent={{-94,88},{-82,100}}), iconTransformation(
        extent={{60,60},{100,100}})));
        Physiolibrary.Chemical.Interfaces.ChemicalPort_a q_in
        "sodium concentration in blood incomming to glomerulus capillaries; sodium mass flow is filtration - reabsorbtion"
        annotation (Placement(transformation(extent={{-4,-94},{14,-76}}),
        iconTransformation(extent={{-10,-10},{10,10}})));

        Modelica.Blocks.Interfaces.RealInput
                                   additionalInflow annotation (
        Placement(transformation(extent={{-122,-74},{-82,-34}}),
        iconTransformation(extent={{-100,-74},{-60,-34}})));
        Modelica.Blocks.Interfaces.RealInput
                                   CellH2O_Vol annotation (Placement(
        transformation(extent={{-70,42},{-30,82}}), iconTransformation(
        extent={{-100,18},{-60,58}})));
        Modelica.Blocks.Interfaces.RealOutput KCell_Mass
        annotation (Placement(transformation(extent={{70,18},{90,38}})));
        Modelica.Blocks.Interfaces.RealOutput KCell_conc
        annotation (Placement(transformation(extent={{44,72},{64,92}})));
equation

    connect(KFluxToCell.q_out, KCell.q_out) annotation (Line(
    points={{6,-4},{6,56},{12,56}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));
    connect(KCell.q_out, KFluxToPool.q_in) annotation (Line(
    points={{12,56},{48,56},{48,-50}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));
    connect(KCell.solute, feedback.u1) annotation (Line(
    points={{12,46},{12,-22},{54.8,-22}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(KCell_CaptiveMass.y, feedback.u2) annotation (Line(
    points={{60.75,-9},{58,-9},{58,-18.8}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(feedback.y, Perm2.u) annotation (Line(
    points={{61.6,-22},{67.3,-22},{67.3,-23.4},{67,-23.4}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(KFluxToPool.soluteFlow, Perm2.y) annotation (Line(
    points={{50.4,-58.4},{67,-58.4},{67,-30.3}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Perm1.y, splineDelayByDay.yBase) annotation (Line(
    points={{-68,27.6},{-68,20}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(splineDelayByDay.u, busConnector. AldoPool_Aldo) annotation (Line(
    points={{-58.2,18},{-58.2,94},{-88,94}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{3,1},{3,1}}));
    connect(KCell.q_out, concentrationMeasure1.q_in) annotation (Line(
    points={{12,56},{-24,56},{-24,72}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(flowMeasure.q_out, KFluxToPool.q_out) annotation (Line(
    points={{6,-68},{6,-62},{48,-62}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(flowMeasure.q_out, KFluxToCell.q_in) annotation (Line(
    points={{6,-68},{6,-16}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(flowMeasure.q_out, KFluxToCellWithGlucose.q_in) annotation (
    Line(
    points={{6,-68},{6,-66},{-28,-66},{-28,-50}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(KFluxToCellWithGlucose.q_out, KCell.q_out) annotation (Line(
    points={{-28,-38},{-28,56},{12,56}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(IkedaIntoICF.y, KFluxToCell.soluteFlow) annotation (Line(
    points={{-68,-3.2},{-68,-7.6},{3.6,-7.6}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(splineDelayByDay.y, IkedaIntoICF.yBase) annotation (Line(
    points={{-68,16},{-68,7}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(IkedaIntoICF.Artys_pH, busConnector. Artys_pH) annotation (Line(
    points={{-78,5},{-86,6},{-100,6},{-100,94},{-88,94}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{3,1},{3,1}}));

    connect(busConnector.KPool_per_liter, IkedaIntoICF.PotasiumECF_conc)
    annotation (Line(
    points={{-88,94},{-100,94},{-100,0},{-78,0},{-78,-1}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(flowMeasure.q_in, q_in) annotation (Line(
    points={{6,-84},{5,-84},{5,-85}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(busConnector.KPool_mass, Perm1.u) annotation (Line(
    points={{-88,94},{-68,94},{-68,36.8}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));

    connect(KFluxToCellWithGlucose.soluteFlow, additionalInflow)
    annotation (Line(
    points={{-30.4,-41.6},{-60,-41.6},{-60,-54},{-102,-54}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(KCell.solutionVolume, CellH2O_Vol) annotation (Line(
    points={{8,60},{-22,60},{-22,62},{-50,62}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(KCell.solute, KCell_Mass) annotation (Line(
    points={{12,46},{12,28},{80,28}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(concentrationMeasure1.concentration, KCell_conc) annotation (Line(
    points={{-24,78},{-24,82},{54,82}},
    color={0,0,127},
    smooth=Smooth.None));
    annotation ( Icon(coordinateSystem(
        preserveAspectRatio=true, extent={{-100,-100},{100,100}}),
      graphics={Text(
        extent={{-112,-102},{108,-128}},
        lineColor={0,0,255},
        textString="%name"), Rectangle(
        extent={{-100,100},{100,-100}},
        lineColor={0,0,255},
        fillColor={255,255,255},
        fillPattern=FillPattern.Solid)}),
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
end CellsK_;