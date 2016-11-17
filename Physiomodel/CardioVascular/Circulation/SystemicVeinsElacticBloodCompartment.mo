within Physiomodel.CardioVascular.Circulation;
model SystemicVeinsElacticBloodCompartment
    extends Physiolibrary.Icons.ElasticBalloon;

    Physiolibrary.Hydraulic.Interfaces.HydraulicPort_a referencePoint
    annotation (extent=[-10,-110; 10,-90], Placement(transformation(extent=
            {{-110,-10},{-90,10}}), iconTransformation(
        extent={{-10,-10},{10,10}})));
    Physiolibrary.Types.RealIO.PressureInput ExternalPressure
    "external pressure around the compartment"                              annotation (extent = [-10,90;10,110], rotation = -90);
    Physiolibrary.Types.RealIO.HydraulicComplianceInput Compliance( displayUnit="ml/mmHg")
    "elasticity of the stressed walls"                               annotation (extent = [50,90;70,110], rotation = -90);

    Physiolibrary.Types.RealIO.PressureOutput Pressure( displayUnit="mmHg")
    "blod pressure in compartment"
      annotation (Placement(transformation(extent={{30,-110},{50,-90}}, rotation=-90)));
    Physiolibrary.Types.RealIO.VolumeOutput Vol
    "blood volume in compartment"
      annotation (Placement(transformation(extent={{-50,-110},{-30,-90}}, rotation=-90),
          iconTransformation(
          extent={{-10,-10},{10,10}},
          rotation=270,
          origin={-40,-100})));
    Physiolibrary.Types.BusConnector busConnector annotation (Placement(
        transformation(extent={{-88,72},{-68,92}}), iconTransformation(
          extent={{88,51},{108,71}})));
    Physiolibrary.Hydraulic.Components.ElasticVessel systemicVeins(
      stateName="SystemicVeins.Vol",
      useComplianceInput=true,
      useExternalPressureInput=true,
      useV0Input=true,
    volume_start=initialSystemisVeinsVol) "systemic veins"
      annotation (Placement(transformation(extent={{-14,-10},{6,10}})));
    Physiolibrary.Blocks.Factors.Spline V0_A2_Effect(
        data={{0.0,1.05,0.0},{1.3,1.00,-0.10},{3.0,0.85,0.0}},
        Xscale=1e-9/Substances.AngiotensinII.mw,
        UsePositiveLog10=true)
        annotation (Placement(transformation(extent={{-30,7},{-10,27}})));
    Physiolibrary.Types.Constants.VolumeConst               const4(k=0.0017)
        annotation (Placement(transformation(extent={{-32,48},{-23,39}})));
    Physiomodel.Nerves.AplhaReceptorsActivityFactor AplhaReceptors(
          data={{0.0,1.2,0.0},{1.0,1.0,-0.30},{3.0,0.6,0.0}},
        NEURALK=0.333,
        HUMORALK=0.5)
          annotation (Placement(transformation(extent={{-30,20},{-10,40}})));
    Physiolibrary.Types.RealIO.VolumeOutput V0(displayUnit="ml")
    "maximal zero pressure blood volume in compartment"
      annotation (Placement(transformation(extent={{-4.5,-4.5},{4.5,4.5}},rotation=180,
          origin={-27.5,5.5}),
          iconTransformation(
          extent={{-10,-10},{10,10}},
          rotation=90,
          origin={-68,100})));

    parameter Physiolibrary.Types.Volume initialSystemisVeinsVol = 2329.57e-6; // = 2200;// = 2980;

    Physiolibrary.Hydraulic.Sensors.PressureMeasure pressureMeasure
      annotation (Placement(transformation(extent={{16,-20},{36,0}})));
equation
    connect(V0_A2_Effect.y, systemicVeins.zeroPressureVolume) annotation (Line(
        points={{-20,13},{-20,12},{-12,12},{-12,8}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(AplhaReceptors.y,V0_A2_Effect. yBase) annotation (Line(
        points={{-20,23},{-20,19}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(AplhaReceptors.yBase,const4. y) annotation (Line(
        points={{-20,37},{-20,43.5},{-21.875,43.5}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(systemicVeins.q_in, referencePoint) annotation (Line(
        points={{-4,0},{-100,0}},
        color={0,0,0},
        smooth=Smooth.None));
    connect(systemicVeins.volume, Vol) annotation (Line(
        points={{2,-10},{2,-67},{-40,-67},{-40,-100}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(systemicVeins.externalPressure, ExternalPressure) annotation (Line(
        points={{4,8},{4,67},{0,67},{0,100}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(systemicVeins.compliance, Compliance) annotation (Line(
        points={{-4,8},{-4,50},{60,50},{60,100}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(busConnector.GangliaGeneral_NA, AplhaReceptors.GangliaGeneral_NA)
      annotation (Line(
        points={{-78,82},{-78,24},{-29.8,24}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
    connect(busConnector.AlphaPool_Effect, AplhaReceptors.AlphaPool_Effect)
      annotation (Line(
        points={{-78,82},{-78,36},{-29.8,36}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
    connect(busConnector.AlphaBlocade_Effect, AplhaReceptors.AlphaBlockade_Effect)
      annotation (Line(
        points={{-78,82},{-78,30},{-29.8,30}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
    connect(V0_A2_Effect.y, V0) annotation (Line(
        points={{-20,13},{-20,5.5},{-27.5,5.5}},
        color={0,0,127},
        smooth=Smooth.None));

    connect(systemicVeins.q_in, pressureMeasure.q_in) annotation (Line(
        points={{-4,0},{10,0},{10,-16},{22,-16}},
        color={0,0,0},
        thickness=1,
        smooth=Smooth.None));
    connect(pressureMeasure.pressure, Pressure) annotation (Line(
      points={{32,-14},{40,-14},{40,-100}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(busConnector.Angiotensin2, V0_A2_Effect.u) annotation (Line(
      points={{-78,82},{-78,17},{-28,17}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-6,3},{-6,3}}));
    annotation (
      Documentation(info="<HTML>
            <PRE>
              Elastic blood flow compartment.

            </PRE>
            </HTML>
            ",     revisions="<html>

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

            </html>"));
end SystemicVeinsElacticBloodCompartment;
