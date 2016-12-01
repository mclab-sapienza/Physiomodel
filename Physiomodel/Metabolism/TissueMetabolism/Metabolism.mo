within Physiomodel.Metabolism.TissueMetabolism;

        model Metabolism
            import QHP = Physiomodel;
            extends Physiolibrary.Icons.Tissues;
            Physiomodel.Metabolism.TissueMetabolism.Bone bone(
            NormalCalsUsed=69.8614,
            initialTissueO2(displayUnit="ml_STP") = 0.0002012244908654,
            DC(displayUnit="ml/min") = 3e-06,
            BasalCalsUsed=0.6126684,
            TissueSize=8.558)
            annotation (Placement(transformation(extent={{66,88},{40,114}})));
            //initialLactateMass=3.00477
            Physiomodel.Metabolism.TissueMetabolism.Brain brain(
            PO2OnAerobicFractionData={{2.0,0.0,0},{20.0,1.0,0}},
            NormalCalsUsed=193.709,
            DC(displayUnit="ml/min") = 3e-06,
            BasalCalsUsed=12.4431696,
            TissueSize=1.1572)
            annotation (Placement(transformation(extent={{-60,86},{-32,114}})));
            //initialLactateMass=0.850703,
            Physiomodel.Metabolism.TissueMetabolism.Fat fat(
            NormalCalsUsed=29.9658,
            initialTissueO2(displayUnit="ml_STP") = 0.00096297146941496,
            DC(displayUnit="ml/min") = 4.5e-06,
            BasalCalsUsed=0.136071,
            TissueSize=16.6)
            annotation (Placement(transformation(extent={{66,-54},{40,-28}})));
            //   initialLactateMass=2.73208,

            Physiomodel.Metabolism.TissueMetabolism.GITract gITract(
            NormalCalsUsed=92.7945,
            initialTissueO2(displayUnit="ml_STP") = 8.0401733111647e-05,
            DC(displayUnit="ml/min") = 3e-06,
            BasalCalsUsed=5.4191148,
            TissueSize=1.2716)
            annotation (Placement(transformation(extent={{66,-22},{40,4}})));
            //    initialLactateMass=0.934802)
            Physiomodel.Metabolism.TissueMetabolism.Kidney kidney(
            PO2OnAerobicFractionData={{2.0,0.0,0},{20.0,1.0,0}},
            NormalCalsUsed=36.8312,
            initialTissueO2(displayUnit="ml_STP") = 2.1135176283456e-05,
            DC(displayUnit="ml/min") = 3.3333333333333e-07,
            BasalCalsUsed=11.40903,
            TissueSize=0.2552)
            annotation (Placement(transformation(extent={{66,10},{40,36}})));
            //    initialLactateMass=0.187607)
            Physiomodel.Metabolism.TissueMetabolism.Liver liver(
            PO2OnAerobicFractionData={{2.0,0.0,0},{10.0,1.0,0}},
            NormalCalsUsed=147.338,
            initialTissueO2(displayUnit="ml_STP") = 0.00013033358708131,
            DC(displayUnit="ml/min") = 1.6666666666667e-06,
            BasalCalsUsed=7.1357028,
            TissueSize=1.5422)
            annotation (Placement(transformation(extent={{66,44},{40,70}})));
            //   initialLactateMass=1.13373)
            Physiomodel.Metabolism.TissueMetabolism.OtherTissue otherTissue(
            NormalCalsUsed=39.1075,
            initialTissueO2(displayUnit="ml_STP") = 0.00022235966714886,
            DC(displayUnit="ml/min") = 4.5e-06,
            BasalCalsUsed=0.7933986,
            TissueSize=3.63)
            annotation (Placement(transformation(extent={{66,-88},{40,-62}})));
            //    initialLactateMass=2.66855)
            Physiomodel.Metabolism.TissueMetabolism.RespiratoryMuscle respiratoryMuscle(
            NormalCalsUsed=6.27882,
            DC(displayUnit="ml/min") = 4.5e-06,
            initialTissueO2(displayUnit="ml_STP") = 2.5098021836604e-05,
            BasalCalsUsed=0.1584006,
            TissueSize=3.08)
            annotation (Placement(transformation(extent={{-60,52},{-32,80}})));
            //    initialLactateMass=2.66976)
            Physiomodel.Metabolism.TissueMetabolism.RightHeartMuscle rightHeart(
            NormalCalsUsed=2.34779,
            DC(displayUnit="ml/min") = 5e-08,
            initialTissueO2(displayUnit="ml_STP") = 8.8063234514399e-07,
            MotionCals(displayUnit="cal/min") = 0.3489,
            HeatCals(displayUnit="cal/min") = 1.18626,
            BasalCalsUsed=5.5398342,
            TissueSize=0.0385)
            annotation (Placement(transformation(extent={{-60,14},{-32,42}})));
            //    ,Lactate(stateName="RightHeart-Lactate.Mass")
            //    initialLactateMass=2.8e-002,
            Physiomodel.Metabolism.TissueMetabolism.LeftHeartMuscle leftHeart(
            DC=18,
            NormalCalsUsed=15.7067,
            initialTissueO2(displayUnit="ml_STP") = 5.063635984578e-06,
            MotionCals(displayUnit="cal/min") = 1.67472,
            HeatCals(displayUnit="cal/min") = 6.07086,
            BasalCalsUsed=6.0959808,
            TissueSize=0.231)
            annotation (Placement(transformation(extent={{-58,-20},{-30,8}})));
            //    ,Lactate(stateName="LeftHeart-Lactate.Mass")
            //    initialLactateMass=0.169817,
            Physiomodel.Metabolism.TissueMetabolism.SkeletalMuscleMetabolism skeletalMuscle(
            PO2OnAerobicFractionData={{0.0,0.0,0},{15.0,0.2,0.04},{20.0,1.0,0}},
            NormalCalsUsed=145.228,
            initialTissueO2(displayUnit="ml_STP") = 0.0023056275744387,
            DC(displayUnit="ml/min") = 3.125e-05,
            BasalCalsUsed=0.411702,
            TissueSize=27.4)
            annotation (Placement(transformation(extent={{-58,-58},{-30,-30}})));
            //    initialLactateMass=23.7503)
            Physiomodel.Metabolism.TissueMetabolism.Skin skin(
            PO2OnAerobicFractionData={{2.0,0.0,0},{20.0,1.0,0}},
            HeatMetabolism_Skin(data={{10.0+273.15,0.0,0},{29.5+273.15,1.0,0.12},{40.0+273.15,1.5,0},{
            46.0+273.15,0.0,0}}),
            NormalCalsUsed=31.2457,
            initialTissueO2(displayUnit="ml_STP") = 8.1018175753247e-05,
            DC(displayUnit="ml/min") = 4.5e-06,
            BasalCalsUsed=0.9622662,
            TissueSize=2.244)
            annotation (Placement(transformation(extent={{-60,-96},{-32,-68}})));
            //    initialLactateMass=1.64965)
            Physiolibrary.Chemical.Interfaces.ChemicalPort_a glucose
            annotation (
            Placement(transformation(extent={{-12,2},{8,22}}), iconTransformation(
            extent={{90,-20},{110,0}})));                   //(conc(final displayUnit="mg/ml"), q(final displayUnit="mg/min"))
            Physiolibrary.Chemical.Interfaces.ChemicalPort_a fattyAcids
            annotation (
            Placement(transformation(extent={{-10,-16},{10,4}}),
            iconTransformation(extent={{90,70},{110,90}})));     //(conc(final       displayUnit="mg/ml"), q(final displayUnit="mg/min"))
            Physiolibrary.Chemical.Interfaces.ChemicalPort_a ketoAcids
            annotation (
            Placement(transformation(extent={{-10,76},{10,96}}),
            iconTransformation(extent={{90,20},{110,40}})));    //(conc(final     displayUnit="mg/ml"), q(final displayUnit="mg/min"))
            Physiolibrary.Types.BusConnector busConnector annotation (Placement(
            transformation(extent={{-92,106},{-72,126}}), iconTransformation(
            extent={{-92,80},{-72,100}})));
            Physiolibrary.Chemical.Interfaces.ChemicalPort_a GILumenCarbohydrates
            annotation (Placement(transformation(extent={{70,72},{90,92}}),
            iconTransformation(extent={{-70,-110},{-50,-90}})));
            //(    conc(final displayUnit="mg/ml"), q(final displayUnit="mg/min"))
            Physiolibrary.Chemical.Interfaces.ChemicalPort_a lactate
            annotation (
            Placement(transformation(extent={{-10,56},{10,76}}),
            iconTransformation(extent={{90,-70},{110,-50}})));//(conc(final       displayUnit="mEq/ml"), q(final displayUnit="mEq/min"))
            Modelica.Blocks.Math.Feedback Heat annotation (Placement(transformation(
            extent={{-5,-5},{5,5}},
            rotation=180,
            origin={-77,-61})));
            Modelica.Blocks.Math.Sum MetabolicH2ORate(nin=12)
            annotation (Placement(transformation(extent={{80,-96},{88,-88}})));
            Modelica.Blocks.Math.Sum CoreHeat(nin=11)
            annotation (Placement(transformation(extent={{80,-102},{88,-94}})));
            Modelica.Blocks.Math.Sum MotionCals(nin=3)
            annotation (Placement(transformation(extent={{-6,-88},{2,-80}})));
            Modelica.Blocks.Math.Gain gain(k=-1)
            annotation (Placement(transformation(extent={{8,-86},{12,-82}})));

            Physiolibrary.Types.MolarFlowRate tissuesO2Use,tissueCO2Produce;
        equation
            tissuesO2Use = brain.O2Use + fat.O2Use + gITract.O2Use + kidney.O2Use + liver.O2Use + otherTissue.O2Use + respiratoryMuscle.O2Use + leftHeart.O2Use + rightHeart.O2Use + skeletalMuscle.O2Use + skin.O2Use + bone.O2Use;
            tissueCO2Produce = brain.Tissue_CO2FromMetabolism + fat.Tissue_CO2FromMetabolism + gITract.Tissue_CO2FromMetabolism + kidney.Tissue_CO2FromMetabolism + liver.Tissue_CO2FromMetabolism + otherTissue.Tissue_CO2FromMetabolism + respiratoryMuscle.Tissue_CO2FromMetabolism + leftHeart.Tissue_CO2FromMetabolism + rightHeart.Tissue_CO2FromMetabolism + skeletalMuscle.Tissue_CO2FromMetabolism + skin.Tissue_CO2FromMetabolism + bone.Tissue_CO2FromMetabolism;

            connect(brain.glucose, glucose) annotation (Line(
            points={{-32,114},{-28,114},{-28,12},{-2,12}},
            color={200,0,0},
            smooth=Smooth.None,
            thickness=1));
            connect(respiratoryMuscle.glucose, glucose) annotation (Line(
            points={{-32,80},{-28,80},{-28,12},{-2,12}},
            color={200,0,0},
            smooth=Smooth.None,
            thickness=1));
            connect(rightHeart.glucose, glucose) annotation (Line(
            points={{-32,42},{-28,42},{-28,12},{-2,12}},
            color={200,0,0},
            smooth=Smooth.None,
            thickness=1));
            connect(leftHeart.glucose, glucose) annotation (Line(
            points={{-30,8},{-28,8},{-28,12},{-2,12}},
            color={200,0,0},
            smooth=Smooth.None,
            thickness=1));
            connect(skeletalMuscle.glucose, glucose) annotation (Line(
            points={{-30,-30},{-28,-30},{-28,12},{-2,12}},
            color={200,0,0},
            smooth=Smooth.None,
            thickness=1));
            connect(skin.glucose, glucose) annotation (Line(
            points={{-32,-68},{-28,-68},{-28,12},{-2,12}},
            color={200,0,0},
            smooth=Smooth.None,
            thickness=1));
            connect(bone.glucose, glucose) annotation (Line(
            points={{40,114},{24,114},{24,12},{-2,12}},
            color={200,0,0},
            smooth=Smooth.None,
            thickness=1));
            connect(kidney.glucose, glucose) annotation (Line(
            points={{40,36},{24,36},{24,12},{-2,12}},
            color={200,0,0},
            smooth=Smooth.None,
            thickness=1));
            connect(gITract.glucose, glucose) annotation (Line(
            points={{40,4},{24,4},{24,12},{-2,12}},
            color={200,0,0},
            smooth=Smooth.None,
            thickness=1));
            connect(fat.glucose, glucose) annotation (Line(
            points={{40,-28},{24,-28},{24,12},{-2,12}},
            color={200,0,0},
            smooth=Smooth.None,
            thickness=1));
            connect(otherTissue.glucose, glucose) annotation (Line(
            points={{40,-62},{24,-62},{24,12},{-2,12}},
            color={200,0,0},
            smooth=Smooth.None,
            thickness=1));
            connect(brain.lactate, lactate) annotation (Line(
            points={{-32,102.8},{-24,102.8},{-24,66},{0,66}},
            color={200,0,0},
            smooth=Smooth.None,
            thickness=1));
            connect(respiratoryMuscle.lactate, lactate) annotation (Line(
            points={{-32,68.8},{-24,68.8},{-24,66},{0,66}},
            color={200,0,0},
            smooth=Smooth.None,
            thickness=1));
            connect(leftHeart.lactate, lactate) annotation (Line(
            points={{-30,-3.2},{-24,-3.2},{-24,66},{0,66}},
            color={200,0,0},
            smooth=Smooth.None,
            thickness=1));
            connect(rightHeart.lactate, lactate) annotation (Line(
            points={{-32,30.8},{-24,30.8},{-24,66},{0,66}},
            color={200,0,0},
            smooth=Smooth.None,
            thickness=1));
            connect(skeletalMuscle.lactate, lactate) annotation (Line(
            points={{-30,-41.2},{-24,-41.2},{-24,66},{0,66}},
            color={200,0,0},
            smooth=Smooth.None,
            thickness=1));
            connect(skin.lactate, lactate) annotation (Line(
            points={{-32,-79.2},{-24,-79.2},{-24,66},{0,66}},
            color={200,0,0},
            smooth=Smooth.None,
            thickness=1));
            connect(bone.lactate, lactate) annotation (Line(
            points={{40,103.6},{20,103.6},{20,66},{0,66}},
            color={200,0,0},
            smooth=Smooth.None,
            thickness=1));
            connect(liver.lactate, lactate) annotation (Line(
            points={{40,59.6},{20,59.6},{20,66},{0,66}},
            color={200,0,0},
            smooth=Smooth.None,
            thickness=1));
            connect(kidney.lactate, lactate) annotation (Line(
            points={{40,25.6},{20,25.6},{20,66},{0,66}},
            color={200,0,0},
            smooth=Smooth.None,
            thickness=1));
            connect(gITract.lactate, lactate) annotation (Line(
            points={{40,-6.4},{20,-6.4},{20,66},{0,66}},
            color={200,0,0},
            smooth=Smooth.None,
            thickness=1));
            connect(fat.lactate, lactate) annotation (Line(
            points={{40,-38.4},{20,-38.4},{20,66},{0,66}},
            color={200,0,0},
            smooth=Smooth.None,
            thickness=1));
            connect(otherTissue.lactate, lactate) annotation (Line(
            points={{40,-72.4},{20,-72.4},{20,66},{0,66}},
            color={200,0,0},
            smooth=Smooth.None,
            thickness=1));
            connect(respiratoryMuscle.fattyAcids, fattyAcids) annotation (Line(
            points={{-32,57.6},{-20,57.6},{-20,-6},{0,-6}},
            color={200,0,0},
            smooth=Smooth.None,
            thickness=1));
            connect(rightHeart.fattyAcids, fattyAcids) annotation (Line(
            points={{-32,19.6},{-20,19.6},{-20,-6},{0,-6}},
            color={200,0,0},
            smooth=Smooth.None,
            thickness=1));
            connect(leftHeart.fattyAcids, fattyAcids) annotation (Line(
            points={{-30,-14.4},{-20,-14.4},{-20,-6},{0,-6}},
            color={200,0,0},
            smooth=Smooth.None,
            thickness=1));
            connect(skeletalMuscle.fattyAcids, fattyAcids) annotation (Line(
            points={{-30,-52.4},{-20,-52.4},{-20,-6},{0,-6}},
            color={200,0,0},
            smooth=Smooth.None,
            thickness=1));
            connect(skin.fattyAcids, fattyAcids) annotation (Line(
            points={{-32,-90.4},{-20,-90.4},{-20,-6},{0,-6}},
            color={200,0,0},
            smooth=Smooth.None,
            thickness=1));
            connect(bone.fattyAcids, fattyAcids) annotation (Line(
            points={{40,93.2},{16,93.2},{16,-6},{0,-6}},
            color={200,0,0},
            smooth=Smooth.None,
            thickness=1));
            connect(kidney.fattyAcids, fattyAcids) annotation (Line(
            points={{40,15.2},{16,15.2},{16,-6},{0,-6}},
            color={200,0,0},
            smooth=Smooth.None,
            thickness=1));
            connect(gITract.fattyAcids, fattyAcids) annotation (Line(
            points={{40,-16.8},{16,-16.8},{16,-6},{0,-6}},
            color={200,0,0},
            smooth=Smooth.None,
            thickness=1));
            connect(fat.fattyAcids, fattyAcids) annotation (Line(
            points={{40,-48.8},{16,-48.8},{16,-6},{0,-6}},
            color={200,0,0},
            smooth=Smooth.None,
            thickness=1));
            connect(otherTissue.fattyAcids, fattyAcids) annotation (Line(
            points={{40,-82.8},{16,-82.8},{16,-6},{0,-6}},
            color={200,0,0},
            smooth=Smooth.None,
            thickness=1));

            connect(busConnector.Brain_LiquidVol,brain. LiquidVol)  annotation (Line(
            points={{-82,116},{-62,116},{-62,105.6},{-58.6,105.6}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None), Text(
            string="%first",
            index=-1,
            extent={{-5,0},{-5,0}}));
            connect(busConnector.RespiratoryMuscle_LiquidVol,respiratoryMuscle. LiquidVol)  annotation (
            Line(
            points={{-82,116},{-62,116},{-62,71.6},{-58.6,71.6}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None), Text(
            string="%first",
            index=-1,
            extent={{-5,0},{-5,0}}));
            connect(busConnector.RightHeart_LiquidVol,rightHeart. LiquidVol)  annotation (Line(
            points={{-82,116},{-62,116},{-62,33.6},{-58.6,33.6}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None), Text(
            string="%first",
            index=-1,
            extent={{-5,0},{-5,0}}));
            connect(busConnector.LeftHeart_LiquidVol,leftHeart. LiquidVol)  annotation (Line(
            points={{-82,116},{-62,116},{-62,-0.4},{-56.6,-0.4}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None), Text(
            string="%first",
            index=-1,
            extent={{-5,0},{-5,0}}));
            connect(busConnector.SkeletalMuscle_LiquidVol,skeletalMuscle. LiquidVol)  annotation (Line(
            points={{-82,116},{-62,116},{-62,-38.4},{-56.6,-38.4}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None), Text(
            string="%first",
            index=-1,
            extent={{-5,0},{-5,0}}));
            connect(bone.LiquidVol, busConnector.Bone_LiquidVol)  annotation (Line(
            points={{64.7,106.2},{68,106.2},{68,116},{-82,116}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{5,0},{5,0}}));
            connect(liver.LiquidVol, busConnector.Liver_LiquidVol)  annotation (Line(
            points={{64.7,62.2},{68,62.2},{68,116},{-82,116}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{5,0},{5,0}}));
            connect(gITract.LiquidVol, busConnector.GITract_LiquidVol)  annotation (Line(
            points={{64.7,-3.8},{68,-3.8},{68,116},{-82,116}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{5,0},{5,0}}));
            connect(fat.LiquidVol, busConnector.Fat_LiquidVol)  annotation (Line(
            points={{64.7,-35.8},{68,-35.8},{68,116},{-82,116}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{5,0},{5,0}}));
            connect(otherTissue.LiquidVol, busConnector.OtherTissue_LiquidVol)  annotation (Line(
            points={{64.7,-69.8},{68,-69.8},{68,116},{-82,116}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{5,0},{5,0}}));
            connect(kidney.LiquidVol, busConnector.Kidney_LiquidVol)  annotation (Line(
            points={{64.7,28.2},{68,28.2},{68,116},{-82,116}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{5,0},{5,0}}));
            connect(busConnector.Skin_LiquidVol,skin. LiquidVol)  annotation (Line(
            points={{-82,116},{-62,116},{-62,-76.4},{-58.6,-76.4}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None), Text(
            string="%first",
            index=-1,
            extent={{-5,0},{-5,0}}));

            connect(busConnector.LeftHeart_BloodFlow,leftHeart. BloodFlow)  annotation (
            Line(
            points={{-82,116},{-62,116},{-62,5.2},{-56.6,5.2}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None), Text(
            string="%first",
            index=-1,
            extent={{-5,0},{-5,0}}));
            connect(busConnector.RightHeart_BloodFlow,rightHeart. BloodFlow)  annotation (
            Line(
            points={{-82,116},{-62,116},{-62,39.2},{-58.6,39.2}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None), Text(
            string="%first",
            index=-1,
            extent={{-5,0},{-5,0}}));
            connect(busConnector.Brain_BloodFlow,brain. BloodFlow)  annotation (
            Line(
            points={{-82,116},{-62,116},{-62,111.2},{-58.6,111.2}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None), Text(
            string="%first",
            index=-1,
            extent={{-5,0},{-5,0}}));
            connect(busConnector.RespiratoryMuscle_BloodFlow,respiratoryMuscle. BloodFlow)
            annotation (Line(
            points={{-82,116},{-62,116},{-62,77.2},{-58.6,77.2}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None), Text(
            string="%first",
            index=-1,
            extent={{-5,0},{-5,0}}));
            connect(busConnector.SkeletalMuscle_BloodFlow,skeletalMuscle. BloodFlow)
            annotation (Line(
            points={{-82,116},{-62,116},{-62,-32.8},{-56.6,-32.8}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None), Text(
            string="%first",
            index=-1,
            extent={{-5,0},{-5,0}}));
            connect(busConnector.Skin_BloodFlow,skin. BloodFlow)  annotation (Line(
            points={{-82,116},{-62,116},{-62,-70.8},{-58.6,-70.8}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None), Text(
            string="%first",
            index=-1,
            extent={{-5,0},{-5,0}}));
            connect(bone.BloodFlow, busConnector.Bone_BloodFlow)  annotation (Line(
            points={{64.7,111.4},{68,111.4},{68,116},{-82,116}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{5,0},{5,0}}));
            connect(kidney.BloodFlow, busConnector.Kidney_BloodFlow)  annotation (Line(
            points={{64.7,33.4},{68,33.4},{68,116},{-82,116}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{5,0},{5,0}}));
            connect(gITract.BloodFlow, busConnector.GITract_BloodFlow)  annotation (
            Line(
            points={{64.7,1.4},{68,1.4},{68,116},{-82,116}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{5,0},{5,0}}));
            connect(fat.BloodFlow, busConnector.Fat_BloodFlow)  annotation (Line(
            points={{64.7,-30.6},{68,-30.6},{68,116},{-82,116}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{5,0},{5,0}}));
            connect(otherTissue.BloodFlow, busConnector.OtherTissue_BloodFlow)
            annotation (Line(
            points={{64.7,-64.6},{68,-64.6},{68,116},{-82,116}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{5,0},{5,0}}));

            connect(bone.Structure_Effect, busConnector.Bone_StructureEffect)
            annotation (Line(
            points={{64.7,103.6},{68,103.6},{68,116},{-82,116}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{5,0},{5,0}}));
            connect(liver.Structure_Effect, busConnector.Liver_StructureEffect)
            annotation (Line(
            points={{64.7,59.6},{68,59.6},{68,116},{-82,116}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{5,0},{5,0}}));
            connect(kidney.Structure_Effect, busConnector.Kidney_StructureEffect)
            annotation (Line(
            points={{64.7,25.6},{68,25.6},{68,116},{-82,116}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{5,0},{5,0}}));
            connect(gITract.Structure_Effect, busConnector.GITract_StructureEffect)
            annotation (Line(
            points={{64.7,-6.4},{68,-6.4},{68,116},{-82,116}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{5,0},{5,0}}));
            connect(fat.Structure_Effect, busConnector.Fat_StructureEffect)  annotation (
            Line(
            points={{64.7,-38.4},{68,-38.4},{68,116},{-82,116}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{5,0},{5,0}}));
            connect(otherTissue.Structure_Effect, busConnector.OtherTissue_StructureEffect)
            annotation (Line(
            points={{64.7,-72.4},{68,-72.4},{68,116},{-82,116}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{5,0},{5,0}}));
            connect(busConnector.Skin_StructureEffect,skin. Structure_Effect)
            annotation (Line(
            points={{-82,116},{-62,116},{-62,-79.2},{-58.6,-79.2}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None), Text(
            string="%first",
            index=-1,
            extent={{-5,0},{-5,0}}));
            connect(busConnector.SkeletalMuscle_StructureEffect,skeletalMuscle. Structure_Effect)
            annotation (Line(
            points={{-82,116},{-62,116},{-62,-41.2},{-56.6,-41.2}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None), Text(
            string="%first",
            index=-1,
            extent={{-5,0},{-5,0}}));
            connect(busConnector.LeftHeart_StructureEffect,leftHeart. Structure_Effect)
            annotation (Line(
            points={{-82,116},{-62,116},{-62,-3.2},{-56.6,-3.2}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None), Text(
            string="%first",
            index=-1,
            extent={{-5,0},{-5,0}}));
            connect(busConnector.RightHeart_StructureEffect,rightHeart. Structure_Effect)
            annotation (Line(
            points={{-82,116},{-62,116},{-62,30.8},{-58.6,30.8}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None), Text(
            string="%first",
            index=-1,
            extent={{-5,0},{-5,0}}));
            connect(busConnector.RespiratoryMuscle_StructureEffect,
            respiratoryMuscle.                                                      Structure_Effect)
            annotation (Line(
            points={{-82,116},{-62,116},{-62,68.8},{-58.6,68.8}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None), Text(
            string="%first",
            index=-1,
            extent={{-5,0},{-5,0}}));
            connect(busConnector.Brain_StructureEffect,brain. Structure_Effect)
            annotation (Line(
            points={{-82,116},{-62,116},{-62,102.8},{-58.6,102.8}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None), Text(
            string="%first",
            index=-1,
            extent={{-5,0},{-5,0}}));

            connect(kidney.PT_Na_Reab, busConnector.PT_Na_Reab)  annotation (Line(
            points={{64.7,15.2},{68,15.2},{68,116},{-82,116}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{5,0},{5,0}}));
            connect(kidney.LH_Na_Reab, busConnector.LH_Na_Reab)  annotation (Line(
            points={{64.7,38.6},{68,38.6},{68,116},{-82,116}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{5,0},{5,0}}));
            connect(kidney.DT_Na_Reab, busConnector.DT_Na_Reab)  annotation (Line(
            points={{64.7,17.8},{68,17.8},{68,116},{-82,116}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{5,0},{5,0}}));
            connect(busConnector.ExerciseMetabolism_MotionWatts,skeletalMuscle. ExerciseMetabolism_MotionCals)
            annotation (Line(
            points={{-82,116},{-62,116},{-62,-52.4},{-56.6,-52.4}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None), Text(
            string="%first",
            index=-1,
            extent={{-5,0},{-5,0}}));

            connect(busConnector.BloodVol_PVCrit,brain. BloodVol_PVCrit)  annotation (Line(
            points={{-82,116},{-62,116},{-62,114},{-58.6,114}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
            connect(busConnector.BloodVol_PVCrit,respiratoryMuscle. BloodVol_PVCrit)  annotation (Line(
            points={{-82,116},{-62,116},{-62,80},{-58.6,80}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
            connect(busConnector.BloodVol_PVCrit,rightHeart. BloodVol_PVCrit)  annotation (Line(
            points={{-82,116},{-62,116},{-62,42},{-58.6,42}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
            connect(busConnector.BloodVol_PVCrit,leftHeart. BloodVol_PVCrit)  annotation (Line(
            points={{-82,116},{-62,116},{-62,8},{-56.6,8}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
            connect(busConnector.BloodVol_PVCrit,skeletalMuscle. BloodVol_PVCrit)  annotation (Line(
            points={{-82,116},{-62,116},{-62,-30},{-56.6,-30}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
            connect(busConnector.BloodVol_PVCrit,skin. BloodVol_PVCrit)  annotation (Line(
            points={{-82,116},{-62,116},{-62,-68},{-58.6,-68}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
            connect(busConnector.BloodVol_PVCrit,bone. BloodVol_PVCrit)  annotation (Line(
            points={{-82,116},{68,116},{68,114},{64.7,114}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
            connect(busConnector.BloodVol_PVCrit,liver. BloodVol_PVCrit)  annotation (Line(
            points={{-82,116},{68,116},{68,70},{64.7,70}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
            connect(gITract.BloodVol_PVCrit, busConnector.BloodVol_PVCrit)  annotation (Line(
            points={{64.7,4},{68,4},{68,116},{-82,116}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
            connect(otherTissue.BloodVol_PVCrit, busConnector.BloodVol_PVCrit)  annotation (Line(
            points={{64.7,-62},{68,-62},{68,116},{-82,116}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
            connect(fat.BloodVol_PVCrit, busConnector.BloodVol_PVCrit)  annotation (Line(
            points={{64.7,-28},{68,-28},{68,116},{-82,116}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
            connect(busConnector.BloodVol_PVCrit,kidney. BloodVol_PVCrit)  annotation (Line(
            points={{-82,116},{68,116},{68,36},{64.7,36}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));

            connect(busConnector.Thyroxine,brain. Thyroxine)  annotation (Line(
            points={{-82,116},{-62,116},{-62,97.2},{-58.6,97.2}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
            connect(busConnector.Thyroxine,respiratoryMuscle. Thyroxine)  annotation (Line(
            points={{-82,116},{-62,116},{-62,63.2},{-58.6,63.2}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
            connect(busConnector.Thyroxine,rightHeart. Thyroxine)  annotation (Line(
            points={{-82,116},{-62,116},{-62,25.2},{-58.6,25.2}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
            connect(busConnector.Thyroxine,leftHeart. Thyroxine)  annotation (Line(
            points={{-82,116},{-62,116},{-62,-8.8},{-56.6,-8.8}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
            connect(busConnector.Thyroxine,skeletalMuscle. Thyroxine)  annotation (Line(
            points={{-82,116},{-62,116},{-62,-46.8},{-56.6,-46.8}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
            connect(busConnector.Thyroxine,skin. Thyroxine)  annotation (Line(
            points={{-82,116},{-62,116},{-62,-84.8},{-58.6,-84.8}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
            connect(busConnector.Thyroxine,bone. Thyroxine)  annotation (Line(
            points={{-82,116},{68,116},{68,98.4},{64.7,98.4}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
            connect(busConnector.Thyroxine,liver. Thyroxine)  annotation (Line(
            points={{-82,116},{68,116},{68,54.4},{64.7,54.4}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
            connect(gITract.Thyroxine, busConnector.Thyroxine)  annotation (Line(
            points={{64.7,-11.6},{68,-11.6},{68,116},{-82,116}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
            connect(otherTissue.Thyroxine, busConnector.Thyroxine)  annotation (Line(
            points={{64.7,-77.6},{68,-77.6},{68,116},{-82,116}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
            connect(fat.Thyroxine, busConnector.Thyroxine)  annotation (Line(
            points={{64.7,-43.6},{68,-43.6},{68,116},{-82,116}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
            connect(busConnector.Thyroxine,kidney. Thyroxine)  annotation (Line(
            points={{-82,116},{68,116},{68,20.4},{64.7,20.4}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));

            connect(bone.pO2, busConnector.bone_pO2)
            annotation (Line(
            points={{64.7,108.8},{68,108.8},{68,116},{-82,116}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{5,0},{5,0}}));
            connect(liver.pO2, busConnector.Liver_PO2)
            annotation (Line(
            points={{64.7,64.8},{68,64.8},{68,116},{-82,116}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{5,0},{5,0}}));
            connect(kidney.pO2, busConnector.Kidney_PO2)
            annotation (Line(
            points={{64.7,30.8},{68,30.8},{68,116},{-82,116}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{5,0},{5,0}}));
            connect(gITract.pO2, busConnector.GITract_pO2)
            annotation (Line(
            points={{64.7,-1.2},{68,-1.2},{68,116},{-82,116}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{5,0},{5,0}}));
            connect(fat.pO2, busConnector.fat_pO2)  annotation (
            Line(
            points={{64.7,-33.2},{68,-33.2},{68,116},{-82,116}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{5,0},{5,0}}));
            connect(otherTissue.pO2, busConnector.otherTissue_pO2)
            annotation (Line(
            points={{64.7,-67.2},{68,-67.2},{68,116},{-82,116}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{5,0},{5,0}}));
            connect(busConnector.Skin_PO2,skin. pO2)
            annotation (Line(
            points={{-82,116},{-62,116},{-62,-73.6},{-58.6,-73.6}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None), Text(
            string="%first",
            index=-1,
            extent={{-5,0},{-5,0}}));
            connect(busConnector.skeletalMuscle_pO2,skeletalMuscle. pO2)
            annotation (Line(
            points={{-82,116},{-62,116},{-62,-35.6},{-56.6,-35.6}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None), Text(
            string="%first",
            index=-1,
            extent={{-5,0},{-5,0}}));
            connect(busConnector.LeftHeart_PO2,leftHeart. pO2)
            annotation (Line(
            points={{-82,116},{-62,116},{-62,2.4},{-56.6,2.4}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None), Text(
            string="%first",
            index=-1,
            extent={{-5,0},{-5,0}}));
            connect(busConnector.RightHeart_PO2,rightHeart. pO2)
            annotation (Line(
            points={{-82,116},{-62,116},{-62,36.4},{-58.6,36.4}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None), Text(
            string="%first",
            index=-1,
            extent={{-5,0},{-5,0}}));
            connect(busConnector.respiratoryMuscle_pO2,respiratoryMuscle. pO2)
            annotation (Line(
            points={{-82,116},{-62,116},{-62,74.4},{-58.6,74.4}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None), Text(
            string="%first",
            index=-1,
            extent={{-5,0},{-5,0}}));
            connect(busConnector.brain_pO2,brain. pO2)
            annotation (Line(
            points={{-82,116},{-62,116},{-62,108.4},{-58.6,108.4}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None), Text(
            string="%first",
            index=-1,
            extent={{-5,0},{-5,0}}));

            connect(bone.T, busConnector.bone_T)
            annotation (Line(
            points={{64.7,101},{68,101},{68,116},{-82,116}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{5,0},{5,0}}));
            connect(liver.T, busConnector.liver_T)
            annotation (Line(
            points={{64.7,57},{68,57},{68,116},{-82,116}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{5,0},{5,0}}));
            connect(kidney.T, busConnector.kidney_T)
            annotation (Line(
            points={{64.7,23},{68,23},{68,116},{-82,116}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{5,0},{5,0}}));
            connect(gITract.T, busConnector.GITract_T)
            annotation (Line(
            points={{64.7,-9},{68,-9},{68,116},{-82,116}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{5,0},{5,0}}));
            connect(fat.T, busConnector.fat_T)  annotation (
            Line(
            points={{64.7,-41},{68,-41},{68,116},{-82,116}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{5,0},{5,0}}));
            connect(otherTissue.T, busConnector.otherTissue_T)
            annotation (Line(
            points={{64.7,-75},{68,-75},{68,116},{-82,116}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{5,0},{5,0}}));
            connect(busConnector.skin_T,skin. T)
            annotation (Line(
            points={{-82,116},{-62,116},{-62,-82},{-58.6,-82}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None), Text(
            string="%first",
            index=-1,
            extent={{-5,0},{-5,0}}));
            connect(busConnector.skeletalMuscle_T,skeletalMuscle. T)
            annotation (Line(
            points={{-82,116},{-62,116},{-62,-44},{-56.6,-44}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None), Text(
            string="%first",
            index=-1,
            extent={{-5,0},{-5,0}}));
            connect(busConnector.leftHeart_T,leftHeart. T)
            annotation (Line(
            points={{-82,116},{-62,116},{-62,-6},{-56.6,-6}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None), Text(
            string="%first",
            index=-1,
            extent={{-5,0},{-5,0}}));
            connect(busConnector.rightHeart_T,rightHeart. T)
            annotation (Line(
            points={{-82,116},{-62,116},{-62,28},{-58.6,28}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None), Text(
            string="%first",
            index=-1,
            extent={{-5,0},{-5,0}}));
            connect(busConnector.respiratoryMuscle_T,respiratoryMuscle. T)
            annotation (Line(
            points={{-82,116},{-62,116},{-62,66},{-58.6,66}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None), Text(
            string="%first",
            index=-1,
            extent={{-5,0},{-5,0}}));
            connect(busConnector.brain_T,brain. T)
            annotation (Line(
            points={{-82,116},{-62,116},{-62,100},{-58.6,100}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None), Text(
            string="%first",
            index=-1,
            extent={{-5,0},{-5,0}}));

            connect(bone.cLactate, busConnector.bone_cLactate)
            annotation (Line(
            points={{56.9,88},{68,88},{68,116},{-82,116}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(liver.cLactate, busConnector.liver_cLactate)
            annotation (Line(
            points={{56.9,44},{68,44},{68,116},{-82,116}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(kidney.cLactate, busConnector.kidney_cLactate)
            annotation (Line(
            points={{56.9,10},{68,10},{68,116},{-82,116}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(gITract.cLactate, busConnector.GITract_cLactate)
            annotation (Line(
            points={{56.9,-22},{68,-22},{68,116},{-82,116}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(fat.cLactate, busConnector.fat_cLactate)  annotation (
            Line(
            points={{56.9,-54},{68,-54},{68,116},{-82,116}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(otherTissue.cLactate, busConnector.otherTissue_cLactate)
            annotation (Line(
            points={{56.9,-88},{68,-88},{68,116},{-82,116}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(busConnector.skin_cLactate,skin. cLactate)
            annotation (Line(
            points={{-82,116},{-62,116},{-62,-96},{-50.2,-96}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
            connect(busConnector.skeletalMuscle_cLactate,skeletalMuscle. cLactate)
            annotation (Line(
            points={{-82,116},{-62,116},{-62,-58},{-48.2,-58}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
            connect(busConnector.leftHeart_cLactate,leftHeart. cLactate)
            annotation (Line(
            points={{-82,116},{-62,116},{-62,-20},{-48.2,-20}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
            connect(busConnector.rightHeart_cLactate,rightHeart. cLactate)
            annotation (Line(
            points={{-82,116},{-62,116},{-62,14},{-50.2,14}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
            connect(busConnector.respiratoryMuscle_cLactate,respiratoryMuscle. cLactate)
            annotation (Line(
            points={{-82,116},{-62,116},{-62,52},{-50.2,52}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
            connect(busConnector.brain_cLactate,brain. cLactate)
            annotation (Line(
            points={{-82,116},{-62,116},{-62,86},{-50.2,86}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));

            connect(bone.Tissue_CO2FromMetabolism, busConnector.bone_CO2FromMetabolism)
            annotation (Line(
            points={{59.5,88},{68,88},{68,116},{-82,116}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(liver.Tissue_CO2FromMetabolism, busConnector.liver_CO2FromMetabolism)
            annotation (Line(
            points={{59.5,44},{68,44},{68,116},{-82,116}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(kidney.Tissue_CO2FromMetabolism, busConnector.kidney_CO2FromMetabolism)
            annotation (Line(
            points={{59.5,10},{68,10},{68,116},{-82,116}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(gITract.Tissue_CO2FromMetabolism, busConnector.GITract_CO2FromMetabolism)
            annotation (Line(
            points={{59.5,-22},{68,-22},{68,116},{-82,116}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(fat.Tissue_CO2FromMetabolism, busConnector.fat_CO2FromMetabolism)  annotation (
            Line(
            points={{59.5,-54},{68,-54},{68,116},{-82,116}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(otherTissue.Tissue_CO2FromMetabolism, busConnector.otherTissue_CO2FromMetabolism)
            annotation (Line(
            points={{59.5,-88},{68,-88},{68,116},{-82,116}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(busConnector.skin_CO2FromMetabolism,skin. Tissue_CO2FromMetabolism)
            annotation (Line(
            points={{-82,116},{-62,116},{-62,-96},{-53,-96}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
            connect(busConnector.skeletalMuscle_CO2FromMetabolism,skeletalMuscle. Tissue_CO2FromMetabolism)
            annotation (Line(
            points={{-82,116},{-62,116},{-62,-58},{-51,-58}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
            connect(busConnector.leftHeart_CO2FromMetabolism,leftHeart. Tissue_CO2FromMetabolism)
            annotation (Line(
            points={{-82,116},{-62,116},{-62,-20},{-51,-20}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
            connect(busConnector.rightHeart_CO2FromMetabolism,rightHeart. Tissue_CO2FromMetabolism)
            annotation (Line(
            points={{-82,116},{-62,116},{-62,14},{-53,14}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
            connect(busConnector.respiratoryMuscle_CO2FromMetabolism,
            respiratoryMuscle.                                                        Tissue_CO2FromMetabolism)
            annotation (Line(
            points={{-82,116},{-62,116},{-62,52},{-53,52}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
            connect(busConnector.brain_CO2FromMetabolism,brain. Tissue_CO2FromMetabolism)
            annotation (Line(
            points={{-82,116},{-62,116},{-62,86},{-53,86}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));

            connect(bone.LactateFromMetabolism, busConnector.bone_LactateFromMetabolism)
            annotation (Line(
            points={{49.1,88},{68,88},{68,116},{-82,116}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(liver.LactateFromMetabolism, busConnector.liver_LactateFromMetabolism)
            annotation (Line(
            points={{49.1,44},{68,44},{68,116},{-82,116}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(kidney.LactateFromMetabolism, busConnector.kidney_LactateFromMetabolism)
            annotation (Line(
            points={{49.1,10},{68,10},{68,116},{-82,116}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(gITract.LactateFromMetabolism, busConnector.GITract_LactateFromMetabolism)
            annotation (Line(
            points={{49.1,-22},{68,-22},{68,116},{-82,116}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(fat.LactateFromMetabolism, busConnector.fat_LactateFromMetabolism)  annotation (
            Line(
            points={{49.1,-54},{68,-54},{68,116},{-82,116}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(otherTissue.LactateFromMetabolism, busConnector.otherTissue_LactateFromMetabolism)
            annotation (Line(
            points={{49.1,-88},{68,-88},{68,116},{-82,116}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(busConnector.skin_LactateFromMetabolism,skin. LactateFromMetabolism)
            annotation (Line(
            points={{-82,116},{-62,116},{-62,-96},{-41.8,-96}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
            connect(busConnector.skeletalMuscle_LactateFromMetabolism,
            skeletalMuscle.                                                         LactateFromMetabolism)
            annotation (Line(
            points={{-82,116},{-62,116},{-62,-58},{-39.8,-58}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
            connect(busConnector.leftHeart_LactateFromMetabolism,leftHeart. LactateFromMetabolism)
            annotation (Line(
            points={{-82,116},{-62,116},{-62,-20},{-39.8,-20}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
            connect(busConnector.rightHeart_LactateFromMetabolism,rightHeart. LactateFromMetabolism)
            annotation (Line(
            points={{-82,116},{-62,116},{-62,14},{-41.8,14}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
            connect(busConnector.respiratoryMuscle_LactateFromMetabolism,
            respiratoryMuscle.                                                            LactateFromMetabolism)
            annotation (Line(
            points={{-82,116},{-62,116},{-62,52},{-41.8,52}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
            connect(busConnector.brain_LactateFromMetabolism,brain. LactateFromMetabolism)
            annotation (Line(
            points={{-82,116},{-62,116},{-62,86},{-41.8,86}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));

            connect(bone.O2Use, busConnector.bone_O2Use)
            annotation (Line(
            points={{54.3,88},{68,88},{68,116},{-82,116}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(liver.O2Use, busConnector.liver_O2Use)
            annotation (Line(
            points={{54.3,44},{68,44},{68,116},{-82,116}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(kidney.O2Use, busConnector.kidney_O2Use)
            annotation (Line(
            points={{54.3,10},{68,10},{68,116},{-82,116}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(gITract.O2Use, busConnector.GITract_O2Use)
            annotation (Line(
            points={{54.3,-22},{68,-22},{68,116},{-82,116}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(fat.O2Use, busConnector.fat_O2Use)  annotation (
            Line(
            points={{54.3,-54},{68,-54},{68,116},{-82,116}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(otherTissue.O2Use, busConnector.otherTissue_O2Use)
            annotation (Line(
            points={{54.3,-88},{68,-88},{68,116},{-82,116}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(busConnector.skin_O2Use,skin. O2Use)
            annotation (Line(
            points={{-82,116},{-62,116},{-62,-96},{-47.4,-96}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
            connect(busConnector.skeletalMuscle_O2Use,skeletalMuscle. O2Use)
            annotation (Line(
            points={{-82,116},{-62,116},{-62,-58},{-45.4,-58}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
            connect(busConnector.leftHeart_O2Use,leftHeart. O2Use)
            annotation (Line(
            points={{-82,116},{-62,116},{-62,-20},{-45.4,-20}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
            connect(busConnector.rightHeart_O2Use,rightHeart. O2Use)
            annotation (Line(
            points={{-82,116},{-62,116},{-62,14},{-47.4,14}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
            connect(busConnector.respiratoryMuscle_O2Use,respiratoryMuscle. O2Use)
            annotation (Line(
            points={{-82,116},{-62,116},{-62,52},{-47.4,52}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
            connect(busConnector.brain_O2Use,brain. O2Use)
            annotation (Line(
            points={{-82,116},{-62,116},{-62,86},{-47.4,86}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));

            connect(bone.O2Need, busConnector.bone_O2Need)
            annotation (Line(
            points={{51.7,88},{68,88},{68,116},{-82,116}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(liver.O2Need, busConnector.Liver_O2Need)
            annotation (Line(
            points={{51.7,44},{68,44},{68,116},{-82,116}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(kidney.O2Need, busConnector.Kidney_O2Need)
            annotation (Line(
            points={{51.7,10},{68,10},{68,116},{-82,116}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(gITract.O2Need, busConnector.GITract_O2Need)
            annotation (Line(
            points={{51.7,-22},{68,-22},{68,116},{-82,116}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(fat.O2Need, busConnector.fat_O2Need)  annotation (
            Line(
            points={{51.7,-54},{68,-54},{68,116},{-82,116}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(otherTissue.O2Need, busConnector.otherTissue_O2Need)
            annotation (Line(
            points={{51.7,-88},{68,-88},{68,116},{-82,116}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(busConnector.Skin_O2Need,skin. O2Need)
            annotation (Line(
            points={{-82,116},{-62,116},{-62,-96},{-44.6,-96}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
            connect(busConnector.skeletalMuscle_O2Need,skeletalMuscle. O2Need)
            annotation (Line(
            points={{-82,116},{-62,116},{-62,-58},{-42.6,-58}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
            connect(busConnector.LeftHeart_O2Need,leftHeart. O2Need)
            annotation (Line(
            points={{-82,116},{-62,116},{-62,-20},{-42.6,-20}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
            connect(busConnector.RightHeart_O2Need,rightHeart. O2Need)
            annotation (Line(
            points={{-82,116},{-62,116},{-62,14},{-44.6,14}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
            connect(busConnector.respiratoryMuscle_O2Need,respiratoryMuscle. O2Need)
            annotation (Line(
            points={{-82,116},{-62,116},{-62,52},{-44.6,52}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
            connect(busConnector.brain_O2Need,brain. O2Need)
            annotation (Line(
            points={{-82,116},{-62,116},{-62,86},{-44.6,86}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));

            connect(bone.Fuel_FractUseDelay, busConnector.bone_Fuel_FractUseDelay)
            annotation (Line(
            points={{62.1,88},{68,88},{68,116},{-82,116}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(liver.Fuel_FractUseDelay, busConnector.liver_Fuel_FractUseDelay)
            annotation (Line(
            points={{62.1,44},{68,44},{68,116},{-82,116}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(kidney.Fuel_FractUseDelay, busConnector.kidney_Fuel_FractUseDelay)
            annotation (Line(
            points={{62.1,10},{68,10},{68,116},{-82,116}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(gITract.Fuel_FractUseDelay, busConnector.GITract_Fuel_FractUseDelay)
            annotation (Line(
            points={{62.1,-22},{68,-22},{68,116},{-82,116}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(fat.Fuel_FractUseDelay, busConnector.fat_Fuel_FractUseDelay)  annotation (
            Line(
            points={{62.1,-54},{68,-54},{68,116},{-82,116}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(otherTissue.Fuel_FractUseDelay, busConnector.otherTissue_Fuel_FractUseDelay)
            annotation (Line(
            points={{62.1,-88},{68,-88},{68,116},{-82,116}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(busConnector.skin_Fuel_FractUseDelay,skin. Fuel_FractUseDelay)
            annotation (Line(
            points={{-82,116},{-62,116},{-62,-96},{-55.8,-96}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
            connect(busConnector.skeletalMuscle_Fuel_FractUseDelay,skeletalMuscle. Fuel_FractUseDelay)
            annotation (Line(
            points={{-82,116},{-62,116},{-62,-58},{-53.8,-58}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
            connect(busConnector.leftHeart_Fuel_FractUseDelay,leftHeart. Fuel_FractUseDelay)
            annotation (Line(
            points={{-82,116},{-62,116},{-62,-20},{-53.8,-20}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
            connect(busConnector.rightHeart_Fuel_FractUseDelay,rightHeart. Fuel_FractUseDelay)
            annotation (Line(
            points={{-82,116},{-62,116},{-62,14},{-55.8,14}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
            connect(busConnector.respiratoryMuscle_Fuel_FractUseDelay,
            respiratoryMuscle.                                                         Fuel_FractUseDelay)
            annotation (Line(
            points={{-82,116},{-62,116},{-62,52},{-55.8,52}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
            connect(busConnector.brain_Fuel_FractUseDelay,brain. Fuel_FractUseDelay)
            annotation (Line(
            points={{-82,116},{-62,116},{-62,86},{-55.8,86}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));

            connect(brain.ketoAcids, ketoAcids) annotation (Line(
            points={{-32,91.6},{0,91.6},{0,86}},
            color={200,0,0},
            thickness=1,
            smooth=Smooth.None));
            connect(busConnector.Insulin,skeletalMuscle. Insulin) annotation (Line(
            points={{-82,116},{-62,116},{-62,-49.6},{-56.6,-49.6}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None), Text(
            string="%first",
            index=-1,
            extent={{-6,1},{-6,1}}));
            connect(busConnector.Insulin,respiratoryMuscle. Insulin) annotation (
            Line(
            points={{-82,116},{-62,116},{-62,60.4},{-58.6,60.4}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None), Text(
            string="%first",
            index=-1,
            extent={{-6,3},{-6,3}}));
            connect(busConnector.skeletalMuscle_GlucoseToCellStorageFlow,
            skeletalMuscle.                                                            GlucoseToCellsStorageFlow)
            annotation (Line(
            points={{-82,116},{-62,116},{-62,-58},{-56.6,-58}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
            connect(busConnector.respiratoryMuscle_GlucoseToCellStorageFlow,
            respiratoryMuscle.GlucoseToCellsStorageFlow) annotation (Line(
            points={{-82,116},{-62,116},{-62,52},{-58.6,52}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
            connect(skin.TotalCalsUsed, busConnector.MetabolismCaloriesUsed_SkinHeat)
            annotation (Line(
            points={{-36.2,-96},{-62,-96},{-62,116},{-82,116}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(skeletalMuscle.TotalCalsUsed, Heat.u1) annotation (Line(
            points={{-34.2,-58},{-36,-58},{-36,-61},{-73,-61}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(busConnector.ExerciseMetabolism_MotionWatts, Heat.u2) annotation (Line(
            points={{-82,116},{-62,116},{-62,-56},{-77,-56},{-77,-57}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
            connect(Heat.y, busConnector.MetabolismCaloriesUsed_SkeletalMuscleHeat)
            annotation (Line(
            points={{-81.5,-61},{-86,-61},{-86,-66},{-62,-66},{-62,116},{-82,116}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(MetabolicH2ORate.y, busConnector.MetabolicH2O_Rate) annotation (Line(
            points={{88.4,-92},{94,-92},{94,-82},{68,-82},{68,116},{-82,116}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));

            connect(bone.H2OFromMetabolism, MetabolicH2ORate.u[1])
            annotation (Line(
            points={{46.5,88},{68,88},{68,-92.7333},{79.2,-92.7333}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(liver.H2OFromMetabolism, MetabolicH2ORate.u[2])
            annotation (Line(
            points={{46.5,44},{68,44},{68,-92.6},{79.2,-92.6}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(kidney.H2OFromMetabolism, MetabolicH2ORate.u[3])
            annotation (Line(
            points={{46.5,10},{68,10},{68,-92.4667},{79.2,-92.4667}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(gITract.H2OFromMetabolism, MetabolicH2ORate.u[4])
            annotation (Line(
            points={{46.5,-22},{68,-22},{68,-92.3333},{79.2,-92.3333}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(fat.H2OFromMetabolism, MetabolicH2ORate.u[5])  annotation (
            Line(
            points={{46.5,-54},{68,-54},{68,-92.2},{79.2,-92.2}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(otherTissue.H2OFromMetabolism, MetabolicH2ORate.u[6])
            annotation (Line(
            points={{46.5,-88},{68,-88},{68,-92.0667},{79.2,-92.0667}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(MetabolicH2ORate.u[7],skin. H2OFromMetabolism)
            annotation (Line(
            points={{79.2,-91.9333},{-62,-91.9333},{-62,-96},{-39,-96}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
            connect(MetabolicH2ORate.u[8],skeletalMuscle. H2OFromMetabolism)
            annotation (Line(
            points={{79.2,-91.8},{-62,-91.8},{-62,-58},{-37,-58}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
            connect(MetabolicH2ORate.u[9],leftHeart. H2OFromMetabolism)
            annotation (Line(
            points={{79.2,-91.6667},{-62,-91.6667},{-62,-20},{-37,-20}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
            connect(MetabolicH2ORate.u[10],rightHeart. H2OFromMetabolism)
            annotation (Line(
            points={{79.2,-91.5333},{-62,-91.5333},{-62,14},{-39,14}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
            connect(MetabolicH2ORate.u[11],respiratoryMuscle. H2OFromMetabolism)
            annotation (Line(
            points={{79.2,-91.4},{-62,-91.4},{-62,52},{-39,52}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
            connect(MetabolicH2ORate.u[12],brain. H2OFromMetabolism)
            annotation (Line(
            points={{79.2,-91.2667},{-62,-91.2667},{-62,86},{-39,86}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));

            connect(liver.GILumenCarbohydrates, GILumenCarbohydrates) annotation (
            Line(
            points={{55.6,70},{56,70},{56,82},{80,82}},
            color={200,0,0},
            thickness=1,
            smooth=Smooth.None));
            connect(liver.PortalVeinGlucose, busConnector.PortalVein_Glucose)
            annotation (Line(
            points={{59.5,70},{60,70},{60,74},{36,74},{36,116},{-82,116}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(liver.glucose, glucose) annotation (Line(
            points={{40,70},{24,70},{24,12},{-2,12}},
            color={200,0,0},
            thickness=1,
            smooth=Smooth.None));
            connect(liver.fattyAcids, fattyAcids) annotation (Line(
            points={{40,49.2},{16,49.2},{16,-6},{0,-6}},
            color={200,0,0},
            thickness=1,
            smooth=Smooth.None));
            connect(gITract.GIT_GluUse,liver. GITract_GlucoseUsed) annotation (Line(
            points={{48.32,4},{48,4},{48,6},{80,6},{80,51.54},{64.7,51.54}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(gITract.GIT_FatUse,liver. GITract_FatUsed) annotation (Line(
            points={{50.92,4},{82,4},{82,48.68},{64.7,48.68}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(liver.FatAbsorbtion, busConnector.FA_Absorbtion) annotation (
            Line(
            points={{64.7,46.08},{68,46.08},{68,116},{-82,116}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));

            connect(CoreHeat.y, busConnector.MetabolismCaloriesUsed_CoreHeat)         annotation (Line(
            points={{88.4,-98},{94,-98},{94,-88},{68,-88},{68,116},{-82,116}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));

            connect(bone.TotalCalsUsed, CoreHeat.u[1])
            annotation (Line(
            points={{43.9,88},{68,88},{68,-98.7273},{79.2,-98.7273}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(liver.TotalCalsUsed, CoreHeat.u[2])
            annotation (Line(
            points={{43.9,44},{68,44},{68,-98.5818},{79.2,-98.5818}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(kidney.TotalCalsUsed, CoreHeat.u[3])
            annotation (Line(
            points={{43.9,10},{68,10},{68,-98.4364},{79.2,-98.4364}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(gITract.TotalCalsUsed, CoreHeat.u[4])
            annotation (Line(
            points={{43.9,-22},{68,-22},{68,-98.2909},{79.2,-98.2909}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(fat.TotalCalsUsed, CoreHeat.u[5])          annotation (
            Line(
            points={{43.9,-54},{68,-54},{68,-98.1455},{79.2,-98.1455}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(otherTissue.TotalCalsUsed, CoreHeat.u[6])
            annotation (Line(
            points={{43.9,-88},{68,-88},{68,-98},{79.2,-98}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(CoreHeat.u[7],leftHeart. TotalCalsUsed)
            annotation (Line(
            points={{79.2,-97.8545},{-62,-97.8545},{-62,-20},{-34.2,-20}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
            connect(CoreHeat.u[8],rightHeart. TotalCalsUsed)
            annotation (Line(
            points={{79.2,-97.7091},{-62,-97.7091},{-62,14},{-36.2,14}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
            connect(CoreHeat.u[9],respiratoryMuscle. TotalCalsUsed)
            annotation (Line(
            points={{79.2,-97.5636},{-62,-97.5636},{-62,52},{-36.2,52}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
            connect(CoreHeat.u[10],brain. TotalCalsUsed)
            annotation (Line(
            points={{79.2,-97.4182},{-62,-97.4182},{-62,86},{-36.2,86}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
            connect(rightHeart.MotionCals_, MotionCals.u[1]) annotation (Line(
            points={{-33.4,14},{-12,14},{-12,-84.5333},{-6.8,-84.5333}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(leftHeart.MotionCals_, MotionCals.u[2]) annotation (Line(
            points={{-31.4,-20},{-12,-20},{-12,-84},{-6.8,-84}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(respiratoryMuscle.MotionCals_, MotionCals.u[3]) annotation (Line(
            points={{-33.4,52},{-12,52},{-12,-83.4667},{-6.8,-83.4667}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(MotionCals.y, gain.u) annotation (Line(
            points={{2.4,-84},{7.6,-84}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(gain.y, CoreHeat.u[11]) annotation (Line(
            points={{12.2,-84},{20,-84},{20,-97.2727},{79.2,-97.2727}},
            color={0,0,127},
            smooth=Smooth.None));
            connect(liver.BloodFlow, busConnector.Liver_BloodFlow) annotation (Line(
            points={{64.7,67.4},{68,67.4},{68,116},{-82,116}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(liver.HepaticArtyBloodFlow, busConnector.HepaticArty_BloodFlow)
            annotation (Line(
            points={{56.38,65.58},{56.38,116},{-82,116}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            /*  connect(skeletalMuscle.skeletalMuscle_HeatWithoutTermoregulation,
            busConnector.skeletalMuscle_HeatWithoutTermoregulation) annotation (
            Line(
            points={{-31.4,-58},{-30,-58},{-30,-64},{-62,-64},{-62,116},{-82,
            116}},
            color={0,0,127},
            smooth=Smooth.None));*/
            /*  connect(busConnector.skeletalMuscle_shiveringCals, skeletalMuscle.ShiveringCals)
            annotation (Line(
            points={{-82,116},{-62,116},{-62,-27.2},{-56.6,-27.2}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None), Text(
            string="%first",
            index=-1,
            extent={{-6,3},{-6,3}})); */
            connect(busConnector.HypothalamusShivering_NerveActivity, skeletalMuscle.HypothalamusShivering_NerveActivity)
            annotation (Line(
            points={{-82,116},{-70,116},{-70,-27.2},{-56.6,-27.2}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None), Text(
            string="%first",
            index=-1,
            extent={{-6,3},{-6,3}}));
            connect(skeletalMuscle.skeletalMuscle_producedHeat, busConnector.skeletalMuscle_heatProduction)
            annotation (Line(
            points={{-31.4,-58},{-30,-58},{-30,-62},{-62,-62},{-62,116},{-82,116}},
            color={0,0,127},
            smooth=Smooth.None));

            annotation (Diagram(coordinateSystem(preserveAspectRatio=false,extent={{-100,
                -100},{100,120}}),        graphics), Icon(coordinateSystem(
                preserveAspectRatio=true, extent={{-100,-100},{100,120}}),
              graphics={Text(
                extent={{-166,136},{154,108}},
                lineColor={0,0,255},
                textString="%name")}));
        end Metabolism;
