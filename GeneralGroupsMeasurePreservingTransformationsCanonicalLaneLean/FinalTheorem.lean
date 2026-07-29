import GeneralGroupsMeasurePreservingTransformationsCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace GeneralGroupsMeasurePreservingTransformationsCanonicalLaneLean

def ConstrainedMeasurePreservingClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_measure_preserving_endgame (A : AdmissibleClass) :
    ConstrainedMeasurePreservingClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GeneralGroupsMeasurePreservingTransformationsCanonicalLaneLean
end HautevilleHouse