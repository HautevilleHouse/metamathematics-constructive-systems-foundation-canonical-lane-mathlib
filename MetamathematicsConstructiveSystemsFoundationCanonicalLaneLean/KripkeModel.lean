import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetamathematicsConstructiveSystemsFoundationCanonicalLaneLean

structure KripkeModelPackage where
  worldSet : Type u
  preorder : Prop
  forcingRelation : Prop
  monotonicity : Prop
  soundness : Prop

structure KripkeModelEvidence (K : KripkeModelPackage) where
  preorderClosed : K.preorder
  forcingRelationClosed : K.forcingRelation
  monotonicityClosed : K.monotonicity
  soundnessClosed : K.soundness

def KripkeModelClosed (K : KripkeModelPackage) : Prop :=
  K.preorder ∧ K.forcingRelation ∧ K.monotonicity ∧ K.soundness

theorem kripke_model_closed_from_evidence
    (K : KripkeModelPackage) (E : KripkeModelEvidence K) :
    KripkeModelClosed K :=
  And.intro E.preorderClosed
    (And.intro E.forcingRelationClosed
      (And.intro E.monotonicityClosed E.soundnessClosed))

end MetamathematicsConstructiveSystemsFoundationCanonicalLaneLean
end HautevilleHouse