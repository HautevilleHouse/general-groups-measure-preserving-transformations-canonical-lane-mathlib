import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneralGroupsMeasurePreservingTransformationsCanonicalLaneLean

structure PhylogeneticsPackage (A : AdmissibleClass) where
  phylogeneticTree : Prop
  evolutionaryDistances : Prop
  treeBuildingMethod : Prop
  bootstrapSupport : Prop

structure PhylogeneticsEvidence {A : AdmissibleClass} (P : PhylogeneticsPackage A) where
  phylogeneticTreeClosed : P.phylogeneticTree
  evolutionaryDistancesClosed : P.evolutionaryDistances
  treeBuildingMethodClosed : P.treeBuildingMethod
  bootstrapSupportClosed : P.bootstrapSupport

def PhylogeneticsClosed {A : AdmissibleClass} (P : PhylogeneticsPackage A) : Prop :=
  P.phylogeneticTree ∧ P.evolutionaryDistances ∧ P.treeBuildingMethod ∧ P.bootstrapSupport

theorem phylogenetics_closed_from_evidence {A : AdmissibleClass} (P : PhylogeneticsPackage A) (E : PhylogeneticsEvidence P) : PhylogeneticsClosed P := by
  exact And.intro E.phylogeneticTreeClosed
    (And.intro E.evolutionaryDistancesClosed
      (And.intro E.treeBuildingMethodClosed E.bootstrapSupportClosed))

end GeneralGroupsMeasurePreservingTransformationsCanonicalLaneLean
end HautevilleHouse