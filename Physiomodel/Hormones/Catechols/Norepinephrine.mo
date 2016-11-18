within Physiomodel.Hormones.Catechols;

model Norepinephrine
    extends Physiolibrary.Icons.AdrenalGland;
    // outer parameter Real ECF_Vol(final displayUnit="ml");

    Physiolibrary.Chemical.Components.Substance NEPool(
    stateName="NEPool.Mass",
    useNormalizedVolume=false,
    solute_start=3430.74e-12/Substances.Norepinephrine.mw)
    "0.240 ng/ml * 15000 ml =  3600 ng "
    annotation (Placement(transformation(extent={{-82,-54},{-62,-34}})));
    Physiolibrary.Chemical.Sources.UnlimitedSolutePump secretion(
      useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{48,-54},{28,-34}})));
    Physiolibrary.Types.Constants.MolarFlowRateConst hormoneFlowConstant(k(
        displayUnit="mmol/min") = 220e-12/Substances.Norepinephrine.mw/60)
    "220 ng/min"
    annotation (Placement(transformation(extent={{50,-10},{42,-2}})));
    Physiolibrary.Blocks.Factors.Spline AdrenalNerveEffect(data={{2.0,1.0,0},
        {8.0,20.0,0}})
    annotation (Placement(transformation(extent={{28,-32},{48,-12}})));
    Physiolibrary.Types.RealIO.FractionInput
                                       OtherTissueFunctionEffect
                       annotation (Placement(transformation(
            extent={{0,-36},{8,-28}}),   iconTransformation(extent={{-100,-40},{-80,
              -20}})));
    Physiolibrary.Types.RealIO.VolumeInput
                                       ECFV_Vol( displayUnit="ml")
      annotation (Placement(transformation(extent={{-98,-30},{-90,-22}}),
          iconTransformation(extent={{-100,80},{-80,100}})));
    Physiolibrary.Chemical.Sensors.ConcentrationMeasure concentrationMeasure
       annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        origin={-78,-20})));
    Physiolibrary.Types.RealIO.ConcentrationOutput
                                        Norepinephrine( displayUnit="pg/ml")
                                  annotation (Placement(
          transformation(extent={{-80,-16},{-88,-8}}),
                                                     iconTransformation(
            extent={{100,-10},{120,10}})));
    Physiolibrary.Types.RealIO.FractionInput
                                       AdrenalNerve_NA( displayUnit="Hz")
                       annotation (Placement(transformation(
            extent={{6,-26},{14,-18}}),  iconTransformation(extent={{-100,40},{-80,
              60}})));
    Physiolibrary.Chemical.Components.Clearance Clearance(K=1,
      useSolutionFlowInput=true)
    annotation (Placement(transformation(extent={{-28,-96},{-8,-76}})));
    Physiolibrary.Types.Constants.VolumeFlowRateConst flowConstant(k(displayUnit="ml/min") = 7.5e-05)
    annotation (Placement(transformation(extent={{-30,-76},{-22,-68}})));
    Physiolibrary.Blocks.Factors.Normalization FunctionEffect
    annotation (Placement(transformation(extent={{28,-42},{48,-22}})));
    Physiolibrary.Chemical.Sources.UnlimitedSolutePump Spillover(
      useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{50,18},{30,38}})));
    Physiolibrary.Types.Constants.MolarFlowRateConst hormoneFlowConstant1(k=
        570.0e-12/Substances.Norepinephrine.mw/60) "570 ng/min"
    annotation (Placement(transformation(extent={{52,50},{44,58}})));
    Physiolibrary.Blocks.Factors.Normalization SpilloverK
    annotation (Placement(transformation(extent={{30,28},{50,48}})));
    Physiolibrary.Types.RealIO.FractionInput
                                       GangliaGeneral_NA( displayUnit="Hz")
                       annotation (Placement(transformation(
            extent={{8,34},{16,42}}),    iconTransformation(extent={{-100,0},{-80,
              20}})));
equation
    connect(NEPool.q_out, secretion.q_out)      annotation (Line(
    points={{-72,-44},{28,-44}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(concentrationMeasure.q_in, NEPool.q_out)      annotation (Line(
    points={{-78,-22},{-71.2,-22},{-71.2,-44},{-72,-44}},
    color={200,0,0},
    smooth=Smooth.None));
    connect(concentrationMeasure.concentration, Norepinephrine) annotation (
    Line(
    points={{-78,-16},{-78,-12},{-84,-12}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(ECFV_Vol, NEPool.solutionVolume) annotation (Line(
    points={{-94,-26},{-88,-26},{-88,-40},{-76,-40}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(AdrenalNerve_NA, AdrenalNerveEffect.u)
                                      annotation (Line(
    points={{10,-22},{30,-22}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(hormoneFlowConstant.y, AdrenalNerveEffect.yBase)
                                                annotation (Line(
    points={{41,-6},{38,-6},{38,-20}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(NEPool.q_out, Clearance.q_in)           annotation (Line(
    points={{-72,-44},{-42,-44},{-42,-86},{-28,-86}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(flowConstant.y, Clearance.solutionFlow) annotation (Line(
    points={{-21,-72},{-18,-72},{-18,-82}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(OtherTissueFunctionEffect, FunctionEffect.u) annotation (Line(
    points={{4,-32},{30,-32}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(AdrenalNerveEffect.y, FunctionEffect.yBase) annotation (Line(
    points={{38,-26},{38,-30}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(FunctionEffect.y, secretion.soluteFlow) annotation (Line(
    points={{38,-36},{38,-38},{38,-40},{34,-40}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(NEPool.q_out, Spillover.q_out)      annotation (Line(
    points={{-72,-44},{-21,-44},{-21,28},{30,28}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(GangliaGeneral_NA, SpilloverK.u)
                                      annotation (Line(
    points={{12,38},{32,38}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(hormoneFlowConstant1.y, SpilloverK.yBase)
                                                annotation (Line(
    points={{43,54},{40,54},{40,40}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(SpilloverK.y, Spillover.soluteFlow) annotation (Line(
    points={{40,34},{40,34},{40,32},{36,32}},
    color={0,0,127},
    smooth=Smooth.None));
end Norepinephrine;
