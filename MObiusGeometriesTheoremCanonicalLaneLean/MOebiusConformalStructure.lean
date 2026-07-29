import HautevilleHouse.MOebiusGeometriesTheoremCanonicalLaneLean.MOebiusAdmissibleClass

namespace HautevilleHouse
namespace MOebiusGeometriesTheoremCanonicalLaneLean

structure ConformalStructurePackage where
  moebiusSpace : Type u
  conformalClass : Type v
  anglePreserving : Prop
  localConformality : Prop
  moebiusTransformationsFormGroup : Prop

structure ConformalStructureEvidence (C : ConformalStructurePackage) where
  anglePreservingClosed : C.anglePreserving
  localConformalityClosed : C.localConformality
  moebiusTransformationsFormGroupClosed : C.moebiusTransformationsFormGroup

def ConformalStructureClosed (C : ConformalStructurePackage) : Prop :=
  C.anglePreserving ∧ C.localConformality ∧ C.moebiusTransformationsFormGroup

theorem conformal_structure_closed_from_evidence
    (C : ConformalStructurePackage) (E : ConformalStructureEvidence C) :
    ConformalStructureClosed C := by
  exact And.intro E.anglePreservingClosed
    (And.intro E.localConformalityClosed E.moebiusTransformationsFormGroupClosed)

end MOebiusGeometriesTheoremCanonicalLaneLean
end HautevilleHouse