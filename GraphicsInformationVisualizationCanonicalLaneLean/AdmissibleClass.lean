import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsInformationVisualizationCanonicalLaneLean

structure AdmissibleClass where
  object : GraphicsVisualizationAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  GraphicsVisualizationWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GraphicsInformationVisualizationCanonicalLaneLean
end HautevilleHouse
