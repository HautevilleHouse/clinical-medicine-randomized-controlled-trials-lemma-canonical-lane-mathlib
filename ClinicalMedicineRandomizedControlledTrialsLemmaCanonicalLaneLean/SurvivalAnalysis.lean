import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineRandomizedControlledTrialsLemmaCanonicalLaneLean

structure SurvivalAnalysisPackage where
  hazardFunction : Prop
  survivalFunction : Prop
  kaplanMeierEstimator : Prop
  coxProportionalHazards : Prop
  logRankTest : Prop
  hazardFunctionClosed : hazardFunction
  survivalFunctionClosed : survivalFunction
  kaplanMeierEstimatorClosed : kaplanMeierEstimator
  coxProportionalHazardsClosed : coxProportionalHazards
  logRankTestClosed : logRankTest

structure SurvivalAnalysisEvidence (S : SurvivalAnalysisPackage) where
  hazardFunctionClosed : S.hazardFunction
  survivalFunctionClosed : S.survivalFunction
  kaplanMeierEstimatorClosed : S.kaplanMeierEstimator
  coxProportionalHazardsClosed : S.coxProportionalHazards
  logRankTestClosed : S.logRankTest

def SurvivalAnalysisClosed (S : SurvivalAnalysisPackage) : Prop :=
  S.hazardFunction ∧ S.survivalFunction ∧ S.kaplanMeierEstimator ∧
  S.coxProportionalHazards ∧ S.logRankTest

theorem survival_analysis_closed_from_evidence (S : SurvivalAnalysisPackage)
    (E : SurvivalAnalysisEvidence S) : SurvivalAnalysisClosed S := by
  exact And.intro E.hazardFunctionClosed
    (And.intro E.survivalFunctionClosed
      (And.intro E.kaplanMeierEstimatorClosed
        (And.intro E.coxProportionalHazardsClosed E.logRankTestClosed)))

end ClinicalMedicineRandomizedControlledTrialsLemmaCanonicalLaneLean
end HautevilleHouse
