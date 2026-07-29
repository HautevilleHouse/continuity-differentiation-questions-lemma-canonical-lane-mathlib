import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuityDifferentiationQuestionsLemmaCanonicalLaneLean

structure DifferentiableManifoldPackage where
  carrier : Type u
  topology : TopologicalSpace carrier
  smoothAtlas : Set (Set carrier)
  maximalCompatibility : Prop
  dimension : ℕ
  chartTransitionSmooth : Prop

structure DifferentiableManifoldEvidence (M : DifferentiableManifoldPackage) where
  maximalCompatibilityClosed : M.maximalCompatibility
  chartTransitionSmoothClosed : M.chartTransitionSmooth

def DifferentiableManifoldClosed (M : DifferentiableManifoldPackage) : Prop :=
  M.maximalCompatibility ∧ M.chartTransitionSmooth

theorem differentiable_manifold_closed_from_evidence
    (M : DifferentiableManifoldPackage) (E : DifferentiableManifoldEvidence M) :
    DifferentiableManifoldClosed M := by
  exact And.intro E.maximalCompatibilityClosed E.chartTransitionSmoothClosed

end ContinuityDifferentiationQuestionsLemmaCanonicalLaneLean
end HautevilleHouse