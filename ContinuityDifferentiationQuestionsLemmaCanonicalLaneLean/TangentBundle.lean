import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuityDifferentiationQuestionsLemmaCanonicalLaneLean

structure TangentBundlePackage (M : DifferentiableManifoldPackage) where
  tangentSpace : M.carrier → Type v
  vectorSpaceStructure : ∀ p, AddCommGroup (tangentSpace p)
  vectorSpaceStructure' : ∀ p, Module ℝ (tangentSpace p)
  bundleTopology : TopologicalSpace (Σ p, tangentSpace p)
  smoothStructure : Prop

def TangentBundleClosed (M : DifferentiableManifoldPackage) (T : TangentBundlePackage M) : Prop :=
  T.smoothStructure

end ContinuityDifferentiationQuestionsLemmaCanonicalLaneLean
end HautevilleHouse