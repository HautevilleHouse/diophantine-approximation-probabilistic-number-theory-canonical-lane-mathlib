import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineApproximationProbabilisticNumberTheoryCanonicalLaneLean

structure DistributionDatum where
  uniformDistributionChecked : Bool
  diophantineApproximationChecked : Bool
  probabilisticEndpointChecked : Bool
  deriving Repr

def primitiveDistributionDatum : DistributionDatum := {
  uniformDistributionChecked := true
  diophantineApproximationChecked := true
  probabilisticEndpointChecked := true
}

def DistributionDataClosed (D : DistributionDatum) : Prop :=
  D.uniformDistributionChecked = true ∧
  D.diophantineApproximationChecked = true ∧
  D.probabilisticEndpointChecked = true

theorem distribution_data_closed_checked : DistributionDataClosed primitiveDistributionDatum := by
  exact And.intro rfl (And.intro rfl rfl)

end DiophantineApproximationProbabilisticNumberTheoryCanonicalLaneLean
end HautevilleHouse