within Physiomodel.Electrolytes.Sodium.setup;
model ConstInputsFromOtherElectrolytes

    Physiolibrary.Types.BusConnector busConnector annotation (Placement(
    transformation(extent={{44,58},{64,78}}), iconTransformation(
    extent={{-40,-20},{0,20}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant
    BloodIons_ProteinAnions(k=12.9427208016075)
    annotation (Placement(transformation(extent={{-20,42},{-14,48}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant KPool(k=
    4.30150131804415)
    annotation (Placement(transformation(extent={{-20,48},{-14,54}})));
equation

    connect(BloodIons_ProteinAnions.y, busConnector.BloodIons_ProteinAnions) annotation (Line(
    points={{-13.7,45},{54,45},{54,68}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(KPool.y, busConnector.KPool)                                                       annotation (Line(
    points={{-13.7,51},{54,51},{54,68}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
end ConstInputsFromOtherElectrolytes;