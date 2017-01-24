within Physiomodel.Gases.CO2;
package IO_Bus
    extends Physiolibrary.Types.IO_Bus;
    redeclare model extends Variables

        T.Pressure Brain_PCO2(varName="Brain-CO2.PCO2")
          "Partial carbondioxyde pressure in brain venules."
        annotation (Placement(transformation(extent={{-80,128},{-74,134}})));
        T.Concentration CO2Artys_cHCO3(varName="CO2Artys.[HCO3(mEq/L)]")
        annotation (Placement(transformation(extent={{-80,-206},{-74,-200}})));
        T.Pressure CO2Artys_pCO2(varName="CO2Artys.Pressure")
        annotation (Placement(transformation(extent={{-80,-196},{-74,-190}})));
        T.Pressure CO2Lung_pCO2(varName="LungCO2.PCapy")
        annotation (Placement(transformation(extent={{-80,-186},{-74,-180}})));
        T.Concentration CO2Veins_cHCO3(varName="CO2Veins.[HCO3(mEq/L)]")
        annotation (Placement(transformation(extent={{-80,-176},{-74,-170}})));
        T.Pressure CO2Veins_pCO2(varName="CO2Veins.Pressure")
        annotation (Placement(transformation(extent={{-80,-166},{-74,-160}})));
        T.Concentration GITract_cHCO3_interstitial(varName="GITract-CO2.[HCO3(mEq/L)]")
        annotation (Placement(transformation(extent={{-80,-152},{-74,-146}})));
        T.Concentration bone_cHCO3_interstitial(varName="Bone-CO2.[HCO3(mEq/L)]")
        annotation (Placement(transformation(extent={{-80,-142},{-74,-136}})));
        T.Concentration brain_cHCO3_interstitial(varName="Brain-CO2.[HCO3(mEq/L)]")
        annotation (Placement(transformation(extent={{-80,-132},{-74,-126}})));
        T.Concentration fat_cHCO3_interstitial(varName="Fat-CO2.[HCO3(mEq/L)]")
        annotation (Placement(transformation(extent={{-80,-122},{-74,-116}})));
        T.Concentration kidney_cHCO3_interstitial(varName="Kidney-CO2.[HCO3(mEq/L)]")
        annotation (Placement(transformation(extent={{-80,-112},{-74,-106}})));
        T.Concentration leftHeart_cHCO3_interstitial(varName="LeftHeart-CO2.[HCO3(mEq/L)]")
        annotation (Placement(transformation(extent={{-80,-102},{-74,-96}})));
        T.Concentration liver_cHCO3_interstitial(varName="Liver-CO2.[HCO3(mEq/L)]")
        annotation (Placement(transformation(extent={{-80,-92},{-74,-86}})));
        T.Concentration otherTissue_cHCO3_interstitial(varName="OtherTissue-CO2.[HCO3(mEq/L)]")
        annotation (Placement(transformation(extent={{-80,-82},{-74,-76}})));
        T.Concentration respiratoryMuscle_cHCO3_interstitial(varName="RespiratoryMuscle-CO2.[HCO3(mEq/L)]")
        annotation (Placement(transformation(extent={{-80,-72},{-74,-66}})));
        T.Concentration rightHeart_cHCO3_interstitial(varName="RightHeart-CO2.[HCO3(mEq/L)]")
        annotation (Placement(transformation(extent={{-80,-62},{-74,-56}})));
        T.Concentration skeletalMuscle_cHCO3_interstitial(varName="SkeletalMuscle-CO2.[HCO3(mEq/L)]")
        annotation (Placement(transformation(extent={{-80,-52},{-74,-46}})));
        T.Concentration skin_cHCO3_interstitial(varName="Skin-CO2.[HCO3(mEq/L)]")
        annotation (Placement(transformation(extent={{-80,-42},{-74,-36}})));
        T.Concentration skin_cHCO3(varName="Skin-CO2.[BloodHCO3(mEq/L)]")
        annotation (Placement(transformation(extent={{-80,-12},{-74,-6}})));
        T.Concentration skeletalMuscle_cHCO3(varName="SkeletalMuscle-CO2.[BloodHCO3(mEq/L)]")
        annotation (Placement(transformation(extent={{-80,-2},{-74,4}})));
        T.Concentration rightHeart_cHCO3(varName="RightHeart-CO2.[BloodHCO3(mEq/L)]")
        annotation (Placement(transformation(extent={{-80,8},{-74,14}})));
        T.Concentration respiratoryMuscle_cHCO3(varName="RespiratoryMuscle-CO2.[BloodHCO3(mEq/L)]")
        annotation (Placement(transformation(extent={{-80,18},{-74,24}})));
        T.Concentration otherTissue_cHCO3(varName="OtherTissue-CO2.[BloodHCO3(mEq/L)]")
        annotation (Placement(transformation(extent={{-80,28},{-74,34}})));
        T.Concentration liver_cHCO3(varName="Liver-CO2.[BloodHCO3(mEq/L)]")
        annotation (Placement(transformation(extent={{-80,38},{-74,44}})));
        T.Concentration leftHeart_cHCO3(varName="LeftHeart-CO2.[BloodHCO3(mEq/L)]")
        annotation (Placement(transformation(extent={{-80,48},{-74,54}})));
        T.Concentration kidney_cHCO3(varName="Kidney-CO2.[BloodHCO3(mEq/L)]")
        annotation (Placement(transformation(extent={{-80,58},{-74,64}})));
        T.Concentration GITract_cHCO3(varName="GITract-CO2.[BloodHCO3(mEq/L)]")
        annotation (Placement(transformation(extent={{-80,68},{-74,74}})));
        T.Concentration fat_cHCO3(varName="Fat-CO2.[BloodHCO3(mEq/L)]")
        annotation (Placement(transformation(extent={{-80,78},{-74,84}})));
        T.Concentration brain_cHCO3(varName="Brain-CO2.[BloodHCO3(mEq/L)]")
        annotation (Placement(transformation(extent={{-80,88},{-74,94}})));
        T.Concentration bone_cHCO3(varName="Bone-CO2.[BloodHCO3(mEq/L)]")
        annotation (Placement(transformation(extent={{-80,98},{-74,104}})));
        T.Pressure GITract_pCO2(varName="GITract-CO2.PCO2")
        annotation (Placement(transformation(extent={{-78,108},{-72,114}})));
        T.Pressure bone_pCO2(varName="Bone-CO2.PCO2")
        annotation (Placement(transformation(extent={{-78,118},{-72,124}})));
        T.Pressure brain_pCO2(varName="Brain-CO2.PCO2")
        annotation (Placement(transformation(extent={{-80,138},{-74,144}})));
        T.Pressure fat_pCO2(varName="Fat-CO2.PCO2")
        annotation (Placement(transformation(extent={{-80,148},{-74,154}})));
        T.Pressure kidney_pCO2(varName="Kidney-CO2.PCO2")
        annotation (Placement(transformation(extent={{-80,158},{-74,164}})));
        T.Pressure leftHeart_pCO2(varName="LeftHeart-CO2.PCO2")
        annotation (Placement(transformation(extent={{-80,168},{-74,174}})));
        T.Pressure liver_pCO2(varName="Liver-CO2.PCO2")
        annotation (Placement(transformation(extent={{-80,178},{-74,184}})));
        T.Pressure otherTissue_pCO2(varName="OtherTissue-CO2.PCO2")
        annotation (Placement(transformation(extent={{-80,188},{-74,194}})));
        T.Pressure respiratoryMuscle_pCO2(varName="RespiratoryMuscle-CO2.PCO2")
        annotation (Placement(transformation(extent={{-80,198},{-74,204}})));
        T.Pressure rightHeart_pCO2(varName="RightHeart-CO2.PCO2")
        annotation (Placement(transformation(extent={{-80,208},{-74,214}})));
        T.Pressure skeletalMuscle_pCO2(varName="SkeletalMuscle-CO2.PCO2")
        annotation (Placement(transformation(extent={{-80,218},{-74,224}})));
        T.Pressure skin_pCO2(varName="Skin-CO2.PCO2")
        annotation (Placement(transformation(extent={{-80,228},{-74,234}})));
        T.Concentration CO2Lungs_cHCO3(varName="LungCO2.[Capy]", storeUnit=
              "mol/l")
          annotation (Placement(transformation(extent={{-80,-20},{-74,-14}})));
    equation

        connect(Brain_PCO2.y, busConnector.Brain_PCO2) annotation (Line(
         points={{-73.7,131},{90,131},{90,-2}},
              color={0,0,127},
              smooth=Smooth.None), Text(
              string="%second",
              index=1,
              extent={{6,3},{6,3}}));
        connect(bone_cHCO3.y, busConnector.bone_cHCO3) annotation (Line(
         points={{-73.7,101},{90,101},{90,-2}},
              color={0,0,127},
              smooth=Smooth.None), Text(
              string="%second",
              index=1,
              extent={{6,3},{6,3}}));
        connect(brain_cHCO3.y, busConnector.brain_cHCO3) annotation (Line(
         points={{-73.7,91},{90,91},{90,-2}},
              color={0,0,127},
              smooth=Smooth.None), Text(
              string="%second",
              index=1,
              extent={{6,3},{6,3}}));
        connect(CO2Artys_cHCO3.y, busConnector.CO2Artys_cHCO3) annotation (Line(
         points={{-73.7,-203},{90,-203},{90,-2}},
              color={0,0,127},
              smooth=Smooth.None), Text(
              string="%second",
              index=1,
              extent={{6,3},{6,3}}));
        connect(CO2Veins_cHCO3.y, busConnector.CO2Veins_cHCO3) annotation (Line(
         points={{-73.7,-173},{90,-173},{90,-2}},
              color={0,0,127},
              smooth=Smooth.None), Text(
              string="%second",
              index=1,
              extent={{6,3},{6,3}}));
        connect(fat_cHCO3.y, busConnector.fat_cHCO3) annotation (Line(
         points={{-73.7,81},{90,81},{90,-2}},
              color={0,0,127},
              smooth=Smooth.None), Text(
              string="%second",
              index=1,
              extent={{6,3},{6,3}}));
        connect(GITract_cHCO3.y, busConnector.GITract_cHCO3) annotation (Line(
         points={{-73.7,71},{90,71},{90,-2}},
              color={0,0,127},
              smooth=Smooth.None), Text(
              string="%second",
              index=1,
              extent={{6,3},{6,3}}));
        connect(kidney_cHCO3.y, busConnector.kidney_cHCO3) annotation (Line(
         points={{-73.7,61},{90,61},{90,-2}},
              color={0,0,127},
              smooth=Smooth.None), Text(
              string="%second",
              index=1,
              extent={{6,3},{6,3}}));
        connect(leftHeart_cHCO3.y, busConnector.leftHeart_cHCO3) annotation (Line(
         points={{-73.7,51},{90,51},{90,-2}},
              color={0,0,127},
              smooth=Smooth.None), Text(
              string="%second",
              index=1,
              extent={{6,3},{6,3}}));
        connect(liver_cHCO3.y, busConnector.liver_cHCO3) annotation (Line(
         points={{-73.7,41},{90,41},{90,-2}},
              color={0,0,127},
              smooth=Smooth.None), Text(
              string="%second",
              index=1,
              extent={{6,3},{6,3}}));
        connect(otherTissue_cHCO3.y, busConnector.otherTissue_cHCO3) annotation (Line(
         points={{-73.7,31},{90,31},{90,-2}},
              color={0,0,127},
              smooth=Smooth.None), Text(
              string="%second",
              index=1,
              extent={{6,3},{6,3}}));
        connect(respiratoryMuscle_cHCO3.y, busConnector.respiratoryMuscle_cHCO3) annotation (Line(
         points={{-73.7,21},{90,21},{90,-2}},
              color={0,0,127},
              smooth=Smooth.None), Text(
              string="%second",
              index=1,
              extent={{6,3},{6,3}}));
        connect(rightHeart_cHCO3.y, busConnector.rightHeart_cHCO3) annotation (Line(
         points={{-73.7,11},{90,11},{90,-2}},
              color={0,0,127},
              smooth=Smooth.None), Text(
              string="%second",
              index=1,
              extent={{6,3},{6,3}}));
        connect(skeletalMuscle_cHCO3.y, busConnector.skeletalMuscle_cHCO3) annotation (Line(
         points={{-73.7,1},{86,1},{86,-2},{90,-2}},
              color={0,0,127},
              smooth=Smooth.None), Text(
              string="%second",
              index=1,
              extent={{6,3},{6,3}}));
        connect(skin_cHCO3.y, busConnector.skin_cHCO3) annotation (Line(
         points={{-73.7,-9},{90,-9},{90,-2}},
              color={0,0,127},
              smooth=Smooth.None), Text(
              string="%second",
              index=1,
              extent={{6,3},{6,3}}));
        connect(bone_cHCO3_interstitial.y, busConnector.bone_cHCO3_interstitial) annotation (Line(
         points={{-73.7,-139},{90,-139},{90,-2}},
              color={0,0,127},
              smooth=Smooth.None), Text(
              string="%second",
              index=1,
              extent={{6,3},{6,3}}));
        connect(brain_cHCO3_interstitial.y, busConnector.brain_cHCO3_interstitial) annotation (Line(
         points={{-73.7,-129},{90,-129},{90,-2}},
              color={0,0,127},
              smooth=Smooth.None), Text(
              string="%second",
              index=1,
              extent={{6,3},{6,3}}));
        connect(fat_cHCO3_interstitial.y, busConnector.fat_cHCO3_interstitial) annotation (Line(
         points={{-73.7,-119},{90,-119},{90,-2}},
              color={0,0,127},
              smooth=Smooth.None), Text(
              string="%second",
              index=1,
              extent={{6,3},{6,3}}));
        connect(GITract_cHCO3_interstitial.y, busConnector.GITract_cHCO3_interstitial) annotation (Line(
         points={{-73.7,-149},{90,-149},{90,-2}},
              color={0,0,127},
              smooth=Smooth.None), Text(
              string="%second",
              index=1,
              extent={{6,3},{6,3}}));
        connect(kidney_cHCO3_interstitial.y, busConnector.kidney_cHCO3_interstitial) annotation (Line(
         points={{-73.7,-109},{90,-109},{90,-2}},
              color={0,0,127},
              smooth=Smooth.None), Text(
              string="%second",
              index=1,
              extent={{6,3},{6,3}}));
        connect(leftHeart_cHCO3_interstitial.y, busConnector.leftHeart_cHCO3_interstitial) annotation (Line(
         points={{-73.7,-99},{90,-99},{90,-2}},
              color={0,0,127},
              smooth=Smooth.None), Text(
              string="%second",
              index=1,
              extent={{6,3},{6,3}}));
        connect(liver_cHCO3_interstitial.y, busConnector.liver_cHCO3_interstitial) annotation (Line(
         points={{-73.7,-89},{90,-89},{90,-2}},
              color={0,0,127},
              smooth=Smooth.None), Text(
              string="%second",
              index=1,
              extent={{6,3},{6,3}}));
        connect(otherTissue_cHCO3_interstitial.y, busConnector.otherTissue_cHCO3_interstitial) annotation (Line(
         points={{-73.7,-79},{90,-79},{90,-2}},
              color={0,0,127},
              smooth=Smooth.None), Text(
              string="%second",
              index=1,
              extent={{6,3},{6,3}}));
        connect(respiratoryMuscle_cHCO3_interstitial.y, busConnector.respiratoryMuscle_cHCO3_interstitial) annotation (Line(
         points={{-73.7,-69},{90,-69},{90,-2}},
              color={0,0,127},
              smooth=Smooth.None), Text(
              string="%second",
              index=1,
              extent={{6,3},{6,3}}));
        connect(rightHeart_cHCO3_interstitial.y, busConnector.rightHeart_cHCO3_interstitial) annotation (Line(
         points={{-73.7,-59},{90,-59},{90,-2}},
              color={0,0,127},
              smooth=Smooth.None), Text(
              string="%second",
              index=1,
              extent={{6,3},{6,3}}));
        connect(skeletalMuscle_cHCO3_interstitial.y, busConnector.skeletalMuscle_cHCO3_interstitial) annotation (Line(
         points={{-73.7,-49},{90,-49},{90,-2}},
              color={0,0,127},
              smooth=Smooth.None), Text(
              string="%second",
              index=1,
              extent={{6,3},{6,3}}));
        connect(skin_cHCO3_interstitial.y, busConnector.skin_cHCO3_interstitial) annotation (Line(
         points={{-73.7,-39},{90,-39},{90,-2}},
              color={0,0,127},
              smooth=Smooth.None), Text(
              string="%second",
              index=1,
              extent={{6,3},{6,3}}));
        connect(bone_pCO2.y, busConnector.bone_pCO2) annotation (Line(
         points={{-71.7,121},{90,121},{90,-2}},
              color={0,0,127},
              smooth=Smooth.None), Text(
              string="%second",
              index=1,
              extent={{6,3},{6,3}}));
        connect(brain_pCO2.y, busConnector.brain_pCO2) annotation (Line(
         points={{-73.7,141},{90,141},{90,-2}},
              color={0,0,127},
              smooth=Smooth.None), Text(
              string="%second",
              index=1,
              extent={{6,3},{6,3}}));
        connect(CO2Artys_pCO2.y, busConnector.CO2Artys_pCO2) annotation (Line(
         points={{-73.7,-193},{90,-193},{90,-2}},
              color={0,0,127},
              smooth=Smooth.None), Text(
              string="%second",
              index=1,
              extent={{6,3},{6,3}}));
        connect(CO2Veins_pCO2.y, busConnector.CO2Veins_pCO2) annotation (Line(
         points={{-73.7,-163},{90,-163},{90,-2}},
              color={0,0,127},
              smooth=Smooth.None), Text(
              string="%second",
              index=1,
              extent={{6,3},{6,3}}));
        connect(fat_pCO2.y, busConnector.fat_pCO2) annotation (Line(
         points={{-73.7,151},{90,151},{90,-2}},
              color={0,0,127},
              smooth=Smooth.None), Text(
              string="%second",
              index=1,
              extent={{6,3},{6,3}}));
        connect(GITract_pCO2.y, busConnector.gitract_pCO2) annotation (Line(
         points={{-71.7,111},{90,111},{90,-2}},
              color={0,0,127},
              smooth=Smooth.None), Text(
              string="%second",
              index=1,
              extent={{6,3},{6,3}}));
        connect(kidney_pCO2.y, busConnector.kidney_pCO2) annotation (Line(
         points={{-73.7,161},{90,161},{90,-2}},
              color={0,0,127},
              smooth=Smooth.None), Text(
              string="%second",
              index=1,
              extent={{6,3},{6,3}}));
        connect(leftHeart_pCO2.y, busConnector.leftHeart_pCO2) annotation (Line(
         points={{-73.7,171},{90,171},{90,-2}},
              color={0,0,127},
              smooth=Smooth.None), Text(
              string="%second",
              index=1,
              extent={{6,3},{6,3}}));
        connect(liver_pCO2.y, busConnector.liver_pCO2) annotation (Line(
         points={{-73.7,181},{90,181},{90,-2}},
              color={0,0,127},
              smooth=Smooth.None), Text(
              string="%second",
              index=1,
              extent={{6,3},{6,3}}));
        connect(CO2Lung_pCO2.y, busConnector.CO2Lung_pCO2) annotation (Line(
         points={{-73.7,-183},{90,-183},{90,-2}},
              color={0,0,127},
              smooth=Smooth.None), Text(
              string="%second",
              index=1,
              extent={{6,3},{6,3}}));
        connect(otherTissue_pCO2.y, busConnector.otherTissue_pCO2) annotation (Line(
         points={{-73.7,191},{90,191},{90,-2}},
              color={0,0,127},
              smooth=Smooth.None), Text(
              string="%second",
              index=1,
              extent={{6,3},{6,3}}));
        connect(respiratoryMuscle_pCO2.y, busConnector.respiratoryMuscle_pCO2) annotation (Line(
         points={{-73.7,201},{90,201},{90,-2}},
              color={0,0,127},
              smooth=Smooth.None), Text(
              string="%second",
              index=1,
              extent={{6,3},{6,3}}));
        connect(rightHeart_pCO2.y, busConnector.rightHeart_pCO2) annotation (Line(
         points={{-73.7,211},{90,211},{90,-2}},
              color={0,0,127},
              smooth=Smooth.None), Text(
              string="%second",
              index=1,
              extent={{6,3},{6,3}}));
        connect(skeletalMuscle_pCO2.y, busConnector.skeletalMuscle_pCO2) annotation (Line(
         points={{-73.7,221},{90,221},{90,-2}},
              color={0,0,127},
              smooth=Smooth.None), Text(
              string="%second",
              index=1,
              extent={{6,3},{6,3}}));
        connect(skin_pCO2.y, busConnector.skin_pCO2) annotation (Line(
         points={{-73.7,231},{90,231},{90,-2}},
              color={0,0,127},
              smooth=Smooth.None), Text(
              string="%second",
              index=1,
              extent={{6,3},{6,3}}));
        connect(CO2Lungs_cHCO3.y, busConnector.CO2Lung_cHCO3) annotation (Line(
            points={{-73.7,-17},{-6.85,-17},{-6.85,-2},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
    end Variables;
end IO_Bus;
