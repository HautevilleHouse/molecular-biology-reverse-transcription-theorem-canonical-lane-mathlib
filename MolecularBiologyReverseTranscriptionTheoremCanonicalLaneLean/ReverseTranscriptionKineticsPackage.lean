import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReverseTranscriptionTheoremCanonicalLaneLean

structure ReverseTranscriptionKineticsPackage where
  enzymeBindingRate : Prop
  nucleotideIncorporationRate : Prop
  processivity : Prop
  rnaseHActivity : Prop
  templateSwitchingRate : Prop
  errorRate : Prop

structure ReverseTranscriptionKineticsEvidence (K : ReverseTranscriptionKineticsPackage) where
  enzymeBindingRateClosed : K.enzymeBindingRate
  nucleotideIncorporationRateClosed : K.nucleotideIncorporationRate
  processivityClosed : K.processivity
  rnaseHActivityClosed : K.rnaseHActivity
  templateSwitchingRateClosed : K.templateSwitchingRate
  errorRateClosed : K.errorRate

def ReverseTranscriptionKineticsClosed (K : ReverseTranscriptionKineticsPackage) : Prop :=
  K.enzymeBindingRate ∧ K.nucleotideIncorporationRate ∧ K.processivity ∧
  K.rnaseHActivity ∧ K.templateSwitchingRate ∧ K.errorRate

theorem reverse_transcription_kinetics_closed_from_evidence
    (K : ReverseTranscriptionKineticsPackage) (E : ReverseTranscriptionKineticsEvidence K) :
    ReverseTranscriptionKineticsClosed K := by
  exact And.intro E.enzymeBindingRateClosed
    (And.intro E.nucleotideIncorporationRateClosed
      (And.intro E.processivityClosed
        (And.intro E.rnaseHActivityClosed
          (And.intro E.templateSwitchingRateClosed E.errorRateClosed))))

end MolecularBiologyReverseTranscriptionTheoremCanonicalLaneLean
end HautevilleHouse