import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineLifeCourseEpidemiologyTheoremCanonicalLaneLean

structure LifeCourseEpidemiologyPackage where
  exposureTiming : Prop
  sensitivePeriods : Prop
  accumulationModel : Prop
  criticalWindowModel : Prop
  mediationAnalysis : Prop
  causalInference : Prop

structure LifeCourseEpidemiologyEvidence (E : LifeCourseEpidemiologyPackage) where
  exposureTimingClosed : E.exposureTiming
  sensitivePeriodsClosed : E.sensitivePeriods
  accumulationModelClosed : E.accumulationModel
  criticalWindowModelClosed : E.criticalWindowModel
  mediationAnalysisClosed : E.mediationAnalysis
  causalInferenceClosed : E.causalInference

def LifeCourseEpidemiologyClosed (E : LifeCourseEpidemiologyPackage) : Prop :=
  E.exposureTiming ∧ E.sensitivePeriods ∧ E.accumulationModel ∧
  E.criticalWindowModel ∧ E.mediationAnalysis ∧ E.causalInference

theorem life_course_epidemiology_closed_from_evidence (E : LifeCourseEpidemiologyPackage)
    (Ev : LifeCourseEpidemiologyEvidence E) : LifeCourseEpidemiologyClosed E := by
  exact And.intro Ev.exposureTimingClosed
    (And.intro Ev.sensitivePeriodsClosed
      (And.intro Ev.accumulationModelClosed
        (And.intro Ev.criticalWindowModelClosed
          (And.intro Ev.mediationAnalysisClosed Ev.causalInferenceClosed))))

end MedicineLifeCourseEpidemiologyTheoremCanonicalLaneLean
end HautevilleHouse