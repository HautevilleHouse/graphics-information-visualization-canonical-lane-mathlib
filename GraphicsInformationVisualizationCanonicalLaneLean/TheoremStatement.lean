import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsInformationVisualizationCanonicalLaneLean

structure VisualizationAdmittedObject where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  carriedRemainder : String
  conclusion : VisualizationWitnessClosed

def VisualizationWitnessClosed (O : VisualizationAdmittedObject) : Prop :=
  O.theoremObject = O.sourceKey ∧ O.classicalBoundary ≠ ""

theorem theorem_statement_source_key_checked (O : VisualizationAdmittedObject) :
    O.sourceKey = O.theoremName := by
  rfl

end GraphicsInformationVisualizationCanonicalLaneLean
end HautevilleHouse