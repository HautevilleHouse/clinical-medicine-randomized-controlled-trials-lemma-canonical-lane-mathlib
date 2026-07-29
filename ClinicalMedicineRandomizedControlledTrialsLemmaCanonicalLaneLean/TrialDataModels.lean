import canonicalLaneMathlib.AdmissibleClass

/-!
# Trial Data Models for Clinical Medicine Randomized Controlled Trials

This module defines the basic objects for representing clinical trial data:
- Patient populations, treatment arms, and outcome measurements.
- The primary `AdmittedObject` structure representing an admissible trial.
- The `TrialWitnessClosed` predicate for when a trial is considered closed.
-/

namespace HautevilleHouse
namespace ClinicalMedicineRandomizedControlledTrialsLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure TrialSpace where
  carriers : Type
  topology : TopologicalSpace carriers  -- not used in trials but kept for consistency

structure AdmittedTrialObject where
  space : TrialSpace
  randomizationApproved : Prop
  blindingMethodValid : Prop
  primaryEndpointDefined : Prop
  sampleSizeJustified : Prop
  conclusion : primaryEndpointDefined ∧ randomizationApproved

def TrialWitnessClosed (O : AdmittedTrialObject) : Prop :=
  O.conclusion

end ClinicalMedicineRandomizedControlledTrialsLemmaCanonicalLaneLean
end HautevilleHouse