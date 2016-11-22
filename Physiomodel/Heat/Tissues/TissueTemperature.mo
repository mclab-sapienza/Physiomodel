within Physiomodel.Heat.Tissues;
model TissueTemperature

    Physiolibrary.Types.RealIO.TemperatureInput BaseT(
                                        displayUnit="degC")
      annotation (Placement(transformation(extent={{-120,-20},{-80,20}})));
    Physiolibrary.Types.RealIO.TemperatureOutput T(
                                     displayUnit="degC")
      annotation (Placement(transformation(extent={{80,-20},{120,20}})));
equation
    T=BaseT;
    annotation ( Icon(coordinateSystem(
            preserveAspectRatio=true, extent={{-100,-100},{100,100}}),
          graphics={Text(
            extent={{-148,-98},{100,-124}},
            lineColor={0,0,255},
        textString="%name"), Rectangle(extent={{-100,100},{100,-100}},
          lineColor={0,0,255})}));
end TissueTemperature;