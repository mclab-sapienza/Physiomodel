within Physiomodel.Electrolytes.AcidBase.Tissues.Interstitium;
  model LiverAcidity
    extends Physiomodel.Electrolytes.AcidBase.Tissues.old.Tissue_cTH(
      interstitium(stateName="LiverLactateMass"));
    extends Physiolibrary.Icons.Liver;
  end LiverAcidity;
