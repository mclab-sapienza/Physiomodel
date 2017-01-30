within Physiomodel.Setup;
model Exercise

    Physiolibrary.Types.BusConnector busConnector annotation (Placement(
          transformation(extent={{-40,-20},{-26,-6}}), iconTransformation(
            extent={{-40,-20},{0,20}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant const7(k=1)
      annotation (Placement(transformation(extent={{-90,-88},{-84,-82}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant const24(k=0)
      annotation (Placement(transformation(extent={{-90,-80},{-84,-74}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant const25(k=0)
      annotation (Placement(transformation(extent={{-90,-48},{-84,-42}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant const19(k=1)
      annotation (Placement(transformation(extent={{-90,-36},{-84,-30}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant const2(k=0)
      annotation (Placement(transformation(extent={{-90,-64},{-84,-58}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant GILumenVomitus_H2OTarget(k=0);
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant GILumenDiarrhea_H2OTarget(k=0);
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant GILumenFiber(k=0.043);
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant DialyzerActivity_UltrafiltrationRate(k=0);
equation
  connect(GILumenVomitus_H2OTarget.y, busConnector.GILumenVomitus_H2OTarget);
  connect(GILumenDiarrhea_H2OTarget.y, busConnector.GILumenDiarrhea_H2OTarget);
  connect(GILumenFiber.y, busConnector.GILumenFiber_Mass);
  connect(DialyzerActivity_UltrafiltrationRate.y, busConnector.DialyzerActivity_UltrafiltrationRate);
  connect(const7.y,busConnector. Exercise_MusclePump_Effect) annotation (
      Line(
      points={{-83.25,-85},{-48,-85},{-48,-13},{-33,-13}},
      color={0,0,127},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}}));
  connect(const24.y,busConnector. Exercise_Metabolism_ContractionRate)
    annotation (Line(
      points={{-83.25,-77},{-48,-77},{-48,-13},{-33,-13}},
      color={0,0,127},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}}));
  connect(const25.y,busConnector. Exercise_Metabolism_MotionWatts)
    annotation (Line(
      points={{-83.25,-45},{-48,-45},{-48,-13},{-33,-13}},
      color={0,0,127},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}}));
  connect(const19.y, busConnector.LegMusclePump_Effect) annotation (Line(
      points={{-83.25,-33},{-47.85,-33},{-47.85,-13},{-33,-13}},
      color={0,0,127},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}}));
  connect(const2.y, busConnector.ExerciseMetabolism_TotalWatts) annotation (
     Line(
      points={{-83.25,-61},{-48,-61},{-48,-13},{-33,-13}},
      color={0,0,127},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=true,  extent={{-100,
            -100},{100,100}}), graphics={Text(
          extent={{-100,-20},{100,-60}},
          lineColor={0,0,0},
          textString="exercise")}));
end Exercise;
