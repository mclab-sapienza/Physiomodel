within Physiomodel.CardioVascular.Heart;
model Heart
    import Physiomodel;
    extends Physiolibrary.Icons.Heart;
    Physiolibrary.Hydraulic.Components.ElasticVessel RightAtrium(
        stateName="RightAtrium.Vol",
        useExternalPressureInput=true,
        useV0Input=true,
        useComplianceInput=false,
        volume_start=5.16454e-05,
        Compliance=9.3757696980707e-08) "right atrium"
        annotation (Placement(transformation(extent={{-75,-1},{-55,19}})));
    Physiolibrary.Types.Constants.VolumeConst RightAtriumV0(k=0)
        annotation (Placement(transformation(extent={{-84,20},{-76,28}})));
    Physiomodel.CardioVascular.Heart.Ventricle rightVentricle(
        n_Diastole=2.0,
        n_Systole=0.5,
        stateName="RightVentricle.Vol",
        BasicCompliance(displayUnit="ml/mmHg") = 2.1901798014693e-07,
        additionalPressure_Systolic(displayUnit="mmHg") = 1199.901486735,
        initialVol=8.75e-05,
        NormalEndDiastolicVolume=0.000125,
        NormalFillingPressure=95.9921189388,
        stiffnes=1,
        NormalSystolicPressure=1666.5298426875,
        NormalEndSystolicVolume=5.122e-05,
        contractilityBasic=1,
        K=1) annotation (Placement(transformation(extent={{-6,-46},{-50,-2}})));
        //  Abasic_Diastole=0.00026,
        //  Abasic_Systole=3.53,
        //  MaxContractionCompliance(displayUnit="ml/mmHg") = 1.5001231516913e-08,
        //  Cond1=60000000,
        //  Cond2=60000000,
    Physiolibrary.Hydraulic.Components.ElasticVessel LeftAtrium(
        stateName="LeftAtrium.Vol",
        useExternalPressureInput=true,
        useV0Input=true,
        volume_start=5.05035e-05,
        useComplianceInput=false,
        Compliance=4.6878848490354e-08) "left atrium"
        annotation (Placement(transformation(extent={{68,-8},{88,12}})));
    Physiolibrary.Types.Constants.VolumeConst LeftAtriumV0(k=0)
        annotation (Placement(transformation(extent={{60,12},{68,20}})));
    Physiomodel.CardioVascular.Heart.Ventricle leftVentricle(
        n_Diastole=2,
        n_Systole=0.5,
        stateName="LeftVentricle.Vol",
        BasicCompliance(displayUnit="ml/mmHg") = 1.0950899007347e-07,
        initialVol=8.75e-05,
        NormalEndDiastolicVolume=0.000125,
        NormalFillingPressure=615.9494298573,
        stiffnes=1,
        NormalSystolicPressure=12665.626804425,
        NormalEndSystolicVolume=5.087e-05,
        additionalPressure_Systolic=3199.73729796,
        contractilityBasic=1,
        K=0.016666666666667)
        annotation (Placement(transformation(extent={{26,-46},{70,-2}})));
        //  MaxContractionCompliance(displayUnit="ml/mmHg") = 3.0002463033826e-09,
        //  Abasic_Diastole=0.00051,
        //  Cond1(displayUnit="ml/(mmHg.min)") = 0.0075006157584566,
        //  Cond2(displayUnit="ml/(mmHg.min)") = 0.0075006157584566,
    Physiolibrary.Types.BusConnector busConnector
        "signals of organ bood flow resistence" annotation (Placement(
            transformation(extent={{-4,32},{16,52}}), iconTransformation(extent=
               {{-108,-38},{-92,-22}})));
    Physiolibrary.Hydraulic.Interfaces.HydraulicPort_a rightAtrium
        "blood inflow to right atrium" annotation (Placement(transformation(
              extent={{-102,-24},{-82,-4}}), iconTransformation(extent={{-66,30},
                {-46,50}})));
    Physiolibrary.Hydraulic.Interfaces.HydraulicPort_b fromRightVentricle
        "blood outflow to pulmonary circulation" annotation (Placement(
            transformation(extent={{-20,-12},{0,8}}), iconTransformation(extent=
               {{-48,-38},{-28,-18}})));
    Physiolibrary.Hydraulic.Interfaces.HydraulicPort_b fromLeftVentricle
        "blood outflow to aorta" annotation (Placement(transformation(extent={{2,0},{
                22,20}}),        iconTransformation(extent={{14,-38},{34,-18}})));
    Physiolibrary.Hydraulic.Interfaces.HydraulicPort_a leftAtrium
        "blood inflow to left atrium" annotation (Placement(transformation(
              extent={{84,-38},{104,-18}}),
                                          iconTransformation(extent={{34,32},{
                54,52}})));
    Modelica.Blocks.Math.Sum sum1(nin=2)
        annotation (Placement(transformation(extent={{-18,-70},{-10,-62}})));
    Modelica.Blocks.Math.Sum sum3(nin=2)
        annotation (Placement(transformation(extent={{-60,-78},{-52,-70}})));
    Modelica.Blocks.Math.Sum sum2(nin=2)
        annotation (Placement(transformation(extent={{-4,-4},{4,4}},
            rotation=180,
            origin={66,-74})));
    Physiomodel.Nerves.SA_Node SA_node
        annotation (Placement(transformation(extent={{-58,76},{-38,96}})));
    Hormones.ANP atriopeptin
        annotation (Placement(transformation(extent={{72,76},{92,96}})));
    Physiolibrary.Hydraulic.Sensors.PressureMeasure pressureMeasure
        annotation (Placement(transformation(extent={{-98,-90},{-78,-70}})));
    Physiolibrary.Hydraulic.Sensors.PressureMeasure pressureMeasure1
        annotation (Placement(transformation(extent={{100,-88},{80,-68}})));
    Physiolibrary.Hydraulic.Sensors.FlowMeasure flowMeasure
        annotation (Placement(transformation(extent={{40,0},{20,20}})));
    Modelica.Blocks.Math.Add avePressure(k1=0.5, k2=0.5)
        annotation (Placement(transformation(extent={{-68,48},{-56,60}})));
    Physiomodel.Nerves.BaroReceptorAdaptation
                             lowPressureReceptors(
        PressureChangeOnNA={{-4.0,0.0,0},{0.0,1.0,0.3},{12.0,4.0,0}},
        AdaptivePressure(displayUnit="mmHg") = 799.93432449,
        Tau(displayUnit="d") = 2592000)
            annotation (Placement(transformation(
            extent={{-10,-10},{10,10}},
            origin={-40,54})));
    Modelica.Blocks.Math.Feedback rightAtrium_TMP
      annotation (Placement(transformation(extent={{-38,-100},{-22,-84}})));
    Modelica.Blocks.Math.Feedback leftAtrium_TMP
    annotation (Placement(transformation(extent={{52,-98},{36,-82}})));
