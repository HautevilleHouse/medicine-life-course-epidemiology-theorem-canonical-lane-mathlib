import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineLifeCourseEpidemiologyTheoremCanonicalLaneLean

structure DiagnosticInferencePackage where
  testSensitivity : Type u
  testSpecificity : Type v
  pretestProbability : Prop
  likelihoodRatio : Prop
  posttestProbabilityFormula : Prop
  bayesUpdateLaw : Prop

structure DiagnosticInferenceEvidence (D : DiagnosticInferencePackage) where
  pretestProbabilityClosed : D.pretestProbability
  likelihoodRatioClosed : D.likelihoodRatio
  posttestProbabilityFormulaClosed : D.posttestProbabilityFormula
  bayesUpdateLawClosed : D.bayesUpdateLaw

def DiagnosticInferenceClosed (D : DiagnosticInferencePackage) : Prop :=
  D.pretestProbability ∧ D.likelihoodRatio ∧
  D.posttestProbabilityFormula ∧ D.bayesUpdateLaw

theorem diagnostic_inference_closed_from_evidence (D : DiagnosticInferencePackage)
    (E : DiagnosticInferenceEvidence D) : DiagnosticInferenceClosed D := by
  exact And.intro E.pretestProbabilityClosed
    (And.intro E.likelihoodRatioClosed
      (And.intro E.posttestProbabilityFormulaClosed E.bayesUpdateLawClosed))

end MedicineLifeCourseEpidemiologyTheoremCanonicalLaneLean
end HautevilleHouse