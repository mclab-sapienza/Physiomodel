within Physiomodel.Electrolytes.AcidBase.Tissues.old;

model Tissues_cTH
    extends Physiolibrary.Icons.Tissues;
    Interstitium.SkeletalMuscleAcidity skeletalMuscle
    annotation (Placement(transformation(extent={{-54,66},{-34,86}})));

    Interstitium.BoneAcidity bone
    annotation (Placement(transformation(extent={{-54,36},{-34,56}})));

    Interstitium.FatAcidity fat annotation (Placement(transformation(
          extent={{-54,-54},{-34,-34}})));

    Interstitium.BrainAcidity brain
    annotation (Placement(transformation(extent={{52,22},{72,42}})));

    Interstitium.RightHeartAcidity rightHeart
    annotation (Placement(transformation(extent={{52,-98},{72,-78}})));

    Interstitium.RespiratoryMuscleAcidity respiratoryMuscle
    annotation (Placement(transformation(extent={{-54,-24},{-34,-4}})));

    Interstitium.OtherTissueAcidity otherTissue
    annotation (Placement(transformation(extent={{-54,6},{-34,26}})));

    Interstitium.LiverAcidity liver
    annotation (Placement(transformation(extent={{52,52},{72,72}})));

    Interstitium.LeftHeartAcidity leftHeart
    annotation (Placement(transformation(extent={{52,-68},{72,-48}})));

    Interstitium.KidneyAcidity kidney
    annotation (Placement(transformation(extent={{52,-38},{72,-18}})));

    Interstitium.GITractAcidity GITract
    annotation (Placement(transformation(extent={{52,-8},{72,12}})));

    Physiolibrary.Types.BusConnector busConnector annotation (Placement(
        transformation(extent={{-108,72},{-68,112}})));
    Interstitium.SkinAcidity skin annotation (Placement(transformation(
          extent={{-54,-84},{-34,-64}})));

    Physiolibrary.Chemical.Interfaces.ChemicalPort_b q_out annotation (
      Placement(transformation(extent={{82,80},{96,92}}),
        iconTransformation(extent={{-110,-6},{-90,14}})));
    Physiolibrary.Chemical.Interfaces.ChemicalPort_a q_in annotation (
      Placement(transformation(extent={{-98,66},{-84,78}}),
        iconTransformation(extent={{90,-10},{110,10}})));

    Physiolibrary.Types.MolarFlowRate cTHfromTissues;//(displayUnit="mEq/min");
