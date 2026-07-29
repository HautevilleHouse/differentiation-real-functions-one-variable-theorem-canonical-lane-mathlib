import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Analysis.Calculus.MeanInequalities
import Mathlib.Analysis.Calculus.Deriv.Basic

/-!
# Mean Value Theorem Package for Real Functions
-/

namespace HautevilleHouse
namespace DifferentiationRealFunctionsOneVariableTheoremCanonicalLaneLean

structure MeanValueTheoremPackage where
  functionDomain : Type u
  intervalStart : functionDomain
  intervalEnd : functionDomain
  functionContinuousOn : Prop
  functionDifferentiableOn : Prop
  existsPointDerivativeEqualsSlope : Prop
  conclusionReached : Prop

structure MeanValueTheoremEvidence (M : MeanValueTheoremPackage) where
  functionContinuousOnClosed : M.functionContinuousOn
  functionDifferentiableOnClosed : M.functionDifferentiableOn
  existsPointDerivativeEqualsSlopeClosed : M.existsPointDerivativeEqualsSlope
  conclusionReachedClosed : M.conclusionReached

def MeanValueTheoremClosed (M : MeanValueTheoremPackage) : Prop :=
  M.functionContinuousOn ∧ M.functionDifferentiableOn ∧
  M.existsPointDerivativeEqualsSlope ∧ M.conclusionReached

theorem mean_value_theorem_closed_from_evidence
    (M : MeanValueTheoremPackage) (E : MeanValueTheoremEvidence M) :
    MeanValueTheoremClosed M := by
  exact And.intro E.functionContinuousOnClosed
    (And.intro E.functionDifferentiableOnClosed
      (And.intro E.existsPointDerivativeEqualsSlopeClosed E.conclusionReachedClosed))

end DifferentiationRealFunctionsOneVariableTheoremCanonicalLaneLean
end HautevilleHouse
