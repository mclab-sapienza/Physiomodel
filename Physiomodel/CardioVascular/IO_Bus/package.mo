within Physiomodel.CardioVascular;
package IO_Bus
     extends Physiolibrary.Types.IO_Bus;
     redeclare model extends Variables
    T.Volume ArtysVol(varName="ArtysVol.Vol")
    "Volume of oxygenated blood in body."
    annotation (Placement(transformation(extent={{-36,10},{-30,16}})));
    T.Fraction BloodVol_Hct(varName="BloodVol.Hct")
    "Heamatocrit = red cells / blood."
    annotation (Placement(transformation(extent={{-36,20},{-30,26}})));
    T.Fraction BloodVol_PVCrit(varName="BloodVol.PVCrit")
    "Plasma volume fraction = plasma / blood."
    annotation (Placement(transformation(extent={{-36,30},{-30,36}})));
    T.VolumeFlowRate bone_BloodFlow(varName="Bone-Flow.BloodFlow")
    "Bone blood flow."
    annotation (Placement(transformation(extent={{-36,50},{-30,56}})));
    T.VolumeFlowRate brain_BloodFlow(varName="Brain-Flow.BloodFlow")
    "Brain blood flow."
    annotation (Placement(transformation(extent={{-36,70},{-30,76}})));
    T.VolumeFlowRate CardiacOutput(varName="CardiacOutput.Flow")
    "Cardiac output."
    annotation (Placement(transformation(extent={{-36,80},{-30,86}})));
    T.Pressure CarotidSinusArteryPressure(varName="CarotidSinus.Pressure")
    "Mean blood pressure in carotid sinus artery."
    annotation (Placement(transformation(extent={{-36,90},{-30,96}})));
    T.VolumeFlowRate fat_BloodFlow(varName="Fat-Flow.BloodFlow")
    "Fat blood flow."
    annotation (Placement(transformation(extent={{-36,110},{-30,116}})));
    T.VolumeFlowRate GITract_BloodFlow(varName="GITract-Flow.BloodFlow")
    "GITract blood flow."
    annotation (Placement(transformation(extent={{-36,120},{-30,126}})));
    T.Pressure GlomerulusBloodPressure(varName="GlomerulusFiltrate.Pressure")
    "Blood pressure in glomerulus capilaries."
    annotation (Placement(transformation(extent={{-36,130},{-30,136}})));
    T.VolumeFlowRate HepaticArty_BloodFlow(varName="HepaticArty.Flow")
    "Hepatic artery blood flow."
    annotation (Placement(transformation(extent={{-36,140},{-30,146}})));
    T.VolumeFlowRate kidney_BloodFlow(varName="Kidney-Flow.BloodFlow")
    "Kidney blood flow."
    annotation (Placement(transformation(extent={{-36,160},{-30,166}})));
    //Variable LeftAtrium_TMP(varName="LeftAtrium.TMP")
    //    "Left atrium pressure gradient between inside and pericardium."
    //annotation (Placement(transformation(extent={{-36,180},{-30,186}})));
    T.VolumeFlowRate leftHeart_BloodFlow(varName="LeftHeart-Flow.BloodFlow")
    "LeftHeart blood flow."
    annotation (Placement(transformation(extent={{-36,210},{-30,216}})));
    T.VolumeFlowRate AlveolarVentilated_BloodFlow(varName="LungBloodFlow.AlveolarVentilated")
    "Blood flow through ventilated alveoli."
    annotation (Placement(transformation(extent={{-36,220},{-30,226}})));
    T.VolumeFlowRate otherTissue_BloodFlow(varName="OtherTissue-Flow.BloodFlow")
    "OtherTissue blood flow."
    annotation (Placement(transformation(extent={{-36,240},{-30,246}})));
    T.VolumeFlowRate PortalVein_BloodFlow(varName="PortalVein.BloodFlow")
    "Portal vein blood flow."
    annotation (Placement(transformation(extent={{-36,250},{-30,256}})));
    T.VolumeFlowRate PortalVein_PlasmaFlow(varName="PortalVein.PlasmaFlow")
    "Portal vein plasma flow."
    annotation (Placement(transformation(extent={{-36,260},{-30,266}})));
    T.Pressure PulmCapys_Pressure(varName="PulmCapys.Pressure")
    "Blood pressure in pulmonary capylaries."
    annotation (Placement(transformation(extent={{-36,270},{-30,276}})));
    T.Volume RBCH2O_Vol(varName="RBCH2O.Vol")
    "Intracellular water in erythrocytes."
    annotation (Placement(transformation(extent={{-36,280},{-30,286}})));
    T.VolumeFlowRate respiratoryMuscle_BloodFlow(varName="RespiratoryMuscle-Flow.BloodFlow")
    "RespiratoryMuscle blood flow."
    annotation (Placement(transformation(extent={{-36,300},{-30,306}})));
    T.Pressure RightAtrium_Pressure(varName="RightAtrium.Pressure")
    "Blood pressure in right atrium."
    annotation (Placement(transformation(extent={{-36,310},{-30,316}})));
    //Variable RightAtrium_TMP(varName="RightAtrium.TMP")
    //    "Right atrium pressure gradient between inside and pericardium."
    //annotation (Placement(transformation(extent={{-36,320},{-30,326}})));
    T.VolumeFlowRate rightHeart_BloodFlow(varName="RightHeart-Flow.BloodFlow")
    "RightHeart blood flow."
    annotation (Placement(transformation(extent={{-36,350},{-30,356}})));
    T.VolumeFlowRate skeletalMuscle_BloodFlow(varName="SkeletalMuscle-Flow.BloodFlow")
    "SkeletalMuscle blood flow."
    annotation (Placement(transformation(extent={{-36,370},{-30,376}})));
    T.VolumeFlowRate skin_BloodFlow(varName="Skin-Flow.BloodFlow")
    "Skin blood flow."
    annotation (Placement(transformation(extent={{-36,390},{-30,396}})));
    T.Pressure SplanchnicVeins_Pressure(varName="SplanchnicVeins.Pressure")
    "Splanchnic (=portal vein) veins blood pressure."
    annotation (Placement(transformation(extent={{-36,400},{-30,406}})));
    T.Volume SplanchnicCirculation_DeoxygenatedBloodVolume(                          varName="SplanchnicVeins.Vol")
    "Splanchnic (=portal vein and venules) veins blood volume."
    annotation (Placement(transformation(extent={{-36,410},{-30,416}})));
    T.Pressure SystemicArtys_Pressure(varName="SystemicArtys.Pressure")
    "Mean systemic arteries blood pressure."
    annotation (Placement(transformation(extent={{-36,420},{-30,426}})));
    T.VolumeFlowRate VasaRecta_Outflow(varName="VasaRecta.Outflow")
    "Kidney vasa recta blood outflow to kidney veins."
    annotation (Placement(transformation(extent={{-36,430},{-30,436}})));
    T.Volume VeinsVol(varName="VeinsVol.Vol")
    "Volume of deoxygenated blood in body."
    annotation (Placement(transformation(extent={{-36,440},{-30,446}})));
    T.Concentration ctHb(varName="ctHb") "Hemoglobin concentration in blood."
    annotation (Placement(transformation(extent={{-36,450},{-30,456}})));
    T.Concentration ctHb_ery(varName="ctHb_ery")
    "Hemoglobin concentration in erythrocytes."
    annotation (Placement(transformation(extent={{-36,460},{-30,466}})));
    T.Pressure NephronIFP_Pressure(varName=
          "NephronIFP.Pressure") "Renal interstitial pressure."
    annotation (Placement(transformation(extent={{-34,-10},{-28,-4}})));
    T.VolumeFlowRate Liver_BloodFlow(varName=
          "Liver-O2.BloodFlow") "Liver blood flow."
    annotation (Placement(transformation(extent={{-30,-26},{-24,-20}})));
    T.Concentration cDPG(varName="cDPG") "2,3-DPG concentration"
    annotation (Placement(transformation(extent={{18,-84},{24,-78}})));
    T.Fraction FMetHb(varName="FMetHb")
    "Fraction of methemoglobin with Fe^3+ instead of Fe^2+"
    annotation (Placement(transformation(extent={{18,-74},{24,-68}})));
    T.Fraction FHbF(varName="FHbF") "Fraction of foetal hemoglobin"
    annotation (Placement(transformation(extent={{18,-64},{24,-58}})));
    T.Pressure SystemicVeins_Pressure(varName="SystemicVeins.Pressure")
    "Systemic veins pressure."
    annotation (Placement(transformation(extent={{-36,-40},{-30,-34}})));
    T.HydraulicConductance
             skin_conductanceWithoutTermoregulationEffect(varName=
          "skin_conductanceWithoutTermoregulationEffect")
    "Skin conductance without termoregulation effect."
    annotation (Placement(transformation(extent={{-34,-54},{-28,-48}})));
    T.Concentration ANPPool_ANP(varName="ANPPool.[ANP]", storeUnit="pmol/l",
    y(nominal=1e-8)) "Atrial natriuretic peptide concentration."
      annotation (Placement(transformation(extent={{-82,-78},{-76,-72}})));
    T.Volume BloodVol_Vol(varName="BloodVol.Vol") "Blood volume"
    annotation (Placement(transformation(extent={{-84,4},{-78,10}})));
    T.Fraction AtrialLowPressureReceptors_NA(varName="LowPressureReceptors.NA")
    "Atrial Low Pressure Receptors neural activity."
      annotation (Placement(transformation(extent={{-84,-90},{-78,-84}})));
