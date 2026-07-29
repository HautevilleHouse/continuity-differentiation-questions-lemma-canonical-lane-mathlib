import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuityDifferentiationQuestionsLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.continuityQuestion ∧ A.object.differentiationQuestion

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact And.intro A.object.continuityQuestion A.object.differentiationQuestion

end ContinuityDifferentiationQuestionsLemmaCanonicalLaneLean
end HautevilleHouse