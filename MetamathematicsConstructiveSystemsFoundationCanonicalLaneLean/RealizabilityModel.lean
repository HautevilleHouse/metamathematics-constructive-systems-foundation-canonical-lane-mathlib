import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetamathematicsConstructiveSystemsFoundationCanonicalLaneLean

structure RealizabilityModelPackage where
  partialCombinatoryAlgebra : Type u
  realizabilityRelation : Prop
  functionRealization : Prop
  propositionalRealization : Prop
  completeness : Prop

structure RealizabilityModelEvidence (R : RealizabilityModelPackage) where
  realizabilityRelationClosed : R.realizabilityRelation
  functionRealizationClosed : R.functionRealization
  propositionalRealizationClosed : R.propositionalRealization
  completenessClosed : R.completeness

def RealizabilityModelClosed (R : RealizabilityModelPackage) : Prop :=
  R.realizabilityRelation ∧ R.functionRealization ∧
  R.propositionalRealization ∧ R.completeness

theorem realizability_model_closed_from_evidence
    (R : RealizabilityModelPackage) (E : RealizabilityModelEvidence R) :
    RealizabilityModelClosed R :=
  And.intro E.realizabilityRelationClosed
    (And.intro E.functionRealizationClosed
      (And.intro E.propositionalRealizationClosed E.completenessClosed))

end MetamathematicsConstructiveSystemsFoundationCanonicalLaneLean
end HautevilleHouse