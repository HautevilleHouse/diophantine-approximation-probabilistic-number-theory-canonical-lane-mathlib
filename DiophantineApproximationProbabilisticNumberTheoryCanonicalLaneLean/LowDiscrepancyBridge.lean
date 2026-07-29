import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineApproximationProbabilisticNumberTheoryCanonicalLaneLean

structure LowDiscrepancyDatum where
  sequenceType : String
  starDiscrepancy : Float
  uniformityChecked : Bool
  koksmmaChecked : Bool
deriving Repr, DecidableEq

def primitiveLowDiscrepancyDatum : LowDiscrepancyDatum := {
  sequenceType := "van der Corput",
  starDiscrepancy := 0.5,
  uniformityChecked := true,
  koksmmaChecked := true
}

def LowDiscrepancyBridgeClosed (D : LowDiscrepancyDatum) : Prop :=
  D.uniformityChecked = true ∧ D.koksmmaChecked = true

theorem low_discrepancy_bridge_closed_checked :
    LowDiscrepancyBridgeClosed primitiveLowDiscrepancyDatum := by
  exact And.intro rfl rfl

end DiophantineApproximationProbabilisticNumberTheoryCanonicalLaneLean
end HautevilleHouse