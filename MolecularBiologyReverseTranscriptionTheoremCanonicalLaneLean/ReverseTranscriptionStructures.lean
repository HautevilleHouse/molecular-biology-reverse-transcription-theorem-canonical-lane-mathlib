import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReverseTranscriptionTheoremCanonicalLaneLean

structure AdmissibleViralPopulation where
  populationId : String
  rnaSequence : String
  reverseTranscriptionIntermediate : Prop
  integratedProvirus : Prop
  transcriptionActive : Prop
  replicationCompetent : Prop

structure RTEnzyme where
  rnaTemplateBound : Prop
  trnaPrimerHybridized : Prop
  polymeraseActivity : Prop
  ribonucleaseHActivity : Prop
  strandTransferCompleted : Prop

structure ReverseTranscriptionPackage where
  viralPopulation : AdmissibleViralPopulation
  enzyme : RTEnzyme
  cdnaSynthesis : Prop
  degradationOfRna : Prop
  secondStrandSynthesis : Prop
  integration : Prop

structure RTEvidence (P : ReverseTranscriptionPackage) where
  cdnaSynthesisClosed : P.cdnaSynthesis
  degradationOfRnaClosed : P.degradationOfRna
  secondStrandSynthesisClosed : P.secondStrandSynthesis
  integrationClosed : P.integration

def ReverseTranscriptionClosed (P : ReverseTranscriptionPackage) : Prop :=
  P.cdnaSynthesis ∧ P.degradationOfRna ∧ P.secondStrandSynthesis ∧ P.integration

theorem reverse_transcription_closed_from_evidence
    (P : ReverseTranscriptionPackage) (E : RTEvidence P) :
    ReverseTranscriptionClosed P := by
  exact And.intro E.cdnaSynthesisClosed
    (And.intro E.degradationOfRnaClosed
      (And.intro E.secondStrandSynthesisClosed E.integrationClosed))

end MolecularBiologyReverseTranscriptionTheoremCanonicalLaneLean
end HautevilleHouse