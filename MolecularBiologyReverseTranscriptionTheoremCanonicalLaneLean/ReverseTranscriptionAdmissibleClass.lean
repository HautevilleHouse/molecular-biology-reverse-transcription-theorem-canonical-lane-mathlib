import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReverseTranscriptionTheoremCanonicalLaneLean

structure ReverseTranscriptionAdmissibleObject where
  virusGenome : Type u
  genomeSequence : String
  rnaTemplate : String
  primerBindingSite : Prop
  reverseTranscriptaseEnzyme : Type v
  enzymeActive : Prop
  cdnaProduct : Prop
  conclusion : cdnaProduct

structure AdmissibleClass where
  object : ReverseTranscriptionAdmissibleObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.cdnaProduct ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MolecularBiologyReverseTranscriptionTheoremCanonicalLaneLean
end HautevilleHouse