import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MObiusGeometriesTheoremCanonicalLaneLean

structure MobiusTransformation (M : Type) [TopologicalSpace M] where
  source : M
  target : M
  preservingCrossRatio : Prop

structure CrossRatio (a b c d : ℂ) : Prop where
  ratioValue : ℂ
  invariance : Prop

structure MobiusAdmittedObject where
  space : Type
  topology : TopologicalSpace space
  extendedComplexPlane : Bool
  mobiusActionDefined : Prop
  conclusion : mobiusActionDefined

def MobiusWitnessClosed (O : MobiusAdmittedObject) : Prop :=
  O.mobiusActionDefined

end MObiusGeometriesTheoremCanonicalLaneLean
end HautevilleHouse