within Physiomodel.CardioVascular.Microcirculation;
model VasaRecta
    Physiolibrary.Hydraulic.Components.Conductor resistorWithCond(
      useConductanceInput=true)
    annotation (Placement(transformation(extent={{2,0},{22,20}})));
    Physiolibrary.Blocks.Factors.Spline OsmOnConductance(data={{600,1.4,0},{
        1100,1.0,-0.0006},{2000,0.8,0}})
    annotation (Placement(transformation(extent={{2,38},{22,58}})));
    Physiolibrary.Blocks.Factors.Spline A2OnConductance(
    data={{0.0,1.3,0},{1.3,1.0,-0.6},{2.0,0.5,0}},
    Xscale=1e-9/Substances.AngiotensinII.mw,
    UsePositiveLog10=true)
    annotation (Placement(transformation(extent={{2,26},{22,46}})));
    Physiolibrary.Blocks.Factors.Spline SympsOnConductance(data={{0.0,1.1,0},
        {1.0,1.0,-0.13},{1.4,0.6,0}})
    annotation (Placement(transformation(extent={{2,18},{22,38}})));
    Physiolibrary.Types.Constants.HydraulicConductanceConst condConstant(k(displayUnit="ml/(mmHg.min)")=
      3.3752770913055e-11)
    annotation (Placement(transformation(extent={{-4,62},{8,74}})));
    Physiolibrary.Types.BusConnector busConnector
    "signals of organ bood flow resistence" annotation (Placement(
        transformation(extent={{-96,64},{-74,86}}), iconTransformation(
          extent={{-100,60},{-60,100}})));
    Physiolibrary.Hydraulic.Sensors.FlowMeasure flowMeasure
    annotation (Placement(transformation(extent={{32,20},{52,0}})));
    Physiolibrary.Hydraulic.Sources.UnlimitedPump inputPump(
      useSolutionFlowInput=true)
    annotation (Placement(transformation(extent={{-54,-48},{-34,-28}})));
    Modelica.Blocks.Math.Add Osm
      annotation (Placement(transformation(extent={{-14,44},{-6,52}})));
    Modelica.Blocks.Interfaces.RealInput ArcuateArtery_Pressure
                                                         annotation (
        Placement(transformation(extent={{-80,20},{-68,32}}),
          iconTransformation(extent={{-100,-20},{-60,20}})));
    Physiolibrary.Blocks.Factors.LagSpline
                                      NephroneADHOnConductance(data={{0.0,
        1.4,0},{0.3,1.0,-0.4},{1.0,0.9,0}}, Xscale=1e-9/Substances.Vasopressin.mw,
    HalfTime=Modelica.Math.log(2)*20*60,
    initialValue=2e-9/Substances.Vasopressin.mw)
    "initial 2pg/ml = 2e-9 kg/m3, NephronADH.Tau = 20 min"
    annotation (Placement(transformation(extent={{2,46},{22,66}})));
    Physiolibrary.Hydraulic.Sources.UnlimitedVolume arcuateArtery(
      usePressureInput=true)
    annotation (Placement(transformation(extent={{-62,0},{-42,20}})));
    Physiolibrary.Hydraulic.Sources.UnlimitedVolume veins(usePressureInput=
        true)
    annotation (Placement(transformation(extent={{96,0},{76,20}})));
equation
    connect(SympsOnConductance.y, resistorWithCond.cond) annotation (Line(
        points={{12,24},{12,16}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(A2OnConductance.y, SympsOnConductance.yBase) annotation (Line(
        points={{12,32},{12,30}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(OsmOnConductance.y, A2OnConductance.yBase) annotation (Line(
        points={{12,44},{12,38}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(busConnector.Kidney_Alpha_NA, SympsOnConductance.u) annotation (Line(
        points={{-85,75},{-60,75},{-60,28},{4,28}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
    connect(resistorWithCond.q_out, flowMeasure.q_in) annotation (Line(
        points={{22,10},{32,10}},
        color={0,0,0},
        thickness=1,
        smooth=Smooth.None));
    connect(flowMeasure.volumeFlow, busConnector.VasaRecta_Outflow) annotation (
        Line(
        points={{42,-2},{42,75},{-85,75}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,-12},{6,-12}}));
    connect(inputPump.q_out, flowMeasure.q_in) annotation (Line(
        points={{-34,-38},{26,-38},{26,10},{32,10}},
        color={0,0,0},
        thickness=1,
        smooth=Smooth.None));
    connect(Osm.y, OsmOnConductance.u) annotation (Line(
        points={{-5.6,48},{4,48}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(busConnector.MedullaNa_Osmolarity, Osm.u1) annotation (Line(
        points={{-85,75},{-60,75},{-60,50.4},{-14.8,50.4}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
    connect(busConnector.MedullaUrea_Osmolarity, Osm.u2) annotation (Line(
        points={{-85,75},{-60,75},{-60,45.6},{-14.8,45.6}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
    connect(busConnector.CD_H2O_Reab, inputPump.solutionFlow) annotation (
      Line(
      points={{-85,75},{-76,75},{-76,-22},{-44,-22},{-44,-31}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-6,3},{-6,3}}));
    connect(NephroneADHOnConductance.y, OsmOnConductance.yBase) annotation (
       Line(
        points={{12,52},{12,50}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(condConstant.y, NephroneADHOnConductance.yBase) annotation (
        Line(
        points={{9.5,68},{12,68},{12,58}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(ArcuateArtery_Pressure, arcuateArtery.pressure) annotation (Line(
      points={{-74,26},{-68,26},{-68,10},{-62,10}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(arcuateArtery.y, resistorWithCond.q_in) annotation (Line(
      points={{-42,10},{2,10}},
      color={0,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(busConnector.SystemicVeins_Pressure, veins.pressure) annotation (
      Line(
      points={{-85,75},{96,75},{96,10}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-6,3},{-6,3}}));
    connect(flowMeasure.q_out, veins.y) annotation (Line(
      points={{52,10},{76,10}},
      color={0,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(busConnector.Angiotensin2, A2OnConductance.u) annotation (Line(
      points={{-85,75},{-60,75},{-60,36},{4,36}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-6,3},{-6,3}}));
    connect(busConnector.Vasopressin, NephroneADHOnConductance.u) annotation (
     Line(
      points={{-85,75},{-60,75},{-60,56},{4,56}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-6,3},{-6,3}}));
    annotation (          Documentation(revisions="<html>
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
        <td>2010</td>
        </tr>
        <tr>
        <td>References:</td>
        <td>Tom Coleman: QHP 2008 beta 3, University of Mississippi Medical Center</td>
        </tr>
        </table>
        <br/><p>Copyright &copy; 2014 Marek Matejak, Charles University in Prague.</p><br/>

        </html>"));
end VasaRecta;