equation
    connect(RightAtrium.zeroPressureVolume, RightAtriumV0.y) annotation (Line(
        points={{-73,17},{-73,24},{-75,24}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(RightAtrium.q_in, rightVentricle.q_in) annotation (Line(
        points={{-65,9},{-66,8},{-32,8},{-32,-6.4},{-32.4,-6.4}},
        color={0,0,0},
        smooth=Smooth.None,
        thickness=1));
    connect(busConnector.Pericardium_Pressure,RightAtrium.externalPressure) annotation (Line(
        points={{6,42},{6,24},{-57,24},{-57,17}},
        color={0,0,255},
        thickness=0.1,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{110,10},{110,10}}));
    connect(busConnector,rightVentricle. busConnector) annotation (
        Line(
        points={{6,42},{6,-37},{-28,-37},{-28,-35.88}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None));
    connect(LeftAtrium.zeroPressureVolume, LeftAtriumV0.y) annotation (Line(
        points={{70,10},{70,16},{69,16}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(LeftAtrium.q_in, leftVentricle.q_in) annotation (Line(
        points={{78,2},{52,2},{52,-6.4},{52.4,-6.4}},
        color={0,0,0},
        smooth=Smooth.None,
        thickness=1));
    connect(busConnector,leftVentricle. busConnector)          annotation (
        Line(
        points={{6,42},{6,-37},{48,-37},{48,-35.88}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None));
    connect(busConnector.Pericardium_Pressure,LeftAtrium.externalPressure)
        annotation (Line(
        points={{6,42},{6,24},{86,24},{86,10}},
        color={0,0,255},
        thickness=0.1,
        smooth=Smooth.None));
    connect(rightAtrium, RightAtrium.q_in) annotation (Line(
        points={{-92,-14},{-92,9},{-65,9}},
        color={0,0,0},
        thickness=1,
        smooth=Smooth.None));
    connect(rightVentricle.q_out, fromRightVentricle) annotation (Line(
        points={{-23.6,-2},{-10,-2}},
        color={0,0,0},
        thickness=1,
        smooth=Smooth.None));
    connect(LeftAtrium.q_in, leftAtrium) annotation (Line(
        points={{78,2},{94,2},{94,-28}},
        color={0,0,0},
        thickness=1,
        smooth=Smooth.None));
    connect(RightAtriumV0.y, sum1.u[1]) annotation (Line(
        points={{-75,24},{-72,24},{-72,-66},{-38,-66},{-38,-66.4},{-18.8,
          -66.4}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(LeftAtriumV0.y, sum1.u[2]) annotation (Line(
        points={{69,16},{70,16},{70,-58},{-28,-58},{-28,-65.6},{-18.8,-65.6}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(RightAtrium.volume, sum3.u[1]) annotation (Line(
        points={{-59,-1},{-59,-74.4},{-60.8,-74.4}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(rightVentricle.Vol, sum3.u[2]) annotation (Line(
        points={{-36.8,-32.8},{-66,-32.8},{-66,-73.6},{-60.8,-73.6}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(LeftAtrium.volume, sum2.u[1]) annotation (Line(
        points={{84,-8},{84,-73.6},{70.8,-73.6}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(leftVentricle.Vol, sum2.u[2]) annotation (Line(
        points={{56.8,-32.8},{56.8,-32},{76,-32},{76,-74.4},{70.8,-74.4}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(sum3.y, busConnector.Heart_DeoxygenatedBloodVolume) annotation (
        Line(
        points={{-51.6,-74},{6,-74},{6,42}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
    connect(busConnector.Heart_OxygenatedBloodVolume, sum2.y) annotation (
        Line(
        points={{6,42},{6,-74},{61.6,-74}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
    connect(sum1.y, busConnector.Heart_V0) annotation (Line(
        points={{-9.6,-66},{6,-66},{6,42}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
    connect(SA_node.Rate, busConnector.HeartVentricleRate) annotation (Line(
        points={{-38.2,86},{6,86},{6,44},{6,44},{6,42},{6,42}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
    connect(busConnector.BetaPool_Effect,SA_node. BetaPool_Effect)
        annotation (Line(
        points={{6,42},{6,76},{-96,76},{-96,92},{-58,92}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
    connect(busConnector.BetaBlocade_Effect,SA_node. BetaBlockade_Effect)
        annotation (Line(
        points={{6,42},{6,76},{-96,76},{-96,88},{-58,88}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
    connect(busConnector.VagusNerve_NA_Hz, SA_node.VagusNerve_NA_Hz)
        annotation (Line(
        points={{6,42},{6,76},{-96,76},{-96,80},{-58,80}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
    connect(busConnector.GangliaGeneral_NA, SA_node.GangliaGeneral_NA)
        annotation (Line(
        points={{6,42},{6,76},{-96,76},{-96,84},{-58,84}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
    connect(busConnector,atriopeptin. busConnector)
        annotation (Line(
        points={{6,42},{6,76},{74,76},{74,80}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None));
    connect(RightAtrium.q_in, pressureMeasure.q_in) annotation (Line(
        points={{-65,9},{-92,9},{-92,-86}},
        color={0,0,0},
        thickness=1,
        smooth=Smooth.None));
    connect(pressureMeasure.pressure, busConnector.RightAtrium_Pressure)
        annotation (Line(
        points={{-82,-84},{6,-84},{6,42}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
    connect(LeftAtrium.q_in, pressureMeasure1.q_in) annotation (Line(
        points={{78,2},{94,2},{94,-84}},
        color={0,0,0},
        thickness=1,
        smooth=Smooth.None));
    connect(pressureMeasure1.pressure, busConnector.LeftAtrium_Pressure)
        annotation (Line(
        points={{84,-82},{6,-82},{6,42}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
    connect(flowMeasure.q_out, fromLeftVentricle) annotation (Line(
        points={{20,10},{12,10}},
        color={0,0,0},
        thickness=1,
        smooth=Smooth.None));
    connect(leftVentricle.q_out, flowMeasure.q_in) annotation (Line(
        points={{43.6,-2},{43.6,10},{40,10}},
        color={0,0,0},
        thickness=1,
        smooth=Smooth.None));
    connect(flowMeasure.volumeFlow, busConnector.CardiacOutput) annotation (
        Line(
        points={{30,22},{30,2},{6,2},{6,42}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
    connect(avePressure.y,lowPressureReceptors. pressure) annotation (Line(
        points={{-55.4,54},{-50,54}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(busConnector.rightAtrium_TMP,avePressure. u1) annotation (Line(
        points={{6,42},{-98,42},{-98,57.6},{-69.2,57.6}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
    connect(busConnector.leftAtrium_TMP,avePressure. u2) annotation (Line(
        points={{6,42},{-98,42},{-98,50.4},{-69.2,50.4}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
    connect(lowPressureReceptors.NA, busConnector.AtrialLowPressureReceptors_NA)
        annotation (Line(
        points={{-30,54},{6,54},{6,42}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
    connect(rightAtrium_TMP.y, busConnector.rightAtrium_TMP) annotation (Line(
        points={{-22.8,-92},{6,-92},{6,42},{6,42}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
    connect(RightAtrium.externalPressure, rightAtrium_TMP.u2) annotation (
        Line(
        points={{-57,17},{-57,-98.4},{-30,-98.4}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(pressureMeasure.pressure, rightAtrium_TMP.u1) annotation (Line(
        points={{-82,-84},{-64,-84},{-64,-92},{-36.4,-92}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(pressureMeasure1.pressure, leftAtrium_TMP.u1) annotation (Line(
        points={{84,-82},{68,-82},{68,-90},{50.4,-90}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(LeftAtrium.externalPressure, leftAtrium_TMP.u2) annotation (Line(
        points={{86,10},{86,-98},{44,-98},{44,-96.4}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(busConnector.leftAtrium_TMP, leftAtrium_TMP.y) annotation (Line(
        points={{6,42},{6,-90},{36.8,-90}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
    annotation ( Icon(coordinateSystem(
            preserveAspectRatio=true, extent={{-100,-100},{100,100}}),
          graphics={                Text(
            extent={{-164,-60},{156,-88}},
            lineColor={0,0,255},
            textString="%name")}),
      Documentation(info="<html>
        <p>Calculates hearth pumping (left and right atria and ventricles, as wel as coronary circulation). By pressure-flow connectors communicate with pulmonary and systemic circulation.</p>
        <p>Blood volume (and pressure) distributions between </p>
        <p><ul>
        <li>right/left atrium and</li>
        <li>right/left ventricle.</li>
        </ul></p>
        <p>Generate average blood flow throught ventricles.</p>
        <p>On the contrary of Tom Coleman models: coronary circulation outflows to right atrium, average blood volume in the hearth are calculated more simple (with the same results in steady state).</p>
        </html>", revisions="<html>

        <table cellspacing=\"2\" cellpadding=\"0\" border=\"0\"><tr>
        <td><p>Author:</p></td>
        <td><p>Marek Matejak</p></td>
        </tr>
        <tr>
        <td><p>Design:</p></td>
        <td><p>Zuzana Rubaninska</p></td>
        </tr>
        <tr>
        <td><p>License:</p></td>
        <td><p><a href=\"http://www.physiomodel.org/license.html\">Physiomodel License 1.0</a> </p></td>
        </tr>

        <tr>
        <td><p>Date of:</p></td>
        <td><p>january 2009, August 2010</p></td>
        </tr>
        <tr>
        <td><p>References:</p></td>
        <td><p>Tom Coleman: QHP 2008 beta 3,, Physiomodel 2010, University of Mississippi Medical Center</p></td>
        </tr>
        </table>
        <br/><p>Copyright &copy; 2014 Marek Matejak, Charles University in Prague.</p><br/>

        </html>"));
end Heart;