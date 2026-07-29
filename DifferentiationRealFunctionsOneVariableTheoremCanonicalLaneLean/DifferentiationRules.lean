import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentiationRealFunctionsOneVariableTheoremCanonicalLaneLean

structure DifferentiationRulesPackage (F : DifferentiationFoundationPackage) where
  sumRule : Prop
  productRule : Prop
  quotientRule : Prop
  chainRule : Prop
  powerRule : Prop
  constantMultipleRule : Prop

structure DifferentiationRulesEvidence {F : DifferentiationFoundationPackage}
    (R : DifferentiationRulesPackage F) where
  sumRuleClosed : R.sumRule
  productRuleClosed : R.productRule
  quotientRuleClosed : R.quotientRule
  chainRuleClosed : R.chainRule
  powerRuleClosed : R.powerRule
  constantMultipleRuleClosed : R.constantMultipleRule

def DifferentiationRulesClosed {F : DifferentiationFoundationPackage}
    (R : DifferentiationRulesPackage F) : Prop :=
  R.sumRule ∧ R.productRule ∧ R.quotientRule ∧ R.chainRule ∧ R.powerRule ∧ R.constantMultipleRule

theorem differentiation_rules_closed_from_evidence
    {F : DifferentiationFoundationPackage} (R : DifferentiationRulesPackage F)
    (E : DifferentiationRulesEvidence R) : DifferentiationRulesClosed R := by
  exact And.intro E.sumRuleClosed
    (And.intro E.productRuleClosed
      (And.intro E.quotientRuleClosed
        (And.intro E.chainRuleClosed
          (And.intro E.powerRuleClosed E.constantMultipleRuleClosed))))

end DifferentiationRealFunctionsOneVariableTheoremCanonicalLaneLean
end HautevilleHouse