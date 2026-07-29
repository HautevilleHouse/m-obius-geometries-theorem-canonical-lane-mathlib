import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MObiusGeometriesTheoremCanonicalLaneLean

structure StereographicProjectionPackage where
  sphere : Type
  sphereTopology : TopologicalSpace sphere
  plane : Type
  planeTopology : TopologicalSpace plane
  projectionMap : sphere -> plane
  homeomorphismCondition : Prop
  preservesCircles : Prop

structure StereographicProjectionEvidence (P : StereographicProjectionPackage) where
  homeomorphismConditionClosed : P.homeomorphismCondition
  preservesCirclesClosed : P.preservesCircles

def StereographicProjectionClosed (P : StereographicProjectionPackage) : Prop :=
  P.homeomorphismCondition ∧ P.preservesCircles

theorem stereographic_projection_closed_from_evidence
    (P : StereographicProjectionPackage) (E : StereographicProjectionEvidence P) :
    StereographicProjectionClosed P := by
  exact And.intro E.homeomorphismConditionClosed E.preservesCirclesClosed

end MObiusGeometriesTheoremCanonicalLaneLean
end HautevilleHouse