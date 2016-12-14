within Physiomodel.CardioVascular.Circulation;
model PeripheralCirculation
    import QHP = Physiomodel;
    extends Physiomodel.CardioVascular.Microcirculation.Interfaces.BaseDO;
    extends Physiolibrary.Icons.PeripheralCirculation;

    QHP.CardioVascular.Microcirculation.TissueBloodFlow bone(Cond= 4.536109889163e-10)
      annotation (Placement(transformation(extent={{-38,62},{-12,88}})));
    QHP.CardioVascular.Microcirculation.TissueBloodFlow brain(
        onAnesthesia=false,
        onAngiotensinII=false,
        onVasopressin=false,
        onCatecholamines=false,
        onOxygenAndCarbonDioxide=true,
          VasculatureConductanceOnPO2={{27,1.2,0},{37,1.0,-0.03},{47,0.8,0}},
          onOxygenOnly=false,
        Cond=1.1375933900326e-09)
      annotation (Placement(transformation(extent={{12,44},{38,70}})));
    QHP.CardioVascular.Microcirculation.TissueBloodFlow fat(Cond= 3.3752770913055e-10)
      annotation (Placement(transformation(extent={{-38,26},{-12,52}})));
    Physiomodel.CardioVascular.Microcirculation.Kidney kidney
      annotation (Placement(transformation(extent={{18,8},{44,34}})));
    Physiomodel.CardioVascular.Microcirculation.Skin skin
      annotation (Placement(transformation(extent={{22,-34},{46,-10}})));
    QHP.CardioVascular.Microcirculation.TissueBloodFlow     otherTissue(Cond=
        5.2504310309196e-10)
      annotation (Placement(transformation(extent={{-36,-98},{-10,-72}})));
    QHP.CardioVascular.Microcirculation.TissueBloodFlow        skeletalMuscle(
        Cond=9.0007389101479e-10,
        onOxygenNeed=true,
        onExercise=true)
          annotation (Placement(transformation(extent={{-34,-54},{-8,-28}})));
    QHP.CardioVascular.Microcirculation.TissueBloodFlow
      respiratoryMuscle(Cond=1.3751128890504e-10, onOxygenNeed=true)
      annotation (Placement(transformation(extent={{20,-78},{46,-52}})));
    Physiolibrary.Types.BusConnector busConnector
    "signals of organ bood flow resistence" annotation (Placement(
        transformation(extent={{-100,80},{-80,100}}), iconTransformation(
          extent={{60,10},{78,28}})));
    Physiolibrary.Types.TissueBusConnector boneConnector;
    Physiolibrary.Types.TissueBusConnector brainConnector;
    Physiolibrary.Types.TissueBusConnector fatConnector;
    Physiolibrary.Types.TissueBusConnector otherTissueConnector;
    Physiolibrary.Types.TissueBusConnector skeletalMuscleConnector;
    Physiolibrary.Types.TissueBusConnector respiratoryMuscleConnector;
    
