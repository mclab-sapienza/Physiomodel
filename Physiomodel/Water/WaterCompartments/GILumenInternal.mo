within Physiomodel.Water.WaterCompartments;



model GILumenInternal
    extends Physiolibrary.SteadyStates.Interfaces.SteadyState(state_start=mass_start);
    extends Physiolibrary.Icons.GILumen;

    Physiolibrary.Types.RealIO.AmountOfSubstanceInput
                                     GILumenSodium
    "sodium in gastro intestinal lumen"                                                                  annotation (Placement(transformation(extent={{120,20},
          {80,60}}),
                 iconTransformation(extent={{-100,70},{-80,90}})));
    Physiolibrary.Types.RealIO.AmountOfSubstanceInput
                                     GILumenPotassium
    "potasium in gastro intestinal lumen"                     annotation (Placement(transformation(
        extent={{120,60},{80,100}}),iconTransformation(extent={{-100,10},{-80,
          30}})));

    Physiolibrary.Osmotic.Interfaces.OsmoticPort_b absorbtion annotation (
    Placement(transformation(extent={{60,-20},{100,20}}),
    iconTransformation(extent={{90,-10},{110,10}})));

    /*Physiolibrary.Hydraulic.Interfaces.HydraulicPort_a env annotation (
    Placement(transformation(extent={{-120,-60},{-80,-20}}),
    iconTransformation(extent={{-120,-60},{-80,-20}})));
    */
    //parameter Physiolibrary.Types.Osmolarity Fiber_mass = 0.043;
    //parameter Real Na_EqToAllConnectedOsm(final displayUnit="mOsm/mEq") = 2;
    //parameter Real K_EqToAllConnectedOsm(final displayUnit="mOsm/mEq") = 2;
    //parameter Real initialVolume(final quantity="Volume", final displayUnit="ml") = initialValue;
    parameter Physiolibrary.Types.Volume mass_start= 0.000949201;
    Physiolibrary.Types.Volume mass(start= mass_start)
    "water volume in gastro intestinal lumen";
    Physiolibrary.Types.Osmolarity OsmNa;
    Physiolibrary.Types.Osmolarity OsmK;
    //Physiolibrary.Types.Osmolarity Fiber;

    Physiolibrary.Types.RealIO.VolumeOutput
                                      Vol
                                   annotation (Placement(transformation(
        extent={{82,60},{122,100}}), iconTransformation(extent={{82,60},{122,100}})));
    Physiolibrary.Types.RealIO.OsmolarityInput Fiber
    "dietary fiber in gastro intestinal lumen"   annotation (Placement(
      transformation(extent={{120,60},{80,100}}), iconTransformation(extent={{
      -100,-50},{-80,-30}})));
initial equation
    //mass = 949.201;
equation
    //   der(mass) = (intake.q + absorbtion.q + outtake.q)/Library.SecPerMin;

    //  env.pressure = Vol; //used in diarrea or vomitus calculation
    //   OsmNa=Na_EqToAllConnectedOsm*GILumenSodium_Mass/mass;
    //   OsmK = K_EqToAllConnectedOsm*GILumenPotassium_Mass/mass;
    OsmNa=2*GILumenSodium/mass;
    OsmK =2*GILumenPotassium/mass;

    //   Fiber =Fiber_mass; ///mass;
    absorbtion.o = (Fiber + OsmNa + OsmK);

    Vol = mass;

    state = mass;
    change = (            absorbtion.q)/60;
           /*env.q + */
    annotation (
    Documentation(info="<HTML>
    <PRE>
    QHP 2008 / GILumenH2O.REF



    Volume ========================================

    Typical lumen volume is 1000 mL on an intake of 1.4 mL/Min.
    This number is based on lumen volume being 1.4% body weight
    from

    JCI 36:289-296, 1957.

    Data suggests a 1L oral load is nearly all absorbed in
    1 Hr.  Average rate would be 17 mL/Hr with a peak rate
    of about 30.

    Baldes & Smirk. J.Physiol. 82:62,1934.

    Osmolar gradient is assumed to be 0.200 mOsm/mL.

    Rate = Perm * Grad
    30 = Perm * 0.200
    Perm = 150

    Temperature ===================================

    Typical lumen heat content is 155 kCal.

    Specific heat (SH) of H2O is 0.001 (kCal/G)/DegK.

    To get temperature from heat

    DegK = 1000.0 * kCal/G (or mL)
    DegC = DegK - 273.15
    DegF = ( 9 / 5 ) * DegC + 32

    To get heat from temperature

    kCal = 0.001 * DegK * mL
    kCal/Min = 0.001 * DegK * mL/Min
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
    </html>"), Icon(coordinateSystem(
        preserveAspectRatio=false,extent={{-100,-100},{100,100}}),
      graphics={
      Text(
        extent={{-100,-10},{100,-26}},
        lineColor={0,0,255},
        textString="(initial %initialVolume ml)"),
      Rectangle(extent={{-100,100},{100,-100}}, lineColor={0,0,0}),
      Text(
        extent={{-100,120},{100,104}},
        lineColor={0,0,255},
        textString="%name")}));
end GILumenInternal;
