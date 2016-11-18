within Physiomodel.Water.Osmoles;
model ActiveOsmolesFake2
    "Fake Distribution of active osmoles into extracellular parts to have the same extracellular osmolarity (typically 285 mosm/l)"

    Physiolibrary.Types.Constants.AmountOfSubstanceConst plasmaOsmoles(k=0.82)
      annotation (Placement(transformation(extent={{40,9},{52,20}})));
    Physiolibrary.Types.BusConnector busConnector annotation (Placement(
        transformation(extent={{-20,32},{-8,44}}),iconTransformation(extent={
            {-118,62},{-80,100}})));
    Physiolibrary.Types.Constants.AmountOfSubstanceConst upperTorsoInterstitialOsmoles(k=0.62)
      annotation (Placement(transformation(extent={{40,-15},{52,-4}})));
    Physiolibrary.Types.Constants.AmountOfSubstanceConst middleTorsoInterstitialOsmoles(k=1.55)
      annotation (Placement(transformation(extent={{40,-35},{52,-24}})));
    Physiolibrary.Types.Constants.AmountOfSubstanceConst lowerTorsoInterstitialOsmoles(k=0.93)
      annotation (Placement(transformation(extent={{40,-57},{52,-46}})));
    Physiolibrary.Types.Constants.AmountOfSubstanceConst ErythrocytesOsmoles(k=0.43)
      annotation (Placement(transformation(extent={{40,31},{52,42}})));
equation
    connect(plasmaOsmoles.y, busConnector.PlasmaActiveOsmoles) annotation (Line(
    points={{53.5,14.5},{90,14.5},{90,25},{-14,25},{-14,38}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(upperTorsoInterstitialOsmoles.y, busConnector.UT.InterstitialOsmoles)
    annotation (Line(
    points={{53.5,-9.5},{92,-9.5},{92,1},{-14,1},{-14,38}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(middleTorsoInterstitialOsmoles.y, busConnector.MT.InterstitialOsmoles)
    annotation (Line(
    points={{53.5,-29.5},{92,-29.5},{92,-19},{-14,-19},{-14,38}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(lowerTorsoInterstitialOsmoles.y, busConnector.LT.InterstitialOsmoles)
    annotation (Line(
    points={{53.5,-51.5},{92,-51.5},{92,-41},{-14,-41},{-14,38}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(ErythrocytesOsmoles.y, busConnector.ErythrocytesOsmoles) annotation (
    Line(
    points={{53.5,36.5},{88,36.5},{88,52},{-14,52},{-14,38}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
end ActiveOsmolesFake2;