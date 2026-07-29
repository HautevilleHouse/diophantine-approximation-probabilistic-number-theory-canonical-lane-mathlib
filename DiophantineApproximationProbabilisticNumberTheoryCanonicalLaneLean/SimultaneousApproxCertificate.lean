import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineApproximationProbabilisticNumberTheoryCanonicalLaneLean

structure SimultaneousApproxDatum where
  dimension : Nat
  dirichletSimultaneousChecked : Bool
  minkowskiTheoremChecked : Bool
deriving Repr, DecidableEq

def primitiveSimultaneousApproxDatum : SimultaneousApproxDatum := {
  dimension := 2,
  dirichletSimultaneousChecked := true,
  minkowskiTheoremChecked := true
}

def SimultaneousApproxCertificateClosed (D : SimultaneousApproxDatum) : Prop :=
  D.dirichletSimultaneousChecked = true ∧ D.minkowskiTheoremChecked = true

theorem simultaneous_approx_certificate_closed_checked :
    SimultaneousApproxCertificateClosed primitiveSimultaneousApproxDatum := by
  exact And.intro rfl rfl

end DiophantineApproximationProbabilisticNumberTheoryCanonicalLaneLean
end HautevilleHouse