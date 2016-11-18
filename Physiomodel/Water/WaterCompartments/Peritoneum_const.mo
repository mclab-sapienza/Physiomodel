within Physiomodel.Water.WaterCompartments;
model Peritoneum_const
    extends Physiolibrary.Icons.Peritoneum;

    Physiolibrary.Osmotic.Interfaces.OsmoticPort_a flux
    "plasma proteins concentration"
                              annotation (Placement(transformation(
    extent={{56,30},{76,50}}), iconTransformation(extent={{-10,30},{
      10,50}})));

    parameter Physiolibrary.Types.Volume initialVolume(displayUnit="ml") = 0
    "initial water in peritoneum";

    Physiolibrary.Types.BusConnector busConnector annotation (Placement(
    transformation(extent={{-106,87},{-86,107}}), iconTransformation(
    extent={{60,60},{80,80}})));

    Physiolibrary.Types.Constants.VolumeFlowRateConst PeritoneumSpace_Change(k=0)
    "Water gain to peritoneum. "
    annotation (Placement(transformation(extent={{-66,-4},{-20,42}})));
    Physiolibrary.Types.Constants.VolumeConst
     PeritoneumSpace_Volume(k=1e-18) "Water in peritoneum. [ml]"
    annotation (Placement(transformation(extent={{-66,48},{-20,94}})));
equation
    flux.q=0;
    connect(PeritoneumSpace_Volume.y, busConnector.PeritoneumSpace_Vol)
    annotation (Line(
    points={{-14.25,71},{26,71},{26,97},{-96,97}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(PeritoneumSpace_Change.y, busConnector.PeritoneumSpace_Change)
    annotation (Line(
    points={{-14.25,19},{26,19},{26,97},{-96,97}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    annotation (
    Documentation(info="<HTML>
    <PRE>
    QHP 2008 / Peritoneum
    </PRE>
    </HTML>
    ",   revisions="<html>
    <ul>
    <li><i>  </i>
    </li>
    <li><i> january 2009 </i><br>
    by Marek Matejak in Modelica initially implemented (consulted with Jiri Kofranek), Charles University, Prague<br>
    orginaly described by Tom Coleman in QHP 2008 beta 3, University of Mississippi Medical Center
    </li>
    </ul>
    </html>"),     Icon(coordinateSystem(preserveAspectRatio=true, extent={{-100,
        -100},{100,100}}), graphics={Text(
      extent={{-100,120},{100,104}},
      lineColor={0,0,255},
      textString="%name")}));
end Peritoneum_const;
