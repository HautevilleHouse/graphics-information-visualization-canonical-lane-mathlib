import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsInformationVisualizationCanonicalLaneLean

structure ChannelCapacityPackage where
  inputAlphabet : Type
  outputAlphabet : Type
  transitionMatrix : inputAlphabet → outputAlphabet → ℝ
  priorDistribution : inputAlphabet → ℝ
  mutualInformation : ℝ
  capacity : ℝ
  capacityAchieved : Prop
  mutualInformationFormula : Prop

structure ChannelCapacityEvidence (C : ChannelCapacityPackage) where
  mutualInformationFormulaClosed : C.mutualInformationFormula
  capacityAchievedClosed : C.capacityAchieved

def ChannelCapacityClosed (C : ChannelCapacityPackage) : Prop :=
  C.mutualInformationFormula ∧ C.capacityAchieved

theorem channel_capacity_closed_from_evidence (C : ChannelCapacityPackage) (E : ChannelCapacityEvidence C) : ChannelCapacityClosed C :=
  And.intro E.mutualInformationFormulaClosed E.capacityAchievedClosed

end GraphicsInformationVisualizationCanonicalLaneLean
end HautevilleHouse