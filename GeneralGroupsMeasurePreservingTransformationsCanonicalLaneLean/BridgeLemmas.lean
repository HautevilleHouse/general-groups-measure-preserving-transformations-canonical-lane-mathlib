import GeneralGroupsMeasurePreservingTransformationsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GeneralGroupsMeasurePreservingTransformationsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  WitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end GeneralGroupsMeasurePreservingTransformationsCanonicalLaneLean
end HautevilleHouse