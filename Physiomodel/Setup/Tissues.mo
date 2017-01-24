within Physiomodel.Setup;
model Tissues

    Physiolibrary.Types.BusConnector busConnector annotation (Placement(
          transformation(extent={{-40,-20},{-26,-6}}), iconTransformation(
            extent={{-40,-20},{0,20}})));
      Modelica.Blocks.Sources.Step step(
        startTime=600,
        height=0,
        offset=-3)
        annotation (Placement(transformation(extent={{-88,-40},{-78,-30}})));
      Modelica.Blocks.Sources.Step step1(
        offset=-4,
        startTime=600,
        height=0)
        annotation (Placement(transformation(extent={{-88,-26},{-78,-16}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant12(k=1)
      annotation (Placement(transformation(extent={{-90,46},{-84,52}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant1(k=1)
      annotation (Placement(transformation(extent={{-88,22},{-80,30}})));
      annotation (Placement(transformation(extent={{-86,70},{-78,78}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant2(k=1)
      annotation (Placement(transformation(extent={{-88,10},{-80,18}})));
equation
  connect(step.y,busConnector. Pericardium_Pressure)          annotation (
     Line(
      points={{-77.5,-35},{-32,-35},{-32,-13},{-33,-13}},
      color={0,0,127},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}}));
  connect(step1.y,busConnector. Thorax_AvePressure)          annotation (
      Line(
      points={{-77.5,-21},{-33,-21},{-33,-13}},
      color={0,0,127},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}}));
  connect(Constant12.y, busConnector.Thorax_LungInflation)
    annotation (Line(
      points={{-83.25,49},{-33,49},{-33,-13}},
      color={0,0,127},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}}));
  connect(Constant1.y, busConnector.Kidney_NephronCount_Total_xNormal)
    annotation (Line(
      points={{-79,26},{-34,26},{-34,-13},{-33,-13}},
      color={0,0,127},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}}));
  connect(Constant2.y, busConnector.Kidney_NephronCount_Filtering_xNormal)
    annotation (Line(
      points={{-79,14},{-34,14},{-34,-13},{-33,-13}},
      color={0,0,127},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,
            -100},{100,100}}), graphics={Text(
          extent={{-100,-20},{100,-60}},
          lineColor={0,0,0},
          textString="tissues")}));
end Tissues;
