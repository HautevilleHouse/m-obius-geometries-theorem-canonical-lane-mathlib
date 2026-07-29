import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MObiusGeometriesTheoremCanonicalLaneLean

structure PoincareDiskModel where
  diskType : Type u
  metricType : Type v
  isModelOfHyperbolic : Prop
  isometryGroupIsMObius : Prop

structure PoincareDiskModelEvidence (P : PoincareDiskModel) where
  isModelOfHyperbolicClosed : P.isModelOfHyperbolic
  isometryGroupIsMObiusClosed : P.isometryGroupIsMObius

def PoincareDiskModelClosed (P : PoincareDiskModel) : Prop :=
  P.isModelOfHyperbolic ∧ P.isometryGroupIsMObius

theorem poincare_disk_model_closed_from_evidence (P : PoincareDiskModel) (E : PoincareDiskModelEvidence P) :
    PoincareDiskModelClosed P := by
  exact And.intro E.isModelOfHyperbolicClosed E.isometryGroupIsMObiusClosed

end MObiusGeometriesTheoremCanonicalLaneLean
end HautevilleHouse