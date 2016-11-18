within Physiomodel.Water.WaterCompartments;

model LungEdema
    extends Physiolibrary.Icons.Lungs;

    parameter Real initialVolume(displayUnit="ml") = 0;

    Physiolibrary.Osmotic.Interfaces.OsmoticPort_a q_in(o(final displayUnit=
          "g/ml")) annotation (Placement(transformation(extent={{-110,10},{
            -90,30}}), iconTransformation(extent={{-10,30},{10,50}})));
    Physiolibrary.Blocks.Interpolation.Curve ExcessLungWaterOnLymph(
    x={10,1000},
    y={0,1},
    slope={0,0},
    Xscale=1e-6,
    Yscale=1e-6/60)
    annotation (Placement(transformation(extent={{16,-26},{-4,-6}})));
    Physiolibrary.Types.BusConnector busConnector annotation (Placement(
        transformation(extent={{-104,61},{-84,81}}), iconTransformation(
          extent={{60,60},{80,80}})));

    Physiolibrary.Osmotic.Components.Membrane pulmCapys(
      useHydraulicPressureInputs=true, cond=3.7503078792283e-10)
    annotation (Placement(transformation(extent={{-44,28},{-24,48}})));
    Physiolibrary.Osmotic.Components.SolventFlux PulmLymph(
      useSolutionFlowInput=true) annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=180,
        origin={-42,-2})));
    Physiolibrary.Osmotic.Components.OsmoticCell waterInLungs(volume_start=
        1e-09)
    annotation (Placement(transformation(extent={{16,20},{36,40}})));
    Physiolibrary.Types.Constants.PressureConst pressure(k=0)
    annotation (Placement(transformation(extent={{-12,58},{-20,66}})));
equation
    connect(busConnector.PulmCapys_Pressure, pulmCapys.hydraulicPressureIn)
    annotation (Line(
    points={{-94,71},{-42,71},{-42,46}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(ExcessLungWaterOnLymph.val, PulmLymph.solutionFlow) annotation (
    Line(
    points={{-4,-16},{-42,-16},{-42,-9}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(pulmCapys.q_out, waterInLungs.q_in[1]) annotation (Line(
    points={{-24,38},{2,38},{2,30},{26,30}},
    color={127,127,0},
    thickness=1,
    smooth=Smooth.None));
    connect(waterInLungs.q_in[1], PulmLymph.q_in) annotation (Line(
    points={{26,30},{2,30},{2,-2},{-32,-2}},
    color={127,127,0},
    thickness=1,
    smooth=Smooth.None));
    connect(PulmLymph.q_out, q_in) annotation (Line(
    points={{-52,-2},{-66,-2},{-66,20},{-100,20}},
    color={127,127,0},
    thickness=1,
    smooth=Smooth.None));
    connect(pulmCapys.q_in, q_in) annotation (Line(
    points={{-44,38},{-66,38},{-66,20},{-100,20}},
    color={127,127,0},
    thickness=1,
    smooth=Smooth.None));
    connect(waterInLungs.volume, ExcessLungWaterOnLymph.u) annotation (Line(
    points={{32,20},{32,-16},{16,-16}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(waterInLungs.volume, busConnector.ExcessLungWater_Volume)
    annotation (Line(
    points={{32,20},{32,8},{58,8},{58,71},{-94,71}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(pressure.y, pulmCapys.hydraulicPressureOut) annotation (Line(
    points={{-21,62},{-26,62},{-26,46}},
    color={0,0,127},
    smooth=Smooth.None));
    annotation (
    Documentation(info="<HTML>
    <PRE>
    Torso water compartment.

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
      graphics={                                   Text(
        extent={{-100,88},{100,72}},
        lineColor={0,0,255},
        textString="%name")}));
end LungEdema;