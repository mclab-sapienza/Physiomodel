within Physiomodel.CardioVascular.Circulation.develop;
model SystemicCirculation_Simplified
    extends SystemicCirculationBase2_Simplified;
    Physiolibrary.Hydraulic.Components.Conductor legsArtys(Conductance=
          5.0004105056376e-009)
      annotation (Placement(transformation(extent={{80,-80},{64,-64}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant const8(k=0)
      annotation (Placement(transformation(extent={{93,-62},{86,-55}})));
    Physiolibrary.Hydraulic.Components.HydrostaticColumn
      hydrostaticDifference(useExternalG=true, useHeightInput=true)
      annotation (Placement(transformation(
          extent={{-10,-10},{10,10}},
          origin={54,-66})));
      SequesteredBlood sequesteredBlood(data={{0,0,10^(-10)},{50,97,1.0},{200,150,0.5}},
          initialVol=50.0044,
        pressureControledCompartment(stateName="BVSeqArtys.Vol"))
        annotation (Placement(transformation(extent={{80,-82},{100,-62}})));
      SequesteredBlood sequesteredBlood1(                data={{0,-100,2.00},{150,11,
            0.11},{600,50,0.15}}, initialVol=120.691,
        pressureControledCompartment(stateName="BVSeqVeins.Vol"))
        annotation (Placement(transformation(extent={{-62,-76},{-44,-58}})));
    Physiolibrary.Hydraulic.Components.Conductor legsVeins(Conductance=
          1.2501026264094e-008)
      annotation (Placement(transformation(extent={{-42,-74},{-28,-60}})));
    Physiolibrary.Hydraulic.Components.HydrostaticColumn
      hydrostaticDifference1(
      useExternalG=true,
      useHeightInput=true,
      usePumpEffect=true)
      annotation (Placement(transformation(extent={{-5,-72},{-25,-52}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant const12(k=0)
      annotation (Placement(transformation(extent={{-52,-54},{-59,-47}})));
equation
    connect(legsArtys.q_in,sequesteredBlood. referencePoint) annotation (Line(
      points={{76.8,-72},{90,-72}},
      color={0,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(sequesteredBlood.ExternalPressure,const8. y) annotation (Line(
      points={{81,-62},{81,-58.5},{85.65,-58.5}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(legsArtys.q_out,hydrostaticDifference. q_down) annotation (Line(
      points={{67.2,-72},{63.5,-72},{63.5,-71.6},{61,-71.6}},
      color={0,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(hydrostaticDifference.q_up, systemicArtys.q_in) annotation (Line(
    points={{61.2,-61.2},{62,-56},{62,0},{75.5,0},{75.5,0.5}},
    color={0,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(sequesteredBlood1.ExternalPressure,const12. y) annotation (Line(
      points={{-61.1,-58},{-61.1,-50.5},{-59.35,-50.5}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(sequesteredBlood1.referencePoint,legsVeins. q_in) annotation (
      Line(
      points={{-53,-67},{-39.2,-67}},
      color={0,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(legsVeins.q_out,hydrostaticDifference1. q_down) annotation (
      Line(
      points={{-30.8,-67},{-30.8,-67.4},{-22,-67.4}},
      color={0,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(hydrostaticDifference1.q_up,
    systemicVeinsElacticBloodCompartment.referencePoint) annotation (Line(
      points={{-22.2,-57.2},{-22.2,0},{-44,0}},
      color={0,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(hydrostaticDifference1.height, busConnector.LowerTorsoVeinHeight)
    annotation (Line(
      points={{-8.9,-62.3},{46,-62.3},{46,50}},
      color={0,0,127},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}}));
    connect(hydrostaticDifference1.pumpEffect, busConnector.Exercise_MusclePump_Effect)
    annotation (Line(
      points={{-13.5,-52.5},{46,-52.5},{46,50}},
      color={0,0,127},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}}));
    connect(hydrostaticDifference.height, busConnector.LowerTorsoArtyHeight)
    annotation (Line(
      points={{47.9,-66.5},{46,-66.5},{46,50}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(sequesteredBlood1.Vol, busConnector.LegVeins_DeoxygenatedBloodVolume)
    annotation (Line(
      points={{-56.6,-76},{-58,-76},{-58,-84},{46,-84},{46,50}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(sequesteredBlood.Vol, busConnector.LegArtys_OxygenatedBloodVolume)
    annotation (Line(
      points={{86,-82},{86,-84},{46,-84},{46,50}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(G.y,hydrostaticDifference1. G) annotation (Line(
      points={{34,21.6},{34,-84},{-16.5,-84},{-16.5,-70.5}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(G.y,hydrostaticDifference. G) annotation (Line(
      points={{34,21.6},{34,-84},{55.5,-84},{55.5,-74.5}},
      color={0,0,127},
      smooth=Smooth.None));
end SystemicCirculation_Simplified;