import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuityDifferentiationQuestionsLemmaCanonicalLaneLean

structure DifferentiationQuestionsLemma where
  domain : Type u
  codomain : Type v
  functionDefined : domain → codomain
  continuityAssumption : Prop
  differentiabilityConclusion : Prop
  derivativeFormula : Prop
  lemmaProof : Prop
  lemmaProved : lemmaProof

end ContinuityDifferentiationQuestionsLemmaCanonicalLaneLean
end HautevilleHouse