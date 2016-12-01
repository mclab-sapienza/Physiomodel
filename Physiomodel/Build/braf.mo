model braf
  Physiomodel.Nerves.BetaReceptorsActivityFactor bRAF;
  Physiomodel.Hormones.IO_Bus.Input hormonesInput;
  /* Physiomodel.Nerves.IO_Bus.Input nervesInput; */
  Physiolibrary.Types.BusConnector busConnector;
 
equation
  connect(busConnector, hormonesInput.busConnector);
  /* connect(busConnector, nervesInput.busConnector); */
  connect(busConnector.GangliaGeneral_NA, bRAF.GangliaGeneral_NA);
  connect(busConnector.BetaPool_Effect, bRAF.BetaPool_Effect);
  connect(busConnector.BetaBlockade_Effect, bRAF.BetaBlockade_Effect);
  connect(busConnector.yBase, bRAF.yBase);
  connect(busConnector, hormonesInput.busConnector);
end braf;
