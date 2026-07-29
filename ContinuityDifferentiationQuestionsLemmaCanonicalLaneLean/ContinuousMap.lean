import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuityDifferentiationQuestionsLemmaCanonicalLaneLean

structure ContinuousMapPackage (X Y : Type u) [TopologicalSpace X] [TopologicalSpace Y] where
  toFun : X → Y
  continuous : Prop

def ContinuousMapClosed (X Y : Type u) [TopologicalSpace X] [TopologicalSpace Y] (f : ContinuousMapPackage X Y) : Prop :=
  f.continuous

end ContinuityDifferentiationQuestionsLemmaCanonicalLaneLean
end HautevilleHouse