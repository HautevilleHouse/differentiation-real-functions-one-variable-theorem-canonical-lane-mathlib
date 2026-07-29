import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferentiationRealFunctionsOneVariableTheoremCanonicalLaneLean.MeanValueTheorem

namespace HautevilleHouse
namespace DifferentiationRealFunctionsOneVariableTheoremCanonicalLaneLean

structure TaylorTheoremPackage where
  functionCᵏ : Prop
  point : ℝ
  taylorPolynomial : ℕ → ℝ → ℝ
  remainderBound : Prop
  remainderEstimates : Prop

structure TaylorTheoremEvidence (T : TaylorTheoremPackage) where
  functionCᵏClosed : T.functionCᵏ
  remainderBoundClosed : T.remainderBound
  remainderEstimatesClosed : T.remainderEstimates

def TaylorTheoremClosed (T : TaylorTheoremPackage) : Prop :=
  T.functionCᵏ ∧ T.remainderBound ∧ T.remainderEstimates

theorem taylor_theorem_closed_from_evidence (T : TaylorTheoremPackage) (E : TaylorTheoremEvidence T) : TaylorTheoremClosed T :=
  And.intro E.functionCᵏClosed (And.intro E.remainderBoundClosed E.remainderEstimatesClosed)

end DifferentiationRealFunctionsOneVariableTheoremCanonicalLaneLean
end HautevilleHouse