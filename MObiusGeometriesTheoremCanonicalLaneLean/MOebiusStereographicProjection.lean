import HautevilleHouse.MOebiusGeometriesTheoremCanonicalLaneLean.MOebiusAdmissibleClass

namespace HautevilleHouse
namespace MOebiusGeometriesTheoremCanonicalLaneLean

structure StereographicProjectionPackage where
  sphereDimension : Nat
  northPoleRemovedSpace : Type u
  projectionMap : Type v
  homeomorphismProperty : Prop
  circlePreserving : Prop

structure StereographicProjectionEvidence (S : StereographicProjectionPackage) where
  homeomorphismPropertyClosed : S.homeomorphismProperty
  circlePreservingClosed : S.circlePreserving

def StereographicProjectionClosed (S : StereographicProjectionPackage) : Prop :=
  S.homeomorphismProperty ∧ S.circlePreserving

theorem stereographic_projection_closed_from_evidence
    (S : StereographicProjectionPackage) (E : StereographicProjectionEvidence S) :
    StereographicProjectionClosed S := by
  exact And.intro E.homeomorphismPropertyClosed E.circlePreservingClosed

end MOebiusGeometriesTheoremCanonicalLaneLean
end HautevilleHouse