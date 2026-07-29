import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferentiationRealFunctionsOneVariableTheoremCanonicalLaneLean.TaylorTheorem

namespace HautevilleHouse
namespace DifferentiationRealFunctionsOneVariableTheoremCanonicalLaneLean

structure LHopitalRulePackage where
  functions : ℝ → ℝ × ℝ → ℝ
  limitPoint : ℝ
  indeterminateForm : Prop
  derivativesExist : Prop
  limitOfDerivativesRatio : Prop
  limitOfFunctionsRatio : Prop

structure LHopitalRuleEvidence (L : LHopitalRulePackage) where
  indeterminateFormClosed : L.indeterminateForm
  derivativesExistClosed : L.derivativesExist
  limitOfDerivativesRatioClosed : L.limitOfDerivativesRatio
  limitOfFunctionsRatioClosed : L.limitOfFunctionsRatio

def LHopitalRuleClosed (L : LHopitalRulePackage) : Prop :=
  L.indeterminateForm ∧ L.derivativesExist ∧ L.limitOfDerivativesRatio ∧ L.limitOfFunctionsRatio

theorem lhopital_rule_closed_from_evidence (L : LHopitalRulePackage) (E : LHopitalRuleEvidence L) : LHopitalRuleClosed L :=
  And.intro E.indeterminateFormClosed (And.intro E.derivativesExistClosed (And.intro E.limitOfDerivativesRatioClosed E.limitOfFunctionsRatioClosed))

end DifferentiationRealFunctionsOneVariableTheoremCanonicalLaneLean
end HautevilleHouse