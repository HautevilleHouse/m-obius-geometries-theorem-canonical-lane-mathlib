import canonicalLaneMathlib.AdmissibleClass
import MObiusGeometriesTheoremCanonicalLaneLean.MObiusAdmissibleObject

namespace HautevilleHouse
namespace MObiusGeometriesTheoremCanonicalLaneLean

def bridgeClosed (A : MObiusAdmittedObject) : Prop :=
  MObiusWitnessClosed A

theorem bridge_from_admissible_class (A : MObiusAdmittedObject) :
    bridgeClosed A := by
  exact A.conclusion

def gateClosed (A : MObiusAdmittedObject) : Prop :=
  A.admitsMObiusStructure

theorem gate_from_admissible_class (A : MObiusAdmittedObject) :
    gateClosed A := by
  exact A.conclusion

def ConstrainedMObiusClosure (A : MObiusAdmittedObject) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_mobius_closure_proof (A : MObiusAdmittedObject) :
    ConstrainedMObiusClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MObiusGeometriesTheoremCanonicalLaneLean
end HautevilleHouse