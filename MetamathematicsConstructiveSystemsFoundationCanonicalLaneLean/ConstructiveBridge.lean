import MetamathematicsConstructiveSystemsFoundationCanonicalLaneLean.ConstructiveCore

namespace HautevilleHouse
namespace MetamathematicsConstructiveSystemsFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ConstructiveWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MetamathematicsConstructiveSystemsFoundationCanonicalLaneLean
end HautevilleHouse