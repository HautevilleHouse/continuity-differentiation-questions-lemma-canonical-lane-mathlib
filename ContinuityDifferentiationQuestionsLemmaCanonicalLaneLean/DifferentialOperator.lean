import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuityDifferentiationQuestionsLemmaCanonicalLaneLean

structure DifferentialOperatorPackage (M : DifferentiableManifoldPackage) (E F : VectorBundlePackage M) where
  order : ℕ
  symbol : BundleHomPackage (SymmetricBundle (CotangentBundlePackage M) order ⊗ E) F
  locallyLinear : Prop
  principalSymbolInvertible : Prop

def DifferentialOperatorClosed (M : DifferentiableManifoldPackage) (E F : VectorBundlePackage M) (D : DifferentialOperatorPackage M E F) : Prop :=
  D.locallyLinear ∧ D.principalSymbolInvertible

end ContinuityDifferentiationQuestionsLemmaCanonicalLaneLean
end HautevilleHouse