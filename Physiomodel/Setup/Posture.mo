within Physiomodel.Setup;
model Posture

    Physiolibrary.Types.BusConnector busConnector annotation (Placement(
          transformation(extent={{-40,-20},{-26,-6}}), iconTransformation(
            extent={{-40,-20},{0,20}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant const36(k=0)
      annotation (Placement(transformation(extent={{64,50},{58,56}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant const37(k=0)
      annotation (Placement(transformation(extent={{64,44},{58,50}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant const10(k=0)
      annotation (Placement(transformation(extent={{64,32},{58,38}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant integerConstant(k=0
          /* Physiomodel.Water.Hydrostatics.Posture.Lying */
      )
      annotation (Placement(transformation(extent={{18,12},{24,18}})));
equation
  connect(const36.y,busConnector. LowerTorsoArtyHeight)
    annotation (Line(
      points={{57.25,53},{52,53},{52,58},{-38,58},{-38,-13},{-33,-13}},
      color={0,0,127},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}}));
  connect(const37.y,busConnector. LowerTorsoVeinHeight)
    annotation (Line(
      points={{57.25,47},{52,47},{52,58},{-38,58},{-38,-13},{-33,-13}},
      color={0,0,127},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}}));
  connect(const10.y,busConnector. CarotidSinusHeight)
    annotation (Line(
      points={{57.25,35},{52,35},{52,58},{-38,58},{-38,-13},{-33,-13}},
      color={0,0,127},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}}));
  connect(integerConstant.y, busConnector.Status_Posture) annotation (Line(
      points={{24.75,15},{62.15,15},{62.15,-13},{-33,-13}},
      color={0,0,255},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,
            -100},{100,100}}), graphics={Text(
          extent={{-100,-20},{100,-60}},
          lineColor={0,0,0},
          textString="posture")}));
end Posture;
