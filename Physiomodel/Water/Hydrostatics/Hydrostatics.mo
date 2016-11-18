within Physiomodel.Water.Hydrostatics;
model Hydrostatics
  extends Physiolibrary.Icons.Hydrostatics;

  parameter Real TiltTable_Degrees( final quantity="Angle", final displayUnit="Deg")= 0;

  TorsoHydrostatics UpperTorsoHydrostatics(
  artyFractGz={0,1,1,sin(Modelica.SIunits.Conversions.from_deg(
    TiltTable_Degrees)),1.76947},
  veinFractGz={0,1,1,sin(Modelica.SIunits.Conversions.from_deg(
    TiltTable_Degrees)),1.76947},
  TorsoHeight=-0.1)
  annotation (Placement(transformation(extent={{-12,34},{16,62}})));

  TorsoHydrostatics LowerTorsoHydrostatics(
  artyFractGz={0,0.7,1,sin(Modelica.SIunits.Conversions.from_deg(
    TiltTable_Degrees)),0.0190301},
  veinFractGz={0.2,0.7,1,0.2 + sin(Modelica.SIunits.Conversions.from_deg(
    TiltTable_Degrees)),0.0190301},
  TorsoHeight=0.5)
  annotation (Placement(transformation(extent={{-12,-42},{16,-14}})));

  TorsoHydrostatics MiddleTorsoHydrostatics(
  artyFractGz={0,1,1,sin(Modelica.SIunits.Conversions.from_deg(
    TiltTable_Degrees)),-0.00024891},
  veinFractGz={0,1,1,sin(Modelica.SIunits.Conversions.from_deg(
    TiltTable_Degrees)),-0.00024891},
  TorsoHeight=0.04)
  annotation (Placement(transformation(extent={{-12,-4},{16,24}})));

  Physiolibrary.Types.Constants.FractionConst             PumpEffect(k=1)
  annotation (Placement(transformation(extent={{-40,32},{-36,36}})));
  Physiolibrary.Types.RealIO.PressureInput
                                 SystemicArtys_Pressure
  annotation (Placement(transformation(extent={{-44,56},{-40,60}}),
    iconTransformation(extent={{-100,-30},{-80,-10}})));
  Physiolibrary.Types.RealIO.PressureInput
                                 RightAtrium_Pressure
  annotation (Placement(transformation(extent={{-34,66},{-30,70}}),
    iconTransformation(extent={{-100,10},{-80,30}})));
  Physiolibrary.Types.RealIO.FractionInput
                                 LegMusclePump_Effect
  annotation (Placement(transformation(extent={{-46,-42},{-38,-34}}),
    iconTransformation(extent={{-100,-90},{-80,-70}})));
  Modelica.Blocks.Interfaces.RealInput Status_Posture
  "Lying, Sitting, Standing or Tilting"                                     annotation (Placement(transformation(
      extent={{-90,22},{-86,26}}), iconTransformation(extent={{-100,70},{-80,
        90}})));
  Physiolibrary.Types.RealIO.PressureOutput
                                  RegionalPressure_UpperCapy
                                      annotation (Placement(transformation(
      extent={{42,44},{50,52}}),     iconTransformation(extent={{90,20},{
        110,40}})));
  Physiolibrary.Types.RealIO.PressureOutput
                                  RegionalPressure_MiddleCapy
                                      annotation (Placement(transformation(
      extent={{42,6},{50,14}}),      iconTransformation(extent={{90,-20},{
        110,0}})));
  Physiolibrary.Types.RealIO.PressureOutput
                                  RegionalPressure_LowerCapy
                                      annotation (Placement(transformation(
      extent={{42,-32},{50,-24}}),   iconTransformation(extent={{90,-60},{
        110,-40}})));
  Real2Posture real2Posture
  annotation (Placement(transformation(extent={{-72,20},{-64,28}})));
