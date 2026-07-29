import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MObiusGeometriesTheoremCanonicalLaneLean

structure CirclePreservation where
  circlesMappedToCircles : Prop
  preservesGeneralizedCircles : Prop
  mapIsMObius : Prop

structure CirclePreservationEvidence (C : CirclePreservation) where
  circlesMappedToCirclesClosed : C.circlesMappedToCircles
  preservesGeneralizedCirclesClosed : C.preservesGeneralizedCircles
  mapIsMObiusClosed : C.mapIsMObius

def CirclePreservationClosed (C : CirclePreservation) : Prop :=
  C.circlesMappedToCircles ∧ C.preservesGeneralizedCircles ∧ C.mapIsMObius

theorem circle_preservation_closed_from_evidence (C : CirclePreservation) (E : CirclePreservationEvidence C) :
    CirclePreservationClosed C := by
  exact And.intro E.circlesMappedToCirclesClosed
    (And.intro E.preservesGeneralizedCirclesClosed E.mapIsMObiusClosed)

end MObiusGeometriesTheoremCanonicalLaneLean
end HautevilleHouse