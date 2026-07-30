import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineLifeCourseEpidemiologyTheoremCanonicalLaneLean

def ConstrainedMedicineClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_medicine_endgame (A : AdmissibleClass) :
    ConstrainedMedicineClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MedicineLifeCourseEpidemiologyTheoremCanonicalLaneLean
end HautevilleHouse