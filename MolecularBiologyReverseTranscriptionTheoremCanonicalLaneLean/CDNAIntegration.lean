import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReverseTranscriptionTheoremCanonicalLaneLean

structure RNaseHDegradationPackage where
  rnaTemplateCleavage : Prop
  rnaFragmentRelease : Prop
  substrateSpecificity : Prop
  coordinationWithPolymerization : Prop

structure SecondStrandSynthesisPackage (R : RNaseHDegradationPackage) where
  residualRnaPrimer : Prop
  dnaPolymeraseBinding : Prop
  secondStrandElongation : Prop
  doubleStrandedDnaProduct : Prop

structure IntegrationPackage (S : SecondStrandSynthesisPackage) where
  integraseEnzymeAvailable : Prop
  viralDnaEndProcessing : Prop
  hostDnaTargetSite : Prop
  strandTransferReaction : Prop
  provirusFormation : Prop

structure RNaseHDegradationEvidence (R : RNaseHDegradationPackage) where
  rnaTemplateCleavageClosed : R.rnaTemplateCleavage
  rnaFragmentReleaseClosed : R.rnaFragmentRelease
  substrateSpecificityClosed : R.substrateSpecificity
  coordinationWithPolymerizationClosed : R.coordinationWithPolymerization

def RNaseHDegradationClosed (R : RNaseHDegradationPackage) : Prop :=
  R.rnaTemplateCleavage ∧ R.rnaFragmentRelease ∧
  R.substrateSpecificity ∧ R.coordinationWithPolymerization

theorem rnase_h_degradation_closed_from_evidence
    (R : RNaseHDegradationPackage) (Ev : RNaseHDegradationEvidence R) :
    RNaseHDegradationClosed R := by
  exact And.intro Ev.rnaTemplateCleavageClosed
    (And.intro Ev.rnaFragmentReleaseClosed
      (And.intro Ev.substrateSpecificityClosed Ev.coordinationWithPolymerizationClosed))

structure SecondStrandSynthesisEvidence (R : RNaseHDegradationPackage)
    (S : SecondStrandSynthesisPackage R) where
  residualRnaPrimerClosed : S.residualRnaPrimer
  dnaPolymeraseBindingClosed : S.dnaPolymeraseBinding
  secondStrandElongationClosed : S.secondStrandElongation
  doubleStrandedDnaProductClosed : S.doubleStrandedDnaProduct

def SecondStrandSynthesisClosed (R : RNaseHDegradationPackage)
    (S : SecondStrandSynthesisPackage R) : Prop :=
  S.residualRnaPrimer ∧ S.dnaPolymeraseBinding ∧
  S.secondStrandElongation ∧ S.doubleStrandedDnaProduct

theorem second_strand_synthesis_closed_from_evidence
    (R : RNaseHDegradationPackage) (S : SecondStrandSynthesisPackage R)
    (Ev : SecondStrandSynthesisEvidence R S) : SecondStrandSynthesisClosed R S := by
  exact And.intro Ev.residualRnaPrimerClosed
    (And.intro Ev.dnaPolymeraseBindingClosed
      (And.intro Ev.secondStrandElongationClosed Ev.doubleStrandedDnaProductClosed))

structure IntegrationEvidence (S : SecondStrandSynthesisPackage)
    (I : IntegrationPackage S) where
  integraseEnzymeAvailableClosed : I.integraseEnzymeAvailable
  viralDnaEndProcessingClosed : I.viralDnaEndProcessing
  hostDnaTargetSiteClosed : I.hostDnaTargetSite
  strandTransferReactionClosed : I.strandTransferReaction
  provirusFormationClosed : I.provirusFormation

def IntegrationClosed (S : SecondStrandSynthesisPackage)
    (I : IntegrationPackage S) : Prop :=
  I.integraseEnzymeAvailable ∧ I.viralDnaEndProcessing ∧
  I.hostDnaTargetSite ∧ I.strandTransferReaction ∧ I.provirusFormation

theorem integration_closed_from_evidence
    (S : SecondStrandSynthesisPackage) (I : IntegrationPackage S)
    (Ev : IntegrationEvidence S I) : IntegrationClosed S I := by
  exact And.intro Ev.integraseEnzymeAvailableClosed
    (And.intro Ev.viralDnaEndProcessingClosed
      (And.intro Ev.hostDnaTargetSiteClosed
        (And.intro Ev.strandTransferReactionClosed Ev.provirusFormationClosed)))

end MolecularBiologyReverseTranscriptionTheoremCanonicalLaneLean
end HautevilleHouse
