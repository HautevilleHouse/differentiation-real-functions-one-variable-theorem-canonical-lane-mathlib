import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferentiationRealFunctionsOneVariableTheoremCanonicalLaneLean.DerivativeDefinition

namespace HautevilleHouse
namespace DifferentiationRealFunctionsOneVariableTheoremCanonicalLaneLean

structure DifferentiabilityRulesPackage where
  sumRule : Prop
  productRule : Prop
  chainRule : Prop
  quotientRule : Prop
  powerRule : Prop

structure DifferentiabilityRulesEvidence (R : DifferentiabilityRulesPackage) where
  sumRuleClosed : R.sumRule
  productRuleClosed : R.productRule
  chainRuleClosed : R.chainRule
  quotientRuleClosed : R.quotientRule
  powerRuleClosed : R.powerRule

def DifferentiabilityRulesClosed (R : DifferentiabilityRulesPackage) : Prop :=
  R.sumRule ∧ R.productRule ∧ R.chainRule ∧ R.quotientRule ∧ R.powerRule

theorem differentiability_rules_closed_from_evidence (R : DifferentiabilityRulesPackage) (E : DifferentiabilityRulesEvidence R) : DifferentiabilityRulesClosed R :=
  And.intro E.sumRuleClosed (And.intro E.productRuleClosed (And.intro E.chainRuleClosed (And.intro E.quotientRuleClosed E.powerRuleClosed)))

end DifferentiationRealFunctionsOneVariableTheoremCanonicalLaneLean
end HautevilleHouse