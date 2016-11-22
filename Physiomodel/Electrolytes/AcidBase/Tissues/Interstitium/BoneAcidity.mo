within Physiomodel.Electrolytes.AcidBase.Tissues.Interstitium;
model BoneAcidity
    extends Physiomodel.Electrolytes.AcidBase.Tissues.old.Tissue_cTH(
      interstitium(stateName="BoneLactateMass"));
    extends Physiolibrary.Icons.Bone;
end BoneAcidity;