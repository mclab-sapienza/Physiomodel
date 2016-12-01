model DiastoleTest
  Physiolibrary.Hydraulic.Interfaces.HydraulicPort_a inflow;
  Physiolibrary.Types.RealIO.PressureInput externalPressure;
  Physiolibrary.Types.RealIO.VolumeOutput EDV;
  parameter Physiolibrary.Types.Volume NormalEndDiastolicVolume;
  parameter Physiolibrary.Types.Pressure NormalFillingPressure;
  parameter Physiolibrary.Types.Fraction stiffnes;
  parameter Physiolibrary.Types.Fraction n_Diastole(displayUnit="1");
  parameter Physiolibrary.Types.Pressure NormalExternalPressure = -446;
equation
  /* inflow.q = 0; */
  EDV = NormalEndDiastolicVolume*((inflow.pressure-externalPressure)/(stiffnes*(NormalFillingPressure-NormalExternalPressure)))^(1/n_Diastole);
end DiastoleTest;

model Test  
  parameter Physiolibrary.Types.Volume NormalEndDiastolicVolume = 70e-6;
  parameter Physiolibrary.Types.Pressure NormalFillingPressure = (0.00051*101325/760)*(NormalEndDiastolicVolume^(1/n_Diastole));
  parameter Physiolibrary.Types.Fraction stiffnes = 1;
  parameter Physiolibrary.Types.Fraction n_Diastole(displayUnit="1") = 2;
  parameter Physiolibrary.Types.Pressure NormalExternalPressure = -446;
  /* Physiomodel.CardioVascular.Heart.Diastole diastole( */
  DiastoleTest diastole(
      stiffnes=stiffnes,
      n_Diastole=n_Diastole,
      NormalFillingPressure=NormalFillingPressure,
      NormalEndDiastolicVolume=NormalEndDiastolicVolume,
      NormalExternalPressure(displayUnit="Pa") = NormalExternalPressure
    );
  Physiolibrary.Hydraulic.Interfaces.HydraulicPort_a q_in;
  Modelica.Blocks.Sources.Step step(startTime=600, height=0, offset=-3);
  Physiolibrary.Types.BusConnector busConnector;
equation
  connect(step.y, busConnector.Pericardium_Pressure);
  connect(busConnector.Pericardium_Pressure, diastole.externalPressure);
  connect(q_in, diastole.inflow);
  q_in.pressure = time^2; //fake pressure
end Test;
