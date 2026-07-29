import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineRandomizedControlledTrialsLemmaCanonicalLaneLean

structure CompartmentModelPackage where
  compartments : Nat
  rates : Type u
  initialConditions : Type v
  solution : Prop
  identifiability : Prop
  identifiabilityClosed : identifiability
  solutionClosed : solution

structure CompartmentModelEvidence (C : CompartmentModelPackage) where
  solutionClosed : C.solution
  identifiabilityClosed : C.identifiability

def CompartmentModelClosed (C : CompartmentModelPackage) : Prop :=
  C.solution ∧ C.identifiability

theorem compartment_model_closed_from_evidence (C : CompartmentModelPackage)
    (E : CompartmentModelEvidence C) : CompartmentModelClosed C := by
  exact And.intro E.solutionClosed E.identifiabilityClosed

end ClinicalMedicineRandomizedControlledTrialsLemmaCanonicalLaneLean
end HautevilleHouse
