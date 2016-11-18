within Physiomodel.Water.WaterCompartments;

model Torso
    import Physiomodel;
    extends Physiolibrary.Icons.Torso;

    //    parameter Real interstitiumProteins = 2.6;

      parameter Physiolibrary.Types.Volume InterstitialWater_start
    "2270,5670,3400 ml";
      parameter Physiolibrary.Types.Volume IntracellularWater_start
    "4980,12460,7470 ml";

      parameter Physiolibrary.Types.VolumeFlowRate NormalLymphFlow
    "0.4,0.8,1.3 ml/min";

      parameter Physiolibrary.Types.OsmoticPermeability CapillaryConductance
    "Capillary wall permeability for water. 0.6, 3.6, 1.3 ml/(kPa.min)";

      parameter Real[ :,3] InterstitialPressureVolumeData
    "{{600.0,-30.0,0.01},{2000.0,-4.8,0.0004},{5000.0,0.0,0.0004},{12000.0,50.0,0.01}}, {{1200.0,-30.0,0.01},{4800.0,-4.8,0.0004},{12000.0,0.0,0.0004},{24000.0,50.0,0.01}}, {{600.0,-30.0,0.02},{3000.0,-4.8,0.0004},{4000.0,-4.0,0.0004},{6000.0,50.0,0.03}}";
      parameter Physiolibrary.Types.Fraction ICFVFract
    "0.94. Ratio between non-RBC-ICFV and total ICFV, because red cells are not part of any torso ICF!";
      parameter Physiolibrary.Types.Fraction SizeFract "0.2,0.5,0.3";
      parameter Physiolibrary.Types.Fraction CalsFract "0.3,0.5,0.2";
      parameter Physiolibrary.Types.Fraction SweatFract "0.33,0.34,0.33";
      parameter Physiolibrary.Types.Fraction SkinFract "0.33,0.34,0.33";
      parameter Physiolibrary.Types.Fraction LungFract "0,1,0";

    Physiolibrary.Types.TorsoBusConnector torsoSpecific annotation (Placement(
        transformation(extent={{62,27},{80,44}}), iconTransformation(extent=
           {{30,10},{50,30}})));
    Physiolibrary.Osmotic.Interfaces.OsmoticPort_a vascularH2O
    "plasma capillary wall osmotic connector"
    annotation (Placement(transformation(extent={{-92,-42},{-72,-22}}),
        iconTransformation(extent={{-70,-10},{-50,10}})));
    Modelica.Blocks.Math.Gain calsFract(k=CalsFract) annotation (Placement(
          transformation(
          extent={{-6,-6},{6,6}},
          origin={48,-82})));

    //  Physiolibrary.Types.Volume volume;
    //  Physiolibrary.Types.VolumeFlowRate change;
    Physiolibrary.Osmotic.Sources.SolventInflux metabolicH2O(useSolutionFlowInput=true)
      annotation (Placement(transformation(extent={{68,-98},{88,-78}})));
    Physiolibrary.Osmotic.Sensors.FlowMeasure flowMeasure1 annotation (
      Placement(transformation(
        extent={{5,4},{-5,-4}},
        rotation=270,
        origin={24,45})));
    Physiolibrary.Osmotic.Sensors.FlowMeasure flowMeasure2 annotation (
      Placement(transformation(
        extent={{5,6},{-5,-6}},
        rotation=270,
        origin={8,25})));
    Physiolibrary.Osmotic.Components.Membrane capyMembrane(
      useHydraulicPressureInputs=true,
      useTemperatureInputs=false,
      cond=CapillaryConductance)
      annotation (Placement(transformation(extent={{-60,-24},{-40,-4}})));
    Physiolibrary.Osmotic.Components.SolventFlux lymph(useSolutionFlowInput=
        true) annotation (Placement(transformation(
        extent={{-10,10},{10,-10}},
        rotation=180,
        origin={-58,-70})));
    Physiolibrary.Blocks.Factors.Spline InterstitialPressureEffect(
      data={{-14.0,0.0,0.0},{-4.0,1.0,0.1},{2.0,8.0,4.0},{6.0,25.0,0.0}},
      Xscale=101325/760,
      y(unit="m3/s"))
    annotation (Placement(transformation(extent={{-48,-68},{-68,-48}})));
    Physiolibrary.Types.Constants.VolumeFlowRateConst flowConstant(k=
          NormalLymphFlow)
    annotation (Placement(transformation(extent={{-68,-50},{-60,-42}})));
    Physiolibrary.Osmotic.Components.OsmoticCell Interstitium(
        useImpermeableSolutesInput=true, volume_start=InterstitialWater_start,
      NumberOfMembraneTypes=2)
    "Iterstitium has two type of membranes: capillary membrane (index 1) and cell membrane (index 2)"
      annotation (Placement(transformation(extent={{18,-10},{-2,10}})));
    Physiolibrary.Blocks.Interpolation.Curve pressureOnVolume(
      Xscale=1e-6,
      Yscale=101325/760,
    data=InterstitialPressureVolumeData)
      annotation (Placement(transformation(extent={{4,-50},{-16,-30}})));
    Physiolibrary.Osmotic.Sources.SolventOutflux sweat(useSolutionFlowInput=
        true)
    annotation (Placement(transformation(extent={{10,10},{-10,-10}},
        rotation=270,
        origin={24,64})));
    Physiolibrary.Types.Constants.VolumeFlowRateConst Vapor(k=
        6.1666666666667e-09)
      annotation (Placement(transformation(extent={{-24,40},{-16,48}})));
    Physiolibrary.Osmotic.Sources.SolventOutflux insensibleSkinVapor(
        useSolutionFlowInput=true) annotation (Placement(transformation(
          extent={{10,10},{-10,-10}},
          rotation=270,
          origin={8,44})));
    Physiolibrary.Osmotic.Components.OsmoticCell ICF(useImpermeableSolutesInput=true,
        volume_start=IntracellularWater_start)
      annotation (Placement(transformation(extent={{94,-66},{74,-46}})));
    Physiolibrary.Osmotic.Components.Membrane cellMembrane(
      useTemperatureInputs=false,
      useHydraulicPressureInputs=false,
    cond(displayUnit="l/(kPa.min)") = 1.6666666666667e-08)
      annotation (Placement(transformation(extent={{62,-46},{82,-26}})));
    Physiolibrary.Types.BusConnector busConnector annotation (Placement(
        transformation(extent={{30,70},{50,90}}), iconTransformation(extent=
           {{30,70},{50,90}})));
    Modelica.Blocks.Math.Gain sizeFract(k=SizeFract*ICFVFract)
                                                     annotation (Placement(
          transformation(
          extent={{6,-6},{-6,6}},
          rotation=180,
          origin={90,72})));
    Modelica.Blocks.Math.Gain lungFract(k=LungFract)
    annotation (Placement(transformation(extent={{-24,22},{-16,30}})));
    Physiolibrary.Osmotic.Sources.SolventOutflux insensibleLungVapor(
      useSolutionFlowInput=true) annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={-6,26})));
    Modelica.Blocks.Math.Gain skinFract(k=SkinFract) annotation (Placement(
        transformation(
        extent={{-4,-4},{4,4}},
        origin={-6,44})));
    Modelica.Blocks.Math.Gain sweatFract(k=SweatFract) annotation (Placement(
        transformation(
        extent={{-4,-4},{4,4}},
        origin={10,64})));

    Physiolibrary.Types.VolumeFlowRate fromCapillaries, toLymph, evaporation, fromMetabolism;        
