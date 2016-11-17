within Physiomodel.CardioVascular.Microcirculation;
model VariableResistorWithMyogenicResponse
    extends Physiolibrary.Icons.Resistor;

    Physiolibrary.Hydraulic.Interfaces.HydraulicPort_a q_in "Blood inflow"
    annotation (extent=[-10,-110; 10,-90], Placement(transformation(extent=
            {{90,-10},{110,10}}), iconTransformation(extent={{90,-10},{110,
            10}})));
    Physiolibrary.Hydraulic.Interfaces.HydraulicPort_b q_out "Blood outflow"
    annotation (extent=[-10,-110; 10,-90], Placement(transformation(extent=
            {{-110,-10},{-90,10}}), iconTransformation(extent={{-110,-10},{
            -90,10}})));

    //(q_in(pressure(start=95.5)),q_out(pressure(start=61.5)));
    extends Physiolibrary.SteadyStates.Interfaces.SteadyState(
                                                stateName="Kidney-MyogenicDelay.PressureChange", state_start=InitialPressureChange);

    Physiolibrary.Types.RealIO.HydraulicConductanceInput cond(displayUnit="ml/(min.mmHg)")
      annotation (Placement(transformation(extent={{-100,92},             {-80,112}}), iconTransformation(
               extent={{-10,-10},{10,10}},         rotation=270,         origin={0,40})));

    Physiolibrary.Types.Fraction myogenicEffect;
    Physiolibrary.Types.Pressure pressureChange(start=InitialPressureChange); //(start=0.161874);
    //  Real pressureChangeSteadyState;
    // Real adaptedPressure; //(start=77.9546);
    //  Real interlobarPressure;
    parameter Physiolibrary.Types.Pressure InitialPressureChange=0;

    parameter Physiolibrary.Types.Frequency K_PressureChange(displayUnit="1/min") =  2.0/60;
    parameter Physiolibrary.Types.Time Tau_PressureAdoption(displayUnit="hod") =  4.0*60*60;
    parameter Real[:,3] PressureChangeOnMyogenicCondEffect;
    Physiolibrary.Blocks.Interpolation.Curve PressureChangeOnCondEffect(
    x=PressureChangeOnMyogenicCondEffect[:, 1],
    y=PressureChangeOnMyogenicCondEffect[:, 2],
    slope=PressureChangeOnMyogenicCondEffect[:, 3],
    Xscale=101325/760)
    annotation (Placement(transformation(extent={{14,26},{34,46}})));

    AfferentArteryMyogenicReceptors kidneyMyogenic(initialPressure(
        displayUnit="mmHg") = 9999.179056125)
    annotation (Placement(transformation(extent={{-46,50},{-26,70}})));
    //initial equation
    // adaptedPressure = interlobarPressure;
    //der(adaptedPressure) = 0;
    // der(pressureChange) = 0;
equation
    q_in.q + q_out.q = 0;

    q_in.q = myogenicEffect * cond * (q_in.pressure - q_out.pressure);
    kidneyMyogenic.InterlobarPressure = (q_in.pressure + q_out.pressure)/2;  //stredny tlak v arteriole
    // der(adaptedPressure) = (1/(60*Tau_PressureAdoption)) * (interlobarPressure-adaptedPressure); //receptory sa adaptuju na tlak (polcas adaptacie nastane za 2hod a 45min)
    // pressureChangeSteadyState = interlobarPressure-adaptedPressure;  //zmena tlaku sa taktiez adaptuje - neviem preco? => potom to vizera, ze stimulacia receptorov je postupny proces (polcas nabudenia stimulacie je 20 sekund)

    state = pressureChange;
    change = K_PressureChange * (kidneyMyogenic.PressureChange_SteadyState - pressureChange);

    PressureChangeOnCondEffect.u = pressureChange; //zmena tlaku aktivuje receptory
    myogenicEffect = PressureChangeOnCondEffect.val; //stimulacia receptorov ma vplyv na vodivost (odpor) krvi aferentnej arterie
    annotation ( Icon(graphics={
      Text(
        extent={{-110,-68},{106,-32}},
        textString="%name",
        lineColor={0,0,255}),
      Text(
        extent={{-68,-20},{66,12}},
        lineColor={0,0,0},
        textString="blood flow"),
      Rectangle(
        extent={{-70,30},{70,-30}},
        lineColor={0,0,255},
        fillColor={215,215,215},
        fillPattern=FillPattern.Sphere),
      Text(
        extent={{-54,20},{52,-18}},
        lineColor={0,0,0},
        fillPattern=FillPattern.Sphere,
        fillColor={215,215,215},
        textString="Myogenic")}),
    Documentation(info="<html> <pre>Receptory sa adaptuju na priemerny tlak v arteriole - polcas adaptacie nastane za 2hod a 45min.
    Zmena tlaku sa taktiez adaptuje - neviem preco? =&GT; potom to vizera, ze stimulacia receptorov je postupny proces (polcas nabudenia stimulacie je 20 sekund).
    Zmena tlaku aktivuje receptory, ktorych stimulacia ma vplyv na vasokonstrikciu danej arterioly.</pre> </html>"));
end VariableResistorWithMyogenicResponse;