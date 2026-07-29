import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineRandomizedControlledTrialsLemmaCanonicalLaneLean

structure PharmacokineticsPackage where
  absorptionRate : Type
  eliminationRate : Type
  volumeOfDistribution : Type
  halfLife : Type
  linearKinetics : Prop
  firstOrderElimination : Prop

structure PharmacokineticsEvidence (P : PharmacokineticsPackage) where
  linearKineticsClosed : P.linearKinetics
  firstOrderEliminationClosed : P.firstOrderElimination

def PharmacokineticsClosed (P : PharmacokineticsPackage) : Prop :=
  P.linearKinetics ∧ P.firstOrderElimination

theorem pharmacokinetics_closed_from_evidence (P : PharmacokineticsPackage)
    (E : PharmacokineticsEvidence P) : PharmacokineticsClosed P := by
  exact And.intro E.linearKineticsClosed E.firstOrderEliminationClosed

end ClinicalMedicineRandomizedControlledTrialsLemmaCanonicalLaneLean
end HautevilleHouse