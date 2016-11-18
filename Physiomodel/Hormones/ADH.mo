within Physiomodel.Hormones;
model ADH
    extends Physiolibrary.Icons.Hypophysis;
    // outer parameter Real ECF_Vol(final displayUnit="ml");

    constant Physiolibrary.Types.Volume NormalMedullaVolume = 31e-6
    "Normal kidney medulla volume (31ml)";
    constant Physiolibrary.Types.Volume NormalECFVolume = 14.3610097207699e-3
    "normal volume of extracellular fluid (15L)";

    Physiolibrary.Chemical.Components.Substance ADHPool(
    stateName="ADHPool.Mass",
    useNormalizedVolume=false,
    solute_start(displayUnit="pmol") = 30e-12/Substances.Vasopressin.mw,
    NominalSolute(displayUnit="mol") = 1e-11)
    "2e-6 g/m3 * 15e-3 m3 = 30e-9 g  .. all initial extracellular insulin"
    annotation (Placement(transformation(extent={{-88,-24},{-68,-4}})));
    Physiolibrary.Chemical.Components.SolutePump secretion(useSoluteFlowInput=
      true)
    annotation (Placement(transformation(extent={{-24,-14},{-44,6}})));
    Physiolibrary.Chemical.Sources.UnlimitedSolutePump synthesis(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{98,-14},{78,6}})));
    Physiolibrary.Chemical.Components.Clearance Liver_clearance(
    useSolutionFlowInput=true, K=0.5)
    annotation (Placement(transformation(extent={{-34,-42},{-14,-22}})));
    Physiolibrary.Blocks.Factors.Spline NeuralEffect(data={{0.50,0.4,0},{1.00,
      1.0,0.4},{1.20,2.0,5.0},{1.50,20.0,0}})
    annotation (Placement(transformation(extent={{-48,8},{-28,28}})));
    Physiolibrary.Types.Constants.MolarFlowRateConst hormoneFlowConstant(k(
      displayUnit="mol/min") = (3.2e-12)/60/Substances.Vasopressin.mw)
    "3.2 ng/min = 3.2/60 ng/s =3.2e-12/60 kg/s"
    annotation (Placement(transformation(extent={{96,20},{90,26}})));
    Physiolibrary.Blocks.Factors.Spline OsmEffect(data={{0.243,0.0,0},{0.253,
      1.0,180},{0.263,5.0,0}}, Xscale=1000)
    annotation (Placement(transformation(extent={{-48,16},{-28,36}})));
    Physiolibrary.Blocks.Factors.Normalization BasicFraction(NormalValue=3.2e-9
      /Substances.Vasopressin.mw)
    annotation (Placement(transformation(extent={{-28,24},{-48,44}})));
    Physiolibrary.Chemical.Components.Clearance Kidney_clearance(
    useSolutionFlowInput=true, K=0.59)
    annotation (Placement(transformation(extent={{-34,-70},{-14,-50}})));
    Physiolibrary.Chemical.Components.Clearance Other_clearance(
    useSolutionFlowInput=true, K=1)
    annotation (Placement(transformation(extent={{-34,-100},{-14,-80}})));
    Physiolibrary.Chemical.Components.Substance           SlowMass(
                                 stateName="ADHSlowMass.Mass",
    solute_start(displayUnit="nmol") = 1.57e-08,
    NominalSolute(displayUnit="mol") = 1e-08)
    annotation (Placement(transformation(extent={{-10,10},{10,-10}},
        rotation=180,
        origin={66,-4})));
    Physiolibrary.Chemical.Components.Substance           FastMass(
                                 stateName="ADHFastMass.Mass",
    solute_start(displayUnit="nmol") = 2.95e-09,
    NominalSolute(displayUnit="mol") = 1e-9)
    annotation (Placement(transformation(extent={{-10,10},{10,-10}},
        rotation=180,
        origin={6,-4})));
    Physiolibrary.Blocks.Factors.Spline Feedback(data={{0,4.0,0},{17000,1.0,-0.0003},
      {20000,0.0,0}}, Xscale=(1e-12)/Substances.Vasopressin.mw)
    annotation (Placement(transformation(extent={{74,2},{94,22}})));
    Physiolibrary.Types.BusConnector busConnector annotation (Placement(
      transformation(extent={{-100,18},{-80,38}}), iconTransformation(
        extent={{-90,-70},{-70,-50}})));
    Physiolibrary.Chemical.Components.SolutePump fluxDown(useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{28,6},{38,16}})));
    Physiolibrary.Chemical.Components.SolutePump fluxUp(useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{38,-14},{28,-24}})));
    Modelica.Blocks.Math.Gain gain1(k(unit="1/s")=0.0043/60)
    annotation (Placement(transformation(extent={{-5,-5},{5,5}},
        rotation=270,
        origin={35,25})));
    Modelica.Blocks.Math.Gain gain3(k(unit="1/s")=0.001/60)
    annotation (Placement(transformation(extent={{-5,-5},{5,5}},
        rotation=90,
        origin={31,-35})));
    Physiolibrary.Types.Constants.MolarFlowRateConst hormoneFlowConstant1(k(
      displayUnit="mol/min") = (3.2e-12)/60/Substances.Vasopressin.mw)
    annotation (Placement(transformation(extent={{-22,42},{-28,48}})));
    Physiolibrary.Chemical.Sensors.ConcentrationMeasure concentrationMeasure1
    annotation (Placement(transformation(extent={{-94,-6},{-74,14}})));
