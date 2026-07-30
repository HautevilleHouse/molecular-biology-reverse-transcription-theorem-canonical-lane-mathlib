import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReverseTranscriptionTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ReverseTranscriptionClosed ({
    viralPopulation := A.object,
    enzyme := {rnaTemplateBound := True, trnaPrimerHybridized := True, polymeraseActivity := True, ribonucleaseHActivity := True, strandTransferCompleted := True},
    cdnaSynthesis := True,
    degradationOfRna := True,
    secondStrandSynthesis := True,
    integration := True
  } : ReverseTranscriptionPackage)

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  unfold bridgeClosed
  apply reverse_transcription_closed_from_evidence
  exact {
    cdnaSynthesisClosed := by trivial
    degradationOfRnaClosed := by trivial
    secondStrandSynthesisClosed := by trivial
    integrationClosed := by trivial
  }

end MolecularBiologyReverseTranscriptionTheoremCanonicalLaneLean
end HautevilleHouse