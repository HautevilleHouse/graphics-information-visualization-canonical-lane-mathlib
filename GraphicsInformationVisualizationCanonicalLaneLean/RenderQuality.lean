import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsInformationVisualizationCanonicalLaneLean

structure RenderQualityPackage where
  imageSpace : Type
  referenceImage : imageSpace
  renderedImage : imageSpace
  qualityMetric : imageSpace → imageSpace → ℝ
  qualityThreshold : ℝ
  perceptualErrorBound : Prop
  metricConsistency : Prop

structure RenderQualityEvidence (R : RenderQualityPackage) where
  perceptualErrorBoundClosed : R.perceptualErrorBound
  metricConsistencyClosed : R.metricConsistency

def RenderQualityClosed (R : RenderQualityPackage) : Prop :=
  R.perceptualErrorBound ∧ R.metricConsistency

theorem render_quality_closed_from_evidence (R : RenderQualityPackage) (E : RenderQualityEvidence R) : RenderQualityClosed R :=
  And.intro E.perceptualErrorBoundClosed E.metricConsistencyClosed

end GraphicsInformationVisualizationCanonicalLaneLean
end HautevilleHouse