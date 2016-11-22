within Physiomodel.Electrolytes.AcidBase.Tissues.Interstitium;
model RespiratoryMuscleAcidity
    extends Physiomodel.Electrolytes.AcidBase.Tissues.old.Tissue_cTH(
      interstitium(stateName="RespiratoryMuscleLactateMass"));
    extends Physiolibrary.Icons.RespiratoryMuscle;
end RespiratoryMuscleAcidity;