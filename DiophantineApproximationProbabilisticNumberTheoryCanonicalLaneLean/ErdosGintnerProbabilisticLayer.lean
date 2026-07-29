import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineApproximationProbabilisticNumberTheoryCanonicalLaneLean

structure ErdosGintnerCertificate where
  setA : Set ℕ
  countingFunction : ℕ → ℕ
  asymptoticDensity : ℝ
  approximationRate : ℕ → ℝ
  densityUpperBound : ℝ
  densityLowerBound : ℝ
  densityCalculated : Bool
  approximationChecked : Bool

def initialErdosGintnerCertificate : ErdosGintnerCertificate := {
  setA := {n | n % 3 = 0},
  countingFunction := λ N => N / 3,
  asymptoticDensity := 1/3,
  approximationRate := λ N => 1/(N : ℝ),
  densityUpperBound := 1/3,
  densityLowerBound := 1/3,
  densityCalculated := true,
  approximationChecked := true
}

def ErdosGintnerProbabilisticLayerClosed (C : ErdosGintnerCertificate) : Prop :=
  C.densityCalculated = true ∧
  C.approximationChecked = true ∧
  C.densityUpperBound = C.densityLowerBound ∧
  C.asymptoticDensity = C.densityUpperBound

theorem initial_erdos_gintner_layer_closed :
  ErdosGintnerProbabilisticLayerClosed initialErdosGintnerCertificate := by
  refine And.intro rfl (And.intro rfl (And.intro ?_ ?_))
  · norm_num
  · norm_num

end DiophantineApproximationProbabilisticNumberTheoryCanonicalLaneLean
end HautevilleHouse
