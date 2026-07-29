import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferentiationRealFunctionsOneVariableTheoremCanonicalLaneLean.DifferentiabilityRules

namespace HautevilleHouse
namespace DifferentiationRealFunctionsOneVariableTheoremCanonicalLaneLean

structure MeanValueTheoremPackage where
  interval : ℝ × ℝ
  functionOnInterval : ℝ → ℝ
  continuous : Prop
  differentiableOnInterior : Prop
  endpointValuesEqual : Prop
  existsPointWithDerivativeEqual : Prop

structure MeanValueTheoremEvidence (M : MeanValueTheoremPackage) where
  continuousClosed : M.continuous
  differentiableOnInteriorClosed : M.differentiableOnInterior
  endpointValuesEqualClosed : M.endpointValuesEqual
  existsPointWithDerivativeEqualClosed : M.existsPointWithDerivativeEqual

def MeanValueTheoremClosed (M : MeanValueTheoremPackage) : Prop :=
  M.continuous ∧ M.differentiableOnInterior ∧ M.endpointValuesEqual ∧ M.existsPointWithDerivativeEqual

theorem mean_value_theorem_closed_from_evidence (M : MeanValueTheoremPackage) (E : MeanValueTheoremEvidence M) : MeanValueTheoremClosed M :=
  And.intro E.continuousClosed (And.intro E.differentiableOnInteriorClosed (And.intro E.endpointValuesEqualClosed E.existsPointWithDerivativeEqualClosed))

end DifferentiationRealFunctionsOneVariableTheoremCanonicalLaneLean
end HautevilleHouse