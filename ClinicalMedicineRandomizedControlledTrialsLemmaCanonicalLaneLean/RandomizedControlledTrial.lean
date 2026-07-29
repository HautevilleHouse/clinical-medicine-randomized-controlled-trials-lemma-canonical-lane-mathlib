import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineRandomizedControlledTrialsLemmaCanonicalLaneLean

structure RandomizedControlledTrialPackage where
  treatmentArm : Type
  controlArm : Type
  randomizationScheme : Prop
  blindingMethod : Prop
  primaryEndpoint : Prop
  sampleSizeCalculated : Prop

structure RandomizedControlledTrialEvidence (R : RandomizedControlledTrialPackage) where
  randomizationSchemeClosed : R.randomizationScheme
  blindingMethodClosed : R.blindingMethod
  primaryEndpointClosed : R.primaryEndpoint
  sampleSizeCalculatedClosed : R.sampleSizeCalculated

def RandomizedControlledTrialClosed (R : RandomizedControlledTrialPackage) : Prop :=
  R.randomizationScheme ∧ R.blindingMethod ∧ R.primaryEndpoint ∧ R.sampleSizeCalculated

theorem rct_closed_from_evidence (R : RandomizedControlledTrialPackage)
    (E : RandomizedControlledTrialEvidence R) : RandomizedControlledTrialClosed R := by
  exact And.intro E.randomizationSchemeClosed
    (And.intro E.blindingMethodClosed
      (And.intro E.primaryEndpointClosed E.sampleSizeCalculatedClosed))

end ClinicalMedicineRandomizedControlledTrialsLemmaCanonicalLaneLean
end HautevilleHouse