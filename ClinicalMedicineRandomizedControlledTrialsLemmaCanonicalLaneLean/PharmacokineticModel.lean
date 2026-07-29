import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineRandomizedControlledTrialsLemmaCanonicalLaneLean

structure PharmacokineticModelPackage where
  absorptionConstant : ℝ
  eliminationConstant : ℝ
  volumeOfDistribution : ℝ
  doseRegimen : Prop
  concentrationProfile : Prop
  AUCformula : Prop

structure PharmacokineticModelEvidence (P : PharmacokineticModelPackage) where
  doseRegimenClosed : P.doseRegimen
  concentrationProfileClosed : P.concentrationProfile
  AUCformulaClosed : P.AUCformula

def PharmacokineticModelClosed (P : PharmacokineticModelPackage) : Prop :=
  P.doseRegimen ∧ P.concentrationProfile ∧ P.AUCformula

theorem pharmacokinetic_model_closed_from_evidence (P : PharmacokineticModelPackage)
    (E : PharmacokineticModelEvidence P) : PharmacokineticModelClosed P := by
  exact And.intro E.doseRegimenClosed (And.intro E.concentrationProfileClosed E.AUCformulaClosed)

end ClinicalMedicineRandomizedControlledTrialsLemmaCanonicalLaneLean
end HautevilleHouse
