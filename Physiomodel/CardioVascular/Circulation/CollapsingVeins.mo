within Physiomodel.CardioVascular.Circulation;
model CollapsingVeins
    extends Physiolibrary.Icons.CollapsingVessel;

    Physiolibrary.Hydraulic.Interfaces.HydraulicPort_a q_in "Blood inflow"
    annotation (extent=[-10,-110; 10,-90], Placement(transformation(extent=
            {{90,-10},{110,10}}), iconTransformation(extent={{90,-10},{110,
            10}})));
    Physiolibrary.Hydraulic.Interfaces.HydraulicPort_b q_out "Blood outflow"
    annotation (extent=[-10,-110; 10,-90], Placement(transformation(extent=
            {{-110,-10},{-90,10}}), iconTransformation(extent={{-110,-10},{
            -90,10}})));

    Modelica.Blocks.Interfaces.RealInput ExternalPressure
                                                   annotation (Placement(
          transformation(extent={{40,0},{80,40}}), iconTransformation(
          extent={{-20,-20},{20,20}},
          rotation=270,
          origin={60,20})));

    parameter Real PR1LL( final quantity="Pressure", final displayUnit="mmHg") = 0
        "start-collapsing sucking pressure, when external pressure is zero";
equation
    q_in.q + q_out.q = 0;

    q_in.pressure = if (q_out.pressure > (PR1LL+ExternalPressure)) then q_out.pressure else (PR1LL+ExternalPressure);

    annotation (Icon(graphics={
          Text(
            extent={{-62,-32},{58,-58}},
            lineColor={0,0,255},
            textString="%name")}));
end CollapsingVeins;