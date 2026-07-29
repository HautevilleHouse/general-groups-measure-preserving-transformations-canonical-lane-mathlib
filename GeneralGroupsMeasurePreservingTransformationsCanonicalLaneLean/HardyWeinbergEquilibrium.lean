import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneralGroupsMeasurePreservingTransformationsCanonicalLaneLean

structure HardyWeinbergPackage (A : AdmissibleClass) where
  populationGenotypeFrequencies : Prop
  equilibriumCondition : Prop
  alleleFrequencies : Prop
  expectedGenotypeFrequencies : Prop

structure HardyWeinbergEvidence {A : AdmissibleClass} (H : HardyWeinbergPackage A) where
  populationGenotypeFrequenciesClosed : H.populationGenotypeFrequencies
  equilibriumConditionClosed : H.equilibriumCondition
  alleleFrequenciesClosed : H.alleleFrequencies
  expectedGenotypeFrequenciesClosed : H.expectedGenotypeFrequencies

def HardyWeinbergClosed {A : AdmissibleClass} (H : HardyWeinbergPackage A) : Prop :=
  H.populationGenotypeFrequencies ∧ H.equilibriumCondition ∧ H.alleleFrequencies ∧ H.expectedGenotypeFrequencies

theorem hardy_weinberg_closed_from_evidence {A : AdmissibleClass} (H : HardyWeinbergPackage A) (E : HardyWeinbergEvidence H) : HardyWeinbergClosed H := by
  exact And.intro E.populationGenotypeFrequenciesClosed
    (And.intro E.equilibriumConditionClosed
      (And.intro E.alleleFrequenciesClosed E.expectedGenotypeFrequenciesClosed))

end GeneralGroupsMeasurePreservingTransformationsCanonicalLaneLean
end HautevilleHouse