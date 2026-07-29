import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsInformationVisualizationCanonicalLaneLean

structure ShannonEntropyPackage where
  alphabet : Type
  distribution : alphabet → ℝ
  entropy : ℝ
  jointDistribution : (alphabet × alphabet) → ℝ
  conditionalEntropy : ℝ
  mutualInformation : ℝ
  entropyProperties : Prop
  chainRule : Prop
  dataProcessingInequality : Prop

structure ShannonEntropyEvidence (E : ShannonEntropyPackage) where
  entropyPropertiesClosed : E.entropyProperties
  chainRuleClosed : E.chainRule
  dataProcessingInequalityClosed : E.dataProcessingInequality

def ShannonEntropyClosed (E : ShannonEntropyPackage) : Prop :=
  E.entropyProperties ∧ E.chainRule ∧ E.dataProcessingInequality

theorem shannon_entropy_closed_from_evidence (E : ShannonEntropyPackage) (Ev : ShannonEntropyEvidence E) : ShannonEntropyClosed E :=
  And.intro Ev.entropyPropertiesClosed (And.intro Ev.chainRuleClosed Ev.dataProcessingInequalityClosed)

end GraphicsInformationVisualizationCanonicalLaneLean
end HautevilleHouse