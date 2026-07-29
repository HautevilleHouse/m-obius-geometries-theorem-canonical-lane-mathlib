import HautevilleHouse.MObiusGeometriesTheoremCanonicalLaneLean.StereographicProjection

namespace HautevilleHouse
namespace MObiusGeometriesTheoremCanonicalLaneLean

structure ClassificationPackage {C : CirclePlaneConfigurationPackage} {G : MobiusTransformGroupPackage C} (S : StereographicProjectionPackage G) where
  ellipticParabolicHyperbolic : Prop
  transformationTypes : Prop
  fixedPointClassification : Prop

def ClassificationClosed {C : CirclePlaneConfigurationPackage} {G : MobiusTransformGroupPackage C} {S : StereographicProjectionPackage G} (K : ClassificationPackage S) : Prop :=
  K.ellipticParabolicHyperbolic ∧ K.transformationTypes ∧ K.fixedPointClassification

end MObiusGeometriesTheoremCanonicalLaneLean
end HautevilleHouse