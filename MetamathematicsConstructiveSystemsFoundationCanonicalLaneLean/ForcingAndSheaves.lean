import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetamathematicsConstructiveSystemsFoundationCanonicalLaneLean

structure ForcingAndSheaves where
  toposStructure : Prop
  forcingExtension : Prop
  sheafification : Prop
  doubleNegationSheaf : Prop

def forcingAndSheavesClosed (F : ForcingAndSheaves) : Prop :=
  F.toposStructure ∧ F.forcingExtension ∧ F.sheafification ∧ F.doubleNegationSheaf

structure ForcingAndSheavesEvidence (F : ForcingAndSheaves) where
  toposStructureClosed : F.toposStructure
  forcingExtensionClosed : F.forcingExtension
  sheafificationClosed : F.sheafification
  doubleNegationSheafClosed : F.doubleNegationSheaf

theorem forcing_and_sheaves_closed_from_evidence (F : ForcingAndSheaves)
    (E : ForcingAndSheavesEvidence F) : forcingAndSheavesClosed F := by
  exact And.intro E.toposStructureClosed (And.intro E.forcingExtensionClosed
    (And.intro E.sheafificationClosed E.doubleNegationSheafClosed))

end MetamathematicsConstructiveSystemsFoundationCanonicalLaneLean
end HautevilleHouse