within Physiomodel.Electrolytes.Sodium;
model GILumen
    extends Physiolibrary.Icons.GILumen;
    Physiolibrary.Chemical.Components.Substance                GILumen(
                          stateName="GILumenSodium.Mass",
    useNormalizedVolume=false,
    solute_start=0.08)
    annotation (Placement(transformation(extent={{-6,-54},{14,-34}})));
    Physiolibrary.Chemical.Components.SolutePump Absorbtion(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{10,-18},{-2,-30}})));
    Modelica.Blocks.Math.Gain Perm(k=0.0015/60)
    annotation (Placement(transformation(extent={{14,-64},{20,-58}})));
    Physiolibrary.Chemical.Sources.UnlimitedSolutePump Diet(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{-36,-68},{-16,-48}})));
    Physiolibrary.Chemical.Sources.UnlimitedSolutePumpOut Diarrhea(
    useSoluteFlowInput=true) annotation (Placement(transformation(
    extent={{-10,-10},{10,10}},
    rotation=180,
    origin={-26,-72})));
    Physiolibrary.Blocks.Factors.Spline LeptinEffect2(data={{0,3.0,0},{8,1.0,
    -0.04},{50,0.0,0}}, Xscale=1e-6/Substances.Leptin.mw)
    annotation (Placement(transformation(extent={{-36,-58},{-16,-38}})));
    Physiolibrary.Types.Constants.MolarFlowRateConst        Constant7(k=
    2.0833333333333e-06)
    annotation (Placement(transformation(extent={{-36,-40},{-28,-32}})));
    Physiolibrary.Types.BusConnector busConnector annotation (Placement(
    transformation(extent={{-62,-72},{-50,-60}}), iconTransformation(
      extent={{60,60},{100,100}})));
    Physiolibrary.Chemical.Interfaces.ChemicalPort_b q_out annotation (
    Placement(transformation(extent={{-10,-10},{10,10}}),
    iconTransformation(extent={{-10,-10},{10,10}})));
equation
    connect(GILumen.q_out,Absorbtion. q_in) annotation (Line(
    points={{4,-44},{16,-44},{16,-24},{10,-24}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));
    connect(Diet.q_out,GILumen. q_out) annotation (Line(
    points={{-16,-58},{-4,-58},{-4,-44},{4,-44}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));
    connect(Diarrhea.soluteFlow, busConnector.GILumenDiarrhea_NaLoss)
    annotation (Line(
    points={{-30,-76},{-30,-78},{-44,-78},{-44,-66},{-56,-66}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(GILumen.q_out,Diarrhea. q_in) annotation (Line(
    points={{4,-44},{-4,-44},{-4,-72},{-16,-72}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));
    connect(Perm.y,Absorbtion. soluteFlow) annotation (Line(
    points={{20.3,-61},{46,-61},{46,-32},{1.6,-32},{1.6,-26.4}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Constant7.y,LeptinEffect2. yBase) annotation (Line(
    points={{-27,-36},{-26,-36},{-26,-46}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(LeptinEffect2.y, Diet.soluteFlow) annotation (Line(
    points={{-26,-52},{-26,-54},{-22,-54}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(busConnector.Leptin,LeptinEffect2. u) annotation (Line(
    points={{-56,-66},{-44,-66},{-44,-48},{-34,-48}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(Absorbtion.q_out, q_out) annotation (Line(
    points={{-2,-24},{-8,-24},{-8,0},{0,0}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(GILumen.solute, busConnector.GILumenSodium_Mass) annotation (Line(
    points={{10,-54},{10,-66},{-56,-66}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(GILumen.solute, Perm.u) annotation (Line(
    points={{10,-54},{10,-61},{13.4,-61}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(busConnector.GILumenVolume_Mass, GILumen.solutionVolume)
    annotation (Line(
    points={{-56,-66},{-56,-30},{0,-30},{0,-40}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
end GILumen;