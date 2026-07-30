import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReverseTranscriptionTheoremCanonicalLaneLean

structure ReverseTranscriptaseEnzymePackage where
  rnaTemplateBound : Prop
  dNTPsubstrateBound : Prop
  polymeraseActiveSite : Prop
  rnaseHActivity : Prop
  strandTransferCapability : Prop

structure ReverseTranscriptionInitiationPackage (E : ReverseTranscriptaseEnzymePackage) where
  primerBinding : Prop
  elongationStart : Prop
  processivityFactor : Prop
  misincorporationRate : Prop

structure ReverseTranscriptionPolymerizationPackage
    {E : ReverseTranscriptaseEnzymePackage}
    (I : ReverseTranscriptionInitiationPackage E) where
  nucleotideIncorporation : Prop
  translocationStep : Prop
  fidelityCheckpoint : Prop
  rnaDegradationByRnaseH : Prop

structure RTInitiationEvidence {E : ReverseTranscriptaseEnzymePackage}
    (I : ReverseTranscriptionInitiationPackage E) where
  primerBindingClosed : I.primerBinding
  elongationStartClosed : I.elongationStart
  processivityFactorClosed : I.processivityFactor
  misincorporationRateClosed : I.misincorporationRate

def RTInitiationClosed {E : ReverseTranscriptaseEnzymePackage}
    (I : ReverseTranscriptionInitiationPackage E) : Prop :=
  I.primerBinding ∧ I.elongationStart ∧ I.processivityFactor ∧ I.misincorporationRate

theorem rt_initiation_closed_from_evidence
    {E : ReverseTranscriptaseEnzymePackage}
    (I : ReverseTranscriptionInitiationPackage E)
    (Ev : RTInitiationEvidence I) : RTInitiationClosed I := by
  exact And.intro Ev.primerBindingClosed
    (And.intro Ev.elongationStartClosed
      (And.intro Ev.processivityFactorClosed Ev.misincorporationRateClosed))

structure RTPolymerizationEvidence
    {E : ReverseTranscriptaseEnzymePackage}
    {I : ReverseTranscriptionInitiationPackage E}
    (P : ReverseTranscriptionPolymerizationPackage I) where
  nucleotideIncorporationClosed : P.nucleotideIncorporation
  translocationStepClosed : P.translocationStep
  fidelityCheckpointClosed : P.fidelityCheckpoint
  rnaDegradationByRnaseHClosed : P.rnaDegradationByRnaseH

def RTPolymerizationClosed
    {E : ReverseTranscriptaseEnzymePackage}
    {I : ReverseTranscriptionInitiationPackage E}
    (P : ReverseTranscriptionPolymerizationPackage I) : Prop :=
  P.nucleotideIncorporation ∧ P.translocationStep ∧
  P.fidelityCheckpoint ∧ P.rnaDegradationByRnaseH

theorem rt_polymerization_closed_from_evidence
    {E : ReverseTranscriptaseEnzymePackage}
    {I : ReverseTranscriptionInitiationPackage E}
    (P : ReverseTranscriptionPolymerizationPackage I)
    (Ev : RTPolymerizationEvidence P) : RTPolymerizationClosed P := by
  exact And.intro Ev.nucleotideIncorporationClosed
    (And.intro Ev.translocationStepClosed
      (And.intro Ev.fidelityCheckpointClosed Ev.rnaDegradationByRnaseHClosed))

end MolecularBiologyReverseTranscriptionTheoremCanonicalLaneLean
end HautevilleHouse
