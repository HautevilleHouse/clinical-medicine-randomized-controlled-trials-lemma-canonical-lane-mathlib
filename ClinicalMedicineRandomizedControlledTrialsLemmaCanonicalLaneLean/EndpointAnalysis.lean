import ClinicalMedicineRandomizedControlledTrialsLemmaCanonicalLaneLean.CompartmentPharmacokinetics

namespace HautevilleHouse
namespace ClinicalMedicineRandomizedControlledTrialsLemmaCanonicalLaneLean

structure EndpointAnalysisPackage (I : IntentionToTreatPackage) (M : CompartmentModel) where
  primaryOutcome : String
  treatmentEffectEstimate : ℝ
  confidenceInterval : Prop
  pValue : ℝ
  clinicalSignificance : Prop
  analysisPreSpecified : Prop

structure EndpointAnalysisEvidence (I : IntentionToTreatPackage) (M : CompartmentModel) (E : EndpointAnalysisPackage I M) where
  confidenceIntervalClosed : E.confidenceInterval
  clinicalSignificanceClosed : E.clinicalSignificance
  analysisPreSpecifiedClosed : E.analysisPreSpecified

def EndpointAnalysisClosed (I : IntentionToTreatPackage) (M : CompartmentModel) (E : EndpointAnalysisPackage I M) : Prop :=
  E.confidenceInterval ∧ E.clinicalSignificance ∧ E.analysisPreSpecified

theorem endpoint_analysis_closed_from_evidence (I : IntentionToTreatPackage) (M : CompartmentModel) (Ep : EndpointAnalysisPackage I M) (Ev : EndpointAnalysisEvidence I M Ep) :
    EndpointAnalysisClosed I M Ep := by
  exact And.intro Ev.confidenceIntervalClosed (And.intro Ev.clinicalSignificanceClosed Ev.analysisPreSpecifiedClosed)

end ClinicalMedicineRandomizedControlledTrialsLemmaCanonicalLaneLean
end HautevilleHouse