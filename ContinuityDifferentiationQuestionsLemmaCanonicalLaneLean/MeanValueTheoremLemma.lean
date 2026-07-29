import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuityDifferentiationQuestionsLemmaCanonicalLaneLean

structure MeanValueTheoremPackage where
  differentiableFunction : Prop
  meanValueProperty : Prop
  meanValueTheorem : Prop
  applications : Prop

structure MeanValueTheoremEvidence (MVT : MeanValueTheoremPackage) where
  differentiableFunctionClosed : MVT.differentiableFunction
  meanValuePropertyClosed : MVT.meanValueProperty
  meanValueTheoremClosed : MVT.meanValueTheorem
  applicationsClosed : MVT.applications

def MeanValueTheoremClosed (MVT : MeanValueTheoremPackage) : Prop :=
  MVT.differentiableFunction ∧ MVT.meanValueProperty ∧
  MVT.meanValueTheorem ∧ MVT.applications

theorem mean_value_theorem_closed_from_evidence (MVT : MeanValueTheoremPackage) (E : MeanValueTheoremEvidence MVT) : MeanValueTheoremClosed MVT := by
  exact And.intro E.differentiableFunctionClosed
    (And.intro E.meanValuePropertyClosed
      (And.intro E.meanValueTheoremClosed E.applicationsClosed))

end ContinuityDifferentiationQuestionsLemmaCanonicalLaneLean
end HautevilleHouse