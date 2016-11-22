within Physiomodel.Electrolytes.Calcium2;
model Osteoclast
    Modelica.Blocks.Interfaces.RealInput active_TGF_beta
                                 annotation (Placement(transformation(extent={{-100,
          -20},{-60,20}}),      iconTransformation(extent={{-100,-20},{
          -60,20}})));
    Modelica.Blocks.Interfaces.RealOutput Osteoclasts
                                          annotation (Placement(
      transformation(extent={{60,-20},{100,20}}), iconTransformation(extent={{
          60,-20},{100,20}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant(k=
    0.001154)
    annotation (Placement(transformation(extent={{16,-8},{32,8}})));
equation
    connect(Constant.y, Osteoclasts) annotation (Line(
    points={{32.8,0},{80,0}},
    color={0,0,127},
    smooth=Smooth.None));
end Osteoclast;