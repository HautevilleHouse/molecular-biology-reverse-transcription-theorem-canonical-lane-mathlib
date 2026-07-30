import HautevilleHouse.MolecularBiologyReverseTranscriptionTheoremCanonicalLaneLean.ReverseTranscriptionPkg

namespace HautevilleHouse
namespace MolecularBiologyReverseTranscriptionTheoremCanonicalLaneLean

structure IntegrationKineticsPackage (P : ReverseTranscriptionPackage) where
  integrationRate : Prop
  targetSiteSelection : Prop
  strandTransfer : Prop
  provirusFormation : Prop

structure IntegrationKineticsEvidence {P : ReverseTranscriptionPackage} (K : IntegrationKineticsPackage P) where
  integrationRateClosed : K.integrationRate
  targetSiteSelectionClosed : K.targetSiteSelection
  strandTransferClosed : K.strandTransfer
  provirusFormationClosed : K.provirusFormation

def IntegrationKineticsClosed {P : ReverseTranscriptionPackage} (K : IntegrationKineticsPackage P) : Prop :=
  K.integrationRate ∧ K.targetSiteSelection ∧ K.strandTransfer ∧ K.provirusFormation

theorem integration_kinetics_closed_from_evidence {P : ReverseTranscriptionPackage} (K : IntegrationKineticsPackage P) (E : IntegrationKineticsEvidence K) : IntegrationKineticsClosed K := by
  exact And.intro E.integrationRateClosed (And.intro E.targetSiteSelectionClosed (And.intro E.strandTransferClosed E.provirusFormationClosed))

end MolecularBiologyReverseTranscriptionTheoremCanonicalLaneLean
end HautevilleHouse