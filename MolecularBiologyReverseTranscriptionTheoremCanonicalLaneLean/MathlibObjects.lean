import HautevilleHouse.MolecularBiologyReverseTranscriptionTheoremCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore

namespace HautevilleHouse
namespace MolecularBiologyReverseTranscriptionTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure ReverseTranscriptionSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ReverseTranscriptionAdmittedObject where
  space : ReverseTranscriptionSpace
  rnaMolecule : Prop
  reverseTranscriptaseEnzyme : Prop
  cdnaTranscript : Prop
  integrationModel : Type
  integrationTopology : TopologicalSpace integrationModel
  transcriptSuccessfullyIntegrated : Prop
  conclusion : transcriptSuccessfullyIntegrated

structure ReverseTranscriptionEndgameState where
  object : ReverseTranscriptionAdmittedObject

def ReverseTranscriptionWitnessClosed (O : ReverseTranscriptionAdmittedObject) : Prop :=
  O.transcriptSuccessfullyIntegrated

end MolecularBiologyReverseTranscriptionTheoremCanonicalLaneLean
end HautevilleHouse