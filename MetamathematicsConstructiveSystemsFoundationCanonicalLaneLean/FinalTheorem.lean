import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MetamathematicsConstructiveSystemsFoundationCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace MetamathematicsConstructiveSystemsFoundationCanonicalLaneLean

def ConstrainedMetamathematicsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_metamathematics_endgame (A : AdmissibleClass) :
    ConstrainedMetamathematicsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MetamathematicsConstructiveSystemsFoundationCanonicalLaneLean
end HautevilleHouse
