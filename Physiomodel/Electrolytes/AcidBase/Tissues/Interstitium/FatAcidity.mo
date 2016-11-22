within Physiomodel.Electrolytes.AcidBase.Tissues.Interstitium;

  model FatAcidity
    extends Physiomodel.Electrolytes.AcidBase.Tissues.old.Tissue_cTH(
      interstitium(stateName="FatLactateMass"));
    extends Physiolibrary.Icons.Fat;
  end FatAcidity;