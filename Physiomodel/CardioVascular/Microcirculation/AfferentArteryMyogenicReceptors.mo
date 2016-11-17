within Physiomodel.CardioVascular.Microcirculation;
model AfferentArteryMyogenicReceptors
    extends Physiolibrary.SteadyStates.Interfaces.SteadyState(
                                              stateName="Kidney-Myogenic.AdaptedPressure",
                                              state_start=initialPressure,
                                              state(nominal=1e5));
    parameter Physiolibrary.Types.Time Tau = 4*60*60;
    parameter Physiolibrary.Types.Frequency K =   1 / ( Tau);
    parameter Physiolibrary.Types.Pressure initialPressure;
    Physiolibrary.Types.Pressure AdaptedPressure(displayUnit="mmHg");
    Physiolibrary.Types.RealIO.PressureInput
                                   InterlobarPressure(
                                                displayUnit="mmHg") annotation (
    Placement(transformation(extent={{-100,20},{-60,60}}), iconTransformation(
        extent={{-100,20},{-60,60}})));
    Physiolibrary.Types.RealIO.PressureOutput
                                    PressureChange_SteadyState(
                                                         displayUnit="mmHg")
    annotation (Placement(transformation(extent={{80,-60},{120,-20}}),
      iconTransformation(extent={{80,-60},{120,-20}})));
equation
    state = AdaptedPressure;
    change = K  * ( InterlobarPressure  -  AdaptedPressure);

    PressureChange_SteadyState = InterlobarPressure - AdaptedPressure;
end AfferentArteryMyogenicReceptors;