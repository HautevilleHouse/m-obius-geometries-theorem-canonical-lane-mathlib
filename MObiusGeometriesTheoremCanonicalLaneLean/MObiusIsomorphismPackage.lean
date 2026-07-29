import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MObiusGeometriesTheoremCanonicalLaneLean

structure MObiusIsomorphismPackage where
  source : MObiusSpace
  target : MObiusSpace
  isomorphismMap : source.carrier -> target.carrier
  preservesCrossRatio : Prop
  compatibleWithTopology : Prop

structure MObiusIsomorphismEvidence (P : MObiusIsomorphismPackage) where
  preservesCrossRatioClosed : P.preservesCrossRatio
  compatibleWithTopologyClosed : P.compatibleWithTopology

def MObiusIsomorphismClosed (P : MObiusIsomorphismPackage) : Prop :=
  P.preservesCrossRatio ∧ P.compatibleWithTopology

theorem mobius_isomorphism_closed_from_evidence
    (P : MObiusIsomorphismPackage) (E : MObiusIsomorphismEvidence P) :
    MObiusIsomorphismClosed P := by
  exact And.intro E.preservesCrossRatioClosed E.compatibleWithTopologyClosed

end MObiusGeometriesTheoremCanonicalLaneLean
end HautevilleHouse