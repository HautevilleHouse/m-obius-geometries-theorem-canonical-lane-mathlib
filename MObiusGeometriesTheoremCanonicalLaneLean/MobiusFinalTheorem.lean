import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MObiusGeometriesTheoremCanonicalLaneLean

def ConstrainedMobiusClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_mobius_endgame (A : AdmissibleClass) :
    ConstrainedMobiusClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MObiusGeometriesTheoremCanonicalLaneLean
end HautevilleHouse