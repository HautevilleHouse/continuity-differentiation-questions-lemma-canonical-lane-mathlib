import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuityDifferentiationQuestionsLemmaCanonicalLaneLean

structure IntermediateValuePackage where
  continuousIntervalFunction : Prop
  intermediateValueProperty : Prop
  intermediateValueTheorem : Prop
  corollaries : Prop

structure IntermediateValueEvidence (IV : IntermediateValuePackage) where
  continuousIntervalFunctionClosed : IV.continuousIntervalFunction
  intermediateValuePropertyClosed : IV.intermediateValueProperty
  intermediateValueTheoremClosed : IV.intermediateValueTheorem
  corollariesClosed : IV.corollaries

def IntermediateValueClosed (IV : IntermediateValuePackage) : Prop :=
  IV.continuousIntervalFunction ∧ IV.intermediateValueProperty ∧
  IV.intermediateValueTheorem ∧ IV.corollaries

theorem intermediate_value_closed_from_evidence (IV : IntermediateValuePackage) (E : IntermediateValueEvidence IV) : IntermediateValueClosed IV := by
  exact And.intro E.continuousIntervalFunctionClosed
    (And.intro E.intermediateValuePropertyClosed
      (And.intro E.intermediateValueTheoremClosed E.corollariesClosed))

end ContinuityDifferentiationQuestionsLemmaCanonicalLaneLean
end HautevilleHouse