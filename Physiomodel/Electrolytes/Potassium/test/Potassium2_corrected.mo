within Physiomodel.Electrolytes.Potassium.test;
model Potassium2_corrected
    Physiolibrary.Chemical.Components.Substance KPool(useNormalizedVolume=
      false, solute_start=(62.897)/1000)
    annotation (Placement(transformation(extent={{-34,14},{-14,34}})));
    Physiolibrary.Chemical.Components.Substance GILumen(useNormalizedVolume=
     false, solute_start=(25)/1000)
    annotation (Placement(transformation(extent={{-18,-36},{2,-16}})));
    Physiolibrary.Chemical.Components.SolutePump Absorbtion(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{6,-20},{18,-32}})));
    Modelica.Blocks.Math.Gain Perm(k=0.002)
    annotation (Placement(transformation(extent={{0,-48},{6,-42}})));
    Physiolibrary.Chemical.Sources.UnlimitedSolutePumpOut Hemorrhage(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{20,-86},{40,-66}})));
    Physiolibrary.Chemical.Sources.UnlimitedSolutePumpOut DialyzerActivity(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{20,-100},{40,-80}})));
    Physiolibrary.Chemical.Sources.UnlimitedSolutePumpOut SweatDuct(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{20,-72},{40,-52}})));
    Physiolibrary.Chemical.Sources.UnlimitedSolutePump IVDrip(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{0,-80},{20,-60}})));
    Physiolibrary.Chemical.Sources.UnlimitedSolutePump Transfusion(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{0,-94},{20,-74}})));
    Physiolibrary.Chemical.Components.Substance Bladder(useNormalizedVolume=
     false, solute_start=(0)/1000)
    annotation (Placement(transformation(extent={{94,12},{74,32}})));
    Physiolibrary.Blocks.Factors.Spline NaEffect(data={{0.0,0.3,0},{0.4,1.0,
      1.5},{4.0,3.0,0}})
    annotation (Placement(transformation(extent={{44,30},{24,50}})));
    Physiolibrary.Blocks.Factors.Spline AldoEffect(data={{0.0,0.3,0},{12.0,
      1.0,0.06},{50.0,3.0,0}})
    annotation (Placement(transformation(extent={{44,38},{24,58}})));
    Physiolibrary.Blocks.Factors.Spline ThiazideEffect(data={{0.0,1.0,2.0},
      {0.6,2.0,0}})
    annotation (Placement(transformation(extent={{44,46},{24,66}})));
    Physiolibrary.Chemical.Sources.UnlimitedSolutePump Diet(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{-66,-42},{-46,-22}})));
    Physiolibrary.Chemical.Sources.UnlimitedSolutePumpOut Diarrhea(
    useSoluteFlowInput=true) annotation (Placement(transformation(
      extent={{-10,-10},{10,10}},
      rotation=180,
      origin={-56,-44})));
    Physiolibrary.Chemical.Components.Substance KCell(useNormalizedVolume=
      false, solute_start=(3769.74)/1000)
    annotation (Placement(transformation(extent={{-30,70},{-10,90}})));
    Physiolibrary.Chemical.Components.SolutePump KFluxToCell(
    useSoluteFlowInput=true)                             annotation (
    Placement(transformation(
      extent={{-6,-6},{6,6}},
      rotation=90,
      origin={-30,58})));
    Modelica.Blocks.Math.Gain Perm1(k=0.002)
    annotation (Placement(transformation(extent={{-3,-3},{3,3}},
        rotation=90,
        origin={-55,53})));
    Physiolibrary.Chemical.Components.SolutePump KFluxToPool(
    useSoluteFlowInput=true)                             annotation (
    Placement(transformation(
      extent={{-6,-6},{6,6}},
      rotation=270,
      origin={-12,48})));
    Modelica.Blocks.Math.Feedback feedback
    annotation (Placement(transformation(extent={{-10,62},{-2,54}})));
    Physiolibrary.Types.Constants.ElectricChargeConst KCell_CaptiveMass(k=
      210338.040982)
    annotation (Placement(transformation(extent={{8,76},{-2,66}})));
    Modelica.Blocks.Math.Gain Perm2(k=7.4e-5)
    annotation (Placement(transformation(extent={{-3,-3},{3,3}},
        rotation=270,
        origin={3,53})));
    Physiolibrary.Types.Constants.ElectricCurrentConst
    electrolytesFlowConstant(k=0.08040444991666501)
    annotation (Placement(transformation(extent={{18,76},{30,88}})));
    Physiolibrary.Chemical.Components.SolutePump DT_K(useSoluteFlowInput=
      true)                                       annotation (Placement(
      transformation(
      extent={{-6,-6},{6,6}},
      origin={34,22})));
    Physiolibrary.Blocks.Factors.Spline KEffect(data={{0.0,0.0,0},{4.4,1.0,
      0.5},{5.5,3.0,0}})
    annotation (Placement(transformation(extent={{24,22},{44,42}})));
    Modelica.Blocks.Math.Gain mEq_per_L(k=1000)
    annotation (Placement(transformation(extent={{-3,-3},{3,3}},
        origin={15,31})));
    Modelica.Blocks.Math.Division division
    annotation (Placement(transformation(extent={{-18,6},{-14,10}})));
    Physiolibrary.Blocks.Factors.Normalization KidneyFunction
    annotation (Placement(transformation(extent={{44,54},{24,74}})));
    Physiolibrary.Chemical.Sensors.ConcentrationMeasure
    concentrationMeasure annotation (Placement(transformation(
      extent={{-10,-10},{10,10}},
      rotation=270,
      origin={30,6})));
    Modelica.Blocks.Math.Gain gain(k=1000)
    annotation (Placement(transformation(extent={{40,4},{44,8}})));
    Physiomodel.Metabolism.deprecated.Input2EffectDelayed splineDelayByDay(data={{
      0,0.9,0.0},{300,1.0,0.00025},{1500,1.1,0.0}}, Tau=120*1440) annotation (
    Placement(transformation(
      extent={{10,-10},{-10,10}},
      rotation=90,
      origin={-48,58})));
    Physiolibrary.Chemical.Components.Clearance bladderVoid(
    useSolutionFlowInput=true)
    annotation (Placement(transformation(extent={{82,-20},{94,-8}})));
    Physiolibrary.Chemical.Sensors.ConcentrationMeasure
    concentrationMeasure1(toAnotherUnitCoef=1000, unitsString="mEq/l")
    annotation (Placement(transformation(
      extent={{-10,-10},{10,10}},
      origin={-8,80})));
    Physiolibrary.Chemical.Sensors.MolarFlowMeasure flowMeasure annotation (
    Placement(transformation(
      extent={{-8,8},{8,-8}},
      rotation=90,
      origin={-24,34})));
    Physiolibrary.Chemical.Components.SolutePump KFluxToCellWithGlucose(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(
      extent={{-6,-6},{6,6}},
      rotation=90,
      origin={-68,60})));
    Modelica.Blocks.Math.Gain CGL3(k=0.03)
    "glucose flow into cells to potassium flow into cells"
    annotation (Placement(transformation(extent={{-2,-2},{2,2}},
        origin={-78,60})));
    IkedaPotasiumIntoICFFactor IkedaIntoICF annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={-40,58})));
    Physiolibrary.Chemical.Sensors.ConcentrationMeasure
    concentrationMeasure2(toAnotherUnitCoef=1000, unitsString="mEq/l")
    annotation (Placement(transformation(
      extent={{-10,-10},{10,10}},
      origin={-48,24})));
    Physiolibrary.Types.BusConnector busConnector annotation (Placement(
      transformation(extent={{-94,88},{-82,100}}), iconTransformation(
        extent={{60,60},{100,100}})));
    Modelica.Blocks.Math.Add3 YGLS "Ikeda glucose to cells flow"
    annotation (Placement(transformation(extent={{-84,66},{-74,76}})));
    Physiolibrary.Types.Constants.ElectricCurrentConst
    electrolytesFlowConstant1(k=0)
    annotation (Placement(transformation(extent={{-90,46},{-80,56}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant7(k=70/
      1440)
    annotation (Placement(transformation(extent={{-66,-16},{-58,-8}})));
    Physiolibrary.Blocks.Factors.Spline LeptinEffect2(data={{0,3.0,0},{8,
      1.0,-0.04},{50,0.0,0}})
    annotation (Placement(transformation(extent={{-66,-30},{-46,-10}})));
equation

    connect(KPool.solutionVolume, busConnector.ECFV_Vol) annotation (Line(
    points={{-32,30},{-95,30},{-95,94},{-88,94}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{3,1},{3,1}}));
    connect(GILumen.solutionVolume, busConnector.GILumenVolume_Mass)
    annotation (Line(
    points={{-16,-20},{-24,-20},{-24,-4},{-96,-4},{-96,94},{-88,94}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{3,1},{3,1}}));
    connect(GILumen.q_out, Absorbtion.q_in) annotation (Line(
    points={{-8,-26},{6,-26}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));
    connect(Absorbtion.q_out, KPool.q_out)  annotation (Line(
    points={{18,-26},{22,-26},{22,24},{-24,24}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));
    connect(Hemorrhage.q_in, KPool.q_out)  annotation (Line(
    points={{24,-76},{22,-76},{22,24},{-24,24}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));
    connect(DialyzerActivity.q_in, KPool.q_out)  annotation (Line(
    points={{24,-90},{22,-90},{22,24},{-24,24}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));
    connect(KPool.q_out, SweatDuct.q_in)  annotation (Line(
    points={{-24,24},{22,24},{22,-62},{24,-62}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));
    connect(Transfusion.q_out, KPool.q_out)  annotation (Line(
    points={{16,-84},{22,-84},{22,24},{-24,24}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));
    connect(IVDrip.q_out, KPool.q_out)  annotation (Line(
    points={{16,-70},{22,-70},{22,24},{-24,24}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));
    connect(Bladder.solutionVolume, busConnector.BladderVolume_Mass)
    annotation (Line(
    points={{92,28},{98,28},{98,94},{-88,94}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{3,1},{3,1}}));
    connect(AldoEffect.y, NaEffect.yBase)     annotation (Line(
    points={{34,46},{34,42}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(ThiazideEffect.y, AldoEffect.yBase)  annotation (Line(
    points={{34,54},{34,50}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(ThiazideEffect.u, busConnector. ThiazidePool_Thiazide_conc) annotation (Line(
    points={{43.8,56},{98,56},{98,94},{-88,94}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{3,1},{3,1}}));
    connect(IVDrip.soluteFlow, busConnector.IVDrip_KRate) annotation (Line(
    points={{10,-66},{10,-64},{-96,-64},{-96,94},{-88,94}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{3,1},{3,1}}));
    connect(Transfusion.soluteFlow, busConnector.Transfusion_KRate)
    annotation (Line(
    points={{10,-80},{-96,-80},{-96,94},{-88,94}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{3,1},{3,1}}));
    connect(SweatDuct.soluteFlow, busConnector.SweatDuct_KRate) annotation (
    Line(
    points={{30,-58},{30,-54},{98,-54},{98,94},{-88,94}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{3,1},{3,1}}));
    connect(busConnector.Hemorrhage_KRate, Hemorrhage.soluteFlow)
    annotation (Line(
    points={{-88,94},{98,94},{98,-72},{30,-72}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-3,1},{-3,1}}));
    connect(DialyzerActivity.soluteFlow, busConnector.DialyzerActivity_K_Flux)
    annotation (Line(
    points={{30,-86},{98,-86},{98,94},{-88,94}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{3,1},{3,1}}));
    connect(Diet.q_out, GILumen.q_out) annotation (Line(
    points={{-50,-32},{-16,-32},{-16,-26},{-8,-26}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));
    connect(Diarrhea.soluteFlow, busConnector.GILumenDiarrhea_KLoss)
    annotation (Line(
    points={{-56,-48},{-96,-48},{-96,94},{-88,94}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{3,1},{3,1}}));
    connect(GILumen.q_out, Diarrhea.q_in) annotation (Line(
    points={{-8,-26},{-16,-26},{-16,-44},{-50,-44}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));
    connect(KCell.solutionVolume, busConnector.CellH2O_Vol) annotation (
    Line(
    points={{-28,86},{-95,86},{-95,94},{-88,94}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{3,1},{3,1}}));
    connect(Perm.y, Absorbtion.soluteFlow) annotation (Line(
    points={{6.3,-45},{12,-45},{12,-29.6}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Perm.u, GILumen.solute) annotation (Line(
    points={{-0.6,-45},{-8,-45},{-8,-33.8}},
    color={0,0,127},
    smooth=Smooth.None));

    connect(KFluxToCell.q_out, KCell.q_out) annotation (Line(
    points={{-30,64},{-30,80},{-20,80}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));
    connect(KCell.q_out, KFluxToPool.q_in) annotation (Line(
    points={{-20,80},{-12,80},{-12,54}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));
    connect(KPool.solute, Perm1.u) annotation (Line(
    points={{-24,16.2},{-24,10},{-55,10},{-55,49.4}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(KCell.solute, feedback.u1) annotation (Line(
    points={{-20,72.2},{-20,58},{-9.2,58}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(KCell_CaptiveMass.y, feedback.u2) annotation (Line(
    points={{-2.5,71},{-6,71},{-6,61.2}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(feedback.y, Perm2.u) annotation (Line(
    points={{-2.4,58},{3.3,58},{3.3,56.6},{3,56.6}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(KFluxToPool.soluteFlow, Perm2.y) annotation (Line(
    points={{-8.4,48},{3,48},{3,49.7}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(NaEffect.u, busConnector. DT_Na_Outflow) annotation (Line(
    points={{43.8,40},{98,40},{98,94},{-88,94}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{3,1},{3,1}}));
    connect(KPool.q_out, DT_K.q_in) annotation (Line(
    points={{-24,24},{22,24},{22,22},{28,22}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));
    connect(NaEffect.y, KEffect.yBase) annotation (Line(
    points={{34,38},{34,34}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(KEffect.y, DT_K.soluteFlow) annotation (Line(
    points={{34,30},{34,25.6}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(mEq_per_L.y, KEffect.u) annotation (Line(
    points={{18.3,31},{21.15,31},{21.15,32},{24.2,32}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(division.u1, KPool.solute) annotation (Line(
    points={{-18.4,9.2},{-24,9.2},{-24,16.2}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(busConnector.ECFV_Vol, division.u2) annotation (Line(
    points={{-88,94},{-96,94},{-96,6.8},{-18.4,6.8}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-3,1},{-3,1}}));
    connect(division.y, mEq_per_L.u) annotation (Line(
    points={{-13.8,8},{-8,8},{-8,31},{11.4,31}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(electrolytesFlowConstant.y, KidneyFunction.yBase) annotation (
    Line(
    points={{30.6,82},{34,82},{34,66}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(KidneyFunction.y, ThiazideEffect.yBase) annotation (Line(
    points={{34,62},{34,58}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(KidneyFunction.u, busConnector. kidney_FunctionEffect) annotation (Line(
    points={{43.8,64},{98,64},{98,94},{-88,94}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{3,1},{3,1}}));
    connect(DT_K.q_out, Bladder.q_out) annotation (Line(
    points={{40,22},{84,22}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));
    connect(busConnector.KCell_Mass, KCell.solute) annotation (Line(
    points={{-88,94},{-4,94},{-4,72},{-20,72},{-20,72.2}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-3,1},{-3,1}}));
    connect(KPool.solute, busConnector.KPool_mass) annotation (Line(
    points={{-24,16.2},{-24,10},{-96,10},{-96,94},{-88,94}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{3,1},{3,1}}));
    connect(concentrationMeasure.q_in, KPool.q_out) annotation (Line(
    points={{30,6},{22,6},{22,24},{-24,24}},
    color={200,0,0},
    smooth=Smooth.None,
    thickness=1));
    connect(concentrationMeasure.concentration, gain.u) annotation (Line(
    points={{34,6},{36.8,6},{36.8,6},{39.6,6}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(gain.y, busConnector. KPool_conc_per_liter) annotation (Line(
    points={{44.2,6},{98,6},{98,94},{-88,94}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{3,1},{3,1}}));
    connect(Perm1.y, splineDelayByDay.yBase) annotation (Line(
    points={{-55,56.3},{-55,58},{-50,58}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(splineDelayByDay.u, busConnector. AldoPool_Aldo) annotation (Line(
    points={{-48,67.8},{-48,94},{-88,94}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{3,1},{3,1}}));
    connect(Bladder.q_out, bladderVoid.q_in) annotation (Line(
    points={{84,22},{66,22},{66,-14},{82,-14}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(bladderVoid.solutionFlow, busConnector.BladderVoidFlow)
    annotation (Line(
    points={{88,-10.4},{88,-6},{98,-6},{98,94},{-88,94}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{3,1},{3,1}}));
    connect(GILumen.solute, busConnector.GILumenPotasium_Mass) annotation (
    Line(
    points={{-8,-33.8},{-8,-54},{-96,-54},{-96,94},{-88,94}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{3,1},{3,1}}));
    connect(KCell.q_out, concentrationMeasure1.q_in) annotation (Line(
    points={{-20,80},{-8,80}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(concentrationMeasure1.concentration, busConnector.KCell_conc)
    annotation (Line(
    points={{-8,84},{-8,94},{-88,94}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{3,1},{3,1}}));
    connect(KPool.q_out, flowMeasure.q_in) annotation (Line(
    points={{-24,24},{-24,30.8}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(flowMeasure.q_out, KFluxToPool.q_out) annotation (Line(
    points={{-24,37.2},{-24,38},{-12,38},{-12,42}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(flowMeasure.q_out, KFluxToCell.q_in) annotation (Line(
    points={{-24,37.2},{-24,38},{-30,38},{-30,52}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(flowMeasure.molarFlowRate, busConnector.PotassiumToCells)
    annotation (Line(
    points={{-20,34},{-95,34},{-95,94},{-88,94}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{3,1},{3,1}}));
    connect(flowMeasure.q_out, KFluxToCellWithGlucose.q_in) annotation (
    Line(
    points={{-24,37.2},{-24,38},{-68,38},{-68,54}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(KFluxToCellWithGlucose.q_out, KCell.q_out) annotation (Line(
    points={{-68,66},{-68,80},{-20,80}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(IkedaIntoICF.y, KFluxToCell.soluteFlow) annotation (Line(
    points={{-34.8,58},{-33.6,58}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(splineDelayByDay.y, IkedaIntoICF.yBase) annotation (Line(
    points={{-46,58},{-45,58}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(IkedaIntoICF.Artys_pH, busConnector. Artys_pH) annotation (Line(
    points={{-43,48},{-44,46},{-44,42},{-96,42},{-96,94},{-88,94}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{3,1},{3,1}}));
    connect(concentrationMeasure2.q_in, KPool.q_out) annotation (Line(
    points={{-48,24},{-24,24}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(concentrationMeasure2.concentration, IkedaIntoICF.PotasiumECF_conc)
    annotation (Line(
    points={{-48,28},{-48,40},{-37,40},{-37,48}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(concentrationMeasure2.concentration, busConnector.KPool_per_liter)
    annotation (Line(
    points={{-48,28},{-48,30},{-96,30},{-96,94},{-88,94}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{3,1},{3,1}}));

    connect(busConnector.skeletalMuscle_GlucoseToCellStorageFlow,YGLS. u2)
         annotation (Line(
    points={{-88,94},{-96,94},{-96,71},{-85,71}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(busConnector.liver_GlucoseToCellStorageFlow,YGLS. u1)
    annotation (Line(
    points={{-88,94},{-96,94},{-96,75},{-85,75}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(busConnector.respiratoryMuscle_GlucoseToCellStorageFlow,YGLS. u3)
    annotation (Line(
    points={{-88,94},{-96,94},{-96,67},{-85,67}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(YGLS.y, CGL3.u) annotation (Line(
    points={{-73.5,71},{-72,71},{-72,64},{-82,64},{-82,60},{-80.4,60}},
    color={0,0,127},
    smooth=Smooth.None));

    connect(KEffect.y, busConnector. CD_K_Outflow) annotation (Line(
    points={{34,30},{98,30},{98,94},{-88,94}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{3,1},{3,1}}));
    connect(concentrationMeasure2.concentration, busConnector.KPool)
    annotation (Line(
    points={{-48,28},{-96,28},{-96,94},{-88,94}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(GILumen.solute, busConnector.GILumenPotassium_Mass) annotation (
    Line(
    points={{-8,-33.8},{-8,-54},{-96,-54},{-96,94},{-88,94}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(electrolytesFlowConstant1.y, KFluxToCellWithGlucose.soluteFlow)
    annotation (Line(
    points={{-79.5,51},{-74,51},{-74,60},{-71.6,60}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(busConnector.Leptin, LeptinEffect2.u) annotation (Line(
    points={{-88,94},{-96,94},{-96,-20},{-65.8,-20}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(Constant7.y,LeptinEffect2. yBase) annotation (Line(
    points={{-57.6,-12},{-56,-12},{-56,-18}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(LeptinEffect2.y, Diet.soluteFlow) annotation (Line(
    points={{-56,-22},{-56,-28}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(AldoEffect.u, busConnector.NephronAldo_conc_in_nG_per_dl)
    annotation (Line(
    points={{43.8,48},{98,48},{98,94},{-88,94}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    annotation ( Icon(coordinateSystem(
      preserveAspectRatio=true, extent={{-100,-100},{100,100}}),
    graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName=
          "../Physiolibrary/icons/K.jpg"), Text(
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

    </html>",   info="<html>
    <p>TODO: Ikeda - Potassium glucose flow from ECF to ICF with insulin affects potassium flow to cells.</p>
    </html>"));
end Potassium2_corrected;
