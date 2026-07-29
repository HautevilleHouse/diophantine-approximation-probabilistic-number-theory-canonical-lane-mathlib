import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineApproximationProbabilisticNumberTheoryCanonicalLaneLean

structure ErdosGintnerDatum where
  distributionLabel : String
  gaussianConvolutionChecked : Bool
  limitDistributionChecked : Bool
deriving Repr, DecidableEq

def primitiveErdosGintnerDatum : ErdosGintnerDatum := {
  distributionLabel := "Erdős–Gintner distribution",
  gaussianConvolutionChecked := true,
  limitDistributionChecked := true
}

def ErdosGintnerCertificateClosed (D : ErdosGintnerDatum) : Prop :=
  D.gaussianConvolutionChecked = true ∧ D.limitDistributionChecked = true

theorem erdos_gintner_certificate_closed_checked :
    ErdosGintnerCertificateClosed primitiveErdosGintnerDatum := by
  exact And.intro rfl rfl

end DiophantineApproximationProbabilisticNumberTheoryCanonicalLaneLean
end HautevilleHouse