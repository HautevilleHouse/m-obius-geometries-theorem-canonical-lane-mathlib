import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MObiusGeometriesTheoremCanonicalLaneLean

structure CrossRatioStabilizerPackage where
  space : MObiusSpace
  fourDistinctPoints : space.carrier
  crossRatio : Prop
  invariantUnderTransformations : Prop

structure CrossRatioStabilizerEvidence (P : CrossRatioStabilizerPackage) where
  crossRatioClosed : P.crossRatio
  invariantUnderTransformationsClosed : P.invariantUnderTransformations

def CrossRatioStabilizerClosed (P : CrossRatioStabilizerPackage) : Prop :=
  P.crossRatio ∧ P.invariantUnderTransformations

theorem cross_ratio_stabilizer_closed_from_evidence
    (P : CrossRatioStabilizerPackage) (E : CrossRatioStabilizerEvidence P) :
    CrossRatioStabilizerClosed P := by
  exact And.intro E.crossRatioClosed E.invariantUnderTransformationsClosed

end MObiusGeometriesTheoremCanonicalLaneLean
end HautevilleHouse