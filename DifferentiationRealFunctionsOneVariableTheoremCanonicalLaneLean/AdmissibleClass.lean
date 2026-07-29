import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentiationRealFunctionsOneVariableTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : DifferentiationRealFunctionsOneVariableAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DifferentiationRealFunctionsOneVariableWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DifferentiationRealFunctionsOneVariableTheoremCanonicalLaneLean
end HautevilleHouse