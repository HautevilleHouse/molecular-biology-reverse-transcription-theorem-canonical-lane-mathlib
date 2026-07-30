import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReverseTranscriptionTheorem

structure RNATemplateBinding where
  genomicRNAConcentration : ℝ
  primerConcentration : ℝ
  bindingAffinity : ℝ
  bindingRate : ℝ
  dissociationRate : ℝ

def bindingEquilibriumConstant (b : RNATemplateBinding) : ℝ :=
  b.bindingRate / b.dissociationRate

end MolecularBiologyReverseTranscriptionTheorem
end HautevilleHouse