equation
    cTHfromTissues = -( q_out.q + q_in.q);

    connect(bone.BloodFlow, busConnector.bone_BloodFlow)        annotation (
    Line(
    points={{-35,54},{6,54},{6,92},{-88,92}},
    color={0,127,0},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{5,2},{5,2}}));
    connect(brain.BloodFlow, busConnector.brain_BloodFlow)
    annotation (Line(
    points={{71,40},{98,40},{98,92},{-88,92}},
    color={0,127,0},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{5,2},{5,2}}));
    connect(fat.BloodFlow, busConnector.fat_BloodFlow)     annotation (
    Line(
    points={{-35,-36},{6,-36},{6,92},{-88,92}},
    color={0,127,0},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{5,2},{5,2}}));
    connect(GITract.BloodFlow, busConnector.GITract_BloodFlow)
    annotation (Line(
    points={{71,10},{98,10},{98,92},{-88,92}},
    color={0,127,0},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{5,2},{5,2}}));
    connect(kidney.BloodFlow, busConnector.kidney_BloodFlow)
    annotation (Line(
    points={{71,-20},{98,-20},{98,92},{-88,92}},
    color={0,127,0},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{5,2},{5,2}}));
    connect(leftHeart.BloodFlow, busConnector.leftHeart_BloodFlow)
    annotation (Line(
    points={{71,-50},{98,-50},{98,92},{-88,92}},
    color={0,127,0},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{5,2},{5,2}}));
    connect(liver.BloodFlow, busConnector.Liver_BloodFlow)
    annotation (Line(
    points={{71,70},{98,70},{98,92},{-88,92}},
    color={0,127,0},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{5,2},{5,2}}));
    connect(otherTissue.BloodFlow, busConnector.otherTissue_BloodFlow)
    annotation (Line(
    points={{-35,24},{6,24},{6,92},{-88,92}},
    color={0,127,0},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{5,2},{5,2}}));
    connect(respiratoryMuscle.BloodFlow, busConnector.respiratoryMuscle_BloodFlow)
    annotation (Line(
    points={{-35,-6},{6,-6},{6,92},{-88,92}},
    color={0,127,0},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{5,2},{5,2}}));
    connect(rightHeart.BloodFlow, busConnector.rightHeart_BloodFlow)
    annotation (Line(
    points={{71,-80},{98,-80},{98,92},{-88,92}},
    color={0,127,0},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{5,2},{5,2}}));
    connect(skin.BloodFlow, busConnector.skin_BloodFlow)     annotation (
    Line(
    points={{-35,-66},{6,-66},{6,92},{-88,92}},
    color={0,127,0},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{5,2},{5,2}}));
    connect(skeletalMuscle.BloodFlow, busConnector.skeletalMuscle_BloodFlow)
    annotation (Line(
    points={{-35,84},{5.5,84},{5.5,92},{-88,92}},
    color={127,0,0},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{5,2},{5,2}}));

    connect(bone.LactateFromMetabolism, busConnector.bone_LactateFromMetabolism)        annotation (
    Line(
    points={{-35,40},{6,40},{6,92},{-88,92}},
    color={0,127,0},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{5,2},{5,2}}));
    connect(brain.LactateFromMetabolism, busConnector.brain_LactateFromMetabolism)
    annotation (Line(
    points={{71,26},{98,26},{98,92},{-88,92}},
    color={0,127,0},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{5,2},{5,2}}));
    connect(fat.LactateFromMetabolism, busConnector.fat_LactateFromMetabolism)     annotation (
    Line(
    points={{-35,-50},{6,-50},{6,92},{-88,92}},
    color={0,127,0},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{5,2},{5,2}}));
    connect(GITract.LactateFromMetabolism, busConnector.GITract_LactateFromMetabolism)
    annotation (Line(
    points={{71,-4},{98,-4},{98,92},{-88,92}},
    color={0,127,0},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{5,2},{5,2}}));
    connect(kidney.LactateFromMetabolism, busConnector.kidney_LactateFromMetabolism)
    annotation (Line(
    points={{71,-34},{98,-34},{98,92},{-88,92}},
    color={0,127,0},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{5,2},{5,2}}));
    connect(leftHeart.LactateFromMetabolism, busConnector.leftHeart_LactateFromMetabolism)
    annotation (Line(
    points={{71,-64},{98,-64},{98,92},{-88,92}},
    color={0,127,0},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{5,2},{5,2}}));
    connect(liver.LactateFromMetabolism, busConnector.liver_LactateFromMetabolism)
    annotation (Line(
    points={{71,56},{98,56},{98,92},{-88,92}},
    color={0,127,0},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{5,2},{5,2}}));
    connect(otherTissue.LactateFromMetabolism, busConnector.otherTissue_LactateFromMetabolism)
    annotation (Line(
    points={{-35,10},{6,10},{6,92},{-88,92}},
    color={0,127,0},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{5,2},{5,2}}));
    connect(respiratoryMuscle.LactateFromMetabolism, busConnector.respiratoryMuscle_LactateFromMetabolism)
    annotation (Line(
    points={{-35,-20},{6,-20},{6,92},{-88,92}},
    color={0,127,0},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{5,2},{5,2}}));
    connect(rightHeart.LactateFromMetabolism, busConnector.rightHeart_LactateFromMetabolism)
    annotation (Line(
    points={{71,-94},{98,-94},{98,92},{-88,92}},
    color={0,127,0},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{5,2},{5,2}}));
    connect(skin.LactateFromMetabolism, busConnector.skin_LactateFromMetabolism)     annotation (
    Line(
    points={{-35,-80},{6,-80},{6,92},{-88,92}},
    color={0,127,0},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{5,2},{5,2}}));
    connect(skeletalMuscle.LactateFromMetabolism, busConnector.skeletalMuscle_LactateFromMetabolism)
    annotation (Line(
    points={{-35,70},{5.5,70},{5.5,92},{-88,92}},
    color={127,0,0},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{5,2},{5,2}}));

    connect(bone.InterstitialWater, busConnector.bone_InterstitialWater)        annotation (
    Line(
    points={{-35,50},{6,50},{6,92},{-88,92}},
    color={0,127,0},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{5,2},{5,2}}));
    connect(brain.InterstitialWater, busConnector.brain_InterstitialWater)
    annotation (Line(
    points={{71,36},{98,36},{98,92},{-88,92}},
    color={0,127,0},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{5,2},{5,2}}));
    connect(fat.InterstitialWater, busConnector.fat_InterstitialWater)     annotation (
    Line(
    points={{-35,-40},{6,-40},{6,92},{-88,92}},
    color={0,127,0},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{5,2},{5,2}}));
    connect(GITract.InterstitialWater, busConnector.GITract_InterstitialWater)
    annotation (Line(
    points={{71,6},{98,6},{98,92},{-88,92}},
    color={0,127,0},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{5,2},{5,2}}));
    connect(kidney.InterstitialWater, busConnector.kidney_InterstitialWater)
    annotation (Line(
    points={{71,-24},{98,-24},{98,92},{-88,92}},
    color={0,127,0},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{5,2},{5,2}}));
    connect(leftHeart.InterstitialWater, busConnector.leftHeart_InterstitialWater)
    annotation (Line(
    points={{71,-54},{98,-54},{98,92},{-88,92}},
    color={0,127,0},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{5,2},{5,2}}));
    connect(liver.InterstitialWater, busConnector.liver_InterstitialWater)
    annotation (Line(
    points={{71,66},{98,66},{98,92},{-88,92}},
    color={0,127,0},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{5,2},{5,2}}));
    connect(otherTissue.InterstitialWater, busConnector.otherTissue_InterstitialWater)
    annotation (Line(
    points={{-35,20},{6,20},{6,92},{-88,92}},
    color={0,127,0},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{5,2},{5,2}}));
    connect(respiratoryMuscle.InterstitialWater, busConnector.respiratoryMuscle_InterstitialWater)
    annotation (Line(
    points={{-35,-10},{6,-10},{6,92},{-88,92}},
    color={0,127,0},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{5,2},{5,2}}));
    connect(rightHeart.InterstitialWater, busConnector.rightHeart_InterstitialWater)
    annotation (Line(
    points={{71,-84},{98,-84},{98,92},{-88,92}},
    color={0,127,0},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{5,2},{5,2}}));
    connect(skin.InterstitialWater, busConnector.skin_InterstitialWater)     annotation (
    Line(
    points={{-35,-70},{6,-70},{6,92},{-88,92}},
    color={0,127,0},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{5,2},{5,2}}));
    connect(skeletalMuscle.InterstitialWater, busConnector.skeletalMuscle_InterstitialWater)
    annotation (Line(
    points={{-35,80},{5.5,80},{5.5,92},{-88,92}},
    color={127,0,0},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{5,2},{5,2}}));

    connect(bone.cTH, busConnector.bone_cTH_interstitial) annotation (Line(
    points={{-42,34},{6,34},{6,92},{-88,92}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(brain.cTH, busConnector.brain_cTH_interstitial) annotation (Line(
    points={{64,20},{6,20},{6,92},{-88,92}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(fat.cTH, busConnector.fat_cTH_interstitial) annotation (Line(
    points={{-42,-56},{6,-56},{6,92},{-88,92}},
    color={0,0,127},
    smooth=Smooth.None));
     connect(GITract.cTH, busConnector.GITract_cTH_interstitial) annotation (Line(
    points={{64,-10},{6,-10},{6,92},{-88,92}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(kidney.cTH, busConnector.kidney_cTH_interstitial) annotation (Line(
    points={{64,-40},{6,-40},{6,92},{-88,92}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(leftHeart.cTH, busConnector.leftHeart_cTH_interstitial) annotation (Line(
    points={{64,-70},{6,-70},{6,92},{-88,92}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(otherTissue.cTH, busConnector.otherTissue_cTH_interstitial) annotation (Line(
    points={{-42,4},{6,4},{6,92},{-88,92}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(rightHeart.cTH, busConnector.rightHeart_cTH_interstitial) annotation (Line(
    points={{64,-100},{6,-100},{6,92},{-88,92}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(respiratoryMuscle.cTH, busConnector.respiratoryMuscle_cTH_interstitial) annotation (Line(
    points={{-42,-26},{6,-26},{6,92},{-88,92}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(skin.cTH, busConnector.skin_cTH_interstitial) annotation (Line(
    points={{-42,-86},{6,-86},{6,92},{-88,92}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(skeletalMuscle.cTH, busConnector.skeletalMuscle_cTH_interstitial) annotation (Line(
    points={{-42,64},{6,64},{6,92},{-88,92}},
    color={0,0,127},
    smooth=Smooth.None));

    connect(skeletalMuscle.q_out, q_out) annotation (Line(
    points={{-34,76},{89,76},{89,86}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(q_out, liver.q_out) annotation (Line(
    points={{89,86},{89,62},{72,62}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(bone.q_out, q_out) annotation (Line(
    points={{-34,46},{89,46},{89,86}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(q_out, brain.q_out) annotation (Line(
    points={{89,86},{89,32},{72,32}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(q_out, GITract.q_out) annotation (Line(
    points={{89,86},{89,2},{72,2}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(q_out, otherTissue.q_out) annotation (Line(
    points={{89,86},{89,16},{-34,16}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(q_out, kidney.q_out) annotation (Line(
    points={{89,86},{89,-28},{72,-28}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(q_out, respiratoryMuscle.q_out) annotation (Line(
    points={{89,86},{89,-14},{-34,-14}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(q_out, leftHeart.q_out) annotation (Line(
    points={{89,86},{89,-58},{72,-58}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(q_out, fat.q_out) annotation (Line(
    points={{89,86},{89,-44},{-34,-44}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(q_out, skin.q_out) annotation (Line(
    points={{89,86},{89,-74},{-34,-74}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(q_out, rightHeart.q_out) annotation (Line(
    points={{89,86},{89,-88},{72,-88}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));

    connect(skeletalMuscle.q_in, q_in) annotation (Line(
    points={{-54,76},{-91,76},{-91,72}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(q_in, liver.q_in) annotation (Line(
    points={{-91,72},{-91,62},{52,62}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(bone.q_in, q_in) annotation (Line(
    points={{-54,46},{-91,46},{-91,72}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(q_in, brain.q_in) annotation (Line(
    points={{-91,72},{-91,32},{52,32}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(q_in, GITract.q_in) annotation (Line(
    points={{-91,72},{-91,2},{52,2}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(q_in, otherTissue.q_in) annotation (Line(
    points={{-91,72},{-91,16},{-54,16}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(q_in, kidney.q_in) annotation (Line(
    points={{-91,72},{-91,-28},{52,-28}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(q_in, respiratoryMuscle.q_in) annotation (Line(
    points={{-91,72},{-91,-14},{-54,-14}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(q_in, leftHeart.q_in) annotation (Line(
    points={{-91,72},{-91,-58},{52,-58}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(q_in, fat.q_in) annotation (Line(
    points={{-91,72},{-91,-44},{-54,-44}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(q_in, skin.q_in) annotation (Line(
    points={{-91,72},{-91,-74},{-54,-74}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(q_in, rightHeart.q_in) annotation (Line(
    points={{-91,72},{-91,-88},{52,-88}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(liver.cTH, busConnector.liver_cTH_interstitial) annotation (
    Line(
    points={{64,50},{6,50},{6,92},{-88,92}},
    color={0,0,127},
    smooth=Smooth.None));
    annotation (Icon(coordinateSystem(preserveAspectRatio=true, extent={{-100,
          -100},{100,100}}), graphics={Rectangle(extent={{-100,100},{
            100,-100}}, lineColor={0,0,0}), Text(
        extent={{-118,-104},{130,-130}},
        lineColor={0,0,127},
        textString="%name")}),
    Documentation(info="<html>
    <p>cTH_interstitial is base excess in the interstitium of the tissue. The standard value is 0, when strong acid concentration increase, then  value decrease with the same concentration. </p>
    <p>Meaning might  interpreted like what amount of hydrogen iont must  added to sollution if the end poit of titration will  pH=7.4 and pCO2=5.3kPa.</p>
    <p>For any tissue can  simplified with difference of lactate concentration from its normal value.</p>
    </html>",           revisions="<html>

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
    <tr>
    <td></td>
    <td><p>Tom Coleman: QHP 2008 beta 3, University of Mississippi Medical Center</p></td>
    </tr>
    </table>
    <br/><p>Copyright &copy; 2014 Marek Matejak, Charles University in Prague.</p><br/>

    </html>"));
end Tissues_cTH;