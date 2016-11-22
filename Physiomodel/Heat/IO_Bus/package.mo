within Physiomodel.Heat;
package IO_Bus
    extends Physiolibrary.Types.IO_Bus;
    redeclare model extends Variables

        T.Temperature GITract_T(varName="HeatCore.Temp(C)")
        "Body core temperature."
        annotation (Placement(transformation(extent={{-36,10},{-30,16}})));
        T.Temperature HeatCore_Temp(varName="HeatCore.Temp(C)")
        "Body core temperature."
        annotation (Placement(transformation(extent={{-36,20},{-30,26}})));
        T.Temperature bone_T(varName="HeatCore.Temp(C)") "Body core temperature."
        annotation (Placement(transformation(extent={{-36,30},{-30,36}})));
        T.Temperature brain_T(varName="HeatCore.Temp(C)")
        "Body core temperature."
        annotation (Placement(transformation(extent={{-36,40},{-30,46}})));
        T.Temperature core_T(varName="HeatCore.Temp(C)") "Body core temperature."
        annotation (Placement(transformation(extent={{-36,50},{-30,56}})));
        T.Temperature fat_T(varName="HeatCore.Temp(C)") "Body core temperature."
        annotation (Placement(transformation(extent={{-36,60},{-30,66}})));
        T.Temperature kidney_T(varName="HeatCore.Temp(C)")
        "Body core temperature."
        annotation (Placement(transformation(extent={{-36,70},{-30,76}})));
        T.Temperature liver_T(varName="HeatCore.Temp(C)")
        "Body core temperature."
        annotation (Placement(transformation(extent={{-36,80},{-30,86}})));
        T.Temperature otherTissue_T(varName="HeatCore.Temp(C)")
        "Body core temperature."
        annotation (Placement(transformation(extent={{-36,90},{-30,96}})));
        T.Temperature respiratoryMuscle_T(varName="HeatCore.Temp(C)")
        "Body core temperature."
        annotation (Placement(transformation(extent={{-36,100},{-30,106}})));
        T.Temperature rightHeart_T(varName="HeatCore.Temp(C)")
        "Body core temperature."
        annotation (Placement(transformation(extent={{-36,110},{-30,116}})));
        T.Temperature skeletalMuscle_T(varName="HeatSkeletalMuscle.Temp(C)")
        "Skeletal muscle temperature."
        annotation (Placement(transformation(extent={{-36,120},{-30,126}})));
        T.Temperature skin_T(varName="HeatSkin.Temp(C)") "Skin temperature."
        annotation (Placement(transformation(extent={{-36,130},{-30,136}})));
        T.Temperature leftHeart_T(varName="HeatCore.Temp(C)")
        "Body core temperature."
        annotation (Placement(transformation(extent={{-36,-2},{-30,4}})));
        T.Fraction skinFlow_termoregulationEffect(varName=
              "Skin-Flow.SympsDilateEffect")
        "Skin vasodilatation effect on blood flow conductance."
        annotation (Placement(transformation(extent={{-36,-16},{-30,-10}})));
        T.HeatFlowRate skeletalMuscle_shiveringCals(varName=
              "SkeletalMuscle-Metabolism.ShiveringCals", storeUnit="cal/min")
        "Calories flow consumption by skeletal muscle shivering."
        annotation (Placement(transformation(extent={{-36,-32},{-30,-26}})));
        T.VolumeFlowRate SweatDuct_H2OOutflow(varName="SweatDuct.H2OOutflow")
        "Sweat duct H2O outflow."
        annotation (Placement(transformation(extent={{-36,-54},{-30,-48}})));
        T.Fraction hypothalamusShivering_NerveActivity(
                                                  varName=
              "HypothalamusShivering.NerveActivity", storeUnit="1")
        "Neural activity from hypothalamus shivering centrum."
        annotation (Placement(transformation(extent={{-34,-70},{-28,-64}})));
    equation
        connect(GITract_T.y, busConnector.GITract_T) annotation (Line(
        points={{-29.7,13},{90,13},{90,-2}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
        connect(HeatCore_Temp.y, busConnector.HeatCore_Temp) annotation (Line(
        points={{-29.7,23},{90,23},{90,-2}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
        connect(bone_T.y, busConnector.bone_T) annotation (Line(
        points={{-29.7,33},{90,33},{90,-2}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
        connect(brain_T.y, busConnector.brain_T) annotation (Line(
        points={{-29.7,43},{90,43},{90,-2}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
        connect(core_T.y, busConnector.core_T) annotation (Line(
        points={{-29.7,53},{90,53},{90,-2}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
        connect(fat_T.y, busConnector.fat_T) annotation (Line(
        points={{-29.7,63},{90,63},{90,-2}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
        connect(kidney_T.y, busConnector.kidney_T) annotation (Line(
        points={{-29.7,73},{90,73},{90,-2}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
        connect(liver_T.y, busConnector.liver_T) annotation (Line(
        points={{-29.7,83},{90,83},{90,-2}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
        connect(otherTissue_T.y, busConnector.otherTissue_T) annotation (Line(
        points={{-29.7,93},{90,93},{90,-2}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
        connect(respiratoryMuscle_T.y, busConnector.respiratoryMuscle_T) annotation (Line(
        points={{-29.7,103},{90,103},{90,-2}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
        connect(rightHeart_T.y, busConnector.rightHeart_T) annotation (Line(
        points={{-29.7,113},{90,113},{90,-2}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
        connect(skeletalMuscle_T.y, busConnector.skeletalMuscle_T) annotation (Line(
        points={{-29.7,123},{90,123},{90,-2}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
        connect(skin_T.y, busConnector.skin_T) annotation (Line(
        points={{-29.7,133},{90,133},{90,-2}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
        connect(leftHeart_T.y, busConnector.leftHeart_T) annotation (Line(
        points={{-29.7,1},{72,-2},{90,-2}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
        connect(skinFlow_termoregulationEffect.y, busConnector.skinFlow_termoregulationEffect)
        annotation (Line(
        points={{-29.7,-13},{90,-2}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
        connect(skeletalMuscle_shiveringCals.y, busConnector.skeletalMuscle_shiveringCals)
        annotation (Line(
        points={{-29.7,-29},{90,-2}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
        connect(SweatDuct_H2OOutflow.y, busConnector.SweatDuct_H2OOutflow)
        annotation (Line(
        points={{-29.7,-51},{25.15,-51},{25.15,-2},{90,-2}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
        connect(hypothalamusShivering_NerveActivity.y, busConnector.HypothalamusShivering_NerveActivity)
        annotation (Line(
        points={{-27.7,-67},{90,-67},{90,-2}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
        annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,
              -100},{100,100}}), graphics={
          Text(
            extent={{18,98},{100,60}},
            lineColor={0,0,0},
            textString="vars"),
          Text(
            extent={{-122,-102},{120,-136}},
            lineColor={0,0,255},
            textString="%name")}));
    end Variables;
end IO_Bus;