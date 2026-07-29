import ClinicalMedicineRandomizedControlledTrialsLemmaCanonicalLaneLean.RCTIntentionToTreat

namespace HautevilleHouse
namespace ClinicalMedicineRandomizedControlledTrialsLemmaCanonicalLaneLean

structure CompartmentModel where
  compartments : Nat
  absorptionRate : ℝ
  eliminationRate : ℝ
  volumeOfDistribution : ℝ
  drugConcentrationOverTime : ℝ → ℝ
  modelIdentified : Prop
  parametersEstimated : Prop

structure CompartmentEvidence (M : CompartmentModel) where
  modelIdentifiedClosed : M.modelIdentified
  parametersEstimatedClosed : M.parametersEstimated

def CompartmentModelClosed (M : CompartmentModel) : Prop :=
  M.modelIdentified ∧ M.parametersEstimated

theorem compartment_model_closed_from_evidence (M : CompartmentModel) (E : CompartmentEvidence M) :
    CompartmentModelClosed M := by
  exact And.intro E.modelIdentifiedClosed E.parametersEstimatedClosed

end ClinicalMedicineRandomizedControlledTrialsLemmaCanonicalLaneLean
end HautevilleHouse