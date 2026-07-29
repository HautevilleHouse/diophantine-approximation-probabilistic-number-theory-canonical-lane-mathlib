import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineApproximationProbabilisticNumberTheoryCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def theoremProjection : Projection ClosureState := {
  toFun := fun x => x
  idempotent := by intro x; rfl
}

theorem theorem_projection_idempotent (x : ClosureState) :
    theoremProjection.toFun (theoremProjection.toFun x) = theoremProjection.toFun x := by
  exact theoremProjection.idempotent x

end DiophantineApproximationProbabilisticNumberTheoryCanonicalLaneLean
end HautevilleHouse