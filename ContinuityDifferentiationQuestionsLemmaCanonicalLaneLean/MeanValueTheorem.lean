import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuityDifferentiationQuestionsLemmaCanonicalLaneLean

structure MeanValueTheorem where
  functionType : Type u
  domain : functionType → Prop
  derivable : (f : functionType) → (a b : functionType) → Prop
  continuousOnClosedInterval : (f : functionType) → (a b : functionType) → Prop
  differentiableOnOpenInterval : (f : functionType) → (a b : functionType) → Prop
  mvtConclusion : ∀ (f : functionType) (a b : functionType),
    continuousOnClosedInterval f a b → differentiableOnOpenInterval f a b →
    ∃ (c : functionType), derivable f a c ∧ derivable f c b

end ContinuityDifferentiationQuestionsLemmaCanonicalLaneLean
end HautevilleHouse