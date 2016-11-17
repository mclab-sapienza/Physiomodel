within Physiomodel.CardioVascular.Circulation.develop;
model GuytonOutputPump

    Physiolibrary.Hydraulic.Interfaces.HydraulicPort_a q_in annotation (
        extent=[-10,-110; 10,-90], Placement(transformation(extent={{-110,-10},
              {-90,10}}), iconTransformation(extent={{-110,-10},{-90,10}})));
      Modelica.Blocks.Interfaces.RealInput inputPressure
                                                  annotation (Placement(
            transformation(extent={{-96,54},{-56,94}}), iconTransformation(
            extent={{-20,-20},{20,20}},
            rotation=270,
            origin={-80,60})));
equation
      q_in.pressure = inputPressure;

      annotation (Icon(coordinateSystem(preserveAspectRatio=true, extent={{-100,
                -100},{100,100}}), graphics={
            Text(
              extent={{-104,-54},{110,-76}},
              lineColor={0,0,255},
              textString="%name"),
            Rectangle(
              extent={{-100,-50},{100,50}},
              lineColor={0,0,127},
              fillColor={255,255,255},
              fillPattern=FillPattern.Solid),
            Polygon(
              points={{-80,25},{80,0},{-80,-25},{-80,25}},
              lineColor={0,0,127},
              fillColor={0,0,127},
              fillPattern=FillPattern.Solid)}));
end GuytonOutputPump;