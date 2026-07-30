import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetamathematicsConstructiveSystemsFoundationCanonicalLaneLean

structure ConstructiveAdmittedObject where
  systemType : Type
  proofStructure : Prop
  computationalContent : Prop
  conclusion : computationalContent

def ConstructiveWitnessClosed (O : ConstructiveAdmittedObject) : Prop :=
  O.computationalContent

end MetamathematicsConstructiveSystemsFoundationCanonicalLaneLean
end HautevilleHouse