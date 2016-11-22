within Physiomodel.Electrolytes.Calcium2.setup;
model CaInputs
    Physiolibrary.Types.BusConnector busConnector
    annotation (Placement(transformation(extent={{-88,78},{-68,98}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant ECFV_Vol(units=
      "ml", k=14000)
    annotation (Placement(transformation(extent={{-68,46},{-60,54}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Calcitriol(k=90)
    annotation (Placement(transformation(extent={{-68,70},{-60,78}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant PTH(k=3.85)
    annotation (Placement(transformation(extent={{-68,58},{-60,66}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant
    BladderVolume_Mass(units="ml", k=10)
    annotation (Placement(transformation(extent={{-68,32},{-60,40}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant
    BladderVolume_Mass1(units="ml", k=1000)
    annotation (Placement(transformation(extent={{-68,18},{-60,26}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant
    BladderVolume_Mass2(units="ml", k=1)
    annotation (Placement(transformation(extent={{-68,4},{-60,12}})));
    Physiolibrary.Types.Constants.VolumeFlowRateConst BladderVolume_Mass3(k=
     100)
    annotation (Placement(transformation(extent={{-68,-14},{-60,-6}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant PTH1(k=16.8/14)
    annotation (Placement(transformation(extent={{-68,-28},{-60,-20}})));
equation
    connect(busConnector.ECFV_Vol, ECFV_Vol.y) annotation (Line(
    points={{-78,88},{2,88},{2,50},{-59.6,50}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(busConnector.BladderVolume_Mass, BladderVolume_Mass.y) annotation (
    Line(
    points={{-78,88},{2,88},{2,36},{-59.6,36}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(BladderVolume_Mass1.y, busConnector.GILumenVolume_Mass)
    annotation (Line(
    points={{-59.6,22},{2,22},{2,88},{-78,88}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(BladderVolume_Mass2.y, busConnector.Diet_Ca_Intake)
    annotation (Line(
    points={{-59.6,8},{2,8},{2,88},{-78,88}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(BladderVolume_Mass3.y, busConnector.Glomerulus_GFR)
    annotation (Line(
    points={{-59.6,-10},{2,-10},{2,88},{-78,88}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(PTH1.y, busConnector.ctPO4) annotation (Line(
    points={{-59.6,-24},{2,-24},{2,88},{-78,88}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
end CaInputs;