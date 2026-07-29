import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuityDifferentiationQuestionsLemmaCanonicalLaneLean

structure ContinuityDifferentiationSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ContinuityDifferentiationAdmittedObject where
  space : ContinuityDifferentiationSpace
  domain : Prop
  codomain : Prop
  continuityProperty : Prop
  differentiationProperty : Prop
  conclusion : continuityProperty ∧ differentiationProperty

def ContinuityDifferentiationWitnessClosed (O : ContinuityDifferentiationAdmittedObject) : Prop :=
  O.conclusion

end ContinuityDifferentiationQuestionsLemmaCanonicalLaneLean
end HautevilleHouse