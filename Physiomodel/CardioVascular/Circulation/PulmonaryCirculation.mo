within Physiomodel.CardioVascular.Circulation;
model PulmonaryCirculation
    extends Physiolibrary.Icons.PulmonaryCirculation;
    //Can not be one port, because for example whole periferal resistance is taken as ResistorBases, but blood can accumulate inside

    Physiolibrary.Hydraulic.Interfaces.HydraulicPort_a q_in "Blood inflow"
        annotation (extent=[-10,-110; 10,-90], Placement(transformation(extent=
                {{-112,-10},{-92,10}}), iconTransformation(extent={{-112,-10},{
                -92,10}})));
    Physiolibrary.Hydraulic.Interfaces.HydraulicPort_b q_out "Blood outflow"
        annotation (extent=[-10,-110; 10,-90], Placement(transformation(extent=
                {{90,-10},{110,10}}), iconTransformation(extent={{90,-10},{110,
                10}})));
    Physiolibrary.Hydraulic.Components.ElasticVessel pulmCapys(
        stateName="PulmCapys.Vol",
        useComplianceInput=true,
        useExternalPressureInput=true,
        useV0Input=true,
        volume_start=0.000200141) "pulmonary capilaries"
        annotation (Placement(transformation(extent={{-22,-10},{-2,10}})));
    Physiolibrary.Hydraulic.Components.ElasticVessel pulmArty(
        stateName="PulmArty.Vol",
        useComplianceInput=true,
        useExternalPressureInput=true,
        useV0Input=true,
        volume_start=0.000200488)
        annotation (Placement(transformation(extent={{-86,-10},{-66,10}})));
    Physiolibrary.Hydraulic.Components.ElasticVessel pulmVeins(
        stateName="PulmVeins.Vol",
        useComplianceInput=true,
        useExternalPressureInput=true,
        useV0Input=true,
        volume_start=0.000210463) "pulmonary veins"
        annotation (Placement(transformation(extent={{38,-10},{58,10}})));
    Physiolibrary.Hydraulic.Components.Conductor pulmArtyConductance(
          Conductance=1.6876385456527e-07)
        annotation (Placement(transformation(extent={{-61,-11},{-39,11}})));
    Physiolibrary.Types.Constants.VolumeConst ArtysV0(k=0.00011)
        annotation (Placement(transformation(extent={{-94,16},{-86,24}})));
    Physiolibrary.Types.Constants.HydraulicComplianceConst ArtysCompliance(k=
        3.975326351982e-08)
        annotation (Placement(transformation(extent={{-54,16},{-62,24}})));
    Physiolibrary.Types.Constants.VolumeConst               CapysV0(k=0.00014)
        annotation (Placement(transformation(extent={{-28,16},{-20,24}})));
    Physiolibrary.Types.Constants.HydraulicComplianceConst CapysCompliance(k=
        3.450283248890036e-008)
        annotation (Placement(transformation(extent={{4,16},{-4,24}})));
    Physiolibrary.Hydraulic.Components.Conductor pulmCapysConductance(
      Conductance=2.250184727537e-07)
        annotation (Placement(transformation(extent={{2,-11},{24,11}})));
    Physiolibrary.Types.Constants.VolumeConst               VeinsV0(k=0.00015)
        annotation (Placement(transformation(extent={{30,16},{38,24}})));
    Physiolibrary.Types.Constants.HydraulicComplianceConst VeinsCompliance(k=
        4.50036945507396e-008)
        annotation (Placement(transformation(extent={{66,14},{58,22}})));
    Physiolibrary.Hydraulic.Components.Conductor pulmVeinsConductance(
      Conductance=6.7505541826109e-07)
        annotation (Placement(transformation(extent={{62,-11},{84,11}})));
    Physiolibrary.Types.BusConnector busConnector
        "signals of organ bood flow resistence" annotation (Placement(
            transformation(extent={{18,66},{38,86}}), iconTransformation(extent=
               {{-108,42},{-92,58}})));
    LungBloodFlow lungBloodFlow
      annotation (Placement(transformation(extent={{-26,74},{-6,94}})));
    Physiolibrary.Hydraulic.Sensors.FlowMeasure flowMeasure
        annotation (Placement(transformation(extent={{-42,-10},{-22,10}})));
    Modelica.Blocks.Math.Sum sum1(nin=3)
          annotation (Placement(transformation(extent={{-28,28},{-20,36}})));
    Modelica.Blocks.Math.Sum sum2(nin=2)
          annotation (Placement(transformation(extent={{50,-38},{42,-30}})));
    Physiolibrary.Hydraulic.Sensors.PressureMeasure pressureMeasure
        annotation (Placement(transformation(extent={{-8,-26},{12,-6}})));
