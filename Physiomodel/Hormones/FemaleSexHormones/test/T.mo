within Physiomodel.Hormones.FemaleSexHormones.test;

model T
    FemaleSexHormones femaleSexHormones
        annotation (Placement(transformation(extent={{-26,-12},{-6,8}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant(k=1430)
      annotation (Placement(transformation(extent={{-72,20},{-64,28}})));
    Modelica.Blocks.Sources.BooleanConstant booleanConstant
      annotation (Placement(transformation(extent={{-80,-10},{-60,10}})));
equation
  connect(booleanConstant.y, femaleSexHormones.Cycling) annotation (
      Line(
      points={{-59,0},{-42,0},{-42,2},{-26,2}},
      color={255,0,255},
      smooth=Smooth.None));
  connect(Constant.y, femaleSexHormones.EFCV_Vol) annotation (Line(
      points={{-63.6,24},{-44,24},{-44,6},{-26,6}},
      color={0,0,127},
      smooth=Smooth.None));
end T;