equation
  connect(RightAtrium_Pressure,LowerTorsoHydrostatics. toPressure) annotation (
  Line(
  points={{-32,68},{-28,68},{-28,-30.8},{-12,-30.8}},
  color={0,0,127},
  smooth=Smooth.None));
  connect(RightAtrium_Pressure,MiddleTorsoHydrostatics. toPressure) annotation (
  Line(
  points={{-32,68},{-28,68},{-28,7.2},{-12,7.2}},
  color={0,0,127},
  smooth=Smooth.None));
  connect(RightAtrium_Pressure,UpperTorsoHydrostatics. toPressure) annotation (
  Line(
  points={{-32,68},{-28,68},{-28,45.2},{-12,45.2}},
  color={0,0,127},
  smooth=Smooth.None));
  connect(PumpEffect.y,UpperTorsoHydrostatics. Pump_Effect) annotation (Line(
  points={{-35.5,34},{-26,34},{-26,36.8},{-12,36.8}},
  color={0,0,127},
  smooth=Smooth.None));
  connect(MiddleTorsoHydrostatics.Pump_Effect,PumpEffect. y) annotation (Line(
  points={{-12,-1.2},{-26,-1.2},{-26,34},{-35.5,34}},
  color={0,0,127},
  smooth=Smooth.None));
  connect(SystemicArtys_Pressure,LowerTorsoHydrostatics. fromPressure)
  annotation (Line(
  points={{-42,58},{-30,58},{-30,-25.2},{-12,-25.2}},
  color={0,0,127},
  smooth=Smooth.None));
  connect(SystemicArtys_Pressure,MiddleTorsoHydrostatics. fromPressure)
  annotation (Line(
  points={{-42,58},{-30,58},{-30,12.8},{-12,12.8}},
  color={0,0,127},
  smooth=Smooth.None));
  connect(SystemicArtys_Pressure,UpperTorsoHydrostatics. fromPressure)
  annotation (Line(
  points={{-42,58},{-30,58},{-30,50.8},{-12,50.8}},
  color={0,0,127},
  smooth=Smooth.None));
  connect(LegMusclePump_Effect,LowerTorsoHydrostatics. Pump_Effect) annotation (
  Line(
  points={{-42,-38},{-32,-38},{-32,-39.2},{-12,-39.2}},
  color={0,0,127},
  smooth=Smooth.None));
  connect(UpperTorsoHydrostatics.Capy, RegionalPressure_UpperCapy) annotation (
  Line(
  points={{16,48},{46,48}},
  color={0,0,127},
  smooth=Smooth.None));
  connect(MiddleTorsoHydrostatics.Capy, RegionalPressure_MiddleCapy)
  annotation (Line(
  points={{16,10},{46,10}},
  color={0,0,127},
  smooth=Smooth.None));
  connect(LowerTorsoHydrostatics.Capy, RegionalPressure_LowerCapy) annotation (
  Line(
  points={{16,-28},{46,-28}},
  color={0,0,127},
  smooth=Smooth.None));

  connect(UpperTorsoHydrostatics.Status_Posture, real2Posture.y) annotation (
  Line(
  points={{-12,59.2},{-32,59.2},{-32,24},{-63.2,24}},
  color={0,127,127},
  smooth=Smooth.None));

  connect(real2Posture.y, MiddleTorsoHydrostatics.Status_Posture) annotation (
  Line(
  points={{-63.2,24},{-32,24},{-32,21.2},{-12,21.2}},
  color={0,127,127},
  smooth=Smooth.None));
  connect(LowerTorsoHydrostatics.Status_Posture, real2Posture.y) annotation (
  Line(
  points={{-12,-16.8},{-32,-16.8},{-32,24},{-63.2,24}},
  color={0,127,127},
  smooth=Smooth.None));
  connect(Status_Posture, real2Posture.u) annotation (Line(
  points={{-88,24},{-72.8,24}},
  color={0,0,127},
  smooth=Smooth.None));
  annotation ( Icon(coordinateSystem(
      preserveAspectRatio=true, extent={{-100,-100},{100,100}}),
    graphics={
    Text(
      extent={{-100,122},{100,102}},
      lineColor={0,0,255},
      textString="%name"),
    Rectangle(extent={{-100,100},{100,-100}}, lineColor={0,0,0})}));
end Hydrostatics;