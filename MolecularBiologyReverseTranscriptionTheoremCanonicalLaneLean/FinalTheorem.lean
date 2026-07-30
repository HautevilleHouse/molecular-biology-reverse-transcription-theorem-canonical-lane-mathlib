import canonicalLaneMathlib.AdmissibleClass
import MolecularBiologyReverseTranscriptionTheoremCanonicalLaneLean.BridgeLemmas
import MolecularBiologyReverseTranscriptionTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace MolecularBiologyReverseTranscriptionTheoremCanonicalLaneLean

def ConstrainedReverseTranscriptionClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_reverse_transcription_endgame (A : AdmissibleClass) :
    ConstrainedReverseTranscriptionClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MolecularBiologyReverseTranscriptionTheoremCanonicalLaneLean
end HautevilleHouse