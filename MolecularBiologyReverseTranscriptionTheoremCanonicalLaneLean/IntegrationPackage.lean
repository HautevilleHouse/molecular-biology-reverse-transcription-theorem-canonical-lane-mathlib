import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReverseTranscriptionTheoremCanonicalLaneLean

structure IntegrationPackage (A : AdmissibleClass) where
  linearCdnaFormation : Prop
  nuclearImport : Prop
  integraseComplexFormation : Prop
  strandTransferToHostDna : Prop
  provirusEstablishment : Prop

structure IntegrationEvidence {A : AdmissibleClass} (P : IntegrationPackage A) where
  linearCdnaFormationClosed : P.linearCdnaFormation
  nuclearImportClosed : P.nuclearImport
  integraseComplexFormationClosed : P.integraseComplexFormation
  strandTransferToHostDnaClosed : P.strandTransferToHostDna
  provirusEstablishmentClosed : P.provirusEstablishment

def IntegrationClosed {A : AdmissibleClass} (P : IntegrationPackage A) : Prop :=
  P.linearCdnaFormation ∧ P.nuclearImport ∧
  P.integraseComplexFormation ∧ P.strandTransferToHostDna ∧ P.provirusEstablishment

theorem integration_closed_from_evidence
    {A : AdmissibleClass} (P : IntegrationPackage A) (E : IntegrationEvidence P) :
    IntegrationClosed P := by
  exact And.intro E.linearCdnaFormationClosed
    (And.intro E.nuclearImportClosed
      (And.intro E.integraseComplexFormationClosed
        (And.intro E.strandTransferToHostDnaClosed E.provirusEstablishmentClosed)))

end MolecularBiologyReverseTranscriptionTheoremCanonicalLaneLean
end HautevilleHouse