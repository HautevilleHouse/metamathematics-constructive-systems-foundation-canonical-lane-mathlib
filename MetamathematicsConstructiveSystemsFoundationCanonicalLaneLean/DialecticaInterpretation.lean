import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetamathematicsConstructiveSystemsFoundationCanonicalLaneLean

structure DialecticaInterpretationPackage where
  quantifiedFormula : Prop
  functionalInterpretation : Prop
  soundness : Prop
  characterization : Prop

structure DialecticaInterpretationEvidence (D : DialecticaInterpretationPackage) where
  quantifiedFormulaClosed : D.quantifiedFormula
  functionalInterpretationClosed : D.functionalInterpretation
  soundnessClosed : D.soundness
  characterizationClosed : D.characterization

def DialecticaInterpretationClosed (D : DialecticaInterpretationPackage) : Prop :=
  D.quantifiedFormula ∧ D.functionalInterpretation ∧
  D.soundness ∧ D.characterization

theorem dialectica_interpretation_closed_from_evidence
    (D : DialecticaInterpretationPackage) (E : DialecticaInterpretationEvidence D) :
    DialecticaInterpretationClosed D :=
  And.intro E.quantifiedFormulaClosed
    (And.intro E.functionalInterpretationClosed
      (And.intro E.soundnessClosed E.characterizationClosed))

end MetamathematicsConstructiveSystemsFoundationCanonicalLaneLean
end HautevilleHouse