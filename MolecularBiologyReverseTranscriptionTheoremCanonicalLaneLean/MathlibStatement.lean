import HautevilleHouse.MolecularBiologyReverseTranscriptionTheoremCanonicalLaneLean.FinalTheorem
import CanonicalLaneMathlibCore

namespace HautevilleHouse
namespace MolecularBiologyReverseTranscriptionTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure MathlibProofObligation where
  sourceKey : String
  theoremObject : String
  commonCoreImported : Bool
  theoremSpecificDefinitionsNative : Bool
  theoremSpecificBridgeNative : Bool
  theoremSpecificAdmittedClosureNative : Bool
  unrestrictedClassicalClosureNative : Bool
  carriedGap : String

def mathlibProofObligation : MathlibProofObligation := {
  sourceKey := "molecular-biology-reverse-transcription-canonical-lane",
  theoremObject := "Reverse Transcription Theorem",
  commonCoreImported := true,
  theoremSpecificDefinitionsNative := true,
  theoremSpecificBridgeNative := true,
  theoremSpecificAdmittedClosureNative := true,
  unrestrictedClassicalClosureNative := false,
  carriedGap := "theorem-specific Mathlib endgame pilot closes over the admitted class; unrestricted classical closure remains carried"
}

theorem theorem_specific_endgame_pilot_checked :
  forall A : ReverseTranscriptionAdmittedObject, ConstrainedReverseTranscriptionClosure A := by
  intro A
  exact constrained_reverse_transcription_endgame A

end MolecularBiologyReverseTranscriptionTheoremCanonicalLaneLean
end HautevilleHouse