equation
    connect(pulmArty.q_in, pulmArtyConductance.q_in) annotation (Line(
        points={{-76,0},{-61,0}},
        color={0,0,0},
        smooth=Smooth.None,
        thickness=1));
    connect(pulmArty.externalPressure,busConnector. Thorax_AvePressure) annotation (Line(
        points={{-68,8},{-68,14},{28,14},{28,76}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(pulmCapys.externalPressure,busConnector. Thorax_AvePressure) annotation (Line(
        points={{-4,8},{-4,14},{28,14},{28,76}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(pulmVeins.externalPressure,busConnector. Thorax_AvePressure) annotation (Line(
        points={{56,8},{56,14},{28,14},{28,76}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(pulmArty.zeroPressureVolume, ArtysV0.y) annotation (Line(
        points={{-84,8},{-84,20},{-85,20}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(pulmArty.compliance, ArtysCompliance.y)
                                        annotation (Line(
        points={{-76,8},{-76,20},{-63,20}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(CapysV0.y, pulmCapys.zeroPressureVolume) annotation (Line(
        points={{-19,20},{-20,20},{-20,8}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(CapysCompliance.y,pulmCapys.compliance)
                                             annotation (Line(
        points={{-5,20},{-12,20},{-12,8}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(pulmCapys.q_in, pulmCapysConductance.q_in) annotation (Line(
        points={{-12,0},{2,0}},
        color={0,0,0},
        smooth=Smooth.None,
        thickness=1));
    connect(pulmCapysConductance.q_out, pulmVeins.q_in) annotation (Line(
        points={{24,0},{48,0}},
        color={0,0,0},
        smooth=Smooth.None,
        thickness=1));
    connect(pulmVeins.zeroPressureVolume, VeinsV0.y) annotation (Line(
        points={{40,8},{40,20},{39,20}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(VeinsCompliance.y,pulmVeins.compliance)
                                         annotation (Line(
        points={{57,18},{48,18},{48,8}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(pulmVeins.q_in, pulmVeinsConductance.q_in) annotation (Line(
        points={{48,0},{62,0}},
        color={0,0,0},
        smooth=Smooth.None,
        thickness=1));
        connect(lungBloodFlow.AlveolarVentilated, busConnector.AlveolarVentilated_BloodFlow)
        annotation (Line(
        points={{-6,90},{28,90},{28,76}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));

    connect(pulmArtyConductance.q_out, flowMeasure.q_in) annotation (Line(
        points={{-39,0},{-42,0}},
        color={0,0,0},
        thickness=1,
        smooth=Smooth.None));
    connect(flowMeasure.q_out, pulmCapys.q_in) annotation (Line(
        points={{-22,0},{-12,0}},
        color={0,0,0},
        thickness=1,
        smooth=Smooth.None));
        connect(flowMeasure.volumeFlow, lungBloodFlow.CardiacOutput)
        annotation (Line(
        points={{-32,12},{-32,90},{-26,90}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(ArtysV0.y, sum1.u[1]) annotation (Line(
        points={{-85,20},{-82,20},{-82,32},{-28,32},{-28,31.4667},{-28.8,
          31.4667}},
        color={0,0,127},
        smooth=Smooth.None));

    connect(CapysV0.y, sum1.u[2]) annotation (Line(
        points={{-19,20},{-18,20},{-18,26},{-80,26},{-80,32},{-28.8,32}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(VeinsV0.y, sum1.u[3]) annotation (Line(
        points={{39,20},{42,20},{42,26},{-78,26},{-78,32.5333},{-28.8,
          32.5333}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(pulmCapys.volume, sum2.u[1]) annotation (Line(
        points={{-6,-10},{-6,-42},{54,-42},{54,-34.4},{50.8,-34.4}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(pulmVeins.volume, sum2.u[2]) annotation (Line(
        points={{54,-10},{54,-33.6},{50.8,-33.6}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(sum1.y, busConnector.PulmonaryCirculation_V0) annotation (Line(
        points={{-19.6,32},{28,32},{28,76}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
    connect(pulmArty.volume, busConnector.PulmonaryCirculation_DeoxygenatedBloodVolume)
        annotation (Line(
        points={{-70,-10},{-70,-28},{28,-28},{28,76}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,-16},{6,-16}}));
    connect(busConnector.PulmonaryCirculation_OxygenatedBloodVolume, sum2.y)
        annotation (Line(
        points={{28,76},{28,-34},{41.6,-34}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
    connect(q_in, pulmArty.q_in) annotation (Line(
        points={{-102,0},{-76,0}},
        color={0,0,0},
        thickness=1,
        smooth=Smooth.None));
    connect(pulmVeinsConductance.q_out, q_out) annotation (Line(
        points={{84,0},{100,0}},
        color={0,0,0},
        thickness=1,
        smooth=Smooth.None));
    connect(pulmCapys.q_in, pressureMeasure.q_in) annotation (Line(
        points={{-12,0},{-8,0},{-8,-22},{-2,-22}},
        color={0,0,0},
        thickness=1,
        smooth=Smooth.None));
    connect(pressureMeasure.pressure, busConnector.PulmCapys_Pressure)
        annotation (Line(
        points={{8,-20},{28,-20},{28,76}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
        annotation ( Icon(coordinateSystem(
                        preserveAspectRatio=true, extent={{-100,-100},{100,100}}),
                      graphics={
                      Text(
                        extent={{-108,-48},{106,-70}},
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
end PulmonaryCirculation;