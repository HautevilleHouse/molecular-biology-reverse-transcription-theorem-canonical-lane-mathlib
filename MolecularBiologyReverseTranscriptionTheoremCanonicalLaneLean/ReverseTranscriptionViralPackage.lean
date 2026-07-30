import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReverseTranscriptionTheoremCanonicalLaneLean

structure ReverseTranscriptionViralPackage where
  viralRNA : Type u
  hostCellFactors : Type v
  reverseTranscriptaseEnzyme : Type w
  rnaTemplateBound : Prop
  dNTPsAvailable : Prop
  primerBinding : Prop
  enzymeCatalyticActivity : Prop

structure ReverseTranscriptionViralEvidence (P : ReverseTranscriptionViralPackage) where
  rnaTemplateBoundClosed : P.rnaTemplateBound
  dNTPsAvailableClosed : P.dNTPsAvailable
  primerBindingClosed : P.primerBinding
  enzymeCatalyticActivityClosed : P.enzymeCatalyticActivity

def ReverseTranscriptionViralClosed (P : ReverseTranscriptionViralPackage) : Prop :=
  P.rnaTemplateBound ∧ P.dNTPsAvailable ∧ P.primerBinding ∧ P.enzymeCatalyticActivity

theorem reverse_transcription_viral_closed_from_evidence
    (P : ReverseTranscriptionViralPackage) (E : ReverseTranscriptionViralEvidence P) :
    ReverseTranscriptionViralClosed P := by
  exact And.intro E.rnaTemplateBoundClosed
    (And.intro E.dNTPsAvailableClosed
      (And.intro E.primerBindingClosed E.enzymeCatalyticActivityClosed))

end MolecularBiologyReverseTranscriptionTheoremCanonicalLaneLean
end HautevilleHouse