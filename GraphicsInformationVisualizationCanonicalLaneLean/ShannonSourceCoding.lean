import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsInformationVisualizationCanonicalLaneLean

structure ShannonSourcePackage where
  sourceAlphabet : Type u
  sourceDistribution : sourceAlphabet → ℝ
  entropyDefined : Prop
  entropyValue : ℝ
  entropyLowerBound : Prop

structure ShannonSourceEvidence (S : ShannonSourcePackage) where
  entropyDefinedClosed : S.entropyDefined
  entropyLowerBoundClosed : S.entropyLowerBound

def ShannonSourceClosed (S : ShannonSourcePackage) : Prop :=
  S.entropyDefined ∧ S.entropyLowerBound

theorem shannon_source_closed_from_evidence (S : ShannonSourcePackage)
    (E : ShannonSourceEvidence S) : ShannonSourceClosed S := by
  exact And.intro E.entropyDefinedClosed E.entropyLowerBoundClosed

end GraphicsInformationVisualizationCanonicalLaneLean
end HautevilleHouse