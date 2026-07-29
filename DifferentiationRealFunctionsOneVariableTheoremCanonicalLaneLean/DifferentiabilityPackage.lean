import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentiationRealFunctionsOneVariableTheoremCanonicalLaneLean

structure DifferentiabilityPackage where
  pointwiseDerivativeExists : Prop
  differentialQuotientConverges : Prop
  derivativeUnique : Prop
  linearApproximationExists : Prop

structure DifferentiabilityEvidence (D : DifferentiabilityPackage) where
  pointwiseDerivativeExistsClosed : D.pointwiseDerivativeExists
  differentialQuotientConvergesClosed : D.differentialQuotientConverges
  derivativeUniqueClosed : D.derivativeUnique
  linearApproximationExistsClosed : D.linearApproximationExists

def DifferentiabilityClosed (D : DifferentiabilityPackage) : Prop :=
  D.pointwiseDerivativeExists ∧ D.differentialQuotientConverges ∧
  D.derivativeUnique ∧ D.linearApproximationExists

theorem differentiability_closed_from_evidence
    (D : DifferentiabilityPackage) (E : DifferentiabilityEvidence D) :
    DifferentiabilityClosed D := by
  exact And.intro E.pointwiseDerivativeExistsClosed
    (And.intro E.differentialQuotientConvergesClosed
      (And.intro E.derivativeUniqueClosed E.linearApproximationExistsClosed))

end DifferentiationRealFunctionsOneVariableTheoremCanonicalLaneLean
end HautevilleHouse