within Physiomodel.CardioVascular.Microcirculation.Interfaces;
partial model BaseDO
    extends Physiolibrary.Icons.PerfusionDO;

    Physiolibrary.Hydraulic.Interfaces.HydraulicPort_a q_in "Blood inflow"
      annotation (extent=[-10,-110; 10,-90], Placement(transformation(extent=
              {{90,-10},{110,10}}), iconTransformation(extent={{90,-10},{110,
              10}})));
    Physiolibrary.Hydraulic.Interfaces.HydraulicPort_b q_out
      "Blood outflow"
      annotation (extent=[-10,-110; 10,-90], Placement(transformation(extent=
              {{-110,-10},{-90,10}}), iconTransformation(extent={{-110,-10},{
              -90,10}})));

    Physiolibrary.Types.BusConnector busConnector
      "signals of organ bood flow resistence" annotation (Placement(
          transformation(extent={{-100,80},{-80,100}}), iconTransformation(
            extent={{60,10},{78,28}})));

      Modelica.Blocks.Interfaces.RealOutput BloodFlow
                                               annotation (Placement(transformation(
              extent={{90,-22},{102,-10}}),iconTransformation(extent={{60,-60},{80,
                -40}})));
    Physiolibrary.Hydraulic.Sensors.FlowMeasure flowMeasure annotation (
        Placement(transformation(
          extent={{10,-10},{-10,10}},
          origin={88,0})));
equation

  connect(flowMeasure.volumeFlow, BloodFlow) annotation (Line(
      points={{88,12},{88,-16},{96,-16}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(flowMeasure.q_in, q_in) annotation (Line(
      points={{98,0},{100,0}},
      color={0,0,0},
      thickness=1,
      smooth=Smooth.None));
  annotation (Documentation(info="<HTML>
    <PRE>
    Blood flow variable resistor abstract model.
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
    <td>2009</td>
    </tr>
    </table>
    <br/><p>Copyright &copy; 2014 Marek Matejak, Charles University in Prague.</p><br/>

    </html>"));
end BaseDO;