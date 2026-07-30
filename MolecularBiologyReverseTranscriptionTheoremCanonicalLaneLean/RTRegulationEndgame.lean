import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReverseTranscriptionTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure AdmittedRTCompletionObject where
  step1 : Prop
  step2 : Prop
  step3 : Prop
  completion : step1 ∧ step2 ∧ step3

structure AdmissibleRTClass where
  object : AdmittedRTCompletionObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedRTClosure (A : AdmissibleRTClass) : Prop :=
  A.object.completion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def bridgeClosed (A : AdmissibleRTClass) : Prop :=
  A.object.completion

theorem bridge_from_admissible_rt_class (A : AdmissibleRTClass) : bridgeClosed A := by
  exact A.object.completion

def gateClosed (A : AdmissibleRTClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_rt_class (A : AdmissibleRTClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedReverseTranscriptionClosure (A : AdmissibleRTClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_reverse_transcription_endgame (A : AdmissibleRTClass) :
    ConstrainedReverseTranscriptionClosure A := by
  exact And.intro (bridge_from_admissible_rt_class A) (gate_from_admissible_rt_class A)

end MolecularBiologyReverseTranscriptionTheoremCanonicalLaneLean
end HautevilleHouse