equation
    fromCapillaries = capyMembrane.q_in.q;
    toLymph = lymph.q_out.q;
    evaporation = insensibleLungVapor.q_in.q + insensibleSkinVapor.q_in.q + sweat.q_in.q;
    fromMetabolism = metabolicH2O.q_out.q;

    connect(calsFract.y, metabolicH2O.solutionFlow) annotation (Line(
        points={{54.6,-82},{78,-82},{78,-81}},
        color={0,0,127},
        smooth=Smooth.None));
    //  volume = extravascularH2O.WaterVolume;
    //  change = extravascularH2O.q_out.q;

    connect(vascularH2O, capyMembrane.q_in) annotation (Line(
        points={{-82,-32},{-82,-14},{-60,-14}},
        color={127,127,0},
        thickness=1,
        smooth=Smooth.None));
    connect(InterstitialPressureEffect.y, lymph.solutionFlow) annotation (Line(
        points={{-58,-62},{-58,-63}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(flowConstant.y,InterstitialPressureEffect. yBase) annotation (
        Line(
        points={{-59,-46},{-58,-46},{-58,-56}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(vascularH2O, lymph.q_out) annotation (Line(
        points={{-82,-32},{-82,-70},{-68,-70}},
        color={127,127,0},
        thickness=1,
        smooth=Smooth.None));
    connect(flowMeasure2.q_in, Interstitium.q_in[1]) annotation (Line(
        points={{8,20},{8,-0.5}},
        color={127,127,0},
        thickness=1,
        smooth=Smooth.None));
    connect(pressureOnVolume.u, Interstitium.volume) annotation (Line(
        points={{4,-40},{2,-40},{2,-10}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(pressureOnVolume.val, capyMembrane.hydraulicPressureOut) annotation (
        Line(
        points={{-16,-40},{-20,-40},{-20,-6},{-42,-6}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(pressureOnVolume.val, InterstitialPressureEffect.u) annotation (Line(
        points={{-16,-40},{-20,-40},{-20,-58},{-50,-58}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(sweat.q_in, flowMeasure1.q_out) annotation (Line(
        points={{24,58},{24,50}},
        color={127,127,0},
        thickness=1,
        smooth=Smooth.None));
    connect(insensibleSkinVapor.q_in, flowMeasure2.q_out) annotation (Line(
        points={{8,38},{8,30}},
        color={127,127,0},
        thickness=1,
        smooth=Smooth.None));
    connect(ICF.q_in[1], cellMembrane.q_out) annotation (Line(
        points={{84,-56},{86,-56},{86,-36},{82,-36}},
        color={127,127,0},
        thickness=1,
        smooth=Smooth.None));
    connect(metabolicH2O.q_out, ICF.q_in[1]) annotation (Line(
        points={{84,-88},{96,-88},{96,-56},{84,-56}},
        color={127,127,0},
        thickness=1,
        smooth=Smooth.None));
    connect(flowMeasure1.volumeFlowRate, torsoSpecific.Sweat_H2OOutflow)
    annotation (Line(
      points={{27.2,45},{54,45},{54,35.5},{71,35.5}},
      color={215,215,215},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}}));
    connect(flowMeasure2.volumeFlowRate, torsoSpecific.InsensibleSkin_H2O)
    annotation (Line(
      points={{12.8,25},{54,25},{54,35.5},{71,35.5}},
      color={215,215,215},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}}));
    connect(Interstitium.volume, torsoSpecific.InterstitialWater_Vol) annotation (
       Line(
        points={{2,-10},{54,-10},{54,35.5},{71,35.5}},
        color={215,215,215},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
    connect(Interstitium.impermeableSolutes[1], torsoSpecific.InterstitialProtein_Mass)
      annotation (Line(
        points={{16,5},{54,5},{54,35.5},{71,35.5}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
    connect(InterstitialPressureEffect.y, torsoSpecific.LymphFlow) annotation (
       Line(
        points={{-58,-62},{52,-62},{52,35.5},{71,35.5}},
        color={215,215,215},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
    connect(ICF.impermeableSolutes[1], sizeFract.y) annotation (Line(
        points={{92,-50},{96,-50},{96,72},{96.6,72}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(busConnector.OsmBody_ICFVActiveOsmoles, sizeFract.u) annotation (Line(
        points={{40,80},{40,72},{82.8,72}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
    connect(torsoSpecific.CapillaryRegionalPressure, capyMembrane.hydraulicPressureIn)
      annotation (Line(
        points={{71,35.5},{71,36},{56,36},{56,14},{-98,14},{-98,-6},{-58,-6}},
        color={170,255,255},
        smooth=Smooth.None,
      thickness=0.5),        Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
    connect(lungFract.y, insensibleLungVapor.solutionFlow) annotation (Line(
      points={{-15.6,26},{-13,26}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(insensibleLungVapor.q_in, Interstitium.q_in[1]) annotation (Line(
        points={{-6,20},{-6,10},{8,10},{8,-0.5}},
        color={127,127,0},
        thickness=1,
        smooth=Smooth.None));
    connect(Vapor.y, skinFract.u) annotation (Line(
      points={{-15,44},{-10.8,44}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(insensibleSkinVapor.solutionFlow, skinFract.y) annotation (Line(
      points={{1,44},{-1.6,44}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(sweat.solutionFlow, sweatFract.y) annotation (Line(
      points={{17,64},{14.4,64}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(busConnector.SweatDuct_H2OOutflow, sweatFract.u) annotation (Line(
      points={{40,80},{-66,80},{-66,64},{5.2,64}},
      color={0,0,255},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-6,3},{-6,3}}));
    connect(busConnector.HeatInsensibleLung_H2O, lungFract.u) annotation (
      Line(
      points={{40,80},{-66,80},{-66,26},{-24.8,26}},
      color={0,0,255},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-6,3},{-6,3}}));
    connect(torsoSpecific.Cell_H2O, ICF.volume) annotation (Line(
      points={{71,35.5},{54,35.5},{54,-66},{78,-66}},
      color={215,215,215},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-6,3},{-6,3}}));
    connect(busConnector.MetabolicH2O_Rate, calsFract.u) annotation (Line(
      points={{40,80},{-100,80},{-100,-82},{40.8,-82}},
      color={0,0,255},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-6,3},{-6,3}}));
    connect(Interstitium.impermeableSolutes[2], torsoSpecific.InterstitialOsmoles)
      annotation (Line(
        points={{16,7},{68,7},{68,35.5},{71,35.5}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(Interstitium.q_in[2], cellMembrane.q_in) annotation (Line(
        points={{8,0.5},{36,0.5},{36,-36},{62,-36}},
        color={127,127,0},
        thickness=1,
        smooth=Smooth.None));
    connect(flowMeasure1.q_in, Interstitium.q_in[1]) annotation (Line(
      points={{24,40},{24,10},{8,10},{8,-0.5}},
      color={127,127,0},
      thickness=1,
      smooth=Smooth.None));
    connect(Interstitium.q_in[1], lymph.q_in) annotation (Line(
      points={{8,-0.5},{-18,-0.5},{-18,-70},{-48,-70}},
      color={127,127,0},
      thickness=1,
      smooth=Smooth.None));
    connect(capyMembrane.q_out, Interstitium.q_in[1]) annotation (Line(
      points={{-40,-14},{-18,-14},{-18,-0.5},{8,-0.5}},
      color={127,127,0},
      thickness=1,
      smooth=Smooth.None));
    annotation ( Icon(coordinateSystem(
            preserveAspectRatio=false, extent={{-100,-100},{100,100}}),
          graphics={                 Text(
            extent={{-139,-101},{142,-126}},
            lineColor={0,0,255},
            textString="%name")}));
end Torso;
