import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MObiusGeometriesTheoremCanonicalLaneLean

structure CrossRatio where
  fourPoints : ℕ
  value : ℂ
  definedForDistinctPoints : Prop
  invariantUnderMObius : Prop

structure CrossRatioEvidence (C : CrossRatio) where
  definedForDistinctPointsClosed : C.definedForDistinctPoints
  invariantUnderMObiusClosed : C.invariantUnderMObius

def CrossRatioClosed (C : CrossRatio) : Prop :=
  C.definedForDistinctPoints ∧ C.invariantUnderMObius

theorem cross_ratio_closed_from_evidence (C : CrossRatio) (E : CrossRatioEvidence C) :
    CrossRatioClosed C := by
  exact And.intro E.definedForDistinctPointsClosed E.invariantUnderMObiusClosed

end MObiusGeometriesTheoremCanonicalLaneLean
end HautevilleHouse