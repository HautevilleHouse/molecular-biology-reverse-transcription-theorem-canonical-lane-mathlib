import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReverseTranscriptionTheoremCanonicalLaneLean

structure StrandTransferPackage (A : AdmissibleClass) where
  firstStrandSynthesisComplete : Prop
  rnaDegradationByRnaseH : Prop
  secondStrandTransfer : Prop
  secondStrandSynthesis : Prop

structure StrandTransferEvidence {A : AdmissibleClass} (P : StrandTransferPackage A) where
  firstStrandSynthesisCompleteClosed : P.firstStrandSynthesisComplete
  rnaDegradationByRnaseHClosed : P.rnaDegradationByRnaseH
  secondStrandTransferClosed : P.secondStrandTransfer
  secondStrandSynthesisClosed : P.secondStrandSynthesis

def StrandTransferClosed {A : AdmissibleClass} (P : StrandTransferPackage A) : Prop :=
  P.firstStrandSynthesisComplete ∧ P.rnaDegradationByRnaseH ∧
  P.secondStrandTransfer ∧ P.secondStrandSynthesis

theorem strand_transfer_closed_from_evidence
    {A : AdmissibleClass} (P : StrandTransferPackage A) (E : StrandTransferEvidence P) :
    StrandTransferClosed P := by
  exact And.intro E.firstStrandSynthesisCompleteClosed
    (And.intro E.rnaDegradationByRnaseHClosed
      (And.intro E.secondStrandTransferClosed E.secondStrandSynthesisClosed))

end MolecularBiologyReverseTranscriptionTheoremCanonicalLaneLean
end HautevilleHouse