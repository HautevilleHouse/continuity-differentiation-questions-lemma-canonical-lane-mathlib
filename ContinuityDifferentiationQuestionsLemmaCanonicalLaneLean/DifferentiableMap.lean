import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuityDifferentiationQuestionsLemmaCanonicalLaneLean

structure DifferentiableMapPackage (M N : DifferentiableManifoldPackage) where
  underlyingFunction : M.carrier → N.carrier
  differentiabilityAt : ∀ p, Prop
  derivativeAt : ∀ p, TangentBundlePackage M → TangentBundlePackage N
  chainRuleHolds : Prop

def DifferentiableMapClosed (M N : DifferentiableManifoldPackage) (F : DifferentiableMapPackage M N) : Prop :=
  F.chainRuleHolds

end ContinuityDifferentiationQuestionsLemmaCanonicalLaneLean
end HautevilleHouse