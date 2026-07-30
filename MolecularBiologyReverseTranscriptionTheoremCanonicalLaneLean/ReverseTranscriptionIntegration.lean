import HautevilleHouse.MolecularBiologyReverseTranscriptionTheoremCanonicalLaneLean.ReverseTranscriptionCDNASynthesis

namespace HautevilleHouse
namespace MolecularBiologyReverseTranscriptionTheoremCanonicalLaneLean

structure IntegrationPackage {E : EnzymeKineticsPackage} {P : PrimerBindingPackage E} {S : CDNASynthesisPackage E P} where
  integraseEnzyme : Type u
  viralDNAInsertion : Prop
  hostGenomeTarget : Prop
  provirusFormation : Prop
  latentReservoir : Prop

structure IntegrationEvidence {E : EnzymeKineticsPackage} {P : PrimerBindingPackage E} {S : CDNASynthesisPackage E P} (I : IntegrationPackage E P S) where
  viralDNAInsertionClosed : I.viralDNAInsertion
  hostGenomeTargetClosed : I.hostGenomeTarget
  provirusFormationClosed : I.provirusFormation
  latentReservoirClosed : I.latentReservoir

def IntegrationClosed {E : EnzymeKineticsPackage} {P : PrimerBindingPackage E} {S : CDNASynthesisPackage E P} (I : IntegrationPackage E P S) : Prop :=
  I.viralDNAInsertion ∧ I.hostGenomeTarget ∧ I.provirusFormation ∧ I.latentReservoir

theorem integration_closed_from_evidence {E : EnzymeKineticsPackage} {P : PrimerBindingPackage E} {S : CDNASynthesisPackage E P} (I : IntegrationPackage E P S) (Ev : IntegrationEvidence I) :
    IntegrationClosed I := by
  exact And.intro Ev.viralDNAInsertionClosed (And.intro Ev.hostGenomeTargetClosed (And.intro Ev.provirusFormationClosed Ev.latentReservoirClosed))

end MolecularBiologyReverseTranscriptionTheoremCanonicalLaneLean
end HautevilleHouse