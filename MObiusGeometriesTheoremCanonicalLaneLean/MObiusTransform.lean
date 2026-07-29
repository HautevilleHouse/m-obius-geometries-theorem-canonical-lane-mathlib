import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MObiusGeometriesTheoremCanonicalLaneLean

structure MObiusTransform where
  sourceSpace : Type u
  targetSpace : Type v
  map : sourceSpace → targetSpace
  preservesCrossRatio : Prop
  conformal : Prop
  preservesCircles : Prop

structure MObiusTransformEvidence (M : MObiusTransform) where
  preservesCrossRatioClosed : M.preservesCrossRatio
  conformalClosed : M.conformal
  preservesCirclesClosed : M.preservesCircles

def MObiusTransformClosed (M : MObiusTransform) : Prop :=
  M.preservesCrossRatio ∧ M.conformal ∧ M.preservesCircles

theorem mobius_transform_closed_from_evidence (M : MObiusTransform) (E : MObiusTransformEvidence M) :
    MObiusTransformClosed M := by
  exact And.intro E.preservesCrossRatioClosed
    (And.intro E.conformalClosed E.preservesCirclesClosed)

end MObiusGeometriesTheoremCanonicalLaneLean
end HautevilleHouse