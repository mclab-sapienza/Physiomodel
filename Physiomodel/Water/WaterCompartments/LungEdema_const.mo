within Physiomodel.Water.WaterCompartments;

model LungEdema_const
    extends Physiolibrary.Icons.Lungs;

    parameter Real initialVolume(displayUnit="ml") = 0;

    Physiolibrary.Osmotic.Interfaces.OsmoticPort_a q_in(o(final displayUnit=
          "g/ml")) annotation (Placement(transformation(extent={{-110,10},{
            -90,30}}), iconTransformation(extent={{-10,30},{10,50}})));
    Physiolibrary.Types.BusConnector busConnector annotation (Placement(
        transformation(extent={{-104,61},{-84,81}}), iconTransformation(
          extent={{60,60},{80,80}})));

    Physiolibrary.Types.Constants.VolumeConst volume(k=0)
    annotation (Placement(transformation(extent={{-66,42},{-58,50}})));
equation
    q_in.q=0;
    connect(volume.y, busConnector.ExcessLungWater_Volume) annotation (Line(
      points={{-57,46},{-8,46},{-8,71},{-94,71}},
      color={0,0,127},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}}));
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
end LungEdema_const;