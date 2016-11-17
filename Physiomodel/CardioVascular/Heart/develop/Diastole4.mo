within Physiomodel.CardioVascular.Heart.develop;
model Diastole4
    Real iconPoint[20,2](final displayUnit="mm");
    Real iconActualPoint[2,2](final displayUnit="mm");

    Physiolibrary.Hydraulic.Interfaces.HydraulicPort_a inflow annotation (
        Placement(transformation(extent={{-122,-24},{-82,16}}),
        iconTransformation(extent={{-120,20},{-80,60}})));

    Modelica.Blocks.Interfaces.RealInput externalPressure(final quantity="Pressure", final displayUnit="mmHg")
        "pericardium pressure around ventricle"
         annotation ( Placement(transformation(extent={{94,-58},
            {114,-38}}), iconTransformation(
            extent={{-10,-10},{10,10}},
            rotation=180,
            origin={100,-60})));

    parameter Real stiffnes "parametrization of end diastolic volume curve";
    parameter Real n_Diastole "parametrization of end systolic volume curve";
    parameter Real Abasic_Diastole "parametrization of end diastolic volume curve";

    Modelica.Blocks.Interfaces.RealOutput EDV( final quantity="Volume", final displayUnit="ml")   
        annotation (Placement(transformation(extent={{-74,-74},
        {-34,-34}}), iconTransformation(
        extent={{-10,-10},{10,10}},
        origin={100,80})));

    Modelica.Blocks.Interfaces.RealOutput P(final quantity="Pressure",
    final displayUnit="mmHg") annotation (Placement(transformation(extent={{-74,-74},
        {-34,-34}}), iconTransformation(
        extent={{-10,-10},{10,10}},
        rotation=270,
        origin={60,-60})));
        Modelica.Blocks.Interfaces.RealOutput Stiffness
         annotation (Placement(transformation(extent={{-74,-74},
        {-34,-34}}), iconTransformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={-68,100})));
    Modelica.Blocks.Interfaces.RealInput HR(final quantity="Frequency", final displayUnit=
    "1/min") "heart rate" annotation ( Placement(transformation(extent={{94,-58},
        {114,-38}}), iconTransformation(
        extent={{-10,-10},{10,10}},
        rotation=180,
        origin={100,8})));
    Real HR_effect;
    Real EDV_withoutHReffect;

    Modelica.Blocks.Interfaces.RealInput preESV(final quantity="Volume", final displayUnit=
    "ml") "previous end systolic volume"
                 annotation ( Placement(transformation(extent={{94,-58},
        {114,-38}}), iconTransformation(
        extent={{-10,-10},{10,10}},
        rotation=180,
        origin={100,48})));
equation
    inflow.q = 0;
    P = inflow.pressure;
    //linearna zavislost na HR - vid. mathematica/Efect_EDVonHR.nb
    HR_effect = -0.00247654 * HR + 1.18574; //  1 = a*75+b;

    EDV_withoutHReffect = (((inflow.pressure-externalPressure)/(stiffnes*Abasic_Diastole))^(1/n_Diastole));
    EDV = HR_effect * (EDV_withoutHReffect-preESV) + preESV;
    Stiffness = stiffnes;

    // drawing icon
    for i in 1:size(iconPoint,1) loop
    iconPoint[i,1]=((i-1)/(size(iconPoint,1)))*180 - 90;
    (iconPoint[i,1]+90)*200/180 = ( ( ( (iconPoint[i,2]+40)*200/130)-externalPressure)/(stiffnes*Abasic_Diastole))^(1/n_Diastole);
    end for;
    iconActualPoint[1,1]=EDV*180/200-90 -2;
    iconActualPoint[1,2]=inflow.pressure*130/200-40 -2;
    iconActualPoint[2,1]=iconActualPoint[1,1]+4;
    iconActualPoint[2,2]=iconActualPoint[1,2]+4;
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
          textString="%name"),
        Line(
          points=DynamicSelect({{-100,0},{100,0}}, iconPoint),
          color={0,0,255},
          smooth=Smooth.None),
        Ellipse(
          extent=DynamicSelect({{0,0},{0,0}}, iconActualPoint),
          lineColor={0,0,0},
          fillColor={255,0,0},
          fillPattern=FillPattern.Solid)}),
                Documentation(info="<html>
                <p>The relationship heart rate(HR)-end diastolic volume(EDV) is represented by linear function -0.00247654 HR + 1.18574.</p>
                <p>The coeficients was choosen to solve normal state and critical zero state: (Solve[{a*75 + b == 1, a*HR + b == 0, diastoleTime[HR] == 0}, {a, b}]).</p>
                <p>It means the next ventricle filling model:</p>
                <p>cardiac cycle time (T) = (60/HR) [s]</p>
                <p>systolic contraction time (Ts) = (0.3*T^0.5) [s]</p>
                <p>diastolic filling time (Tdf) = T - Ts - 0.18*Ts [s]</p>
                <p>steady-state filling curve:</p>
                <p><img src=\"C:/Users/oto/Desktop/Physiomodel/mathematicaGUI/Effect_EDVonHR.png\"/></p>
                <p>axes x .. filling time = Tdf [s]</p>
                <p>axes y .. entered volume part = stroke volume (SV)/normal_SV [x 100 &percnt;]</p>
                <p><br/>EDV = SV + pre(ESV) = effect(HR) * ((EDV_without_HR_effect - pre(ESV)) + pre(ESV)</p>
        </html>"));
end Diastole4;