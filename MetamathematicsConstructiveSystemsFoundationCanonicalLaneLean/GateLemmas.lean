import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MetamathematicsConstructiveSystemsFoundationCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace MetamathematicsConstructiveSystemsFoundationCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end MetamathematicsConstructiveSystemsFoundationCanonicalLaneLean
end HautevilleHouse
