import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetamathematicsConstructiveSystemsFoundationCanonicalLaneLean

structure FormalSystem where
  syntax : Type
  rules : Type
  derivability : List syntax -> syntax -> Prop
  consistency : Prop
  completeness : Prop

structure FormalSystemEvidence (F : FormalSystem) where
  consistencyClosed : F.consistency
  completenessClosed : F.completeness

def FormalSystemClosed (F : FormalSystem) : Prop :=
  F.consistency ∧ F.completeness

theorem formal_system_closed_from_evidence (F : FormalSystem) (E : FormalSystemEvidence F) :
    FormalSystemClosed F := by
  exact And.intro E.consistencyClosed E.completenessClosed

end MetamathematicsConstructiveSystemsFoundationCanonicalLaneLean
end HautevilleHouse
