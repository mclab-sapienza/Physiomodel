within Physiomodel.Electrolytes.Chloride.test;
model Chloride
    Physiolibrary.Chemical.Components.Substance ClPool(useNormalizedVolume=
      false, solute_start=(1610)/1000)
    annotation (Placement(transformation(extent={{-78,14},{-58,34}})));
    Modelica.Blocks.Interfaces.RealInput ECFV_Vol(final quantity="Volume",
      final displayUnit="ml")
    annotation (Placement(transformation(extent={{-90,28},{-82,36}}),
        iconTransformation(extent={{-100,64},{-88,76}})));
    Physiolibrary.Chemical.Components.Substance GILumen(useNormalizedVolume=
     false, solute_start=(90)/1000)
    annotation (Placement(transformation(extent={{-82,-36},{-62,-16}})));
    Modelica.Blocks.Interfaces.RealInput GILumenVolume_Mass(final
      quantity=
        "Volume", final displayUnit="ml")
    annotation (Placement(transformation(extent={{-98,-22},{-90,-14}}),
        iconTransformation(extent={{-100,52},{-88,64}})));
    Physiolibrary.Chemical.Components.SolutePump Absorbtion(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{-58,-20},{-46,-32}})));
    Modelica.Blocks.Math.Gain Perm(k=0.0015)
    annotation (Placement(transformation(extent={{-64,-48},{-58,-42}})));
    Physiolibrary.Chemical.Sources.UnlimitedSolutePumpOut Hemorrhage(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{-44,-86},{-24,-66}})));
    Physiolibrary.Chemical.Sources.UnlimitedSolutePumpOut DialyzerActivity(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{-44,-100},{-24,-80}})));
    Physiolibrary.Chemical.Sources.UnlimitedSolutePumpOut SweatDuct(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{-44,-72},{-24,-52}})));
    Physiolibrary.Chemical.Sources.UnlimitedSolutePump IVDrip(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{-64,-80},{-44,-60}})));
    Physiolibrary.Chemical.Sources.UnlimitedSolutePump Transfusion(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{-64,-94},{-44,-74}})));
    Physiolibrary.Chemical.Components.Substance Bladder(
    STEADY=false,
    useNormalizedVolume=false,
    solute_start=(0)/1000)
    annotation (Placement(transformation(extent={{50,14},{70,34}})));
    Modelica.Blocks.Interfaces.RealInput BladderVolume_Mass(final
      quantity=
        "Volume", final displayUnit="ml")
    annotation (Placement(transformation(extent={{36,28},{44,36}}),
        iconTransformation(extent={{-100,40},{-88,52}})));
    Modelica.Blocks.Interfaces.RealInput IVDrip_ClRate(final quantity="VolumeFlowRate", final displayUnit="mEq/min")
    annotation (Placement(transformation(extent={{-68,-68},{-60,-60}}),
        iconTransformation(
        extent={{-6,-6},{6,6}},
        rotation=270,
        origin={-40,98})));
    Modelica.Blocks.Interfaces.RealInput Transfusion_ClRate(final
      quantity="VolumeFlowRate", final displayUnit="mEq/min")
    annotation (Placement(transformation(extent={{-68,-84},{-60,-76}}),
        iconTransformation(
        extent={{-6,-6},{6,6}},
        rotation=270,
        origin={-28,98})));
    Modelica.Blocks.Interfaces.RealInput SweatDuct_ClRate(final quantity="VolumeFlowRate", final displayUnit="mEq/min")
    annotation (Placement(transformation(extent={{-22,-60},{-28,-54}}),
        iconTransformation(
        extent={{-6,-6},{6,6}},
        rotation=270,
        origin={-16,98})));
    Modelica.Blocks.Interfaces.RealInput Hemorrhage_ClRate(final quantity="VolumeFlowRate", final displayUnit="mEq/min")
    annotation (Placement(transformation(extent={{-22,-74},{-28,-68}}),
        iconTransformation(
        extent={{-6,-6},{6,6}},
        rotation=270,
        origin={-4,98})));
    Modelica.Blocks.Interfaces.RealInput DialyzerActivity_Cl_Flux(final
      quantity="VolumeFlowRate", final displayUnit="mEq/min")
    annotation (Placement(transformation(extent={{-22,-88},{-28,-82}}),
        iconTransformation(
        extent={{-6,-6},{6,6}},
        rotation=270,
        origin={8,98})));
    Physiolibrary.Chemical.Sources.UnlimitedSolutePump Diet(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{-100,-42},{-80,-22}})));
    Modelica.Blocks.Interfaces.RealInput DietIntakeElectrolytes_Cl(final
      quantity="VolumeFlowRate", final displayUnit="mEq/min")
    annotation (Placement(transformation(extent={{-100,-30},{-92,-22}}),
        iconTransformation(
        extent={{-6,-6},{6,6}},
        rotation=270,
        origin={20,98})));
    Physiolibrary.Chemical.Sources.UnlimitedSolutePumpOut Diarrhea(
    useSoluteFlowInput=true) annotation (Placement(transformation(
      extent={{-10,-10},{10,10}},
      rotation=180,
      origin={-90,-44})));
    Modelica.Blocks.Interfaces.RealInput GILumenVomitus_ClLoss(final
      quantity="VolumeFlowRate", final displayUnit="mEq/min")
    annotation (Placement(transformation(extent={{3,-3},{-3,3}},
        rotation=180,
        origin={-93,-51}),
        iconTransformation(
        extent={{-6,-6},{6,6}},
        rotation=270,
        origin={32,98})));
    Physiolibrary.Chemical.Components.SolutePump CD_Cl(useSoluteFlowInput=
      true)                                        annotation (
    Placement(transformation(
      extent={{-6,-6},{6,6}},
      origin={26,24})));
    Modelica.Blocks.Interfaces.RealInput CollectingDuct_NetSumCats(final
      quantity="Mass", final displayUnit="mEq")
    annotation (Placement(transformation(extent={{16,52},{24,60}}),
        iconTransformation(extent={{-100,28},{-88,40}})));
    Modelica.Blocks.Interfaces.RealInput BloodPh_ArtysPh
    annotation (Placement(transformation(extent={{2,42},{10,50}}),
        iconTransformation(extent={{-100,88},{-88,100}})));
    Physiolibrary.Factors.NonlinearSystemPatch.SplineValue3 KEffect1( data=
        {{7.00,1.00,0},{7.45,0.93,-0.5},{7.80,0.00,0}})
    annotation (Placement(transformation(extent={{16,36},{36,56}})));
    Modelica.Blocks.Interfaces.RealOutput ClPool_mass
                                  annotation (Placement(transformation(extent={{-60,4},
            {-52,12}}),        iconTransformation(extent={{100,80},{120,
            100}})));
    Modelica.Blocks.Interfaces.RealOutput ClPool_conc_per_liter
                                  annotation (Placement(transformation(extent={{-40,36},
            {-32,44}}),        iconTransformation(extent={{100,60},{120,
            80}})));
    Physiolibrary.Chemical.Sensors.ConcentrationMeasure
    concentrationMeasure annotation (Placement(transformation(
      extent={{-10,-10},{10,10}},
      rotation=270,
      origin={-56,40})));
    Modelica.Blocks.Math.Gain gain(k=1000)
    annotation (Placement(transformation(extent={{-46,38},{-42,42}})));
    Physiolibrary.Chemical.Components.Clearance bladderVoid(
    useSolutionFlowInput=true)
    annotation (Placement(transformation(extent={{58,-14},{70,-2}})));
    Modelica.Blocks.Interfaces.RealInput BladderVoidFlow(
                                                final quantity="VolumeFlowRate",
      final displayUnit="ml/min")
    annotation (Placement(transformation(extent={{50,-2},{58,6}}),
        iconTransformation(
        extent={{-6,-6},{6,6}},
        origin={-94,-106})));
