import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneralGroupsMeasurePreservingTransformationsCanonicalLaneLean

structure SequenceAlignmentPackage (A : AdmissibleClass) where
  substitutionMatrix : Prop
  gapPenalty : Prop
  alignmentScore : Prop
  optimalAlignment : Prop

structure SequenceAlignmentEvidence {A : AdmissibleClass} (S : SequenceAlignmentPackage A) where
  substitutionMatrixClosed : S.substitutionMatrix
  gapPenaltyClosed : S.gapPenalty
  alignmentScoreClosed : S.alignmentScore
  optimalAlignmentClosed : S.optimalAlignment

def SequenceAlignmentClosed {A : AdmissibleClass} (S : SequenceAlignmentPackage A) : Prop :=
  S.substitutionMatrix ∧ S.gapPenalty ∧ S.alignmentScore ∧ S.optimalAlignment

theorem sequence_alignment_closed_from_evidence {A : AdmissibleClass} (S : SequenceAlignmentPackage A) (E : SequenceAlignmentEvidence S) : SequenceAlignmentClosed S := by
  exact And.intro E.substitutionMatrixClosed
    (And.intro E.gapPenaltyClosed
      (And.intro E.alignmentScoreClosed E.optimalAlignmentClosed))

end GeneralGroupsMeasurePreservingTransformationsCanonicalLaneLean
end HautevilleHouse