within Physiomodel.Metabolism;
model GILumenLeptinDriven
    extends Physiolibrary.Icons.GILumen;
    Physiolibrary.Chemical.Components.Substance Carbohydrates(
    stateName="GILumenCarbohydrates.Mass",
    useNormalizedVolume=false,
    solute_start=1976.32e-6/Substances.Glucose.mw) "1976.32 mg"
    annotation (Placement(transformation(extent={{0,38},{20,58}})));
    Physiolibrary.Chemical.Components.SolutePump Absorbtion(
    useSoluteFlowInput=true)                            annotation (
    Placement(transformation(
      extent={{-6,6},{6,-6}},
      rotation=90,
      origin={14,66})));
    Physiolibrary.Chemical.Sources.UnlimitedSolutePump Diet(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{-18,58},{2,38}})));
    Physiolibrary.Blocks.Factors.Spline AbsorptionSaturation(
    data={{0,0,0.0},{1900,150,0.08},{6000,600,0.0}},
    Xscale=1e-6/Substances.Glucose.mw,
    Yscale=1e-6/60/Substances.Glucose.mw) annotation (Placement(
      transformation(
      extent={{-10,10},{10,-10}},
      rotation=90,
      origin={26,66})));
    Physiolibrary.Types.Constants.FractionConst             Constant(k=1)
    annotation (Placement(transformation(extent={{34,64},{30,68}})));
    Physiolibrary.Chemical.Components.Substance Fat(
    stateName="GILumenFat.Mass",
    useNormalizedVolume=false,
    solute_start=2041.83e-6/Substances.FattyAcids.mw) "2041.83 mg"
    annotation (Placement(transformation(extent={{0,-92},{20,-72}})));
    Physiolibrary.Chemical.Components.SolutePump Absorbtion1(
    useSoluteFlowInput=true)                             annotation (
    Placement(transformation(
      extent={{-6,6},{6,-6}},
      rotation=90,
      origin={14,-64})));
    Physiolibrary.Chemical.Sources.UnlimitedSolutePump Diet1(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{-18,-72},{2,-92}})));
    Physiolibrary.Blocks.Factors.Normalization AbsorptionSaturation1
    annotation (Placement(transformation(
      extent={{-10,10},{10,-10}},
      rotation=90,
      origin={26,-64})));
    Physiolibrary.Types.Constants.FrequencyConst     Constant1(k=0.0005)
    annotation (Placement(transformation(extent={{38,-68},{30,-60}})));
    Physiolibrary.Types.BusConnector busConnector
    annotation (Placement(transformation(extent={{-88,48},{-48,88}})));
    Physiolibrary.Chemical.Interfaces.ChemicalPort_b Carbohydrates_Absorption(
    conc(final displayUnit="mg/ml"), q(final displayUnit="mg/min"))
    annotation (Placement(transformation(extent={{38,72},{58,92}}),
      iconTransformation(extent={{90,-70},{110,-50}})));
    Physiolibrary.Chemical.Interfaces.ChemicalPort_b Fat_Absorption(conc(
      final displayUnit="mg/ml"), q(final displayUnit="mg/min"))
    annotation (Placement(transformation(extent={{42,-60},{62,-40}}),
      iconTransformation(extent={{90,-10},{110,10}})));
    Physiolibrary.Chemical.Components.Substance Protein(
    stateName="GILumenProtein.Mass",
    useNormalizedVolume=false,
    solute_start=1637.19e-6/Substances.AminoAcids.mw) "1637.19 mg"
    annotation (Placement(transformation(extent={{0,-28},{20,-8}})));
    Physiolibrary.Chemical.Components.SolutePump Absorbtion2(
    useSoluteFlowInput=true)                             annotation (
    Placement(transformation(
      extent={{-6,6},{6,-6}},
      rotation=90,
      origin={14,0})));
    Physiolibrary.Chemical.Sources.UnlimitedSolutePump Diet2(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{-18,-8},{2,-28}})));
    Physiolibrary.Blocks.Factors.Normalization AbsorptionSaturation2
    annotation (Placement(transformation(
      extent={{-10,10},{10,-10}},
      rotation=90,
      origin={26,0})));
    Physiolibrary.Types.Constants.FrequencyConst     Constant2(k=
      0.00083333333333333)
    annotation (Placement(transformation(extent={{40,-4},{32,4}})));
    Physiolibrary.Chemical.Interfaces.ChemicalPort_b Protein_Absorption(conc(
      final displayUnit="mg/ml"), q(final displayUnit="mg/min"))
    annotation (Placement(transformation(extent={{42,4},{62,24}}),
      iconTransformation(extent={{90,50},{110,70}})));
    Physiolibrary.Blocks.Factors.Spline LeptinEffect(data={{0,3.0,0},{8,1.0,-0.04},
      {50,0.0,0}}, Xscale=1e-6/Substances.Leptin.mw)
    annotation (Placement(transformation(extent={{-44,-58},{-24,-38}})));
    Physiolibrary.Types.Constants.MolarFlowRateConst DietGoalNutrition_Fat(k=(751/
      9.30)*1e-3/(60*60*24)/Substances.FattyAcids.mw)
    "60 mg/min  (fat: 9.3 cal/g,  800 cal/day) or (751/9.30) g/day"
    annotation (Placement(transformation(extent={{-44,-40},{-36,-32}})));
    Physiolibrary.Blocks.Factors.Spline LeptinEffect1(data={{0,3.0,0},{8,1.0,
      -0.04},{50,0.0,0}}, Xscale=1e-6/Substances.Leptin.mw)
    annotation (Placement(transformation(extent={{-40,2},{-20,22}})));
    Physiolibrary.Types.Constants.MolarFlowRateConst DietGoalNutrition_Protein(k=(500/
      4.35)*1e-3/(60*60*24)/Substances.AminoAcids.mw)
    annotation (Placement(transformation(extent={{-42,26},{-34,34}})));
    Physiolibrary.Blocks.Factors.Spline LeptinEffect2(data={{0,3.0,0},{8,1.0,
      -0.04},{50,0.0,0}}, Xscale=1e-6/Substances.Leptin.mw)
    "8 ug/l = 8 mg/m3"
    annotation (Placement(transformation(extent={{-26,70},{-6,90}})));
    Physiolibrary.Types.Constants.MolarFlowRateConst DietGoalNutrition_Carbo(k=(900/
      4.1)*1e-3/(60*60*24)/Substances.Glucose.mw)
      annotation (Placement(transformation(extent={{-30,90},{-22,98}})));
