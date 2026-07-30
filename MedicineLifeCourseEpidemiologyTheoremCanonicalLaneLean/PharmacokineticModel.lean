import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineLifeCourseEpidemiologyTheoremCanonicalLaneLean

structure PharmacokineticModelPackage where
  absorptionRate : ℝ
  eliminationRate : ℝ
  volumeDistribution : ℝ
  dose : ℝ
  concentrationCurve : ℝ → ℝ
  curveDerivedFromRates : Prop

structure PharmacokineticModelEvidence (P : PharmacokineticModelPackage) where
  curveDerivedClosed : P.curveDerivedFromRates

def PharmacokineticModelClosed (P : PharmacokineticModelPackage) : Prop :=
  P.curveDerivedFromRates

theorem pharmacokinetic_model_closed_from_evidence (P : PharmacokineticModelPackage) (E : PharmacokineticModelEvidence P) :
    PharmacokineticModelClosed P := by
  exact E.curveDerivedClosed

end MedicineLifeCourseEpidemiologyTheoremCanonicalLaneLean
end HautevilleHouse