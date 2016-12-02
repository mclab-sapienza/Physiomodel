within Physiomodel.CardioVascular.Circulation.develop;
model SystemicCirculationBase
    extends Physiolibrary.Icons.SystemicCirculation;

    Physiolibrary.Hydraulic.Interfaces.HydraulicPort_a q_in "Blood inflow"
      annotation (extent=[-10,-110; 10,-90], Placement(transformation(extent=
              {{90,-10},{110,10}}), iconTransformation(extent={{90,-10},{110,
              10}})));
    Physiolibrary.Hydraulic.Interfaces.HydraulicPort_b q_out
      "Blood outflow"
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
      useComplianceInput=true,
      useExternalPressureInput=true,
      useV0Input=true,
      volume_start=0.00100036)
      annotation (Placement(transformation(extent={{65,-10},{86,11}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant V0_artys(k=850)
      annotation (Placement(transformation(extent={{98,18},{88,28}})));
    Physiolibrary.Types.Constants.HydraulicComplianceConst
      SystemicVeinsCompliance(k=6.645545561992547e-007)
      annotation (Placement(transformation(extent={{-27,10},{-35,18}})));
    PeripheralCirculation peripheral
      annotation (Placement(transformation(extent={{-2,-14},{26,14}})));
    Physiolibrary.Hydraulic.Sources.UnlimitedPump volumeCorrections(
        useSolutionFlowInput=true)
      annotation (Placement(transformation(extent={{-28,24},{-42,38}})));
    SystemicVeins veins(BaseConductance=856)
      "scaled to coronary vessels reorganisation"
      annotation (Placement(transformation(extent={{-72,-8},{-56,8}})));
      SystemicVeinsElacticBloodCompartment
        systemicVeinsElacticBloodCompartment
        annotation (Placement(transformation(extent={{-54,-10},{-34,10}})));
    Physiolibrary.Types.Constants.PressureConst SystemicArtysExternalPressure(
        k=0) annotation (Placement(transformation(extent={{86,14},{79,21}})));
    Physiolibrary.Types.Constants.PressureConst SystemicVeinsExternalPressure(
        k=0)
      annotation (Placement(transformation(extent={{-36,16},{-43,23}})));
    Physiolibrary.Types.BusConnector busConnector
      "signals of organ bood flow resistence" annotation (Placement(
          transformation(extent={{36,40},{56,60}}), iconTransformation(
            extent={{-110,32},{-94,48}})));
    Physiolibrary.Types.Constants.HydraulicComplianceConst
      SystemicArtysCompliance(k=1.162595442560773e-008)
      annotation (Placement(transformation(extent={{96,8},{89,15}})));
    CollapsingVeins collapsedVeins annotation (Placement(transformation(
          extent={{-10,10.5},{10,-10.5}},
          rotation=180,
          origin={-84.5,0})));
    Physiolibrary.Hydraulic.Components.HydrostaticColumn
      gravityHydrostaticDifference(useExternalG=true, useHeightInput=true)
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
        BasicLargeVeselsConductance=50*0.93677109469950528615290800207779,
        BasicSmallVeselsConductance=2.2*0.93677109469950528615290800207779)
      "scaled to normal pressure gradient 94 mmHg"
      annotation (Placement(transformation(extent={{-10,76},{10,96}})));
    Microcirculation.RightHeart rightCororaryCirculation(
        BasicLargeVeselsConductance=10*0.93677109469950528615290800207779,
        BasicSmallVeselsConductance=0.4*0.93677109469950528615290800207779)
      "scaled to normal pressure gradient 94 mmHg"
      annotation (Placement(transformation(extent={{-42,62},{-22,82}})));
    SplanchnicCirculation splanchnicCirculation
      annotation (Placement(transformation(extent={{-8,-44},{30,-6}})));
equation
    connect(systemicArtys.compliance, SystemicArtysCompliance.y)
                                              annotation (Line(
      points={{81.8,11},{81.8,11.5},{88.65,11.5}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(systemicArtys.zeroPressureVolume, V0_artys.y) annotation (Line(
    points={{69.2,11},{69.2,23},{87.5,23}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(busConnector, peripheral.busConnector)          annotation (
      Line(
      points={{46,50},{46,2.66},{21.66,2.66}},
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
      points={{-35.4,14},{-38.2,14},{-38.2,10},{-38,10}},
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
      points={{-44,0},{-46,0},{-46,31.7},{-42,31.7}},
      color={0,0,0},
      smooth=Smooth.None,
      thickness=1));
    connect(systemicArtys.externalPressure, SystemicArtysExternalPressure.y)
                                                    annotation (Line(
      points={{75.5,11},{75.5,17.5},{78.65,17.5}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(systemicVeinsElacticBloodCompartment.ExternalPressure,
    SystemicVeinsExternalPressure.y)
    annotation (Line(
      points={{-44,10},{-44,19.5},{-43.35,19.5}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(busConnector.BloodVolume_change, volumeCorrections.solutionFlow)
    annotation (Line(
    points={{46,50},{-35,50},{-35,35.2}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None));
    connect(systemicArtys.compliance, SystemicArtysCompliance.y)
                                              annotation (Line(
      points={{81.8,11},{81.8,11.5},{88.65,11.5}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(collapsedVeins.ExternalPressure, busConnector.Thorax_AvePressure)
    annotation (Line(
      points={{-90.5,2.1},{-90,2.1},{-90,50},{46,50}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(pressureMeasure.pressure, busConnector.CarotidSinus_Pressure)
    annotation (Line(
    points={{74.08,43.8},{46,43.8},{46,50}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(gravityHydrostaticDifference.height, busConnector.CarotidSinusHeight)
    annotation (Line(
      points={{54.9,34.5},{46,32},{46,50}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(gravityHydrostaticDifference.q_down, systemicArtys.q_in)
    annotation (Line(
    points={{68,29.4},{68,0.5},{75.5,0.5}},
    color={0,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(systemicArtys.Pressure, busConnector.SystemicArtys_Pressure)
    annotation (Line(
      points={{79.7,-10},{80,-10},{80,-28},{46,-28},{46,50}},
      color={0,0,127},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{3,-3},{3,-3}}));

    connect(gravityHydrostaticDifference.q_up, pressureMeasure.q_in)
    annotation (Line(
      points={{68.2,39.8},{80,39.8},{80,42.1},{80.2,42.1}},
      color={0,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(pressureMeasure.pressure, busConnector.CarotidSinusArteryPressure)
    annotation (Line(
    points={{74.08,43.8},{46,43.8},{46,50}},
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
      points={{87.5,23},{70,23},{70,22},{46,22},{46,50}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(systemicVeinsElacticBloodCompartment.Vol, busConnector.SystemicVeins_DeoxygenatedBloodVolume)
    annotation (Line(
      points={{-48,-10},{-48,-28},{46,-28},{46,50}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(systemicArtys.volume, busConnector.SystemicArtys_OxygenatedBloodVolume)
    annotation (Line(
    points={{71.3,-10},{72,-10},{72,-28},{46,-28},{46,50}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(q_out, q_out) annotation (Line(
      points={{-100,0},{-100,0}},
      color={0,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(q_in, systemicArtys.q_in) annotation (Line(
    points={{100,0},{99.75,0},{99.75,0.5},{75.5,0.5}},
    color={0,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(collapsedVeins.q_out, q_out) annotation (Line(
      points={{-74.5,-1.22465e-015},{-96.25,-1.22465e-015},{-96.25,0},{
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
      points={{34,21.6},{34,16},{62.5,16},{62.5,26.5}},
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
      points={{7,84},{46,84},{46,50}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(rightCororaryCirculation.BloodFlow, busConnector.rightHeart_BloodFlow)
    annotation (Line(
      points={{-25,70},{22,70},{22,50},{46,50}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(splanchnicCirculation.busConnector, busConnector) annotation (
      Line(
      points={{-8,-15.5},{-8,50},{46,50}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None));
    connect(splanchnicCirculation.q_in, systemicArtys.q_in) annotation (Line(
    points={{30,-25},{62,-25},{62,0.5},{75.5,0.5}},
    color={0,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(splanchnicCirculation.q_out,
    systemicVeinsElacticBloodCompartment.referencePoint) annotation (Line(
      points={{-8,-25},{-22,-25},{-22,0},{-44,0}},
      color={0,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(peripheral.q_in, systemicArtys.q_in) annotation (Line(
    points={{26,1.77636e-015},{52,1.77636e-015},{52,0.5},{75.5,0.5}},
    color={0,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(peripheral.q_out, systemicVeinsElacticBloodCompartment.referencePoint)
    annotation (Line(
      points={{-2,1.77636e-015},{-24,1.77636e-015},{-24,0},{-44,0}},
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
      points={{-72,0},{-73.25,0},{-73.25,1.22465e-015},{-94.5,
        1.22465e-015}},
      color={0,0,0},
      thickness=1,
      smooth=Smooth.None));

    connect(rightCororaryCirculation.q_in, q_in) annotation (Line(
      points={{-22,72},{36,72},{36,86},{100,86},{100,0}},
      color={0,0,0},
      thickness=1,
      smooth=Smooth.None));
         annotation (Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-100,
                    -100},{100,100}}), graphics={Text(
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

            </html>",   info="<html>
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
end SystemicCirculationBase;
