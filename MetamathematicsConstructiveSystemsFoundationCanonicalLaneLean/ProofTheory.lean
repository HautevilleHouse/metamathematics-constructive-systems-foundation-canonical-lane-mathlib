import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MetamathematicsConstructiveSystemsFoundationCanonicalLaneLean.FormalSystems

namespace HautevilleHouse
namespace MetamathematicsConstructiveSystemsFoundationCanonicalLaneLean

structure ProofCalculus where
  deductionTheorem : Prop
  cutElimination : Prop
  normalization : Prop

structure ProofCalculusEvidence (P : ProofCalculus) where
  deductionTheoremClosed : P.deductionTheorem
  cutEliminationClosed : P.cutElimination
  normalizationClosed : P.normalization

def ProofCalculusClosed (P : ProofCalculus) : Prop :=
  P.deductionTheorem ∧ P.cutElimination ∧ P.normalization

theorem proof_calculus_closed_from_evidence (P : ProofCalculus) (E : ProofCalculusEvidence P) :
    ProofCalculusClosed P := by
  exact And.intro E.deductionTheoremClosed
    (And.intro E.cutEliminationClosed E.normalizationClosed)

end MetamathematicsConstructiveSystemsFoundationCanonicalLaneLean
end HautevilleHouse
