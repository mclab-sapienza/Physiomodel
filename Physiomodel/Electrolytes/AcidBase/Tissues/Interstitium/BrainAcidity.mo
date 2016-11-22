within Physiomodel.Electrolytes.AcidBase.Tissues.Interstitium;
  model BrainAcidity
    extends Physiomodel.Electrolytes.AcidBase.Tissues.old.Tissue_cTH(
      interstitium(stateName="BrainLactateMass"));
    extends Physiolibrary.Icons.Brain;
  end BrainAcidity;