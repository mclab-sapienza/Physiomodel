within Physiomodel.Water.Osmoles;

model ActiveOsmolesFake
    "Fake Distribution of active osmoles into extracellular parts to have the same extracellular osmolarity (typically 285 mosm/l)"

    Modelica.Blocks.Math.Product plasmaOsmoles
    annotation (Placement(transformation(extent={{40,9},{52,20}})));
    Physiolibrary.Types.BusConnector busConnector annotation (Placement(
    transformation(extent={{-20,32},{-8,44}}),iconTransformation(extent={
        {-118,62},{-80,100}})));
    Modelica.Blocks.Math.Product upperTorsoInterstitialOsmoles
    annotation (Placement(transformation(extent={{40,-15},{52,-4}})));
    Modelica.Blocks.Math.Product middleTorsoInterstitialOsmoles
    annotation (Placement(transformation(extent={{40,-35},{52,-24}})));
    Modelica.Blocks.Math.Product lowerTorsoInterstitialOsmoles
    annotation (Placement(transformation(extent={{40,-57},{52,-46}})));
    Modelica.Blocks.Math.Product plasmaOsmoles1
    annotation (Placement(transformation(extent={{40,31},{52,42}})));
equation
    connect(busConnector.PlasmaVol, plasmaOsmoles.u2) annotation (Line(
    points={{-14,38},{-14,11.2},{38.8,11.2}},
    color={255,204,51},
    thickness=0.5,
    smooth=Smooth.None));
    connect(plasmaOsmoles.y, busConnector.PlasmaActiveOsmoles) annotation (Line(
    points={{52.6,14.5},{90,14.5},{90,25},{-14,25},{-14,38}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(busConnector.ECFVOsmolarity, plasmaOsmoles.u1) annotation (Line(
    points={{-14,38},{-14,17.8},{38.8,17.8}},
    color={255,204,51},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(upperTorsoInterstitialOsmoles.y, busConnector.UT.InterstitialOsmoles)
    annotation (Line(
    points={{52.6,-9.5},{92,-9.5},{92,1},{-14,1},{-14,38}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(busConnector.ECFVOsmolarity, upperTorsoInterstitialOsmoles.u1)
    annotation (Line(
    points={{-14,38},{-14,-6.2},{38.8,-6.2}},
    color={255,204,51},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(busConnector.MT.InterstitialWater_Vol, middleTorsoInterstitialOsmoles.u2)
    annotation (Line(
    points={{-14,38},{-14,-32.8},{38.8,-32.8}},
    color={255,204,51},
    thickness=0.5,
    smooth=Smooth.None));
    connect(middleTorsoInterstitialOsmoles.y, busConnector.MT.InterstitialOsmoles)
    annotation (Line(
    points={{52.6,-29.5},{92,-29.5},{92,-19},{-14,-19},{-14,38}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(busConnector.ECFVOsmolarity, middleTorsoInterstitialOsmoles.u1)
    annotation (Line(
    points={{-14,38},{-14,-26.2},{38.8,-26.2}},
    color={255,204,51},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(busConnector.LT.InterstitialWater_Vol, lowerTorsoInterstitialOsmoles.u2) annotation (
    Line(
    points={{-14,38},{-14,-54.8},{38.8,-54.8}},
    color={255,204,51},
    thickness=0.5,
    smooth=Smooth.None));
    connect(lowerTorsoInterstitialOsmoles.y, busConnector.LT.InterstitialOsmoles)
    annotation (Line(
    points={{52.6,-51.5},{92,-51.5},{92,-41},{-14,-41},{-14,38}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(busConnector.ECFVOsmolarity, lowerTorsoInterstitialOsmoles.u1)
    annotation (Line(
    points={{-14,38},{-14,-48.2},{38.8,-48.2}},
    color={255,204,51},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(busConnector.UT.InterstitialWater_Vol, upperTorsoInterstitialOsmoles.u2)
    annotation (Line(
    points={{-14,38},{-14,-12.8},{38.8,-12.8}},
    color={255,204,51},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(busConnector.RBCH2O_Vol, plasmaOsmoles1.u2) annotation (Line(
    points={{-14,38},{-14,33.2},{38.8,33.2}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(plasmaOsmoles1.y, busConnector.ErythrocytesOsmoles) annotation (
    Line(
    points={{52.6,36.5},{88,36.5},{88,52},{-14,52},{-14,38}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(busConnector.ECFVOsmolarity, plasmaOsmoles1.u1) annotation (Line(
    points={{-14,38},{-14,39.8},{38.8,39.8}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
end ActiveOsmolesFake;