equation
    connect(boneConnector.pO2, busConnector.bone_pO2);
    connect(boneConnector.O2Need, busConnector.bone_O2Need);
    connect(boneConnector.pCO2, busConnector.bone_pCO2);
    connect(boneConnector.Function_Failed, busConnector.bone_Function_Failed);
    connect(brainConnector.pO2, busConnector.brain_pO2);
    connect(brainConnector.O2Need, busConnector.brain_O2Need);
    connect(brainConnector.pCO2, busConnector.brain_pCO2);
    connect(brainConnector.Function_Failed, busConnector.brain_Function_Failed);
    connect(fatConnector.pO2, busConnector.fat_pO2);
    connect(fatConnector.O2Need, busConnector.fat_O2Need);
    connect(fatConnector.pCO2, busConnector.fat_pCO2);
    connect(fatConnector.Function_Failed, busConnector.fat_Function_Failed);
    connect(otherTissueConnector.pO2, busConnector.otherTissue_pO2);
    connect(otherTissueConnector.O2Need, busConnector.otherTissue_O2Need);
    connect(otherTissueConnector.pCO2, busConnector.otherTissue_pCO2);
    connect(otherTissueConnector.Function_Failed, busConnector.otherTissue_Function_Failed);
    connect(skeletalMuscleConnector.pO2, busConnector.skeletalMuscle_pO2);
    connect(skeletalMuscleConnector.O2Need, busConnector.skeletalMuscle_O2Need);
    connect(skeletalMuscleConnector.pCO2, busConnector.skeletalMuscle_pCO2);
    connect(skeletalMuscleConnector.Function_Failed, busConnector.skeletalMuscle_Function_Failed);
    connect(respiratoryMuscleConnector.pO2, busConnector.respiratoryMuscle_pO2);
    connect(respiratoryMuscleConnector.O2Need, busConnector.respiratoryMuscle_O2Need);
    connect(respiratoryMuscleConnector.pCO2, busConnector.respiratoryMuscle_pCO2);
    connect(respiratoryMuscleConnector.Function_Failed, busConnector.respiratoryMuscle_Function_Failed);
    connect(bone.q_in, flowMeasure.q_out) annotation (Line(
        points={{-12,75},{68,75},{68,0},{78,0}},
        color={0,0,0},
        smooth=Smooth.None,
        thickness=1));
    connect(brain.q_in, flowMeasure.q_out) annotation (Line(
        points={{38,57},{68,57},{68,0},{78,0}},
        color={0,0,0},
        smooth=Smooth.None,
        thickness=1));
    connect(fat.q_in, flowMeasure.q_out) annotation (Line(
        points={{-12,39},{68,39},{68,0},{78,0}},
        color={0,0,0},
        smooth=Smooth.None,
        thickness=1));
    connect(skin.q_in, flowMeasure.q_out) annotation (Line(
        points={{46,-22},{68,-22},{68,0},{78,0}},
        color={0,0,0},
        smooth=Smooth.None,
        thickness=1));
    connect(otherTissue.q_in, flowMeasure.q_out)  annotation (Line(
        points={{-10,-85},{68,-85},{68,0},{78,0}},
        color={0,0,0},
        smooth=Smooth.None,
        thickness=1));
    connect(skeletalMuscle.q_in, flowMeasure.q_out)  annotation (Line(
        points={{-8,-41},{68,-41},{68,0},{78,0}},
        color={0,0,0},
        smooth=Smooth.None,
        thickness=1));
    connect(respiratoryMuscle.q_in, flowMeasure.q_out) annotation (Line(
        points={{46,-65},{68,-65},{68,0},{78,0}},
        color={0,0,0},
        smooth=Smooth.None,
        thickness=1));
    connect(respiratoryMuscle.q_out,q_out) annotation (Line(
        points={{20,-65},{-84,-65},{-84,0},{-100,0}},
        color={0,0,0},
        smooth=Smooth.None,
        thickness=1));
    connect(skeletalMuscle.q_out,q_out)  annotation (Line(
        points={{-34,-41},{-84,-41},{-84,0},{-100,0}},
        color={0,0,0},
        smooth=Smooth.None,
        thickness=1));
    connect(otherTissue.q_out,q_out)  annotation (Line(
        points={{-36,-85},{-84,-85},{-84,0},{-100,0}},
        color={0,0,0},
        smooth=Smooth.None,
        thickness=1));
    connect(skin.q_out,q_out) annotation (Line(
        points={{22,-22},{-84,-22},{-84,0},{-100,0}},
        color={0,0,0},
        smooth=Smooth.None,
        thickness=1));
    connect(fat.q_out,q_out) annotation (Line(
        points={{-38,39},{-84,39},{-84,0},{-100,0}},
        color={0,0,0},
        smooth=Smooth.None,
        thickness=1));
    connect(brain.q_out,q_out) annotation (Line(
        points={{12,57},{-84,57},{-84,0},{-100,0}},
        color={0,0,0},
        smooth=Smooth.None,
        thickness=1));
    connect(bone.q_out,q_out) annotation (Line(
        points={{-38,75},{-84,75},{-84,0},{-100,0}},
        color={0,0,0},
        smooth=Smooth.None,
        thickness=1));
    connect(busConnector, otherTissue.busConnector)  annotation (Line(
        points={{-90,90},{52,90},{52,-77.2},{-12.6,-77.2}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None));
    connect(busConnector, skin.busConnector) annotation (Line(
        points={{-90,90},{52,90},{52,-19.72},{42.28,-19.72}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None));
    connect(busConnector, kidney.busConnector) annotation (Line(
        points={{-90,90},{52,90},{52,23.47},{39.97,23.47}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None));
    connect(busConnector, fat.busConnector) annotation (Line(
        points={{-90,90},{52,90},{52,46.8},{-14.6,46.8}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None));
    connect(busConnector, brain.busConnector) annotation (Line(
        points={{-90,90},{52,90},{52,64.8},{35.4,64.8}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None));
    connect(busConnector, bone.busConnector) annotation (Line(
        points={{-90,90},{52,90},{52,82.8},{-14.6,82.8}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None));
    connect(busConnector, skeletalMuscle.busConnector)  annotation (Line(
        points={{-90,90},{-48,90},{-48,-33.2},{-10.6,-33.2}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None));
    connect(busConnector, respiratoryMuscle.busConnector) annotation (
        Line(
        points={{-90,90},{52,90},{52,-57.2},{43.4,-57.2}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None));
    connect(bone.BloodFlow, busConnector.bone_BloodFlow)
      annotation (Line(
        points={{-15.9,68.5},{52,68.5},{52,90},{-90,90}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(brain.BloodFlow, busConnector.brain_BloodFlow)
      annotation (Line(
        points={{34.1,50.5},{52,50.5},{52,90},{-90,90}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(fat.BloodFlow, busConnector.fat_BloodFlow) annotation (
       Line(
        points={{-15.9,32.5},{52,32.5},{52,90},{-90,90}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(kidney.BloodFlow, busConnector.kidney_BloodFlow)
      annotation (Line(
        points={{40.1,14.5},{52,14.5},{52,90},{-90,90}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(skin.BloodFlow, busConnector.skin_BloodFlow)
      annotation (Line(
        points={{42.4,-28},{52,-28},{52,90},{-90,90}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(skeletalMuscle.BloodFlow, busConnector.skeletalMuscle_BloodFlow)
      annotation (Line(
        points={{-11.9,-47.5},{52,-47.5},{52,90},{-90,90}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(respiratoryMuscle.BloodFlow, busConnector.respiratoryMuscle_BloodFlow)
      annotation (Line(
        points={{42.1,-71.5},{52,-71.5},{52,90},{-90,90}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(otherTissue.BloodFlow, busConnector.otherTissue_BloodFlow)
      annotation (Line(
        points={{-13.9,-91.5},{52,-91.5},{52,90},{-90,90}},
        color={0,0,127},
        smooth=Smooth.None));

    connect(kidney.q_out,q_out) annotation (Line(
        points={{18,21},{-84,21},{-84,0},{-100,0}},
        color={0,0,0},
        thickness=1,
        smooth=Smooth.None));
    connect(kidney.q_in, flowMeasure.q_out) annotation (Line(
        points={{44,21},{68,21},{68,0},{78,0}},
        color={0,0,0},
        smooth=Smooth.None,
        thickness=1));
    connect(bone.tissueConnector, boneConnector) annotation (Line(
      points={{-25,85.4},{-24.5,85.4},{-24.5,90},{-90,90}},
      color={127,0,0},
      thickness=0.5,
      smooth=Smooth.None));
    connect(fat.tissueConnector, fatConnector) annotation (Line(
      points={{-25,49.4},{-48,49.4},{-48,90},{-90,90}},
      color={127,0,0},
      thickness=0.5,
      smooth=Smooth.None));
    connect(skeletalMuscle.tissueConnector, skeletalMuscleConnector)
    annotation (Line(
      points={{-21,-30.6},{-48,-30.6},{-48,90},{-90,90}},
      color={127,0,0},
      thickness=0.5,
      smooth=Smooth.None));
    connect(otherTissue.tissueConnector, otherTissueConnector)
    annotation (Line(
      points={{-23,-74.6},{-48,-74.6},{-48,90},{-90,90}},
      color={127,0,0},
      thickness=0.5,
      smooth=Smooth.None));
    connect(brain.tissueConnector, brainConnector) annotation (Line(
      points={{25,67.4},{25,90},{-90,90}},
      color={127,0,0},
      thickness=0.5,
      smooth=Smooth.None));
    connect(respiratoryMuscle.tissueConnector, respiratoryMuscleConnector)
    annotation (Line(
      points={{33,-54.6},{34,-54.6},{34,-54},{52,-54},{52,90},{-90,90}},
      color={127,0,0},
      thickness=0.5,
      smooth=Smooth.None));
        annotation (
                  Documentation(info="<HTML>
        <PRE>
        Blood resistance in peripheral organs except hepatic artery, gastro interstitional tract, vena porte, liver and liver veins.
        </PRE>
        </HTML>
        ",     revisions="<html>
        <ul>
        <li><i>  </i>
               </li>
        <li><i> january 2009 </i><br>
               by Marek Matejak in Modelica initially implemented (consulted with Jiri Kofranek), Charles University, Prague<br>
               orginaly described by Tom Coleman in QHP 2008 beta 3, University of Mississippi Medical Center
               </li>
        </ul>
        </html>"), Icon(graphics={Text(
                extent={{-100,-128},{100,-100}},
                lineColor={0,0,255},
                textString="%name")}));
end PeripheralCirculation;
