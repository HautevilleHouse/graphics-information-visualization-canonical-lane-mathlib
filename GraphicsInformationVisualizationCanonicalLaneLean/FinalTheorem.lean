import canonicalLaneMathlib.AdmissibleClass
import GraphicsInformationVisualizationCanonicalLaneLean.BridgeLemmas
import GraphicsInformationVisualizationCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace GraphicsInformationVisualizationCanonicalLaneLean

def ConstrainedGraphicsInfoVizClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_graphics_info_viz_endgame (A : AdmissibleClass) : ConstrainedGraphicsInfoVizClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GraphicsInformationVisualizationCanonicalLaneLean
end HautevilleHouse