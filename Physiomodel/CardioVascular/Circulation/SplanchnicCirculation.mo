within Physiomodel.CardioVascular.Circulation;
model SplanchnicCirculation
    extends Physiolibrary.Icons.PerfusionDO;
    extends Physiolibrary.Icons.GITract;

    Physiolibrary.Hydraulic.Interfaces.HydraulicPort_a q_in "Blood inflow"
        annotation (extent=[-10,-110; 10,-90], Placement(transformation(extent=
                {{90,-10},{110,10}}), iconTransformation(extent={{90,-10},{110,
                10}})));
    Physiolibrary.Hydraulic.Interfaces.HydraulicPort_b q_out "Blood outflow"
        annotation (extent=[-10,-110; 10,-90], Placement(transformation(extent=
                {{-110,-10},{-90,10}}), iconTransformation(extent={{-110,-10},{
                -90,10}})));

    Physiolibrary.Types.BusConnector busConnector
    "signals of organ bood flow resistence" annotation (Placement(
        transformation(extent={{56,-56},{76,-36}}), iconTransformation(
          extent={{-108,42},{-92,58}})));

    Physiolibrary.Hydraulic.Components.ElasticVessel portalVein(
        stateName="SplanchnicVeins.Vol",
        useExternalPressureInput=true,
        useV0Input=true,
        useComplianceInput=false,
        volume_start=0.00100999,
        Compliance=4.6878848490354e-07)
        annotation (Placement(transformation(extent={{-16,-10},{5,11}})));
    Microcirculation.TissueBloodFlow GITract(Cond=1.4001149415786e-09)
        annotation (Placement(transformation(extent={{34,-12},{58,12}})));
    Physiolibrary.Types.Constants.PressureConst ExternalPressure(k=0)
        annotation (Placement(transformation(extent={{24,20},{16,28}})));
    Physiolibrary.Types.Constants.HydraulicComplianceConst Compliance(k=
        4.6878848490354e-07)
        annotation (Placement(transformation(extent={{10,32},{2,40}})));
    Physiolibrary.Types.Constants.VolumeConst               V0(k(displayUnit=
          "ml") = 0.0005)
        annotation (Placement(transformation(extent={{-27,11},{-19,19}})));
    Microcirculation.Liver liver
        annotation (Placement(transformation(extent={{-56,34},{-32,58}})));
    Physiolibrary.Hydraulic.Sensors.PressureMeasure pressureMeasure
        annotation (Placement(transformation(extent={{6,-42},{26,-22}})));
equation

    connect(GITract.busConnector,busConnector)           annotation (Line(
        points={{55.6,7.2},{66,7.2},{66,-46}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None));
    connect(portalVein.externalPressure, ExternalPressure.y)
                                                       annotation (Line(
        points={{2.9,8.9},{2.9,24},{15,24}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(portalVein.zeroPressureVolume, V0.y) annotation (Line(
      points={{-13.9,8.9},{-13.9,15},{-18,15}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(GITract.BloodFlow, busConnector.GITract_BloodFlow) annotation (
        Line(
        points={{54.4,-6},{66,-6},{66,-46}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(V0.y, busConnector.PortalVein_V0)      annotation (Line(
        points={{-18,15},{-14,15},{-14,-46},{66,-46}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
    connect(portalVein.volume, busConnector.SplanchnicCirculation_DeoxygenatedBloodVolume)
        annotation (Line(
          points={{0.8,-10},{0.8,-46},{66,-46}},
          color={0,0,127},
          smooth=Smooth.None));
    connect(portalVein.q_in, liver.portalVein) annotation (Line(
      points={{-5.5,0.5},{-41.36,0.5},{-41.36,40.24}},
      color={0,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(busConnector, liver.busConnector) annotation (Line(
        points={{66,-46},{66,48.28},{-35.72,48.28}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None));
    connect(GITract.q_out, portalVein.q_in) annotation (Line(
      points={{34,0},{14.25,0},{14.25,0.5},{-5.5,0.5}},
      color={0,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(GITract.q_in, q_in) annotation (Line(
        points={{58,0},{100,0}},
        color={0,0,0},
        thickness=1,
        smooth=Smooth.None));
    connect(liver.q_in, q_in) annotation (Line(
        points={{-32,46},{82,46},{82,0},{100,0}},
        color={0,0,0},
        thickness=1,
        smooth=Smooth.None));
    connect(liver.q_out, q_out) annotation (Line(
        points={{-56,46},{-82,46},{-82,0},{-100,0}},
        color={0,0,0},
        thickness=1,
        smooth=Smooth.None));
    connect(portalVein.q_in, pressureMeasure.q_in) annotation (Line(
      points={{-5.5,0.5},{4,0.5},{4,-38},{12,-38}},
      color={0,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(pressureMeasure.pressure, busConnector.SplanchnicVeins_Pressure)
      annotation (Line(
      points={{22,-36},{44,-36},{44,-46},{66,-46}},
      color={0,0,127},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}}));
    connect(GITract.tissueConnector, busConnector.GITract) annotation (
      Line(
      points={{46,9.6},{66,9.6},{66,-46}},
      color={127,0,0},
      thickness=0.5,
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}}));
    annotation (       Icon(coordinateSystem(
            preserveAspectRatio=true, extent={{-100,-100},{100,100}}),
          graphics={
          Text(
            extent={{-104,-76},{110,-98}},
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
            <p>Blood volume (and pressures) distribution between </p>
            <p><ul>
            <li>pulmonary arteries, </li>
            <li>pulmonary veins and </li>
            <li>pulmonary capilaries.</li>
            </ul></p>
            <p>Blood flow through ventilated alveoli.</p>
            </html>"));
end SplanchnicCirculation;