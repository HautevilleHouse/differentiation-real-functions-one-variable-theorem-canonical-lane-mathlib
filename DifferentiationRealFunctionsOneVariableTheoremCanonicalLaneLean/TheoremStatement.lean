import DifferentiationRealFunctionsOneVariableTheoremCanonicalLaneLean.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace DifferentiationRealFunctionsOneVariableTheoremCanonicalLaneLean

structure DifferentiationSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure DifferentiationAdmittedObject where
  space : DifferentiationSpace
  realFunction : carrier → ℝ
  derivativeExists : Prop
  derivativeValue : carrier → ℝ
  derivativeFormula : Prop
  conclusion : derivativeFormula


structure DifferentiationEndgameState where
  object : DifferentiationAdmittedObject

def DifferentiationWitnessClosed (O : DifferentiationAdmittedObject) : Prop :=
  O.derivativeFormula

end DifferentiationRealFunctionsOneVariableTheoremCanonicalLaneLean
end HautevilleHouse