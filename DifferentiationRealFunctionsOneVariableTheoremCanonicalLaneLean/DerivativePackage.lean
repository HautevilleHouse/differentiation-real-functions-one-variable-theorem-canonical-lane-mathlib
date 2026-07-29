import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentiationRealFunctionsOneVariableTheoremCanonicalLaneLean

structure DerivativePackage where
  derivativeDefinition : Prop
  differentiationRules : Prop
  meanValueTheorem : Prop
  taylorTheorem : Prop

structure DerivativeEvidence (D : DerivativePackage) where
  derivativeDefinitionClosed : D.derivativeDefinition
  differentiationRulesClosed : D.differentiationRules
  meanValueTheoremClosed : D.meanValueTheorem
  taylorTheoremClosed : D.taylorTheorem

def DerivativeClosed (D : DerivativePackage) : Prop :=
  D.derivativeDefinition ∧ D.differentiationRules ∧ D.meanValueTheorem ∧ D.taylorTheorem

theorem derivative_closed_from_evidence (D : DerivativePackage)(E : DerivativeEvidence D) : DerivativeClosed D := by
  exact And.intro E.derivativeDefinitionClosed (And.intro E.differentiationRulesClosed (And.intro E.meanValueTheoremClosed E.taylorTheoremClosed))

end DifferentiationRealFunctionsOneVariableTheoremCanonicalLaneLean
end HautevilleHouse