equation
    connect(ClPool.solutionVolume, ECFV_Vol) annotation (Line(
    points={{-76,30},{-81,30},{-81,32},{-86,32}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(GILumen.solutionVolume, GILumenVolume_Mass) annotation (Line(
    points={{-80,-20},{-87,-20},{-87,-18},{-94,-18}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(GILumen.q_out, Absorbtion.q_in) annotation (Line(
      points={{-72,-26},{-65,-26},{-65,-26},{-58,-26}},
      color={200,0,0},
      smooth=Smooth.None,
      thickness=1));
    connect(Absorbtion.q_out, ClPool.q_out) annotation (Line(
      points={{-46,-26},{-44,-26},{-44,24},{-68,24}},
      color={200,0,0},
      smooth=Smooth.None,
      thickness=1));
    connect(Hemorrhage.q_in, ClPool.q_out) annotation (Line(
      points={{-40,-76},{-44,-76},{-44,24},{-68,24}},
      color={200,0,0},
      smooth=Smooth.None,
      thickness=1));
    connect(DialyzerActivity.q_in, ClPool.q_out) annotation (Line(
      points={{-40,-90},{-44,-90},{-44,24},{-68,24}},
      color={200,0,0},
      smooth=Smooth.None,
      thickness=1));
    connect(ClPool.q_out, SweatDuct.q_in) annotation (Line(
      points={{-68,24},{-44,24},{-44,-62},{-40,-62}},
      color={200,0,0},
      smooth=Smooth.None,
      thickness=1));
    connect(Transfusion.q_out, ClPool.q_out) annotation (Line(
      points={{-48,-84},{-44,-84},{-44,24},{-68,24}},
      color={200,0,0},
      smooth=Smooth.None,
      thickness=1));
    connect(IVDrip.q_out, ClPool.q_out) annotation (Line(
      points={{-48,-70},{-44,-70},{-44,24},{-68,24}},
      color={200,0,0},
      smooth=Smooth.None,
      thickness=1));
    connect(Bladder.solutionVolume, BladderVolume_Mass) annotation (Line(
    points={{52,30},{46,30},{46,32},{40,32}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(IVDrip.soluteFlow, IVDrip_ClRate) annotation (Line(
    points={{-54,-66},{-54,-64},{-64,-64}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Transfusion.soluteFlow, Transfusion_ClRate) annotation (Line(
    points={{-54,-80},{-64,-80}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(SweatDuct.soluteFlow, SweatDuct_ClRate) annotation (Line(
    points={{-34,-58},{-34,-57},{-25,-57}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Hemorrhage_ClRate, Hemorrhage.soluteFlow) annotation (Line(
    points={{-25,-71},{-33.5,-71},{-33.5,-72},{-34,-72}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(DialyzerActivity.soluteFlow, DialyzerActivity_Cl_Flux)
    annotation (Line(
    points={{-34,-86},{-34,-85},{-25,-85}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Diet.soluteFlow, DietIntakeElectrolytes_Cl) annotation (Line(
    points={{-90,-28},{-90,-26},{-96,-26}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Diet.q_out, GILumen.q_out) annotation (Line(
      points={{-84,-32},{-80,-32},{-80,-26},{-72,-26}},
      color={200,0,0},
      smooth=Smooth.None,
      thickness=1));
    connect(Diarrhea.soluteFlow, GILumenVomitus_ClLoss) annotation (Line(
    points={{-90,-48},{-90,-51},{-93,-51}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(GILumen.q_out, Diarrhea.q_in) annotation (Line(
      points={{-72,-26},{-80,-26},{-80,-44},{-84,-44}},
      color={200,0,0},
      smooth=Smooth.None,
      thickness=1));
    connect(Perm.y, Absorbtion.soluteFlow) annotation (Line(
      points={{-57.7,-45},{-52,-45},{-52,-29.6}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(Perm.u, GILumen.solute) annotation (Line(
    points={{-64.6,-45},{-72,-45},{-72,-33.8}},
    color={0,0,127},
    smooth=Smooth.None));

    connect(KEffect1.u, BloodPh_ArtysPh) annotation (Line(
      points={{16.2,46},{6,46}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(CollectingDuct_NetSumCats, KEffect1.yBase) annotation (Line(
      points={{20,56},{26,56},{26,48}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(CD_Cl.soluteFlow, KEffect1.y) annotation (Line(
      points={{26,27.6},{26,44}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(CD_Cl.q_out, Bladder.q_out) annotation (Line(
      points={{32,24},{60,24}},
      color={200,0,0},
      smooth=Smooth.None,
      thickness=1));
    connect(CD_Cl.q_in, ClPool.q_out) annotation (Line(
      points={{20,24},{-24,24},{-24,24},{-68,24}},
      color={200,0,0},
      smooth=Smooth.None,
      thickness=1));
    connect(ClPool.solute, ClPool_mass) annotation (Line(
    points={{-68,16.2},{-68,8},{-56,8}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(concentrationMeasure.concentration, gain.u) annotation (Line(
    points={{-52,40},{-46.4,40}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(gain.y, ClPool_conc_per_liter) annotation (Line(
      points={{-41.8,40},{-36,40}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(ClPool.q_out, concentrationMeasure.q_in) annotation (Line(
      points={{-68,24},{-62,24},{-62,40},{-56,40}},
      color={200,0,0},
      smooth=Smooth.None,
      thickness=1));
    connect(Bladder.q_out, bladderVoid.q_in) annotation (Line(
      points={{60,24},{42,24},{42,-8},{58,-8}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(bladderVoid.solutionFlow, BladderVoidFlow) annotation (Line(
    points={{64,-4.4},{64,2},{54,2}},
    color={0,0,127},
    smooth=Smooth.None));
    annotation ( Icon(coordinateSystem(
          preserveAspectRatio=true, extent={{-100,-100},{100,100}}),
        graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName=
              "../Physiolibrary/icons/Cl.jpg")}));
end Chloride;