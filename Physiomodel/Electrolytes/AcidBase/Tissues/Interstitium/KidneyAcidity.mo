within Physiomodel.Electrolytes.AcidBase.Tissues.Interstitium;
  model KidneyAcidity
    extends Physiomodel.Electrolytes.AcidBase.Tissues.old.Tissue_cTH(
      interstitium(stateName="KidneyLactateMass"));
    extends Physiolibrary.Icons.Kidney;
  end KidneyAcidity;