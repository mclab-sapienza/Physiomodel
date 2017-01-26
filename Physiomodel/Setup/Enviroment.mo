within Physiomodel.Setup;
model Enviroment

    Physiolibrary.Types.BusConnector busConnector annotation (Placement(
          transformation(extent={{-40,-20},{-26,-6}}), iconTransformation(
            extent={{-40,-20},{0,20}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant const2(k=9.81)
      annotation (Placement(transformation(extent={{14,36},{8,42}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant77(k=760)
      annotation (Placement(transformation(extent={{34,76},{28,82}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant78(k=760)
      annotation (Placement(transformation(extent={{34,68},{28,74}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant8(k=0)
      annotation (Placement(transformation(extent={{76,90},{68,98}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Gravity_Gz(k=1)
      annotation (Placement(transformation(extent={{14,28},{8,34}})));
    Physiolibrary.Types.Constants.FractionConst EnvironmentRelativeHumidity(k=
          0.7000000000000001)
      annotation (Placement(transformation(extent={{-84,12},{-78,18}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant AmbientTemperature(
        k=22.2)
      annotation (Placement(transformation(extent={{-84,20},{-78,26}})));
    Physiolibrary.Types.RealTypes.Velocity Wind_MPH(varName="Wind.MPH",storeUnit="MPH", k=0);
equation
  connect(Wind_MPH.y, busConnector.WindSpeed);
  connect(busConnector.BarometerPressure,Constant77. y)
    annotation (Line(
      points={{-33,-13},{-33,79},{27.25,79}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-6,3},{-6,3}}));
  connect(busConnector.AirSupplyInspiredAirPressure,Constant78. y)
    annotation (Line(
      points={{-33,-13},{-33,71},{27.25,71}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-6,3},{-6,3}}));
  connect(busConnector.pCO,Constant8. y) annotation (Line(
      points={{-33,-13},{46,-13},{46,94},{67,94}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-6,3},{-6,3}}));
  connect(Gravity_Gz.y, busConnector.Gravity_Gz) annotation (Line(
      points={{7.25,31},{-33,31},{-33,-13}},
      color={0,0,127},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}}));
  connect(EnvironmentRelativeHumidity.y, busConnector.EnvironmentRelativeHumidity)
    annotation (Line(
      points={{-77.25,15},{8,-13},{-33,-13}},
      color={0,0,127},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}}));
  connect(AmbientTemperature.y, busConnector.AmbientTemperature)
    annotation (Line(
      points={{-77.25,23},{-33,23},{-33,-13}},
      color={0,0,127},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,
            -100},{100,100}}), graphics={Text(
          extent={{-100,-20},{100,-60}},
          lineColor={0,0,0},
          textString="enviroment")}));
end Enviroment;
