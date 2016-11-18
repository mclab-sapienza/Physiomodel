within Physiomodel.Water.WaterCompartments;
model GI_Absorption
    import QHP = Physiomodel;
    extends Physiolibrary.Icons.GILumen;

    Physiolibrary.Osmotic.Interfaces.OsmoticPort_b vascularH2O
    "plasma osmolarity on cell membranes"
              annotation (Placement(transformation(extent={{80,44},{100,
        64}}), iconTransformation(extent={{90,-10},{110,10}})));
    parameter Physiolibrary.Types.Osmolarity Fiber = 0.043;
    //parameter Real Na_EqToAllConnectedOsm(final displayUnit="mOsm/mEq") = 2;
    //parameter Real K_EqToAllConnectedOsm(final displayUnit="mOsm/mEq") = 2;
    //parameter Real initialVolume(final quantity="Volume", final displayUnit="ml") =  1000;

    //    Na_EqToAllConnectedOsm=Na_EqToAllConnectedOsm,
    //    K_EqToAllConnectedOsm=K_EqToAllConnectedOsm,
    Outtake vomitus
    annotation (Placement(transformation(extent={{-7,-7},{7,7}},
      rotation=180,
      origin={-34,79})));
    Outtake diarrhea
    annotation (Placement(transformation(extent={{-27,60},{-41,74}})));
    Physiolibrary.Osmotic.Components.Membrane absorption(cond=0.15e-6/(8.314*310.15)
      /60) annotation (Placement(transformation(
      extent={{-8,-8},{8,8}},
      origin={18,22})));
    Physiolibrary.Osmotic.Sources.SolventInflux   Diet(useSolutionFlowInput=
    true)
    annotation (Placement(transformation(extent={{-59,-52},{-49,-42}})));
    Physiolibrary.Osmotic.Sensors.FlowMeasure flowMeasure annotation (
    Placement(transformation(
    extent={{-7,-6},{7,6}},
    rotation=90,
    origin={42,33})));
    Physiolibrary.Blocks.Factors.Spline DietThirst(data={{233,0.0,0},{253,1.0,0.1},{
      313,15.0,0}})
    annotation (Placement(transformation(extent={{-64,-32},{-44,-12}})));
    Physiolibrary.Types.Constants.VolumeFlowRateConst Normal(k(displayUnit="ml/day")=
       2.3148148148148e-08)
    annotation (Placement(transformation(extent={{-68,-14},{-60,-6}})));
    Physiolibrary.Types.BusConnector busConnector annotation (Placement(
    transformation(extent={{-98,80},{-78,100}}), iconTransformation(
      extent={{-106,-10},{-86,10}})));
    Physiolibrary.Osmotic.Sensors.FlowMeasure   flowMeasure1 annotation (
    Placement(transformation(
    extent={{-7,7},{7,-7}},
    rotation=90,
    origin={-31,-1})));
    Physiolibrary.Osmotic.Components.OsmoticCell GILumen(
    useImpermeableSolutesInput=true, volume_start=0.0009492)
    annotation (Placement(transformation(extent={{-34,12},{-14,32}})));
    Modelica.Blocks.Math.Add3 osmoles(
    k1=2,
    k2=2,
    k3=1) annotation (Placement(transformation(extent={{-48,22},{-36,34}})));
