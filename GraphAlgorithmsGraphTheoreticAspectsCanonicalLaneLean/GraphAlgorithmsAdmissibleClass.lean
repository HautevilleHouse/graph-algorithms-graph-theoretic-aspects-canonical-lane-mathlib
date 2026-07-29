import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphAlgorithmsGraphTheoreticAspectsCanonicalLaneLean

structure GraphAdmissibleClass where
  lane : GraphAlgorithmAdmittedObject
  solverDecidesProjectedLanguage : Decides lane.solver lane.projectedLanguage
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : GraphAdmissibleClass) : Prop :=
  Decides A.lane.solver A.lane.projectedLanguage ∧
  (A.endpointSatisfied ∨ A.remainderRecorded)

end GraphAlgorithmsGraphTheoreticAspectsCanonicalLaneLean
end HautevilleHouse
