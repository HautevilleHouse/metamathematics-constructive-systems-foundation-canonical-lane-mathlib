import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetamathematicsConstructiveSystemsFoundationCanonicalLaneLean

structure MetamathematicsAdmittedObject where
  formalSystem : Type
  consistencyProof : Prop
  conclusion : consistencyProof

structure AdmissibleClass where
  object : MetamathematicsAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MetamathematicsConstructiveSystemsFoundationCanonicalLaneLean
end HautevilleHouse
