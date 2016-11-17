within Physiomodel.CardioVascular.Microcirculation;
model MetabolicVasodilation
    extends Physiolibrary.Icons.BaseFactorIcon5;
    Physiolibrary.Types.RealIO.MolarFlowRateInput O2Need
             annotation (Placement(transformation(extent={{-110,60},{-82,88}}),
      iconTransformation(extent={{-108,-10},{-88,10}})));

    parameter Boolean enabled=true "disabled => y=yBase";

    parameter Real[:,3] data = {{   50,  1.0,  0}, { 1000,  3.5,  0.003}, { 3000,  5.5,  0}};
    parameter Physiolibrary.Types.Time OnTau = 0.2;
    parameter Physiolibrary.Types.Time OffTau = 1;
    parameter Physiolibrary.Types.Fraction initialEffectValue = 1;
    parameter String stateName=getInstanceName();
    parameter Physiolibrary.Types.MolarFlowRate Xscale = 1
    "conversion scale to SI unit of x values";

    Physiolibrary.Blocks.Interpolation.Curve SteadyState(
    x=data[:, 1],
    y=data[:, 2],
    slope=data[:, 3],
    Xscale=Xscale)
    annotation (Placement(transformation(extent={{-72,64},{-52,84}})));
    Physiolibrary.Blocks.Math.Integrator effect(
    y_start=initialEffectValue,
    stateName=stateName,
    k=1)  annotation (Placement(transformation(
    extent={{-10,-10},{10,10}},
    rotation=270,
    origin={-28,-14})));
    Modelica.Blocks.Math.Feedback feedback annotation (Placement(
      transformation(
      extent={{-8,-12},{12,-32}},
      rotation=270,
      origin={8,64})));
    Modelica.Blocks.Math.Product product1 annotation (Placement(transformation(
      extent={{-10,-10},{10,10}},
      rotation=270,
      origin={-22,16})));
    Modelica.Blocks.Logical.Switch switch1(u2(start=false))
    annotation (Placement(transformation(extent={{-54,24},{-34,44}})));
    Modelica.Blocks.Logical.GreaterThreshold greaterThreshold
    annotation (Placement(transformation(extent={{-72,30},{-64,38}})));
    Physiolibrary.Blocks.Math.Reciprocal OnK annotation (Placement(
    transformation(
    extent={{-10,-10},{10,10}},
    rotation=90,
    origin={-86,8})));
    Physiolibrary.Blocks.Math.Reciprocal OffK annotation (Placement(
    transformation(
    extent={{-10,-10},{10,10}},
    rotation=90,
    origin={-60,8})));
    Physiolibrary.Types.Constants.TimeConst                 Constant0(k=
    OnTau) annotation (Placement(transformation(
    extent={{-10,-10},{10,10}},
    rotation=90,
    origin={-86,-22})));
    Physiolibrary.Types.Constants.TimeConst                 Constant1(k=
    OffTau) annotation (Placement(transformation(
    extent={{-10,-10},{10,10}},
    rotation=90,
    origin={-60,-22})));

    Physiolibrary.Blocks.Factors.Normalization normalization(enabled=enabled)
    annotation (Placement(transformation(extent={{-10,-20},{10,0}})));
equation
    connect(SteadyState.val, feedback.u1)
                                    annotation (Line(
        points={{-52,74},{-14,74},{-14,70}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(effect.y, feedback.u2)     annotation (Line(
        points={{-28,-25},{-28,-68},{86,-68},{86,62},{-6,62}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(SteadyState.u, O2Need)  annotation (Line(
        points={{-72,74},{-96,74}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(product1.y, effect.u)     annotation (Line(
        points={{-22,5},{-22,-2},{-28,-2}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(product1.u1, feedback.y) annotation (Line(
        points={{-16,28},{-16,40},{-14,40},{-14,53}},
        color={0,0,127},
        smooth=Smooth.None));

    connect(switch1.y, product1.u2) annotation (Line(
        points={{-33,34},{-28,34},{-28,28}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(greaterThreshold.u, feedback.y) annotation (Line(
        points={{-72.8,34},{-76,34},{-76,50},{-14,50},{-14,53}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(greaterThreshold.y, switch1.u2) annotation (Line(
        points={{-63.6,34},{-56,34}},
        color={255,0,255},
        smooth=Smooth.None));
    connect(OnK.y, switch1.u1)  annotation (Line(
        points={{-86,19},{-86,42},{-56,42}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(OffK.y, switch1.u3)  annotation (Line(
        points={{-60,19},{-60,26},{-56,26}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(Constant1.y, OffK.u)  annotation (Line(
        points={{-60,-9.5},{-60,-4}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(Constant0.y, OnK.u)  annotation (Line(
        points={{-86,-9.5},{-86,-4}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(effect.y, normalization.u) annotation (Line(
        points={{-28,-25},{-28,-40},{-12,-40},{-12,-10},{-8,-10}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(yBase, normalization.yBase) annotation (Line(
        points={{0,20},{0,-8}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(normalization.y, y) annotation (Line(
        points={{0,-14},{0,-40}},
        color={0,0,127},
        smooth=Smooth.None));
end MetabolicVasodilation;