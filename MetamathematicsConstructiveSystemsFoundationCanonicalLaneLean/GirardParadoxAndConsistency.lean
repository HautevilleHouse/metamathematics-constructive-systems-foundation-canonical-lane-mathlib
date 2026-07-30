import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetamathematicsConstructiveSystemsFoundationCanonicalLaneLean

structure GirardParadoxAndConsistency where
  paradoxAvoidance : Prop
  universeStratification : Prop
  consistencyProof : Prop
  impredicativityLimited : Prop

def girardParadoxAndConsistencyClosed (G : GirardParadoxAndConsistency) : Prop :=
  G.paradoxAvoidance ∧ G.universeStratification ∧ G.consistencyProof ∧ G.impredicativityLimited

structure GirardParadoxAndConsistencyEvidence (G : GirardParadoxAndConsistency) where
  paradoxAvoidanceClosed : G.paradoxAvoidance
  universeStratificationClosed : G.universeStratification
  consistencyProofClosed : G.consistencyProof
  impredicativityLimitedClosed : G.impredicativityLimited

theorem girard_paradox_and_consistency_closed_from_evidence (G : GirardParadoxAndConsistency)
    (E : GirardParadoxAndConsistencyEvidence G) : girardParadoxAndConsistencyClosed G := by
  exact And.intro E.paradoxAvoidanceClosed (And.intro E.universeStratificationClosed
    (And.intro E.consistencyProofClosed E.impredicativityLimitedClosed))

end MetamathematicsConstructiveSystemsFoundationCanonicalLaneLean
end HautevilleHouse