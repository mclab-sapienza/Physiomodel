within Physiomodel.Gases.O2;
package IO_Bus
extends Physiolibrary.Types.IO_Bus;
    redeclare model extends Variables
        T.Pressure Bone_PO2(varName="Bone-Flow.PO2")
          "Partial oxygen pressure in bone blood venules."
        annotation (Placement(transformation(extent={{-64,-120},{-58,-114}})));
        T.Pressure Brain_PO2(varName="Brain-Flow.PO2")
          "Partial oxygen pressure in brain blood venules."
        annotation (Placement(transformation(extent={{-64,-90},{-58,-84}})));
        T.Pressure Fat_PO2(varName="Fat-Flow.PO2")
          "Partial oxygen pressure in fat blood venules."
        annotation (Placement(transformation(extent={{-64,-40},{-58,-34}})));
        T.Pressure GITract_PO2(varName="GITract-Flow.PO2")
          "Partial oxygen pressure in gITract blood venules."
        annotation (Placement(transformation(extent={{-64,-20},{-58,-14}})));
        T.Pressure KidneyO2_TubulePO2(varName="Kidney-O2.TubulePO2")
          "Kidney tubule partial O2 pressure. "
        annotation (Placement(transformation(extent={{-84,-4},{-78,2}})));
        T.Pressure Kidney_PO2(varName="Kidney-O2.VeinPO2")
          "Kidney vein partial O2 pressure."
        annotation (Placement(transformation(extent={{-64,10},{-58,16}})));
        T.Pressure LeftHeart_PO2(varName="LeftHeart-Flow.PO2")
          "Partial oxygen pressure in leftHeart blood venules."
        annotation (Placement(transformation(extent={{-64,30},{-58,36}})));
        T.Pressure Liver_PO2(varName="Liver-O2.PO2")
          "Partial oxygen pressure in hepatic vein."
        annotation (Placement(transformation(extent={{-64,50},{-58,56}})));
        T.Pressure OtherTissue_PO2(varName="OtherTissue-Flow.PO2")
          "Partial oxygen pressure in otherTissue blood venules."
        annotation (Placement(transformation(extent={{-64,70},{-58,76}})));
        T.Pressure RespiratoryMuscle_PO2(varName="RespiratoryMuscle-Flow.PO2")
          "Partial oxygen pressure in respiratoryMuscle blood venules."
        annotation (Placement(transformation(extent={{-64,90},{-58,96}})));
        T.Pressure RightHeart_PO2(varName="RightHeart-Flow.PO2")
          "Partial oxygen pressure in rightHeart blood venules."
        annotation (Placement(transformation(extent={{-64,110},{-58,116}})));
        T.Pressure SkeletalMuscle_PO2(varName="SkeletalMuscle-Flow.PO2")
          "Partial oxygen pressure in skeletalMuscle blood venules."
        annotation (Placement(transformation(extent={{-64,140},{-58,146}})));
        T.Pressure Skin_PO2(varName="Skin-Flow.PO2")
          "Partial oxygen pressure in skin blood venules."
        annotation (Placement(transformation(extent={{-64,160},{-58,166}})));
        T.Pressure O2Artys_PO2(varName="PO2Artys.Pressure")
          "Partial oxygen pressure in systemic arteries."
        annotation (Placement(transformation(extent={{-62,-148},{-56,-142}})));
        T.Fraction bone_sO2(varName="bone_sO2")
        annotation (Placement(transformation(extent={{356,86},{362,92}})));
        T.Fraction brain_sO2(varName="brain_sO2")
        annotation (Placement(transformation(extent={{356,170},{362,176}})));
        T.Fraction fat_sO2(varName="fat_sO2")
        annotation (Placement(transformation(extent={{132,192},{138,198}})));
        T.Fraction GITract_sO2(varName="GITract_sO2")
        annotation (Placement(transformation(extent={{114,-332},{120,-326}})));
        T.Fraction kidney_sO2(varName="kidney_sO2")
        annotation (Placement(transformation(extent={{114,-252},{120,-246}})));
        T.Fraction leftHeart_sO2(varName="leftHeart_sO2")
        annotation (Placement(transformation(extent={{114,-182},{120,-176}})));
        T.Fraction liver_sO2(varName="liver_sO2")
        annotation (Placement(transformation(extent={{114,-122},{120,-116}})));
        T.Fraction O2Artys_sO2(varName="O2Artys_sO2")
        annotation (Placement(transformation(extent={{114,-102},{120,-96}})));
        T.Fraction O2Lung_sO2(varName="O2Lung_sO2")
        annotation (Placement(transformation(extent={{114,-92},{120,-86}})));
        T.Fraction O2Veins_sO2(varName="O2Veins_sO2")
        annotation (Placement(transformation(extent={{114,-82},{120,-76}})));
        T.Fraction otherTissue_sO2(varName="otherTissue_sO2")
        annotation (Placement(transformation(extent={{114,-22},{120,-16}})));
        T.Fraction respiratoryMuscle_sO2(varName="respiratoryMuscle_sO2")
        annotation (Placement(transformation(extent={{114,68},{120,74}})));
        T.Fraction rightHeart_sO2(varName="rightHeart_sO2")
        annotation (Placement(transformation(extent={{114,148},{120,154}})));
        T.Fraction skeletalMuscle_sO2(varName="skeletalMuscle_sO2")
        annotation (Placement(transformation(extent={{114,218},{120,224}})));
        T.Fraction skin_sO2(varName="skin_sO2")
        annotation (Placement(transformation(extent={{114,288},{120,294}})));
    equation
        connect(Bone_PO2.y, busConnector.bone_pO2) annotation (Line(
         points={{-57.7,-117},{90,-117},{90,-2}},
              color={0,0,127},
              smooth=Smooth.None), Text(
              string="%second",
              index=1,
              extent={{6,3},{6,3}}));
        connect(Brain_PO2.y, busConnector.brain_pO2) annotation (Line(
         points={{-57.7,-87},{90,-87},{90,-2}},
              color={0,0,127},
              smooth=Smooth.None), Text(
              string="%second",
              index=1,
              extent={{6,3},{6,3}}));
        connect(Fat_PO2.y, busConnector.fat_pO2) annotation (Line(
         points={{-57.7,-37},{90,-37},{90,-2}},
              color={0,0,127},
              smooth=Smooth.None), Text(
              string="%second",
              index=1,
              extent={{6,3},{6,3}}));
        connect(GITract_PO2.y, busConnector.GITract_pO2) annotation (Line(
         points={{-57.7,-17},{90,-17},{90,-2}},
              color={0,0,127},
              smooth=Smooth.None), Text(
              string="%second",
              index=1,
              extent={{6,3},{6,3}}));
        connect(Kidney_PO2.y, busConnector.Kidney_PO2) annotation (Line(
         points={{-57.7,13},{90,13},{90,-2}},
              color={0,0,127},
              smooth=Smooth.None), Text(
              string="%second",
              index=1,
              extent={{6,3},{6,3}}));
        connect(LeftHeart_PO2.y, busConnector.LeftHeart_PO2) annotation (Line(
         points={{-57.7,33},{90,33},{90,-2}},
              color={0,0,127},
              smooth=Smooth.None), Text(
              string="%second",
              index=1,
              extent={{6,3},{6,3}}));
        connect(Liver_PO2.y, busConnector.Liver_PO2) annotation (Line(
         points={{-57.7,53},{90,53},{90,-2}},
              color={0,0,127},
              smooth=Smooth.None), Text(
              string="%second",
              index=1,
              extent={{6,3},{6,3}}));
        connect(OtherTissue_PO2.y, busConnector.otherTissue_pO2) annotation (Line(
         points={{-57.7,73},{90,73},{90,-2}},
              color={0,0,127},
              smooth=Smooth.None), Text(
              string="%second",
              index=1,
              extent={{6,3},{6,3}}));
        connect(RespiratoryMuscle_PO2.y, busConnector.respiratoryMuscle_pO2) annotation (Line(
         points={{-57.7,93},{90,93},{90,-2}},
              color={0,0,127},
              smooth=Smooth.None), Text(
              string="%second",
              index=1,
              extent={{6,3},{6,3}}));
        connect(RightHeart_PO2.y, busConnector.RightHeart_PO2) annotation (Line(
         points={{-57.7,113},{90,113},{90,-2}},
              color={0,0,127},
              smooth=Smooth.None), Text(
              string="%second",
              index=1,
              extent={{6,3},{6,3}}));
        connect(SkeletalMuscle_PO2.y, busConnector.skeletalMuscle_pO2) annotation (Line(
         points={{-57.7,143},{90,143},{90,-2}},
              color={0,0,127},
              smooth=Smooth.None), Text(
              string="%second",
              index=1,
              extent={{6,3},{6,3}}));
        connect(Skin_PO2.y, busConnector.Skin_PO2) annotation (Line(
         points={{-57.7,163},{90,163},{90,-2}},
              color={0,0,127},
              smooth=Smooth.None), Text(
              string="%second",
              index=1,
              extent={{6,3},{6,3}}));
          connect(O2Artys_PO2.y, busConnector.O2Artys_PO2) annotation (Line(
              points={{-55.7,-145},{60,-145},{60,-2},{90,-2}},
              color={0,0,127},
              smooth=Smooth.None), Text(
              string="%second",
              index=1,
              extent={{6,3},{6,3}}));
        connect(bone_sO2.y, busConnector.bone_sO2) annotation (Line(
         points={{362.3,89},{90,89},{90,-2}},
              color={0,0,127},
              smooth=Smooth.None), Text(
              string="%second",
              index=1,
              extent={{6,3},{6,3}}));
        connect(brain_sO2.y, busConnector.brain_sO2) annotation (Line(
         points={{362.3,173},{90,173},{90,-2}},
              color={0,0,127},
              smooth=Smooth.None), Text(
              string="%second",
              index=1,
              extent={{6,3},{6,3}}));
        connect(fat_sO2.y, busConnector.fat_sO2) annotation (Line(
         points={{138.3,195},{90,195},{90,-2}},
              color={0,0,127},
              smooth=Smooth.None), Text(
              string="%second",
              index=1,
              extent={{6,3},{6,3}}));
        connect(GITract_sO2.y, busConnector.GITract_sO2) annotation (Line(
         points={{120.3,-329},{90,-329},{90,-2}},
              color={0,0,127},
              smooth=Smooth.None), Text(
              string="%second",
              index=1,
              extent={{6,3},{6,3}}));
        connect(kidney_sO2.y, busConnector.kidney_sO2) annotation (Line(
         points={{120.3,-249},{90,-249},{90,-2}},
              color={0,0,127},
              smooth=Smooth.None), Text(
              string="%second",
              index=1,
              extent={{6,3},{6,3}}));
        connect(leftHeart_sO2.y, busConnector.leftHeart_sO2) annotation (Line(
         points={{120.3,-179},{90,-179},{90,-2}},
              color={0,0,127},
              smooth=Smooth.None), Text(
              string="%second",
              index=1,
              extent={{6,3},{6,3}}));
        connect(liver_sO2.y, busConnector.liver_sO2) annotation (Line(
         points={{120.3,-119},{90,-119},{90,-2}},
              color={0,0,127},
              smooth=Smooth.None), Text(
              string="%second",
              index=1,
              extent={{6,3},{6,3}}));
        connect(O2Artys_sO2.y, busConnector.O2Artys_sO2) annotation (Line(
         points={{120.3,-99},{90,-99},{90,-2}},
              color={0,0,127},
              smooth=Smooth.None), Text(
              string="%second",
              index=1,
              extent={{6,3},{6,3}}));
        connect(O2Veins_sO2.y, busConnector.O2Veins_sO2) annotation (Line(
         points={{120.3,-79},{90,-79},{90,-2}},
              color={0,0,127},
              smooth=Smooth.None), Text(
              string="%second",
              index=1,
              extent={{6,3},{6,3}}));
        connect(otherTissue_sO2.y, busConnector.otherTissue_sO2) annotation (Line(
         points={{120.3,-19},{90,-19},{90,-2}},
              color={0,0,127},
              smooth=Smooth.None), Text(
              string="%second",
              index=1,
              extent={{6,3},{6,3}}));
        connect(respiratoryMuscle_sO2.y, busConnector.respiratoryMuscle_sO2) annotation (Line(
         points={{120.3,71},{90,71},{90,-2}},
              color={0,0,127},
              smooth=Smooth.None), Text(
              string="%second",
              index=1,
              extent={{6,3},{6,3}}));
        connect(rightHeart_sO2.y, busConnector.rightHeart_sO2) annotation (Line(
         points={{120.3,151},{90,151},{90,-2}},
              color={0,0,127},
              smooth=Smooth.None), Text(
              string="%second",
              index=1,
              extent={{6,3},{6,3}}));
        connect(skeletalMuscle_sO2.y, busConnector.skeletalMuscle_sO2) annotation (Line(
         points={{120.3,221},{90,221},{90,-2}},
              color={0,0,127},
              smooth=Smooth.None), Text(
              string="%second",
              index=1,
              extent={{6,3},{6,3}}));
        connect(skin_sO2.y, busConnector.skin_sO2) annotation (Line(
         points={{120.3,291},{90,291},{90,-2}},
              color={0,0,127},
              smooth=Smooth.None), Text(
              string="%second",
              index=1,
              extent={{6,3},{6,3}}));
        connect(O2Lung_sO2.y, busConnector.O2Lung_sO2) annotation (Line(
         points={{120.3,-89},{90,-89},{90,-2}},
              color={0,0,127},
              smooth=Smooth.None), Text(
              string="%second",
              index=1,
              extent={{6,3},{6,3}}));
        connect(KidneyO2_TubulePO2.y, busConnector.KidneyO2_TubulePO2)
          annotation (Line(
            points={{-77.7,-1},{90,-1},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
    end Variables;

end IO_Bus;
