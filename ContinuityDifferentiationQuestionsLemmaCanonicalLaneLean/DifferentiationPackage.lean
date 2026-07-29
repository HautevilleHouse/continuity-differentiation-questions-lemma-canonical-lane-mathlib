import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuityDifferentiationQuestionsLemmaCanonicalLaneLean

structure DifferentiationPackage where
  derivativeDefined : Prop
  linearApproximation : Prop
  chainRule : Prop
  productRule : Prop
  quotientRule : Prop
  higherOrderDerivatives : Prop

structure DifferentiationEvidence (D : DifferentiationPackage) where
  derivativeDefinedClosed : D.derivativeDefined
  linearApproximationClosed : D.linearApproximation
  chainRuleClosed : D.chainRule
  productRuleClosed : D.productRule
  quotientRuleClosed : D.quotientRule
  higherOrderDerivativesClosed : D.higherOrderDerivatives

def DifferentiationClosed (D : DifferentiationPackage) : Prop :=
  D.derivativeDefined ∧ D.linearApproximation ∧ D.chainRule ∧
  D.productRule ∧ D.quotientRule ∧ D.higherOrderDerivatives

theorem differentiation_closed_from_evidence (D : DifferentiationPackage) (E : DifferentiationEvidence D) : DifferentiationClosed D := by
  exact And.intro E.derivativeDefinedClosed
    (And.intro E.linearApproximationClosed
      (And.intro E.chainRuleClosed
        (And.intro E.productRuleClosed
          (And.intro E.quotientRuleClosed E.higherOrderDerivativesClosed))))

end ContinuityDifferentiationQuestionsLemmaCanonicalLaneLean
end HautevilleHouse