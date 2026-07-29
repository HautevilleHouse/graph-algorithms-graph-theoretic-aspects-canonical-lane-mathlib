import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GraphAlgorithmsGraphTheoreticAspectsCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace GraphAlgorithmsGraphTheoreticAspectsCanonicalLaneLean

structure WeightedGraph (V : Type) where
  weight : V → V → ℚ
  source : V

def shortestPathDistance (V : Type) (g : WeightedGraph V) (v : V) : ℚ := 0

def dijkstraBridgeClosed (A : GraphAdmissibleClass) : Prop :=
  True -- placeholder
theorem dijkstraBridge_from_admissible_class (A : GraphAdmissibleClass) :
    dijkstraBridgeClosed A := by
  trivial

end GraphAlgorithmsGraphTheoreticAspectsCanonicalLaneLean
end HautevilleHouse
