within Physiomodel.Proteins;
model Proteins
    extends Physiolibrary.Icons.Proteins;
    Physiolibrary.Types.BusConnector busConnector annotation (Placement(
      transformation(extent={{82,4},{102,24}}), iconTransformation(extent={
          {46,66},{80,100}})));
    Physiolibrary.Chemical.Components.Diffusion UT_Capillary(Conductance(
      displayUnit="l/day") = 3.9351851851852e-09)
    annotation (Placement(transformation(extent={{-2,78},{10,90}})));
    Physiolibrary.Chemical.Components.Diffusion MT_Capillary(Conductance(
      displayUnit="l/day") = 7.4074074074074e-09)
    annotation (Placement(transformation(extent={{-2,32},{10,44}})));
    Physiolibrary.Chemical.Components.Diffusion LT_Capillary(Conductance(
      displayUnit="l/day") = 1.1805555555556e-08)
    annotation (Placement(transformation(extent={{0,-8},{12,4}})));
    Physiolibrary.Chemical.Sources.UnlimitedSolutePumpOut
                                              Hemorrhage(useSoluteFlowInput=
     true)
    annotation (Placement(transformation(extent={{20,-100},{40,-80}})));
    Physiolibrary.Chemical.Sources.UnlimitedSolutePump Transfusion(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{-86,-92},{-66,-72}})));
    Physiolibrary.Chemical.Sources.UnlimitedSolutePump IVDrip(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{-98,-74},{-78,-54}})));
    Physiolibrary.Chemical.Components.Stream UT_Lymph(useSolutionFlowInput=true)
    annotation (Placement(transformation(extent={{10,74},{0,64}})));
    Physiolibrary.Chemical.Components.Stream MT_Lymph(useSolutionFlowInput=true)
    annotation (Placement(transformation(extent={{10,28},{0,18}})));
    Physiolibrary.Chemical.Components.Stream LT_Lymph(useSolutionFlowInput=true)
    annotation (Placement(transformation(extent={{10,-12},{0,-22}})));
    Physiolibrary.Chemical.Components.Stream Change(useSolutionFlowInput=true)
    annotation (Placement(transformation(extent={{-28,-36},{-40,-24}})));
    Physiolibrary.Chemical.Components.Substance plasma(
    stateName="PlasmaProtein.Mass",
    useNormalizedVolume=false,
    solute_start=0.00437)
    annotation (Placement(transformation(extent={{-76,32},{-56,52}})));
    Physiolibrary.Chemical.Components.Substance UpperTorso(
    stateName="UT_InterstitialProtein.Mass",
    useNormalizedVolume=false,
    solute_start=0.00122)
    annotation (Placement(transformation(extent={{76,64},{56,84}})));
    Physiolibrary.Chemical.Components.Substance MiddleTorso(
    stateName="MT_InterstitialProtein.Mass",
    useNormalizedVolume=false,
    solute_start=0.00299)
    annotation (Placement(transformation(extent={{74,20},{54,40}})));
    Physiolibrary.Chemical.Components.Substance LowerTorso(
    stateName="LT_InterstitialProtein.Mass",
    useNormalizedVolume=false,
    solute_start=0.0018)
    annotation (Placement(transformation(extent={{78,-22},{58,-2}})));
    Physiolibrary.Chemical.Components.Substance peritoneum(
    stateName="PeritoneumProtein.Mass",
    useNormalizedVolume=false,
    solute_start=1e-15)
    annotation (Placement(transformation(extent={{-64,-40},{-44,-20}})));

    Physiomodel.Proteins.Synthesis                 synthesis(SynthesisBasic=
      1.6666666666667e-07)
    annotation (Placement(transformation(extent={{-58,54},{-38,74}})));
    Physiomodel.Proteins.Degradation                 degradation(
    DegradationBasic=1.6666666666667e-07)
    annotation (Placement(transformation(extent={{0,-52},{20,-32}})));
    Physiolibrary.Chemical.Components.Diffusion GlomerulusProtein_Perm(
    Conductance=(0)*(1e-6)/60)
    annotation (Placement(transformation(extent={{-2,-70},{18,-50}})));
    Physiolibrary.Chemical.Components.Substance Bladder(
    stateName="BladderProtein.Mass",
    useNormalizedVolume=false,
    solute_start=1e-15)
    annotation (Placement(transformation(extent={{66,-70},{46,-50}})));

    Physiolibrary.Chemical.Sensors.ConcentrationMeasure concentrationMeasure1
    annotation (Placement(transformation(
      extent={{-10,-10},{10,10}},
      rotation=180,
      origin={-94,24})));
    ProteinDivision proteinDivision
    annotation (Placement(transformation(extent={{-60,16},{-50,26}})));
