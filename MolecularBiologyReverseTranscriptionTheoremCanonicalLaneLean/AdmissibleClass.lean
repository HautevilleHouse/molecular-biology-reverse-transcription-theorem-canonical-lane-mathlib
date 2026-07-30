import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReverseTranscriptionTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : AdmissibleViralPopulation
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ReverseTranscriptionClosed ({
    viralPopulation := A.object,
    enzyme := {rnaTemplateBound := True, trnaPrimerHybridized := True, polymeraseActivity := True, ribonucleaseHActivity := True, strandTransferCompleted := True},
    cdnaSynthesis := A.endpointSatisfied,
    degradationOfRna := True,
    secondStrandSynthesis := True,
    integration := True
  } : ReverseTranscriptionPackage) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MolecularBiologyReverseTranscriptionTheoremCanonicalLaneLean
end HautevilleHouse