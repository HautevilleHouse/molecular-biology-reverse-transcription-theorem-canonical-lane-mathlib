import HautevilleHouse.MolecularBiologyReverseTranscriptionTheoremCanonicalLaneLean.ReverseTranscriptionPkg

namespace HautevilleHouse
namespace MolecularBiologyReverseTranscriptionTheoremCanonicalLaneLean

structure MutationFidelityPackage (P : ReverseTranscriptionPackage) where
  errorRate : Prop
  templateSwitching : Prop
  recombinationFrequency : Prop
  proofreadingMechanism : Prop

structure MutationFidelityEvidence {P : ReverseTranscriptionPackage} (M : MutationFidelityPackage P) where
  errorRateClosed : M.errorRate
  templateSwitchingClosed : M.templateSwitching
  recombinationFrequencyClosed : M.recombinationFrequency
  proofreadingMechanismClosed : M.proofreadingMechanism

def MutationFidelityClosed {P : ReverseTranscriptionPackage} (M : MutationFidelityPackage P) : Prop :=
  M.errorRate ∧ M.templateSwitching ∧ M.recombinationFrequency ∧ M.proofreadingMechanism

theorem mutation_fidelity_closed_from_evidence {P : ReverseTranscriptionPackage} (M : MutationFidelityPackage P) (E : MutationFidelityEvidence M) : MutationFidelityClosed M := by
  exact And.intro E.errorRateClosed (And.intro E.templateSwitchingClosed (And.intro E.recombinationFrequencyClosed E.proofreadingMechanismClosed))

end MolecularBiologyReverseTranscriptionTheoremCanonicalLaneLean
end HautevilleHouse