import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineLifeCourseEpidemiologyTheoremCanonicalLaneLean

structure CompartmentModelPackage where
  compartmentCount : Nat
  transferRateMatrix : Type
  initialCondition : Type
  solutionExists : Prop
  solutionUnique : Prop

structure CompartmentModelEvidence (C : CompartmentModelPackage) where
  solutionExistsClosed : C.solutionExists
  solutionUniqueClosed : C.solutionUnique

def CompartmentModelClosed (C : CompartmentModelPackage) : Prop :=
  C.solutionExists ∧ C.solutionUnique

theorem compartment_model_closed_from_evidence (C : CompartmentModelPackage) (E : CompartmentModelEvidence C) :
    CompartmentModelClosed C := by
  exact And.intro E.solutionExistsClosed E.solutionUniqueClosed

end MedicineLifeCourseEpidemiologyTheoremCanonicalLaneLean
end HautevilleHouse