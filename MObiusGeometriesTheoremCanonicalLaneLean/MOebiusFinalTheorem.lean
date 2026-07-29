import HautevilleHouse.MOebiusGeometriesTheoremCanonicalLaneLean.MOebiusGateLemmas

namespace HautevilleHouse
namespace MOebiusGeometriesTheoremCanonicalLaneLean

def ConstrainedMOebiusClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_moebius_endgame (A : AdmissibleClass) :
    ConstrainedMOebiusClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MOebiusGeometriesTheoremCanonicalLaneLean
end HautevilleHouse