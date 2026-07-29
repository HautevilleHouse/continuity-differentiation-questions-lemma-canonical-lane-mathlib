import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuityDifferentiationQuestionsLemmaCanonicalLaneLean

structure DifferentiabilityPackage where
  manifold : Type u
  tangentBundle : Type v
  derivativeOperator : Type w
  differentiableFunction : Prop
  derivativeExists : Prop
  chainRuleHolds : Prop

structure DifferentiabilityEvidence (D : DifferentiabilityPackage) where
  differentiableFunctionClosed : D.differentiableFunction
  derivativeExistsClosed : D.derivativeExists
  chainRuleHoldsClosed : D.chainRuleHolds

def DifferentiabilityClosed (D : DifferentiabilityPackage) : Prop :=
  D.differentiableFunction ∧ D.derivativeExists ∧ D.chainRuleHolds

theorem differentiability_closed_from_evidence
    (D : DifferentiabilityPackage) (E : DifferentiabilityEvidence D) :
    DifferentiabilityClosed D := by
  exact And.intro E.differentiableFunctionClosed
    (And.intro E.derivativeExistsClosed E.chainRuleHoldsClosed)

end ContinuityDifferentiationQuestionsLemmaCanonicalLaneLean
end HautevilleHouse
