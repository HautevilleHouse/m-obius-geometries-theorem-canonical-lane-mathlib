import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MObiusGeometriesTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : MObiusAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  MObiusWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MObiusGeometriesTheoremCanonicalLaneLean
end HautevilleHouse