equation
    connect(Transfusion.soluteFlow, busConnector.Transfusion_ProteinRate)
    annotation (Line(
    points={{-72,-78},{-72,14},{92,14}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(IVDrip.soluteFlow, busConnector.IVDripProteinRate) annotation (Line(
    points={{-84,-60},{-84,14},{92,14}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(busConnector.PeritoneumSpace_Vol, peritoneum.solutionVolume)
    annotation (Line(
    points={{92,14},{-58,14},{-58,-26}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(plasma.solute, busConnector.PlasmaProtein_Mass)  annotation (Line(
      points={{-60,32},{-60,14},{92,14}},
      color={0,0,127},
      smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));

    connect(synthesis.q_out, plasma.q_out) annotation (Line(
      points={{-38,64},{-26,64},{-26,42},{-66,42}},
      color={107,45,134},
      thickness=1,
      smooth=Smooth.None));
    connect(UT_Capillary.q_out, UpperTorso.q_out) annotation (Line(
      points={{10,84},{18,84},{18,74},{66,74}},
      color={107,45,134},
      thickness=1,
      smooth=Smooth.None));
    connect(plasma.q_out, UT_Capillary.q_in) annotation (Line(
      points={{-66,42},{-26,42},{-26,84},{-2,84}},
      color={107,45,134},
      thickness=1,
      smooth=Smooth.None));
    connect(plasma.q_out, UT_Lymph.q_out) annotation (Line(
      points={{-66,42},{-26,42},{-26,68},{0,68},{0,69}},
      color={107,45,134},
      thickness=1,
      smooth=Smooth.None));
    connect(plasma.q_out, MT_Capillary.q_in) annotation (Line(
      points={{-66,42},{-26,42},{-26,38},{-2,38}},
      color={107,45,134},
      thickness=1,
      smooth=Smooth.None));
    connect(MT_Capillary.q_out, MiddleTorso.q_out) annotation (Line(
      points={{10,38},{16,38},{16,30},{64,30}},
      color={107,45,134},
      thickness=1,
      smooth=Smooth.None));
    connect(MT_Lymph.q_in, MiddleTorso.q_out) annotation (Line(
      points={{10,23},{16,23},{16,30},{64,30}},
      color={107,45,134},
      thickness=1,
      smooth=Smooth.None));
    connect(plasma.q_out, MT_Lymph.q_out) annotation (Line(
      points={{-66,42},{-26,42},{-26,22},{0,22},{0,23}},
      color={107,45,134},
      thickness=1,
      smooth=Smooth.None));
    connect(plasma.q_out, LT_Capillary.q_in) annotation (Line(
      points={{-66,42},{-26,42},{-26,-2},{0,-2}},
      color={107,45,134},
      thickness=1,
      smooth=Smooth.None));
    connect(plasma.q_out, LT_Lymph.q_out) annotation (Line(
      points={{-66,42},{-26,42},{-26,-18},{0,-18},{0,-17}},
      color={107,45,134},
      thickness=1,
      smooth=Smooth.None));
    connect(plasma.q_out, GlomerulusProtein_Perm.q_in) annotation (Line(
      points={{-66,42},{-26,42},{-26,-60},{-2,-60}},
      color={107,45,134},
      thickness=1,
      smooth=Smooth.None));
    connect(plasma.q_out, Hemorrhage.q_in) annotation (Line(
      points={{-66,42},{-26,42},{-26,-90},{20,-90}},
      color={107,45,134},
      thickness=1,
      smooth=Smooth.None));
    connect(plasma.q_out, Transfusion.q_out) annotation (Line(
      points={{-66,42},{-26,42},{-26,-82},{-66,-82}},
      color={107,45,134},
      thickness=1,
      smooth=Smooth.None));
    connect(plasma.q_out, IVDrip.q_out) annotation (Line(
      points={{-66,42},{-26,42},{-26,-64},{-78,-64}},
      color={107,45,134},
      thickness=1,
      smooth=Smooth.None));
    connect(plasma.q_out, degradation.q_in) annotation (Line(
      points={{-66,42},{-26,42},{-26,-42},{0,-42}},
      color={107,45,134},
      thickness=1,
      smooth=Smooth.None));
    connect(plasma.q_out, Change.q_in)
                                   annotation (Line(
      points={{-66,42},{-26,42},{-26,-30},{-28,-30}},
      color={107,45,134},
      thickness=1,
      smooth=Smooth.None));
    connect(LT_Capillary.q_out, LowerTorso.q_out) annotation (Line(
      points={{12,-2},{18,-2},{18,-12},{68,-12}},
      color={107,45,134},
      thickness=1,
      smooth=Smooth.None));
    connect(LT_Lymph.q_in, LowerTorso.q_out) annotation (Line(
      points={{10,-17},{18,-17},{18,-12},{68,-12}},
      color={107,45,134},
      thickness=1,
      smooth=Smooth.None));
    connect(Change.q_out, peritoneum.q_out)
                                        annotation (Line(
      points={{-40,-30},{-54,-30}},
      color={107,45,134},
      thickness=1,
      smooth=Smooth.None));
    connect(GlomerulusProtein_Perm.q_out, Bladder.q_out) annotation (Line(
      points={{18,-60},{56,-60}},
      color={107,45,134},
      thickness=1,
      smooth=Smooth.None));
    connect(Bladder.solutionVolume, busConnector.BladderVolume_Mass)
    annotation (Line(
    points={{60,-56},{96,-56},{96,14},{92,14}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(plasma.q_out, concentrationMeasure1.q_in) annotation (Line(
      points={{-66,42},{-94,42},{-94,24}},
      color={107,45,134},
      thickness=1,
      smooth=Smooth.None));
    connect(concentrationMeasure1.concentration, busConnector.PlasmaProteinConc)
    annotation (Line(
    points={{-94,32},{-94,14},{92,14}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(plasma.solutionVolume, busConnector.PlasmaVol) annotation (Line(
    points={{-70,46},{-70,48},{-98,48},{-98,14},{92,14}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(concentrationMeasure1.concentration, proteinDivision.totalProteins)
    annotation (Line(
    points={{-94,32},{-94,21},{-60,21}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(proteinDivision.albumin, busConnector.ctAlb) annotation (Line(
      points={{-50,24},{-32,24},{-32,14},{92,14}},
      color={0,0,127},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}}));
    connect(proteinDivision.nonAlbumin, busConnector.ctGlb) annotation (Line(
      points={{-50,19},{-32,19},{-32,14},{92,14}},
      color={0,0,127},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}}));
    connect(UT_Lymph.q_in, UpperTorso.q_out) annotation (Line(
    points={{10,69},{18,69},{18,74},{66,74}},
    color={107,45,134},
    thickness=1,
    smooth=Smooth.None));
    connect(Change.solutionFlow, busConnector.PeritoneumSpace_Change)
    annotation (Line(
    points={{-34,-25.8},{-34,14},{92,14}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(UpperTorso.solutionVolume, busConnector.UT_InterstitialWater_Vol)
    annotation (Line(
    points={{70,78},{92,78},{92,14}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(busConnector.UT_InterstitialProtein_Mass,UpperTorso. solute) annotation (
      Line(
      points={{92,14},{92,70},{60,70},{60,64}},
      color={0,0,127},
      smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(MiddleTorso.solutionVolume, busConnector.MT_InterstitialWater_Vol)
    annotation (Line(
    points={{68,34},{92,34},{92,14}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(busConnector.MT_InterstitialProtein_Mass,MiddleTorso. solute) annotation (
      Line(
      points={{92,14},{58,14},{58,20}},
      color={0,0,127},
      smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(LowerTorso.solutionVolume, busConnector.LT_InterstitialWater_Vol)
    annotation (Line(
    points={{72,-8},{92,-8},{92,14}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(busConnector.LT_InterstitialProtein_Mass,LowerTorso. solute) annotation (
      Line(
      points={{92,14},{92,-22},{62,-22}},
      color={0,0,127},
      smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(busConnector.UT_LymphFlow, UT_Lymph.solutionFlow) annotation (Line(
    points={{92,14},{18,14},{18,54},{6,54},{6,65.5},{5,65.5}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(busConnector.MT_LymphFlow, MT_Lymph.solutionFlow) annotation (Line(
    points={{92,14},{6,14},{6,19.5},{5,19.5}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(busConnector.LT_LymphFlow, LT_Lymph.solutionFlow) annotation (Line(
    points={{92,14},{14,14},{14,-26},{6,-26},{6,-20.5},{5,-20.5}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(Hemorrhage.soluteFlow, busConnector.Hemorrhage_ProteinRate)
    annotation (Line(
    points={{34,-86},{34,14},{92,14}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    annotation (Icon(coordinateSystem(preserveAspectRatio=true, extent={{-100,
            -100},{100,100}}), graphics={  Text(
          extent={{-114,-86},{128,-120}},
          lineColor={0,0,255},
          textString="%name")}),        Documentation(info="<html>
    <p>Proteins are converted from Mol/L to mg/L by average molecular weight 86 kDa.</p>
    </html>"));
end Proteins;
