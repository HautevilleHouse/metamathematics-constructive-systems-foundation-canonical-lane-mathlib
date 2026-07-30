import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetamathematicsConstructiveSystemsFoundationCanonicalLaneLean

structure ConstructiveAdmittedObject where
  formalSystem : Type u
  derivationRules : Prop
  consistencyCondition : Prop
  completenessCondition : Prop
  conclusion : completenessCondition

def ConstructiveWitnessClosed (O : ConstructiveAdmittedObject) : Prop :=
  O.completenessCondition

end MetamathematicsConstructiveSystemsFoundationCanonicalLaneLean
end HautevilleHouse
