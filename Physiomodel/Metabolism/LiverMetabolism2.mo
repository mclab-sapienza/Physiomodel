within Physiomodel.Metabolism;
model LiverMetabolism2
    // import QHP = Physiomodel;
    extends Physiolibrary.Icons.Liver;
    //outer parameter Real EFC_Vol(final displayUnit="ml");
    Physiolibrary.Chemical.Components.Substance Glycogen(solute_start=120e-6/
      Substances.Glucose.mw)
    "amount of bound glucose molecules in glycogen (initial mass 120 mg of bound glucose molecules)"
    annotation (Placement(transformation(extent={{96,46},{76,66}})));
    Physiolibrary.Chemical.Components.SolutePump LM_Glycogenesis(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{4,58},{24,78}})));
    Physiolibrary.Chemical.Components.SolutePump LM_Glycogenolysis(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{24,6},{4,26}})));
    Physiolibrary.Chemical.Components.SolutePump LM_FA_Glucose(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{-20,-34},{-40,-14}})));
    Physiolibrary.Chemical.Components.SolutePump LM_Gluconeogenesis(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{64,-34},{44,-14}})));
    Physiomodel.Metabolism.deprecated.ContinualReaction2 AA_TO_GLU
    annotation (Placement(transformation(extent={{34,-34},{14,-14}})));
    Physiomodel.Metabolism.deprecated.ContinualReaction GLU_TO_FA(a=0.42*(Substances.Glucose.mw
      /Substances.Triglycerides.mw))
    annotation (Placement(transformation(extent={{-48,-34},{-68,-14}})));
    Physiolibrary.Blocks.Factors.LagSpline InsulinEffect_Glycogenesis(
    data={{0,0.0,0.0},{35,1.0,0.03},{120,3.0,0.0}},
    HalfTime=Modelica.Math.log(2)*40*60,
    initialValue=50)
    "initial: 40 uiu/ml = 40 iu/m3 , LM_Insulin.Tau = 40 min"
    annotation (Placement(transformation(extent={{4,80},{24,100}})));
    Physiolibrary.Blocks.Factors.LagSpline InsulinEffect_Glucose2FA(
    data={{0,0.0,0.0},{50,1.0,0.06},{200,3.0,0.0}},
    HalfTime=Modelica.Math.log(2)*40*60,
    initialValue=50)
    annotation (Placement(transformation(extent={{-20,-18},{-40,2}})));
    Physiolibrary.Blocks.Factors.LagSpline
                                    InsulinEffect4(data={{0,2.5,0.0},{50,
      1.0,-0.005},{500,0.0,0.0}},
    HalfTime=Modelica.Math.log(2)*40*60,
    initialValue=50)
    annotation (Placement(transformation(extent={{44,-8},{64,12}})));
    Physiolibrary.Types.Constants.MolarFlowRateConst BaseGlycogenesis(k(
      displayUnit="mol/s") = 75e-6/Substances.Glucose.mw/60)
    "glucose flow rate 75 mg/min"
    annotation (Placement(transformation(extent={{36,88},{26,98}})));
    Physiolibrary.Types.Constants.MolarFlowRateConst BaseGlucose2FA(k=70e-6/
      Substances.Glucose.mw/60) "glucose flow rate 70 mg/min"
    annotation (Placement(transformation(extent={{-18,2},{-28,12}})));
    Physiolibrary.Types.Constants.MolarFlowRateConst BaseAminoAcids2Glucose(k=30e-6/
      Substances.AminoAcids.mw/60)
    annotation (Placement(transformation(extent={{70,10},{60,20}})));
    Physiolibrary.Blocks.Factors.Spline MassEffect_Glycogenesis(data={{0,3.0,
      0.0},{100,1.0,-0.05},{200,0.0,0.0}}, Xscale=1e-6/Substances.Glucose.mw)
    annotation (Placement(transformation(extent={{24,68},{4,88}})));
    Physiolibrary.Blocks.Factors.Spline GlucoseEffect_Glycogenesis(data={{120,
      0.0,0.0},{130,1.0,0.06},{200,2.0,0.0}}, Xscale=0.01/Substances.Glucose.mw)
    annotation (Placement(transformation(extent={{4,76},{24,96}})));
    Physiolibrary.Blocks.Factors.Normalization LiverFunctionEffect_Glycogenesis
    annotation (Placement(transformation(extent={{4,72},{24,92}})));
    Physiolibrary.Blocks.Factors.LagSpline InsulinEffect_Glycogenolysis(
    data={{0,2.0,0.0},{35,1.0,-0.02},{120,0.0,0.0}},
    HalfTime=Modelica.Math.log(2)*40*60,
    initialValue=50)
    annotation (Placement(transformation(extent={{4,36},{24,56}})));
    Physiolibrary.Types.Constants.MolarFlowRateConst BaseGlycogenolysis(k=75e-6/
      Substances.Glucose.mw/60) "glucose flow rate 75 mg/min"
    annotation (Placement(transformation(extent={{36,44},{26,54}})));
    Physiolibrary.Blocks.Factors.Spline MassEffect_Glycogenolysis(data={{0,0.0,
      0.0},{100,1.0,0.0}}, Xscale=1e-6/Substances.Glucose.mw)
    annotation (Placement(transformation(extent={{24,14},{4,34}})));
    Physiolibrary.Blocks.Factors.Spline GlucoseEffect_Glycogenolysis(data={{45,
      2.0,0.0},{125,1.0,-0.01},{350,0.3,0.0}}, Xscale=0.01/Substances.Glucose.mw)
    annotation (Placement(transformation(extent={{4,28},{24,48}})));
    Physiolibrary.Blocks.Factors.Normalization LiverFunctionEffect_Glycogenolysis
    annotation (Placement(transformation(extent={{4,20},{24,40}})));
    Physiolibrary.Blocks.Factors.Spline GlucagonEffect_Glycogenolysis(data={{
      170,1.0,0.0},{680,2.0,0.0}}, Xscale=1e-9/Substances.Glucagon.mw)
    "170 pg/ml = 170e-9 kg/m3"
    annotation (Placement(transformation(extent={{4,32},{24,52}})));
    Physiolibrary.Blocks.Factors.Spline EpinephrineEffect_Glycogenolysis(data={{0,
      0.8,0.0},{40,1.0,0.01},{400,10.0,0.02},{1200,20.0,0.0}}, Xscale=1e-9/
      Substances.Epinephrine.mw) "40 pg/ml = 40e-9 kg/m3"
    annotation (Placement(transformation(extent={{24,24},{4,44}})));
    Physiolibrary.Types.Constants.FractionConst             Constant3(k=0.6*(
      Substances.AminoAcids.mw/Substances.Glucose.mw))
    annotation (Placement(transformation(extent={{32,-18},{26,-12}})));
    Physiolibrary.Blocks.Factors.Spline GlucoseEffect_Glucose2FA(data={{120,0.0,
      0.0},{130,1.0,0.05},{200,2.0,0.0}}, Xscale=0.01/Substances.Glucose.mw)
    annotation (Placement(transformation(extent={{-20,-22},{-40,-2}})));
    Physiolibrary.Blocks.Factors.Normalization LiverFunctionEffect_Glucose2FA
    annotation (Placement(transformation(extent={{-20,-26},{-40,-6}})));
    Physiolibrary.Blocks.Factors.Spline GlucagonEffect_AminoAcids2Glucose(data={{
      170,1.0,0.0},{680,2.0,0.0}}, Xscale=1e-9/Substances.Glucagon.mw)
    annotation (Placement(transformation(extent={{44,-14},{64,6}})));
    Physiolibrary.Blocks.Factors.Spline GlucoseEffect_AminoAcids2Glucose(data={{45,
      2.0,0.0},{125,1.0,-0.008},{340,0.3,0.0}}, Xscale=0.01/Substances.Glucose.mw)
    annotation (Placement(transformation(extent={{44,-18},{64,2}})));
    Physiolibrary.Blocks.Factors.Spline AminoAcidEffect(
    data={{0,0.0,0.0},{50,1.0,0.02},{200,2.0,0.0}},
    y(start=1.13856),
    u(start=57.2753),
    Xscale=1e-2/Substances.AminoAcids.mw) "50 mg/dl = 50e-2 kg/m3"
    annotation (Placement(transformation(extent={{92,-8},{72,12}})));
    Physiolibrary.Blocks.Factors.Normalization LiverFunctionEffect_AminoAcids2Glucose
    annotation (Placement(transformation(extent={{44,-26},{64,-6}})));
    Physiolibrary.Chemical.Interfaces.ChemicalPort_b Glucose(conc(final
      displayUnit="mg/ml"), q(final displayUnit="mg/min"))
    "extracellular storage" annotation (Placement(transformation(extent={{-62,
          58},{-42,78}}), iconTransformation(extent={{90,-70},{110,-50}})));
    Physiolibrary.Chemical.Interfaces.ChemicalPort_b triglicerides(conc(final
      displayUnit="mg/ml"), q(final displayUnit="mg/min")) annotation (
    Placement(transformation(extent={{-92,-16},{-72,4}}),
      iconTransformation(extent={{90,50},{110,70}})));
    Physiolibrary.Chemical.Interfaces.ChemicalPort_b Ketoacids(conc(final
      displayUnit="mg/ml"), q(final displayUnit="mg/min"))
    "extracellular storage" annotation (Placement(transformation(extent={{-12,
          -92},{8,-72}}), iconTransformation(extent={{90,-10},{110,10}})));
    Physiolibrary.Types.BusConnector busConnector annotation (Placement(
      transformation(extent={{-108,86},{-88,106}}), iconTransformation(
        extent={{-108,-10},{-88,10}})));
    Physiolibrary.Chemical.Components.SolutePump LM_Ketoacids(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{-58,-92},{-38,-72}})));
    Physiomodel.Metabolism.deprecated.ContinualReaction FA_TO_KA(a=1.02*(Substances.FattyAcids.mw
      /Substances.KetoAcids.mw)) annotation (Placement(transformation(
      extent={{-10,-10},{10,10}},
      origin={-18,-82})));
    Physiolibrary.Blocks.Factors.Normalization LiverFunctionEffect_Ketogenesis
    annotation (Placement(transformation(extent={{-58,-84},{-38,-64}})));
    Physiolibrary.Blocks.Factors.Spline FattyAcidEffect_Ketogenesis(data={{0,
      0.5,0.0},{15,1.0,0.05},{75,5.0,0.0}}, Xscale=1e-2/Substances.FattyAcids.mw)
    "effect on fatty acids concentration in mg/dl"
    annotation (Placement(transformation(extent={{-58,-76},{-38,-56}})));
    Physiolibrary.Blocks.Factors.Spline GlucagonEffect_Ketogenesis(data={{0,0.5,
      0.0},{170,1.0,0.01},{340,10.0,0.0}}, Xscale=1e-9/Substances.Glucagon.mw)
    annotation (Placement(transformation(extent={{-58,-80},{-38,-60}})));
    Physiolibrary.Types.Constants.MolarFlowRateConst BaseKetogenesis(k=2.2e-6/
      Substances.FattyAcids.mw/60)
    annotation (Placement(transformation(extent={{-24,-58},{-34,-48}})));
    Physiolibrary.Chemical.Sensors.ConcentrationMeasure concentrationMeasure
    annotation (Placement(transformation(extent={{-80,-90},{-60,-70}})));
    Physiolibrary.Chemical.Interfaces.ChemicalPort_b AminoAcids(conc(final
      displayUnit="mg/ml"), q(final displayUnit="mg/min"))
    "extracellular storage" annotation (Placement(transformation(extent={{76,
          -34},{96,-14}}), iconTransformation(extent={{50,-110},{70,-90}})));
    Physiolibrary.Chemical.Sensors.ConcentrationMeasure concentrationMeasure1
    annotation (Placement(transformation(extent={{86,-22},{106,-2}})));
    Physiolibrary.Chemical.Components.SolutePump LM_FA_AminoAcids(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{64,-78},{44,-58}})));
    Physiomodel.Metabolism.deprecated.ContinualReaction2 AA_TO_FA
    annotation (Placement(transformation(extent={{38,-78},{18,-58}})));
    Physiolibrary.Blocks.Factors.LagSpline InsulinEffect_AminoAcids2FA(
    data={{0,0.0,0.0},{50,1.0,0.05},{80,4.0,0.0}},
    HalfTime=Modelica.Math.log(2)*40*60,
    initialValue=50)
    annotation (Placement(transformation(extent={{64,-62},{44,-42}})));
    Physiolibrary.Types.Constants.MolarFlowRateConst BaseAminoAcids2FA(
                                                                  k=20e-6/
      Substances.AminoAcids.mw/60)
    annotation (Placement(transformation(extent={{66,-48},{56,-38}})));
    Physiolibrary.Types.Constants.FractionConst             Constant5(k=0.437*(
      Substances.AminoAcids.mw/Substances.FattyAcids.mw))
    annotation (Placement(transformation(extent={{38,-60},{32,-54}})));
    Physiolibrary.Blocks.Factors.Normalization LiverFunctionEffect_AminoAcids2FA
    annotation (Placement(transformation(extent={{64,-70},{44,-50}})));
    Physiolibrary.Chemical.Interfaces.ChemicalPort_b Urea(conc(final
      displayUnit="mg/ml"), q(final displayUnit="mg/min"))
    "extracellular storage" annotation (Placement(transformation(extent={{-8,-54},
          {12,-34}}),      iconTransformation(extent={{-70,-110},{-50,-90}})));
    Physiolibrary.Types.Constants.FractionConst             Constant6(k=0.3*(
      Substances.AminoAcids.mw/Substances.Urea.mw))
    annotation (Placement(transformation(extent={{10,-18},{16,-12}})));
    Physiolibrary.Types.Constants.FractionConst             Constant7(k=0.3*(
      Substances.AminoAcids.mw/Substances.Urea.mw))
    annotation (Placement(transformation(extent={{14,-60},{20,-54}})));
    Physiolibrary.Chemical.Interfaces.ChemicalPort_b fattyAcids(conc(final
      displayUnit="mg/ml"), q(final displayUnit="mg/min")) annotation (
    Placement(transformation(extent={{-102,-92},{-82,-72}}),
      iconTransformation(extent={{90,90},{110,110}})));
    Physiolibrary.Blocks.Factors.Normalization AAEffect_AminoAcids2Glucose
    annotation (Placement(transformation(extent={{64,-22},{44,-2}})));
    Physiolibrary.Types.Constants.FractionConst             Constant1(k=1)
    annotation (Placement(transformation(extent={{96,12},{88,20}})));
    Physiolibrary.Blocks.Factors.Normalization AAEffect_AminoAcids2FA
    annotation (Placement(transformation(extent={{64,-66},{44,-46}})));
    Physiolibrary.Chemical.Sensors.MolarFlowMeasure molarFlowMeasure
    annotation (Placement(transformation(extent={{8,-26},{-10,-16}})));
    Physiolibrary.Chemical.Components.ChemicalReaction chemicalReaction(
    useForwardRateInput=true,
    K=Modelica.Constants.inf,
    p={1/(0.42*(Substances.Glucose.mw/Substances.Triglycerides.mw))})
    annotation (Placement(transformation(extent={{-42,10},{-62,30}})));
    Physiolibrary.Blocks.Factors.LagSpline InsulinEffect_Glucose2FA1(
    data={{0,0.0,0.0},{50,1.0,0.06},{200,3.0,0.0}},
    HalfTime=Modelica.Math.log(2)*40*60,
    initialValue=50)
    annotation (Placement(transformation(extent={{-46,30},{-66,50}})));
    Physiolibrary.Types.Constants.MolarFlowRateConst BaseGlucose2FA1(
                                                                k=70e-6/
      Substances.Glucose.mw/60) "glucose flow rate 70 mg/min"
    annotation (Placement(transformation(extent={{-44,50},{-54,60}})));
    Physiolibrary.Blocks.Factors.Spline GlucoseEffect_Glucose2FA1(
                                                             data={{120,0.0,
      0.0},{130,1.0,0.05},{200,2.0,0.0}}, Xscale=0.01/Substances.Glucose.mw)
    annotation (Placement(transformation(extent={{-46,26},{-66,46}})));
    Physiolibrary.Blocks.Factors.Normalization LiverFunctionEffect_Glucose2FA1
    annotation (Placement(transformation(extent={{-46,22},{-66,42}})));
