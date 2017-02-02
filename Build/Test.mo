model Test
  Physiolibrary.Types.BusConnector busConnector;
  Physiomodel.CardioVascular.CardioVascularSystem cardioVascularSystem;
  Physiomodel.Hormones.Hormones hormones;
  Physiomodel.Electrolytes.Electrolytes electrolytes;
  Physiomodel.Gases.Gases gases(
    oxygen(
      tissuesO2(
        skeletalMuscleO2(
          O2Tissue(
            a(start=0.518),
            pCO2(displayUnit="mmHg"),
            sO2CO(start=0.367),
            pO2(start=5332.8954966, displayUnit="mmHg")
          )
        )
      )
    )
  );
  Physiomodel.Proteins.Proteins proteins;
  Physiomodel.Nerves.Nerves nerves;
  Physiomodel.Heat.Heat2 heat;
  Physiomodel.Water.Water water;
  Physiomodel.Metabolism.NutrientsAndMetabolism nutrientsAndMetabolism;
  Physiomodel.Status.TissuesFitness status;
  Physiomodel.Setup.Setup setup;
equation
  connect(busConnector, cardioVascularSystem.busConnector);
  connect(busConnector, hormones.busConnector);
  connect(busConnector, electrolytes.busConnector);
  connect(busConnector, gases.busConnector);
  connect(busConnector, proteins.busConnector);
  connect(busConnector, nerves.busConnector);
  connect(busConnector, heat.busConnector);
  connect(busConnector, water.busConnector);
  connect(busConnector, nutrientsAndMetabolism.busConnector);
  connect(busConnector, status.busConnector);
  connect(busConnector, setup.busConnector);
end Test;
