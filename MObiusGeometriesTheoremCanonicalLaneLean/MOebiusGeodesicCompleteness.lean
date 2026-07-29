import HautevilleHouse.MOebiusGeometriesTheoremCanonicalLaneLean.MOebiusAdmissibleClass

namespace HautevilleHouse
namespace MOebiusGeometriesTheoremCanonicalLaneLean

structure GeodesicCompletenessPackage where
  moebiusSpace : Type u
  metric : Type v
  geodesicallyComplete : Prop
  everyGeodesicExtendable : Prop
  hopfRinowEquivalent : Prop

structure GeodesicCompletenessEvidence (G : GeodesicCompletenessPackage) where
  geodesicallyCompleteClosed : G.geodesicallyComplete
  everyGeodesicExtendableClosed : G.everyGeodesicExtendable
  hopfRinowEquivalentClosed : G.hopfRinowEquivalent

def GeodesicCompletenessClosed (G : GeodesicCompletenessPackage) : Prop :=
  G.geodesicallyComplete ∧ G.everyGeodesicExtendable ∧ G.hopfRinowEquivalent

theorem geodesic_completeness_closed_from_evidence
    (G : GeodesicCompletenessPackage) (E : GeodesicCompletenessEvidence G) :
    GeodesicCompletenessClosed G := by
  exact And.intro E.geodesicallyCompleteClosed
    (And.intro E.everyGeodesicExtendableClosed E.hopfRinowEquivalentClosed)

end MOebiusGeometriesTheoremCanonicalLaneLean
end HautevilleHouse