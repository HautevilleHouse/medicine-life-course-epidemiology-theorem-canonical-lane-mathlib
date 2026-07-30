import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineLifeCourseEpidemiologyTheoremCanonicalLaneLean

structure CausalInferencePackage where
  exposureDefinition : Type
  outcomeDefinition : Type
  confoundingVariables : Type
  identifiabilityAssumptions : Prop
  causalEffectEstimable : Prop

structure CausalInferenceEvidence (C : CausalInferencePackage) where
  causalEffectEstimableClosed : C.causalEffectEstimable

def CausalInferenceClosed (C : CausalInferencePackage) : Prop :=
  C.causalEffectEstimable

theorem causal_inference_closed_from_evidence (C : CausalInferencePackage) (E : CausalInferenceEvidence C) :
    CausalInferenceClosed C := by
  exact E.causalEffectEstimableClosed

end MedicineLifeCourseEpidemiologyTheoremCanonicalLaneLean
end HautevilleHouse