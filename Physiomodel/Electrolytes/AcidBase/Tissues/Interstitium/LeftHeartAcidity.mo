within Physiomodel.Electrolytes.AcidBase.Tissues.Interstitium;

  model LeftHeartAcidity
    extends Physiomodel.Electrolytes.AcidBase.Tissues.old.Tissue_cTH(
      interstitium(stateName="LeftHeartLactateMass"));
    extends Physiolibrary.Icons.LeftHeart;
  end LeftHeartAcidity;