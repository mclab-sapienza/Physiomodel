within Physiomodel.CardioVascular.Circulation.develop;
model SystemicVeinsElacticBloodCompartment2
    extends Physiolibrary.Icons.ElasticBalloon;

    Physiolibrary.Hydraulic.Interfaces.HydraulicPort_a referencePoint
          annotation (extent=[-10,-110; 10,-90], Placement(transformation(extent=
                  {{-110,-10},{-90,10}}), iconTransformation(
              extent={{-10,-10},{10,10}})));
    Modelica.Blocks.Interfaces.RealInput ExternalPressure(
                                                      final quantity="Pressure", final displayUnit="mmHg")
    "external pressure around the compartment"                              annotation (extent = [-10,90;10,110], rotation = -90);
    Modelica.Blocks.Interfaces.RealInput Compliance(
                                                final quantity="Compliance", final displayUnit="ml/mmHg")
    "elasticity of the stressed walls"                               annotation (extent = [50,90;70,110], rotation = -90);

    Modelica.Blocks.Interfaces.RealOutput Pressure(  final quantity="Pressure", final displayUnit="mmHg")
    "blod pressure in compartment"
    annotation (Placement(transformation(extent={{30,-110},{50,-90}}, rotation=-90)));
    Physiolibrary.Types.BusConnector busConnector annotation (Placement(
      transformation(extent={{-88,72},{-68,92}}), iconTransformation(
        extent={{88,51},{108,71}})));
    Physiolibrary.Blocks.Factors.Spline V0_A2_Effect(data={{0.0,1.05,0.0},{
      1.3,1.00,-0.10},{3.0,0.85,0.0}})
    annotation (Placement(transformation(extent={{-30,7},{-10,27}})));
    Physiolibrary.Types.Constants.VolumeConst V0_Base(k=0.0018298)
    annotation (Placement(transformation(extent={{-32,48},{-23,39}})));
    Physiomodel.Nerves.AplhaReceptorsActivityFactor AplhaReceptors(
    NEURALK=0.333,
    HUMORALK=0.5,
    data={{0.0,1.2,0.0},{1.0,1.0,-0.30},{3.0,0.6,0.0}})
    annotation (Placement(transformation(extent={{-30,20},{-10,40}})));
    Modelica.Blocks.Interfaces.RealOutput V0(final quantity="Volume", final displayUnit="ml")
    "maximal zero pressure blood volume in compartment"
    annotation (Placement(transformation(extent={{-4.5,-4.5},{4.5,4.5}},rotation=180,
        origin={-27.5,5.5}),
        iconTransformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={-68,100})));

    parameter Real initialSystemisVeinsVol(final quantity="Volume", final unit =   "ml")= 2329.57; // = 2200;// = 2980;

    Modelica.Blocks.Interfaces.RealOutput NormalizedVolume(final quantity=
        "NormalizedVolume", final displayUnit="1")
    "maximal zero pressure blood volume in compartment"
    annotation (Placement(transformation(extent={{-4.5,-4.5},{4.5,4.5}},origin={22.5,9.5}),
        iconTransformation(
        extent={{-10,-10},{10,10}},
        rotation=180,
        origin={-100,56})));
    Modelica.Blocks.Interfaces.RealInput BloodVolume
                                            annotation (Placement(
        transformation(
        extent={{-20,-20},{20,20}},
        rotation=90,
        origin={-40,-100})));

    Real StressedVolume(   final quantity="Volume", final displayUnit="ml");
equation
    StressedVolume = max(BloodVolume-V0,0);
    Pressure = (StressedVolume/Compliance) + ExternalPressure;
    referencePoint.pressure = Pressure;

    NormalizedVolume = if initialSystemisVeinsVol==0 then 0 else BloodVolume/initialSystemisVeinsVol;

    connect(AplhaReceptors.y,V0_A2_Effect. yBase) annotation (Line(
      points={{-20,23},{-20,19}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(AplhaReceptors.yBase, V0_Base.y)
                                          annotation (Line(
      points={{-20,37},{-20,43.5},{-21.875,43.5}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(busConnector.A2Pool_Log10Conc, V0_A2_Effect.u) annotation (
      Line(
      points={{-78,82},{-78,17},{-28,17}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-6,3},{-6,3}}));
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

     annotation (
        Documentation(info="<HTML>
                <PRE>
                  Elastic blood flow compartment.
                </PRE>
                </HTML>
                ",       revisions="<html>

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
end SystemicVeinsElacticBloodCompartment2;