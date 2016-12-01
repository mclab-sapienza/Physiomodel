within Physiomodel.Electrolytes.AcidBase.Tissues;
model Interstitia
    Interstitium.SkeletalMuscleInterstitialPh skeletalMuscle
      annotation (Placement(transformation(extent={{-54,66},{-34,86}})));

    Interstitium.BoneInterstitialPh bone
      annotation (Placement(transformation(extent={{-54,36},{-34,56}})));

    Interstitium.FatInterstitialPh fat
      annotation (Placement(transformation(extent={{-54,-54},{-34,-34}})));

    Interstitium.BrainInterstitialPh brain
      annotation (Placement(transformation(extent={{52,28},{72,48}})));

    Interstitium.RightHeartInterstitialPh rightHeart
      annotation (Placement(transformation(extent={{52,-92},{72,-72}})));

    Interstitium.RespiratoryMuscleInterstitialPh respiratoryMuscle
      annotation (Placement(transformation(extent={{-54,-24},{-34,-4}})));

    Interstitium.OtherTissueInterstitialPh otherTissue
      annotation (Placement(transformation(extent={{-54,6},{-34,26}})));

    Interstitium.LiverInterstitialPh liver
      annotation (Placement(transformation(extent={{52,60},{72,80}})));

    Interstitium.LeftHeartInterstitialPh leftHeart
      annotation (Placement(transformation(extent={{52,-62},{72,-42}})));

    Interstitium.KidneyInterstitialPh kidney
      annotation (Placement(transformation(extent={{52,-32},{72,-12}})));

    Interstitium.GITractInterstitialPh GITract
      annotation (Placement(transformation(extent={{52,-2},{72,18}})));

    Physiolibrary.Types.BusConnector busConnector
      annotation (Placement(transformation(extent={{-108,72},{-68,112}})));
    Interstitium.SkinInterstitialPh skin
      annotation (Placement(transformation(extent={{-54,-84},{-34,-64}})));
