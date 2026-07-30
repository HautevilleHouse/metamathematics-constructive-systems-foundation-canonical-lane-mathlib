import canonicalLaneMathlib.AdmissibleClass
import MetamathematicsConstructiveSystemsFoundationCanonicalLaneLean.MetamathematicsConstructiveObject

namespace HautevilleHouse
namespace MetamathematicsConstructiveSystemsFoundationCanonicalLaneLean

structure ConsistencyProofPackage (S : ConstructiveSystem) where
  consistencyStatement : Prop
  proofTermsAvailable : Prop
  normalizationProof : Prop
  cutElimination : Prop

structure ConsistencyProofEvidence {S : ConstructiveSystem} (P : ConsistencyProofPackage S) where
  consistencyStatementClosed : P.consistencyStatement
  proofTermsAvailableClosed : P.proofTermsAvailable
  normalizationProofClosed : P.normalizationProof
  cutEliminationClosed : P.cutElimination

def ConsistencyProofClosed {S : ConstructiveSystem} (P : ConsistencyProofPackage S) : Prop :=
  P.consistencyStatement ∧ P.proofTermsAvailable ∧ P.normalizationProof ∧ P.cutElimination

theorem consistency_proof_closed_from_evidence
    {S : ConstructiveSystem} (P : ConsistencyProofPackage S) (E : ConsistencyProofEvidence P) :
    ConsistencyProofClosed P := by
  exact And.intro E.consistencyStatementClosed
    (And.intro E.proofTermsAvailableClosed
      (And.intro E.normalizationProofClosed E.cutEliminationClosed))

end MetamathematicsConstructiveSystemsFoundationCanonicalLaneLean
end HautevilleHouse