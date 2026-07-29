import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuityDifferentiationQuestionsLemmaCanonicalLaneLean

structure ContinuousFunctionPackage where
  domain : Type u
  codomain : Type v
  topologyDomain : TopologicalSpace domain
  topologyCodomain : TopologicalSpace codomain
  functionSet : Set (domain → codomain)
  continuityCondition : Prop
  limitExistence : Prop

structure ContinuousFunctionEvidence (C : ContinuousFunctionPackage) where
  continuityConditionClosed : C.continuityCondition
  limitExistenceClosed : C.limitExistence

def ContinuousFunctionClosed (C : ContinuousFunctionPackage) : Prop :=
  C.continuityCondition ∧ C.limitExistence

theorem continuous_function_closed_from_evidence
    (C : ContinuousFunctionPackage) (E : ContinuousFunctionEvidence C) :
    ContinuousFunctionClosed C := by
  exact And.intro E.continuityConditionClosed E.limitExistenceClosed

end ContinuityDifferentiationQuestionsLemmaCanonicalLaneLean
end HautevilleHouse
