import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphAlgorithmsGraphTheoreticAspectsCanonicalLaneLean

def ConstrainedGraphClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_graph_endgame (A : AdmissibleClass) :
    ConstrainedGraphClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GraphAlgorithmsGraphTheoreticAspectsCanonicalLaneLean
end HautevilleHouse
