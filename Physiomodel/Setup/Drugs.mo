within Physiomodel.Setup;
model Drugs

    Physiolibrary.Types.BusConnector busConnector annotation (Placement(
          transformation(extent={{-40,-20},{-26,-6}}), iconTransformation(
            extent={{-40,-20},{0,20}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant const38(k=0)
      annotation (Placement(transformation(extent={{26,-72},{20,-66}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant1(k=0)
      annotation (Placement(transformation(extent={{-80,-88},{-72,-80}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant2(k=0)
      annotation (Placement(transformation(extent={{-92,6},{-84,14}})));
equation
  connect(const38.y, busConnector.FurosemidePool_Loss) annotation (Line(
      points={{19.25,-69},{-33,-69},{-33,-13}},
      color={0,0,127},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}}));
  connect(Constant1.y,busConnector. FurosemidePool_Furosemide_conc)
    annotation (Line(
      points={{-71,-84},{-38,-84},{-38,-13},{-33,-13}},
      color={0,0,127},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}}));
  connect(Constant2.y,busConnector. ThiazidePool_Thiazide_conc) annotation (
      Line(
      points={{-83,10},{-62,10},{-62,-13},{-33,-13}},
      color={0,0,127},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,
            -100},{100,100}}), graphics={Text(
          extent={{-100,-20},{100,-60}},
          lineColor={0,0,0},
          textString="drugs")}));
end Drugs;