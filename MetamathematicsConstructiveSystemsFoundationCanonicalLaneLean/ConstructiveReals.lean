import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetamathematicsConstructiveSystemsFoundationCanonicalLaneLean

structure ConstructiveRealNumbers where
  cauchySequences : Type
  equivalence : cauchySequences -> cauchySequences -> Prop
  realNumbers : Type
  realEquality : realNumbers -> realNumbers -> Prop
  archimedean : Prop
  completeness : Prop

structure ConstructiveRealNumbersEvidence (R : ConstructiveRealNumbers) where
  archimedeanClosed : R.archimedean
  completenessClosed : R.completeness

def ConstructiveRealNumbersClosed (R : ConstructiveRealNumbers) : Prop :=
  R.archimedean ∧ R.completeness

theorem constructive_real_numbers_closed_from_evidence
    (R : ConstructiveRealNumbers) (E : ConstructiveRealNumbersEvidence R) :
    ConstructiveRealNumbersClosed R := by
  exact And.intro E.archimedeanClosed E.completenessClosed

end MetamathematicsConstructiveSystemsFoundationCanonicalLaneLean
end HautevilleHouse