equation
    connect(Carbohydrates.q_out, Absorbtion.q_in)
                                          annotation (Line(
      points={{10,48},{14,48},{14,60}},
      color={255,0,0},
      smooth=Smooth.None,
      thickness=1));
    connect(Diet.q_out, Carbohydrates.q_out)
                                     annotation (Line(
      points={{2,48},{10,48}},
      color={255,0,0},
      smooth=Smooth.None,
      thickness=1));
    connect(AbsorptionSaturation.y,Absorbtion. soluteFlow) annotation (Line(
      points={{22,66},{20,66},{20,68.4},{16.4,68.4}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(AbsorptionSaturation.yBase,Constant. y) annotation (Line(
      points={{28,66},{29.5,66}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(Fat.q_out, Absorbtion1.q_in)    annotation (Line(
      points={{10,-82},{14,-82},{14,-70}},
      color={255,0,0},
      smooth=Smooth.None,
      thickness=1));
    connect(Diet1.q_out, Fat.q_out)    annotation (Line(
      points={{2,-82},{10,-82}},
      color={255,0,0},
      smooth=Smooth.None,
      thickness=1));
    connect(AbsorptionSaturation1.y,Absorbtion1. soluteFlow)
                                                         annotation (Line(
      points={{22,-64},{20,-64},{20,-61.6},{16.4,-61.6}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(AbsorptionSaturation1.yBase,Constant1. y)
                                                  annotation (Line(
      points={{28,-64},{29,-64}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(Absorbtion1.q_out, Fat_Absorption) annotation (Line(
      points={{14,-58},{14,-50},{52,-50}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(Absorbtion.q_out, Carbohydrates_Absorption) annotation (Line(
      points={{14,72},{14,82},{48,82}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(Protein.q_out, Absorbtion2.q_in)
                                          annotation (Line(
      points={{10,-18},{14,-18},{14,-6}},
      color={255,0,0},
      smooth=Smooth.None,
      thickness=1));
    connect(Diet2.q_out, Protein.q_out)
                                     annotation (Line(
      points={{2,-18},{10,-18}},
      color={255,0,0},
      smooth=Smooth.None,
      thickness=1));
    connect(AbsorptionSaturation2.y,Absorbtion2. soluteFlow)
                                                         annotation (Line(
      points={{22,1.22465e-016},{20,1.22465e-016},{20,2.4},{16.4,2.4}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(AbsorptionSaturation2.yBase,Constant2. y)
                                                  annotation (Line(
      points={{28,-1.22465e-016},{28,0},{31,0}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(Absorbtion2.q_out, Protein_Absorption) annotation (Line(
      points={{14,6},{14,14},{52,14}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(busConnector.FA_Absorbtion, AbsorptionSaturation1.y) annotation (
      Line(
      points={{-68,68},{-68,-64},{22,-64}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-6,3},{-6,3}}));
    connect(busConnector.Leptin, LeptinEffect.u) annotation (Line(
      points={{-68,68},{-68,-48},{-42,-48}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-6,3},{-6,3}}));
    connect(DietGoalNutrition_Fat.y, LeptinEffect.yBase) annotation (Line(
    points={{-35,-36},{-34,-36},{-34,-46}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(busConnector.Leptin, LeptinEffect1.u) annotation (Line(
      points={{-68,68},{-68,12},{-38,12}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-6,3},{-6,3}}));
    connect(DietGoalNutrition_Protein.y, LeptinEffect1.yBase) annotation (Line(
    points={{-33,30},{-30,30},{-30,14}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(busConnector.Leptin, LeptinEffect2.u) annotation (Line(
      points={{-68,68},{-68,80},{-24,80}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-6,3},{-6,3}}));
    connect(DietGoalNutrition_Carbo.y, LeptinEffect2.yBase) annotation (Line(
    points={{-21,94},{-16,94},{-16,82}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(busConnector.GILumenVolume_Mass, Carbohydrates.solutionVolume) annotation (Line(
    points={{-68,68},{-68,56},{6,56},{6,52}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(Carbohydrates.solute, AbsorptionSaturation.u)
    annotation (Line(
    points={{10,38},{10,34},{26,34},{26,58}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(busConnector.GILumenVolume_Mass, Protein.solutionVolume) annotation (Line(
    points={{-68,68},{-68,-14},{6,-14}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(busConnector.GILumenVolume_Mass, Fat.solutionVolume) annotation (Line(
    points={{-68,68},{-68,-78},{6,-78}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(Protein.solute, AbsorptionSaturation2.u)
    annotation (Line(
    points={{10,-28},{10,-34},{26,-34},{26,-8}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Fat.solute, AbsorptionSaturation1.u)
    annotation (Line(
    points={{10,-92},{10,-98},{26,-98},{26,-72}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(LeptinEffect2.y, Diet.soluteFlow) annotation (Line(
    points={{-16,76},{-16,36},{-4,36},{-4,44}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(LeptinEffect1.y, Diet2.soluteFlow) annotation (Line(
    points={{-30,8},{-30,-30},{-4,-30},{-4,-22}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(LeptinEffect.y, Diet1.soluteFlow) annotation (Line(
    points={{-34,-52},{-34,-96},{-4,-96},{-4,-86}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(AbsorptionSaturation.y, busConnector.Glucose_GILumenAbsorption)
    annotation (Line(
    points={{22,66},{-24,66},{-24,68},{-68,68}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(AbsorptionSaturation2.y, busConnector.Protein_GILumenAbsorption)
    annotation (Line(
    points={{22,0},{-68,0},{-68,68},{-68,68}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    annotation ( Icon(coordinateSystem(
          preserveAspectRatio=true, extent={{-100,-100},{100,100}}),
        graphics={Text(
          extent={{-168,-106},{152,-134}},
          lineColor={0,0,255},
          textString="%name"), Rectangle(extent={{-100,100},{100,-100}},
            lineColor={0,0,0})}));
end GILumenLeptinDriven;