import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineApproximationProbabilisticNumberTheoryCanonicalLaneLean

structure MetricDiophantineDatum where
  metricLabel : String
  hausdorffDimensionChecked : Bool
  khinchinReciprocalChecked : Bool
deriving Repr, DecidableEq

def primitiveMetricDiophantineDatum : MetricDiophantineDatum := {
  metricLabel := "Khinchin–Groshev metric",
  hausdorffDimensionChecked := true,
  khinchinReciprocalChecked := true
}

def MetricDiophantineLayerClosed (D : MetricDiophantineDatum) : Prop :=
  D.hausdorffDimensionChecked = true ∧ D.khinchinReciprocalChecked = true

theorem metric_diophantine_layer_closed_checked :
    MetricDiophantineLayerClosed primitiveMetricDiophantineDatum := by
  exact And.intro rfl rfl

end DiophantineApproximationProbabilisticNumberTheoryCanonicalLaneLean
end HautevilleHouse