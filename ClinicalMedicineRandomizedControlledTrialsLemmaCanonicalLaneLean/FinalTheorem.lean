import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClinicalMedicineRandomizedControlledTrialsLemmaCanonicalLaneLean.CompartmentModel
import HautevilleHouse.ClinicalMedicineRandomizedControlledTrialsLemmaCanonicalLaneLean.DiagnosticInference
import HautevilleHouse.ClinicalMedicineRandomizedControlledTrialsLemmaCanonicalLaneLean.SurvivalAnalysis

namespace HautevilleHouse
namespace ClinicalMedicineRandomizedControlledTrialsLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied

def gateClosed (A : AdmissibleClass) : Prop :=
  A.remainderRecorded

def ConstrainedRCTClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_rct_endgame (A : AdmissibleClass) :
    ConstrainedRCTClosure A := by
  exact And.intro A.endpointSatisfied A.gateWitness

end ClinicalMedicineRandomizedControlledTrialsLemmaCanonicalLaneLean
end HautevilleHouse
