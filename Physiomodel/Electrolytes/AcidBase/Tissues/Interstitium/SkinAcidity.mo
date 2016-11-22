within Physiomodel.Electrolytes.AcidBase.Tissues.Interstitium;

  model SkinAcidity
    extends Physiomodel.Electrolytes.AcidBase.Tissues.old.Tissue_cTH(
      interstitium(stateName="SkinLactateMass"));
    extends Physiolibrary.Icons.Skin;
  end SkinAcidity;
