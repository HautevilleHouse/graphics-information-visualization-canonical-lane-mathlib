import GraphicsInformationVisualizationCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace GraphicsInformationVisualizationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  GraphicsVisualizationWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end GraphicsInformationVisualizationCanonicalLaneLean
end HautevilleHouse
