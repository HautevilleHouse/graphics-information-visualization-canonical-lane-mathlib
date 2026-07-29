import canonicalLaneMathlib.AdmissibleClass

/-!
# Rendering Pipeline Package
-/

namespace HautevilleHouse
namespace GraphicsInformationVisualizationCanonicalLaneLean

structure RenderingPipelinePackage where
  geometryProcessing : Prop
  rasterization : Prop
  shading : Prop
  compositing : Prop
  geometryProcessingTerm : geometryProcessing
  rasterizationTerm : rasterization
  shadingTerm : shading
  compositingTerm : compositing

def RenderingPipelineClosed (R : RenderingPipelinePackage) : Prop :=
  R.geometryProcessing ∧ R.rasterization ∧ R.shading ∧ R.compositing

end GraphicsInformationVisualizationCanonicalLaneLean
end HautevilleHouse
