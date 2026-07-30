import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReverseTranscriptionTheoremCanonicalLaneLean

structure ViralDNAIntegrasePackage where
  viralDNA : Type u
  hostChromosome : Type v
  integraseEnzyme : Type w
  nuclearImport : Prop
  dnaEndProcessing : Prop
  strandTransfer : Prop
  integrationSiteSelection : Prop

structure ViralDNAIntegraseEvidence (I : ViralDNAIntegrasePackage) where
  nuclearImportClosed : I.nuclearImport
  dnaEndProcessingClosed : I.dnaEndProcessing
  strandTransferClosed : I.strandTransfer
  integrationSiteSelectionClosed : I.integrationSiteSelection

def ViralDNAIntegraseClosed (I : ViralDNAIntegrasePackage) : Prop :=
  I.nuclearImport ∧ I.dnaEndProcessing ∧ I.strandTransfer ∧ I.integrationSiteSelection

theorem viral_dna_integrase_closed_from_evidence
    (I : ViralDNAIntegrasePackage) (E : ViralDNAIntegraseEvidence I) :
    ViralDNAIntegraseClosed I := by
  exact And.intro E.nuclearImportClosed
    (And.intro E.dnaEndProcessingClosed
      (And.intro E.strandTransferClosed E.integrationSiteSelectionClosed))

end MolecularBiologyReverseTranscriptionTheoremCanonicalLaneLean
end HautevilleHouse