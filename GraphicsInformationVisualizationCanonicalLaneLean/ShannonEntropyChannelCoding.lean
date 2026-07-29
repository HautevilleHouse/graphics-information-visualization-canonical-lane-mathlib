import canonicalLaneMathlib.AdmissibleClass

/-!
# Shannon Entropy and Channel Coding Package
-/

namespace HautevilleHouse
namespace GraphicsInformationVisualizationCanonicalLaneLean

structure ShannonChannelCodingPackage where
  sourceEntropy : Prop
  channelCapacity : Prop
  encodingTheorem : Prop
  decodingTheorem : Prop
  sourceEntropyTerm : sourceEntropy
  channelCapacityTerm : channelCapacity
  encodingTheoremTerm : encodingTheorem
  decodingTheoremTerm : decodingTheorem

def ShannonChannelCodingClosed (P : ShannonChannelCodingPackage) : Prop :=
  P.sourceEntropy ∧ P.channelCapacity ∧ P.encodingTheorem ∧ P.decodingTheorem

end GraphicsInformationVisualizationCanonicalLaneLean
end HautevilleHouse
