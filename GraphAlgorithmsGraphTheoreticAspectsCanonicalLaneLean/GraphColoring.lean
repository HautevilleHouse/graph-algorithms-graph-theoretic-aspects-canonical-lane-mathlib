import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphAlgorithmsGraphTheoreticAspectsCanonicalLaneLean

/-!
# Graph Coloring

This module defines graph coloring as an admissible-class structure.
A proper coloring assigns colors to vertices such that adjacent vertices have distinct colors.
We define the chromatic number and the concept of a k-coloring.
-/

structure GraphColoring (G : Graph) where
  colors : Set Nat
  colorOf : Nat → Nat
  proper : ∀ (v w : Nat), (v, w) ∈ G.edges → colorOf v ≠ colorOf w
  total : ∀ (v : Nat), v ∈ G.vertices → colorOf v ∈ colors

def chromaticNumber (G : Graph) : ℕ :=
  Nat.find (λ (k : ℕ) => ∃ (coloring : GraphColoring G), coloring.colors = Finset.range k)

def kColorable (G : Graph) (k : ℕ) : Prop :=
  ∃ (coloring : GraphColoring G), coloring.colors ⊆ Finset.range k

theorem kColorable_bridge (A : AdmissibleClass) (G : Graph) (k : ℕ) :
    kColorable G k ∨ ¬ kColorable G k := by
  apply em

end GraphAlgorithmsGraphTheoreticAspectsCanonicalLaneLean
end HautevilleHouse