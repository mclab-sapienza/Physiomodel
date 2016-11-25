within Physiomodel.CardioVascular.Circulation;
model SystemicCirculationFullDynamic
    extends Physiolibrary.Icons.SystemicCirculation;

    Physiolibrary.Hydraulic.Interfaces.HydraulicPort_a q_in "Blood inflow"
        annotation (extent=[-10,-110; 10,-90], Placement(transformation(extent=
            {{90,-10},{110,10}}), iconTransformation(extent={{90,-10},{110,
            10}})));
    Physiolibrary.Hydraulic.Interfaces.HydraulicPort_b q_out "Blood outflow"
        annotation (extent=[-10,-110; 10,-90], Placement(transformation(extent=
            {{-110,-10},{-90,10}}), iconTransformation(extent={{-110,-10},{
            -90,10}})));

        /*
          Library.PressureFlow.NegativePressureFlow fromSystemicVeins annotation (
              Placement(transformation(extent={{-110,-10},{-90,10}}),iconTransformation(
                  extent={{-112,44},{-92,64}})));
          Library.PressureFlow.PositivePressureFlow systemicArteries
            annotation (Placement(transformation(extent={{88,-10},{108,10}}),
            iconTransformation(extent={{90,46},{110,66}})));
        */

    Physiolibrary.Hydraulic.Components.ElasticVessel systemicArtys(
        stateName="SystemicArtys.Vol",
        useV0Input=true,
        useComplianceInput=false,
        volume_start=0.00100036,
        Compliance=1.1625954425608e-08,
        useExternalPressureInput=false,
        ExternalPressure=0)
        annotation (Placement(transformation(extent={{65,-10},{86,11}})));
    Physiolibrary.Types.Constants.VolumeConst               V0_artys(k=0.00085)
        annotation (Placement(transformation(extent={{98,18},{88,28}})));
    Physiolibrary.Types.Constants.HydraulicComplianceConst SystemicVeinsCompliance(k=6.645545561992547e-007)
        annotation (Placement(transformation(extent={{-27,10},{-35,18}})));
    PeripheralCirculation peripheral
        annotation (Placement(transformation(extent={{-2,0},{26,28}})));
    Physiolibrary.Hydraulic.Sources.UnlimitedPump volumeCorrections(
      useSolutionFlowInput=true)
        annotation (Placement(transformation(extent={{-28,24},{-42,38}})));
    SystemicVeins veins(BaseConductance(displayUnit="ml/(mmHg.min)")=1.2000985213531e-07) "scaled to coronary vessels reorganisation"
        annotation (Placement(transformation(extent={{-72,-8},{-56,8}})));
    SystemicVeinsElacticBloodCompartment systemicVeinsElacticBloodCompartment
          annotation (Placement(transformation(extent={{-54,-10},{-34,10}})));
    Physiolibrary.Types.Constants.PressureConst SystemicVeinsExternalPressure(
      k=0)
    annotation (Placement(transformation(extent={{-36,16},{-43,23}})));
    Physiolibrary.Types.BusConnector busConnector
        "signals of organ bood flow resistence" annotation (Placement(
            transformation(extent={{36,40},{56,60}}), iconTransformation(extent=
               {{-110,32},{-94,48}})));
    CollapsingVeins collapsedVeins annotation (Placement(transformation(
            extent={{10,10.5},{-10,-10.5}},
            rotation=180,
            origin={-84.5,0})));
    Physiolibrary.Hydraulic.Components.HydrostaticColumn gravityHydrostaticDifference(useExternalG=true, useHeightInput=true)
        annotation (Placement(transformation(
            extent={{-10,-10},{10,10}},
            origin={61,35})));
    Physiolibrary.Hydraulic.Sensors.PressureMeasure pressureMeasure
        annotation (Placement(transformation(
            extent={{8.5,-8.5},{-8.5,8.5}},
            origin={78.5,45.5})));
    Modelica.Blocks.Math.Gain G(k=9.81) annotation (Placement(transformation(
              extent={{4,-4},{-4,4}},
              rotation=90,
              origin={34,26})));
    Microcirculation.LeftHeart leftCororaryCirculation(
          BasicLargeVeselsConductance(displayUnit="ml/(mmHg.min)")=
          5.0004105056377e-09, BasicSmallVeselsConductance(displayUnit=
              "ml/(mmHg.min)") = 3.1252565660236e-10)
        "scaled to normal pressure gradient 94 mmHg"
        annotation (Placement(transformation(extent={{-10,76},{10,96}})));
    Microcirculation.RightHeart rightCororaryCirculation(
          BasicLargeVeselsConductance(displayUnit="ml/(mmHg.min)")=
          1.2501026264094e-09, BasicSmallVeselsConductance(displayUnit=
              "ml/(mmHg.min)") = 6.2505131320471e-11)
        "scaled to normal pressure gradient 94 mmHg"
        annotation (Placement(transformation(extent={{-42,62},{-22,82}})));
    SplanchnicCirculation splanchnicCirculation
        annotation (Placement(transformation(extent={{-6,-44},{32,-6}})));
    Physiolibrary.Hydraulic.Components.Conductor legsArtys(Conductance=
        5.0004105056377e-09)
        annotation (Placement(transformation(extent={{80,-86},{64,-70}})));
    Physiolibrary.Types.Constants.PressureConst const8(k=0)
        annotation (Placement(transformation(extent={{93,-68},{86,-61}})));
    Physiolibrary.Hydraulic.Components.HydrostaticColumn hydrostaticDifference(useExternalG=true, useHeightInput=true)
        annotation (Placement(transformation(
            extent={{-10,-10},{10,10}},
            origin={54,-72})));
    SequesteredBlood sequesteredBlood(data={{0,0,10^(-10)},{50,97,1.0},{200,150,0.5}},
        pressureControledCompartment(stateName="BVSeqArtys.Vol"),
        initialVol=5.00044e-05)
        annotation (Placement(transformation(extent={{80,-88},{100,-68}})));
    SequesteredBlood sequesteredBlood1( data={{0,-100,2.00},{150,11,
        0.11},{600,50,0.15}},
        pressureControledCompartment(stateName="BVSeqVeins.Vol"),
        initialVol=0.000120691)
        annotation (Placement(transformation(extent={{-62,-82},{-44,-64}})));
    Physiolibrary.Hydraulic.Components.Conductor legsVeins(Conductance=
        1.2501026264094e-08)
        annotation (Placement(transformation(extent={{-42,-80},{-28,-66}})));
    Physiolibrary.Hydraulic.Components.HydrostaticColumn
        hydrostaticDifference1(
        useExternalG=true,
        useHeightInput=true,
        usePumpEffect=true)
        annotation (Placement(transformation(extent={{-5,-78},{-25,-58}})));
    Physiolibrary.Types.Constants.PressureConst             const12(k=0)
        annotation (Placement(transformation(extent={{-52,-60},{-59,-53}})));
    Physiolibrary.Hydraulic.Sensors.PressureMeasure pressureMeasure1
        annotation (Placement(transformation(extent={{76,-38},{96,-18}})));
