import canonicalLaneMathlib.AdmissibleClass
import MetamathematicsConstructiveSystemsFoundationCanonicalLaneLean.ConsistencyProofPackage

namespace HautevilleHouse
namespace MetamathematicsConstructiveSystemsFoundationCanonicalLaneLean

structure CompletenessTheoremPackage {S : ConstructiveSystem}
    (C : ConsistencyProofPackage S) where
  completenessStatement : Prop
  modelExistence : Prop
  canonicalModelConstruction : Prop

structure CompletenessTheoremEvidence {S : ConstructiveSystem}
    {C : ConsistencyProofPackage S} (T : CompletenessTheoremPackage C) where
  completenessStatementClosed : T.completenessStatement
  modelExistenceClosed : T.modelExistence
  canonicalModelConstructionClosed : T.canonicalModelConstruction

def CompletenessTheoremClosed {S : ConstructiveSystem}
    {C : ConsistencyProofPackage S} (T : CompletenessTheoremPackage C) : Prop :=
  T.completenessStatement ∧ T.modelExistence ∧ T.canonicalModelConstruction

theorem completeness_theorem_closed_from_evidence
    {S : ConstructiveSystem} {C : ConsistencyProofPackage S}
    (T : CompletenessTheoremPackage C) (E : CompletenessTheoremEvidence T) :
    CompletenessTheoremClosed T := by
  exact And.intro E.completenessStatementClosed
    (And.intro E.modelExistenceClosed E.canonicalModelConstructionClosed)

end MetamathematicsConstructiveSystemsFoundationCanonicalLaneLean
end HautevilleHouse