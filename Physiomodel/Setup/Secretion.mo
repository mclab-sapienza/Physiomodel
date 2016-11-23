within Physiomodel.Setup;
model Secretion "of urine and faeces"

    Physiolibrary.Types.BusConnector busConnector annotation (Placement(
          transformation(extent={{-40,-20},{-26,-6}}), iconTransformation(
            extent={{-40,-20},{0,20}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant const9(k=0)
  annotation (Placement(transformation(extent={{-60,24},{-56,28}})));
equation
  connect(const9.y, busConnector.BladerVoidFlow) annotation (Line(
      points={{-55.5,26},{-33,26},{-33,-13}},
      color={0,0,127},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}}));
  connect(const9.y, busConnector.BladderVoidFlow) annotation (Line(
      points={{-55.5,26},{-33,26},{-33,-13}},
      color={0,0,127},
      smooth=Smooth.None));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,
            -100},{100,100}}), graphics={Text(
          extent={{-100,-20},{100,-60}},
          lineColor={0,0,0},
          textString="secretion")}));
end Secretion;