import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneralGroupsMeasurePreservingTransformationsCanonicalLaneLean

structure LinkageAnalysisPackage (A : AdmissibleClass) where
  recombinationFraction : Prop
  linkageDisequilibrium : Prop
  lodScore : Prop
  geneticMapDistance : Prop

structure LinkageAnalysisEvidence {A : AdmissibleClass} (L : LinkageAnalysisPackage A) where
  recombinationFractionClosed : L.recombinationFraction
  linkageDisequilibriumClosed : L.linkageDisequilibrium
  lodScoreClosed : L.lodScore
  geneticMapDistanceClosed : L.geneticMapDistance

def LinkageAnalysisClosed {A : AdmissibleClass} (L : LinkageAnalysisPackage A) : Prop :=
  L.recombinationFraction ∧ L.linkageDisequilibrium ∧ L.lodScore ∧ L.geneticMapDistance

theorem linkage_analysis_closed_from_evidence {A : AdmissibleClass} (L : LinkageAnalysisPackage A) (E : LinkageAnalysisEvidence L) : LinkageAnalysisClosed L := by
  exact And.intro E.recombinationFractionClosed
    (And.intro E.linkageDisequilibriumClosed
      (And.intro E.lodScoreClosed E.geneticMapDistanceClosed))

end GeneralGroupsMeasurePreservingTransformationsCanonicalLaneLean
end HautevilleHouse