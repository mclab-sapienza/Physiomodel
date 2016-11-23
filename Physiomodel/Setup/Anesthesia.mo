within Physiomodel.Setup;
model Anesthesia

    Physiolibrary.Types.BusConnector busConnector annotation (Placement(
          transformation(extent={{-40,-20},{-26,-6}}), iconTransformation(
            extent={{-40,-20},{0,20}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant const9(k=1)
      annotation (Placement(transformation(extent={{-60,24},{-56,28}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant const1(k=1)
  annotation (Placement(transformation(extent={{-76,14},{-72,18}})));
equation
  connect(const9.y, busConnector.AnesthesiaTidalVolume) annotation (Line(
      points={{-55.5,26},{-33,26},{-33,-13}},
      color={0,0,127},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}}));
  connect(const1.y, busConnector.Anesthesia_VascularConductance)
    annotation (Line(
      points={{-71.5,16},{-33,16},{-33,-13}},
      color={0,0,127},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,
            -100},{100,100}}), graphics={Text(
          extent={{-100,-20},{100,-60}},
          lineColor={0,0,0},
          textString="anesthesia")}),        Documentation(info="<html>
    <p>effect 1 means no anesthesia</p>
    </html>"));
end Anesthesia;