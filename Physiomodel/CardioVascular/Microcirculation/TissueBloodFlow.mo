within Physiomodel.CardioVascular.Microcirculation;
model TissueBloodFlow
    extends Physiolibrary.Icons.Microcirculation;
    parameter Physiolibrary.Types.HydraulicConductance Cond;

    parameter Boolean onViscosity=true, onAnesthesia=true, onAngiogenesis=true, onAngiotensinII=true, onVasopressin=true, onCatecholamines=true, onOxygenOnly=true, onOxygenAndCarbonDioxide=false, onOxygenNeed=false, onExercise=false;

    parameter Real[:,3] VasculatureConductanceOnPO2 = {{41,1.2,0},{51,1.0,-0.03},{61,0.8,0}};
    parameter Real[:,3] PO2OnConductance = {{10,2.0,0},{30,1.0,0}};
    parameter Real[:,3] Angiotensin2Effect = {{0.0,1.05,0},{1.3,1.00,-0.08},{3.5,0.50,0}};
    parameter Real[:,3] AlphaReceptorsEffect = {{0.0,1.3,0},{1.0,1.0,-0.3},{5.0,0.1,0}};
    parameter Real[:,3] VasopressinEffect = {{0.8,1.0,0},{3.0,0.1,0}};
    parameter Physiolibrary.Types.Time VasculatureHalfTime=30*86400*Modelica.Math.log(2);

    Physiolibrary.Blocks.Factors.Spline A2Effect(
    Xscale=1e-9/Substances.AngiotensinII.mw,
    UsePositiveLog10=true,
      data=Angiotensin2Effect,
      enabled=onAngiotensinII)
    annotation (Placement(transformation(extent={{-8,40},{12,60}})));
    Physiolibrary.Blocks.Factors.Spline ADHEffect(
    Xscale=1e-9/Substances.Vasopressin.mw,
    UsePositiveLog10=true,
      data=VasopressinEffect,
      enabled=onVasopressin) "0.8 pg/ml = 0.8e-9 kg/m3"
    annotation (Placement(transformation(extent={{-8,30},{12,50}})));
    Physiolibrary.Types.Constants.HydraulicConductanceConst BasicConductance(k=Cond)
    annotation (Placement(transformation(extent={{-18,76},{-6,88}})));
    Physiolibrary.Blocks.Factors.Normalization Anesthesia(enabled=onAnesthesia)
    annotation (Placement(transformation(extent={{-8,50},{12,70}})));
    Physiolibrary.Blocks.Factors.Normalization Viscosity(enabled=onViscosity)
    annotation (Placement(transformation(extent={{-8,58},{12,78}})));
    Physiolibrary.Blocks.Factors.SplineLagOrZero              Vasculature(
      stateName="GITract-Vasculature.Effect",
    Xscale=101325/760,
      data=VasculatureConductanceOnPO2,
      HalfTime=VasculatureHalfTime,
      enabled=onAngiogenesis)
      annotation (Placement(transformation(extent={{-8,-18},{12,2}})));
    Physiomodel.Nerves.AplhaReceptorsActivityFactor AplhaReceptors(data=
          AlphaReceptorsEffect,
      Switch=not onCatecholamines,
      Setting=1)
      annotation (Placement(transformation(extent={{-8,16},{12,36}})));
    Physiolibrary.Hydraulic.Components.Conductor resistor(useConductanceInput=true)
      annotation (Placement(transformation(extent={{12,-100},{-8,-80}})));
    Physiolibrary.Blocks.Factors.Spline pO2OnConductance(
                 Xscale=101325/760, data=PO2OnConductance,
    enabled=onOxygenOnly)
    annotation (Placement(transformation(extent={{-8,-28},{12,-8}})));

    Physiolibrary.Types.TissueBusConnector tissueConnector annotation (
      Placement(transformation(extent={{-94,0},{-74,20}}),
        iconTransformation(extent={{-20,60},{20,100}})));
    Physiolibrary.Blocks.Factors.Spline TensionEffect(data={{0.0,2.2,0},{1.0,
        1.0,-0.5},{2.0,0.6,0}}, enabled=onOxygenAndCarbonDioxide)
    annotation (Placement(transformation(extent={{-8,-72},{12,-52}})));
    Physiolibrary.Blocks.Factors.Spline PO2OnTension(data={{22,0.0,0},{36,1.0,
        0.02},{60,1.2,0}}, Xscale=101325/760,
    enabled=onOxygenAndCarbonDioxide)
    annotation (Placement(transformation(extent={{-28,-48},{-8,-28}})));
    Physiolibrary.Blocks.Factors.Spline PCO2OnTension(
                                Xscale=101325/760,
    enabled=onOxygenAndCarbonDioxide,
    data={{20,1.8,0},{55,1.0,-0.05},{75,0.0,0}})
    "FIX: normal venous pCO2 in brain to 55mmHg (because of RQ close to 1)"
    annotation (Placement(transformation(extent={{-28,-56},{-8,-36}})));
    Physiolibrary.Types.Constants.OneConst one
      annotation (Placement(transformation(extent={{-30,-30},{-22,-22}})));
    MetabolicVasodilation metabolicVasolidation(
    data={{50,1.0,0},{1000,3.5,0.003},{3000,5.5,0}},
    stateName="SkeletalMuscle-MetabolicVasodilation.Effect",
    Xscale=1/1362657.193569,
    OnTau(displayUnit="min") = 12,
    OffTau(displayUnit="min") = 60,
    enabled=onOxygenNeed)
    annotation (Placement(transformation(extent={{-8,-82},{12,-62}})));
    Physiolibrary.Blocks.Factors.Normalization MusclePumping_SkeletalMuscle(enabled=
          onExercise)
    annotation (Placement(transformation(extent={{12,-2},{-8,18}})));
    Physiolibrary.Blocks.Math.Add add(k=1)
    annotation (Placement(transformation(extent={{4,-4},{-4,4}},
          rotation=90,
          origin={32,18})));
    Physiolibrary.Blocks.Factors.Spline RateEffect(data={{0,0.0,0.04},{60,1.0,
        0.0}}, Xscale=1/60,
      enabled=onExercise)
    annotation (Placement(transformation(extent={{42,20},{22,40}})));
    Physiolibrary.Blocks.Factors.Spline IntensityEffect(data={{0,0.0,0.007},{
        300,1.0,0.0}}, enabled=onExercise)
    annotation (Placement(transformation(extent={{42,30},{22,50}})));
    Physiolibrary.Types.Constants.OneConst one1
      annotation (Placement(transformation(extent={{20,52},{28,60}})));
    Physiolibrary.Hydraulic.Interfaces.HydraulicPort_a q_in "Blood inflow"
    annotation (extent=[-10,-110; 10,-90], Placement(transformation(extent={{80,-100},
              {100,-80}}),        iconTransformation(extent={{90,-10},{110,
            10}})));
    Physiolibrary.Hydraulic.Sensors.FlowMeasure flowMeasure annotation (
      Placement(transformation(
        extent={{10,-10},{-10,10}},
        origin={58,-90})));
    Physiolibrary.Hydraulic.Interfaces.HydraulicPort_b q_out "Blood outflow"
    annotation (extent=[-10,-110; 10,-90], Placement(transformation(extent={{-94,-100},
              {-74,-80}}),          iconTransformation(extent={{-110,-10},{
            -90,10}})));
    Modelica.Blocks.Interfaces.RealOutput BloodFlow
                                             annotation (Placement(transformation(
            extent={{78,-68},{90,-56}}), iconTransformation(extent={{60,-60},{80,
              -40}})));
    Physiolibrary.Types.BusConnector busConnector
    "signals of organ bood flow resistence" annotation (Placement(
        transformation(extent={{-100,80},{-80,100}}), iconTransformation(
          extent={{60,40},{100,80}})));
