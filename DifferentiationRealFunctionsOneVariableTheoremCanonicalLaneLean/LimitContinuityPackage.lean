import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentiationRealFunctionsOneVariableTheoremCanonicalLaneLean

structure LimitContinuityPackage where
  limitDefinition : Prop
  continuityDefinition : Prop
  oneSidedLimits : Prop
  properties : Prop

structure LimitContinuityEvidence (L : LimitContinuityPackage) where
  limitDefinitionClosed : L.limitDefinition
  continuityDefinitionClosed : L.continuityDefinition
  oneSidedLimitsClosed : L.oneSidedLimits
  propertiesClosed : L.properties

def LimitContinuityClosed (L : LimitContinuityPackage) : Prop :=
  L.limitDefinition ∧ L.continuityDefinition ∧ L.oneSidedLimits ∧ L.properties

theorem limit_continuity_closed_from_evidence (L : LimitContinuityPackage)(E : LimitContinuityEvidence L) : LimitContinuityClosed L := by
  exact And.intro E.limitDefinitionClosed (And.intro E.continuityDefinitionClosed (And.intro E.oneSidedLimitsClosed E.propertiesClosed))

end DifferentiationRealFunctionsOneVariableTheoremCanonicalLaneLean
end HautevilleHouse