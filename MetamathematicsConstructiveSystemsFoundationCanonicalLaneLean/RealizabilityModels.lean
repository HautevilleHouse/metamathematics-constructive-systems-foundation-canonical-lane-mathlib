import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetamathematicsConstructiveSystemsFoundationCanonicalLaneLean

structure RealizabilityModels where
  partialCombinatoryAlgebra : Prop
  realizabilityTriple : Prop
  modifiedRealizability : Prop
  truthTransfer : Prop

def realizabilityModelsClosed (R : RealizabilityModels) : Prop :=
  R.partialCombinatoryAlgebra ∧ R.realizabilityTriple ∧ R.modifiedRealizability ∧ R.truthTransfer

structure RealizabilityModelsEvidence (R : RealizabilityModels) where
  partialCombinatoryAlgebraClosed : R.partialCombinatoryAlgebra
  realizabilityTripleClosed : R.realizabilityTriple
  modifiedRealizabilityClosed : R.modifiedRealizability
  truthTransferClosed : R.truthTransfer

theorem realizability_models_closed_from_evidence (R : RealizabilityModels)
    (E : RealizabilityModelsEvidence R) : realizabilityModelsClosed R := by
  exact And.intro E.partialCombinatoryAlgebraClosed (And.intro E.realizabilityTripleClosed
    (And.intro E.modifiedRealizabilityClosed E.truthTransferClosed))

end MetamathematicsConstructiveSystemsFoundationCanonicalLaneLean
end HautevilleHouse