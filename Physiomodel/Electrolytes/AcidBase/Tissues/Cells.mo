within Physiomodel.Electrolytes.AcidBase.Tissues;
model Cells
    Cell.SkeletalMuscleIntracellularPh skeletalMuscle
    annotation (Placement(transformation(extent={{-54,64},{-34,84}})));

    Cell.BoneIntracellularPh bone
    annotation (Placement(transformation(extent={{-54,36},{-34,56}})));

    Cell.FatIntracellularPh fat
    annotation (Placement(transformation(extent={{-54,-54},{-34,-34}})));

    Cell.BrainIntracellularPh brain
    annotation (Placement(transformation(extent={{52,28},{72,48}})));

    Cell.RightHeartIntracellularPh rightHeart
    annotation (Placement(transformation(extent={{52,-92},{72,-72}})));

    Cell.RespiratoryMuscleIntracellularPh respiratoryMuscle
    annotation (Placement(transformation(extent={{-54,-24},{-34,-4}})));

    Cell.OtherTissueIntracellularPh otherTissue
    annotation (Placement(transformation(extent={{-54,6},{-34,26}})));

    Cell.LiverIntracellularPh liver
    annotation (Placement(transformation(extent={{52,60},{72,80}})));

    Cell.LeftHeartIntracellularPh leftHeart
    annotation (Placement(transformation(extent={{52,-62},{72,-42}})));

    Cell.KidneyIntracellularPh kidney
    annotation (Placement(transformation(extent={{52,-32},{72,-12}})));

    Cell.GITractIntracellularPh GITract
    annotation (Placement(transformation(extent={{52,-2},{72,18}})));

    Physiolibrary.Types.BusConnector busConnector
    annotation (Placement(transformation(extent={{-108,72},{-68,112}})));
    Cell.SkinIntracellularPh skin
    annotation (Placement(transformation(extent={{-54,-84},{-34,-64}})));
