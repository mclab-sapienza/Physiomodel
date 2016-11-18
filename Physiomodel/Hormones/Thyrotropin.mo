within Physiomodel.Hormones;
model Thyrotropin
    extends Physiolibrary.Icons.Hypophysis;
    // outer parameter Real ECF_Vol(final displayUnit="ml");

    TSH_Physiolibrary.Types.Constants.ConcentrationConst hormoneConstant(k=4)
    "4 uU/ml"
    annotation (Placement(transformation(extent={{-8,30},{-20,42}})));
    Physiolibrary.Blocks.Factors.Spline ThyroxineEffect(data={{0.0,8.0,0},{8.0,
      1.0,-0.2},{20.0,0.0,0}}, Xscale=1e-5/Substances.Thyroxine.mw)
    "8 ug/dl = 8e-9/1e-4 kg/m3"
    annotation (Placement(transformation(extent={{-34,12},{-14,32}})));
    Physiolibrary.Blocks.Factors.Normalization HypothalamusTSH
    annotation (Placement(transformation(extent={{-14,2},{-34,22}})));
    Physiolibrary.Types.BusConnector busConnector annotation (Placement(
      transformation(extent={{44,28},{64,48}}), iconTransformation(extent={
          {-90,-70},{-70,-50}})));
    TSH_Physiolibrary.Types.RealIO.ConcentrationOutput
                                        TSH "thyrotropin" annotation (Placement(transformation(extent={{-20,-18},
          {0,2}}),                iconTransformation(extent={{80,-20},{120,
            20}})));
    Physiolibrary.Types.RealIO.ConcentrationInput
                                       Thyroxine annotation (Placement(transformation(extent={{-78,12},
          {-58,32}}),  iconTransformation(extent={{-100,60},{-60,100}})));
    Physiolibrary.Blocks.Factors.Spline TemperatureEffect_(data={{-2.0,4.0,0},{
      0.0,1.0,-1.0},{2.0,0.2,0}})
    annotation (Placement(transformation(extent={{46,14},{26,34}})));
    Modelica.Blocks.Math.Feedback feedback
    annotation (Placement(transformation(extent={{66,18},{54,30}})));
    Physiolibrary.Types.Constants.TemperatureConst temperatureConstant(k=310.15)
    annotation (Placement(transformation(extent={{80,10},{72,18}})));
equation
    connect(hormoneConstant.y, ThyroxineEffect.yBase) annotation (Line(
    points={{-21.5,36},{-24,36},{-24,24}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(ThyroxineEffect.y, HypothalamusTSH.yBase)   annotation (Line(
    points={{-24,18},{-24,14}},
    color={0,0,127},
    smooth=Smooth.None));

    connect(HypothalamusTSH.y, TSH)   annotation (Line(
    points={{-24,8},{-24,-8},{-10,-8}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Thyroxine, ThyroxineEffect.u) annotation (Line(
    points={{-68,22},{-32,22}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(busConnector.brain_FunctionEffect, TemperatureEffect_.yBase)
    annotation (Line(
    points={{54,38},{36,38},{36,26}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(TemperatureEffect_.u, feedback.y) annotation (Line(
    points={{44,24},{54.6,24}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(feedback.u1, busConnector.HeatCore_Temp) annotation (Line(
    points={{64.8,24},{90,24},{90,38},{54,38}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(feedback.u2, temperatureConstant.y) annotation (Line(
    points={{60,19.2},{60,14},{71,14}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(TemperatureEffect_.y, HypothalamusTSH.u) annotation (Line(
    points={{36,20},{36,12},{-16,12}},
    color={0,0,127},
    smooth=Smooth.None));
    annotation ( Icon(coordinateSystem(
      preserveAspectRatio=true, extent={{-100,-100},{100,100}}),
    graphics={Text(
      extent={{-118,122},{116,100}},
      lineColor={0,0,255},
      textString="%name")}));
end Thyrotropin;