equation
    connect(Vasculature.y,pO2OnConductance. yBase) annotation (Line(
        points={{2,-14},{2,-16}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(Viscosity.y, Anesthesia.yBase) annotation (Line(
        points={{2,64},{2,62}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(BasicConductance.y, Viscosity.yBase)         annotation (Line(
        points={{-4.5,82},{2,82},{2,70}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(busConnector.AlphaBlocade_Effect, AplhaReceptors.AlphaBlockade_Effect)
      annotation (Line(
        points={{-90,90},{-60,90},{-60,26},{-7.8,26}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
    connect(busConnector.AlphaPool_Effect, AplhaReceptors.AlphaPool_Effect)
      annotation (Line(
        points={{-90,90},{-60,90},{-60,32},{-7.8,32}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
    connect(busConnector.GangliaGeneral_NA, AplhaReceptors.GangliaGeneral_NA)
      annotation (Line(
        points={{-90,90},{-60,90},{-60,20},{-7.8,20}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
    connect(busConnector.Anesthesia_VascularConductance, Anesthesia.u)
      annotation (Line(
        points={{-90,90},{-60,90},{-60,60},{-6,60}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
    connect(busConnector.Viscosity_ConductanceEffect, Viscosity.u) annotation (
        Line(
        points={{-90,90},{-60,90},{-60,68},{-6,68}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
    connect(busConnector.Vasopressin, ADHEffect.u) annotation (Line(
        points={{-90,90},{-60,90},{-60,40},{-6,40}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
    connect(busConnector.Angiotensin2, A2Effect.u) annotation (Line(
        points={{-90,90},{-60,90},{-60,50},{-6,50}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
    connect(tissueConnector.pO2, Vasculature.u) annotation (Line(
      points={{-84,10},{-60,10},{-60,-10},{-8,-10}},
      color={127,0,0},
      thickness=0.5,
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-6,3},{-6,3}}));
    connect(tissueConnector.pO2, pO2OnConductance.u) annotation (Line(
      points={{-84,10},{-60,10},{-60,-18},{-6,-18}},
      color={127,0,0},
      thickness=0.5,
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-6,3},{-6,3}}));
    connect(PO2OnTension.y,PCO2OnTension. yBase) annotation (Line(
        points={{-18,-42},{-18,-44}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(TensionEffect.u,PCO2OnTension. y) annotation (Line(
        points={{-6,-62},{-18,-62},{-18,-50}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(one.y, PO2OnTension.yBase) annotation (Line(
        points={{-21,-26},{-18,-26},{-18,-36}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(MusclePumping_SkeletalMuscle.u,add. y) annotation (Line(
        points={{10,8},{32,8},{32,13.6}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(add.u,RateEffect. y) annotation (Line(
        points={{32,22.8},{32,26}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(RateEffect.u, busConnector.Exercise_Metabolism_ContractionRate)
      annotation (Line(
        points={{40,30},{98,30},{98,90},{-90,90}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
    connect(TensionEffect.y, metabolicVasolidation.yBase) annotation (Line(
        points={{2,-66},{2,-70}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(tissueConnector.O2Need, metabolicVasolidation.O2Need) annotation (
     Line(
      points={{-84,10},{-60,10},{-60,-72},{-7.8,-72}},
      color={127,0,0},
      thickness=0.5,
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-6,3},{-6,3}}));
    connect(one1.y, IntensityEffect.yBase) annotation (Line(
        points={{29,56},{32,56},{32,42}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(tissueConnector.pO2, PO2OnTension.u) annotation (Line(
      points={{-84,10},{-60,10},{-60,-38},{-26,-38}},
      color={127,0,0},
      thickness=0.5,
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-6,3},{-6,3}}));
    connect(tissueConnector.pCO2, PCO2OnTension.u) annotation (Line(
      points={{-84,10},{-60,10},{-60,-46},{-26,-46}},
      color={127,0,0},
      thickness=0.5,
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-6,3},{-6,3}}));
    connect(flowMeasure.volumeFlow,BloodFlow)  annotation (Line(
        points={{58,-78},{58,-62},{84,-62}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(q_in, flowMeasure.q_in) annotation (Line(
        points={{90,-90},{68,-90}},
        color={0,0,0},
        thickness=1,
        smooth=Smooth.None));
    connect(flowMeasure.q_out, resistor.q_in) annotation (Line(
        points={{48,-90},{12,-90}},
        color={0,0,0},
        thickness=1,
        smooth=Smooth.None));
    connect(resistor.q_out, q_out) annotation (Line(
        points={{-8,-90},{-84,-90}},
        color={0,0,0},
        thickness=1,
        smooth=Smooth.None));
    connect(A2Effect.y, ADHEffect.yBase) annotation (Line(
        points={{2,46},{2,42}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(AplhaReceptors.yBase, ADHEffect.y) annotation (Line(
        points={{2,33},{2,36}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(Anesthesia.y, A2Effect.yBase) annotation (Line(
        points={{2,56},{2,52}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(pO2OnConductance.y, TensionEffect.yBase) annotation (Line(
        points={{2,-22},{2,-60}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(resistor.cond, metabolicVasolidation.y) annotation (Line(
        points={{2,-84},{2,-76}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(AplhaReceptors.y, MusclePumping_SkeletalMuscle.yBase) annotation (
        Line(
        points={{2,19},{2,10}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(Vasculature.yBase, MusclePumping_SkeletalMuscle.y) annotation (Line(
        points={{2,-2},{2,4}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(IntensityEffect.y, RateEffect.yBase) annotation (Line(
        points={{32,36},{32,32}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(tissueConnector.Function_Failed, Vasculature.Failed) annotation (
      Line(
      points={{-84,10},{-60,10},{-60,-4},{-8,-4}},
      color={127,0,0},
      thickness=0.5,
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-6,3},{-6,3}}));
    connect(IntensityEffect.u, busConnector.Exercise_Metabolism_MotionWatts)
    annotation (Line(
      points={{40,40},{98,40},{98,90},{-90,90}},
      color={0,0,127},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}}));
            annotation (
              Documentation(info="<HTML>
    <PRE>
        Blood resistance in gastro interstitial tract.

        </PRE>
        </HTML>
        ",     revisions="<html>
        <ul>
        <li><i>  </i>
               </li>
        <li><i> january 2009 </i><br>
               by Marek Matejak in Modelica initially implemented (consulted with Jiri Kofranek), Charles University, Prague<br>
               orginaly described by Tom Coleman in QHP 2008 beta 3, University of Mississippi Medical Center
               </li>
        </ul>
        </html>"), Icon(coordinateSystem(
                        preserveAspectRatio=false, extent={{-100,-100},{100,100}}),
                      graphics={Text(
                        extent={{-120,-106},{80,-86}},
                        lineColor={0,0,255},
                        textString="%name")}));
end TissueBloodFlow;