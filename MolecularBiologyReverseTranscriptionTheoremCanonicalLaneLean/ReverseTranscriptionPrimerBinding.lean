import HautevilleHouse.MolecularBiologyReverseTranscriptionTheoremCanonicalLaneLean.ReverseTranscriptionEnzymeKinetics

namespace HautevilleHouse
namespace MolecularBiologyReverseTranscriptionTheoremCanonicalLaneLean

structure PrimerBindingPackage {E : EnzymeKineticsPackage} where
  primerSequence : String
  rnaTemplate : String
  bindingEnergy : ℝ
  complementarity : Prop
  hybridizationEfficiency : Prop
  extensionInitiation : Prop

structure PrimerBindingEvidence {E : EnzymeKineticsPackage} (P : PrimerBindingPackage E) where
  complementarityClosed : P.complementarity
  hybridizationEfficiencyClosed : P.hybridizationEfficiency
  extensionInitiationClosed : P.extensionInitiation

def PrimerBindingClosed {E : EnzymeKineticsPackage} (P : PrimerBindingPackage E) : Prop :=
  P.complementarity ∧ P.hybridizationEfficiency ∧ P.extensionInitiation

theorem primer_binding_closed_from_evidence {E : EnzymeKineticsPackage} (P : PrimerBindingPackage E) (Ev : PrimerBindingEvidence P) :
    PrimerBindingClosed P := by
  exact And.intro Ev.complementarityClosed (And.intro Ev.hybridizationEfficiencyClosed Ev.extensionInitiationClosed)

end MolecularBiologyReverseTranscriptionTheoremCanonicalLaneLean
end HautevilleHouse