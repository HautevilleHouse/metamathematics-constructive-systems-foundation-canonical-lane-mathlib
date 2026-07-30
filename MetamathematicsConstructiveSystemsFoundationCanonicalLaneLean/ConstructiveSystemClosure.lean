import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetamathematicsConstructiveSystemsFoundationCanonicalLaneLean

def ConstructiveSystemClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constructive_system_endgame (A : AdmissibleClass) :
    ConstructiveSystemClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MetamathematicsConstructiveSystemsFoundationCanonicalLaneLean
end HautevilleHouse