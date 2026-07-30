import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MedicineLifeCourseEpidemiologyTheoremCanonicalLaneLean.CompartmentModel

namespace HautevilleHouse
namespace MedicineLifeCourseEpidemiologyTheoremCanonicalLaneLean

structure PharmacokineticPackage (M : CompartmentModel) where
  absorptionRate : Prop
  distributionVolume : Prop
  eliminationRate : Prop
  doseResponseCurve : Prop
  linearPharmacokinetics : Prop

structure PharmacokineticEvidence {M : CompartmentModel} (P : PharmacokineticPackage M) where
  absorptionRateClosed : P.absorptionRate
  distributionVolumeClosed : P.distributionVolume
  eliminationRateClosed : P.eliminationRate
  doseResponseCurveClosed : P.doseResponseCurve
  linearPharmacokineticsClosed : P.linearPharmacokinetics

def PharmacokineticClosed {M : CompartmentModel} (P : PharmacokineticPackage M) : Prop :=
  P.absorptionRate ∧ P.distributionVolume ∧ P.eliminationRate ∧ P.doseResponseCurve ∧ P.linearPharmacokinetics

theorem pharmacokinetic_closed_from_evidence {M : CompartmentModel} (P : PharmacokineticPackage M) (E : PharmacokineticEvidence P) : PharmacokineticClosed P :=
  And.intro E.absorptionRateClosed (And.intro E.distributionVolumeClosed (And.intro E.eliminationRateClosed (And.intro E.doseResponseCurveClosed E.linearPharmacokineticsClosed)))

end MedicineLifeCourseEpidemiologyTheoremCanonicalLaneLean
end HautevilleHouse