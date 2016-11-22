within Physiomodel.Electrolytes.Potassium.setup;
model ConstInputsFromOtherElectrolytes
    Physiolibrary.Types.BusConnector busConnector annotation (Placement(
    transformation(extent={{44,58},{64,78}}), iconTransformation(
    extent={{-40,-20},{0,20}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant DT_Na_Outflow(k=
    0.48247099389415)
    annotation (Placement(transformation(extent={{-20,42},{-14,48}})));
equation
      connect(DT_Na_Outflow.y, busConnector.DT_Na_Outflow) annotation (Line(
     points={{-13.7,45},{54,45},{54,68}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
end ConstInputsFromOtherElectrolytes;