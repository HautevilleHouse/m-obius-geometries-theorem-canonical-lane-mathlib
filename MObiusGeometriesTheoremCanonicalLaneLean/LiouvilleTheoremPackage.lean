import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MObiusGeometriesTheoremCanonicalLaneLean

structure LiouvilleTheoremPackage where
  domain : MObiusSpace
  conformalMap : domain.carrier -> domain.carrier
  conformalCondition : Prop
  mobiusCharacterization : Prop

structure LiouvilleTheoremEvidence (P : LiouvilleTheoremPackage) where
  conformalConditionClosed : P.conformalCondition
  mobiusCharacterizationClosed : P.mobiusCharacterization

def LiouvilleTheoremClosed (P : LiouvilleTheoremPackage) : Prop :=
  P.conformalCondition ∧ P.mobiusCharacterization

theorem liouville_theorem_closed_from_evidence
    (P : LiouvilleTheoremPackage) (E : LiouvilleTheoremEvidence P) :
    LiouvilleTheoremClosed P := by
  exact And.intro E.conformalConditionClosed E.mobiusCharacterizationClosed

end MObiusGeometriesTheoremCanonicalLaneLean
end HautevilleHouse