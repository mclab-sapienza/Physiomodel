within Physiomodel.Electrolytes.AcidBase.Tissues.Interstitium;
model SkeletalMuscleAcidity
    extends Physiomodel.Electrolytes.AcidBase.Tissues.old.Tissue_cTH(
      interstitium(stateName="SkeletalMuscleLactateMass"), inputPump1(
        q_out(conc(start=5e-5)), useSoluteFlowInput=true));
    extends Physiolibrary.Icons.SkeletalMuscle;
 end SkeletalMuscleAcidity;