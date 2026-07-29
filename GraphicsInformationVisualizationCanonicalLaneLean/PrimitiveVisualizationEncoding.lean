import canonicalLaneMathlib.AdmissibleClass

/-!
# Primitive Visualization Encoding Package
-/

namespace HautevilleHouse
namespace GraphicsInformationVisualizationCanonicalLaneLean

structure PrimitiveVisualizationSource where
  data : Type u
  encodingFunction : Type v
  renderingFunction : Type w
  dataDomain : Prop
  encodingDefined : Prop
  renderingDefined : Prop

def PrimitiveVisualizationSourceClosed (S : PrimitiveVisualizationSource) : Prop :=
  S.dataDomain ∧ S.encodingDefined ∧ S.renderingDefined

end GraphicsInformationVisualizationCanonicalLaneLean
end HautevilleHouse
