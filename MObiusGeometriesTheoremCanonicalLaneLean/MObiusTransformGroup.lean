import HautevilleHouse.MObiusGeometriesTheoremCanonicalLaneLean.CirclePlaneConfiguration

namespace HautevilleHouse
namespace MObiusGeometriesTheoremCanonicalLaneLean

structure MobiusTransformGroupPackage (C : CirclePlaneConfigurationPackage) where
  transformations : Type
  groupLaws : Prop
  compositionClosed : Prop
  inversesExist : Prop
  identityPresent : Prop

def MobiusTransformGroupClosed {C : CirclePlaneConfigurationPackage} (G : MobiusTransformGroupPackage C) : Prop :=
  G.groupLaws ∧ G.compositionClosed ∧ G.inversesExist ∧ G.identityPresent

end MObiusGeometriesTheoremCanonicalLaneLean
end HautevilleHouse