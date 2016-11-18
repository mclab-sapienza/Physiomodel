within Physiomodel.Water.Hydrostatics;
model TorsoHydrostatics
    parameter Physiolibrary.Types.Fraction Alpha =   0.1667
    "torso: capilary pressure coeficient between artery and vein pressure";
    parameter Physiolibrary.Types.Acceleration GravityAcceleration = 9.81
    "gravity constant";
    parameter Physiolibrary.Types.Density BloodDensity = 1060
    "blood density";

    parameter Physiolibrary.Types.Position TorsoHeight
    "torso: center of gravity - height";

    parameter Physiolibrary.Types.Fraction artyFractGz[Posture]
    "torso: arty hydrostatic effects for posturing";
    parameter Physiolibrary.Types.Fraction veinFractGz[Posture]
    "torso: vein hydrostatic effects for posturing";

    Physiolibrary.Types.Fraction ArtyFractGz;
    Physiolibrary.Types.Fraction VeinFractGz;
    Physiolibrary.Types.Pressure TorsoArtyGradient;
    Physiolibrary.Types.Pressure TorsoVeinGradient;
    Physiolibrary.Types.Pressure Arty;
    Physiolibrary.Types.Pressure Vein;

    Physiolibrary.Types.RealIO.FractionInput
                                   Pump_Effect "xNormal"
                                         annotation (Placement(transformation(extent={{
          -120,-100},{-80,-60}}), iconTransformation(extent={{-120,-100},{-80,
          -60}})));
    Physiolibrary.Types.RealIO.PressureInput
                                   fromPressure
    "torso: systemic arteries pressure"                               annotation (Placement(transformation(extent={{
          -120,0},{-80,40}}), iconTransformation(extent={{-120,0},{-80,40}})));
    Physiolibrary.Types.RealIO.PressureInput
                                   toPressure
    "torso: systemic veins pressure"                                     annotation (Placement(transformation(extent={{-120,
          -40},{-80,0}}),       iconTransformation(extent={{-120,-40},{-80,0}})));
    PostureInput Status_Posture "Lying, Sitting, Standing or Tilting"           annotation (Placement(transformation(
        extent={{-120,60},{-80,100}}), iconTransformation(extent={{-120,60},{
          -80,100}})));
    Physiolibrary.Types.RealIO.PressureOutput Capy
    "torso: average capilaries pressure"                                                        annotation (Placement(transformation(extent={{80,-20},
          {120,20}}), iconTransformation(extent={{80,-20},{120,20}})));
equation
    ArtyFractGz = artyFractGz[Status_Posture];
    VeinFractGz = veinFractGz[Status_Posture]; //in legs veins are valves

    TorsoArtyGradient  =  TorsoHeight * GravityAcceleration * BloodDensity * ArtyFractGz;  //Hydrostatic pressure: P=ro.g.h
    //cm *  0.01 m/cm * 9.81 m/s² * 1060 kg/m3 * 1/133.322 mmHg/Pa
    //= height[cm] * 0.77996129671022036873134216408395 [mmHg]
    //Blood density = 1060 kg/m3: Cutnell, John & Johnson, Kenneth. Physics, Fourth Edition. Wiley, 1998: 308.

    //bloodDensity = 1060 kg/m3
    //gravityAcceleration = 9.81 m/s2
    //Pa2mmHg = 1/133.322 mmHg/Pa
    //cm2m = 0.01 m/cm
    //averageHydrostaticHeight = TorsoCM * postureCoef[Status_Posture]
    //hydrostaticPressure = averageHydrostaticHeight * cm2m * bloodDensity * gravityAcceleration * Pa2mmHg
    //                    = 0.77996 * averageHydrostaticHeight

    TorsoVeinGradient  =  TorsoHeight * GravityAcceleration * BloodDensity * VeinFractGz;

    Arty  = max( (fromPressure + TorsoArtyGradient), 0);
    Vein  = max( toPressure + ( TorsoVeinGradient * Pump_Effect), 0);  //only lower torso has LegMusclePump_Effect
    Capy  = max( ( Alpha * Arty)   + ( 1.0 - Alpha)  * Vein, 0);

    annotation (
    Documentation(info="<HTML>
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
    </html>"));
end TorsoHydrostatics;