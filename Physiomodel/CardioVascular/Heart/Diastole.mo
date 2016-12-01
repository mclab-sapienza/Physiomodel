within Physiomodel.CardioVascular.Heart;
model Diastole
    //  Real iconPoint[20,2](final displayUnit="mm");
    //  Real iconActualPoint[2,2](final displayUnit="mm");
    Physiolibrary.Hydraulic.Interfaces.HydraulicPort_a inflow annotation (
        Placement(transformation(extent={{-122,-24},{-82,16}}),
        iconTransformation(extent={{-120,20},{-80,60}})));
    Physiolibrary.Types.RealIO.PressureInput externalPressure
        "pericardium pressure around ventricle"
                                   annotation ( Placement(transformation(extent={{94,-58},
              {114,-38}}), iconTransformation(
          extent={{-10,-10},{10,10}},
          rotation=180,
          origin={100,-60})));
    parameter Physiolibrary.Types.Fraction stiffnes
        "parametrization of end diastolic volume curve";
    parameter Physiolibrary.Types.Fraction n_Diastole(displayUnit="1")
        "parametrization of end systolic volume curve";
    // parameter Real Abasic_Diastole "parametrization of end diastolic volume curve";
    parameter Physiolibrary.Types.Pressure NormalFillingPressure
        "Typicall value of mean arterial filling pressure (relative to environment ambient pressure)";
    parameter Physiolibrary.Types.Pressure NormalExternalPressure = -446
        "Typical value of pericardium cavity pressure (relative to environment ambient pressure)";
    parameter Physiolibrary.Types.Volume NormalEndDiastolicVolume
        "= (NormalDiastolicPressure/Abasic_Diastole)^n_Diastole";
    // Abasic_Diastole "parametrization of end diastolic volume curve";
    Physiolibrary.Types.RealIO.VolumeOutput EDV annotation (Placement(transformation(extent={{-74,-74},
              {-34,-34}}), iconTransformation(
          extent={{-10,-10},{10,10}},
          origin={100,80})));
equation
    inflow.q = 0;
  //  P = inflow.pressure;
  //  EDV = ((inflow.pressure-externalPressure)/(stiffnes*Abasic_Diastole))^(1/n_Diastole);
    EDV = NormalEndDiastolicVolume*((inflow.pressure-externalPressure)/(stiffnes*(NormalFillingPressure-NormalExternalPressure)))^(1/n_Diastole);
    //  Stiffness = stiffnes;

      // drawing icon
      /*  for i in 1:size(iconPoint,1) loop
    iconPoint[i,1]=((i-1)/(size(iconPoint,1)))*180 - 90;
    (iconPoint[i,1]+90)*200/180 = ( ( ( (iconPoint[i,2]+40)*200/130)-externalPressure)/(stiffnes*Abasic_Diastole))^(1/n_Diastole);
  end for;
  iconActualPoint[1,1]=EDV*180/200-90 -2;
  iconActualPoint[1,2]=inflow.pressure*130/200-40 -2;
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
end Diastole;
