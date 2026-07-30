import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineLifeCourseEpidemiologyTheoremCanonicalLaneLean

structure LifeCourseTrajectoryPackage where
  timePoints : Type
  states : Type
  transitionProbabilities : Type
  trajectoryExists : Prop
  trajectoryUnique : Prop

structure LifeCourseTrajectoryEvidence (L : LifeCourseTrajectoryPackage) where
  trajectoryExistsClosed : L.trajectoryExists
  trajectoryUniqueClosed : L.trajectoryUnique

def LifeCourseTrajectoryClosed (L : LifeCourseTrajectoryPackage) : Prop :=
  L.trajectoryExists ∧ L.trajectoryUnique

theorem life_course_trajectory_closed_from_evidence (L : LifeCourseTrajectoryPackage) (E : LifeCourseTrajectoryEvidence L) :
    LifeCourseTrajectoryClosed L := by
  exact And.intro E.trajectoryExistsClosed E.trajectoryUniqueClosed

end MedicineLifeCourseEpidemiologyTheoremCanonicalLaneLean
end HautevilleHouse