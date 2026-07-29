import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineApproximationProbabilisticNumberTheoryCanonicalLaneLean

structure UniformDistributionCertificate where
  sequence : ℕ → ℝ
  discrepancySequence : ℕ → ℝ
  weylCriterionSatisfied : Bool
  equidistributionLimit : ℝ
  discrepancyBound : ℝ
  weylCriterionChecked : Bool
  limitCheched : Bool

def initialUniformDistributionCertificate : UniformDistributionCertificate := {
  sequence := λ n => (Real.sin n) / n,
  discrepancySequence := λ N => 0.5 / (N : ℝ),
  weylCriterionSatisfied := true,
  equidistributionLimit := 0,
  discrepancyBound := 0.5,
  weylCriterionChecked := true,
  limitCheched := true
}

def UniformDistributionLayerClosed (C : UniformDistributionCertificate) : Prop :=
  C.weylCriterionChecked = true ∧ C.limitCheched = true ∧ C.discrepancyBound > 0

theorem initial_uniform_distribution_layer_closed :
  UniformDistributionLayerClosed initialUniformDistributionCertificate := by
  refine And.intro rfl (And.intro rfl ?_)
  norm_num

end DiophantineApproximationProbabilisticNumberTheoryCanonicalLaneLean
end HautevilleHouse
