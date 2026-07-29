import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MObiusGeometriesTheoremCanonicalLaneLean

structure MObiusSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure MObiusAdmittedObject where
  space : MObiusSpace
  admitsMObiusStructure : Prop
  conclusion : admitsMObiusStructure

structure MObiusEndgameState where
  object : MObiusAdmittedObject

def MObiusWitnessClosed (O : MObiusAdmittedObject) : Prop :=
  O.admitsMObiusStructure

end MObiusGeometriesTheoremCanonicalLaneLean
end HautevilleHouse