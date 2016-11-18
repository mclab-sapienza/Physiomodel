within Physiomodel.Hormones.Catechols;
model Epinephrine
    extends Physiolibrary.Icons.AdrenalGland;
    // outer parameter Real ECF_Vol(final displayUnit="ml");

    Physiolibrary.Chemical.Components.Substance EpiPool(
    stateName="EpiPool.Mass",
    useNormalizedVolume=false,
    solute_start=(571.791)*1e-12/Substances.Epinephrine.mw)
    "0.040 ng/ml * 15000 ml =  600 ng "
    annotation (Placement(transformation(extent={{-82,-54},{-62,-34}})));
    Physiolibrary.Chemical.Sources.UnlimitedSolutePump secretion(
      useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{48,-54},{28,-34}})));
    Physiolibrary.Types.Constants.MassFlowRateConst hormoneFlowConstant(k=375e-12
        /Substances.Epinephrine.mw/60) "376 ng/min"
    annotation (Placement(transformation(extent={{50,-10},{42,-2}})));
    Physiolibrary.Blocks.Factors.Spline AdrenalNerveEffect(data={{2.0,1.0,0},
        {8.0,20.0,0}})
    annotation (Placement(transformation(extent={{28,-32},{48,-12}})));
    Physiolibrary.Types.RealIO.FractionInput
                                       OtherTissueFunctionEffect
                       annotation (Placement(transformation(
            extent={{0,-36},{8,-28}}),   iconTransformation(extent={{-100,40},{-80,
              60}})));
    Physiolibrary.Types.RealIO.VolumeInput
                                       ECFV_Vol( displayUnit="ml")
      annotation (Placement(transformation(extent={{-98,-30},{-90,-22}}),
          iconTransformation(extent={{-100,80},{-80,100}})));
    Physiolibrary.Chemical.Sensors.ConcentrationMeasure concentrationMeasure
       annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        origin={-76,-26})));
    Physiolibrary.Types.RealIO.ConcentrationOutput
                                        Epinephrine( displayUnit=
             "pg/ml")             annotation (Placement(
          transformation(extent={{-82,-20},{-90,-12}}),
                                                     iconTransformation(
            extent={{100,-10},{120,10}})));
    Physiolibrary.Types.RealIO.FractionInput
                                       AdrenalNerve_NA( displayUnit="Hz")
                       annotation (Placement(transformation(
            extent={{6,-26},{14,-18}}),  iconTransformation(extent={{-100,0},{-80,
              20}})));
    Physiolibrary.Chemical.Components.Clearance Clearance(K=1,
      useSolutionFlowInput=true)
    annotation (Placement(transformation(extent={{-28,-96},{-8,-76}})));
    Physiolibrary.Types.Constants.VolumeFlowRateConst flowConstant(k(
        displayUnit="l/min") = 0.00015666666666667)
    annotation (Placement(transformation(extent={{-30,-76},{-22,-68}})));
    Physiolibrary.Blocks.Factors.Normalization FunctionEffect
    annotation (Placement(transformation(extent={{28,-42},{48,-22}})));
equation
    connect(EpiPool.q_out, secretion.q_out)     annotation (Line(
    points={{-72,-44},{28,-44}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(concentrationMeasure.q_in, EpiPool.q_out)     annotation (Line(
    points={{-76,-28},{-71.2,-28},{-71.2,-44},{-72,-44}},
    color={200,0,0},
    smooth=Smooth.None));
    connect(concentrationMeasure.concentration, Epinephrine) annotation (Line(
    points={{-76,-22},{-76,-16},{-86,-16}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(ECFV_Vol, EpiPool.solutionVolume) annotation (Line(
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
    connect(EpiPool.q_out, Clearance.q_in)          annotation (Line(
    points={{-72,-44},{-42,-44},{-42,-86},{-28,-86}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(flowConstant.y, Clearance.solutionFlow) annotation (Line(
    points={{-21,-72},{-18,-72},{-18,-79}},
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
    points={{38,-36},{38,-40},{34,-40}},
    color={0,0,127},
    smooth=Smooth.None));
end Epinephrine;