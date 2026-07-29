import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentiationRealFunctionsOneVariableTheoremCanonicalLaneLean

structure FundamentalTheoremsPackage where
  rollesTheorem : Prop
  meanValueTheorem : Prop
  cauchyMeanValue : Prop
  lhopitalRule : Prop

structure FundamentalTheoremsEvidence (F : FundamentalTheoremsPackage) where
  rollesTheoremClosed : F.rollesTheorem
  meanValueTheoremClosed : F.meanValueTheorem
  cauchyMeanValueClosed : F.cauchyMeanValue
  lhopitalRuleClosed : F.lhopitalRule

def FundamentalTheoremsClosed (F : FundamentalTheoremsPackage) : Prop :=
  F.rollesTheorem ∧ F.meanValueTheorem ∧ F.cauchyMeanValue ∧ F.lhopitalRule

theorem fundamental_theorems_closed_from_evidence (F : FundamentalTheoremsPackage)(E : FundamentalTheoremsEvidence F) : FundamentalTheoremsClosed F := by
  exact And.intro E.rollesTheoremClosed (And.intro E.meanValueTheoremClosed (And.intro E.cauchyMeanValueClosed E.lhopitalRuleClosed))

end DifferentiationRealFunctionsOneVariableTheoremCanonicalLaneLean
end HautevilleHouse