equation
    connect(busConnector.KCell_conc, bone.KCell)      annotation (
     Line(
      points={{-88,92},{-88,46},{-53,46}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.KCell_conc, brain.KCell)
    annotation (Line(
      points={{-88,92},{6,92},{6,38},{53,38}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.KCell_conc, fat.KCell)      annotation (
      Line(
      points={{-88,92},{-88,-44},{-53,-44}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.KCell_conc, GITract.KCell)
    annotation (Line(
      points={{-88,92},{6,92},{6,8},{53,8}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.KCell_conc, kidney.KCell)
    annotation (Line(
      points={{-88,92},{6,92},{6,-22},{53,-22}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.KCell_conc, leftHeart.KCell)
    annotation (Line(
      points={{-88,92},{6,92},{6,-52},{53,-52}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.KCell_conc, liver.KCell)
    annotation (Line(
      points={{-88,92},{6,92},{6,70},{53,70}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.KCell_conc, otherTissue.KCell)
    annotation (Line(
      points={{-88,92},{-88,16},{-53,16}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.KCell_conc, respiratoryMuscle.KCell)
    annotation (Line(
      points={{-88,92},{-88,-14},{-53,-14}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.KCell_conc, rightHeart.KCell)
    annotation (Line(
      points={{-88,92},{6,92},{6,-82},{53,-82}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.KCell_conc, skin.KCell)      annotation (
     Line(
      points={{-88,92},{-88,-74},{-53,-74}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.KCell_conc, skeletalMuscle.KCell)
    annotation (Line(
      points={{-88,92},{-87.5,92},{-87.5,74},{-53,74}},
      color={127,0,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));

    connect(busConnector.bone_cLactate, bone.cLactate)        annotation (
     Line(
      points={{-88,92},{-88,42},{-53,42}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.brain_cLactate, brain.cLactate)
    annotation (Line(
      points={{-88,92},{6,92},{6,34},{53,34}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.fat_cLactate, fat.cLactate)      annotation (
      Line(
      points={{-88,92},{-88,-48},{-53,-48}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.GITract_cLactate, GITract.cLactate)
    annotation (Line(
      points={{-88,92},{6,92},{6,4},{53,4}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.kidney_cLactate, kidney.cLactate)
    annotation (Line(
      points={{-88,92},{6,92},{6,-26},{53,-26}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.leftHeart_cLactate, leftHeart.cLactate)
    annotation (Line(
      points={{-88,92},{6,92},{6,-56},{53,-56}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.liver_cLactate, liver.cLactate)
    annotation (Line(
      points={{-88,92},{6,92},{6,66},{53,66}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.otherTissue_cLactate, otherTissue.cLactate)
    annotation (Line(
      points={{-88,92},{-88,12},{-53,12}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.respiratoryMuscle_cLactate, respiratoryMuscle.cLactate)
    annotation (Line(
      points={{-88,92},{-88,-18},{-53,-18}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.rightHeart_cLactate, rightHeart.cLactate)
    annotation (Line(
      points={{-88,92},{6,92},{6,-86},{53,-86}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.skin_cLactate, skin.cLactate)      annotation (
     Line(
      points={{-88,92},{-88,-78},{-53,-78}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.skeletalMuscle_cLactate, skeletalMuscle.cLactate)
    annotation (Line(
      points={{-88,92},{-87.5,92},{-87.5,70},{-53,70}},
      color={127,0,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));

    connect(busConnector.bone_pCO2, bone.pCO2)        annotation (
     Line(
      points={{-88,92},{-88,54},{-53,54}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.brain_pCO2, brain.pCO2)
    annotation (Line(
      points={{-88,92},{6,92},{6,46},{53,46}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.fat_pCO2, fat.pCO2)      annotation (
      Line(
      points={{-88,92},{-88,-36},{-53,-36}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.GITract_pCO2, GITract.pCO2)
    annotation (Line(
      points={{-88,92},{6,92},{6,16},{53,16}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.kidney_pCO2, kidney.pCO2)
    annotation (Line(
      points={{-88,92},{6,92},{6,-14},{53,-14}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.leftHeart_pCO2, leftHeart.pCO2)
    annotation (Line(
      points={{-88,92},{6,92},{6,-44},{53,-44}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.liver_pCO2, liver.pCO2)
    annotation (Line(
      points={{-88,92},{6,92},{6,78},{53,78}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.otherTissue_pCO2, otherTissue.pCO2)
    annotation (Line(
      points={{-88,92},{-88,24},{-53,24}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.respiratoryMuscle_pCO2, respiratoryMuscle.pCO2)
    annotation (Line(
      points={{-88,92},{-88,-6},{-53,-6}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.rightHeart_pCO2, rightHeart.pCO2)
    annotation (Line(
      points={{-88,92},{6,92},{6,-74},{53,-74}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.skin_pCO2, skin.pCO2)      annotation (
     Line(
      points={{-88,92},{-88,-66},{-53,-66}},
      color={0,127,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));
    connect(busConnector.skeletalMuscle_pCO2, skeletalMuscle.pCO2)
    annotation (Line(
      points={{-88,92},{-87.5,92},{-87.5,82},{-53,82}},
      color={127,0,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-5,2},{-5,2}}));

    connect(bone.pH, busConnector.bone_pH_intracellular) annotation (Line(
      points={{-38,34},{6,34},{6,92},{-88,92}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(brain.pH, busConnector.brain_pH_intracellular) annotation (Line(
      points={{68,26},{6,26},{6,92},{-88,92}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(fat.pH, busConnector.fat_pH_intracellular) annotation (Line(
      points={{-38,-56},{6,-56},{6,92},{-88,92}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(GITract.pH, busConnector.GITract_pH_intracellular) annotation (Line(
      points={{68,-4},{6,-4},{6,92},{-88,92}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(kidney.pH, busConnector.kidney_pH_intracellular) annotation (Line(
      points={{68,-34},{6,-34},{6,92},{-88,92}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(leftHeart.pH, busConnector.leftHeart_pH_intracellular) annotation (Line(
      points={{68,-64},{6,-64},{6,92},{-88,92}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(liver.pH, busConnector.liver_pH_intracellular) annotation (Line(
      points={{68,58},{6,58},{6,92},{-88,92}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(otherTissue.pH, busConnector.otherTissue_pH_intracellular) annotation (Line(
      points={{-38,4},{6,4},{6,92},{-88,92}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(rightHeart.pH, busConnector.rightHeart_pH_intracellular) annotation (Line(
      points={{68,-94},{6,-94},{6,92},{-88,92}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(respiratoryMuscle.pH, busConnector.respiratoryMuscle_pH_intracellular) annotation (Line(
      points={{-38,-26},{6,-26},{6,92},{-88,92}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(skin.pH, busConnector.skin_pH_intracellular) annotation (Line(
      points={{-38,-86},{6,-86},{6,92},{-88,92}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(skeletalMuscle.pH, busConnector.skeletalMuscle_pH_intracellular) annotation (Line(
      points={{-38,62},{6,62},{6,92},{-88,92}},
      color={0,0,127},
      smooth=Smooth.None));

    annotation (Icon(coordinateSystem(preserveAspectRatio=true, extent={{-100,
            -100},{100,100}}), graphics={
        Rectangle(
          extent={{-100,100},{100,-100}},
          lineColor={0,0,255},
          fillColor={215,215,215},
          fillPattern=FillPattern.Solid),
        Text(
          extent={{-96,-62},{98,-94}},
          lineColor={0,0,255},
          textString="%name"),
        Text(
          extent={{-90,0},{-26,28}},
          lineColor={0,0,0},
          textString="ICF"),
        Text(
          extent={{28,30},{94,-24}},
          lineColor={0,0,0},
          textString="pH")}),
    Documentation(info="<html>
    <p>BE_interstitial is base excess in the interstitium of the tissue. The standard value is 0, when strong acid concentration increase, then BE value decrease with the same concentration. </p>
    <p>Meaning might be interpreted like what amount of hydrogen iont must be added to sollution if the end poit of titration will be pH=7.4 and pCO2=5.3kPa.</p>
    <p>For any tissue can be simplified with difference of lactate concentration from its normal value.</p>
    </html>",         revisions="<html>

    <table cellspacing=\"2\" cellpadding=\"0\" border=\"0\"><tr>
    <td><p>Author:</p></td>
    <td><p>Marek Matejak</p></td>
    </tr>
    <tr>
    <td><p>License:</p></td>
    <td><p><a href=\"http://www.physiomodel.org/license.html\">Physiomodel License 1.0</a> </p></td>
    </tr>

    <tr>
    <td><p>Date of:</p></td>
    <td><p>2009</p></td>
    </tr>
    <tr>
    <td><p>References:</p></td>
    <td><p>Tom Coleman: QHP 2008 beta 3, University of Mississippi Medical Center</p></td>
    </tr>
    </table>
    <br/><p>Copyright &copy; 2014 Marek Matejak, Charles University in Prague.</p><br/>

    </html>"));
end Cells;
