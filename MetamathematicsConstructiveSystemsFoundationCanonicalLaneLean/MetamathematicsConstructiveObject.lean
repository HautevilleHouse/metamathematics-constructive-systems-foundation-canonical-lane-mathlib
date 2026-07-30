import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetamathematicsConstructiveSystemsFoundationCanonicalLaneLean

structure ConstructiveSystem where
  carrier : Type
  proofTerms : Type
  deductionStructure : Prop
  normalizationProperty : Prop

def ConstructiveSystemClosed (S : ConstructiveSystem) : Prop :=
  S.deductionStructure ∧ S.normalizationProperty

structure AdmittedConstructiveObject where
  system : ConstructiveSystem
  consistency : Prop
  completeness : Prop
  consistencyProof : consistency
  completenessProof : completeness
  conclusion : consistency ∧ completeness

end MetamathematicsConstructiveSystemsFoundationCanonicalLaneLean
end HautevilleHouse