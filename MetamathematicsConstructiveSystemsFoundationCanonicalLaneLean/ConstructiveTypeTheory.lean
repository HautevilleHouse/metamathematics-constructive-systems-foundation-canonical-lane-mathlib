import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetamathematicsConstructiveSystemsFoundationCanonicalLaneLean

structure ConstructiveTypeTheoryPackage where
  universeLevel : Type u
  dependentProductType : Prop
  dependentSumType : Prop
  identityType : Prop
  inductiveType : Prop
  constructivityAxiom : Prop

structure ConstructiveTypeTheoryEvidence (C : ConstructiveTypeTheoryPackage) where
  dependentProductTypeClosed : C.dependentProductType
  dependentSumTypeClosed : C.dependentSumType
  identityTypeClosed : C.identityType
  inductiveTypeClosed : C.inductiveType
  constructivityAxiomClosed : C.constructivityAxiom

def ConstructiveTypeTheoryClosed (C : ConstructiveTypeTheoryPackage) : Prop :=
  C.dependentProductType ∧ C.dependentSumType ∧
  C.identityType ∧ C.inductiveType ∧ C.constructivityAxiom

theorem constructive_type_theory_closed_from_evidence
    (C : ConstructiveTypeTheoryPackage) (E : ConstructiveTypeTheoryEvidence C) :
    ConstructiveTypeTheoryClosed C :=
  And.intro E.dependentProductTypeClosed
    (And.intro E.dependentSumTypeClosed
      (And.intro E.identityTypeClosed
        (And.intro E.inductiveTypeClosed E.constructivityAxiomClosed)))

end MetamathematicsConstructiveSystemsFoundationCanonicalLaneLean
end HautevilleHouse