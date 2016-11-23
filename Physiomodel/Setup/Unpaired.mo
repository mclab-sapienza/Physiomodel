within Physiomodel.Setup;
model Unpaired

  Physiolibrary.Types.BusConnector busConnector annotation (Placement(
        transformation(extent={{72,-2},{86,12}}), iconTransformation(extent={
            {-40,-20},{0,20}})));
  Physiolibrary.Types.Constants.DeprecatedUntypedConstant HeatShivering_Cals(
      k=0.)
    annotation (Placement(transformation(extent={{-96,-70},{-90,-64}})));
  Physiolibrary.Types.Constants.DeprecatedUntypedConstant
    HypothalamusSkinFlow_NervesActivity(k=0.935029749050722)
    annotation (Placement(transformation(extent={{-96,-78},{-90,-72}})));
  Physiolibrary.Types.Constants.DeprecatedUntypedConstant
    HypothalamusTSH_TemperatureEffect(k=1.03855784498264)
    annotation (Placement(transformation(extent={{-96,-62},{-90,-56}})));
  Physiolibrary.Types.Constants.DeprecatedUntypedConstant
    skeletalMuscle_SizeMass(k=26743.5620376591)
    annotation (Placement(transformation(extent={{-96,22},{-90,28}})));
  Physiolibrary.Types.Constants.DeprecatedUntypedConstant skinSizeMass(k=
        2792.87262585285)
    annotation (Placement(transformation(extent={{-96,28},{-90,34}})));
  Physiolibrary.Types.Constants.DeprecatedUntypedConstant WeightCore(k=
        48332.7389031163)
    annotation (Placement(transformation(extent={{-96,34},{-90,40}})));
equation
  connect(skeletalMuscle_SizeMass.y, busConnector.skeletalMuscle_SizeMass) annotation (Line(
   points={{-89.25,25},{79,25},{79,5}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
  connect(skinSizeMass.y, busConnector.skinSizeMass) annotation (Line(
   points={{-89.25,31},{79,31},{79,5}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
  connect(WeightCore.y, busConnector.WeightCore) annotation (Line(
   points={{-89.25,37},{79,37},{79,5}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
end Unpaired;