import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentiationRealFunctionsOneVariableTheoremCanonicalLaneLean

def ConstrainedDifferentiationRealFunctionsOneVariableClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_differentiation_real_functions_one_variable_endgame (A : AdmissibleClass) :
    ConstrainedDifferentiationRealFunctionsOneVariableClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DifferentiationRealFunctionsOneVariableTheoremCanonicalLaneLean
end HautevilleHouse