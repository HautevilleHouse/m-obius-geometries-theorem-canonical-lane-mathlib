import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MObiusGeometriesTheoremCanonicalLaneLean

structure StereographicProjection where
  sphereDimension : ℕ
  planeDimension : ℕ
  projectionMap : Type u → Type v
  homeomorphism : Prop
  extendsToMObius : Prop

structure StereographicProjectionEvidence (S : StereographicProjection) where
  homeomorphismClosed : S.homeomorphism
  extendsToMObiusClosed : S.extendsToMObius

def StereographicProjectionClosed (S : StereographicProjection) : Prop :=
  S.homeomorphism ∧ S.extendsToMObius

theorem stereographic_projection_closed_from_evidence (S : StereographicProjection) (E : StereographicProjectionEvidence S) :
    StereographicProjectionClosed S := by
  exact And.intro E.homeomorphismClosed E.extendsToMObiusClosed

end MObiusGeometriesTheoremCanonicalLaneLean
end HautevilleHouse