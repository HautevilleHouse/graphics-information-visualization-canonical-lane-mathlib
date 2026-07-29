import GraphicsInformationVisualizationCanonicalLaneLean.AdmissibleClass
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsInformationVisualizationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def graphicsVisualizationProjection : Projection GraphicsVisualizationEndgameState :=
  { toFun := fun x => x,
    idempotent := by intro x; rfl }

theorem graphics_visualization_projection_idempotent (x : GraphicsVisualizationEndgameState) :
    graphicsVisualizationProjection.toFun (graphicsVisualizationProjection.toFun x) = graphicsVisualizationProjection.toFun x := by
  exact graphicsVisualizationProjection.idempotent x

end GraphicsInformationVisualizationCanonicalLaneLean
end HautevilleHouse