equation

    connect(absorption.q_out, flowMeasure.q_in) annotation (Line(
        points={{26,22},{42,22},{42,26}},
        color={127,127,0},
        thickness=1,
        smooth=Smooth.None));
    connect(Normal.y, DietThirst.yBase) annotation (Line(
        points={{-59,-10},{-54,-10},{-54,-20}},
        color={0,0,127},
        smooth=Smooth.None));

    connect(flowMeasure.volumeFlowRate, busConnector.GILumenVolume_Absorption)
    annotation (Line(
      points={{46.8,33},{98,33},{98,90},{-88,90}},
      color={0,0,127},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}}));
    connect(busConnector.GILumenDiarrhea_H2OLoss, diarrhea.outflow)
      annotation (Line(
        points={{-88,90},{-88,64.2},{-41,64.2}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
    connect(busConnector.GILumenVomitus_H2OLoss, vomitus.outflow)
      annotation (Line(
        points={{-88,90},{-88,81.8},{-41,81.8}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
    connect(busConnector.GILumenVolume_Intake, flowMeasure1.volumeFlowRate)
    annotation (Line(
      points={{-88,90},{-88,-1},{-36.6,-1}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-6,3},{-6,3}}));
    connect(busConnector.GILumenVomitus_H2OTarget, vomitus.H2OTarget)
      annotation (Line(
        points={{-88,90},{-88,76},{-34,76},{-34,76.2}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
    connect(busConnector.GILumenDiarrhea_H2OTarget, diarrhea.H2OTarget)
      annotation (Line(
        points={{-88,90},{-88,69.8},{-34,69.8}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
    connect(busConnector.Osmreceptors, DietThirst.u) annotation (Line(
        points={{-88,90},{-88,-22},{-62,-22}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
    connect(diarrhea.H2OLoss, vomitus.H2OLoss) annotation (Line(
        points={{-27,67},{-24,67},{-24,79},{-27,79}},
        color={127,127,0},
        thickness=1,
        smooth=Smooth.None));
    connect(Diet.q_out, flowMeasure1.q_in) annotation (Line(
        points={{-51,-47},{-31,-47},{-31,-8}},
        color={127,127,0},
        thickness=1,
        smooth=Smooth.None));
    connect(busConnector.GILumenSodium_Mass, osmoles.u1) annotation (Line(
        points={{-88,90},{-88,32.8},{-49.2,32.8}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
    connect(busConnector.GILumenPotassium_Mass, osmoles.u2) annotation (Line(
        points={{-88,90},{-88,28},{-49.2,28}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
    connect(busConnector.GILumenFiber_Mass, osmoles.u3) annotation (Line(
        points={{-88,90},{-88,23.2},{-49.2,23.2}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
    connect(GILumen.volume, busConnector.GILumenVolume_Mass) annotation (Line(
        points={{-18,12},{-10,12},{-10,90},{-88,90}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
    connect(GILumen.volume, vomitus.H2OVolume) annotation (Line(
        points={{-18,12},{-10,12},{-10,76.2},{-29.8,76.2}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(GILumen.volume, diarrhea.H2OVolume) annotation (Line(
        points={{-18,12},{-10,12},{-10,69.8},{-29.8,69.8}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(diarrhea.H2OLoss, GILumen.q_in[1]) annotation (Line(
        points={{-27,67},{-24,67},{-24,22}},
        color={127,127,0},
        thickness=1,
        smooth=Smooth.None));
    connect(osmoles.y, GILumen.impermeableSolutes[1]) annotation (Line(
        points={{-35.4,28},{-32,28}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(GILumen.q_in[1], flowMeasure1.q_out) annotation (Line(
        points={{-24,22},{-32,22},{-32,6},{-31,6}},
        color={127,127,0},
        thickness=1,
        smooth=Smooth.None));
    connect(GILumen.q_in[1], absorption.q_in) annotation (Line(
        points={{-24,22},{10,22}},
        color={127,127,0},
        thickness=1,
        smooth=Smooth.None));
    connect(DietThirst.y, Diet.solutionFlow) annotation (Line(
        points={{-54,-26},{-54,-43.5}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(vascularH2O, flowMeasure.q_out) annotation (Line(
        points={{90,54},{42,54},{42,40}},
        color={127,127,0},
        thickness=1,
        smooth=Smooth.None));
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
            preserveAspectRatio=true, extent={{-100,-100},{100,100}}),
          graphics={Text(
            extent={{-102,124},{98,108}},
            lineColor={0,0,255},
            textString="%name")}));
end GI_Absorption;
