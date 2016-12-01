model Test  
  parameter Physiolibrary.Types.Pressure NormalSystolicPressure = 15998.684210526315789473684210526;
  parameter Physiolibrary.Types.Volume NormalEndSystolicVolume = (NormalSystolicPressure/(17.39*101325/760))^(n_Systole);
  parameter Physiolibrary.Types.Pressure additionalPressure_Systolic;
  parameter Physiolibrary.Types.Fraction n_Systole(displayUnit="1")=0.5;
  parameter Physiolibrary.Types.Pressure NormalExternalPressure = -446;

  Physiomodel.CardioVascular.Heart.Systole systole(
      n_Systole=n_Systole,
      additionalPressure_Systolic=additionalPressure_Systolic,
      NormalSystolicPressure=NormalSystolicPressure,
      NormalEndSystolicVolume=NormalEndSystolicVolume,
      NormalExternalPressure=NormalExternalPressure
    );
  Physiolibrary.Types.RealIO.FractionInput contractility = 10.0;
  Physiolibrary.Hydraulic.Interfaces.HydraulicPort_b outflow;
  Modelica.Blocks.Sources.Step step(startTime=600, height=0, offset=-3);
  Physiolibrary.Types.BusConnector busConnector;
equation
  connect(contractility, systole.contractility);
  connect(outflow, systole.outflow);
  connect(step.y, busConnector.Pericardium_Pressure);
  connect(busConnector.Pericardium_Pressure, systole.externalPressure);
  annotation(experiment(StopTime=10));
end Test;
