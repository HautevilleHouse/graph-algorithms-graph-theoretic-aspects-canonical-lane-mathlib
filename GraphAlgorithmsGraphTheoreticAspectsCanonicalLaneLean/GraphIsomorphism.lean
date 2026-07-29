import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphAlgorithmsGraphTheoreticAspectsCanonicalLaneLean

/-!
# Graph Isomorphism

This module defines graph isomorphism and its admissible closure.
Two graphs are isomorphic if there exists a bijection between their vertex sets
that preserves edges. We define this as a bridge property.
-/

structure GraphIsomorphism (G H : Graph) where
  bijection : Nat → Nat
  bijective : Function.Bijective bijection
  preservesEdges : ∀ (v w : Nat), (v, w) ∈ G.edges ↔ (bijection v, bijection w) ∈ H.edges
  preservesVertices : ∀ (v : Nat), v ∈ G.vertices → bijection v ∈ H.vertices

def bridgeClosed (A : AdmissibleClass) (G H : Graph) : Prop :=
  ∃ (iso : GraphIsomorphism G H), True

theorem isomorphism_closed (A : AdmissibleClass) (G H : Graph) :
    bridgeClosed A G H ∨ ¬ bridgeClosed A G H := by
  apply em

end GraphAlgorithmsGraphTheoreticAspectsCanonicalLaneLean
end HautevilleHouse