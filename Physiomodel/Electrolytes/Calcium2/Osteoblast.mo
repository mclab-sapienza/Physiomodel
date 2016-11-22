within Physiomodel.Electrolytes.Calcium2;
model Osteoblast

    Modelica.Blocks.Interfaces.RealInput active_TGF_beta
                                 annotation (Placement(transformation(extent={{-100,
          -60},{-60,-20}}),     iconTransformation(extent={{-100,-60},{-60,-20}})));
    Modelica.Blocks.Interfaces.RealOutput Osteoblasts
                                          annotation (Placement(
      transformation(extent={{60,-100},{100,-60}}),
                                                  iconTransformation(extent={{60,-100},
          {100,-60}})));
    Modelica.Blocks.Interfaces.RealInput BCL2
                                 annotation (Placement(transformation(extent={{-100,
          -60},{-60,-20}}),     iconTransformation(extent={{-100,20},{-60,60}})));

    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant(k=
    0.00501324)
    annotation (Placement(transformation(extent={{10,-8},{26,8}})));
    Modelica.Blocks.Interfaces.RealOutput RespondingOsteoblasts
                                          annotation (Placement(
      transformation(extent={{60,-60},{100,-20}}),iconTransformation(extent={{60,-60},
          {100,-20}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant1(k=
    0.00104122)
    annotation (Placement(transformation(extent={{10,52},{26,68}})));
equation
    connect(Constant.y, Osteoblasts) annotation (Line(
    points={{26.8,0},{53.4,0},{53.4,-80},{80,-80}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Constant1.y, RespondingOsteoblasts) annotation (Line(
    points={{26.8,60},{53.4,60},{53.4,-40},{80,-40}},
    color={0,0,127},
    smooth=Smooth.None));
end Osteoblast;