equation
    connect(systemicArtys.zeroPressureVolume, V0_artys.y) annotation (Line(
        points={{67.1,8.9},{67.1,23},{86.75,23}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(busConnector, peripheral.busConnector)          annotation (
        Line(
        points={{46,50},{46,16.66},{21.66,16.66}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None));
    connect(veins.busConnector,busConnector)           annotation (
        Line(
        points={{-58.48,1.52},{-60,1.52},{-60,50},{46,50}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None));
    connect(SystemicVeinsCompliance.y, systemicVeinsElacticBloodCompartment.Compliance)
        annotation (Line(
        points={{-36,14},{-38.2,14},{-38.2,10},{-38,10}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(busConnector,systemicVeinsElacticBloodCompartment. busConnector)
        annotation (Line(
        points={{46,50},{-26,50},{-26,6.1},{-34.2,6.1}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None));
    connect(systemicVeinsElacticBloodCompartment.referencePoint,volumeCorrections. q_out)
        annotation (Line(
        points={{-44,0},{-46,0},{-46,31},{-42,31}},
        color={0,0,0},
        smooth=Smooth.None,
        thickness=1));
    connect(systemicVeinsElacticBloodCompartment.ExternalPressure,
    SystemicVeinsExternalPressure.y)
        annotation (Line(
        points={{-44,10},{-44,19.5},{-43.875,19.5}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(busConnector.BloodVolume_change, volumeCorrections.solutionFlow)
        annotation (Line(
        points={{46,50},{-35,50},{-35,35.9}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None));
    connect(collapsedVeins.ExternalPressure, busConnector.Thorax_AvePressure)
        annotation (Line(
        points={{-78.5,2.1},{-80,2.1},{-80,50},{46,50}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(pressureMeasure.pressure, busConnector.CarotidSinus_Pressure)
        annotation (Line(
        points={{73.4,42.1},{46,42.1},{46,50}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(gravityHydrostaticDifference.height, busConnector.CarotidSinusHeight)
        annotation (Line(
        points={{55,35},{46,35},{46,50}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(gravityHydrostaticDifference.q_down, systemicArtys.q_in)
        annotation (Line(
        points={{69,29},{69,0.5},{75.5,0.5}},
        color={0,0,0},
        thickness=1,
        smooth=Smooth.None));
    connect(gravityHydrostaticDifference.q_up, pressureMeasure.q_in)
        annotation (Line(
        points={{69,39},{80,39},{80,40.4},{81.9,40.4}},
        color={0,0,0},
        thickness=1,
        smooth=Smooth.None));
    connect(pressureMeasure.pressure, busConnector.CarotidSinusArteryPressure)
        annotation (Line(
        points={{73.4,42.1},{46,42.1},{46,50}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(systemicVeinsElacticBloodCompartment.Pressure, busConnector.SystemicVeins_Pressure)
        annotation (Line(
        points={{-40,-10},{-40,-28},{46,-28},{46,50}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
    connect(systemicVeinsElacticBloodCompartment.V0, busConnector.SystemicVeins_V0)
        annotation (Line(
        points={{-50.8,10},{-50.8,50},{46,50}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(V0_artys.y, busConnector.SystemicArtys_V0) annotation (Line(
        points={{86.75,23},{70,23},{70,22},{46,22},{46,50}},
        color={0,0,127},
        smooth=Smooth.None));
    /* connect(q_out, q_out) annotation (Line( */
    /*     points={{-100,0},{-100,0}}, */
    /*     color={0,0,0}, */
    /*     thickness=1, */
    /*     smooth=Smooth.None)); */
    connect(q_in, systemicArtys.q_in) annotation (Line(
        points={{100,0},{99.75,0},{99.75,0.5},{75.5,0.5}},
        color={0,0,0},
        thickness=1,
        smooth=Smooth.None));
    connect(collapsedVeins.q_out, q_out) annotation (Line(
        points={{-94.5,-1.22465e-015},{-96.25,-1.22465e-015},{-96.25,0},{
          -100,0}},
        color={0,0,0},
        thickness=1,
        smooth=Smooth.None));
    connect(busConnector.Gravity_Gz, G.u) annotation (Line(
        points={{46,50},{46,38},{34,38},{34,30.8}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
    connect(G.y, gravityHydrostaticDifference.G) annotation (Line(
        points={{34,21.6},{34,16},{61,16},{61,25}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(rightCororaryCirculation.busConnector, busConnector)
                                                        annotation (
        Line(
        points={{-25.1,73.9},{46,73.9},{46,50}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None));
    connect(leftCororaryCirculation.busConnector, busConnector)
                                                       annotation (Line(
        points={{6.9,87.9},{46,87.9},{46,50}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None));
    connect(leftCororaryCirculation.BloodFlow, busConnector.leftHeart_BloodFlow)
        annotation (Line(
        points={{7,81},{46,81},{46,50}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(rightCororaryCirculation.BloodFlow, busConnector.rightHeart_BloodFlow)
        annotation (Line(
        points={{-25,67},{22,67},{22,50},{46,50}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(leftCororaryCirculation.BloodFlow, busConnector.LeftHeart_BloodFlow)
        annotation (Line(
        points={{7,81},{46,81},{46,50}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
    connect(rightCororaryCirculation.BloodFlow, busConnector.RightHeart_BloodFlow)
        annotation (Line(
        points={{-25,67},{22,67},{22,50},{46,50}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(splanchnicCirculation.busConnector, busConnector) annotation (
        Line(
        points={{-6,-15.5},{-6,50},{46,50}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None));
    connect(splanchnicCirculation.q_in, systemicArtys.q_in) annotation (Line(
        points={{32,-25},{62,-25},{62,0.5},{75.5,0.5}},
        color={0,0,0},
        thickness=1,
        smooth=Smooth.None));
    connect(peripheral.q_in, systemicArtys.q_in) annotation (Line(
        points={{26,14},{52,14},{52,0.5},{75.5,0.5}},
        color={0,0,0},
        thickness=1,
        smooth=Smooth.None));
    connect(peripheral.q_out, systemicVeinsElacticBloodCompartment.referencePoint)
        annotation (Line(
        points={{-2,14},{-24,14},{-24,0},{-44,0}},
        color={0,0,0},
        thickness=1,
        smooth=Smooth.None));
    connect(rightCororaryCirculation.q_out, q_out) annotation (Line(
        points={{-42,72},{-60,72},{-60,86},{-100,86},{-100,0}},
        color={0,0,0},
        thickness=1,
        smooth=Smooth.None));
    connect(leftCororaryCirculation.q_out, q_out) annotation (Line(
        points={{-10,86},{-100,86},{-100,0}},
        color={0,0,0},
        thickness=1,
        smooth=Smooth.None));
    connect(leftCororaryCirculation.q_in, q_in) annotation (Line(
        points={{10,86},{100,86},{100,0}},
        color={0,0,0},
        thickness=1,
        smooth=Smooth.None));
    connect(systemicVeinsElacticBloodCompartment.referencePoint, veins.q_in)
        annotation (Line(
        points={{-44,0},{-56,0}},
        color={0,0,0},
        thickness=1,
        smooth=Smooth.None));
    connect(veins.q_out, collapsedVeins.q_in) annotation (Line(
        points={{-72,0},{-73.25,0},{-73.25,1.22465e-015},{-74.5,
          1.22465e-015}},
        color={0,0,0},
        thickness=1,
        smooth=Smooth.None));

    connect(rightCororaryCirculation.q_in, q_in) annotation (Line(
        points={{-22,72},{36,72},{36,86},{100,86},{100,0}},
        color={0,0,0},
        thickness=1,
        smooth=Smooth.None));
    connect(legsArtys.q_in,sequesteredBlood. referencePoint) annotation (Line(
        points={{80,-78},{90,-78}},
        color={0,0,0},
        thickness=1,
        smooth=Smooth.None));
    connect(sequesteredBlood.ExternalPressure,const8. y) annotation (Line(
        points={{81,-68},{81,-64.5},{85.125,-64.5}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(legsArtys.q_out,hydrostaticDifference. q_down) annotation (Line(
        points={{64,-78},{62,-78}},
        color={0,0,0},
        thickness=1,
        smooth=Smooth.None));
    connect(hydrostaticDifference.q_up, systemicArtys.q_in) annotation (Line(
        points={{62,-68},{62,0},{75.5,0},{75.5,0.5}},
        color={0,0,0},
        thickness=1,
        smooth=Smooth.None));
    connect(sequesteredBlood1.ExternalPressure,const12. y) annotation (Line(
        points={{-61.1,-64},{-61.1,-56.5},{-59.875,-56.5}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(sequesteredBlood1.referencePoint,legsVeins. q_in) annotation (
        Line(
        points={{-53,-73},{-42,-73}},
        color={0,0,0},
        thickness=1,
        smooth=Smooth.None));
    connect(legsVeins.q_out,hydrostaticDifference1. q_down) annotation (
        Line(
        points={{-28,-73},{-28,-74},{-23,-74}},
        color={0,0,0},
        thickness=1,
        smooth=Smooth.None));
    connect(hydrostaticDifference1.q_up,
    systemicVeinsElacticBloodCompartment.referencePoint) annotation (Line(
        points={{-23,-64},{-23,0},{-44,0}},
        color={0,0,0},
        thickness=1,
        smooth=Smooth.None));
    connect(hydrostaticDifference1.height, busConnector.LowerTorsoVeinHeight)
        annotation (Line(
        points={{-9,-68},{46,-68},{46,50}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
    connect(hydrostaticDifference1.pumpEffect, busConnector.Exercise_MusclePump_Effect)
        annotation (Line(
        points={{-15,-58},{46,-58},{46,50}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
    connect(hydrostaticDifference.height, busConnector.LowerTorsoArtyHeight)
        annotation (Line(
        points={{48,-72},{46,-72},{46,50}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(sequesteredBlood1.Vol, busConnector.LegVeins_DeoxygenatedBloodVolume)
        annotation (Line(
        points={{-56.6,-82},{-58,-82},{-58,-90},{46,-90},{46,50}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(sequesteredBlood.Vol, busConnector.LegArtys_OxygenatedBloodVolume)
        annotation (Line(
        points={{86,-88},{86,-90},{46,-90},{46,50}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(G.y,hydrostaticDifference1. G) annotation (Line(
        points={{34,21.6},{34,-90},{-15,-90},{-15,-78}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(G.y,hydrostaticDifference. G) annotation (Line(
        points={{34,21.6},{34,-90},{54,-90},{54,-82}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(systemicArtys.volume, busConnector.SystemicArtys_OxygenatedBloodVolume)
        annotation (Line(
        points={{81.8,-10},{72,-10},{72,-28},{46,-28},{46,50}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
    connect(systemicVeinsElacticBloodCompartment.Vol, busConnector.SystemicVeins_DeoxygenatedBloodVolume)
        annotation (Line(
        points={{-48,-10},{-48,-28},{46,-28},{46,50}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
    connect(systemicArtys.q_in, pressureMeasure1.q_in) annotation (Line(
        points={{75.5,0.5},{82,0.5},{82,-34}},
        color={0,0,0},
        thickness=1,
        smooth=Smooth.None));
    connect(pressureMeasure1.pressure, busConnector.SystemicArtys_Pressure)
        annotation (Line(
        points={{92,-32},{98,-32},{98,-42},{46,-42},{46,50}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
    connect(splanchnicCirculation.q_out, veins.q_out) annotation (Line(
        points={{-6,-25},{-72,-25},{-72,0}},
        color={0,0,0},
        thickness=1,
        smooth=Smooth.None));
   annotation (Diagram(coordinateSystem(preserveAspectRatio=false,extent={{-100,
        -100},{100,100}}),   graphics={Text(
        extent={{42,46},{74,46}},
        lineColor={0,0,255},
        textString="Carotid Artery Pressure")}),
                               Icon(coordinateSystem(
        preserveAspectRatio=true, extent={{-100,-100},{100,100}}),
      graphics={
      Text(
        extent={{-104,-54},{110,-76}},
        lineColor={0,0,255},
        textString="%name")}),
                    Documentation(revisions="<html>

            <table>
            <tr>
            <td>Author:</td>
            <td>Marek Matejak</td>
            </tr>
            <tr>
            <td>License:</td>
            <td><a href=\"http://www.physiomodel.org/license.html\">Physiomodel License 1.0</a> </td>
            </tr>
            <tr>
            <td>By:</td>
            <td>Charles University, Prague</td>
            </tr>
            <tr>
            <td>Date of:</td>
            <td>january 2009</td>
            </tr>
            <tr>
            <td>References:</td>
            <td>Tom Coleman: QHP 2008 beta 3, University of Mississippi Medical Center</td>
            </tr>
            </table>
            <br/><p>Copyright &copy; 2014 Marek Matejak, Charles University in Prague.</p><br/>

            </html>", info="<html>
            <p>Blood volume (and pressure) distributions between </p>
            <p><ul>
            <li>systemic arteries, </li>
            <li>systemic veins and</li>
            <li>portal (splanchnic) vein.</li>
            </ul></p>
            <p>Blood flow throught: </p>
            <p><ul>
            <li>GIT, hepatic artery, liver</li>
            <li>Kidney</li>
            <li>CNS</li>
            <li>Skeletal muscle</li>
            <li>Respiratory muscle</li>
            <li>Skin</li>
            <li>Bones</li>
            <li>Adipose tissue</li>
            <li>Other tissue</li>
            </ul></p>
            </html>"));
end SystemicCirculationFullDynamic;
