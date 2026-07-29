import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuityDifferentiationQuestionsLemmaCanonicalLaneLean

structure AdmittedObject where
  space : Type u
  topology : TopologicalSpace space
  diffStructure : Prop
  continuityQuestion : Prop
  differentiationQuestion : Prop
  conclusion : Prop

structure AdmissibleClass where
  object : AdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.continuityQuestion ∧ A.object.differentiationQuestion) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ContinuityDifferentiationQuestionsLemmaCanonicalLaneLean
end HautevilleHouse