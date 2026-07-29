import canonicalLaneMathlib.AdmissibleClass
import canonicalLaneMathlib.BridgeLemmas
import canonicalLaneMathlib.GateLemmas

namespace HautevilleHouse
namespace ContinuityDifferentiationQuestionsLemmaCanonicalLaneLean

def ConstrainedContinuityDifferentiationQuestionsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_continuity_differentiation_questions_endgame (A : AdmissibleClass) :
    ConstrainedContinuityDifferentiationQuestionsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ContinuityDifferentiationQuestionsLemmaCanonicalLaneLean
end HautevilleHouse