import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MOebiusGeometriesTheoremCanonicalLaneLean

structure MOebiusAdmittedObject where
  space : MOebiusSpace
  geodesicCompleteness : Prop
  conformalStructure : Prop
  conclusion : geodesicCompleteness ∧ conformalStructure

structure AdmissibleClass where
  object : MOebiusAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MOebiusGeometriesTheoremCanonicalLaneLean
end HautevilleHouse