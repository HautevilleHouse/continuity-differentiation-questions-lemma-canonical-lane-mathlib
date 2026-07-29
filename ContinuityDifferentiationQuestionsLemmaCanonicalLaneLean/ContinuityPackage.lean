import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuityDifferentiationQuestionsLemmaCanonicalLaneLean

structure ContinuityPackage where
  topology : Type u
  continuousFunctions : Type v
  limitPointCharacterization : Prop
  epsilonDeltaCondition : Prop
  sequentialContinuity : Prop
  compositionRule : Prop

structure ContinuityEvidence (C : ContinuityPackage) where
  limitPointCharacterizationClosed : C.limitPointCharacterization
  epsilonDeltaConditionClosed : C.epsilonDeltaCondition
  sequentialContinuityClosed : C.sequentialContinuity
  compositionRuleClosed : C.compositionRule

def ContinuityClosed (C : ContinuityPackage) : Prop :=
  C.limitPointCharacterization ∧ C.epsilonDeltaCondition ∧
  C.sequentialContinuity ∧ C.compositionRule

theorem continuity_closed_from_evidence (C : ContinuityPackage) (E : ContinuityEvidence C) : ContinuityClosed C := by
  exact And.intro E.limitPointCharacterizationClosed
    (And.intro E.epsilonDeltaConditionClosed
      (And.intro E.sequentialContinuityClosed E.compositionRuleClosed))

end ContinuityDifferentiationQuestionsLemmaCanonicalLaneLean
end HautevilleHouse