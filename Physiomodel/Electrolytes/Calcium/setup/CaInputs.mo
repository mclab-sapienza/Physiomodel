within Physiomodel.Electrolytes.Calcium.setup;
model CaInputs
    Physiolibrary.Types.BusConnector busConnector
    annotation (Placement(transformation(extent={{-88,78},{-68,98}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant ECFV_Vol(units=
      "ml", k=13000)
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
    BladderVolume_Mass2(units="ml", k=0.21)
    annotation (Placement(transformation(extent={{-68,4},{-60,12}})));
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
    connect(busConnector.Calcitriol, Calcitriol.y) annotation (Line(
    points={{-78,88},{2,88},{2,74},{-59.6,74}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(busConnector.PTH, PTH.y) annotation (Line(
    points={{-78,88},{2,88},{2,62},{-59.6,62}},
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
end CaInputs;