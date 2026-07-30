import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MetamathematicsConstructiveSystemsFoundationCanonicalLaneLean.ProofTheory

namespace HautevilleHouse
namespace MetamathematicsConstructiveSystemsFoundationCanonicalLaneLean

structure TypeTheory where
  typeFormation : Prop
  termIntroduction : Prop
  termElimination : Prop
  computation : Prop
  strongNormalization : Prop

structure TypeTheoryEvidence (T : TypeTheory) where
  typeFormationClosed : T.typeFormation
  termIntroductionClosed : T.termIntroduction
  termEliminationClosed : T.termElimination
  computationClosed : T.computation
  strongNormalizationClosed : T.strongNormalization

def TypeTheoryClosed (T : TypeTheory) : Prop :=
  T.typeFormation ∧ T.termIntroduction ∧ T.termElimination ∧ T.computation ∧ T.strongNormalization

theorem type_theory_closed_from_evidence (T : TypeTheory) (E : TypeTheoryEvidence T) :
    TypeTheoryClosed T := by
  exact And.intro E.typeFormationClosed
    (And.intro E.termIntroductionClosed
      (And.intro E.termEliminationClosed
        (And.intro E.computationClosed E.strongNormalizationClosed)))

end MetamathematicsConstructiveSystemsFoundationCanonicalLaneLean
end HautevilleHouse
