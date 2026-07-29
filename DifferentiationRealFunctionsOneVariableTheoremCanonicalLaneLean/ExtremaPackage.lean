import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentiationRealFunctionsOneVariableTheoremCanonicalLaneLean

structure ExtremaPackage where
  localExtremaDefinition : Prop
  fermatTheorem : Prop
  criticalPoints : Prop
  secondDerivativeTest : Prop

structure ExtremaEvidence (E : ExtremaPackage) where
  localExtremaDefinitionClosed : E.localExtremaDefinition
  fermatTheoremClosed : E.fermatTheorem
  criticalPointsClosed : E.criticalPoints
  secondDerivativeTestClosed : E.secondDerivativeTest

def ExtremaClosed (E : ExtremaPackage) : Prop :=
  E.localExtremaDefinition ∧ E.fermatTheorem ∧ E.criticalPoints ∧ E.secondDerivativeTest

theorem extrema_closed_from_evidence (E : ExtremaPackage)(Ev : ExtremaEvidence E) : ExtremaClosed E := by
  exact And.intro Ev.localExtremaDefinitionClosed (And.intro Ev.fermatTheoremClosed (And.intro Ev.criticalPointsClosed Ev.secondDerivativeTestClosed))

end DifferentiationRealFunctionsOneVariableTheoremCanonicalLaneLean
end HautevilleHouse