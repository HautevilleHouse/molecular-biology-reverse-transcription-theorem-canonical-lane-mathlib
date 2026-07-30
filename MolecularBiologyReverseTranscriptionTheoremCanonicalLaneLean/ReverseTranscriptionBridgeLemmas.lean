import HautevilleHouse.MolecularBiologyReverseTranscriptionTheoremCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace MolecularBiologyReverseTranscriptionTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.cdnaProduct

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MolecularBiologyReverseTranscriptionTheoremCanonicalLaneLean
end HautevilleHouse