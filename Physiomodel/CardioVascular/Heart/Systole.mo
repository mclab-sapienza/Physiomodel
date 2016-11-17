within Physiomodel.CardioVascular.Heart;
model Systole

    //  Real iconPoint[20,2](each final displayUnit="mm");
    //  Real iconActualPoint[2,2](each final displayUnit="mm");

    Physiolibrary.Hydraulic.Interfaces.HydraulicPort_b outflow annotation (
      Placement(transformation(extent={{80,20},{120,60}}),
        iconTransformation(extent={{80,20},{120,60}})));

    Physiolibrary.Types.RealIO.FractionInput contractility
    "heart muscle contractility"   annotation ( extent = [70,90;90,110], rotation = -90);

    parameter Physiolibrary.Types.Fraction n_Systole(displayUnit="1")
        "parametrization of end diastolic volume curve";
        //parameter Real Abasic_Systole "parametrization of end systolic volume curve";
    parameter Physiolibrary.Types.Pressure NormalSystolicPressure
        "Typical value of mean arterial pressure (relative to environment ambient pressure)";
    parameter Physiolibrary.Types.Pressure NormalExternalPressure = -446
        "Typical value of pericardium cavity pressure (relative to environment ambient pressure)";
                                                                           //-446 Pa = -3.34522 mmHg
    parameter Physiolibrary.Types.Volume NormalEndSystolicVolume
        "= 2.64 ml for left ventricle, parametrization of end systolic volume curve";
    parameter Physiolibrary.Types.Pressure additionalPressure_Systolic
        "parametrization of end systolic volume curve";

    Physiolibrary.Types.RealIO.VolumeOutput ESV   annotation (Placement(transformation(extent={{-74,-74},
              {-34,-34}}), iconTransformation(
          extent={{-10,-10},{10,10}},
          rotation=180,
          origin={-100,80})));

    Physiolibrary.Types.RealIO.PressureInput externalPressure
        "pressure around ventricle"                                             annotation (
        Placement(transformation(extent={{-110,-70},{-90,-50}}), iconTransformation(
        extent={{-110,-70},{-90,-50}})));
equation
    outflow.q = 0;
      //  P=outflow.pressure;
      //  ESV = ((outflow.pressure+additionalPressure_Systolic-externalPressure)/(contractility*Abasic_Systole))^(1/n_Systole);
    ESV = NormalEndSystolicVolume*((outflow.pressure+additionalPressure_Systolic-externalPressure)/(contractility*(NormalSystolicPressure+additionalPressure_Systolic-NormalExternalPressure)))^(1/n_Systole);

          // drawing icon
          /*  for i in 1:size(iconPoint,1) loop
        iconPoint[i,1]=((i-1)/(size(iconPoint,1)))*180 - 90;
        (iconPoint[i,1]+90)*200/180= ((((iconPoint[i,2]+40)*200/130)+additionalPressure_Systolic-externalPressure)/(contractility*Abasic_Systole))^(1/n_Systole);
      end for;
      iconActualPoint[1,1]=ESV*180/200-90 -2;
      iconActualPoint[1,2]=outflow.pressure*130/200-40 -2;
      iconActualPoint[2,1]=iconActualPoint[1,1]+4;
      iconActualPoint[2,2]=iconActualPoint[1,2]+4;*/
                                       /*,
            Line(
              points=DynamicSelect({{-100,0},{100,0}}, iconPoint),
              color={0,0,255},
              smooth=Smooth.None),
            Ellipse(
              extent=DynamicSelect({{0,0},{0,0}}, iconActualPoint),
              lineColor={0,0,0},
              fillColor={255,0,0},
              fillPattern=FillPattern.Solid)*/
            annotation (Icon(coordinateSystem(preserveAspectRatio=true, extent={{-100,
                      -100},{100,100}}), graphics={
                  Rectangle(
                    extent={{-100,100},{100,-60}},
                    lineColor={255,0,0},
                    fillPattern=FillPattern.HorizontalCylinder,
                    fillColor={255,255,255}),
                  Text(
                    extent={{-100,-60},{100,-100}},
                    lineColor={0,0,255},
                    textString="%name")}));
end Systole;