import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineRandomizedControlledTrialsLemmaCanonicalLaneLean

structure DiagnosticInferencePackage where
  sensitivity : Prop
  specificity : Prop
  positivePredictiveValue : Prop
  negativePredictiveValue : Prop
  likelihoodRatio : Prop
  sensitivityClosed : sensitivity
  specificityClosed : specificity
  positivePredictiveValueClosed : positivePredictiveValue
  negativePredictiveValueClosed : negativePredictiveValue
  likelihoodRatioClosed : likelihoodRatio

structure DiagnosticInferenceEvidence (D : DiagnosticInferencePackage) where
  sensitivityClosed : D.sensitivity
  specificityClosed : D.specificity
  positivePredictiveValueClosed : D.positivePredictiveValue
  negativePredictiveValueClosed : D.negativePredictiveValue
  likelihoodRatioClosed : D.likelihoodRatio

def DiagnosticInferenceClosed (D : DiagnosticInferencePackage) : Prop :=
  D.sensitivity ∧ D.specificity ∧ D.positivePredictiveValue ∧
  D.negativePredictiveValue ∧ D.likelihoodRatio

theorem diagnostic_inference_closed_from_evidence (D : DiagnosticInferencePackage)
    (E : DiagnosticInferenceEvidence D) : DiagnosticInferenceClosed D := by
  exact And.intro E.sensitivityClosed
    (And.intro E.specificityClosed
      (And.intro E.positivePredictiveValueClosed
        (And.intro E.negativePredictiveValueClosed E.likelihoodRatioClosed)))

end ClinicalMedicineRandomizedControlledTrialsLemmaCanonicalLaneLean
end HautevilleHouse
