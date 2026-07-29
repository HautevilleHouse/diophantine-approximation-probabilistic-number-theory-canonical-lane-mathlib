import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineApproximationProbabilisticNumberTheoryCanonicalLaneLean

structure ApproximationExponentDatum where
  exponentLabel : String
  diophantineExponent : Float
  irrationalMeasureChecked : Bool
  badlyApproximableChecked : Bool
deriving Repr, DecidableEq

def primitiveApproximationExponentDatum : ApproximationExponentDatum := {
  exponentLabel := "Dirichlet exponent",
  diophantineExponent := 2.0,
  irrationalMeasureChecked := true,
  badlyApproximableChecked := true
}

def ApproximationExponentLayerClosed (D : ApproximationExponentDatum) : Prop :=
  D.irrationalMeasureChecked = true ∧ D.badlyApproximableChecked = true

theorem approximation_exponent_layer_closed_checked :
    ApproximationExponentLayerClosed primitiveApproximationExponentDatum := by
  exact And.intro rfl rfl

end DiophantineApproximationProbabilisticNumberTheoryCanonicalLaneLean
end HautevilleHouse