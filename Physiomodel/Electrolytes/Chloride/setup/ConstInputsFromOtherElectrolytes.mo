within Physiomodel.Electrolytes.Chloride.setup;
model ConstInputsFromOtherElectrolytes
    Physiolibrary.Types.BusConnector busConnector annotation (Placement(
      transformation(extent={{44,58},{64,78}}), iconTransformation(
        extent={{-40,-20},{0,20}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant
    CollectingDuct_NetSumCats(k=0.138798773009742)
    annotation (Placement(transformation(extent={{-20,42},{-14,48}})));
equation
    connect(CollectingDuct_NetSumCats.y, busConnector.CollectingDuct_NetSumCats) annotation (Line(
    points={{-13.7,45},{54,45},{54,68}},
      color={0,0,127},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}}));
end ConstInputsFromOtherElectrolytes;