import GeneralGroupsMeasurePreservingTransformationsCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace GeneralGroupsMeasurePreservingTransformationsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure MeasurePreservingGroup where
  carrier : Type
  groupStructure : Group carrier
  transformationSpace : TopologicalSpace carrier
  invariantMeasure : carrier → Set (Measure Theory.OuterMeasure carrier)
  measurePreserving : Prop

structure AdmittedObject where
  group : MeasurePreservingGroup
  ergodic : Prop
  mixing : Prop
  conclusion : ergodic ∧ mixing

structure EndgameState where
  object : AdmittedObject

def WitnessClosed (O : AdmittedObject) : Prop :=
  O.ergodic ∧ O.mixing

def AdmissibleClass where
  object : AdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  WitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GeneralGroupsMeasurePreservingTransformationsCanonicalLaneLean
end HautevilleHouse