import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsInformationVisualizationCanonicalLaneLean

structure SourceCodingPackage where
  sourceAlphabet : Type
  sourceDistribution : sourceAlphabet → ℝ
  codeAlphabet : Type
  codeLengthFunction : sourceAlphabet → ℕ
  expectedCodeLength : ℝ
  entropy : ℝ
  sourceCodingTheorem : Prop
  shannonEntropyBound : Prop

structure SourceCodingEvidence (S : SourceCodingPackage) where
  sourceCodingTheoremClosed : S.sourceCodingTheorem
  shannonEntropyBoundClosed : S.shannonEntropyBound

def SourceCodingClosed (S : SourceCodingPackage) : Prop :=
  S.sourceCodingTheorem ∧ S.shannonEntropyBound

theorem source_coding_closed_from_evidence (S : SourceCodingPackage) (E : SourceCodingEvidence S) : SourceCodingClosed S :=
  And.intro E.sourceCodingTheoremClosed E.shannonEntropyBoundClosed

end GraphicsInformationVisualizationCanonicalLaneLean
end HautevilleHouse