within Physiomodel.Setup;
model Diet

    Physiolibrary.Types.BusConnector busConnector annotation (Placement(
          transformation(extent={{-40,-20},{-24,-4}}), iconTransformation(
            extent={{-40,-20},{0,20}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant14(k=0)
      annotation (Placement(transformation(extent={{24,40},{16,48}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant15(k=0)
      annotation (Placement(transformation(extent={{24,48},{16,56}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant16(k=0)
      annotation (Placement(transformation(extent={{24,56},{16,64}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant17(k=0)
      annotation (Placement(transformation(extent={{24,64},{16,72}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant18(k=0)
      annotation (Placement(transformation(extent={{24,72},{16,80}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant19(k=
          0.128213)
      annotation (Placement(transformation(extent={{24,80},{16,88}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant20(k=0)
      annotation (Placement(transformation(extent={{24,88},{16,96}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant21(k=0)
      annotation (Placement(transformation(extent={{58,-98},{50,-90}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant22(k=0)
      annotation (Placement(transformation(extent={{80,-90},{72,-82}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant23(k=0)
      annotation (Placement(transformation(extent={{36,-74},{28,-66}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant24(k=0)
      annotation (Placement(transformation(extent={{82,-64},{74,-56}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant25(k=0)
      annotation (Placement(transformation(extent={{36,-44},{28,-36}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant26(k=
          5.2e-002)
      annotation (Placement(transformation(extent={{-66,-72},{-74,-64}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant27(k=0)
      annotation (Placement(transformation(extent={{24,32},{16,40}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant28(k=0)
      annotation (Placement(transformation(extent={{82,-28},{74,-20}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant29(k=0)
      annotation (Placement(transformation(extent={{82,-20},{74,-12}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant30(k=0)
      annotation (Placement(transformation(extent={{82,-12},{74,-4}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant31(k=0)
      annotation (Placement(transformation(extent={{82,-4},{74,4}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant32(k=0)
      annotation (Placement(transformation(extent={{82,4},{74,12}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant33(k=
          0.142459)
      annotation (Placement(transformation(extent={{82,12},{74,20}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant34(k=0)
      annotation (Placement(transformation(extent={{82,20},{74,28}})));
    Physiolibrary.Types.Constants.MolarFlowRateConst PO4(k(displayUnit=
            "mmol/min") = 0.022)
      annotation (Placement(transformation(extent={{-94,-32},{-86,-24}})));
    Physiolibrary.Types.Constants.MolarFlowRateConst SO4(k=0.037)
      annotation (Placement(transformation(extent={{-94,-50},{-86,-42}})));
    Physiolibrary.Types.Constants.TemperatureConst          DietGoalH2O_DegK(k=294.261)
      annotation (Placement(transformation(extent={{-94,-14},{-88,-8}})));
equation
    connect(Constant14.y,busConnector. IVDrip_NaRate) annotation (Line(
    points={{15,44},{-32,44},{-32,-12}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Constant15.y,busConnector. Transfusion_NaRate) annotation (Line(
    points={{15,52},{-32,52},{-32,-12}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Constant16.y,busConnector. SweatDuct_NaRate) annotation (Line(
    points={{15,60},{-32,60},{-32,-12}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Constant17.y,busConnector. Hemorrhage_NaRate) annotation (Line(
    points={{15,68},{-32,68},{-32,-12}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Constant18.y,busConnector. DialyzerActivity_Na_Flux) annotation (
    Line(
    points={{15,76},{-32,76},{-32,-12}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Constant19.y,busConnector. DietIntakeElectrolytes_Na) annotation (
    Line(
    points={{15,84},{-32,84},{-32,-12}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Constant20.y,busConnector. GILumenDiarrhea_NaLoss) annotation (Line(
    points={{15,92},{-32,92},{-32,-12}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Constant21.y,busConnector. IVDrip_KRate) annotation (Line(
    points={{49,-94},{-32,-94},{-32,-12}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Constant22.y,busConnector. Transfusion_KRate) annotation (Line(
    points={{71,-86},{-32,-86},{-32,-12}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Constant23.y,busConnector. SweatDuct_KRate) annotation (Line(
    points={{27,-70},{-32,-70},{-32,-12}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Constant24.y,busConnector. Hemorrhage_KRate) annotation (Line(
    points={{73,-60},{-32,-60},{-32,-12}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Constant25.y,busConnector. DialyzerActivity_K_Flux) annotation (
    Line(
    points={{27,-40},{-32,-40},{-32,-12}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Constant26.y,busConnector. DietIntakeElectrolytes_K) annotation (
    Line(
    points={{-75,-68},{-32,-68},{-32,-12}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Constant27.y,busConnector. GILumenDiarrhea_KLoss) annotation (Line(
    points={{15,36},{-32,36},{-32,-12}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Constant28.y,busConnector. IVDrip_ClRate) annotation (Line(
    points={{73,-24},{-32,-24},{-32,-12}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Constant29.y,busConnector. Transfusion_ClRate) annotation (Line(
    points={{73,-16},{-32,-16},{-32,-12}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Constant30.y,busConnector. SweatDuct_ClRate) annotation (Line(
    points={{73,-8},{-32,-8},{-32,-12}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Constant31.y,busConnector. Hemorrhage_ClRate) annotation (Line(
    points={{73,0},{-32,0},{-32,-12}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Constant32.y,busConnector. DialyzerActivity_Cl_Flux) annotation (
    Line(
    points={{73,8},{-32,8},{-32,-12}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Constant33.y,busConnector. DietIntakeElectrolytes_Cl) annotation (
    Line(
    points={{73,16},{-32,16},{-32,-12}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Constant34.y, busConnector.GILumenVomitus_ClLoss) annotation (Line(
    points={{73,24},{-32,24},{-32,-12}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(PO4.y, busConnector.DietIntakeElectrolytes_PO4) annotation (Line(
    points={{-85,-28},{-80,-28},{-80,-30},{-32,-30},{-32,-12}},
    color={0,0,127},
    thickness=0.5,
    smooth=Smooth.None));
    connect(SO4.y, busConnector.DietIntakeElectrolytes_SO4) annotation (Line(
    points={{-85,-46},{-32,-46},{-32,-12}},
    color={0,0,127},
    thickness=0.5,
    smooth=Smooth.None));
    connect(DietGoalH2O_DegK.y, busConnector.DietGoalH2O_DegK) annotation (
    Line(
    points={{-87.25,-11},{-84,-12},{-32,-12}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,
        -100},{100,100}}), graphics={Text(
      extent={{-100,-20},{100,-60}},
      lineColor={0,0,0},
      textString="diet")}));
end Diet;