import canonicalLaneMathlib.AdmissibleClass

/-!
# Final Theorem: Clinical Medicine Randomized Controlled Trials Lemma

This module defines the constrained trial closure and the endgame theorem.
-/

namespace HautevilleHouse
namespace ClinicalMedicineRandomizedControlledTrialsLemmaCanonicalLaneLean

def ConstrainedTrialClosure (A : AdmittedTrialObject) : Prop :=
  TrialWitnessClosed A ∧ gateClosed A

theorem constrained_trial_endgame (A : AdmittedTrialObject) :
    ConstrainedTrialClosure A := by
  exact And.intro A.conclusion A.gateWitness

end ClinicalMedicineRandomizedControlledTrialsLemmaCanonicalLaneLean
end HautevilleHouse