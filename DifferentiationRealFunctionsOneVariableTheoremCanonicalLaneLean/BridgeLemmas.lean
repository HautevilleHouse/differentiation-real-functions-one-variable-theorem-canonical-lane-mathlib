import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentiationRealFunctionsOneVariableTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DifferentiationRealFunctionsOneVariableWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

end DifferentiationRealFunctionsOneVariableTheoremCanonicalLaneLean
end HautevilleHouse