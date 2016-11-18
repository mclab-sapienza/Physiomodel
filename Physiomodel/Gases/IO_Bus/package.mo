within Physiomodel.Gases;
package IO_Bus
    extends Physiolibrary.Types.IO_Bus;
    redeclare model extends Variables
        CO2.IO_Bus.Variables co2(T(redeclare block Variable = T.Variable))
        annotation (Placement(transformation(extent={{-14,-46},{6,-26}})));
        Ventilation.IO_Bus.Variables ventilation(T(redeclare block Variable =
              T.Variable))
        annotation (Placement(transformation(extent={{-4,28},{16,48}})));
        O2.IO_Bus.Variables o2(T(redeclare block Variable = T.Variable))
        annotation (Placement(transformation(extent={{-58,-48},{-38,-28}})));
    equation
        connect(co2.busConnector, busConnector) annotation (Line(
          points={{-4,-36},{-4,-2},{90,-2}},
          color={0,0,255},
          thickness=0.5,
          smooth=Smooth.None));
        connect(o2.busConnector, busConnector) annotation (Line(
          points={{-48,-38},{-52,-38},{-52,-2},{90,-2}},
          color={0,0,255},
          thickness=0.5,
          smooth=Smooth.None));
        connect(ventilation.busConnector, busConnector) annotation (Line(
          points={{6,38},{6,-2},{90,-2}},
          color={0,0,255},
          thickness=0.5,
          smooth=Smooth.None));
    end Variables;
end IO_Bus;