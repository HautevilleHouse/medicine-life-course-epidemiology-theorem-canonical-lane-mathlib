import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineLifeCourseEpidemiologyTheoremCanonicalLaneLean

structure CompartmentModelPackage where
  ageGroups : Nat
  riskStates : Nat
  transitionRates : Type u
  rateLaws : Type v
  baselineIncidence : Prop
  progressionPDE : Prop
  closedSystemEquation : Prop

structure CompartmentModelEvidence (M : CompartmentModelPackage) where
  baselineIncidenceClosed : M.baselineIncidence
  progressionPDEClosed : M.progressionPDE
  closedSystemEquationClosed : M.closedSystemEquation

def CompartmentModelClosed (M : CompartmentModelPackage) : Prop :=
  M.baselineIncidence ∧ M.progressionPDE ∧ M.closedSystemEquation

theorem compartment_model_closed_from_evidence (M : CompartmentModelPackage)
    (E : CompartmentModelEvidence M) : CompartmentModelClosed M := by
  exact And.intro E.baselineIncidenceClosed
    (And.intro E.progressionPDEClosed E.closedSystemEquationClosed)

end MedicineLifeCourseEpidemiologyTheoremCanonicalLaneLean
end HautevilleHouse