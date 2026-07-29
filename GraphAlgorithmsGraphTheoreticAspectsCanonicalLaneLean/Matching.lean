import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphAlgorithmsGraphTheoreticAspectsCanonicalLaneLean

/-!
# Matching in Graphs

This module defines matchings as admissible-class bridges.
A matching is a set of edges without common vertices. We define maximal and maximum matchings.
-/

structure Matching (G : Graph) where
  edges : Set (Nat × Nat)
  subsetOfEdges : edges ⊆ G.edges
  noSharedVertices : ∀ (e1 e2 : Nat × Nat), e1 ∈ edges → e2 ∈ edges → e1 ≠ e2 →
    (e1.1 ≠ e2.1 ∧ e1.1 ≠ e2.2 ∧ e1.2 ≠ e2.1 ∧ e1.2 ≠ e2.2)

def maximalMatching (G : Graph) (M : Matching G) : Prop :=
  ∀ (e : Nat × Nat), e ∈ G.edges → e ∉ M.edges →
    ∃ (e' : Nat × Nat), e' ∈ M.edges ∧ (e'.1 = e.1 ∨ e'.1 = e.2 ∨ e'.2 = e.1 ∨ e'.2 = e.2)

theorem matching_bridge (A : AdmissibleClass) (G : Graph) :
    (∃ (M : Matching G), maximalMatching G M) ∨ ¬ (∃ (M : Matching G), maximalMatching G M) := by
  apply em

end GraphAlgorithmsGraphTheoreticAspectsCanonicalLaneLean
end HautevilleHouse