equation
    connect(busConnector.bone_cHCO3_interstitial, bone.cHCO3)        annotation (
    Line(
    points={{-88,92},{-88,42},{-53,42}},
    color={0,127,0},
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-5,2},{-5,2}}));
    connect(busConnector.brain_cHCO3_interstitial, brain.cHCO3)
    annotation (Line(
    points={{-88,92},{6,92},{6,34},{53,34}},
    color={0,127,0},
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-5,2},{-5,2}}));
    connect(busConnector.fat_cHCO3_interstitial, fat.cHCO3)      annotation (
    Line(
    points={{-88,92},{-88,-48},{-53,-48}},
    color={0,127,0},
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-5,2},{-5,2}}));
    connect(busConnector.GITract_cHCO3_interstitial, GITract.cHCO3)
    annotation (Line(
    points={{-88,92},{6,92},{6,4},{53,4}},
    color={0,127,0},
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-5,2},{-5,2}}));
    connect(busConnector.kidney_cHCO3_interstitial, kidney.cHCO3)
    annotation (Line(
    points={{-88,92},{6,92},{6,-26},{53,-26}},
    color={0,127,0},
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-5,2},{-5,2}}));
    connect(busConnector.leftHeart_cHCO3_interstitial, leftHeart.cHCO3)
    annotation (Line(
    points={{-88,92},{6,92},{6,-56},{53,-56}},
    color={0,127,0},
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-5,2},{-5,2}}));
    connect(busConnector.liver_cHCO3_interstitial, liver.cHCO3)
    annotation (Line(
    points={{-88,92},{6,92},{6,66},{53,66}},
    color={0,127,0},
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-5,2},{-5,2}}));
    connect(busConnector.otherTissue_cHCO3_interstitial, otherTissue.cHCO3)
    annotation (Line(
    points={{-88,92},{-88,12},{-53,12}},
    color={0,127,0},
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-5,2},{-5,2}}));
    connect(busConnector.respiratoryMuscle_cHCO3_interstitial, respiratoryMuscle.cHCO3)
    annotation (Line(
    points={{-88,92},{-88,-18},{-53,-18}},
    color={0,127,0},
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-5,2},{-5,2}}));
    connect(busConnector.rightHeart_cHCO3_interstitial, rightHeart.cHCO3)
    annotation (Line(
    points={{-88,92},{6,92},{6,-86},{53,-86}},
    color={0,127,0},
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-5,2},{-5,2}}));
    connect(busConnector.skin_cHCO3_interstitial, skin.cHCO3)      annotation (
    Line(
    points={{-88,92},{-88,-78},{-53,-78}},
    color={0,127,0},
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-5,2},{-5,2}}));
    connect(busConnector.skeletalMuscle_cHCO3_interstitial, skeletalMuscle.cHCO3)
    annotation (Line(
    points={{-88,92},{-87.5,92},{-87.5,72},{-53,72}},
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
    points={{-88,92},{-87.5,92},{-87.5,84},{-53,84}},
    color={127,0,0},
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-5,2},{-5,2}}));

    connect(busConnector.bone_T, bone.T)        annotation (
    Line(
    points={{-88,92},{-88,38.8},{-53,38.8}},
    color={0,127,0},
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-5,2},{-5,2}}));
    connect(busConnector.brain_T, brain.T)
    annotation (Line(
    points={{-88,92},{6,92},{6,30.8},{53,30.8}},
    color={0,127,0},
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-5,2},{-5,2}}));
    connect(busConnector.fat_T, fat.T)      annotation (
    Line(
    points={{-88,92},{-88,-51.2},{-53,-51.2}},
    color={0,127,0},
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-5,2},{-5,2}}));
    connect(busConnector.GITract_T, GITract.T)
    annotation (Line(
    points={{-88,92},{6,92},{6,0.8},{53,0.8}},
    color={0,127,0},
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-5,2},{-5,2}}));
    connect(busConnector.kidney_T, kidney.T)
    annotation (Line(
    points={{-88,92},{6,92},{6,-29.2},{53,-29.2}},
    color={0,127,0},
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-5,2},{-5,2}}));
    connect(busConnector.leftHeart_T, leftHeart.T)
    annotation (Line(
    points={{-88,92},{6,92},{6,-59.2},{53,-59.2}},
    color={0,127,0},
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-5,2},{-5,2}}));
    connect(busConnector.liver_T, liver.T)
    annotation (Line(
    points={{-88,92},{6,92},{6,62.8},{53,62.8}},
    color={0,127,0},
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-5,2},{-5,2}}));
    connect(busConnector.otherTissue_T, otherTissue.T)
    annotation (Line(
    points={{-88,92},{-88,8.8},{-53,8.8}},
    color={0,127,0},
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-5,2},{-5,2}}));
    connect(busConnector.respiratoryMuscle_T, respiratoryMuscle.T)
    annotation (Line(
    points={{-88,92},{-88,-21.2},{-53,-21.2}},
    color={0,127,0},
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-5,2},{-5,2}}));
    connect(busConnector.rightHeart_T, rightHeart.T)
    annotation (Line(
    points={{-88,92},{6,92},{6,-89.2},{53,-89.2}},
    color={0,127,0},
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-5,2},{-5,2}}));
    connect(busConnector.skin_T, skin.T)      annotation (
    Line(
    points={{-88,92},{-88,-81.2},{-53,-81.2}},
    color={0,127,0},
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-5,2},{-5,2}}));
    connect(busConnector.skeletalMuscle_T, skeletalMuscle.T)
    annotation (Line(
    points={{-88,92},{-87.5,92},{-87.5,68.8},{-53,68.8}},
    color={127,0,0},
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-5,2},{-5,2}}));

    connect(bone.pH_interstitial, busConnector.bone_pH_interstitial) annotation (Line(
    points={{-38,34},{6,34},{6,92},{-88,92}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(brain.pH_interstitial, busConnector.brain_pH_interstitial) annotation (Line(
    points={{68,26},{6,26},{6,92},{-88,92}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(fat.pH_interstitial, busConnector.fat_pH_interstitial) annotation (Line(
    points={{-38,-56},{6,-56},{6,92},{-88,92}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(GITract.pH_interstitial, busConnector.GITract_pH_interstitial) annotation (Line(
    points={{68,-4},{6,-4},{6,92},{-88,92}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(kidney.pH_interstitial, busConnector.kidney_pH_interstitial) annotation (Line(
    points={{68,-34},{6,-34},{6,92},{-88,92}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(leftHeart.pH_interstitial, busConnector.leftHeart_pH_interstitial) annotation (Line(
    points={{68,-64},{6,-64},{6,92},{-88,92}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(liver.pH_interstitial, busConnector.liver_pH_interstitial) annotation (Line(
    points={{68,58},{6,58},{6,92},{-88,92}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(otherTissue.pH_interstitial, busConnector.otherTissue_pH_interstitial) annotation (Line(
    points={{-38,4},{6,4},{6,92},{-88,92}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(rightHeart.pH_interstitial, busConnector.rightHeart_pH_interstitial) annotation (Line(
    points={{68,-94},{6,-94},{6,92},{-88,92}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(respiratoryMuscle.pH_interstitial, busConnector.respiratoryMuscle_pH_interstitial) annotation (Line(
    points={{-38,-26},{6,-26},{6,92},{-88,92}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(skin.pH_interstitial, busConnector.skin_pH_interstitial) annotation (Line(
    points={{-38,-86},{6,-86},{6,92},{-88,92}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(skeletalMuscle.pH_interstitial, busConnector.skeletalMuscle_pH_interstitial) annotation (Line(
    points={{-38,64},{6,64},{6,92},{-88,92}},
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
      extent={{-88,6},{-24,34}},
      lineColor={0,0,0},
      textString="IST"),
    Text(
      extent={{30,36},{96,-18}},
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
    <td>Siggaard Andersen: OSA (2005), University of Copenhagen</td>
    </tr>
    </table>
    <br/><p>Copyright &copy; 2014 Marek Matejak, Charles University in Prague.</p><br/>

    </html>"));
end Interstitia;
