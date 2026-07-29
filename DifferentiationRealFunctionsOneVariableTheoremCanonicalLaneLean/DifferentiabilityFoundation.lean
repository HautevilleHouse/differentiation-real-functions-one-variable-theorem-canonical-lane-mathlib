import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentiationRealFunctionsOneVariableTheoremCanonicalLaneLean

structure DifferentiationFoundationPackage where
  functionDomain : Type u
  functionCodomain : Type v
  domainTopology : TopologicalSpace functionDomain
  codomainTopology : TopologicalSpace functionCodomain
  pointOfDifferentiability : functionDomain
  limitExists : Prop
  derivativeDefined : Prop
  derivativeValue : functionCodomain
  continuityAtPoint : Prop
  differentiabilityImpliesContinuity : Prop

structure DifferentiationFoundationEvidence (F : DifferentiationFoundationPackage) where
  limitExistsClosed : F.limitExists
  derivativeDefinedClosed : F.derivativeDefined
  differentiabilityImpliesContinuityClosed : F.differentiabilityImpliesContinuity

def DifferentiationFoundationClosed (F : DifferentiationFoundationPackage) : Prop :=
  F.limitExists ∧ F.derivativeDefined ∧ F.differentiabilityImpliesContinuity

theorem differentiation_foundation_closed_from_evidence
    (F : DifferentiationFoundationPackage) (E : DifferentiationFoundationEvidence F) :
    DifferentiationFoundationClosed F := by
  exact And.intro E.limitExistsClosed
    (And.intro E.derivativeDefinedClosed E.differentiabilityImpliesContinuityClosed)

end DifferentiationRealFunctionsOneVariableTheoremCanonicalLaneLean
end HautevilleHouse