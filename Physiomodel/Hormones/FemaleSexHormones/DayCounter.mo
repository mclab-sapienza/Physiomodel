within Physiomodel.Hormones.FemaleSexHormones;
model DayCounter
    Modelica.Blocks.Interfaces.BooleanInput Reset
    "restart counter on rising edge"
      annotation (Placement(transformation(extent={{-68,-2},{-60,6}}),
          iconTransformation(extent={{-120,-20},{-80,20}})));

    discrete Real startTime(start=0);
    Modelica.Blocks.Interfaces.RealOutput dayInCycle
      annotation (Placement(transformation(extent={{100,-20},{140,20}}),
          iconTransformation(extent={{100,-20},{140,20}})));
    equation
    when edge(Reset) then
     startTime=time;
    end when;
    dayInCycle = floor((time-startTime)/(60*60*24));
    annotation (Icon(coordinateSystem(preserveAspectRatio=true, extent={{-100,
              -100},{100,100}}), graphics={Rectangle(
            extent={{-100,40},{100,-40}},
            fillColor={215,215,215},
            fillPattern=FillPattern.Solid,
            pattern=LinePattern.None), Text(
            extent={{-76,18},{98,-18}},
            lineColor={0,0,0},
            textString="day in cycle")}));
end DayCounter;