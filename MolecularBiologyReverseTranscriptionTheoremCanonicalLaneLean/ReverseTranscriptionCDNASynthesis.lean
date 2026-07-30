import HautevilleHouse.MolecularBiologyReverseTranscriptionTheoremCanonicalLaneLean.ReverseTranscriptionPrimerBinding

namespace HautevilleHouse
namespace MolecularBiologyReverseTranscriptionTheoremCanonicalLaneLean

structure CDNASynthesisPackage {E : EnzymeKineticsPackage} {P : PrimerBindingPackage E} where
  rnaDegradation : Prop
  secondStrandSynthesis : Prop
  cdnaIntegrity : Prop
  doubleStrandedCDNA : Prop

structure CDNASynthesisEvidence {E : EnzymeKineticsPackage} {P : PrimerBindingPackage E} (S : CDNASynthesisPackage E P) where
  rnaDegradationClosed : S.rnaDegradation
  secondStrandSynthesisClosed : S.secondStrandSynthesis
  cdnaIntegrityClosed : S.cdnaIntegrity
  doubleStrandedCDNAClosed : S.doubleStrandedCDNA

def CDNASynthesisClosed {E : EnzymeKineticsPackage} {P : PrimerBindingPackage E} (S : CDNASynthesisPackage E P) : Prop :=
  S.rnaDegradation ∧ S.secondStrandSynthesis ∧ S.cdnaIntegrity ∧ S.doubleStrandedCDNA

theorem cdna_synthesis_closed_from_evidence {E : EnzymeKineticsPackage} {P : PrimerBindingPackage E} (S : CDNASynthesisPackage E P) (Ev : CDNASynthesisEvidence S) :
    CDNASynthesisClosed S := by
  exact And.intro Ev.rnaDegradationClosed (And.intro Ev.secondStrandSynthesisClosed (And.intro Ev.cdnaIntegrityClosed Ev.doubleStrandedCDNAClosed))

end MolecularBiologyReverseTranscriptionTheoremCanonicalLaneLean
end HautevilleHouse