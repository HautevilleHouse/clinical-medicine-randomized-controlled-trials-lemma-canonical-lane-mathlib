import ClinicalMedicineRandomizedControlledTrialsLemmaCanonicalLaneLean.AdmissibleClass
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineRandomizedControlledTrialsLemmaCanonicalLaneLean

structure TrialPopulation where
  cohort : Type
  demographics : Prop
  inclusionExclusionApplied : Prop

structure TreatmentArm where
  intervention : String
  dosageRegimen : Prop

structure ControlArm where
  placeboOrStandard : Prop
  blindingApplied : Prop

structure RandomizationScheme where
  allocationConcealed : Prop
  stratificationPresent : Prop

struct MedAdmittedObject where
  population : TrialPopulation
  treatment : TreatmentArm
  control : ControlArm
  randomization : RandomizationScheme
  primaryEndpoint : String
  analysisComplete : Prop
  conclusion : analysisComplete

def MedWitnessClosed (O : MedAdmittedObject) : Prop :=
  O.analysisComplete

end ClinicalMedicineRandomizedControlledTrialsLemmaCanonicalLaneLean
end HautevilleHouse