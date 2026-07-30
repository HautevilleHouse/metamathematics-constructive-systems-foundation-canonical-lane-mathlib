import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetamathematicsConstructiveSystemsFoundationCanonicalLaneLean

structure CurryHowardCorrespondencePackage where
  proofAsTerm : Prop
  typeAsProposition : Prop
  normalization : Prop
  cutElimination : Prop

structure CurryHowardCorrespondenceEvidence (C : CurryHowardCorrespondencePackage) where
  proofAsTermClosed : C.proofAsTerm
  typeAsPropositionClosed : C.typeAsProposition
  normalizationClosed : C.normalization
  cutEliminationClosed : C.cutElimination

def CurryHowardCorrespondenceClosed (C : CurryHowardCorrespondencePackage) : Prop :=
  C.proofAsTerm ∧ C.typeAsProposition ∧ C.normalization ∧ C.cutElimination

theorem curry_howard_correspondence_closed_from_evidence
    (C : CurryHowardCorrespondencePackage) (E : CurryHowardCorrespondenceEvidence C) :
    CurryHowardCorrespondenceClosed C :=
  And.intro E.proofAsTermClosed
    (And.intro E.typeAsPropositionClosed
      (And.intro E.normalizationClosed E.cutEliminationClosed))

end MetamathematicsConstructiveSystemsFoundationCanonicalLaneLean
end HautevilleHouse