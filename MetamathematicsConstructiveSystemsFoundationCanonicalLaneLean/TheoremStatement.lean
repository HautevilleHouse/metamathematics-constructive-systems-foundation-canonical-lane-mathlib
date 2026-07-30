import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetamathematicsConstructiveSystemsFoundationCanonicalLaneLean

structure TheoremStatement where
  object : MetamathematicsAdmittedObject
  statement : Prop
  statementProof : statement

def systemTerminationClosed (O : MetamathematicsAdmittedObject) : Prop :=
  O.terminationGuaranteed

theorem termination_from_statement (T : TheoremStatement) :
    systemTerminationClosed T.object := by
  exact T.object.terminationGuaranteed

end MetamathematicsConstructiveSystemsFoundationCanonicalLaneLean
end HautevilleHouse
