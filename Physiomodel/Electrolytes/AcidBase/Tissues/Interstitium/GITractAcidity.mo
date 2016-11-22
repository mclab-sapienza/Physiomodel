within Physiomodel.Electrolytes.AcidBase.Tissues.Interstitium;
  model GITractAcidity
    extends Physiomodel.Electrolytes.AcidBase.Tissues.old.Tissue_cTH(
      interstitium(stateName="GITractLactateMass"));
    extends Physiolibrary.Icons.GITract;
  end GITractAcidity;
