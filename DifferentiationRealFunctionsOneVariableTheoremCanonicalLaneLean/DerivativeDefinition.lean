import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentiationRealFunctionsOneVariableTheoremCanonicalLaneLean

structure DerivativePackage where
  point : ℝ
  functionValue : ℝ → ℝ
  limitExists : Prop
  derivativeAtPoint : ℝ
  differentiability : Prop

structure DerivativeEvidence (D : DerivativePackage) where
  limitExistsClosed : D.limitExists
  derivativeValueMatches : D.derivativeAtPoint = (fun h : ℝ => (D.functionValue (D.point + h) - D.functionValue D.point) / h) 0
  differentiabilityClosed : D.differentiability

def DerivativeClosed (D : DerivativePackage) : Prop :=
  D.limitExists ∧ D.differentiability

theorem derivative_closed_from_evidence (D : DerivativePackage) (E : DerivativeEvidence D) : DerivativeClosed D :=
  And.intro E.limitExistsClosed E.differentiabilityClosed

end DifferentiationRealFunctionsOneVariableTheoremCanonicalLaneLean
end HautevilleHouse