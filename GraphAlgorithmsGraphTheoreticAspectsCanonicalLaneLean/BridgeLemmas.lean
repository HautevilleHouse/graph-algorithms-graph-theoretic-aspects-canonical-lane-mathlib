import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphAlgorithmsGraphTheoreticAspectsCanonicalLaneLean

def bridgeClosed (A : GraphAdmissibleClass) : Prop :=
  Decides A.lane.solver A.lane.projectedLanguage

theorem bridge_from_admissible_class (A : GraphAdmissibleClass) :
    bridgeClosed A := by
  exact A.solverDecidesProjectedLanguage

end GraphAlgorithmsGraphTheoreticAspectsCanonicalLaneLean
end HautevilleHouse
