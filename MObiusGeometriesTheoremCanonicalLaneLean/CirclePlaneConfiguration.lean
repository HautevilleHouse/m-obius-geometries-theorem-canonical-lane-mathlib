import HautevilleHouse.MObiusGeometriesTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MObiusGeometriesTheoremCanonicalLaneLean

structure CirclePlaneConfigurationPackage where
  orientedCircles : Type
  orientedLines : Type
  inversionMaps : Type
  anglePreserving : Prop
  crossRatioInvariant : Prop

def CirclePlaneClosed (C : CirclePlaneConfigurationPackage) : Prop :=
  C.anglePreserving ∧ C.crossRatioInvariant

end MObiusGeometriesTheoremCanonicalLaneLean
end HautevilleHouse