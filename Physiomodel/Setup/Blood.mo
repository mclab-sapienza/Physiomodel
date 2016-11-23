within Physiomodel.Setup;
  model Blood

      Physiolibrary.Types.BusConnector busConnector annotation (Placement(
            transformation(extent={{-40,-20},{-26,-6}}), iconTransformation(
              extent={{-40,-20},{0,20}})));
      Physiolibrary.Types.Constants.DeprecatedUntypedConstant const41(k=0)
        annotation (Placement(transformation(extent={{-90,-2},{-84,4}})));
      Physiolibrary.Types.Constants.DeprecatedUntypedConstant const5(k=0)
        annotation (Placement(transformation(extent={{-90,-36},{-84,-30}})));
      Physiolibrary.Types.Constants.DeprecatedUntypedConstant const6(k=0)
        annotation (Placement(transformation(extent={{-92,-78},{-86,-72}})));
      Physiolibrary.Types.Constants.DeprecatedUntypedConstant const(k=0)
        annotation (Placement(transformation(extent={{-90,10},{-86,14}})));
      Physiolibrary.Types.Constants.DeprecatedUntypedConstant const22(k=0)
        annotation (Placement(transformation(extent={{-90,-24},{-86,-20}})));
      Physiolibrary.Types.Constants.DeprecatedUntypedConstant const16(k=0)
        annotation (Placement(transformation(extent={{-90,-62},{-86,-58}})));
      Physiolibrary.Types.Constants.DeprecatedUntypedConstant const1(k=0)
        annotation (Placement(transformation(extent={{-90,-52},{-86,-48}})));
      Physiolibrary.Types.Constants.DeprecatedUntypedConstant const2(k=0)
        annotation (Placement(transformation(extent={{-90,-44},{-84,-38}})));
  equation
    connect(const6.y, busConnector.Hemorrhage_ProteinRate) annotation (Line(
        points={{-85.25,-75},{-85.25,-75.5},{-33,-75.5},{-33,-13}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
    connect(const5.y, busConnector.Transfusion_ProteinRate) annotation (Line(
        points={{-83.25,-33},{-83.25,-32.5},{-33,-32.5},{-33,-13}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
    connect(const41.y, busConnector.IVDripProteinRate) annotation (Line(
        points={{-83.25,1},{-83.25,0.5},{-33,0.5},{-33,-13}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
    connect(const.y, busConnector.IVDrip_H2ORate)  annotation (Line(
        points={{-85.5,12},{-39.85,12},{-39.85,-13},{-33,-13}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
    connect(const22.y, busConnector.Transfusion_PlasmaRate)
                                                           annotation (Line(
        points={{-85.5,-22},{-33,-22},{-33,-13}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
    connect(const16.y, busConnector.Hemorrhage_PlasmaRate)
                                                          annotation (Line(
        points={{-85.5,-60},{-33,-60},{-33,-13}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
    connect(const1.y, busConnector.Hemorrhage_RBCRate) annotation (Line(
        points={{-85.5,-50},{-33,-50},{-33,-13}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
    connect(const2.y, busConnector.Transfusion_RBCRate) annotation (Line(
        points={{-83.25,-41},{-33,-41},{-33,-13}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
    annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,
              -100},{100,100}}), graphics={Text(
            extent={{-100,-20},{100,-60}},
            lineColor={0,0,0},
            textString="blood +-")}));
  end Blood;