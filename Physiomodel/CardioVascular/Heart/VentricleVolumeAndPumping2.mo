within Physiomodel.CardioVascular.Heart;
model VentricleVolumeAndPumping2
  "Multiple PressureFlow connector with pressures from multiple inputs"
    extends Physiolibrary.SteadyStates.Interfaces.SteadyState(state_start=initialVolume, state(nominal=1e-4));

    Physiolibrary.Types.RealIO.VolumeFlowRateInput BloodFlow( displayUnit=
         "ml/min") "heart cardiac output"
      annotation (Placement(transformation(extent={{-140,-20},{-100,20}}), iconTransformation(extent={{-20,-20},{20,20}},
        rotation=90,
        origin={80,-100})));
    Physiolibrary.Hydraulic.Interfaces.HydraulicPort_a q_in annotation (
    Placement(transformation(extent={{100,-20},{140,20}}),
      iconTransformation(extent={{-110,-10},{-90,10}})));

    parameter Physiolibrary.Types.Volume initialVolume(displayUnit="ml");

    Physiolibrary.Hydraulic.Interfaces.HydraulicPort_b q_out annotation (
    extent=[-10,-110; 10,-90], Placement(transformation(extent={{90,-10},
          {110,10}}), iconTransformation(extent={{90,-10},{110,10}})));

    Physiolibrary.Types.VolumeFlowRate delta(displayUnit="ml/min");

    Physiolibrary.Types.RealIO.VolumeInput VentricleSteadyStateVolume(displayUnit="ml")
        "heart ventricle steady state volume"
      annotation (Placement(transformation(extent={{-140,-20},{-100,20}}), iconTransformation(extent={{-20,-20},{20,20}},
        rotation=90,
        origin={-80,-100})));

    parameter Physiolibrary.Types.Frequency K( displayUnit="1/min") = 0.01666666666666666666666666666667;
    parameter Physiolibrary.Types.Volume V0( displayUnit="ml") = 0;
    parameter Physiolibrary.Types.HydraulicCompliance BasicCompliance(displayUnit="ml/mmHg");
    Physiolibrary.Types.RealIO.VolumeOutput Volume(start=initialVolume, displayUnit="ml") annotation (Placement(transformation(
                    extent={{84,-70},{124,-30}}), iconTransformation(extent={{84,-70},{
                      124,-30}})));

            //  Real Compliance(final quantity="Compliance", final displayUnit="ml/mmHg");
            //  Real StressedVol(final quantity="Volume", final displayUnit="ml");
            //  Real Pressure(final quantity="Pressure", final displayUnit="mmHg");
            //initial equation
            //  Volume = initialVolume;
            //der(Volume) = 0;
equation

    delta = (VentricleSteadyStateVolume - Volume)*K;
    /*  if STEADY then
        der(Volume) = 0;
      else
        der(Volume) = delta / Library.SecPerMin;
      end if;
    */
    q_in.q + q_out.q = delta;

    if Simulation == Physiolibrary.Types.SimulationType.SteadyState then //Physiolibrary.SimulationType.STEADY then
        q_in.q = BloodFlow;
    else
        q_in.q = if (delta<0) then BloodFlow else BloodFlow+delta;
    end if;

    //increase (delta>0) average ventricle volume means flow delta from q_in (veins)
    //decrease (delta<0) average ventricle volume means flow delta to q_to (atrys)

    // StressedVol  =  max( Volume - V0,  0.0);
    // Compliance  =  BasicCompliance / VentricleDiastole_Stiffness;
    // Pressure  =  ( StressedVol / Compliance)  + ExternalPressure;

    state = Volume;
    change = delta;
    annotation (Documentation(info="<HTML>
        <p>
        Model has a vector of continuous Real input signals as pressures for
        vector of pressure-flow connectors.
        </p>
        </HTML>
    "));
end VentricleVolumeAndPumping2;