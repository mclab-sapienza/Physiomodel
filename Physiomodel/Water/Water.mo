within Physiomodel.Water;

    model Water
        import QHP = Physiomodel;
        extends Physiolibrary.Icons.Water;
        //  extends Physiomodel.Library.Utilities.DynamicState(stateName="BodyH2O.Vol", initType=Library.Utilities.Init.NoInit, STEADY=false);

        Physiolibrary.Osmotic.Sources.SolventOutflux Hemorrhage(
        useSolutionFlowInput=true)
        annotation (Placement(transformation(extent={{16,47},{32,63}})));
        Physiolibrary.Osmotic.Sources.SolventInflux Transfusion(
        useSolutionFlowInput=true)
        annotation (Placement(transformation(extent={{32,34},{16,50}})));
        Physiolibrary.Osmotic.Sources.SolventInflux IVDrip(useSolutionFlowInput=
          true) annotation (Placement(transformation(extent={{32,21},{16,37}})));
        Physiolibrary.Types.BusConnector busConnector annotation (Placement(
          transformation(extent={{-99,80},{-79,100}}), iconTransformation(
            extent={{60,60},{80,80}})));
        QHP.Water.WaterCompartments.Torso UpperTorso(
        LungFract=0,
        InterstitialPressureVolumeData={{600.0,-30.0,0.01},{2000.0,-4.8,0.0004},{
          5000.0,0.0,0.0004},{12000.0,50.0,0.01}},
        InterstitialWater_start=0.00227,
        IntracellularWater_start=0.00498,
        NormalLymphFlow=6.6666666666667e-09,
        CapillaryConductance(displayUnit="l/(kPa.d)") = 1.4814814814815e-11,
        ICFVFract=0.94,
        SizeFract=0.2,
        CalsFract=0.3,
        SweatFract=0.33,
        SkinFract=0.33)
        annotation (Placement(transformation(extent={{21,-31},{41,-11}})));
        //  interstitiumProteins=3.3,
        QHP.Water.WaterCompartments.GI_Absorption GILumen
        annotation (Placement(transformation(extent={{-56,54},{-36,74}})));
        QHP.Water.WaterCompartments.Kidney.Kidney Kidney
        annotation (Placement(transformation(extent={{-51,-67},{-31,-47}})));
        QHP.Water.WaterCompartments.Bladder_steady2             Bladder
        annotation (Placement(transformation(extent={{-26,-97},{-6,-77}})));
        QHP.Water.WaterProperties waterProperties
        annotation (Placement(transformation(extent={{-80,-89},{-60,-69}})));

        //  Real bodyH2O;
        /*initial equation
        if STEADY then
        waterProperties.BodyH2O_Change.y = 0;
        end if;
        */

        //initial equation
        //   bodyH2O = waterProperties.BodyH2O.y;
        Physiolibrary.Osmotic.Components.OsmoticCell plasma(
        useImpermeableSolutesInput=true,
        NumberOfMembraneTypes=2,
        volume_start=0.00302)
        "Plasma water with two membrane types: capillary (index 1) and cell membrane (index 2)"
        annotation (Placement(transformation(extent={{-27,-5},{-7,15}})));
        QHP.Water.WaterCompartments.Torso MiddleTorso(
        InterstitialPressureVolumeData={{1200.0,-30.0,0.01},{4800.0,-4.8,0.0004},
          {12000.0,0.0,0.0004},{24000.0,50.0,0.01}},
        InterstitialWater_start=0.00567,
        IntracellularWater_start=0.01246,
        NormalLymphFlow=1.3333333333333e-08,
        CapillaryConductance(displayUnit="l/(kPa.d)") = 3.7268518518519e-11,
        ICFVFract=0.94,
        SizeFract=0.5,
        CalsFract=0.5,
        SweatFract=0.34,
        SkinFract=0.34,
        LungFract=1)
        annotation (Placement(transformation(extent={{22,-62},{42,-42}})));
        QHP.Water.WaterCompartments.Torso LowerTorso(
        LungFract=0,
        InterstitialPressureVolumeData={{600.0,-30.0,0.02},{3000.0,-4.8,0.0004},{
          4000.0,-4.0,0.0004},{6000.0,50.0,0.03}},
        InterstitialWater_start=0.0034,
        IntracellularWater_start=0.00747,
        NormalLymphFlow=2.1666666666667e-08,
        CapillaryConductance(displayUnit="l/(kPa.d)") = 1.5509259259259e-11,
        ICFVFract=0.94,
        SizeFract=0.3,
        CalsFract=0.2,
        SweatFract=0.33,
        SkinFract=0.33)
        annotation (Placement(transformation(extent={{21,-90},{41,-70}})));
        //  interstitiumProteins=2.2,
        QHP.Water.WaterCompartments.Peritoneum_const      peritoneum_const(
        initialVolume=1e-09)
        annotation (Placement(transformation(extent={{73,-16},{93,4}})));
        QHP.Hormones.ADH aDH
        annotation (Placement(transformation(extent={{-11,59},{9,79}})));
        Physiolibrary.Osmotic.Components.OsmoticCell erythrocytes(
        useImpermeableSolutesInput=true,
        NumberOfMembraneTypes=1,
        volume_start=0.002) "Water of red cells"
        annotation (Placement(transformation(extent={{-78,19},{-58,39}})));
        Physiolibrary.Osmotic.Components.Membrane RBCmembrane(cond(displayUnit=
            "ml/(kPa.min)") = 1.6666666666667e-08)
        annotation (Placement(transformation(extent={{-52,20},{-32,40}})));
        QHP.Water.WaterCompartments.LungEdema_const lungEdema_const
        annotation (Placement(transformation(extent={{72,14},{92,34}})));
        
        Physiolibrary.Types.TorsoBusConnector LT;
        Physiolibrary.Types.TorsoBusConnector MT;
        Physiolibrary.Types.TorsoBusConnector UT;
    equation


        //   changePerMin = waterProperties.BodyH2O_Change.y;
        //   stateValue = bodyH2O;

        connect(IVDrip.solutionFlow, busConnector.IVDrip_H2ORate) annotation (Line(
        points={{24,34.6},{61,34.6},{61,90},{-89,90}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
        connect(Transfusion.solutionFlow, busConnector.Transfusion_H2ORate)
        annotation (Line(
        points={{24,47.6},{61,47.6},{61,90},{-89,90}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
        connect(Hemorrhage.solutionFlow, busConnector.Hemorrhage_H2ORate)
        annotation (Line(
        points={{24,60.6},{61,60.6},{61,90},{-89,90}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));

        connect(busConnector, Kidney.busConnector) annotation (Line(
          points={{-89,90},{-89,-49.4},{-47,-49.4}},
          color={0,0,255},
          thickness=0.5,
          smooth=Smooth.None));

        connect(busConnector, GILumen.busConnector) annotation (Line(
          points={{-89,90},{-89,64},{-55.6,64}},
          color={0,0,255},
          thickness=0.5,
          smooth=Smooth.None));
        connect(Bladder.busConnector, busConnector) annotation (Line(
          points={{-25,-96},{-89,-96},{-89,90}},
          color={0,0,255},
          thickness=0.5,
          smooth=Smooth.None));
        connect(plasma.q_in[1], Hemorrhage.q_in) annotation (Line(
        points={{-17,4.5},{-17,42},{8,42},{8,55},{19.2,55}},
        color={127,127,0},
        thickness=1,
        smooth=Smooth.None));
        connect(plasma.q_in[1], Transfusion.q_out) annotation (Line(
        points={{-17,4.5},{-17,42},{19.2,42}},
        color={127,127,0},
        thickness=1,
        smooth=Smooth.None));
        connect(plasma.q_in[1], IVDrip.q_out) annotation (Line(
        points={{-17,4.5},{-17,42},{8,42},{8,29},{19.2,29}},
        color={127,127,0},
        thickness=1,
        smooth=Smooth.None));
        connect(busConnector.PlasmaProtein_Mass, plasma.impermeableSolutes[1])
        annotation (Line(
        points={{-89,90},{-89,10},{-25,10}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
        connect(plasma.volume, busConnector.PlasmaVol) annotation (Line(
        points={{-11,-5},{-89,-5},{-89,90}},
        color={0,0,127},
        smooth=Smooth.None));
        connect(busConnector, waterProperties.busConnector) annotation (Line(
          points={{-89,90},{-89,-70.9},{-79.9,-70.9}},
          color={0,0,255},
          thickness=0.5,
          smooth=Smooth.None));
        connect(UpperTorso.torsoSpecific, UT) annotation (Line(
        points={{35,-19},{65,-19},{65,90},{-89,90}},
        color={170,255,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
        connect(UpperTorso.busConnector, busConnector) annotation (Line(
        points={{35,-13},{65,-13},{65,90},{-89,90}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None));
        connect(MiddleTorso.torsoSpecific, MT) annotation (Line(
        points={{36,-50},{65,-50},{65,90},{-89,90}},
        color={170,255,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
        connect(LowerTorso.torsoSpecific, LT) annotation (Line(
        points={{35,-78},{65,-78},{65,90},{-89,90}},
        color={170,255,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
        connect(LowerTorso.busConnector, busConnector) annotation (Line(
        points={{35,-72},{65,-72},{65,90},{-89,90}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None));
        connect(MiddleTorso.busConnector, busConnector) annotation (Line(
        points={{36,-44},{65,-44},{65,90},{-89,90}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None));
        connect(peritoneum_const.busConnector, busConnector) annotation (Line(
        points={{90,1},{96,1},{96,88},{-89,88},{-89,90}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None));
        connect(plasma.q_in[2], GILumen.vascularH2O) annotation (Line(
        points={{-17,5.5},{-17,5},{-20,5},{-20,64},{-36,64}},
        color={127,127,0},
        thickness=1,
        smooth=Smooth.None));
        connect(UpperTorso.vascularH2O, plasma.q_in[1]) annotation (Line(
        points={{25,-21},{4,-21},{4,4.5},{-17,4.5}},
        color={127,127,0},
        thickness=1,
        smooth=Smooth.None));
        connect(MiddleTorso.vascularH2O, plasma.q_in[1]) annotation (Line(
        points={{26,-52},{4,-52},{4,4.5},{-17,4.5}},
        color={127,127,0},
        thickness=1,
        smooth=Smooth.None));
        connect(LowerTorso.vascularH2O, plasma.q_in[1]) annotation (Line(
        points={{25,-80},{4,-80},{4,4.5},{-17,4.5}},
        color={127,127,0},
        thickness=1,
        smooth=Smooth.None));
        connect(peritoneum_const.flux, plasma.q_in[1]) annotation (Line(
        points={{83,-2},{68,-2},{68,4.5},{-17,4.5}},
        color={127,127,0},
        thickness=1,
        smooth=Smooth.None));
        connect(Kidney.plasma, plasma.q_in[1]) annotation (Line(
        points={{-37,-57},{-27,-57},{-27,4.5},{-17,4.5}},
        color={127,127,0},
        thickness=1,
        smooth=Smooth.None));
        connect(Kidney.urine, Bladder.con) annotation (Line(
        points={{-41,-67},{-41,-87},{-26,-87}},
        color={127,127,0},
        thickness=1,
        smooth=Smooth.None));
        connect(busConnector, aDH.busConnector) annotation (Line(
        points={{-89,90},{-15,90},{-15,63},{-9,63}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None));
        connect(busConnector.PlasmaActiveOsmoles, plasma.impermeableSolutes[2])
        annotation (Line(
        points={{-89,90},{-89,12},{-25,12}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None));
        connect(busConnector.ErythrocytesOsmoles, erythrocytes.impermeableSolutes[1])
        annotation (Line(
        points={{-89,90},{-89,35},{-76,35}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
        connect(erythrocytes.q_in[1], RBCmembrane.q_in) annotation (Line(
        points={{-68,29},{-58,29},{-58,30},{-52,30}},
        color={127,127,0},
        thickness=1,
        smooth=Smooth.None));
        connect(RBCmembrane.q_out, GILumen.vascularH2O) annotation (Line(
        points={{-32,30},{-20,30},{-20,64},{-36,64}},
        color={127,127,0},
        thickness=1,
        smooth=Smooth.None));
        connect(plasma.q_in[1], lungEdema_const.q_in) annotation (Line(
        points={{-17,4.5},{68,4.5},{68,25},{82,25},{82,28}},
        color={127,127,0},
        thickness=1,
        smooth=Smooth.None));
        connect(lungEdema_const.busConnector, busConnector) annotation (Line(
        points={{89,31},{96,31},{96,90},{-89,90}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None));
        connect(LT.Sweat_H2OOutflow, busConnector.LT_Sweat_H2OOutflow);
        connect(MT.Sweat_H2OOutflow, busConnector.MT_Sweat_H2OOutflow);
        connect(UT.Sweat_H2OOutflow, busConnector.UT_Sweat_H2OOutflow);
        connect(LT.InsensibleSkin_H2O, busConnector.LT_InsensibleSkin_H2O);
        connect(MT.InsensibleSkin_H2O, busConnector.MT_InsensibleSkin_H2O);
        connect(UT.InsensibleSkin_H2O, busConnector.UT_InsensibleSkin_H2O);
        connect(LT.InterstitialWater_Vol, busConnector.LT_InterstitialWater_Vol);
        connect(MT.InterstitialWater_Vol, busConnector.MT_InterstitialWater_Vol);
        connect(UT.InterstitialWater_Vol, busConnector.UT_InterstitialWater_Vol);
        connect(LT.InterstitialProtein_Mass, busConnector.LT_InterstitialProtein_Mass);
        connect(MT.InterstitialProtein_Mass, busConnector.MT_InterstitialProtein_Mass);
        connect(UT.InterstitialProtein_Mass, busConnector.UT_InterstitialProtein_Mass);
        connect(LT.LymphFlow, busConnector.LT_LymphFlow);
        connect(MT.LymphFlow, busConnector.MT_LymphFlow);
        connect(UT.LymphFlow, busConnector.UT_LymphFlow);
        connect(LT.CapillaryRegionalPressure, busConnector.LT_CapillaryRegionalPressure);
        connect(MT.CapillaryRegionalPressure, busConnector.MT_CapillaryRegionalPressure);
        connect(UT.CapillaryRegionalPressure, busConnector.UT_CapillaryRegionalPressure);
        connect(LT.Cell_H2O, busConnector.LT_Cell_H2O);
        connect(MT.Cell_H2O, busConnector.MT_Cell_H2O);
        connect(UT.Cell_H2O, busConnector.UT_Cell_H2O);
        connect(LT.InterstitialOsmoles, busConnector.LT_InterstitialOsmoles);
        connect(MT.InterstitialOsmoles, busConnector.MT_InterstitialOsmoles);
        connect(UT.InterstitialOsmoles, busConnector.UT_InterstitialOsmoles);
        annotation (
        Documentation(info="<HTML>
        <PRE>
        QHP 2008 / H2O Reference



        There are several different ways to describe the body's
        water compartments while implementing mass balance.

        Water compartments can initially be divided into two
        basic types: intracellular (ICFV) and extracellular (ECFV).

        Intracellular compartments are red blood cells and
        (all other) cells.

        Extracellular compartments are plasma and interstitium.

        Red Cells     =  1.6
        Cells         = 26.4
                -----
        ICFV          = 28.0

        Interstitium  = 12.0
        Plasma        =  3.0
                -----
        ECFV          = 15.0

        Total         = 43.0

        The problem with this scheme is that water cannot move
        freely between plasma and interstitium but it can move
        freely between interstitium and cell H2O.

        So, we'll divide the body's water compartments into
        vascular and extravascular. The vascular compartment
        is futher subdivided into RBC water and plasma.

        Red Cells     =  1.6
        Plasma        =  3.0
                 ---
        Vascular      =  4.6

        Cells         = 26.4 (ICFV less RBC's H2O)
        Interstitium  = 12.0
                ----
        Extravascular = 38.4

        Total         = 43.0

        To relax the nomenclature a bit, extravascular water
        is referred to as tissue H2O.

        This scheme is implemented using three integrals: plasma,
        RBC and extravascular.

        Exchanges are internal and external.

        Internal exchanges are capillary
        filtration and lymph flow.

        External exchanges are many: absorption
        from gut, urine, IV drip, transfusion,
        hemorrhage ...

        External exchanges influence the derivative
        of either plasma or extravasular H2O.

        Traditional compartments are also
        represented here.

        Red Cell H2O  =  1584
        Organ H2O     = 26428
                -----
        Cell H2O      = 28012

        IFV           = 11988
        Plasma        =  3000
                -----
        Extracellular = 14988

        Total         = 43000
        </PRE>
        </HTML>
        ",   revisions="<html>
        <ul>
        <li><i>  </i>
        </li>
        <li><i> january 2009 </i><br>
        by Marek Matejak in Modelica initially implemented (consulted with Jiri Kofranek), Charles University, Prague<br>
        orginaly described by Tom Coleman in QHP 2008 beta 3, University of Mississippi Medical Center
        </li>
        </ul>
        </html>"), Icon(coordinateSystem(
              preserveAspectRatio=true, extent={{-100,-100},{100,100}},
            grid={1,1}), graphics={Text(
              extent={{-139,-99},{142,-124}},
              lineColor={0,0,255},
              textString="%name")}));
    end Water;
