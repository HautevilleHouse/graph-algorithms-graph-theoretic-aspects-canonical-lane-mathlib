import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphAlgorithmsGraphTheoreticAspectsCanonicalLaneLean

/-!
# Shortest Path

This module defines the shortest path problem and its admissible closure.
A path is a sequence of vertices with edges between consecutive vertices.
The shortest path distance is the minimum number of edges.
-/

inductive Path (G : Graph) : List Nat → Prop where
  | single (v : Nat) (hv : v ∈ G.vertices) : Path G [v]
  | cons (v w : Nat) (hvw : (v, w) ∈ G.edges) (rest : List Nat) (hrest : Path G (w :: rest)) : Path G (v :: w :: rest)

def distance (G : Graph) (s t : Nat) : ℕ :=
  Nat.find (λ (n : ℕ) => ∃ (path : List Nat), Path G path ∧ path.head? = some s ∧ path.getLast? = some t ∧ path.length = n + 1)

def shortestPathExists (G : Graph) (s t : Nat) : Prop :=
  ∃ (path : List Nat), Path G path ∧ path.head? = some s ∧ path.getLast? = some t

theorem shortestPath_bridge (A : AdmissibleClass) (G : Graph) (s t : Nat) :
    shortestPathExists G s t ∨ ¬ shortestPathExists G s t := by
  apply em

end GraphAlgorithmsGraphTheoreticAspectsCanonicalLaneLean
end HautevilleHouse