equation
    connect(NeuralEffect.yBase, OsmEffect.y) annotation (Line(
    points={{-38,20},{-38,22}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(OsmEffect.yBase, BasicFraction.y)     annotation (Line(
    points={{-38,28},{-38,30}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(busConnector.Osmreceptors, OsmEffect.u)
                                annotation (Line(
    points={{-90,28},{-90,26},{-46,26}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(busConnector.SympsCNS_PituitaryNA, NeuralEffect.u)
                          annotation (Line(
    points={{-90,28},{-90.9,28},{-90.9,18},{-46,18}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(ADHPool.q_out, secretion.q_out)     annotation (Line(
    points={{-78,-14},{-58,-14},{-58,-4},{-44,-4}},
    color={107,45,134},
    thickness=1,
    smooth=Smooth.None));
    connect(Liver_clearance.q_in, ADHPool.q_out)
                                         annotation (Line(
    points={{-34,-32},{-58,-32},{-58,-14},{-78,-14}},
    color={107,45,134},
    thickness=1,
    smooth=Smooth.None));
    connect(ADHPool.q_out, Kidney_clearance.q_in) annotation (Line(
    points={{-78,-14},{-58,-14},{-58,-60},{-34,-60}},
    color={107,45,134},
    thickness=1,
    smooth=Smooth.None));
    connect(ADHPool.q_out, Other_clearance.q_in) annotation (Line(
    points={{-78,-14},{-58,-14},{-58,-90},{-34,-90}},
    color={107,45,134},
    thickness=1,
    smooth=Smooth.None));
    connect(NeuralEffect.y, secretion.soluteFlow) annotation (Line(
    points={{-38,14},{-38,0}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(secretion.q_in, FastMass.q_out) annotation (Line(
    points={{-24,-4},{6,-4}},
    color={107,45,134},
    thickness=1,
    smooth=Smooth.None));
    connect(SlowMass.q_out, synthesis.q_out) annotation (Line(
    points={{66,-4},{78,-4}},
    color={107,45,134},
    thickness=1,
    smooth=Smooth.None));
    connect(Feedback.y, synthesis.soluteFlow) annotation (Line(
    points={{84,8},{84,0}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Feedback.yBase, hormoneFlowConstant.y) annotation (Line(
    points={{84,14},{84,23},{89.25,23}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(SlowMass.solute, Feedback.u) annotation (Line(
    points={{60,-14},{60,-16},{70,-16},{70,12},{76,12}},
    color={0,0,127},
    smooth=Smooth.None));

    connect(busConnector.Kidney_BloodFlow, Kidney_clearance.solutionFlow)
    annotation (Line(
    points={{-90,28},{-96,28},{-96,-53},{-24,-53}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(busConnector.OtherTissue_BloodFlow, Other_clearance.solutionFlow)
    annotation (Line(
    points={{-90,28},{-96,28},{-96,-83},{-24,-83}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(gain1.y, fluxDown.soluteFlow) annotation (Line(
    points={{35,19.5},{35,13}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(FastMass.solute, gain1.u) annotation (Line(
    points={{-8.88178e-016,-14},{-8.88178e-016,38},{35,38},{35,31}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(gain3.y, fluxUp.soluteFlow) annotation (Line(
    points={{31,-29.5},{31,-21}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(gain3.u, SlowMass.solute) annotation (Line(
    points={{31,-41},{31,-46},{60,-46},{60,-14}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(fluxDown.q_out, SlowMass.q_out) annotation (Line(
    points={{38,11},{46,11},{46,-4},{66,-4}},
    color={107,45,134},
    thickness=1,
    smooth=Smooth.None));
    connect(fluxUp.q_in, SlowMass.q_out) annotation (Line(
    points={{38,-19},{46,-19},{46,-4},{66,-4}},
    color={107,45,134},
    thickness=1,
    smooth=Smooth.None));
    connect(FastMass.q_out, fluxDown.q_in) annotation (Line(
    points={{6,-4},{24,-4},{24,11},{28,11}},
    color={107,45,134},
    thickness=1,
    smooth=Smooth.None));
    connect(FastMass.q_out, fluxUp.q_out) annotation (Line(
    points={{6,-4},{24,-4},{24,-19},{28,-19}},
    color={107,45,134},
    thickness=1,
    smooth=Smooth.None));
    connect(busConnector.GITract_BloodFlow, Liver_clearance.solutionFlow)
    annotation (Line(
    points={{-90,28},{-96,28},{-96,-25},{-24,-25}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(ADHPool.solutionVolume, busConnector.ECFV_Vol) annotation (Line(
    points={{-82,-10},{-82,-6},{-94,-6},{-94,28},{-90,28}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(hormoneFlowConstant1.y, BasicFraction.yBase) annotation (Line(
    points={{-28.75,45},{-38,45},{-38,36}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(BasicFraction.u, FastMass.solute) annotation (Line(
    points={{-30,34},{-12,34},{-12,-18},{-8.88178e-016,-18},{
    -8.88178e-016,-14}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(ADHPool.q_out, concentrationMeasure1.q_in) annotation (Line(
    points={{-78,-14},{-78,4},{-84,4}},
    color={107,45,134},
    thickness=1,
    smooth=Smooth.None));
    connect(concentrationMeasure1.concentration, busConnector.Vasopressin)
    annotation (Line(
    points={{-84,-4},{-84,28},{-90,28}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    annotation (      Icon(coordinateSystem(
      preserveAspectRatio=true, extent={{-100,-100},{100,100}}),
    graphics={Text(
      extent={{-112,120},{122,98}},
      lineColor={0,0,255},
      textString="%name")}));
end ADH;