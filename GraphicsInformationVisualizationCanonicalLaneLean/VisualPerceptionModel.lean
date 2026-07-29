import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsInformationVisualizationCanonicalLaneLean

structure VisualPerceptionModelPackage where
  stimulusSpace : Type
  perceptualResponse : Type
  contrastSensitivity : stimulusSpace → ℝ
  justNoticeableDifference : ℝ
  visualChannelBandwidth : ℝ
  perceptionModelValid : Prop
  contrastSensitivityFunctionDefined : Prop

structure VisualPerceptionModelEvidence (V : VisualPerceptionModelPackage) where
  perceptionModelValidClosed : V.perceptionModelValid
  contrastSensitivityFunctionDefinedClosed : V.contrastSensitivityFunctionDefined

def VisualPerceptionModelClosed (V : VisualPerceptionModelPackage) : Prop :=
  V.perceptionModelValid ∧ V.contrastSensitivityFunctionDefined

theorem visual_perception_model_closed_from_evidence (V : VisualPerceptionModelPackage) (E : VisualPerceptionModelEvidence V) : VisualPerceptionModelClosed V :=
  And.intro E.perceptionModelValidClosed E.contrastSensitivityFunctionDefinedClosed

end GraphicsInformationVisualizationCanonicalLaneLean
end HautevilleHouse