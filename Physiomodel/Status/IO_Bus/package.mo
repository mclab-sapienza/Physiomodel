within Physiomodel.Status;
package IO_Bus
    extends Physiolibrary.Types.IO_Bus;
    redeclare model extends Variables

        T.Fraction Bone_StructureEffect(varName="Bone-Structure.Effect")
        "Bone tissue structural damage effect. []"
        annotation (Placement(transformation(extent={{-36,10},{-30,16}})));
        T.Fraction brain_FunctionEffect(varName="Brain-Function.Effect")
        "Brain tissue function effect. []"
        annotation (Placement(transformation(extent={{-36,20},{-30,26}})));
        T.Fraction Brain_StructureEffect(varName="Brain-Structure.Effect")
        "Brain tissue structural damage effect. []"
        annotation (Placement(transformation(extent={{-36,30},{-30,36}})));
        T.Fraction FatFunctionEffect(varName="Fat-Function.Effect")
        "Fat tissue function effect. []"
        annotation (Placement(transformation(extent={{-36,40},{-30,46}})));
        T.Fraction Fat_StructureEffect(varName="Fat-Structure.Effect")
        "Fat tissue structural damage effect. []"
        annotation (Placement(transformation(extent={{-36,50},{-30,56}})));
        T.Fraction GITractFunctionEffect(varName="GITract-Function.Effect")
        "GITract tissue function effect. []"
        annotation (Placement(transformation(extent={{-36,60},{-30,66}})));
        T.Fraction GITract_StructureEffect(varName="GITract-Structure.Effect")
        "GITract tissue structural damage effect. []"
        annotation (Placement(transformation(extent={{-36,70},{-30,76}})));
        T.Fraction KidneyFunctionEffect(varName="Kidney-Function.Effect")
        "Kidney tissue function effect. []"
        annotation (Placement(transformation(extent={{-36,80},{-30,86}})));
        //T.Fraction KidneyFunction_Effect(varName="Kidney-Function.Effect")
        //    "Kidney tissue function effect. []"
        //annotation (Placement(transformation(extent={{-36,90},{-30,96}})));
        T.Fraction Kidney_StructureEffect(varName="Kidney-Structure.Effect")
        "Kidney tissue structural damage effect. []"
        annotation (Placement(transformation(extent={{-36,100},{-30,106}})));
        T.Fraction LeftHeart_StructureEffect(varName="LeftHeart-Structure.Effect")
        "LeftHeart tissue structural damage effect. []"
        annotation (Placement(transformation(extent={{-36,110},{-30,116}})));
        T.Fraction LiverFunctionEffect(varName="Liver-Function.Effect")
        "Liver tissue function effect. []"
        annotation (Placement(transformation(extent={{-36,120},{-30,126}})));
        T.Fraction Liver_StructureEffect(varName="Liver-Structure.Effect")
        "Liver tissue structural damage effect. []"
        annotation (Placement(transformation(extent={{-36,130},{-30,136}})));
        T.Fraction OtherTissueFunctionEffect(varName="OtherTissue-Function.Effect")
        "OtherTissue tissue function effect. []"
        annotation (Placement(transformation(extent={{-36,140},{-30,146}})));
        T.Fraction OtherTissue_StructureEffect(varName="OtherTissue-Structure.Effect")
        "OtherTissue tissue structural damage effect. []"
        annotation (Placement(transformation(extent={{-36,150},{-30,156}})));
        T.Fraction RespiratoryMuscleFunctionEffect(varName="RespiratoryMuscle-Function.Effect")
        "RespiratoryMuscle tissue function effect. []"
        annotation (Placement(transformation(extent={{-36,160},{-30,166}})));
        T.Fraction RespiratoryMuscle_StructureEffect(varName="RespiratoryMuscle-Structure.Effect")
        "RespiratoryMuscle tissue structural damage effect. []"
        annotation (Placement(transformation(extent={{-36,170},{-30,176}})));
        T.Fraction RightHeart_StructureEffect(varName="RightHeart-Structure.Effect")
        "RightHeart tissue structural damage effect. []"
        annotation (Placement(transformation(extent={{-36,180},{-30,186}})));
        T.Fraction SkeletalMuscle_StructureEffect(varName="SkeletalMuscle-Structure.Effect")
        "SkeletalMuscle tissue structural damage effect. []"
        annotation (Placement(transformation(extent={{-36,190},{-30,196}})));
        T.Fraction Skin_StructureEffect(varName="Skin-Structure.Effect")
        "Skin tissue structural damage effect. []"
        annotation (Placement(transformation(extent={{-36,200},{-30,206}})));
        BooleanVariable Bone_Function_Failed(varName="Bone-Function.Failed")
        "Bone function failture if true."
        annotation (Placement(transformation(extent={{-36,210},{-30,216}})));
        BooleanVariable Brain_Function_Failed(varName="Brain-Function.Failed")
        "Brain function failture if true."
        annotation (Placement(transformation(extent={{-36,220},{-30,226}})));
        BooleanVariable Fat_Function_Failed(varName="Fat-Function.Failed")
        "Fat function failture if true."
        annotation (Placement(transformation(extent={{-36,230},{-30,236}})));
        BooleanVariable GITract_Function_Failed(varName="GITract-Function.Failed")
        "GITract function failture if true."
        annotation (Placement(transformation(extent={{-36,240},{-30,246}})));
        BooleanVariable Kidney_Function_Failed(varName="Kidney-Function.Failed")
        "Kidney function failture if true."
        annotation (Placement(transformation(extent={{-36,250},{-30,256}})));
        BooleanVariable LeftHeart_Function_Failed(varName="LeftHeart-Function.Failed")
        "LeftHeart function failture if true."
        annotation (Placement(transformation(extent={{-36,260},{-30,266}})));
        BooleanVariable Liver_Function_Failed(varName="Liver-Function.Failed")
        "Liver function failture if true."
        annotation (Placement(transformation(extent={{-36,270},{-30,276}})));
        BooleanVariable OtherTissue_Function_Failed(varName="OtherTissue-Function.Failed")
        "OtherTissue function failture if true."
        annotation (Placement(transformation(extent={{-36,280},{-30,286}})));
        BooleanVariable RespiratoryMuscle_Function_Failed(varName="RespiratoryMuscle-Function.Failed")
        "RespiratoryMuscle function failture if true."
        annotation (Placement(transformation(extent={{-36,290},{-30,296}})));
        BooleanVariable RightHeart_Function_Failed(varName="RightHeart-Function.Failed")
        "RightHeart function failture if true."
        annotation (Placement(transformation(extent={{-36,300},{-30,306}})));
        BooleanVariable SkeletalMuscle_Function_Failed(varName="SkeletalMuscle-Function.Failed")
        "SkeletalMuscle function failture if true."
        annotation (Placement(transformation(extent={{-36,310},{-30,316}})));
        BooleanVariable Skin_Function_Failed(varName="Skin-Function.Failed")
        "Skin function failture if true."
        annotation (Placement(transformation(extent={{-36,320},{-30,326}})));
        T.Fraction skin_FunctionEffect(varName=
          "Skin-Function.Effect") "Skin tissue function effect. []"
        annotation (Placement(transformation(extent={{-36,2},{-30,8}})));
    equation
        connect(Bone_StructureEffect.y, busConnector.Bone_StructureEffect) annotation (Line(
        points={{-29.7,13},{90,13},{90,-2}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
        connect(brain_FunctionEffect.y, busConnector.brain_FunctionEffect) annotation (Line(
        points={{-29.7,23},{90,23},{90,-2}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
        connect(Brain_StructureEffect.y, busConnector.Brain_StructureEffect) annotation (Line(
        points={{-29.7,33},{90,33},{90,-2}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
        connect(FatFunctionEffect.y, busConnector.FatFunctionEffect) annotation (Line(
        points={{-29.7,43},{90,43},{90,-2}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
        connect(Fat_StructureEffect.y, busConnector.Fat_StructureEffect) annotation (Line(
        points={{-29.7,53},{90,53},{90,-2}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
        connect(GITractFunctionEffect.y, busConnector.GITractFunctionEffect) annotation (Line(
        points={{-29.7,63},{90,63},{90,-2}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
        connect(GITract_StructureEffect.y, busConnector.GITract_StructureEffect) annotation (Line(
        points={{-29.7,73},{90,73},{90,-2}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
        connect(KidneyFunctionEffect.y, busConnector.KidneyFunctionEffect) annotation (Line(
        points={{-29.7,83},{90,83},{90,-2}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
        connect(Kidney_StructureEffect.y, busConnector.Kidney_StructureEffect) annotation (Line(
        points={{-29.7,103},{90,103},{90,-2}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
        connect(LeftHeart_StructureEffect.y, busConnector.LeftHeart_StructureEffect) annotation (Line(
        points={{-29.7,113},{90,113},{90,-2}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
        connect(LiverFunctionEffect.y, busConnector.LiverFunctionEffect) annotation (Line(
        points={{-29.7,123},{90,123},{90,-2}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
        connect(Liver_StructureEffect.y, busConnector.Liver_StructureEffect) annotation (Line(
        points={{-29.7,133},{90,133},{90,-2}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
        connect(OtherTissueFunctionEffect.y, busConnector.OtherTissueFunctionEffect) annotation (Line(
        points={{-29.7,143},{90,143},{90,-2}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
        connect(OtherTissue_StructureEffect.y, busConnector.OtherTissue_StructureEffect) annotation (Line(
        points={{-29.7,153},{90,153},{90,-2}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
        connect(RespiratoryMuscleFunctionEffect.y, busConnector.RespiratoryMuscleFunctionEffect) annotation (Line(
        points={{-29.7,163},{90,163},{90,-2}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
        connect(RespiratoryMuscle_StructureEffect.y, busConnector.RespiratoryMuscle_StructureEffect) annotation (Line(
        points={{-29.7,173},{90,173},{90,-2}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
        connect(RightHeart_StructureEffect.y, busConnector.RightHeart_StructureEffect) annotation (Line(
        points={{-29.7,183},{90,183},{90,-2}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
        connect(SkeletalMuscle_StructureEffect.y, busConnector.SkeletalMuscle_StructureEffect) annotation (Line(
        points={{-29.7,193},{90,193},{90,-2}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
        connect(Skin_StructureEffect.y, busConnector.Skin_StructureEffect) annotation (Line(
        points={{-29.7,203},{90,203},{90,-2}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
        connect(Bone_Function_Failed.y, busConnector.bone_Function_Failed) annotation (Line(
        points={{-29.7,213},{90,213},{90,-2}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
        connect(Brain_Function_Failed.y, busConnector.brain_Function_Failed) annotation (Line(
        points={{-29.7,223},{90,223},{90,-2}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
        connect(Fat_Function_Failed.y, busConnector.fat_Function_Failed) annotation (Line(
        points={{-29.7,233},{90,233},{90,-2}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
        connect(GITract_Function_Failed.y, busConnector.GITract_Function_Failed) annotation (Line(
        points={{-29.7,243},{90,243},{90,-2}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
        connect(Kidney_Function_Failed.y, busConnector.Kidney_Function_Failed) annotation (Line(
        points={{-29.7,253},{90,253},{90,-2}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
        connect(LeftHeart_Function_Failed.y, busConnector.LeftHeart_Function_Failed) annotation (Line(
        points={{-29.7,263},{90,263},{90,-2}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
        connect(Liver_Function_Failed.y, busConnector.Liver_Function_Failed) annotation (Line(
        points={{-29.7,273},{90,273},{90,-2}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
        connect(OtherTissue_Function_Failed.y, busConnector.otherTissue_Function_Failed) annotation (Line(
        points={{-29.7,283},{90,283},{90,-2}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
        connect(RespiratoryMuscle_Function_Failed.y, busConnector.respiratoryMuscle_Function_Failed) annotation (Line(
        points={{-29.7,293},{90,293},{90,-2}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
        connect(RightHeart_Function_Failed.y, busConnector.RightHeart_Function_Failed) annotation (Line(
        points={{-29.7,303},{90,303},{90,-2}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
        connect(SkeletalMuscle_Function_Failed.y, busConnector.skeletalMuscle_Function_Failed) annotation (Line(
        points={{-29.7,313},{90,313},{90,-2}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
        connect(Skin_Function_Failed.y, busConnector.Skin_Function_Failed) annotation (Line(
        points={{-29.7,323},{90,323},{90,-2}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));

        connect(skin_FunctionEffect.y, busConnector.skin_FunctionEffect)
        annotation (Line(
        points={{-29.7,5},{25.15,5},{25.15,-2},{90,-2}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
        annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,
          -100},{100,100}}), graphics={
        Text(
        extent={{18,100},{100,62}},
        lineColor={0,0,0},
        textString="vars"),
        Text(
        extent={{-124,-90},{118,-124}},
        lineColor={0,0,255},
        textString="%name")}));
    end Variables;
end IO_Bus;
