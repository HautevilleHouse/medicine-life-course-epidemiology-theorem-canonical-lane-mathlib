import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineLifeCourseEpidemiologyTheoremCanonicalLaneLean

structure AdmittedObject where
  population : Type
  timeDomain : Type
  compartmentModel : Prop
  pharmacokinteticModel : Prop
  diagnosticInference : Prop
  survivalAnalysis : Prop
  conclusion : compartmentModel ∧ pharmacokinteticModel ∧ diagnosticInference ∧ survivalAnalysis

structure AdmissibleClass where
  object : AdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MedicineLifeCourseEpidemiologyTheoremCanonicalLaneLean
end HautevilleHouse