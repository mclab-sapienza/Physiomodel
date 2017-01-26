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
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant const14(k=0.37)
      annotation (Placement(transformation(extent={{-96,-16},{-90,-10}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant const15(k=0.27)
      annotation (Placement(transformation(extent={{-96,-6},{-90,0}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant const2(k=0)
      annotation (Placement(transformation(extent={{-90,-64},{-84,-58}})));
equation
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
  connect(const14.y, busConnector.HeatInsensibleSkin_H2O)  annotation (Line(
      points={{-89.25,-13},{-33,-13}},
      color={0,0,127},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}}));
  connect(const15.y, busConnector.HeatInsensibleLung_H2O)  annotation (Line(
      points={{-89.25,-3},{-48.9,-3},{-48.9,-13},{-33,-13}},
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
