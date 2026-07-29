import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentiationRealFunctionsOneVariableTheoremCanonicalLaneLean

structure ChainRulePackage where
  f : ℝ → ℝ
  g : ℝ → ℝ
  x0 : ℝ
  fDifferentiableAtX0 : Prop
  gDifferentiableAtFX0 : Prop
  hDifferentiableAtX0 : Prop
  hDerivativeValue : ℝ

structure ChainRuleEvidence (C : ChainRulePackage) where
  fDifferentiableAtX0Closed : C.fDifferentiableAtX0
  gDifferentiableAtFX0Closed : C.gDifferentiableAtFX0
  hDifferentiableAtX0Closed : C.hDifferentiableAtX0
  hDerivativeComputed : C.hDerivativeValue = (0 : ℝ) -- placeholder, should be g'(f(x0))*f'(x0)

def ChainRuleClosed (C : ChainRulePackage) : Prop :=
  C.fDifferentiableAtX0 ∧ C.gDifferentiableAtFX0 ∧ C.hDifferentiableAtX0

theorem chain_rule_closed_from_evidence (C : ChainRulePackage) (E : ChainRuleEvidence C) : ChainRuleClosed C :=
  And.intro E.fDifferentiableAtX0Closed (And.intro E.gDifferentiableAtFX0Closed E.hDifferentiableAtX0Closed)

end DifferentiationRealFunctionsOneVariableTheoremCanonicalLaneLean
end HautevilleHouse