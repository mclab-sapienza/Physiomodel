within Physiomodel.Electrolytes.AcidBase.Tissues.Interstitium;
  model RightHeartAcidity
    extends Physiomodel.Electrolytes.AcidBase.Tissues.old.Tissue_cTH(
      interstitium(stateName="RightHeartLactateMass"));
    extends Physiolibrary.Icons.RightHeart;
  end RightHeartAcidity;