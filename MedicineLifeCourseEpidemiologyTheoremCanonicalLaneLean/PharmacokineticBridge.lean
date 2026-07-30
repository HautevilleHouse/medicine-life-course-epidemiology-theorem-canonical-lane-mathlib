import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineLifeCourseEpidemiologyTheoremCanonicalLaneLean

structure PharmacokineticPackage where
  drugCompartment : Type u
  doseRegimen : Type v
  absorptionModel : Prop
  distributionVolumeLaw : Prop
  eliminationRate : Prop
  steadyStateAchieved : Prop

structure PharmacokineticEvidence (P : PharmacokineticPackage) where
  absorptionModelClosed : P.absorptionModel
  distributionVolumeLawClosed : P.distributionVolumeLaw
  eliminationRateClosed : P.eliminationRate
  steadyStateAchievedClosed : P.steadyStateAchieved

def PharmacokineticClosed (P : PharmacokineticPackage) : Prop :=
  P.absorptionModel ∧ P.distributionVolumeLaw ∧
  P.eliminationRate ∧ P.steadyStateAchieved

theorem pharmacokinetic_closed_from_evidence (P : PharmacokineticPackage)
    (E : PharmacokineticEvidence P) : PharmacokineticClosed P := by
  exact And.intro E.absorptionModelClosed
    (And.intro E.distributionVolumeLawClosed
      (And.intro E.eliminationRateClosed E.steadyStateAchievedClosed))

end MedicineLifeCourseEpidemiologyTheoremCanonicalLaneLean
end HautevilleHouse