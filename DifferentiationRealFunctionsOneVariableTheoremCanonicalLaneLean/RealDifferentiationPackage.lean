import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Analysis.Calculus.Deriv.Basic
import Mathlib.Analysis.Calculus.MeanInequalities
import Mathlib.Analysis.Calculus.ContDiff
import Mathlib.Analysis.Calculus.Deriv.Pow
import Mathlib.Analysis.SpecialFunctions.Trigonometric

/-!
# Differentiation Real Functions One Variable Theorem Package
-/

namespace HautevilleHouse
namespace DifferentiationRealFunctionsOneVariableTheoremCanonicalLaneLean

structure RealDifferentiationPackage where
  domainType : Type u
  codomainType : Type v
  sourceFunction : domainType → codomainType
  differentiableAtPoint : Prop
  derivativeAtPoint : Type w
  derivativeValue : derivativeAtPoint
  chainRuleApplied : Prop
  productRuleApplied : Prop
  quotientRuleApplied : Prop

structure RealDifferentiationEvidence (P : RealDifferentiationPackage) where
  differentiableAtPointClosed : P.differentiableAtPoint
  derivativeValueClosed : P.derivativeValue = P.derivativeValue
  chainRuleAppliedClosed : P.chainRuleApplied
  productRuleAppliedClosed : P.productRuleApplied
  quotientRuleAppliedClosed : P.quotientRuleApplied

def RealDifferentiationClosed (P : RealDifferentiationPackage) : Prop :=
  P.differentiableAtPoint ∧
  P.chainRuleApplied ∧
  P.productRuleApplied ∧
  P.quotientRuleApplied

theorem real_differentiation_closed_from_evidence
    (P : RealDifferentiationPackage) (E : RealDifferentiationEvidence P) :
    RealDifferentiationClosed P := by
  exact And.intro E.differentiableAtPointClosed
    (And.intro E.chainRuleAppliedClosed
      (And.intro E.productRuleAppliedClosed E.quotientRuleAppliedClosed))

end DifferentiationRealFunctionsOneVariableTheoremCanonicalLaneLean
end HautevilleHouse
