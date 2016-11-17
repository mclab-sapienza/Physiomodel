within Physiomodel.CardioVascular.Circulation;
model SequesteredBlood
    extends Interfaces.ISequesteredBlood;

    parameter Physiolibrary.Types.Volume initialVol
        "initial compartment blood volume";
    parameter Real[:,3] data;

    Physiolibrary.Blocks.Interpolation.Curve curve(
        x=data[:, 1],
        y=data[:, 2],
        slope=data[:, 3],
        Xscale=1e-6,
        Yscale=101325/760)
    annotation (Placement(transformation(extent={{-60,50},{-40,70}})));

    Modelica.Blocks.Math.Add add annotation (Placement(transformation(
          extent={{-10,-10},{10,10}},
          rotation=270,
          origin={-6,40})));
    Physiolibrary.Hydraulic.Components.ElasticVessel pressureControledCompartment(
        ZeroPressureVolume(displayUnit="l") = 0.002,
        useExternalPressureInput=true,
        volume_start=initialVol)
    annotation (Placement(transformation(extent={{-24,-10},{-4,10}})));
equation
    connect(curve.val, add.u2) annotation (Line(
        points={{-40,60},{-12,60},{-12,52}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(ExternalPressure, add.u1) annotation (Line(
        points={{-90,100},{-90,52},{1.77636e-015,52}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(add.y, Pressure) annotation (Line(
        points={{-6,29},{-6,20},{40,20},{40,-100}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(referencePoint, pressureControledCompartment.q_in) annotation (
      Line(
      points={{-100,0},{-18,0},{-18,2.22045e-016},{-14,2.22045e-016}},
      color={0,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(pressureControledCompartment.volume, Vol) annotation (Line(
      points={{-8,-10},{-8,-42},{-40,-42},{-40,-100}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(pressureControledCompartment.volume, curve.u) annotation (Line(
      points={{-8,-10},{-8,-42},{-70,-42},{-70,60},{-60,60}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(add.y, pressureControledCompartment.externalPressure) annotation (
     Line(
      points={{-6,29},{-6,8}},
      color={0,0,127},
      smooth=Smooth.None));
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

        </html>"), Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},
                          {100,100}}), graphics={Text(
                        extent={{-100,-16},{100,-32}},
                        lineColor={0,0,255},
                        textString="(initial %initialVol ml)")}));
end SequesteredBlood;
