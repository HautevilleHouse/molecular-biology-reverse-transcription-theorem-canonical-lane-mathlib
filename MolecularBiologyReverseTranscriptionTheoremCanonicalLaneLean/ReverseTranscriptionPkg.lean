import HautevilleHouse.MolecularBiologyReverseTranscriptionTheoremCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace MolecularBiologyReverseTranscriptionTheoremCanonicalLaneLean

structure ReverseTranscriptionPackage where
  enzyme : Type
  primerBinding : Prop
  elongationActivity : Prop
  rnaseHActivity : Prop
  integrationCompletion : Prop

structure ReverseTranscriptionEvidence (P : ReverseTranscriptionPackage) where
  primerBindingClosed : P.primerBinding
  elongationActivityClosed : P.elongationActivity
  rnaseHActivityClosed : P.rnaseHActivity
  integrationCompletionClosed : P.integrationCompletion

def ReverseTranscriptionClosed (P : ReverseTranscriptionPackage) : Prop :=
  P.primerBinding ∧ P.elongationActivity ∧ P.rnaseHActivity ∧ P.integrationCompletion

theorem reverse_transcription_closed_from_evidence (P : ReverseTranscriptionPackage) (E : ReverseTranscriptionEvidence P) : ReverseTranscriptionClosed P := by
  exact And.intro E.primerBindingClosed (And.intro E.elongationActivityClosed (And.intro E.rnaseHActivityClosed E.integrationCompletionClosed))

end MolecularBiologyReverseTranscriptionTheoremCanonicalLaneLean
end HautevilleHouse