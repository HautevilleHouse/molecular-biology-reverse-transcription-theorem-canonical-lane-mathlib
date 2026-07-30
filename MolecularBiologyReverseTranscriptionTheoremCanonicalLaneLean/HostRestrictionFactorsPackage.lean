import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReverseTranscriptionTheoremCanonicalLaneLean

structure HostRestrictionFactorsPackage where
  apobec3Family : Type u
  samhd1 : Type v
  tetherin : Type w
  apobec3DeaminaseActivity : Prop
  samhd1dNTPaseActivity : Prop
  tetherinBlockRelease : Prop
  immuneEvasionByViralProteins : Prop

structure HostRestrictionFactorsEvidence (H : HostRestrictionFactorsPackage) where
  apobec3DeaminaseActivityClosed : H.apobec3DeaminaseActivity
  samhd1dNTPaseActivityClosed : H.samhd1dNTPaseActivity
  tetherinBlockReleaseClosed : H.tetherinBlockRelease
  immuneEvasionByViralProteinsClosed : H.immuneEvasionByViralProteins

def HostRestrictionFactorsClosed (H : HostRestrictionFactorsPackage) : Prop :=
  H.apobec3DeaminaseActivity ∧ H.samhd1dNTPaseActivity ∧
  H.tetherinBlockRelease ∧ H.immuneEvasionByViralProteins

theorem host_restriction_factors_closed_from_evidence
    (H : HostRestrictionFactorsPackage) (E : HostRestrictionFactorsEvidence H) :
    HostRestrictionFactorsClosed H := by
  exact And.intro E.apobec3DeaminaseActivityClosed
    (And.intro E.samhd1dNTPaseActivityClosed
      (And.intro E.tetherinBlockReleaseClosed E.immuneEvasionByViralProteinsClosed))

end MolecularBiologyReverseTranscriptionTheoremCanonicalLaneLean
end HautevilleHouse