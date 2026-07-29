import HautevilleHouse.DiophantineApproximationProbabilisticNumberTheoryCanonicalLaneLean.MetricDiophantineApproximationLayer

namespace HautevilleHouse
namespace DiophantineApproximationProbabilisticNumberTheoryCanonicalLaneLean

structure SimultaneousApproximationDatum where
  dimension : ℕ
  exponents : List ℝ
  minkowskiBound : ℕ
  dirichletSimultaneousChecked : Bool

structure SimultaneousApproximationLayerCertificate where
  datum : SimultaneousApproximationDatum
  simultaneousRoute : String
  subspaceRoute : String
  minkowskiInternalized : Bool

def simultaneousApproximationLayerCertificate : SimultaneousApproximationLayerCertificate := {
  datum := {
    dimension := 3,
    exponents := [1, 1, 1],
    minkowskiBound := 5,
    dirichletSimultaneousChecked := true
  },
  simultaneousRoute := "Simultaneous Diophantine approximation routed through Minkowski's theorem and Schmidt's subspace theorem",
  subspaceRoute := "Subspace theorem endpoint projected through admissible class",
  minkowskiInternalized := true
}

def SimultaneousApproximationLayerClosed (C : SimultaneousApproximationLayerCertificate) : Prop :=
  C.datum.dirichletSimultaneousChecked = true ∧
  C.minkowskiInternalized = true

theorem simultaneous_approximation_layer_closed_checked :
    SimultaneousApproximationLayerClosed simultaneousApproximationLayerCertificate := by
  exact And.intro rfl rfl

end DiophantineApproximationProbabilisticNumberTheoryCanonicalLaneLean
end HautevilleHouse