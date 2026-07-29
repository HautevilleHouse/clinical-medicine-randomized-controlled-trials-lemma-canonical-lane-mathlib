import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineRandomizedControlledTrialsLemmaCanonicalLaneLean

structure ClinicalTrialAdmittedObject where
  trialPopulation : Type
  intervention : Type
  control : Type
  primaryEndpoint : Prop
  conclusion : primaryEndpoint

def ClinicalTrialWitnessClosed (O : ClinicalTrialAdmittedObject) : Prop :=
  O.primaryEndpoint

end ClinicalMedicineRandomizedControlledTrialsLemmaCanonicalLaneLean
end HautevilleHouse
