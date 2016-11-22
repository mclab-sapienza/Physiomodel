within Physiomodel.Electrolytes.AcidBase.Tissues.Interstitium;
model OtherTissueAcidity
extends Physiomodel.Electrolytes.AcidBase.Tissues.old.Tissue_cTH(
  interstitium(stateName="OtherTissueLactateMass"));
extends Physiolibrary.Icons.OtherTissue;
end OtherTissueAcidity;