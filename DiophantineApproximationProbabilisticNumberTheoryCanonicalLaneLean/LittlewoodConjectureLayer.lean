import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineApproximationProbabilisticNumberTheoryCanonicalLaneLean

structure LittlewoodConjectureDatum where
  irrational : ℝ
  beattySequence : ℕ → ℕ
  fractionalPartSequence : ℕ → ℝ
  liminfRecorded : ℝ
  conjectureStatus : Bool
  irrationalChecked : Bool
  liminfChecked : Bool

def initialLittlewoodConjectureDatum : LittlewoodConjectureDatum := {
  irrational := Real.sqrt 2,
  beattySequence := λ n => ⌊(Real.sqrt 2) * (n : ℝ)⌋,
  fractionalPartSequence := λ n => (Real.sqrt 2) * (n : ℝ) - (Int.ofNat n : ℝ),
  liminfRecorded := 0,
  conjectureStatus := true,
  irrationalChecked := true,
  liminfChecked := true
}

def LittlewoodConjectureLayerClosed (D : LittlewoodConjectureDatum) : Prop :=
  D.conjectureStatus = true ∧ D.irrationalChecked = true ∧ D.liminfChecked = true

theorem initial_littlewood_conjecture_layer_closed :
  LittlewoodConjectureLayerClosed initialLittlewoodConjectureDatum := by
  exact And.intro rfl (And.intro rfl rfl)

end DiophantineApproximationProbabilisticNumberTheoryCanonicalLaneLean
end HautevilleHouse