equation
    connect(InsulinEffect_Glycogenesis.yBase, BaseGlycogenesis.y) annotation (
    Line(
    points={{14,92},{14,93},{24.75,93}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(InsulinEffect4.yBase, BaseAminoAcids2Glucose.y) annotation (Line(
    points={{54,4},{54,15},{58.75,15}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(InsulinEffect_Glucose2FA.yBase, BaseGlucose2FA.y) annotation (Line(
    points={{-30,-6},{-30,7},{-29.25,7}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(GlucoseEffect_Glycogenesis.y, LiverFunctionEffect_Glycogenesis.yBase)
    annotation (Line(
    points={{14,82},{14,84}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(InsulinEffect_Glycogenolysis.yBase, BaseGlycogenolysis.y)
    annotation (Line(
    points={{14,48},{14,49},{24.75,49}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(GlucagonEffect_Glycogenolysis.yBase, InsulinEffect_Glycogenolysis.y)
    annotation (Line(
    points={{14,44},{14,42}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(EpinephrineEffect_Glycogenolysis.yBase,
    GlucoseEffect_Glycogenolysis.y) annotation (Line(
    points={{14,36},{14,34}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(EpinephrineEffect_Glycogenolysis.y,
    LiverFunctionEffect_Glycogenolysis.yBase) annotation (Line(
    points={{14,30},{14,32}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Constant3.y, AA_TO_GLU.coef) annotation (Line(
    points={{25.25,-15},{24,-15},{24,-20}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(InsulinEffect_Glucose2FA.y, GlucoseEffect_Glucose2FA.yBase)
    annotation (Line(
    points={{-30,-12},{-30,-10}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(GlucoseEffect_Glucose2FA.y, LiverFunctionEffect_Glucose2FA.yBase)
    annotation (Line(
    points={{-30,-16},{-30,-14}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(LiverFunctionEffect_Glucose2FA.y, LM_FA_Glucose.soluteFlow)
    annotation (Line(
    points={{-30,-20},{-34,-20}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(InsulinEffect4.y, GlucagonEffect_AminoAcids2Glucose.yBase)
    annotation (Line(
    points={{54,-2},{54,-2}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(GlucagonEffect_AminoAcids2Glucose.y,
    GlucoseEffect_AminoAcids2Glucose.yBase) annotation (Line(
    points={{54,-8},{54,-6}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(LiverFunctionEffect_AminoAcids2Glucose.y, LM_Gluconeogenesis.soluteFlow)
    annotation (Line(
    points={{54,-20},{50,-20}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(busConnector.LiverFunctionEffect, LiverFunctionEffect_Glycogenesis.u)
    annotation (Line(
    points={{-98,96},{-6,96},{-6,82},{6,82}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(busConnector.LiverFunctionEffect,
    LiverFunctionEffect_Glycogenolysis.u) annotation (Line(
    points={{-98,96},{-5.9,96},{-5.9,30},{6,30}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(busConnector.LiverFunctionEffect,
    LiverFunctionEffect_AminoAcids2Glucose.u) annotation (Line(
    points={{-98,96},{-6,96},{-6,-10},{40,-10},{40,-16},{46,-16}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(busConnector.LiverFunctionEffect, LiverFunctionEffect_Glucose2FA.u)
    annotation (Line(
    points={{-98,96},{-6,96},{-6,-16},{-22,-16}},
    color={0,0,127},
    smooth=Smooth.None));

    connect(busConnector.PortalVein_Glucagon, GlucagonEffect_AminoAcids2Glucose.u)
    annotation (Line(
    points={{-98,96},{-2,96},{-2,-4},{46,-4}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(GlucagonEffect_Glycogenolysis.u, busConnector.PortalVein_Glucagon)
    annotation (Line(
    points={{6,42},{-2,42},{-2,96},{-98,96}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(AA_TO_GLU.q_in, LM_Gluconeogenesis.q_out) annotation (Line(
    points={{34,-24},{44,-24}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(LiverFunctionEffect_Ketogenesis.y, LM_Ketoacids.soluteFlow)
    annotation (Line(
    points={{-48,-78},{-44,-78}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(GlucagonEffect_Ketogenesis.y, LiverFunctionEffect_Ketogenesis.yBase)
    annotation (Line(
    points={{-48,-74},{-48,-72}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(FattyAcidEffect_Ketogenesis.y, GlucagonEffect_Ketogenesis.yBase)
    annotation (Line(
    points={{-48,-70},{-48,-68}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(FattyAcidEffect_Ketogenesis.yBase, BaseKetogenesis.y) annotation (
    Line(
    points={{-48,-64},{-48,-53},{-35.25,-53}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(busConnector.LiverFunctionEffect, LiverFunctionEffect_Ketogenesis.u)
    annotation (Line(
    points={{-98,96},{-98,-74},{-56,-74}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(busConnector.PortalVein_Glucagon, GlucagonEffect_Ketogenesis.u)
    annotation (Line(
    points={{-98,96},{-98,-70},{-56,-70}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(busConnector.PortalVein_Glucose, GlucoseEffect_Glycogenesis.u)
    annotation (Line(
    points={{-98,96},{-10,96},{-10,86},{6,86}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(busConnector.PortalVein_Glucose, GlucoseEffect_Glycogenolysis.u)
    annotation (Line(
    points={{-98,96},{-10,96},{-10,38},{6,38}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(busConnector.PortalVein_Glucose, GlucoseEffect_AminoAcids2Glucose.u)
    annotation (Line(
    points={{-98,96},{-10,96},{-10,-8},{46,-8}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(busConnector.PortalVein_Glucose, GlucoseEffect_Glucose2FA.u)
    annotation (Line(
    points={{-98,96},{-10,96},{-10,-12},{-22,-12}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None));
    connect(EpinephrineEffect_Glycogenolysis.u, busConnector.Epinephrine)
    annotation (Line(
    points={{22,34},{100,34},{100,100},{-98,100},{-98,96}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(Glucose, LM_Glycogenesis.q_in) annotation (Line(
    points={{-52,68},{4,68}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(LM_Glycogenolysis.q_out, Glucose) annotation (Line(
    points={{4,16},{-14,16},{-14,68},{-52,68}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(LM_FA_Glucose.q_in, Glucose) annotation (Line(
    points={{-20,-24},{-14,-24},{-14,68},{-52,68}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(AminoAcids, LM_Gluconeogenesis.q_in) annotation (Line(
    points={{86,-24},{64,-24}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(AminoAcids, concentrationMeasure1.q_in) annotation (Line(
    points={{86,-24},{80,-24},{80,-14},{96,-14}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(InsulinEffect_AminoAcids2FA.yBase, BaseAminoAcids2FA.y) annotation (
    Line(
    points={{54,-50},{54,-43},{54.75,-43}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Constant5.y, AA_TO_FA.coef)  annotation (Line(
    points={{31.25,-57},{28,-57},{28,-64}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(LiverFunctionEffect_AminoAcids2FA.y, LM_FA_AminoAcids.soluteFlow)
    annotation (Line(
    points={{54,-64},{50,-64}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(busConnector.LiverFunctionEffect, LiverFunctionEffect_AminoAcids2FA.u)
    annotation (Line(
    points={{-98,96},{-98,100},{100,100},{100,-60},{62,-60}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(AA_TO_FA.q_in, LM_FA_AminoAcids.q_out) annotation (Line(
    points={{38,-68},{44,-68}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(AA_TO_FA.q_out, triglicerides)
                                  annotation (Line(
    points={{18,-65},{-14,-65},{-14,-44},{-82,-44},{-82,-6}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(LM_FA_AminoAcids.q_in, AminoAcids) annotation (Line(
    points={{64,-68},{80,-68},{80,-24},{86,-24}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(Urea, AA_TO_GLU.q_out2) annotation (Line(
    points={{2,-44},{8,-44},{8,-26},{14,-26},{14,-27}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(AA_TO_FA.q_out2, Urea) annotation (Line(
    points={{18,-71},{8,-71},{8,-44},{2,-44}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(AA_TO_GLU.coef2, Constant6.y) annotation (Line(
    points={{18,-20},{18,-15},{16.75,-15}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(AA_TO_FA.coef2, Constant7.y) annotation (Line(
    points={{22,-64},{22,-57},{20.75,-57}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(fattyAcids, concentrationMeasure.q_in)
    annotation (Line(
    points={{-92,-82},{-70,-82}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(fattyAcids, LM_Ketoacids.q_in)                   annotation (Line(
    points={{-92,-82},{-58,-82}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(InsulinEffect_Glycogenesis.y, GlucoseEffect_Glycogenesis.yBase)
    annotation (Line(
    points={{14,86},{14,88}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(LiverFunctionEffect_Glycogenesis.y, MassEffect_Glycogenesis.yBase)
    annotation (Line(
    points={{14,78},{14,80}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(MassEffect_Glycogenesis.y, LM_Glycogenesis.soluteFlow) annotation (
    Line(
    points={{14,74},{14,72},{18,72}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(GlucagonEffect_Glycogenolysis.y, GlucoseEffect_Glycogenolysis.yBase)
    annotation (Line(
    points={{14,38},{14,40}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(MassEffect_Glycogenolysis.yBase, LiverFunctionEffect_Glycogenolysis.y)
    annotation (Line(
    points={{14,26},{14,26}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(MassEffect_Glycogenolysis.y, LM_Glycogenolysis.soluteFlow)
    annotation (Line(
    points={{14,20},{10,20}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(LM_Glycogenolysis.q_in, Glycogen.q_out) annotation (Line(
    points={{24,16},{56,16},{56,56},{86,56}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(LM_Glycogenesis.q_out, Glycogen.q_out) annotation (Line(
    points={{24,68},{56,68},{56,56},{86,56}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(GlucoseEffect_AminoAcids2Glucose.y, AAEffect_AminoAcids2Glucose.yBase)
    annotation (Line(
    points={{54,-12},{54,-10}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(LiverFunctionEffect_AminoAcids2Glucose.yBase,
    AAEffect_AminoAcids2Glucose.y) annotation (Line(
    points={{54,-14},{54,-16}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Constant1.y, AminoAcidEffect.yBase) annotation (Line(
    points={{87,16},{82,16},{82,4}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(AminoAcidEffect.y, AAEffect_AminoAcids2Glucose.u) annotation (Line(
    points={{82,-2},{82,-12},{62,-12}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(InsulinEffect_AminoAcids2FA.y, AAEffect_AminoAcids2FA.yBase)
    annotation (Line(
    points={{54,-56},{54,-54}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(AAEffect_AminoAcids2FA.y, LiverFunctionEffect_AminoAcids2FA.yBase)
    annotation (Line(
    points={{54,-60},{54,-58}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(AminoAcidEffect.y, AAEffect_AminoAcids2FA.u) annotation (Line(
    points={{82,-2},{82,-56},{62,-56}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(FA_TO_KA.B, Ketoacids) annotation (Line(
    points={{-8,-79},{-8,-82},{-2,-82}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(LM_Ketoacids.q_out, FA_TO_KA.A) annotation (Line(
    points={{-38,-82},{-28,-82}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(GLU_TO_FA.B, triglicerides) annotation (Line(
    points={{-68,-21},{-82,-21},{-82,-6}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(GLU_TO_FA.A, LM_FA_Glucose.q_out) annotation (Line(
    points={{-48,-24},{-40,-24}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(MassEffect_Glycogenesis.y, busConnector.liver_GlucoseToCellStorageFlow)
    annotation (Line(
    points={{14,74},{60,74},{60,100},{-98,100},{-98,96}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(Glycogen.solute, MassEffect_Glycogenolysis.u) annotation (Line(
    points={{80,46},{80,24},{22,24}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Glycogen.solute, MassEffect_Glycogenesis.u) annotation (Line(
    points={{80,46},{80,26},{26,26},{26,78},{22,78}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(AminoAcids, AminoAcids) annotation (Line(
    points={{86,-24},{81,-24},{81,-24},{86,-24}},
    color={107,45,134},
    thickness=1,
    smooth=Smooth.None));
    connect(concentrationMeasure1.concentration, AminoAcidEffect.u)
    annotation (Line(
    points={{96,-8},{96,2},{90,2}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(concentrationMeasure.concentration, FattyAcidEffect_Ketogenesis.u)
    annotation (Line(
    points={{-70,-76},{-70,-66},{-56,-66}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(busConnector.PortalVein_Insulin, InsulinEffect_Glycogenesis.u)
    annotation (Line(
    points={{-98,96},{-30,96},{-30,90},{6,90}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(busConnector.PortalVein_Insulin, InsulinEffect_Glycogenolysis.u)
    annotation (Line(
    points={{-98,96},{-30,96},{-30,46},{6,46}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(InsulinEffect_Glucose2FA.u, busConnector.PortalVein_Insulin)
    annotation (Line(
    points={{-22,-8},{-10,-8},{-10,96},{-98,96}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(InsulinEffect_AminoAcids2FA.u, busConnector.PortalVein_Insulin)
    annotation (Line(
    points={{62,-52},{100,-52},{100,100},{-98,100},{-98,96}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(busConnector.PortalVein_Insulin, InsulinEffect4.u) annotation (Line(
    points={{-98,96},{-10,96},{-10,2},{46,2}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(AA_TO_GLU.q_out, molarFlowMeasure.q_in) annotation (Line(
    points={{14,-21},{8,-21}},
    color={107,45,134},
    thickness=1,
    smooth=Smooth.None));
    connect(Glucose, molarFlowMeasure.q_out) annotation (Line(
    points={{-52,68},{-14,68},{-14,-21},{-10,-21}},
    color={107,45,134},
    thickness=1,
    smooth=Smooth.None));
    connect(molarFlowMeasure.molarFlowRate, busConnector.GlucoseFromGluconeogenesis)
    annotation (Line(
    points={{-1,-24},{-2,-24},{-2,-34},{-98,-34},{-98,96}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(LiverFunctionEffect_Glucose2FA.y, busConnector.GlucoseToFA)
    annotation (Line(
    points={{-30,-20},{-98,-20},{-98,96}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(LiverFunctionEffect_Ketogenesis.y, busConnector.FattyAcidsToKA)
    annotation (Line(
    points={{-48,-78},{-98,-78},{-98,96}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(LiverFunctionEffect_AminoAcids2FA.y, busConnector.AminoAcidsToFA)
    annotation (Line(
    points={{54,-64},{-98,-64},{-98,96}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(LiverFunctionEffect_AminoAcids2Glucose.y, busConnector.AminoAcidsToGlucose)
    annotation (Line(
    points={{54,-20},{100,-20},{100,96},{-98,96}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(chemicalReaction.substrates[1], Glucose) annotation (Line(
    points={{-42,20},{-14,20},{-14,68},{-52,68}},
    color={107,45,134},
    thickness=1,
    smooth=Smooth.None));
    connect(chemicalReaction.products[1], Glucose) annotation (Line(
    points={{-62,20},{-74,20},{-74,66},{-52,66},{-52,68}},
    color={107,45,134},
    thickness=1,
    smooth=Smooth.None));
    connect(InsulinEffect_Glucose2FA1.u, busConnector.PortalVein_Insulin) annotation (
    Line(
    points={{-48,40},{-32,40},{-32,96},{-98,96}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(busConnector.PortalVein_Glucose, GlucoseEffect_Glucose2FA1.u) annotation (
    Line(
    points={{-98,96},{-32,96},{-32,36},{-48,36}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None));
    connect(busConnector.LiverFunctionEffect, LiverFunctionEffect_Glucose2FA1.u)
    annotation (Line(
    points={{-98,96},{-32,96},{-32,32},{-48,32}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(InsulinEffect_Glucose2FA1.yBase, BaseGlucose2FA1.y) annotation (Line(
    points={{-56,42},{-56,55},{-55.25,55}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(InsulinEffect_Glucose2FA1.y, GlucoseEffect_Glucose2FA1.yBase) annotation (
    Line(
    points={{-56,36},{-56,38}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(GlucoseEffect_Glucose2FA1.y, LiverFunctionEffect_Glucose2FA1.yBase)
    annotation (Line(
    points={{-56,32},{-56,34}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(LiverFunctionEffect_Glucose2FA1.y, chemicalReaction.forwardRateCoefficient)
    annotation (Line(
    points={{-56,28},{-56,24}},
    color={0,0,127},
    smooth=Smooth.None));
    annotation ( Icon(coordinateSystem(
      preserveAspectRatio=true, extent={{-100,-100},{100,100}},
    grid={2,2}), graphics={
    Text(
      extent={{-122,100},{94,66}},
      lineColor={0,0,255},
      textString="%name"),
    Rectangle(extent={{-100,100},{100,-100}}, lineColor={0,0,0})}));
end LiverMetabolism2;