equation
    connect(ArtysVol.y, busConnector.ArtysVol) annotation (Line(
    points={{-29.7,13},{90,13},{90,-2}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(BloodVol_Hct.y, busConnector.BloodVol_Hct) annotation (Line(
    points={{-29.7,23},{90,23},{90,-2}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(BloodVol_PVCrit.y, busConnector.BloodVol_PVCrit) annotation (Line(
    points={{-29.7,33},{90,33},{90,-2}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(bone_BloodFlow.y, busConnector.bone_BloodFlow) annotation (Line(
    points={{-29.7,53},{90,53},{90,-2}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(brain_BloodFlow.y, busConnector.brain_BloodFlow) annotation (Line(
    points={{-29.7,73},{90,73},{90,-2}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(CardiacOutput.y, busConnector.CardiacOutput) annotation (Line(
    points={{-29.7,83},{90,83},{90,-2}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(CarotidSinusArteryPressure.y, busConnector.CarotidSinusArteryPressure) annotation (Line(
    points={{-29.7,93},{90,93},{90,-2}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(fat_BloodFlow.y, busConnector.fat_BloodFlow) annotation (Line(
    points={{-29.7,113},{90,113},{90,-2}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(GITract_BloodFlow.y, busConnector.GITract_BloodFlow) annotation (Line(
    points={{-29.7,123},{90,123},{90,-2}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(GlomerulusBloodPressure.y, busConnector.GlomerulusBloodPressure) annotation (Line(
    points={{-29.7,133},{90,133},{90,-2}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(HepaticArty_BloodFlow.y, busConnector.HepaticArty_BloodFlow) annotation (Line(
    points={{-29.7,143},{90,143},{90,-2}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(kidney_BloodFlow.y, busConnector.kidney_BloodFlow) annotation (Line(
    points={{-29.7,163},{90,163},{90,-2}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(KidneyPlasmaFlow.y, busConnector.KidneyPlasmaFlow) annotation (Line(
    points={{-29.7,173},{90,173},{90,-2}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(leftHeart_BloodFlow.y, busConnector.leftHeart_BloodFlow) annotation (Line(
    points={{-29.7,213},{90,213},{90,-2}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(AlveolarVentilated_BloodFlow.y, busConnector.AlveolarVentilated_BloodFlow) annotation (Line(
    points={{-29.7,223},{90,223},{90,-2}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(otherTissue_BloodFlow.y, busConnector.otherTissue_BloodFlow) annotation (Line(
    points={{-29.7,243},{90,243},{90,-2}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(PortalVein_BloodFlow.y, busConnector.PortalVein_BloodFlow) annotation (Line(
    points={{-29.7,253},{90,253},{90,-2}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(PortalVein_PlasmaFlow.y, busConnector.PortalVein_PlasmaFlow) annotation (Line(
    points={{-29.7,263},{90,263},{90,-2}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(PulmCapys_Pressure.y, busConnector.PulmCapys_Pressure) annotation (Line(
    points={{-29.7,273},{90,273},{90,-2}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(RBCH2O_Vol.y, busConnector.RBCH2O_Vol) annotation (Line(
    points={{-29.7,283},{90,283},{90,-2}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(respiratoryMuscle_BloodFlow.y, busConnector.respiratoryMuscle_BloodFlow) annotation (Line(
    points={{-29.7,303},{90,303},{90,-2}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(RightAtrium_Pressure.y, busConnector.RightAtrium_Pressure) annotation (Line(
    points={{-29.7,313},{90,313},{90,-2}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(rightHeart_BloodFlow.y, busConnector.rightHeart_BloodFlow) annotation (Line(
    points={{-29.7,353},{90,353},{90,-2}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(skeletalMuscle_BloodFlow.y, busConnector.skeletalMuscle_BloodFlow) annotation (Line(
    points={{-29.7,373},{90,373},{90,-2}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(skin_BloodFlow.y, busConnector.skin_BloodFlow) annotation (Line(
    points={{-29.7,393},{90,393},{90,-2}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(SplanchnicVeins_Pressure.y, busConnector.SplanchnicVeins_Pressure) annotation (Line(
    points={{-29.7,403},{90,403},{90,-2}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(SplanchnicCirculation_DeoxygenatedBloodVolume.y, busConnector.SplanchnicCirculation_DeoxygenatedBloodVolume) annotation (Line(
    points={{-29.7,413},{90,413},{90,-2}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(SystemicArtys_Pressure.y, busConnector.SystemicArtys_Pressure) annotation (Line(
    points={{-29.7,423},{90,423},{90,-2}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(VasaRecta_Outflow.y, busConnector.VasaRecta_Outflow) annotation (Line(
    points={{-29.7,433},{90,433},{90,-2}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(VeinsVol.y, busConnector.VeinsVol) annotation (Line(
    points={{-29.7,443},{90,443},{90,-2}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(ctHb.y, busConnector.ctHb) annotation (Line(
    points={{-29.7,453},{90,453},{90,-2}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(ctHb_ery.y, busConnector.ctHb_ery) annotation (Line(
    points={{-29.7,463},{90,463},{90,-2}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(NephronIFP_Pressure.y, busConnector.NephronIFP_Pressure)
    annotation (Line(
    points={{-27.7,-7},{90,-2}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));

    connect(Liver_BloodFlow.y, busConnector.Liver_BloodFlow) annotation (Line(
    points={{-23.7,-23},{90,-23},{90,-2}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(FHbF.y,busConnector. FHbF) annotation (Line(
    points={{24.3,-61},{78,-61},{78,-2},{90,-2}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(FMetHb.y,busConnector. FMetHb) annotation (Line(
    points={{24.3,-71},{90,-71},{90,-2}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(cDPG.y,busConnector. cDPG) annotation (Line(
    points={{24.3,-81},{90,-81},{90,-2}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(SystemicVeins_Pressure.y, busConnector.SystemicVeins_Pressure)
    annotation (Line(
    points={{-29.7,-37},{90,-37},{90,-2}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(skin_conductanceWithoutTermoregulationEffect.y, busConnector.skin_conductanceWithoutTermoregulationEffect)
    annotation (Line(
    points={{-27.7,-51},{90,-51},{90,-2}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(BloodVol_Vol.y, busConnector.BloodVolume) annotation (Line(
    points={{-77.7,7},{0.15,7},{0.15,-2},{90,-2}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(ANPPool_ANP.y, busConnector.ANP) annotation (Line(
    points={{-75.7,-75},{90,-75},{90,-2}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(AtrialLowPressureReceptors_NA.y, busConnector.AtrialLowPressureReceptors_NA)
    annotation (Line(
    points={{-77.7,-87},{90,-87},{90,-2}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
        annotation (Icon(coordinateSystem(preserveAspectRatio=true, extent={{-100,
                  -100},{100,100}},
                lineColor={0,0,0},
                textString="const"), graphics={Text(
                extent={{6,126},{100,90}},
                lineColor={0,0,0},
        textString="vars"), Text(
        extent={{-126,-98},{116,-132}},
        lineColor={0,0,255},
        textString="%name")}));
end Variables;

end IO_Bus;
