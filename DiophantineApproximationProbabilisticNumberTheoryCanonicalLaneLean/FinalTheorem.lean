import HautevilleHouse.DiophantineApproximationProbabilisticNumberTheoryCanonicalLaneLean.SimultaneousApproximationLayer

namespace HautevilleHouse
namespace DiophantineApproximationProbabilisticNumberTheoryCanonicalLaneLean

def ConstrainedDiophantineApproximationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_diophantine_approximation_endgame (A : AdmissibleClass) :
    ConstrainedDiophantineApproximationClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DiophantineApproximationProbabilisticNumberTheoryCanonicalLaneLean
end HautevilleHouse