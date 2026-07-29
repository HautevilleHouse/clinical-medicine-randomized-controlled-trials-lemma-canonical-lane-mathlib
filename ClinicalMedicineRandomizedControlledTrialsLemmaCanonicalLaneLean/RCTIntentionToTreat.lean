import ClinicalMedicineRandomizedControlledTrialsLemmaCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace ClinicalMedicineRandomizedControlledTrialsLemmaCanonicalLaneLean

structure IntentionToTreatPackage where
  allRandomizedIncluded : Prop
  missingDataHandling : Prop
  sensitivityAnalysis : Prop
  primaryResultRobust : Prop

structure IntentionToTreatEvidence (I : IntentionToTreatPackage) where
  allRandomizedIncludedClosed : I.allRandomizedIncluded
  missingDataHandlingClosed : I.missingDataHandling
  sensitivityAnalysisClosed : I.sensitivityAnalysis
  primaryResultRobustClosed : I.primaryResultRobust

def IntentionToTreatClosed (I : IntentionToTreatPackage) : Prop :=
  I.allRandomizedIncluded ∧ I.missingDataHandling ∧ I.sensitivityAnalysis ∧ I.primaryResultRobust

theorem intention_to_treat_closed_from_evidence (I : IntentionToTreatPackage) (E : IntentionToTreatEvidence I) :
    IntentionToTreatClosed I := by
  exact And.intro E.allRandomizedIncludedClosed (And.intro E.missingDataHandlingClosed (And.intro E.sensitivityAnalysisClosed E.primaryResultRobustClosed))

end ClinicalMedicineRandomizedControlledTrialsLemmaCanonicalLaneLean
end HautevilleHouse