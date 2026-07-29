import canonicalLaneMathlib.AdmissibleClass

/-!
# Entropy and Channel Capacity Package

This module defines the information-theoretic structures for graphics
visualization: Shannon entropy, mutual information, channel capacity,
and the source/channel coding theorems. Each structure records proof
obligations that later compose into the admissible-class bridge.
-/

namespace HautevilleHouse
namespace GraphicsInformationVisualizationCanonicalLaneLean

structure ShannonEntropyPackage where
  sourceAlphabet : Type u
  probabilityDistribution : sourceAlphabet → ℝ
  entropy : ℝ
  nonnegativity : Prop
  maxUniform : Prop
  chainRule : Prop

structure ShannonEntropyEvidence (S : ShannonEntropyPackage) where
  nonnegativityClosed : S.nonnegativity
  maxUniformClosed : S.maxUniform
  chainRuleClosed : S.chainRule

def ShannonEntropyClosed (S : ShannonEntropyPackage) : Prop :=
  S.nonnegativity ∧ S.maxUniform ∧ S.chainRule

theorem shannon_entropy_closed_from_evidence (S : ShannonEntropyPackage)
    (E : ShannonEntropyEvidence S) : ShannonEntropyClosed S := by
  exact And.intro E.nonnegativityClosed (And.intro E.maxUniformClosed E.chainRuleClosed)

structure ChannelCapacityPackage (S : ShannonEntropyPackage) where
  channelMatrix : Type v
  inputDistribution : S.sourceAlphabet → ℝ
  mutualInformation : ℝ
  capacity : ℝ
  capacityDefinition : capacity = mutualInformation
  capacityAchievable : Prop
  codingTheorem : Prop

structure ChannelCapacityEvidence {S : ShannonEntropyPackage}
    (C : ChannelCapacityPackage S) where
  capacityDefinitionClosed : C.capacityDefinition
  capacityAchievableClosed : C.capacityAchievable
  codingTheoremClosed : C.codingTheorem

def ChannelCapacityClosed {S : ShannonEntropyPackage}
    (C : ChannelCapacityPackage S) : Prop :=
  C.capacityDefinition ∧ C.capacityAchievable ∧ C.codingTheorem

theorem channel_capacity_closed_from_evidence
    {S : ShannonEntropyPackage} (C : ChannelCapacityPackage S)
    (E : ChannelCapacityEvidence C) : ChannelCapacityClosed C := by
  exact And.intro E.capacityDefinitionClosed
    (And.intro E.capacityAchievableClosed E.codingTheoremClosed)

end GraphicsInformationVisualizationCanonicalLaneLean
end HautevilleHouse